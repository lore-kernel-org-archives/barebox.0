Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH5Bn-0004OS-6q
 for barebox@lists.infradead.org; Wed, 25 Mar 2020 12:31:23 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 25 Mar 2020 13:31:11 +0100
Message-Id: <20200325123111.9612-25-s.hauer@pengutronix.de>
In-Reply-To: <20200325123111.9612-1-s.hauer@pengutronix.de>
References: <20200325123111.9612-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 24/24] usb: Add U-Boot xhci driver
To: Barebox List <barebox@lists.infradead.org>

This adds the xhci driver from U-Boot-2020.04-rc2. The usual things
like adjusting to the barebox driver model and using dev_* instead of
printf/puts/debug messages are made.

The previously existing PCI support is not present in this driver
currently. XHCI PCI support was not enabled in any defconfig, so we
boldly assume it was unused. It shouldn't be much effort though to
add it again.

The memory handling has been changed for barebox. The various
descriptor rings and descriptors are allocated with dma_alloc_coherent()
which makes the cache flushing/invalidating unnecessary. They are left
in the driver in case we want to change that.

The XHCI has a nasty limitation in that the TRBs may not cross a 64KiB
boundary. This limitation has been handled in the U-Boot driver, but the
handling seems to be broken. We help ourselves with using a bounce
buffer which is sufficiently aligned, but this limits the maximum bulk
transfer size to 64KiB.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/host/Kconfig     |    8 -
 drivers/usb/host/Makefile    |    3 +-
 drivers/usb/host/xhci-mem.c  |  871 +++++++++++++++++++++
 drivers/usb/host/xhci-ring.c |  977 +++++++++++++++++++++++
 drivers/usb/host/xhci.c      | 1437 ++++++++++++++++++++++++++++++++++
 drivers/usb/host/xhci.h      | 1295 ++++++++++++++++++++++++++++++
 include/usb/xhci.h           |    6 -
 7 files changed, 4581 insertions(+), 16 deletions(-)
 create mode 100644 drivers/usb/host/xhci-mem.c
 create mode 100644 drivers/usb/host/xhci-ring.c
 create mode 100644 drivers/usb/host/xhci.c
 create mode 100644 drivers/usb/host/xhci.h

diff --git a/drivers/usb/host/Kconfig b/drivers/usb/host/Kconfig
index b0f32faee9..51697e109e 100644
--- a/drivers/usb/host/Kconfig
+++ b/drivers/usb/host/Kconfig
@@ -35,11 +35,3 @@ config USB_XHCI
 
 	  This driver currently only supports virtual USB 2.0 ports, if you
 	  plan to use USB 3.0 devices, use a USB 2.0 cable in between.
-
-config USB_XHCI_PCI
-	depends on PCI
-	depends on HAS_DMA
-	select USB_XHCI
-	bool "PCI xHCI driver"
-	help
-	  Enables support for PCI attached xHCI controllers.
diff --git a/drivers/usb/host/Makefile b/drivers/usb/host/Makefile
index fa042e9a54..d417410e90 100644
--- a/drivers/usb/host/Makefile
+++ b/drivers/usb/host/Makefile
@@ -4,5 +4,4 @@ obj-$(CONFIG_USB_EHCI_ATMEL)	+= ehci-atmel.o
 obj-$(CONFIG_USB_OHCI)		+= ohci-hcd.o
 obj-$(CONFIG_USB_OHCI_AT91)	+= ohci-at91.o
 obj-$(CONFIG_USB_DWC2_HOST)	+= dwc2.o
-obj-$(CONFIG_USB_XHCI)		+= xhci-hcd.o xhci-hub.o
-obj-$(CONFIG_USB_XHCI_PCI)	+= xhci-pci.o
+obj-$(CONFIG_USB_XHCI)		+= xhci.o xhci-mem.o xhci-ring.o
diff --git a/drivers/usb/host/xhci-mem.c b/drivers/usb/host/xhci-mem.c
new file mode 100644
index 0000000000..f66dadef12
--- /dev/null
+++ b/drivers/usb/host/xhci-mem.c
@@ -0,0 +1,871 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * USB HOST XHCI Controller stack
+ *
+ * Based on xHCI host controller driver in linux-kernel
+ * by Sarah Sharp.
+ *
+ * Copyright (C) 2008 Intel Corp.
+ * Author: Sarah Sharp
+ *
+ * Copyright (C) 2013 Samsung Electronics Co.Ltd
+ * Authors: Vivek Gautam <gautam.vivek@samsung.com>
+ *	    Vikas Sajjan <vikas.sajjan@samsung.com>
+ */
+
+#include <clock.h>
+#include <common.h>
+#include <dma.h>
+#include <init.h>
+#include <io.h>
+#include <linux/err.h>
+#include <linux/sizes.h>
+#include <usb/usb.h>
+#include <usb/xhci.h>
+#include <asm/unaligned.h>
+
+#include "xhci.h"
+
+/*
+ * The memory handling for the xhci controller is done different
+ * in barebox than in the original U-Boot driver.
+ * All device memory is allocated with dma_alloc_coherent(), hence
+ * xhci_flush_cache()/xhci_inval_cache() can be no-ops. They are
+ * left here for reference if we ever want to change this behaviour.
+ * The only exception are the user buffers passed into the driver. These
+ * are synced with dma_sync_single_for_*() explicitly.
+ */
+
+/**
+ * flushes the address passed till the length
+ *
+ * @param addr	pointer to memory region to be flushed
+ * @param len	the length of the cache line to be flushed
+ * @return none
+ */
+void xhci_flush_cache(uintptr_t addr, u32 len)
+{
+	BUG_ON((void *)addr == NULL || len == 0);
+}
+
+/**
+ * invalidates the address passed till the length
+ *
+ * @param addr	pointer to memory region to be invalidates
+ * @param len	the length of the cache line to be invalidated
+ * @return none
+ */
+void xhci_inval_cache(uintptr_t addr, u32 len)
+{
+	BUG_ON((void *)addr == NULL || len == 0);
+}
+
+/**
+ * Free memory allocated with xhci_malloc
+ *
+ * @param ptr	pointer to memory to be freed
+ */
+static void xhci_free(struct xhci_ctrl *ctrl, void *ptr)
+{
+	/*
+	 * These should be freed with dma_free_coherent(), but this
+	 * call needs the size which we don't have here. Let this
+	 * be a no-op for now. This is called in the shutdown path only
+	 * anyway, so loosing memory here won't sum up.
+	 */
+	dev_dbg(ctrl->dev, "%s: 0x%p\n", __func__, ptr);
+}
+
+/**
+ * alloc coherent memory for xhci
+ *
+ * @param size	size of memory to be allocated
+ * @return allocates the memory and returns the aligned pointer
+ */
+static void *xhci_malloc(struct xhci_ctrl *ctrl, unsigned int size)
+{
+	void *ptr;
+
+	ptr = dma_alloc_coherent(size, DMA_ADDRESS_BROKEN);
+	if (!ptr)
+		return NULL;
+
+	dev_dbg(ctrl->dev, "%s: 0x%p (size %d)\n", __func__, ptr, size);
+
+	return ptr;
+}
+
+/**
+ * frees the "segment" pointer passed
+ *
+ * @param ptr	pointer to "segement" to be freed
+ * @return none
+ */
+static void xhci_segment_free(struct xhci_ctrl *ctrl, struct xhci_segment *seg)
+{
+	xhci_free(ctrl, seg->trbs);
+	seg->trbs = NULL;
+
+	free(seg);
+}
+
+/**
+ * frees the "ring" pointer passed
+ *
+ * @param ptr	pointer to "ring" to be freed
+ * @return none
+ */
+static void xhci_ring_free(struct xhci_ctrl *ctrl, struct xhci_ring *ring)
+{
+	struct xhci_segment *seg;
+	struct xhci_segment *first_seg;
+
+	first_seg = ring->first_seg;
+	seg = first_seg->next;
+	while (seg != first_seg) {
+		struct xhci_segment *next = seg->next;
+		xhci_segment_free(ctrl, seg);
+		seg = next;
+	}
+	xhci_segment_free(ctrl, first_seg);
+
+	free(ring);
+}
+
+/**
+ * Free the scratchpad buffer array and scratchpad buffers
+ *
+ * @ctrl	host controller data structure
+ * @return	none
+ */
+static void xhci_scratchpad_free(struct xhci_ctrl *ctrl)
+{
+	if (!ctrl->scratchpad)
+		return;
+
+	ctrl->dcbaa->dev_context_ptrs[0] = 0;
+
+	xhci_free(ctrl, (void *)(uintptr_t)ctrl->scratchpad->sp_array[0]);
+	xhci_free(ctrl, ctrl->scratchpad->sp_array);
+	free(ctrl->scratchpad);
+	ctrl->scratchpad = NULL;
+}
+
+/**
+ * frees the "xhci_container_ctx" pointer passed
+ *
+ * @param ptr	pointer to "xhci_container_ctx" to be freed
+ * @return none
+ */
+static void xhci_free_container_ctx(struct xhci_ctrl *ctrl,
+				    struct xhci_container_ctx *ctx)
+{
+	xhci_free(ctrl, ctx->bytes);
+	free(ctx);
+}
+
+/**
+ * frees the virtual devices for "xhci_ctrl" pointer passed
+ *
+ * @param ptr	pointer to "xhci_ctrl" whose virtual devices are to be freed
+ * @return none
+ */
+static void xhci_free_virt_devices(struct xhci_ctrl *ctrl)
+{
+	int i;
+	int slot_id;
+	struct xhci_virt_device *virt_dev;
+
+	/*
+	 * refactored here to loop through all virt_dev
+	 * Slot ID 0 is reserved
+	 */
+	for (slot_id = 0; slot_id < MAX_HC_SLOTS; slot_id++) {
+		virt_dev = ctrl->devs[slot_id];
+		if (!virt_dev)
+			continue;
+
+		ctrl->dcbaa->dev_context_ptrs[slot_id] = 0;
+
+		for (i = 0; i < 31; ++i)
+			if (virt_dev->eps[i].ring)
+				xhci_ring_free(ctrl, virt_dev->eps[i].ring);
+
+		if (virt_dev->in_ctx)
+			xhci_free_container_ctx(ctrl, virt_dev->in_ctx);
+		if (virt_dev->out_ctx)
+			xhci_free_container_ctx(ctrl, virt_dev->out_ctx);
+
+		free(virt_dev);
+		/* make sure we are pointing to NULL */
+		ctrl->devs[slot_id] = NULL;
+	}
+}
+
+/**
+ * frees all the memory allocated
+ *
+ * @param ptr	pointer to "xhci_ctrl" to be cleaned up
+ * @return none
+ */
+void xhci_cleanup(struct xhci_ctrl *ctrl)
+{
+	xhci_ring_free(ctrl, ctrl->event_ring);
+	xhci_ring_free(ctrl, ctrl->cmd_ring);
+	xhci_scratchpad_free(ctrl);
+	xhci_free_virt_devices(ctrl);
+	xhci_free(ctrl, ctrl->erst.entries);
+	xhci_free(ctrl, ctrl->dcbaa);
+	free(ctrl->bounce_buffer);
+}
+
+/**
+ * Make the prev segment point to the next segment.
+ * Change the last TRB in the prev segment to be a Link TRB which points to the
+ * address of the next segment.  The caller needs to set any Link TRB
+ * related flags, such as End TRB, Toggle Cycle, and no snoop.
+ *
+ * @param prev	pointer to the previous segment
+ * @param next	pointer to the next segment
+ * @param link_trbs	flag to indicate whether to link the trbs or NOT
+ * @return none
+ */
+static void xhci_link_segments(struct xhci_segment *prev,
+				struct xhci_segment *next, bool link_trbs)
+{
+	u32 val;
+	u64 val_64 = 0;
+
+	if (!prev || !next)
+		return;
+	prev->next = next;
+	if (link_trbs) {
+		val_64 = (uintptr_t)next->trbs;
+		prev->trbs[TRBS_PER_SEGMENT-1].link.segment_ptr = val_64;
+
+		/*
+		 * Set the last TRB in the segment to
+		 * have a TRB type ID of Link TRB
+		 */
+		val = le32_to_cpu(prev->trbs[TRBS_PER_SEGMENT-1].link.control);
+		val &= ~TRB_TYPE_BITMASK;
+		val |= (TRB_LINK << TRB_TYPE_SHIFT);
+
+		prev->trbs[TRBS_PER_SEGMENT-1].link.control = cpu_to_le32(val);
+	}
+}
+
+/**
+ * Initialises the Ring's enqueue,dequeue,enq_seg pointers
+ *
+ * @param ring	pointer to the RING to be intialised
+ * @return none
+ */
+static void xhci_initialize_ring_info(struct xhci_ring *ring)
+{
+	/*
+	 * The ring is empty, so the enqueue pointer == dequeue pointer
+	 */
+	ring->enqueue = ring->first_seg->trbs;
+	ring->enq_seg = ring->first_seg;
+	ring->dequeue = ring->enqueue;
+	ring->deq_seg = ring->first_seg;
+
+	/*
+	 * The ring is initialized to 0. The producer must write 1 to the
+	 * cycle bit to handover ownership of the TRB, so PCS = 1.
+	 * The consumer must compare CCS to the cycle bit to
+	 * check ownership, so CCS = 1.
+	 */
+	ring->cycle_state = 1;
+}
+
+/**
+ * Allocates a generic ring segment from the ring pool, sets the dma address,
+ * initializes the segment to zero, and sets the private next pointer to NULL.
+ * Section 4.11.1.1:
+ * "All components of all Command and Transfer TRBs shall be initialized to '0'"
+ *
+ * @param	none
+ * @return pointer to the newly allocated SEGMENT
+ */
+static struct xhci_segment *xhci_segment_alloc(struct xhci_ctrl *ctrl)
+{
+	struct xhci_segment *seg;
+
+	seg = xzalloc(sizeof(*seg));
+
+	seg->trbs = xhci_malloc(ctrl, SEGMENT_SIZE);
+
+	return seg;
+}
+
+/**
+ * Create a new ring with zero or more segments.
+ * TODO: current code only uses one-time-allocated single-segment rings
+ * of 1KB anyway, so we might as well get rid of all the segment and
+ * linking code (and maybe increase the size a bit, e.g. 4KB).
+ *
+ *
+ * Link each segment together into a ring.
+ * Set the end flag and the cycle toggle bit on the last segment.
+ * See section 4.9.2 and figures 15 and 16 of XHCI spec rev1.0.
+ *
+ * @param num_segs	number of segments in the ring
+ * @param link_trbs	flag to indicate whether to link the trbs or NOT
+ * @return pointer to the newly created RING
+ */
+struct xhci_ring *xhci_ring_alloc(struct xhci_ctrl *ctrl,
+				  unsigned int num_segs, bool link_trbs)
+{
+	struct xhci_ring *ring;
+	struct xhci_segment *prev;
+
+	ring = xmalloc(sizeof(*ring));
+
+	if (num_segs == 0)
+		return ring;
+
+	ring->first_seg = xhci_segment_alloc(ctrl);
+	BUG_ON(!ring->first_seg);
+
+	num_segs--;
+
+	prev = ring->first_seg;
+	while (num_segs > 0) {
+		struct xhci_segment *next;
+
+		next = xhci_segment_alloc(ctrl);
+		BUG_ON(!next);
+
+		xhci_link_segments(prev, next, link_trbs);
+
+		prev = next;
+		num_segs--;
+	}
+	xhci_link_segments(prev, ring->first_seg, link_trbs);
+	if (link_trbs) {
+		/* See section 4.9.2.1 and 6.4.4.1 */
+		prev->trbs[TRBS_PER_SEGMENT-1].link.control |=
+					cpu_to_le32(LINK_TOGGLE);
+	}
+	xhci_initialize_ring_info(ring);
+
+	return ring;
+}
+
+/**
+ * Set up the scratchpad buffer array and scratchpad buffers
+ *
+ * @ctrl	host controller data structure
+ * @return	-ENOMEM if buffer allocation fails, 0 on success
+ */
+static int xhci_scratchpad_alloc(struct xhci_ctrl *ctrl)
+{
+	struct xhci_hccr *hccr = ctrl->hccr;
+	struct xhci_hcor *hcor = ctrl->hcor;
+	struct xhci_scratchpad *scratchpad;
+	int num_sp;
+	uint32_t page_size;
+	void *buf;
+	int i;
+
+	num_sp = HCS_MAX_SCRATCHPAD(xhci_readl(&hccr->cr_hcsparams2));
+	if (!num_sp)
+		return 0;
+
+	scratchpad = malloc(sizeof(*scratchpad));
+	if (!scratchpad)
+		goto fail_sp;
+	ctrl->scratchpad = scratchpad;
+
+	scratchpad->sp_array = xhci_malloc(ctrl, num_sp * sizeof(u64));
+	if (!scratchpad->sp_array)
+		goto fail_sp2;
+	ctrl->dcbaa->dev_context_ptrs[0] =
+		cpu_to_le64((uintptr_t)scratchpad->sp_array);
+
+	xhci_flush_cache((uintptr_t)&ctrl->dcbaa->dev_context_ptrs[0],
+		sizeof(ctrl->dcbaa->dev_context_ptrs[0]));
+
+	page_size = xhci_readl(&hcor->or_pagesize) & 0xffff;
+	for (i = 0; i < 16; i++) {
+		if ((0x1 & page_size) != 0)
+			break;
+		page_size = page_size >> 1;
+	}
+	BUG_ON(i == 16);
+
+	page_size = 1 << (i + 12);
+	buf = xhci_malloc(ctrl, num_sp * page_size);
+	if (!buf)
+		goto fail_sp3;
+
+	xhci_flush_cache((uintptr_t)buf, num_sp * page_size);
+
+	for (i = 0; i < num_sp; i++) {
+		uintptr_t ptr = (uintptr_t)buf + i * page_size;
+		scratchpad->sp_array[i] = cpu_to_le64(ptr);
+	}
+
+	return 0;
+
+fail_sp3:
+	xhci_free(ctrl, scratchpad->sp_array);
+
+fail_sp2:
+	xhci_free(ctrl, scratchpad);
+	ctrl->scratchpad = NULL;
+
+fail_sp:
+	return -ENOMEM;
+}
+
+/**
+ * Allocates the Container context
+ *
+ * @param ctrl	Host controller data structure
+ * @param type type of XHCI Container Context
+ * @return NULL if failed else pointer to the context on success
+ */
+static struct xhci_container_ctx
+		*xhci_alloc_container_ctx(struct xhci_ctrl *ctrl, int type)
+{
+	struct xhci_container_ctx *ctx;
+
+	ctx = xmalloc(sizeof(struct xhci_container_ctx));
+
+	BUG_ON((type != XHCI_CTX_TYPE_DEVICE) && (type != XHCI_CTX_TYPE_INPUT));
+	ctx->type = type;
+	ctx->size = (MAX_EP_CTX_NUM + 1) *
+			CTX_SIZE(readl(&ctrl->hccr->cr_hccparams));
+	if (type == XHCI_CTX_TYPE_INPUT)
+		ctx->size += CTX_SIZE(readl(&ctrl->hccr->cr_hccparams));
+
+	ctx->bytes = xhci_malloc(ctrl, ctx->size);
+
+	return ctx;
+}
+
+/**
+ * Allocating virtual device
+ *
+ * @param udev	pointer to USB deivce structure
+ * @return 0 on success else -1 on failure
+ */
+int xhci_alloc_virt_device(struct xhci_ctrl *ctrl, unsigned int slot_id)
+{
+	u64 byte_64 = 0;
+	struct xhci_virt_device *virt_dev;
+
+	/* Slot ID 0 is reserved */
+	if (ctrl->devs[slot_id]) {
+		dev_err(ctrl->dev, "Virt dev for slot[%d] already allocated\n", slot_id);
+		return -EEXIST;
+	}
+
+	ctrl->devs[slot_id] = (struct xhci_virt_device *)
+					malloc(sizeof(struct xhci_virt_device));
+
+	if (!ctrl->devs[slot_id]) {
+		dev_err(ctrl->dev, "Failed to allocate virtual device\n");
+		return -ENOMEM;
+	}
+
+	memset(ctrl->devs[slot_id], 0, sizeof(struct xhci_virt_device));
+	virt_dev = ctrl->devs[slot_id];
+
+	/* Allocate the (output) device context that will be used in the HC. */
+	virt_dev->out_ctx = xhci_alloc_container_ctx(ctrl,
+					XHCI_CTX_TYPE_DEVICE);
+	if (!virt_dev->out_ctx) {
+		dev_err(ctrl->dev, "Failed to allocate out context for virt dev\n");
+		return -ENOMEM;
+	}
+
+	/* Allocate the (input) device context for address device command */
+	virt_dev->in_ctx = xhci_alloc_container_ctx(ctrl,
+					XHCI_CTX_TYPE_INPUT);
+	if (!virt_dev->in_ctx) {
+		dev_err(ctrl->dev, "Failed to allocate in context for virt dev\n");
+		return -ENOMEM;
+	}
+
+	/* Allocate endpoint 0 ring */
+	virt_dev->eps[0].ring = xhci_ring_alloc(ctrl, 1, true);
+
+	byte_64 = (uintptr_t)(virt_dev->out_ctx->bytes);
+
+	/* Point to output device context in dcbaa. */
+	ctrl->dcbaa->dev_context_ptrs[slot_id] = byte_64;
+
+	xhci_flush_cache((uintptr_t)&ctrl->dcbaa->dev_context_ptrs[slot_id],
+			 sizeof(__le64));
+	return 0;
+}
+
+/**
+ * Allocates the necessary data structures
+ * for XHCI host controller
+ *
+ * @param ctrl	Host controller data structure
+ * @param hccr	pointer to HOST Controller Control Registers
+ * @param hcor	pointer to HOST Controller Operational Registers
+ * @return 0 if successful else -1 on failure
+ */
+int xhci_mem_init(struct xhci_ctrl *ctrl, struct xhci_hccr *hccr,
+					struct xhci_hcor *hcor)
+{
+	uint64_t val_64;
+	uint64_t trb_64;
+	uint32_t val;
+	unsigned long deq;
+	int i;
+	struct xhci_segment *seg;
+
+	/* DCBAA initialization */
+	ctrl->dcbaa = xhci_malloc(ctrl, sizeof(*ctrl->dcbaa));
+	if (!ctrl->dcbaa) {
+		dev_err(ctrl->dev, "unable to allocate DCBA\n");
+		return -ENOMEM;
+	}
+
+	val_64 = (uintptr_t)ctrl->dcbaa;
+	/* Set the pointer in DCBAA register */
+	xhci_writeq(&hcor->or_dcbaap, val_64);
+
+	/* Command ring control pointer register initialization */
+	ctrl->cmd_ring = xhci_ring_alloc(ctrl, 1, true);
+
+	/* Set the address in the Command Ring Control register */
+	trb_64 = (uintptr_t)ctrl->cmd_ring->first_seg->trbs;
+	val_64 = xhci_readq(&hcor->or_crcr);
+	val_64 = (val_64 & (u64) CMD_RING_RSVD_BITS) |
+		(trb_64 & (u64) ~CMD_RING_RSVD_BITS) |
+		ctrl->cmd_ring->cycle_state;
+	xhci_writeq(&hcor->or_crcr, val_64);
+
+	/* write the address of db register */
+	val = xhci_readl(&hccr->cr_dboff);
+	val &= DBOFF_MASK;
+	ctrl->dba = (struct xhci_doorbell_array *)((char *)hccr + val);
+
+	/* write the address of runtime register */
+	val = xhci_readl(&hccr->cr_rtsoff);
+	val &= RTSOFF_MASK;
+	ctrl->run_regs = (struct xhci_run_regs *)((char *)hccr + val);
+
+	/* writting the address of ir_set structure */
+	ctrl->ir_set = &ctrl->run_regs->ir_set[0];
+
+	/* Event ring does not maintain link TRB */
+	ctrl->event_ring = xhci_ring_alloc(ctrl, ERST_NUM_SEGS, false);
+	ctrl->erst.entries =
+		xhci_malloc(ctrl, sizeof(struct xhci_erst_entry) * ERST_NUM_SEGS);
+
+	ctrl->erst.num_entries = ERST_NUM_SEGS;
+
+	for (val = 0, seg = ctrl->event_ring->first_seg;
+			val < ERST_NUM_SEGS;
+			val++) {
+		struct xhci_erst_entry *entry = &ctrl->erst.entries[val];
+
+		trb_64 = 0;
+		trb_64 = (uintptr_t)seg->trbs;
+		xhci_writeq(&entry->seg_addr, trb_64);
+		entry->seg_size = cpu_to_le32(TRBS_PER_SEGMENT);
+		entry->rsvd = 0;
+		seg = seg->next;
+	}
+	xhci_flush_cache((uintptr_t)ctrl->erst.entries,
+			 ERST_NUM_SEGS * sizeof(struct xhci_erst_entry));
+
+	deq = (unsigned long)ctrl->event_ring->dequeue;
+
+	/* Update HC event ring dequeue pointer */
+	xhci_writeq(&ctrl->ir_set->erst_dequeue,
+				(u64)deq & (u64)~ERST_PTR_MASK);
+
+	/* set ERST count with the number of entries in the segment table */
+	val = xhci_readl(&ctrl->ir_set->erst_size);
+	val &= ERST_SIZE_MASK;
+	val |= ERST_NUM_SEGS;
+	xhci_writel(&ctrl->ir_set->erst_size, val);
+
+	/* this is the event ring segment table pointer */
+	val_64 = xhci_readq(&ctrl->ir_set->erst_base);
+	val_64 &= ERST_PTR_MASK;
+	val_64 |= ((uintptr_t)(ctrl->erst.entries) & ~ERST_PTR_MASK);
+
+	xhci_writeq(&ctrl->ir_set->erst_base, val_64);
+
+	/* set up the scratchpad buffer array and scratchpad buffers */
+	xhci_scratchpad_alloc(ctrl);
+
+	ctrl->bounce_buffer = xmemalign(SZ_64K, SZ_64K);
+
+	/* initializing the virtual devices to NULL */
+	for (i = 0; i < MAX_HC_SLOTS; ++i)
+		ctrl->devs[i] = NULL;
+
+	/*
+	 * Just Zero'ing this register completely,
+	 * or some spurious Device Notification Events
+	 * might screw things here.
+	 */
+	xhci_writel(&hcor->or_dnctrl, 0x0);
+
+	return 0;
+}
+
+/**
+ * Give the input control context for the passed container context
+ *
+ * @param ctx	pointer to the context
+ * @return pointer to the Input control context data
+ */
+struct xhci_input_control_ctx
+		*xhci_get_input_control_ctx(struct xhci_container_ctx *ctx)
+{
+	BUG_ON(ctx->type != XHCI_CTX_TYPE_INPUT);
+	return (struct xhci_input_control_ctx *)ctx->bytes;
+}
+
+/**
+ * Give the slot context for the passed container context
+ *
+ * @param ctrl	Host controller data structure
+ * @param ctx	pointer to the context
+ * @return pointer to the slot control context data
+ */
+struct xhci_slot_ctx *xhci_get_slot_ctx(struct xhci_ctrl *ctrl,
+				struct xhci_container_ctx *ctx)
+{
+	if (ctx->type == XHCI_CTX_TYPE_DEVICE)
+		return (struct xhci_slot_ctx *)ctx->bytes;
+
+	return (struct xhci_slot_ctx *)
+		(ctx->bytes + CTX_SIZE(readl(&ctrl->hccr->cr_hccparams)));
+}
+
+/**
+ * Gets the EP context from based on the ep_index
+ *
+ * @param ctrl	Host controller data structure
+ * @param ctx	context container
+ * @param ep_index	index of the endpoint
+ * @return pointer to the End point context
+ */
+struct xhci_ep_ctx *xhci_get_ep_ctx(struct xhci_ctrl *ctrl,
+				    struct xhci_container_ctx *ctx,
+				    unsigned int ep_index)
+{
+	/* increment ep index by offset of start of ep ctx array */
+	ep_index++;
+	if (ctx->type == XHCI_CTX_TYPE_INPUT)
+		ep_index++;
+
+	return (struct xhci_ep_ctx *)
+		(ctx->bytes +
+		(ep_index * CTX_SIZE(readl(&ctrl->hccr->cr_hccparams))));
+}
+
+/**
+ * Copy output xhci_ep_ctx to the input xhci_ep_ctx copy.
+ * Useful when you want to change one particular aspect of the endpoint
+ * and then issue a configure endpoint command.
+ *
+ * @param ctrl	Host controller data structure
+ * @param in_ctx contains the input context
+ * @param out_ctx contains the input context
+ * @param ep_index index of the end point
+ * @return none
+ */
+void xhci_endpoint_copy(struct xhci_ctrl *ctrl,
+			struct xhci_container_ctx *in_ctx,
+			struct xhci_container_ctx *out_ctx,
+			unsigned int ep_index)
+{
+	struct xhci_ep_ctx *out_ep_ctx;
+	struct xhci_ep_ctx *in_ep_ctx;
+
+	out_ep_ctx = xhci_get_ep_ctx(ctrl, out_ctx, ep_index);
+	in_ep_ctx = xhci_get_ep_ctx(ctrl, in_ctx, ep_index);
+
+	in_ep_ctx->ep_info = out_ep_ctx->ep_info;
+	in_ep_ctx->ep_info2 = out_ep_ctx->ep_info2;
+	in_ep_ctx->deq = out_ep_ctx->deq;
+	in_ep_ctx->tx_info = out_ep_ctx->tx_info;
+}
+
+/**
+ * Copy output xhci_slot_ctx to the input xhci_slot_ctx.
+ * Useful when you want to change one particular aspect of the endpoint
+ * and then issue a configure endpoint command.
+ * Only the context entries field matters, but
+ * we'll copy the whole thing anyway.
+ *
+ * @param ctrl	Host controller data structure
+ * @param in_ctx contains the inpout context
+ * @param out_ctx contains the inpout context
+ * @return none
+ */
+void xhci_slot_copy(struct xhci_ctrl *ctrl, struct xhci_container_ctx *in_ctx,
+					struct xhci_container_ctx *out_ctx)
+{
+	struct xhci_slot_ctx *in_slot_ctx;
+	struct xhci_slot_ctx *out_slot_ctx;
+
+	in_slot_ctx = xhci_get_slot_ctx(ctrl, in_ctx);
+	out_slot_ctx = xhci_get_slot_ctx(ctrl, out_ctx);
+
+	in_slot_ctx->dev_info = out_slot_ctx->dev_info;
+	in_slot_ctx->dev_info2 = out_slot_ctx->dev_info2;
+	in_slot_ctx->tt_info = out_slot_ctx->tt_info;
+	in_slot_ctx->dev_state = out_slot_ctx->dev_state;
+}
+
+/**
+ * Setup an xHCI virtual device for a Set Address command
+ *
+ * @param udev pointer to the Device Data Structure
+ * @return returns negative value on failure else 0 on success
+ */
+void xhci_setup_addressable_virt_dev(struct xhci_ctrl *ctrl,
+				     struct usb_device *udev, int hop_portnr)
+{
+	struct xhci_virt_device *virt_dev;
+	struct xhci_ep_ctx *ep0_ctx;
+	struct xhci_slot_ctx *slot_ctx;
+	u32 port_num = 0;
+	u64 trb_64 = 0;
+	int slot_id = udev->slot_id;
+	int speed = udev->speed;
+	int route = 0;
+	struct usb_device *dev = udev;
+	struct usb_hub_device *hub;
+
+	virt_dev = ctrl->devs[slot_id];
+
+	BUG_ON(!virt_dev);
+
+	/* Extract the EP0 and Slot Ctrl */
+	ep0_ctx = xhci_get_ep_ctx(ctrl, virt_dev->in_ctx, 0);
+	slot_ctx = xhci_get_slot_ctx(ctrl, virt_dev->in_ctx);
+
+	/* Only the control endpoint is valid - one endpoint context */
+	slot_ctx->dev_info |= cpu_to_le32(LAST_CTX(1));
+
+	/* Calculate the route string for this device */
+	port_num = dev->portnr;
+	while (!usb_hub_is_root_hub(dev)) {
+		/*
+		 * Each hub in the topology is expected to have no more than
+		 * 15 ports in order for the route string of a device to be
+		 * unique. SuperSpeed hubs are restricted to only having 15
+		 * ports, but FS/LS/HS hubs are not. The xHCI specification
+		 * says that if the port number the device is greater than 15,
+		 * that portion of the route string shall be set to 15.
+		 */
+		if (port_num > 15)
+			port_num = 15;
+		route |= port_num << (dev->level * 4);
+		dev = dev->parent;
+		port_num = dev->portnr;
+	}
+
+	dev_dbg(&udev->dev, "route string 0x%x\n", route);
+
+	slot_ctx->dev_info |= route;
+
+	switch (speed) {
+	case USB_SPEED_SUPER:
+		slot_ctx->dev_info |= cpu_to_le32(SLOT_SPEED_SS);
+		break;
+	case USB_SPEED_HIGH:
+		slot_ctx->dev_info |= cpu_to_le32(SLOT_SPEED_HS);
+		break;
+	case USB_SPEED_FULL:
+		slot_ctx->dev_info |= cpu_to_le32(SLOT_SPEED_FS);
+		break;
+	case USB_SPEED_LOW:
+		slot_ctx->dev_info |= cpu_to_le32(SLOT_SPEED_LS);
+		break;
+	default:
+		/* Speed was set earlier, this shouldn't happen. */
+		BUG();
+	}
+
+	/* Set up TT fields to support FS/LS devices */
+	if (speed == USB_SPEED_LOW || speed == USB_SPEED_FULL) {
+		dev = udev;
+		do {
+			port_num = dev->portnr;
+			if (usb_hub_is_root_hub(dev))
+				break;
+			dev = dev->parent;
+		} while (dev->speed != USB_SPEED_HIGH);
+
+		if (!usb_hub_is_root_hub(dev)) {
+			hub = dev->hub;
+			if (hub->tt.multi)
+				slot_ctx->dev_info |= cpu_to_le32(DEV_MTT);
+			slot_ctx->tt_info |= cpu_to_le32(TT_PORT(port_num));
+			slot_ctx->tt_info |= cpu_to_le32(TT_SLOT(dev->slot_id));
+		}
+	}
+
+	port_num = hop_portnr;
+	dev_dbg(&udev->dev, "port_num = %d\n", port_num);
+
+	slot_ctx->dev_info2 |=
+			cpu_to_le32(((port_num & ROOT_HUB_PORT_MASK) <<
+				ROOT_HUB_PORT_SHIFT));
+
+	/* Step 4 - ring already allocated */
+	/* Step 5 */
+	ep0_ctx->ep_info2 = cpu_to_le32(CTRL_EP << EP_TYPE_SHIFT);
+	dev_dbg(&udev->dev, "SPEED = %d\n", speed);
+
+	switch (speed) {
+	case USB_SPEED_SUPER:
+		ep0_ctx->ep_info2 |= cpu_to_le32(((512 & MAX_PACKET_MASK) <<
+					MAX_PACKET_SHIFT));
+		dev_dbg(&udev->dev, "Setting Packet size = 512bytes\n");
+		break;
+	case USB_SPEED_HIGH:
+	/* USB core guesses at a 64-byte max packet first for FS devices */
+	case USB_SPEED_FULL:
+		ep0_ctx->ep_info2 |= cpu_to_le32(((64 & MAX_PACKET_MASK) <<
+					MAX_PACKET_SHIFT));
+		dev_dbg(&udev->dev, "Setting Packet size = 64bytes\n");
+		break;
+	case USB_SPEED_LOW:
+		ep0_ctx->ep_info2 |= cpu_to_le32(((8 & MAX_PACKET_MASK) <<
+					MAX_PACKET_SHIFT));
+		dev_dbg(&udev->dev, "Setting Packet size = 8bytes\n");
+		break;
+	default:
+		/* New speed? */
+		BUG();
+	}
+
+	/* EP 0 can handle "burst" sizes of 1, so Max Burst Size field is 0 */
+	ep0_ctx->ep_info2 |=
+			cpu_to_le32(((0 & MAX_BURST_MASK) << MAX_BURST_SHIFT) |
+			((3 & ERROR_COUNT_MASK) << ERROR_COUNT_SHIFT));
+
+	trb_64 = (uintptr_t)virt_dev->eps[0].ring->first_seg->trbs;
+	ep0_ctx->deq = cpu_to_le64(trb_64 | virt_dev->eps[0].ring->cycle_state);
+
+	/*
+	 * xHCI spec 6.2.3:
+	 * software shall set 'Average TRB Length' to 8 for control endpoints.
+	 */
+	ep0_ctx->tx_info = cpu_to_le32(EP_AVG_TRB_LENGTH(8));
+
+	/* Steps 7 and 8 were done in xhci_alloc_virt_device() */
+
+	xhci_flush_cache((uintptr_t)ep0_ctx, sizeof(struct xhci_ep_ctx));
+	xhci_flush_cache((uintptr_t)slot_ctx, sizeof(struct xhci_slot_ctx));
+}
diff --git a/drivers/usb/host/xhci-ring.c b/drivers/usb/host/xhci-ring.c
new file mode 100644
index 0000000000..1365ddadf9
--- /dev/null
+++ b/drivers/usb/host/xhci-ring.c
@@ -0,0 +1,977 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * USB HOST XHCI Controller stack
+ *
+ * Based on xHCI host controller driver in linux-kernel
+ * by Sarah Sharp.
+ *
+ * Copyright (C) 2008 Intel Corp.
+ * Author: Sarah Sharp
+ *
+ * Copyright (C) 2013 Samsung Electronics Co.Ltd
+ * Authors: Vivek Gautam <gautam.vivek@samsung.com>
+ *	    Vikas Sajjan <vikas.sajjan@samsung.com>
+ */
+#include <clock.h>
+#include <common.h>
+#include <dma.h>
+#include <init.h>
+#include <io.h>
+#include <linux/err.h>
+#include <linux/sizes.h>
+#include <usb/usb.h>
+#include <usb/xhci.h>
+#include <asm/unaligned.h>
+
+#include "xhci.h"
+
+/**
+ * Is this TRB a link TRB or was the last TRB the last TRB in this event ring
+ * segment?  I.e. would the updated event TRB pointer step off the end of the
+ * event seg ?
+ *
+ * @param ctrl	Host controller data structure
+ * @param ring	pointer to the ring
+ * @param seg	poniter to the segment to which TRB belongs
+ * @param trb	poniter to the ring trb
+ * @return 1 if this TRB a link TRB else 0
+ */
+static int last_trb(struct xhci_ctrl *ctrl, struct xhci_ring *ring,
+			struct xhci_segment *seg, union xhci_trb *trb)
+{
+	if (ring == ctrl->event_ring)
+		return trb == &seg->trbs[TRBS_PER_SEGMENT];
+	else
+		return TRB_TYPE_LINK_LE32(trb->link.control);
+}
+
+/**
+ * Does this link TRB point to the first segment in a ring,
+ * or was the previous TRB the last TRB on the last segment in the ERST?
+ *
+ * @param ctrl	Host controller data structure
+ * @param ring	pointer to the ring
+ * @param seg	poniter to the segment to which TRB belongs
+ * @param trb	poniter to the ring trb
+ * @return 1 if this TRB is the last TRB on the last segment else 0
+ */
+static bool last_trb_on_last_seg(struct xhci_ctrl *ctrl,
+				 struct xhci_ring *ring,
+				 struct xhci_segment *seg,
+				 union xhci_trb *trb)
+{
+	if (ring == ctrl->event_ring)
+		return ((trb == &seg->trbs[TRBS_PER_SEGMENT]) &&
+			(seg->next == ring->first_seg));
+	else
+		return le32_to_cpu(trb->link.control) & LINK_TOGGLE;
+}
+
+/**
+ * See Cycle bit rules. SW is the consumer for the event ring only.
+ * Don't make a ring full of link TRBs.  That would be dumb and this would loop.
+ *
+ * If we've just enqueued a TRB that is in the middle of a TD (meaning the
+ * chain bit is set), then set the chain bit in all the following link TRBs.
+ * If we've enqueued the last TRB in a TD, make sure the following link TRBs
+ * have their chain bit cleared (so that each Link TRB is a separate TD).
+ *
+ * Section 6.4.4.1 of the 0.95 spec says link TRBs cannot have the chain bit
+ * set, but other sections talk about dealing with the chain bit set.  This was
+ * fixed in the 0.96 specification errata, but we have to assume that all 0.95
+ * xHCI hardware can't handle the chain bit being cleared on a link TRB.
+ *
+ * @param ctrl	Host controller data structure
+ * @param ring	pointer to the ring
+ * @param more_trbs_coming	flag to indicate whether more trbs
+ *				are expected or NOT.
+ *				Will you enqueue more TRBs before calling
+ *				prepare_ring()?
+ * @return none
+ */
+static void inc_enq(struct xhci_ctrl *ctrl, struct xhci_ring *ring,
+						bool more_trbs_coming)
+{
+	u32 chain;
+	union xhci_trb *next;
+
+	chain = le32_to_cpu(ring->enqueue->generic.field[3]) & TRB_CHAIN;
+	next = ++(ring->enqueue);
+
+	/*
+	 * Update the dequeue pointer further if that was a link TRB or we're at
+	 * the end of an event ring segment (which doesn't have link TRBS)
+	 */
+	while (last_trb(ctrl, ring, ring->enq_seg, next)) {
+		if (ring != ctrl->event_ring) {
+			/*
+			 * If the caller doesn't plan on enqueueing more
+			 * TDs before ringing the doorbell, then we
+			 * don't want to give the link TRB to the
+			 * hardware just yet.  We'll give the link TRB
+			 * back in prepare_ring() just before we enqueue
+			 * the TD at the top of the ring.
+			 */
+			if (!chain && !more_trbs_coming)
+				break;
+
+			/*
+			 * If we're not dealing with 0.95 hardware or
+			 * isoc rings on AMD 0.96 host,
+			 * carry over the chain bit of the previous TRB
+			 * (which may mean the chain bit is cleared).
+			 */
+			next->link.control &= cpu_to_le32(~TRB_CHAIN);
+			next->link.control |= cpu_to_le32(chain);
+
+			next->link.control ^= cpu_to_le32(TRB_CYCLE);
+			xhci_flush_cache((uintptr_t)next,
+					 sizeof(union xhci_trb));
+		}
+		/* Toggle the cycle bit after the last ring segment. */
+		if (last_trb_on_last_seg(ctrl, ring,
+					ring->enq_seg, next))
+			ring->cycle_state = (ring->cycle_state ? 0 : 1);
+
+		ring->enq_seg = ring->enq_seg->next;
+		ring->enqueue = ring->enq_seg->trbs;
+		next = ring->enqueue;
+	}
+}
+
+/**
+ * See Cycle bit rules. SW is the consumer for the event ring only.
+ * Don't make a ring full of link TRBs.  That would be dumb and this would loop.
+ *
+ * @param ctrl	Host controller data structure
+ * @param ring	Ring whose Dequeue TRB pointer needs to be incremented.
+ * return none
+ */
+static void inc_deq(struct xhci_ctrl *ctrl, struct xhci_ring *ring)
+{
+	do {
+		/*
+		 * Update the dequeue pointer further if that was a link TRB or
+		 * we're at the end of an event ring segment (which doesn't have
+		 * link TRBS)
+		 */
+		if (last_trb(ctrl, ring, ring->deq_seg, ring->dequeue)) {
+			if (ring == ctrl->event_ring &&
+					last_trb_on_last_seg(ctrl, ring,
+						ring->deq_seg, ring->dequeue)) {
+				ring->cycle_state = (ring->cycle_state ? 0 : 1);
+			}
+			ring->deq_seg = ring->deq_seg->next;
+			ring->dequeue = ring->deq_seg->trbs;
+		} else {
+			ring->dequeue++;
+		}
+	} while (last_trb(ctrl, ring, ring->deq_seg, ring->dequeue));
+}
+
+/**
+ * Generic function for queueing a TRB on a ring.
+ * The caller must have checked to make sure there's room on the ring.
+ *
+ * @param	more_trbs_coming:   Will you enqueue more TRBs before calling
+ *				prepare_ring()?
+ * @param ctrl	Host controller data structure
+ * @param ring	pointer to the ring
+ * @param more_trbs_coming	flag to indicate whether more trbs
+ * @param trb_fields	pointer to trb field array containing TRB contents
+ * @return pointer to the enqueued trb
+ */
+static struct xhci_generic_trb *queue_trb(struct xhci_ctrl *ctrl,
+					  struct xhci_ring *ring,
+					  bool more_trbs_coming,
+					  unsigned int *trb_fields)
+{
+	struct xhci_generic_trb *trb;
+	int i;
+
+	trb = &ring->enqueue->generic;
+
+	for (i = 0; i < 4; i++)
+		trb->field[i] = cpu_to_le32(trb_fields[i]);
+
+	xhci_flush_cache((uintptr_t)trb, sizeof(struct xhci_generic_trb));
+
+	inc_enq(ctrl, ring, more_trbs_coming);
+
+	return trb;
+}
+
+/**
+ * Does various checks on the endpoint ring, and makes it ready
+ * to queue num_trbs.
+ *
+ * @param ctrl		Host controller data structure
+ * @param ep_ring	pointer to the EP Transfer Ring
+ * @param ep_state	State of the End Point
+ * @return error code in case of invalid ep_state, 0 on success
+ */
+static int prepare_ring(struct xhci_ctrl *ctrl, struct xhci_ring *ep_ring,
+							u32 ep_state)
+{
+	union xhci_trb *next = ep_ring->enqueue;
+
+	/* Make sure the endpoint has been added to xHC schedule */
+	switch (ep_state) {
+	case EP_STATE_DISABLED:
+		/*
+		 * USB core changed config/interfaces without notifying us,
+		 * or hardware is reporting the wrong state.
+		 */
+		dev_err(ctrl->dev, "urb submitted to disabled ep\n");
+		return -ENOENT;
+	case EP_STATE_ERROR:
+		dev_err(ctrl->dev, "waiting for error on ep to be cleared\n");
+		return -EINVAL;
+	case EP_STATE_HALTED:
+		dev_err(ctrl->dev, "halted endpoint, queueing URB anyway.\n");
+	case EP_STATE_STOPPED:
+	case EP_STATE_RUNNING:
+		dev_dbg(ctrl->dev, "EP STATE RUNNING.\n");
+		break;
+	default:
+		dev_err(ctrl->dev, "unknown endpoint state for ep\n");
+		return -EINVAL;
+	}
+
+	while (last_trb(ctrl, ep_ring, ep_ring->enq_seg, next)) {
+		/*
+		 * If we're not dealing with 0.95 hardware or isoc rings
+		 * on AMD 0.96 host, clear the chain bit.
+		 */
+		next->link.control &= cpu_to_le32(~TRB_CHAIN);
+
+		next->link.control ^= cpu_to_le32(TRB_CYCLE);
+
+		xhci_flush_cache((uintptr_t)next, sizeof(union xhci_trb));
+
+		/* Toggle the cycle bit after the last ring segment. */
+		if (last_trb_on_last_seg(ctrl, ep_ring,
+					ep_ring->enq_seg, next))
+			ep_ring->cycle_state = (ep_ring->cycle_state ? 0 : 1);
+		ep_ring->enq_seg = ep_ring->enq_seg->next;
+		ep_ring->enqueue = ep_ring->enq_seg->trbs;
+		next = ep_ring->enqueue;
+	}
+
+	return 0;
+}
+
+/**
+ * Generic function for queueing a command TRB on the command ring.
+ * Check to make sure there's room on the command ring for one command TRB.
+ *
+ * @param ctrl		Host controller data structure
+ * @param ptr		Pointer address to write in the first two fields (opt.)
+ * @param slot_id	Slot ID to encode in the flags field (opt.)
+ * @param ep_index	Endpoint index to encode in the flags field (opt.)
+ * @param cmd		Command type to enqueue
+ * @return none
+ */
+void xhci_queue_command(struct xhci_ctrl *ctrl, u8 *ptr, u32 slot_id,
+			u32 ep_index, trb_type cmd)
+{
+	u32 fields[4];
+	u64 val_64 = (uintptr_t)ptr;
+
+	BUG_ON(prepare_ring(ctrl, ctrl->cmd_ring, EP_STATE_RUNNING));
+
+	fields[0] = lower_32_bits(val_64);
+	fields[1] = upper_32_bits(val_64);
+	fields[2] = 0;
+	fields[3] = TRB_TYPE(cmd) | SLOT_ID_FOR_TRB(slot_id) |
+		    ctrl->cmd_ring->cycle_state;
+
+	/*
+	 * Only 'reset endpoint', 'stop endpoint' and 'set TR dequeue pointer'
+	 * commands need endpoint id encoded.
+	 */
+	if (cmd >= TRB_RESET_EP && cmd <= TRB_SET_DEQ)
+		fields[3] |= EP_ID_FOR_TRB(ep_index);
+
+	queue_trb(ctrl, ctrl->cmd_ring, false, fields);
+
+	/* Ring the command ring doorbell */
+	xhci_writel(&ctrl->dba->doorbell[0], DB_VALUE_HOST);
+}
+
+/**
+ * The TD size is the number of bytes remaining in the TD (including this TRB),
+ * right shifted by 10.
+ * It must fit in bits 21:17, so it can't be bigger than 31.
+ *
+ * @param remainder	remaining packets to be sent
+ * @return remainder if remainder is less than max else max
+ */
+static u32 xhci_td_remainder(unsigned int remainder)
+{
+	u32 max = (1 << (21 - 17 + 1)) - 1;
+
+	if ((remainder >> 10) >= max)
+		return max << 17;
+	else
+		return (remainder >> 10) << 17;
+}
+
+/**
+ * Finds out the remanining packets to be sent
+ *
+ * @param running_total	total size sent so far
+ * @param trb_buff_len	length of the TRB Buffer
+ * @param total_packet_count	total packet count
+ * @param maxpacketsize		max packet size of current pipe
+ * @param num_trbs_left		number of TRBs left to be processed
+ * @return 0 if running_total or trb_buff_len is 0, else remainder
+ */
+static u32 xhci_v1_0_td_remainder(int running_total,
+				int trb_buff_len,
+				unsigned int total_packet_count,
+				int maxpacketsize,
+				unsigned int num_trbs_left)
+{
+	int packets_transferred;
+
+	/* One TRB with a zero-length data packet. */
+	if (num_trbs_left == 0 || (running_total == 0 && trb_buff_len == 0))
+		return 0;
+
+	/*
+	 * All the TRB queueing functions don't count the current TRB in
+	 * running_total.
+	 */
+	packets_transferred = (running_total + trb_buff_len) / maxpacketsize;
+
+	if ((total_packet_count - packets_transferred) > 31)
+		return 31 << 17;
+	return (total_packet_count - packets_transferred) << 17;
+}
+
+/**
+ * Ring the doorbell of the End Point
+ *
+ * @param udev		pointer to the USB device structure
+ * @param ep_index	index of the endpoint
+ * @param start_cycle	cycle flag of the first TRB
+ * @param start_trb	pionter to the first TRB
+ * @return none
+ */
+static void giveback_first_trb(struct usb_device *udev, int ep_index,
+				int start_cycle,
+				struct xhci_generic_trb *start_trb)
+{
+	struct xhci_ctrl *ctrl = xhci_get_ctrl(udev);
+
+	/*
+	 * Pass all the TRBs to the hardware at once and make sure this write
+	 * isn't reordered.
+	 */
+	if (start_cycle)
+		start_trb->field[3] |= cpu_to_le32(start_cycle);
+	else
+		start_trb->field[3] &= cpu_to_le32(~TRB_CYCLE);
+
+	xhci_flush_cache((uintptr_t)start_trb, sizeof(struct xhci_generic_trb));
+
+	/* Ringing EP doorbell here */
+	xhci_writel(&ctrl->dba->doorbell[udev->slot_id],
+				DB_VALUE(ep_index, 0));
+
+	return;
+}
+
+/**** POLLING mechanism for XHCI ****/
+
+/**
+ * Finalizes a handled event TRB by advancing our dequeue pointer and giving
+ * the TRB back to the hardware for recycling. Must call this exactly once at
+ * the end of each event handler, and not touch the TRB again afterwards.
+ *
+ * @param ctrl	Host controller data structure
+ * @return none
+ */
+void xhci_acknowledge_event(struct xhci_ctrl *ctrl)
+{
+	/* Advance our dequeue pointer to the next event */
+	inc_deq(ctrl, ctrl->event_ring);
+
+	/* Inform the hardware */
+	xhci_writeq(&ctrl->ir_set->erst_dequeue,
+		(uintptr_t)ctrl->event_ring->dequeue | ERST_EHB);
+}
+
+/**
+ * Checks if there is a new event to handle on the event ring.
+ *
+ * @param ctrl	Host controller data structure
+ * @return 0 if failure else 1 on success
+ */
+static int event_ready(struct xhci_ctrl *ctrl)
+{
+	union xhci_trb *event;
+
+	xhci_inval_cache((uintptr_t)ctrl->event_ring->dequeue,
+			 sizeof(union xhci_trb));
+
+	event = ctrl->event_ring->dequeue;
+
+	/* Does the HC or OS own the TRB? */
+	if ((le32_to_cpu(event->event_cmd.flags) & TRB_CYCLE) !=
+		ctrl->event_ring->cycle_state)
+		return 0;
+
+	return 1;
+}
+
+/**
+ * Waits for a specific type of event and returns it. Discards unexpected
+ * events. Caller *must* call xhci_acknowledge_event() after it is finished
+ * processing the event, and must not access the returned pointer afterwards.
+ *
+ * @param ctrl		Host controller data structure
+ * @param expected	TRB type expected from Event TRB
+ * @return pointer to event trb
+ */
+union xhci_trb *xhci_wait_for_event(struct xhci_ctrl *ctrl, trb_type expected)
+{
+	trb_type type;
+	uint64_t start = get_time_ns();
+
+	do {
+		union xhci_trb *event = ctrl->event_ring->dequeue;
+
+		if (!event_ready(ctrl))
+			continue;
+
+		type = TRB_FIELD_TO_TYPE(le32_to_cpu(event->event_cmd.flags));
+		if (type == expected)
+			return event;
+
+		if (type == TRB_PORT_STATUS)
+		/* TODO: remove this once enumeration has been reworked */
+			/*
+			 * Port status change events always have a
+			 * successful completion code
+			 */
+			BUG_ON(GET_COMP_CODE(
+				le32_to_cpu(event->generic.field[2])) !=
+								COMP_SUCCESS);
+		else
+			dev_err(ctrl->dev, "Unexpected XHCI event TRB, skipping... "
+				"(%08x %08x %08x %08x)\n",
+				le32_to_cpu(event->generic.field[0]),
+				le32_to_cpu(event->generic.field[1]),
+				le32_to_cpu(event->generic.field[2]),
+				le32_to_cpu(event->generic.field[3]));
+
+		xhci_acknowledge_event(ctrl);
+	} while (!is_timeout_non_interruptible(start, 5 * SECOND));
+
+	if (expected == TRB_TRANSFER)
+		return NULL;
+
+	dev_err(ctrl->dev, "XHCI timeout on event type %d... cannot recover.\n", expected);
+	BUG();
+}
+
+/*
+ * Stops transfer processing for an endpoint and throws away all unprocessed
+ * TRBs by setting the xHC's dequeue pointer to our enqueue pointer. The next
+ * xhci_bulk_tx/xhci_ctrl_tx on this enpoint will add new transfers there and
+ * ring the doorbell, causing this endpoint to start working again.
+ * (Careful: This will BUG() when there was no transfer in progress. Shouldn't
+ * happen in practice for current uses and is too complicated to fix right now.)
+ */
+static void abort_td(struct usb_device *udev, int ep_index)
+{
+	struct xhci_ctrl *ctrl = xhci_get_ctrl(udev);
+	struct xhci_ring *ring =  ctrl->devs[udev->slot_id]->eps[ep_index].ring;
+	union xhci_trb *event;
+	u32 field;
+
+	xhci_queue_command(ctrl, NULL, udev->slot_id, ep_index, TRB_STOP_RING);
+
+	event = xhci_wait_for_event(ctrl, TRB_TRANSFER);
+	field = le32_to_cpu(event->trans_event.flags);
+	BUG_ON(TRB_TO_SLOT_ID(field) != udev->slot_id);
+	BUG_ON(TRB_TO_EP_INDEX(field) != ep_index);
+	BUG_ON(GET_COMP_CODE(le32_to_cpu(event->trans_event.transfer_len
+		!= COMP_STOP)));
+	xhci_acknowledge_event(ctrl);
+
+	event = xhci_wait_for_event(ctrl, TRB_COMPLETION);
+	BUG_ON(TRB_TO_SLOT_ID(le32_to_cpu(event->event_cmd.flags))
+		!= udev->slot_id || GET_COMP_CODE(le32_to_cpu(
+		event->event_cmd.status)) != COMP_SUCCESS);
+	xhci_acknowledge_event(ctrl);
+
+	xhci_queue_command(ctrl, (void *)((uintptr_t)ring->enqueue |
+		ring->cycle_state), udev->slot_id, ep_index, TRB_SET_DEQ);
+	event = xhci_wait_for_event(ctrl, TRB_COMPLETION);
+	BUG_ON(TRB_TO_SLOT_ID(le32_to_cpu(event->event_cmd.flags))
+		!= udev->slot_id || GET_COMP_CODE(le32_to_cpu(
+		event->event_cmd.status)) != COMP_SUCCESS);
+	xhci_acknowledge_event(ctrl);
+}
+
+static void record_transfer_result(struct usb_device *udev,
+				   union xhci_trb *event, int length)
+{
+	udev->act_len = min(length, length -
+		(int)EVENT_TRB_LEN(le32_to_cpu(event->trans_event.transfer_len)));
+
+	switch (GET_COMP_CODE(le32_to_cpu(event->trans_event.transfer_len))) {
+	case COMP_SUCCESS:
+		BUG_ON(udev->act_len != length);
+		/* fallthrough */
+	case COMP_SHORT_TX:
+		udev->status = 0;
+		break;
+	case COMP_STALL:
+		udev->status = USB_ST_STALLED;
+		break;
+	case COMP_DB_ERR:
+	case COMP_TRB_ERR:
+		udev->status = USB_ST_BUF_ERR;
+		break;
+	case COMP_BABBLE:
+		udev->status = USB_ST_BABBLE_DET;
+		break;
+	default:
+		udev->status = 0x80;  /* USB_ST_TOO_LAZY_TO_MAKE_A_NEW_MACRO */
+	}
+}
+
+/**** Bulk and Control transfer methods ****/
+/**
+ * Queues up the BULK Request
+ *
+ * @param udev		pointer to the USB device structure
+ * @param pipe		contains the DIR_IN or OUT , devnum
+ * @param length	length of the buffer
+ * @param buffer	buffer to be read/written based on the request
+ * @return returns 0 if successful else -1 on failure
+ */
+int xhci_bulk_tx(struct usb_device *udev, unsigned long pipe,
+			int length, void *buffer)
+{
+	int num_trbs = 0;
+	struct xhci_generic_trb *start_trb;
+	bool first_trb = false;
+	int start_cycle;
+	u32 field = 0;
+	u32 length_field = 0;
+	struct xhci_ctrl *ctrl = xhci_get_ctrl(udev);
+	int slot_id = udev->slot_id;
+	int ep_index;
+	struct xhci_virt_device *virt_dev;
+	struct xhci_ep_ctx *ep_ctx;
+	struct xhci_ring *ring;		/* EP transfer ring */
+	union xhci_trb *event;
+
+	int running_total, trb_buff_len;
+	unsigned int total_packet_count;
+	int maxpacketsize;
+	u64 addr;
+	int ret;
+	u32 trb_fields[4];
+	enum dma_data_direction direction;
+	void *bounce = ctrl->bounce_buffer;
+	dma_addr_t map;
+
+	/*
+	 * XHCI has the restriction that a single TRB may not cross a 64KiB
+	 * boundary. The U-Boot code we derived this from is somewhat prepared
+	 * for this, but it doesn't work, at least not for the case when a short
+	 * packet is received. For now just limit the maximum buffer length to
+	 * 64KiB and use a 64KiB aligned bounce buffer to make sure we do not
+	 * cross a boundary.
+	 */
+	if (length > SZ_64K)
+		return -EINVAL;
+
+	if (usb_pipein(pipe)) {
+		direction = DMA_FROM_DEVICE;
+	} else {
+		direction = DMA_TO_DEVICE;
+		memcpy(bounce, buffer, length);
+	}
+
+	map = addr = dma_map_single(ctrl->dev, bounce, length, direction);
+
+	dev_dbg(&udev->dev, "pipe=0x%lx, buffer=%p, length=%d\n",
+		pipe, buffer, length);
+
+	ep_index = usb_pipe_ep_index(pipe);
+	virt_dev = ctrl->devs[slot_id];
+
+	xhci_inval_cache((uintptr_t)virt_dev->out_ctx->bytes,
+			 virt_dev->out_ctx->size);
+
+	ep_ctx = xhci_get_ep_ctx(ctrl, virt_dev->out_ctx, ep_index);
+
+	ring = virt_dev->eps[ep_index].ring;
+	/*
+	 * How much data is (potentially) left before the 64KB boundary?
+	 * XHCI Spec puts restriction( TABLE 49 and 6.4.1 section of XHCI Spec)
+	 * that the buffer should not span 64KB boundary. if so
+	 * we send request in more than 1 TRB by chaining them.
+	 */
+	running_total = TRB_MAX_BUFF_SIZE -
+			(lower_32_bits(addr) & (TRB_MAX_BUFF_SIZE - 1));
+	trb_buff_len = running_total;
+	running_total &= TRB_MAX_BUFF_SIZE - 1;
+
+	/*
+	 * If there's some data on this 64KB chunk, or we have to send a
+	 * zero-length transfer, we need at least one TRB
+	 */
+	if (running_total != 0 || length == 0)
+		num_trbs++;
+
+	/* How many more 64KB chunks to transfer, how many more TRBs? */
+	while (running_total < length) {
+		num_trbs++;
+		running_total += TRB_MAX_BUFF_SIZE;
+	}
+
+	/*
+	 * XXX: Calling routine prepare_ring() called in place of
+	 * prepare_trasfer() as there in 'Linux' since we are not
+	 * maintaining multiple TDs/transfer at the same time.
+	 */
+	ret = prepare_ring(ctrl, ring,
+			   le32_to_cpu(ep_ctx->ep_info) & EP_STATE_MASK);
+	if (ret < 0)
+		return ret;
+
+	/*
+	 * Don't give the first TRB to the hardware (by toggling the cycle bit)
+	 * until we've finished creating all the other TRBs.  The ring's cycle
+	 * state may change as we enqueue the other TRBs, so save it too.
+	 */
+	start_trb = &ring->enqueue->generic;
+	start_cycle = ring->cycle_state;
+
+	running_total = 0;
+	maxpacketsize = usb_maxpacket(udev, pipe);
+
+	total_packet_count = DIV_ROUND_UP(length, maxpacketsize);
+
+	if (trb_buff_len > length)
+		trb_buff_len = length;
+
+	first_trb = true;
+
+	/* Queue the first TRB, even if it's zero-length */
+	do {
+		u32 remainder = 0;
+		field = 0;
+		/* Don't change the cycle bit of the first TRB until later */
+		if (first_trb) {
+			first_trb = false;
+			if (start_cycle == 0)
+				field |= TRB_CYCLE;
+		} else {
+			field |= ring->cycle_state;
+		}
+
+		/*
+		 * Chain all the TRBs together; clear the chain bit in the last
+		 * TRB to indicate it's the last TRB in the chain.
+		 */
+		if (num_trbs > 1)
+			field |= TRB_CHAIN;
+		else
+			field |= TRB_IOC;
+
+		/* Only set interrupt on short packet for IN endpoints */
+		if (usb_pipein(pipe))
+			field |= TRB_ISP;
+
+		/* Set the TRB length, TD size, and interrupter fields. */
+		if (HC_VERSION(xhci_readl(&ctrl->hccr->cr_capbase)) < 0x100)
+			remainder = xhci_td_remainder(length - running_total);
+		else
+			remainder = xhci_v1_0_td_remainder(running_total,
+							   trb_buff_len,
+							   total_packet_count,
+							   maxpacketsize,
+							   num_trbs - 1);
+
+		length_field = ((trb_buff_len & TRB_LEN_MASK) |
+				remainder |
+				((0 & TRB_INTR_TARGET_MASK) <<
+				TRB_INTR_TARGET_SHIFT));
+
+		trb_fields[0] = lower_32_bits(addr);
+		trb_fields[1] = upper_32_bits(addr);
+		trb_fields[2] = length_field;
+		trb_fields[3] = field | (TRB_NORMAL << TRB_TYPE_SHIFT);
+
+		queue_trb(ctrl, ring, (num_trbs > 1), trb_fields);
+
+		--num_trbs;
+
+		running_total += trb_buff_len;
+
+		/* Calculate length for next transfer */
+		addr += trb_buff_len;
+		trb_buff_len = min((length - running_total), TRB_MAX_BUFF_SIZE);
+	} while (running_total < length);
+
+	giveback_first_trb(udev, ep_index, start_cycle, start_trb);
+
+	event = xhci_wait_for_event(ctrl, TRB_TRANSFER);
+	if (!event) {
+		dev_dbg(&udev->dev, "XHCI bulk transfer timed out, aborting...\n");
+		abort_td(udev, ep_index);
+		udev->status = USB_ST_NAK_REC;  /* closest thing to a timeout */
+		udev->act_len = 0;
+		return -ETIMEDOUT;
+	}
+	field = le32_to_cpu(event->trans_event.flags);
+
+	if (TRB_TO_SLOT_ID(field) != slot_id)
+		dev_err(&udev->dev, "Unexpected slot_id %d, expected %d\n",
+			TRB_TO_SLOT_ID(field), slot_id);
+
+	if (TRB_TO_EP_INDEX(field) != ep_index)
+		dev_err(&udev->dev, "Unexpected ep_index %d, expected %d\n",
+			TRB_TO_EP_INDEX(field), ep_index);
+
+	record_transfer_result(udev, event, length);
+	xhci_acknowledge_event(ctrl);
+
+	dma_unmap_single(ctrl->dev, map, length, direction);
+
+	if (usb_pipein(pipe))
+		memcpy(buffer, bounce, length);
+
+	return (udev->status != USB_ST_NOT_PROC) ? 0 : -1;
+}
+
+/**
+ * Queues up the Control Transfer Request
+ *
+ * @param udev	pointer to the USB device structure
+ * @param pipe		contains the DIR_IN or OUT , devnum
+ * @param req		request type
+ * @param length	length of the buffer
+ * @param buffer	buffer to be read/written based on the request
+ * @return returns 0 if successful else error code on failure
+ */
+int xhci_ctrl_tx(struct usb_device *udev, unsigned long pipe,
+			struct devrequest *req,	int length,
+			void *buffer)
+{
+	int ret;
+	int start_cycle;
+	int num_trbs;
+	u32 field;
+	u32 length_field;
+	u64 buf_64 = 0;
+	struct xhci_generic_trb *start_trb;
+	struct xhci_ctrl *ctrl = xhci_get_ctrl(udev);
+	int slot_id = udev->slot_id;
+	int ep_index;
+	u32 trb_fields[4];
+	struct xhci_virt_device *virt_dev = ctrl->devs[slot_id];
+	struct xhci_ring *ep_ring;
+	union xhci_trb *event;
+	struct xhci_ep_ctx *ep_ctx;
+	enum dma_data_direction direction;
+	dma_addr_t map = 0;
+
+	dev_dbg(&udev->dev, "req=%u (%#x), type=%u (%#x), value=%u (%#x), index=%u\n",
+		req->request, req->request,
+		req->requesttype, req->requesttype,
+		le16_to_cpu(req->value), le16_to_cpu(req->value),
+		le16_to_cpu(req->index));
+
+	ep_index = usb_pipe_ep_index(pipe);
+
+	ep_ring = virt_dev->eps[ep_index].ring;
+
+	/*
+	 * Check to see if the max packet size for the default control
+	 * endpoint changed during FS device enumeration
+	 */
+	if (udev->speed == USB_SPEED_FULL) {
+		ret = xhci_check_maxpacket(udev);
+		if (ret < 0)
+			return ret;
+	}
+
+	xhci_inval_cache((uintptr_t)virt_dev->out_ctx->bytes,
+			 virt_dev->out_ctx->size);
+
+	ep_ctx = xhci_get_ep_ctx(ctrl, virt_dev->out_ctx, ep_index);
+
+	/* 1 TRB for setup, 1 for status */
+	num_trbs = 2;
+	/*
+	 * Don't need to check if we need additional event data and normal TRBs,
+	 * since data in control transfers will never get bigger than 16MB
+	 * XXX: can we get a buffer that crosses 64KB boundaries?
+	 */
+
+	if (length > 0)
+		num_trbs++;
+	/*
+	 * XXX: Calling routine prepare_ring() called in place of
+	 * prepare_trasfer() as there in 'Linux' since we are not
+	 * maintaining multiple TDs/transfer at the same time.
+	 */
+	ret = prepare_ring(ctrl, ep_ring,
+				le32_to_cpu(ep_ctx->ep_info) & EP_STATE_MASK);
+
+	if (ret < 0)
+		return ret;
+
+	/*
+	 * Don't give the first TRB to the hardware (by toggling the cycle bit)
+	 * until we've finished creating all the other TRBs.  The ring's cycle
+	 * state may change as we enqueue the other TRBs, so save it too.
+	 */
+	start_trb = &ep_ring->enqueue->generic;
+	start_cycle = ep_ring->cycle_state;
+
+	dev_dbg(&udev->dev, "start_trb 0x%p, start_cycle %d\n", start_trb, start_cycle);
+
+	/* Queue setup TRB - see section 6.4.1.2.1 */
+	/* FIXME better way to translate setup_packet into two u32 fields? */
+	field = 0;
+	field |= TRB_IDT | (TRB_SETUP << TRB_TYPE_SHIFT);
+	if (start_cycle == 0)
+		field |= 0x1;
+
+	/* xHCI 1.0 6.4.1.2.1: Transfer Type field */
+	if (HC_VERSION(xhci_readl(&ctrl->hccr->cr_capbase)) >= 0x100) {
+		if (length > 0) {
+			if (req->requesttype & USB_DIR_IN)
+				field |= (TRB_DATA_IN << TRB_TX_TYPE_SHIFT);
+			else
+				field |= (TRB_DATA_OUT << TRB_TX_TYPE_SHIFT);
+		}
+	}
+
+	dev_dbg(&udev->dev, "req->requesttype = %d, req->request = %d,"
+		"le16_to_cpu(req->value) = %d,"
+		"le16_to_cpu(req->index) = %d,"
+		"le16_to_cpu(req->length) = %d\n",
+		req->requesttype, req->request, le16_to_cpu(req->value),
+		le16_to_cpu(req->index), le16_to_cpu(req->length));
+
+	trb_fields[0] = req->requesttype | req->request << 8 |
+				le16_to_cpu(req->value) << 16;
+	trb_fields[1] = le16_to_cpu(req->index) |
+			le16_to_cpu(req->length) << 16;
+	/* TRB_LEN | (TRB_INTR_TARGET) */
+	trb_fields[2] = (8 | ((0 & TRB_INTR_TARGET_MASK) <<
+			TRB_INTR_TARGET_SHIFT));
+	/* Immediate data in pointer */
+	trb_fields[3] = field;
+	queue_trb(ctrl, ep_ring, true, trb_fields);
+
+	/* Re-initializing field to zero */
+	field = 0;
+	/* If there's data, queue data TRBs */
+	/* Only set interrupt on short packet for IN endpoints */
+	if (usb_pipein(pipe))
+		field = TRB_ISP | (TRB_DATA << TRB_TYPE_SHIFT);
+	else
+		field = (TRB_DATA << TRB_TYPE_SHIFT);
+
+	length_field = (length & TRB_LEN_MASK) | xhci_td_remainder(length) |
+			((0 & TRB_INTR_TARGET_MASK) << TRB_INTR_TARGET_SHIFT);
+	dev_dbg(&udev->dev, "length_field = %d, length = %d,"
+		"xhci_td_remainder(length) = %d , TRB_INTR_TARGET(0) = %d\n",
+		length_field, (length & TRB_LEN_MASK),
+		xhci_td_remainder(length), 0);
+
+	if (req->requesttype & USB_DIR_IN)
+		direction = DMA_FROM_DEVICE;
+	else
+		direction = DMA_TO_DEVICE;
+
+	if (length > 0) {
+		if (req->requesttype & USB_DIR_IN)
+			field |= TRB_DIR_IN;
+		map = buf_64 = dma_map_single(ctrl->dev, buffer, length, direction);
+
+		trb_fields[0] = lower_32_bits(buf_64);
+		trb_fields[1] = upper_32_bits(buf_64);
+		trb_fields[2] = length_field;
+		trb_fields[3] = field | ep_ring->cycle_state;
+
+		queue_trb(ctrl, ep_ring, true, trb_fields);
+	}
+
+	/*
+	 * Queue status TRB -
+	 * see Table 7 and sections 4.11.2.2 and 6.4.1.2.3
+	 */
+
+	/* If the device sent data, the status stage is an OUT transfer */
+	field = 0;
+	if (length > 0 && req->requesttype & USB_DIR_IN)
+		field = 0;
+	else
+		field = TRB_DIR_IN;
+
+	trb_fields[0] = 0;
+	trb_fields[1] = 0;
+	trb_fields[2] = ((0 & TRB_INTR_TARGET_MASK) << TRB_INTR_TARGET_SHIFT);
+		/* Event on completion */
+	trb_fields[3] = field | TRB_IOC |
+			(TRB_STATUS << TRB_TYPE_SHIFT) |
+			ep_ring->cycle_state;
+
+	queue_trb(ctrl, ep_ring, false, trb_fields);
+
+	giveback_first_trb(udev, ep_index, start_cycle, start_trb);
+
+	event = xhci_wait_for_event(ctrl, TRB_TRANSFER);
+	if (!event)
+		goto abort;
+	field = le32_to_cpu(event->trans_event.flags);
+
+	if (TRB_TO_SLOT_ID(field) != slot_id)
+		dev_err(&udev->dev, "Unexpected slot_id %d, expected %d\n",
+			TRB_TO_SLOT_ID(field), slot_id);
+
+	if (TRB_TO_EP_INDEX(field) != ep_index)
+		dev_err(&udev->dev, "Unexpected ep_index %d, expected %d\n",
+			TRB_TO_EP_INDEX(field), ep_index);
+
+	record_transfer_result(udev, event, length);
+	xhci_acknowledge_event(ctrl);
+
+	/* Invalidate buffer to make it available to usb-core */
+	if (length > 0)
+		dma_unmap_single(ctrl->dev, map, length, direction);
+
+	if (GET_COMP_CODE(le32_to_cpu(event->trans_event.transfer_len))
+			== COMP_SHORT_TX) {
+		/* Short data stage, clear up additional status stage event */
+		event = xhci_wait_for_event(ctrl, TRB_TRANSFER);
+		if (!event)
+			goto abort;
+		BUG_ON(TRB_TO_SLOT_ID(field) != slot_id);
+		BUG_ON(TRB_TO_EP_INDEX(field) != ep_index);
+		xhci_acknowledge_event(ctrl);
+	}
+
+	return (udev->status != USB_ST_NOT_PROC) ? 0 : -1;
+
+abort:
+	dev_dbg(&udev->dev, "XHCI control transfer timed out, aborting...\n");
+	abort_td(udev, ep_index);
+	udev->status = USB_ST_NAK_REC;
+	udev->act_len = 0;
+	return -ETIMEDOUT;
+}
diff --git a/drivers/usb/host/xhci.c b/drivers/usb/host/xhci.c
new file mode 100644
index 0000000000..317000d650
--- /dev/null
+++ b/drivers/usb/host/xhci.c
@@ -0,0 +1,1437 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * USB HOST XHCI Controller stack
+ *
+ * Based on xHCI host controller driver in linux-kernel
+ * by Sarah Sharp.
+ *
+ * Copyright (C) 2008 Intel Corp.
+ * Author: Sarah Sharp
+ *
+ * Copyright (C) 2013 Samsung Electronics Co.Ltd
+ * Authors: Vivek Gautam <gautam.vivek@samsung.com>
+ *	    Vikas Sajjan <vikas.sajjan@samsung.com>
+ */
+
+/**
+ * This file gives the xhci stack for usb3.0 looking into
+ * xhci specification Rev1.0 (5/21/10).
+ * The quirk devices support hasn't been given yet.
+ */
+#include <clock.h>
+#include <common.h>
+#include <dma.h>
+#include <init.h>
+#include <io.h>
+#include <linux/err.h>
+#include <usb/usb.h>
+#include <usb/xhci.h>
+#include <asm/unaligned.h>
+
+#include "xhci.h"
+
+static struct descriptor {
+	struct usb_hub_descriptor hub;
+	struct usb_device_descriptor device;
+	struct usb_config_descriptor config;
+	struct usb_interface_descriptor interface;
+	struct usb_endpoint_descriptor endpoint;
+	struct usb_ss_ep_comp_descriptor ep_companion;
+} __attribute__ ((packed)) descriptor = {
+	{
+		0xc,		/* bDescLength */
+		0x2a,		/* bDescriptorType: hub descriptor */
+		2,		/* bNrPorts -- runtime modified */
+		cpu_to_le16(0x8), /* wHubCharacteristics */
+		10,		/* bPwrOn2PwrGood */
+		0,		/* bHubCntrCurrent */
+		{		/* Device removable */
+		}		/* at most 7 ports! XXX */
+	},
+	{
+		0x12,		/* bLength */
+		1,		/* bDescriptorType: UDESC_DEVICE */
+		cpu_to_le16(0x0300), /* bcdUSB: v3.0 */
+		9,		/* bDeviceClass: UDCLASS_HUB */
+		0,		/* bDeviceSubClass: UDSUBCLASS_HUB */
+		3,		/* bDeviceProtocol: UDPROTO_SSHUBSTT */
+		9,		/* bMaxPacketSize: 512 bytes  2^9 */
+		0x0000,		/* idVendor */
+		0x0000,		/* idProduct */
+		cpu_to_le16(0x0100), /* bcdDevice */
+		1,		/* iManufacturer */
+		2,		/* iProduct */
+		0,		/* iSerialNumber */
+		1		/* bNumConfigurations: 1 */
+	},
+	{
+		0x9,
+		2,		/* bDescriptorType: UDESC_CONFIG */
+		cpu_to_le16(0x1f), /* includes SS endpoint descriptor */
+		1,		/* bNumInterface */
+		1,		/* bConfigurationValue */
+		0,		/* iConfiguration */
+		0x40,		/* bmAttributes: UC_SELF_POWER */
+		0		/* bMaxPower */
+	},
+	{
+		0x9,		/* bLength */
+		4,		/* bDescriptorType: UDESC_INTERFACE */
+		0,		/* bInterfaceNumber */
+		0,		/* bAlternateSetting */
+		1,		/* bNumEndpoints */
+		9,		/* bInterfaceClass: UICLASS_HUB */
+		0,		/* bInterfaceSubClass: UISUBCLASS_HUB */
+		0,		/* bInterfaceProtocol: UIPROTO_HSHUBSTT */
+		0		/* iInterface */
+	},
+	{
+		0x7,		/* bLength */
+		5,		/* bDescriptorType: UDESC_ENDPOINT */
+		0x81,		/* bEndpointAddress: IN endpoint 1 */
+		3,		/* bmAttributes: UE_INTERRUPT */
+		8,		/* wMaxPacketSize */
+		255		/* bInterval */
+	},
+	{
+		0x06,		/* ss_bLength */
+		0x30,		/* ss_bDescriptorType: SS EP Companion */
+		0x00,		/* ss_bMaxBurst: allows 1 TX between ACKs */
+		/* ss_bmAttributes: 1 packet per service interval */
+		0x00,
+		/* ss_wBytesPerInterval: 15 bits for max 15 ports */
+		cpu_to_le16(0x02),
+	},
+};
+
+struct xhci_ctrl *xhci_get_ctrl(struct usb_device *udev)
+{
+	struct usb_host *host = udev->host;
+
+	return to_xhci(host);
+}
+
+/**
+ * Waits for as per specified amount of time
+ * for the "result" to match with "done"
+ *
+ * @param ptr	pointer to the register to be read
+ * @param mask	mask for the value read
+ * @param done	value to be campared with result
+ * @param usec	time to wait till
+ * @return 0 if handshake is success else < 0 on failure
+ */
+static int handshake(uint32_t volatile *ptr, uint32_t mask,
+					uint32_t done, int usec)
+{
+	uint32_t result;
+	uint64_t start = get_time_ns();
+
+	while (1) {
+		result = xhci_readl(ptr);
+		if (result == ~(uint32_t)0)
+			return -ENODEV;
+		result &= mask;
+		if (result == done)
+			return 0;
+		if (is_timeout_non_interruptible(start, usec * 1000))
+			return -ETIMEDOUT;
+	}
+}
+
+/**
+ * Set the run bit and wait for the host to be running.
+ *
+ * @param hcor	pointer to host controller operation registers
+ * @return status of the Handshake
+ */
+static int xhci_start(struct xhci_ctrl *ctrl)
+{
+	struct xhci_hcor *hcor = ctrl->hcor;
+	u32 temp;
+	int ret;
+
+	temp = xhci_readl(&hcor->or_usbcmd);
+	temp |= (CMD_RUN);
+	xhci_writel(&hcor->or_usbcmd, temp);
+
+	/*
+	 * Wait for the HCHalted Status bit to be 0 to indicate the host is
+	 * running.
+	 */
+	ret = handshake(&hcor->or_usbsts, STS_HALT, 0, XHCI_MAX_HALT_USEC);
+	if (ret)
+		dev_dbg(ctrl->dev, "Host took too long to start, "
+				"waited %u microseconds.\n",
+				XHCI_MAX_HALT_USEC);
+	return ret;
+}
+
+/**
+ * Resets the XHCI Controller
+ *
+ * @param hcor	pointer to host controller operation registers
+ * @return -EBUSY if XHCI Controller is not halted else status of handshake
+ */
+static int xhci_reset(struct xhci_ctrl *ctrl)
+{
+	struct xhci_hcor *hcor = ctrl->hcor;
+	u32 cmd;
+	u32 state;
+	int ret;
+
+	/* Halting the Host first */
+	dev_dbg(ctrl->dev, "Halt the HC\n");
+	state = xhci_readl(&hcor->or_usbsts) & STS_HALT;
+	if (!state) {
+		cmd = xhci_readl(&hcor->or_usbcmd);
+		cmd &= ~CMD_RUN;
+		xhci_writel(&hcor->or_usbcmd, cmd);
+	}
+
+	ret = handshake(&hcor->or_usbsts,
+			STS_HALT, STS_HALT, XHCI_MAX_HALT_USEC);
+	if (ret) {
+		dev_err(ctrl->dev, "Host not halted after %u microseconds.\n",
+				XHCI_MAX_HALT_USEC);
+		return -EBUSY;
+	}
+
+	dev_dbg(ctrl->dev, "Reset the HC\n");
+	cmd = xhci_readl(&hcor->or_usbcmd);
+	cmd |= CMD_RESET;
+	xhci_writel(&hcor->or_usbcmd, cmd);
+
+	ret = handshake(&hcor->or_usbcmd, CMD_RESET, 0, XHCI_MAX_RESET_USEC);
+	if (ret)
+		return ret;
+
+	/*
+	 * xHCI cannot write to any doorbells or operational registers other
+	 * than status until the "Controller Not Ready" flag is cleared.
+	 */
+	return handshake(&hcor->or_usbsts, STS_CNR, 0, XHCI_MAX_RESET_USEC);
+}
+
+/**
+ * Used for passing endpoint bitmasks between the core and HCDs.
+ * Find the index for an endpoint given its descriptor.
+ * Use the return value to right shift 1 for the bitmask.
+ *
+ * Index  = (epnum * 2) + direction - 1,
+ * where direction = 0 for OUT, 1 for IN.
+ * For control endpoints, the IN index is used (OUT index is unused), so
+ * index = (epnum * 2) + direction - 1 = (epnum * 2) + 1 - 1 = (epnum * 2)
+ *
+ * @param desc	USB enpdoint Descriptor
+ * @return index of the Endpoint
+ */
+static unsigned int xhci_get_ep_index(struct usb_endpoint_descriptor *desc)
+{
+	unsigned int index;
+
+	if (usb_endpoint_xfer_control(desc))
+		index = (unsigned int)(usb_endpoint_num(desc) * 2);
+	else
+		index = (unsigned int)((usb_endpoint_num(desc) * 2) -
+				(usb_endpoint_dir_in(desc) ? 0 : 1));
+
+	return index;
+}
+
+/*
+ * Convert bInterval expressed in microframes (in 1-255 range) to exponent of
+ * microframes, rounded down to nearest power of 2.
+ */
+static unsigned int xhci_microframes_to_exponent(struct usb_device *udev,
+						 unsigned int desc_interval,
+						 unsigned int min_exponent,
+						 unsigned int max_exponent)
+{
+	unsigned int interval;
+
+	interval = fls(desc_interval) - 1;
+	interval = clamp_val(interval, min_exponent, max_exponent);
+	if ((1 << interval) != desc_interval)
+		dev_dbg(&udev->dev, "rounding interval to %d microframes, "\
+		      "ep desc says %d microframes\n",
+		      1 << interval, desc_interval);
+
+	return interval;
+}
+
+static unsigned int xhci_parse_microframe_interval(struct usb_device *udev,
+	struct usb_endpoint_descriptor *endpt_desc)
+{
+	if (endpt_desc->bInterval == 0)
+		return 0;
+
+	return xhci_microframes_to_exponent(udev, endpt_desc->bInterval, 0, 15);
+}
+
+static unsigned int xhci_parse_frame_interval(struct usb_device *udev,
+	struct usb_endpoint_descriptor *endpt_desc)
+{
+	return xhci_microframes_to_exponent(udev, endpt_desc->bInterval * 8, 3, 10);
+}
+
+/*
+ * Convert interval expressed as 2^(bInterval - 1) == interval into
+ * straight exponent value 2^n == interval.
+ */
+static unsigned int xhci_parse_exponent_interval(struct usb_device *udev,
+	struct usb_endpoint_descriptor *endpt_desc)
+{
+	unsigned int interval;
+
+	interval = clamp_val(endpt_desc->bInterval, 1, 16) - 1;
+	if (interval != endpt_desc->bInterval - 1)
+		dev_dbg(&udev->dev, "ep %#x - rounding interval to %d %sframes\n",
+		      endpt_desc->bEndpointAddress, 1 << interval,
+		      udev->speed == USB_SPEED_FULL ? "" : "micro");
+
+	if (udev->speed == USB_SPEED_FULL) {
+		/*
+		 * Full speed isoc endpoints specify interval in frames,
+		 * not microframes. We are using microframes everywhere,
+		 * so adjust accordingly.
+		 */
+		interval += 3;	/* 1 frame = 2^3 uframes */
+	}
+
+	return interval;
+}
+
+/*
+ * Return the polling or NAK interval.
+ *
+ * The polling interval is expressed in "microframes". If xHCI's Interval field
+ * is set to N, it will service the endpoint every 2^(Interval)*125us.
+ *
+ * The NAK interval is one NAK per 1 to 255 microframes, or no NAKs if interval
+ * is set to 0.
+ */
+static unsigned int xhci_get_endpoint_interval(struct usb_device *udev,
+	struct usb_endpoint_descriptor *endpt_desc)
+{
+	unsigned int interval = 0;
+
+	switch (udev->speed) {
+	case USB_SPEED_HIGH:
+		/* Max NAK rate */
+		if (usb_endpoint_xfer_control(endpt_desc) ||
+		    usb_endpoint_xfer_bulk(endpt_desc)) {
+			interval = xhci_parse_microframe_interval(udev,
+								  endpt_desc);
+			break;
+		}
+		/* Fall through - SS and HS isoc/int have same decoding */
+
+	case USB_SPEED_SUPER:
+		if (usb_endpoint_xfer_int(endpt_desc) ||
+		    usb_endpoint_xfer_isoc(endpt_desc)) {
+			interval = xhci_parse_exponent_interval(udev,
+								endpt_desc);
+		}
+		break;
+
+	case USB_SPEED_FULL:
+		if (usb_endpoint_xfer_isoc(endpt_desc)) {
+			interval = xhci_parse_exponent_interval(udev,
+								endpt_desc);
+			break;
+		}
+		/*
+		 * Fall through for interrupt endpoint interval decoding
+		 * since it uses the same rules as low speed interrupt
+		 * endpoints.
+		 */
+
+	case USB_SPEED_LOW:
+		if (usb_endpoint_xfer_int(endpt_desc) ||
+		    usb_endpoint_xfer_isoc(endpt_desc)) {
+			interval = xhci_parse_frame_interval(udev, endpt_desc);
+		}
+		break;
+
+	default:
+		BUG();
+	}
+
+	return interval;
+}
+
+/*
+ * The "Mult" field in the endpoint context is only set for SuperSpeed isoc eps.
+ * High speed endpoint descriptors can define "the number of additional
+ * transaction opportunities per microframe", but that goes in the Max Burst
+ * endpoint context field.
+ */
+static u32 xhci_get_endpoint_mult(struct usb_device *udev,
+	struct usb_endpoint_descriptor *endpt_desc,
+	struct usb_ss_ep_comp_descriptor *ss_ep_comp_desc)
+{
+	if (udev->speed < USB_SPEED_SUPER ||
+	    !usb_endpoint_xfer_isoc(endpt_desc))
+		return 0;
+
+	return ss_ep_comp_desc->bmAttributes;
+}
+
+static u32 xhci_get_endpoint_max_burst(struct usb_device *udev,
+	struct usb_endpoint_descriptor *endpt_desc,
+	struct usb_ss_ep_comp_descriptor *ss_ep_comp_desc)
+{
+	/* Super speed and Plus have max burst in ep companion desc */
+	if (udev->speed >= USB_SPEED_SUPER)
+		return ss_ep_comp_desc->bMaxBurst;
+
+	if (udev->speed == USB_SPEED_HIGH &&
+	    (usb_endpoint_xfer_isoc(endpt_desc) ||
+	     usb_endpoint_xfer_int(endpt_desc)))
+		return usb_endpoint_maxp_mult(endpt_desc) - 1;
+
+	return 0;
+}
+
+/*
+ * Return the maximum endpoint service interval time (ESIT) payload.
+ * Basically, this is the maxpacket size, multiplied by the burst size
+ * and mult size.
+ */
+static u32 xhci_get_max_esit_payload(struct usb_device *udev,
+	struct usb_endpoint_descriptor *endpt_desc,
+	struct usb_ss_ep_comp_descriptor *ss_ep_comp_desc)
+{
+	int max_burst;
+	int max_packet;
+
+	/* Only applies for interrupt or isochronous endpoints */
+	if (usb_endpoint_xfer_control(endpt_desc) ||
+	    usb_endpoint_xfer_bulk(endpt_desc))
+		return 0;
+
+	/* SuperSpeed Isoc ep with less than 48k per esit */
+	if (udev->speed >= USB_SPEED_SUPER)
+		return le16_to_cpu(ss_ep_comp_desc->wBytesPerInterval);
+
+	max_packet = usb_endpoint_maxp(endpt_desc);
+	max_burst = usb_endpoint_maxp_mult(endpt_desc);
+
+	/* A 0 in max burst means 1 transfer per ESIT */
+	return max_packet * max_burst;
+}
+
+/**
+ * Issue a configure endpoint command or evaluate context command
+ * and wait for it to finish.
+ *
+ * @param udev	pointer to the Device Data Structure
+ * @param ctx_change	flag to indicate the Context has changed or NOT
+ * @return 0 on success, -1 on failure
+ */
+static int xhci_configure_endpoints(struct usb_device *udev, bool ctx_change)
+{
+	struct xhci_container_ctx *in_ctx;
+	struct xhci_virt_device *virt_dev;
+	struct xhci_ctrl *ctrl = xhci_get_ctrl(udev);
+	union xhci_trb *event;
+
+	virt_dev = ctrl->devs[udev->slot_id];
+	in_ctx = virt_dev->in_ctx;
+
+	xhci_flush_cache((uintptr_t)in_ctx->bytes, in_ctx->size);
+	xhci_queue_command(ctrl, in_ctx->bytes, udev->slot_id, 0,
+			   ctx_change ? TRB_EVAL_CONTEXT : TRB_CONFIG_EP);
+	event = xhci_wait_for_event(ctrl, TRB_COMPLETION);
+	BUG_ON(TRB_TO_SLOT_ID(le32_to_cpu(event->event_cmd.flags))
+		!= udev->slot_id);
+
+	switch (GET_COMP_CODE(le32_to_cpu(event->event_cmd.status))) {
+	case COMP_SUCCESS:
+		dev_dbg(&udev->dev, "Successful %s command\n",
+			ctx_change ? "Evaluate Context" : "Configure Endpoint");
+		break;
+	default:
+		dev_err(&udev->dev, "%s command returned completion code %d.\n",
+			ctx_change ? "Evaluate Context" : "Configure Endpoint",
+			GET_COMP_CODE(le32_to_cpu(event->event_cmd.status)));
+		return -EINVAL;
+	}
+
+	xhci_acknowledge_event(ctrl);
+
+	return 0;
+}
+
+/**
+ * Configure the endpoint, programming the device contexts.
+ *
+ * @param udev	pointer to the USB device structure
+ * @return returns the status of the xhci_configure_endpoints
+ */
+static int xhci_set_configuration(struct usb_device *udev)
+{
+	struct xhci_container_ctx *in_ctx;
+	struct xhci_container_ctx *out_ctx;
+	struct xhci_input_control_ctx *ctrl_ctx;
+	struct xhci_slot_ctx *slot_ctx;
+	struct xhci_ep_ctx *ep_ctx[MAX_EP_CTX_NUM];
+	int cur_ep;
+	int max_ep_flag = 0;
+	int ep_index;
+	unsigned int dir;
+	unsigned int ep_type;
+	struct xhci_ctrl *ctrl = xhci_get_ctrl(udev);
+	int num_of_ep;
+	int ep_flag = 0;
+	u64 trb_64 = 0;
+	int slot_id = udev->slot_id;
+	struct xhci_virt_device *virt_dev = ctrl->devs[slot_id];
+	struct usb_interface *ifdesc;
+	u32 max_esit_payload;
+	unsigned int interval;
+	unsigned int mult;
+	unsigned int max_burst;
+	unsigned int avg_trb_len;
+	unsigned int err_count = 0;
+
+	out_ctx = virt_dev->out_ctx;
+	in_ctx = virt_dev->in_ctx;
+
+	num_of_ep = udev->config.interface[0].no_of_ep;
+	ifdesc = &udev->config.interface[0];
+
+	ctrl_ctx = xhci_get_input_control_ctx(in_ctx);
+	/* Initialize the input context control */
+	ctrl_ctx->add_flags = cpu_to_le32(SLOT_FLAG);
+	ctrl_ctx->drop_flags = 0;
+
+	/* EP_FLAG gives values 1 & 4 for EP1OUT and EP2IN */
+	for (cur_ep = 0; cur_ep < num_of_ep; cur_ep++) {
+		ep_flag = xhci_get_ep_index(&ifdesc->ep_desc[cur_ep]);
+		ctrl_ctx->add_flags |= cpu_to_le32(1 << (ep_flag + 1));
+		if (max_ep_flag < ep_flag)
+			max_ep_flag = ep_flag;
+	}
+
+	xhci_inval_cache((uintptr_t)out_ctx->bytes, out_ctx->size);
+
+	/* slot context */
+	xhci_slot_copy(ctrl, in_ctx, out_ctx);
+	slot_ctx = xhci_get_slot_ctx(ctrl, in_ctx);
+	slot_ctx->dev_info &= ~(cpu_to_le32(LAST_CTX_MASK));
+	slot_ctx->dev_info |= cpu_to_le32(LAST_CTX(max_ep_flag + 1) | 0);
+
+	xhci_endpoint_copy(ctrl, in_ctx, out_ctx, 0);
+
+	/* filling up ep contexts */
+	for (cur_ep = 0; cur_ep < num_of_ep; cur_ep++) {
+		struct usb_endpoint_descriptor *endpt_desc = NULL;
+		struct usb_ss_ep_comp_descriptor *ss_ep_comp_desc = NULL;
+
+		endpt_desc = &ifdesc->ep_desc[cur_ep];
+		ss_ep_comp_desc = &ifdesc->ss_ep_comp_desc[cur_ep];
+		trb_64 = 0;
+
+		/*
+		 * Get values to fill the endpoint context, mostly from ep
+		 * descriptor. The average TRB buffer lengt for bulk endpoints
+		 * is unclear as we have no clue on scatter gather list entry
+		 * size. For Isoc and Int, set it to max available.
+		 * See xHCI 1.1 spec 4.14.1.1 for details.
+		 */
+		max_esit_payload = xhci_get_max_esit_payload(udev, endpt_desc,
+							     ss_ep_comp_desc);
+		interval = xhci_get_endpoint_interval(udev, endpt_desc);
+		mult = xhci_get_endpoint_mult(udev, endpt_desc,
+					      ss_ep_comp_desc);
+		max_burst = xhci_get_endpoint_max_burst(udev, endpt_desc,
+							ss_ep_comp_desc);
+		avg_trb_len = max_esit_payload;
+
+		ep_index = xhci_get_ep_index(endpt_desc);
+		ep_ctx[ep_index] = xhci_get_ep_ctx(ctrl, in_ctx, ep_index);
+
+		/* Allocate the ep rings */
+		virt_dev->eps[ep_index].ring = xhci_ring_alloc(ctrl, 1, true);
+		if (!virt_dev->eps[ep_index].ring)
+			return -ENOMEM;
+
+		/*NOTE: ep_desc[0] actually represents EP1 and so on */
+		dir = (((endpt_desc->bEndpointAddress) & (0x80)) >> 7);
+		ep_type = (((endpt_desc->bmAttributes) & (0x3)) | (dir << 2));
+
+		ep_ctx[ep_index]->ep_info =
+			cpu_to_le32(EP_MAX_ESIT_PAYLOAD_HI(max_esit_payload) |
+			EP_INTERVAL(interval) | EP_MULT(mult));
+
+		ep_ctx[ep_index]->ep_info2 =
+			cpu_to_le32(ep_type << EP_TYPE_SHIFT);
+		ep_ctx[ep_index]->ep_info2 |=
+			cpu_to_le32(MAX_PACKET
+			(get_unaligned(&endpt_desc->wMaxPacketSize)));
+
+		/* Allow 3 retries for everything but isoc, set CErr = 3 */
+		if (!usb_endpoint_xfer_isoc(endpt_desc))
+			err_count = 3;
+		ep_ctx[ep_index]->ep_info2 |=
+			cpu_to_le32(MAX_BURST(max_burst) |
+			ERROR_COUNT(err_count));
+
+		trb_64 = (uintptr_t)
+				virt_dev->eps[ep_index].ring->enqueue;
+		ep_ctx[ep_index]->deq = cpu_to_le64(trb_64 |
+				virt_dev->eps[ep_index].ring->cycle_state);
+
+		/*
+		 * xHCI spec 6.2.3:
+		 * 'Average TRB Length' should be 8 for control endpoints.
+		 */
+		if (usb_endpoint_xfer_control(endpt_desc))
+			avg_trb_len = 8;
+		ep_ctx[ep_index]->tx_info =
+			cpu_to_le32(EP_MAX_ESIT_PAYLOAD_LO(max_esit_payload) |
+			EP_AVG_TRB_LENGTH(avg_trb_len));
+	}
+
+	return xhci_configure_endpoints(udev, false);
+}
+
+/**
+ * Issue an Address Device command (which will issue a SetAddress request to
+ * the device).
+ *
+ * @param udev pointer to the Device Data Structure
+ * @return 0 if successful else error code on failure
+ */
+static int xhci_address_device(struct usb_device *udev, int root_portnr)
+{
+	int ret = 0;
+	struct xhci_ctrl *ctrl = xhci_get_ctrl(udev);
+	struct xhci_slot_ctx *slot_ctx;
+	struct xhci_input_control_ctx *ctrl_ctx;
+	struct xhci_virt_device *virt_dev;
+	int slot_id = udev->slot_id;
+	union xhci_trb *event;
+
+	virt_dev = ctrl->devs[slot_id];
+
+	/*
+	 * This is the first Set Address since device plug-in
+	 * so setting up the slot context.
+	 */
+	dev_dbg(&udev->dev, "Setting up addressable devices %p\n", ctrl->dcbaa);
+	xhci_setup_addressable_virt_dev(ctrl, udev, root_portnr);
+
+	ctrl_ctx = xhci_get_input_control_ctx(virt_dev->in_ctx);
+	ctrl_ctx->add_flags = cpu_to_le32(SLOT_FLAG | EP0_FLAG);
+	ctrl_ctx->drop_flags = 0;
+
+	xhci_queue_command(ctrl, (void *)ctrl_ctx, slot_id, 0, TRB_ADDR_DEV);
+	event = xhci_wait_for_event(ctrl, TRB_COMPLETION);
+	BUG_ON(TRB_TO_SLOT_ID(le32_to_cpu(event->event_cmd.flags)) != slot_id);
+
+	switch (GET_COMP_CODE(le32_to_cpu(event->event_cmd.status))) {
+	case COMP_CTX_STATE:
+	case COMP_EBADSLT:
+		dev_err(&udev->dev, "Setup ERROR: address device command for slot %d.\n",
+								slot_id);
+		ret = -EINVAL;
+		break;
+	case COMP_TX_ERR:
+		dev_err(&udev->dev, "Device not responding to set address.\n");
+		ret = -EPROTO;
+		break;
+	case COMP_DEV_ERR:
+		dev_err(&udev->dev, "ERROR: Incompatible device"
+					"for address device command.\n");
+		ret = -ENODEV;
+		break;
+	case COMP_SUCCESS:
+		dev_dbg(&udev->dev, "Successful Address Device command\n");
+		udev->status = 0;
+		break;
+	default:
+		dev_err(&udev->dev, "ERROR: unexpected command completion code 0x%x.\n",
+			GET_COMP_CODE(le32_to_cpu(event->event_cmd.status)));
+		ret = -EINVAL;
+		break;
+	}
+
+	xhci_acknowledge_event(ctrl);
+
+	if (ret < 0)
+		/*
+		 * TODO: Unsuccessful Address Device command shall leave the
+		 * slot in default state. So, issue Disable Slot command now.
+		 */
+		return ret;
+
+	xhci_inval_cache((uintptr_t)virt_dev->out_ctx->bytes,
+			 virt_dev->out_ctx->size);
+	slot_ctx = xhci_get_slot_ctx(ctrl, virt_dev->out_ctx);
+
+	dev_dbg(&udev->dev, "xHC internal address is: %d\n",
+		le32_to_cpu(slot_ctx->dev_state) & DEV_ADDR_MASK);
+
+	return 0;
+}
+
+/**
+ * Issue Enable slot command to the controller to allocate
+ * device slot and assign the slot id. It fails if the xHC
+ * ran out of device slots, the Enable Slot command timed out,
+ * or allocating memory failed.
+ *
+ * @param udev	pointer to the Device Data Structure
+ * @return Returns 0 on succes else return error code on failure
+ */
+static int _xhci_alloc_device(struct usb_device *udev)
+{
+	struct xhci_ctrl *ctrl = xhci_get_ctrl(udev);
+	union xhci_trb *event;
+	int ret;
+
+	/*
+	 * Root hub will be first device to be initailized.
+	 * If this device is root-hub, don't do any xHC related
+	 * stuff.
+	 */
+	if (ctrl->rootdev == 0) {
+		udev->speed = USB_SPEED_SUPER;
+		return 0;
+	}
+
+	xhci_queue_command(ctrl, NULL, 0, 0, TRB_ENABLE_SLOT);
+	event = xhci_wait_for_event(ctrl, TRB_COMPLETION);
+	BUG_ON(GET_COMP_CODE(le32_to_cpu(event->event_cmd.status))
+		!= COMP_SUCCESS);
+
+	udev->slot_id = TRB_TO_SLOT_ID(le32_to_cpu(event->event_cmd.flags));
+
+	xhci_acknowledge_event(ctrl);
+
+	ret = xhci_alloc_virt_device(ctrl, udev->slot_id);
+	if (ret < 0) {
+		/*
+		 * TODO: Unsuccessful Address Device command shall leave
+		 * the slot in default. So, issue Disable Slot command now.
+		 */
+		dev_err(ctrl->dev, "Could not allocate xHCI USB device data structures\n");
+		return ret;
+	}
+
+	return 0;
+}
+
+/*
+ * Full speed devices may have a max packet size greater than 8 bytes, but the
+ * USB core doesn't know that until it reads the first 8 bytes of the
+ * descriptor.  If the usb_device's max packet size changes after that point,
+ * we need to issue an evaluate context command and wait on it.
+ *
+ * @param udev	pointer to the Device Data Structure
+ * @return returns the status of the xhci_configure_endpoints
+ */
+int xhci_check_maxpacket(struct usb_device *udev)
+{
+	struct xhci_ctrl *ctrl = xhci_get_ctrl(udev);
+	unsigned int slot_id = udev->slot_id;
+	int ep_index = 0;	/* control endpoint */
+	struct xhci_container_ctx *in_ctx;
+	struct xhci_container_ctx *out_ctx;
+	struct xhci_input_control_ctx *ctrl_ctx;
+	struct xhci_ep_ctx *ep_ctx;
+	int max_packet_size;
+	int hw_max_packet_size;
+	int ret = 0;
+
+	out_ctx = ctrl->devs[slot_id]->out_ctx;
+	xhci_inval_cache((uintptr_t)out_ctx->bytes, out_ctx->size);
+
+	ep_ctx = xhci_get_ep_ctx(ctrl, out_ctx, ep_index);
+	hw_max_packet_size = MAX_PACKET_DECODED(le32_to_cpu(ep_ctx->ep_info2));
+	max_packet_size = udev->epmaxpacketin[0];
+	if (hw_max_packet_size != max_packet_size) {
+		dev_dbg(ctrl->dev, "Max Packet Size for ep 0 changed.\n");
+		dev_dbg(ctrl->dev, "Max packet size in usb_device = %d\n", max_packet_size);
+		dev_dbg(ctrl->dev, "Max packet size in xHCI HW = %d\n", hw_max_packet_size);
+		dev_dbg(ctrl->dev, "Issuing evaluate context command.\n");
+
+		/* Set up the modified control endpoint 0 */
+		xhci_endpoint_copy(ctrl, ctrl->devs[slot_id]->in_ctx,
+				ctrl->devs[slot_id]->out_ctx, ep_index);
+		in_ctx = ctrl->devs[slot_id]->in_ctx;
+		ep_ctx = xhci_get_ep_ctx(ctrl, in_ctx, ep_index);
+		ep_ctx->ep_info2 &= cpu_to_le32(~((0xffff & MAX_PACKET_MASK)
+						<< MAX_PACKET_SHIFT));
+		ep_ctx->ep_info2 |= cpu_to_le32(MAX_PACKET(max_packet_size));
+
+		/*
+		 * Set up the input context flags for the command
+		 * FIXME: This won't work if a non-default control endpoint
+		 * changes max packet sizes.
+		 */
+		ctrl_ctx = xhci_get_input_control_ctx(in_ctx);
+		ctrl_ctx->add_flags = cpu_to_le32(EP0_FLAG);
+		ctrl_ctx->drop_flags = 0;
+
+		ret = xhci_configure_endpoints(udev, true);
+	}
+	return ret;
+}
+
+/**
+ * Clears the Change bits of the Port Status Register
+ *
+ * @param wValue	request value
+ * @param wIndex	request index
+ * @param addr		address of posrt status register
+ * @param port_status	state of port status register
+ * @return none
+ */
+static void xhci_clear_port_change_bit(struct usb_device *udev, u16 wValue,
+		u16 wIndex, volatile uint32_t *addr, u32 port_status)
+{
+	char *port_change_bit;
+	u32 status;
+
+	switch (wValue) {
+	case USB_PORT_FEAT_C_RESET:
+		status = PORT_RC;
+		port_change_bit = "reset";
+		break;
+	case USB_PORT_FEAT_C_CONNECTION:
+		status = PORT_CSC;
+		port_change_bit = "connect";
+		break;
+	case USB_PORT_FEAT_C_OVER_CURRENT:
+		status = PORT_OCC;
+		port_change_bit = "over-current";
+		break;
+	case USB_PORT_FEAT_C_ENABLE:
+		status = PORT_PEC;
+		port_change_bit = "enable/disable";
+		break;
+	case USB_PORT_FEAT_C_SUSPEND:
+		status = PORT_PLC;
+		port_change_bit = "suspend/resume";
+		break;
+	default:
+		/* Should never happen */
+		return;
+	}
+
+	/* Change bits are all write 1 to clear */
+	xhci_writel(addr, port_status | status);
+
+	port_status = xhci_readl(addr);
+	dev_dbg(&udev->dev, "clear port %s change, actual port %d status  = 0x%x\n",
+			port_change_bit, wIndex, port_status);
+}
+
+/**
+ * Save Read Only (RO) bits and save read/write bits where
+ * writing a 0 clears the bit and writing a 1 sets the bit (RWS).
+ * For all other types (RW1S, RW1CS, RW, and RZ), writing a '0' has no effect.
+ *
+ * @param state	state of the Port Status and Control Regsiter
+ * @return a value that would result in the port being in the
+ *	   same state, if the value was written to the port
+ *	   status control register.
+ */
+static u32 xhci_port_state_to_neutral(u32 state)
+{
+	/* Save read-only status and port state */
+	return (state & XHCI_PORT_RO) | (state & XHCI_PORT_RWS);
+}
+
+/**
+ * Submits the Requests to the XHCI Host Controller
+ *
+ * @param udev pointer to the USB device structure
+ * @param pipe contains the DIR_IN or OUT , devnum
+ * @param buffer buffer to be read/written based on the request
+ * @return returns 0 if successful else -1 on failure
+ */
+static int xhci_submit_root(struct usb_device *udev, unsigned long pipe,
+			void *buffer, struct devrequest *req)
+{
+	uint8_t tmpbuf[4];
+	u16 typeReq;
+	void *srcptr = NULL;
+	int len, srclen;
+	uint32_t reg;
+	volatile uint32_t *status_reg;
+	struct xhci_ctrl *ctrl = xhci_get_ctrl(udev);
+	struct xhci_hccr *hccr = ctrl->hccr;
+	struct xhci_hcor *hcor = ctrl->hcor;
+	int max_ports = HCS_MAX_PORTS(xhci_readl(&hccr->cr_hcsparams1));
+
+	if ((req->requesttype & USB_RT_PORT) &&
+	    le16_to_cpu(req->index) > max_ports) {
+		dev_err(&udev->dev, "The request port(%d) exceeds maximum port number\n",
+		       le16_to_cpu(req->index) - 1);
+		return -EINVAL;
+	}
+
+	status_reg = (volatile uint32_t *)
+		     (&hcor->portregs[le16_to_cpu(req->index) - 1].or_portsc);
+	srclen = 0;
+
+	typeReq = req->request | req->requesttype << 8;
+
+	switch (typeReq) {
+	case DeviceRequest | USB_REQ_GET_DESCRIPTOR:
+		switch (le16_to_cpu(req->value) >> 8) {
+		case USB_DT_DEVICE:
+			dev_dbg(&udev->dev, "USB_DT_DEVICE request\n");
+			srcptr = &descriptor.device;
+			srclen = 0x12;
+			break;
+		case USB_DT_CONFIG:
+			dev_dbg(&udev->dev, "USB_DT_CONFIG config\n");
+			srcptr = &descriptor.config;
+			srclen = 0x19;
+			break;
+		case USB_DT_STRING:
+			dev_dbg(&udev->dev, "USB_DT_STRING config\n");
+			switch (le16_to_cpu(req->value) & 0xff) {
+			case 0:	/* Language */
+				srcptr = "\4\3\11\4";
+				srclen = 4;
+				break;
+			case 1:	/* Vendor String  */
+				srcptr = "\16\3U\0-\0B\0o\0o\0t\0";
+				srclen = 14;
+				break;
+			case 2:	/* Product Name */
+				srcptr = "\52\3X\0H\0C\0I\0 "
+					 "\0H\0o\0s\0t\0 "
+					 "\0C\0o\0n\0t\0r\0o\0l\0l\0e\0r\0";
+				srclen = 42;
+				break;
+			default:
+				dev_err(&udev->dev, "unknown value DT_STRING %x\n",
+					le16_to_cpu(req->value));
+				goto unknown;
+			}
+			break;
+		default:
+			dev_err(&udev->dev, "unknown value %x\n", le16_to_cpu(req->value));
+			goto unknown;
+		}
+		break;
+	case USB_REQ_GET_DESCRIPTOR | ((USB_DIR_IN | USB_RT_HUB) << 8):
+		switch (le16_to_cpu(req->value) >> 8) {
+		case USB_DT_HUB:
+		case USB_DT_SS_HUB:
+			dev_dbg(&udev->dev, "USB_DT_HUB config\n");
+			srcptr = &descriptor.hub;
+			srclen = 0x8;
+			break;
+		default:
+			dev_err(&udev->dev, "unknown value %x\n", le16_to_cpu(req->value));
+			goto unknown;
+		}
+		break;
+	case USB_REQ_SET_ADDRESS | (USB_RECIP_DEVICE << 8):
+		dev_dbg(&udev->dev, "USB_REQ_SET_ADDRESS\n");
+		ctrl->rootdev = le16_to_cpu(req->value);
+		break;
+	case DeviceOutRequest | USB_REQ_SET_CONFIGURATION:
+		/* Do nothing */
+		break;
+	case USB_REQ_GET_STATUS | ((USB_DIR_IN | USB_RT_HUB) << 8):
+		tmpbuf[0] = 1;	/* USB_STATUS_SELFPOWERED */
+		tmpbuf[1] = 0;
+		srcptr = tmpbuf;
+		srclen = 2;
+		break;
+	case USB_REQ_GET_STATUS | ((USB_RT_PORT | USB_DIR_IN) << 8):
+		memset(tmpbuf, 0, 4);
+		reg = xhci_readl(status_reg);
+		if (reg & PORT_CONNECT) {
+			tmpbuf[0] |= USB_PORT_STAT_CONNECTION;
+			switch (reg & DEV_SPEED_MASK) {
+			case XDEV_FS:
+				dev_dbg(&udev->dev, "SPEED = FULLSPEED\n");
+				break;
+			case XDEV_LS:
+				dev_dbg(&udev->dev, "SPEED = LOWSPEED\n");
+				tmpbuf[1] |= USB_PORT_STAT_LOW_SPEED >> 8;
+				break;
+			case XDEV_HS:
+				dev_dbg(&udev->dev, "SPEED = HIGHSPEED\n");
+				tmpbuf[1] |= USB_PORT_STAT_HIGH_SPEED >> 8;
+				break;
+			case XDEV_SS:
+				dev_dbg(&udev->dev, "SPEED = SUPERSPEED\n");
+				tmpbuf[1] |= USB_PORT_STAT_SUPER_SPEED >> 8;
+				break;
+			}
+		}
+		if (reg & PORT_PE)
+			tmpbuf[0] |= USB_PORT_STAT_ENABLE;
+		if ((reg & PORT_PLS_MASK) == XDEV_U3)
+			tmpbuf[0] |= USB_PORT_STAT_SUSPEND;
+		if (reg & PORT_OC)
+			tmpbuf[0] |= USB_PORT_STAT_OVERCURRENT;
+		if (reg & PORT_RESET)
+			tmpbuf[0] |= USB_PORT_STAT_RESET;
+		if (reg & PORT_POWER)
+			/*
+			 * XXX: This Port power bit (for USB 3.0 hub)
+			 * we are faking in USB 2.0 hub port status;
+			 * since there's a change in bit positions in
+			 * two:
+			 * USB 2.0 port status PP is at position[8]
+			 * USB 3.0 port status PP is at position[9]
+			 * So, we are still keeping it at position [8]
+			 */
+			tmpbuf[1] |= USB_PORT_STAT_POWER >> 8;
+		if (reg & PORT_CSC)
+			tmpbuf[2] |= USB_PORT_STAT_C_CONNECTION;
+		if (reg & PORT_PEC)
+			tmpbuf[2] |= USB_PORT_STAT_C_ENABLE;
+		if (reg & PORT_OCC)
+			tmpbuf[2] |= USB_PORT_STAT_C_OVERCURRENT;
+		if (reg & PORT_RC)
+			tmpbuf[2] |= USB_PORT_STAT_C_RESET;
+
+		srcptr = tmpbuf;
+		srclen = 4;
+		break;
+	case USB_REQ_SET_FEATURE | ((USB_DIR_OUT | USB_RT_PORT) << 8):
+		reg = xhci_readl(status_reg);
+		reg = xhci_port_state_to_neutral(reg);
+		switch (le16_to_cpu(req->value)) {
+		case USB_PORT_FEAT_ENABLE:
+			reg |= PORT_PE;
+			xhci_writel(status_reg, reg);
+			break;
+		case USB_PORT_FEAT_POWER:
+			reg |= PORT_POWER;
+			xhci_writel(status_reg, reg);
+			break;
+		case USB_PORT_FEAT_RESET:
+			reg |= PORT_RESET;
+			xhci_writel(status_reg, reg);
+			break;
+		default:
+			dev_err(&udev->dev, "unknown feature %x\n", le16_to_cpu(req->value));
+			goto unknown;
+		}
+		break;
+	case USB_REQ_CLEAR_FEATURE | ((USB_DIR_OUT | USB_RT_PORT) << 8):
+		reg = xhci_readl(status_reg);
+		reg = xhci_port_state_to_neutral(reg);
+		switch (le16_to_cpu(req->value)) {
+		case USB_PORT_FEAT_ENABLE:
+			reg &= ~PORT_PE;
+			break;
+		case USB_PORT_FEAT_POWER:
+			reg &= ~PORT_POWER;
+			break;
+		case USB_PORT_FEAT_C_RESET:
+		case USB_PORT_FEAT_C_CONNECTION:
+		case USB_PORT_FEAT_C_OVER_CURRENT:
+		case USB_PORT_FEAT_C_ENABLE:
+			xhci_clear_port_change_bit(udev, (le16_to_cpu(req->value)),
+							le16_to_cpu(req->index),
+							status_reg, reg);
+			break;
+		default:
+			dev_err(&udev->dev, "unknown feature %x\n", le16_to_cpu(req->value));
+			goto unknown;
+		}
+		xhci_writel(status_reg, reg);
+		break;
+	default:
+		dev_err(&udev->dev, "Unknown request\n");
+		goto unknown;
+	}
+
+	dev_dbg(&udev->dev, "scrlen = %d\n req->length = %d\n",
+		srclen, le16_to_cpu(req->length));
+
+	len = min(srclen, (int)le16_to_cpu(req->length));
+
+	if (srcptr != NULL && len > 0)
+		memcpy(buffer, srcptr, len);
+	else
+		dev_dbg(&udev->dev, "Len is 0\n");
+
+	udev->act_len = len;
+	udev->status = 0;
+
+	return 0;
+
+unknown:
+	udev->act_len = 0;
+	udev->status = USB_ST_STALLED;
+
+	return -ENODEV;
+}
+
+/**
+ * Submits the INT request to XHCI Host cotroller
+ *
+ * @param udev	pointer to the USB device
+ * @param pipe		contains the DIR_IN or OUT , devnum
+ * @param buffer	buffer to be read/written based on the request
+ * @param length	length of the buffer
+ * @param interval	interval of the interrupt
+ * @return 0
+ */
+static int _xhci_submit_int_msg(struct usb_device *udev, unsigned long pipe,
+				void *buffer, int length, int interval)
+{
+	if (usb_pipetype(pipe) != PIPE_INTERRUPT)
+		return -EINVAL;
+
+	/*
+	 * xHCI uses normal TRBs for both bulk and interrupt. When the
+	 * interrupt endpoint is to be serviced, the xHC will consume
+	 * (at most) one TD. A TD (comprised of sg list entries) can
+	 * take several service intervals to transmit.
+	 */
+	return xhci_bulk_tx(udev, pipe, length, buffer);
+}
+
+/**
+ * submit the BULK type of request to the USB Device
+ *
+ * @param udev	pointer to the USB device
+ * @param pipe		contains the DIR_IN or OUT , devnum
+ * @param buffer	buffer to be read/written based on the request
+ * @param length	length of the buffer
+ * @return returns 0 if successful else -1 on failure
+ */
+static int _xhci_submit_bulk_msg(struct usb_device *udev, unsigned long pipe,
+				 void *buffer, int length, int timeout_ms)
+{
+	if (usb_pipetype(pipe) != PIPE_BULK)
+		return -EINVAL;
+
+	return xhci_bulk_tx(udev, pipe, length, buffer);
+}
+
+/**
+ * submit the control type of request to the Root hub/Device based on the devnum
+ *
+ * @param udev	pointer to the USB device
+ * @param pipe		contains the DIR_IN or OUT , devnum
+ * @param buffer	buffer to be read/written based on the request
+ * @param length	length of the buffer
+ * @param setup		Request type
+ * @param root_portnr	Root port number that this device is on
+ * @return returns 0 if successful else -1 on failure
+ */
+static int _xhci_submit_control_msg(struct usb_device *udev, unsigned long pipe,
+				    void *buffer, int length,
+				    struct devrequest *setup, int root_portnr)
+{
+	struct xhci_ctrl *ctrl = xhci_get_ctrl(udev);
+	int ret = 0;
+
+	if (usb_pipetype(pipe) != PIPE_CONTROL)
+		return -EINVAL;
+
+	if (usb_pipedevice(pipe) == ctrl->rootdev)
+		return xhci_submit_root(udev, pipe, buffer, setup);
+
+	if (setup->request == USB_REQ_SET_ADDRESS &&
+	   (setup->requesttype & USB_TYPE_MASK) == USB_TYPE_STANDARD)
+		return xhci_address_device(udev, root_portnr);
+
+	if (setup->request == USB_REQ_SET_CONFIGURATION &&
+	   (setup->requesttype & USB_TYPE_MASK) == USB_TYPE_STANDARD) {
+		ret = xhci_set_configuration(udev);
+		if (ret) {
+			dev_err(&udev->dev, "Failed to configure xHCI endpoint\n");
+			return ret;
+		}
+	}
+
+	return xhci_ctrl_tx(udev, pipe, setup, length, buffer);
+}
+
+static int xhci_lowlevel_init(struct xhci_ctrl *ctrl)
+{
+	struct xhci_hccr *hccr;
+	struct xhci_hcor *hcor;
+	uint32_t val;
+	uint32_t val2;
+	uint32_t reg;
+
+	hccr = ctrl->hccr;
+	hcor = ctrl->hcor;
+	/*
+	 * Program the Number of Device Slots Enabled field in the CONFIG
+	 * register with the max value of slots the HC can handle.
+	 */
+	val = (xhci_readl(&hccr->cr_hcsparams1) & HCS_SLOTS_MASK);
+	val2 = xhci_readl(&hcor->or_config);
+	val |= (val2 & ~HCS_SLOTS_MASK);
+	xhci_writel(&hcor->or_config, val);
+
+	/* initializing xhci data structures */
+	if (xhci_mem_init(ctrl, hccr, hcor) < 0)
+		return -ENOMEM;
+
+	reg = xhci_readl(&hccr->cr_hcsparams1);
+	descriptor.hub.bNbrPorts = ((reg & HCS_MAX_PORTS_MASK) >>
+						HCS_MAX_PORTS_SHIFT);
+
+	/* Port Indicators */
+	reg = xhci_readl(&hccr->cr_hccparams);
+	if (HCS_INDICATOR(reg))
+		put_unaligned(get_unaligned(&descriptor.hub.wHubCharacteristics)
+				| 0x80, &descriptor.hub.wHubCharacteristics);
+
+	/* Port Power Control */
+	if (HCC_PPC(reg))
+		put_unaligned(get_unaligned(&descriptor.hub.wHubCharacteristics)
+				| 0x01, &descriptor.hub.wHubCharacteristics);
+
+	if (xhci_start(ctrl)) {
+		xhci_reset(ctrl);
+		return -ENODEV;
+	}
+
+	/* Zero'ing IRQ control register and IRQ pending register */
+	xhci_writel(&ctrl->ir_set->irq_control, 0x0);
+	xhci_writel(&ctrl->ir_set->irq_pending, 0x0);
+
+	reg = HC_VERSION(xhci_readl(&hccr->cr_capbase));
+	dev_info(ctrl->dev, "USB XHCI %x.%02x\n", reg >> 8, reg & 0xff);
+
+	return 0;
+}
+
+static int xhci_lowlevel_stop(struct xhci_ctrl *ctrl)
+{
+	u32 temp;
+
+	xhci_reset(ctrl);
+
+	temp = xhci_readl(&ctrl->hcor->or_usbsts);
+	xhci_writel(&ctrl->hcor->or_usbsts, temp & ~STS_EINT);
+	temp = xhci_readl(&ctrl->ir_set->irq_pending);
+	xhci_writel(&ctrl->ir_set->irq_pending, ER_IRQ_DISABLE(temp));
+
+	return 0;
+}
+
+static int xhci_submit_control_msg(struct usb_device *udev,
+				   unsigned long pipe, void *buffer, int length,
+				   struct devrequest *setup, int timeout_ms)
+{
+	struct usb_device *dev;
+	int root_portnr = 0;
+
+	dev = udev;
+	while (!usb_hub_is_root_hub(dev)) {
+		root_portnr = dev->portnr;
+		dev = dev->parent;
+	}
+
+	return _xhci_submit_control_msg(udev, pipe, buffer, length, setup,
+					root_portnr);
+}
+
+static int xhci_submit_bulk_msg(struct usb_device *udev,
+				unsigned long pipe, void *buffer, int length,
+				int timeout_ms)
+{
+	return _xhci_submit_bulk_msg(udev, pipe, buffer, length, timeout_ms);
+}
+
+static int xhci_submit_int_msg(struct usb_device *udev,
+			       unsigned long pipe, void *buffer, int length,
+			       int interval)
+{
+	return _xhci_submit_int_msg(udev, pipe, buffer, length, interval);
+}
+
+static int xhci_alloc_device(struct usb_device *udev)
+{
+	return _xhci_alloc_device(udev);
+}
+
+static int xhci_update_hub_device(struct usb_device *udev)
+{
+	struct usb_host *host = udev->host;
+	struct xhci_ctrl *ctrl = to_xhci(host);
+	struct usb_hub_device *hub = udev->hub;
+	struct xhci_virt_device *virt_dev;
+	struct xhci_input_control_ctx *ctrl_ctx;
+	struct xhci_container_ctx *out_ctx;
+	struct xhci_container_ctx *in_ctx;
+	struct xhci_slot_ctx *slot_ctx;
+	int slot_id = udev->slot_id;
+	unsigned think_time;
+
+	/* Ignore root hubs */
+	if (usb_hub_is_root_hub(udev))
+		return 0;
+
+	virt_dev = ctrl->devs[slot_id];
+	BUG_ON(!virt_dev);
+
+	out_ctx = virt_dev->out_ctx;
+	in_ctx = virt_dev->in_ctx;
+
+	ctrl_ctx = xhci_get_input_control_ctx(in_ctx);
+	/* Initialize the input context control */
+	ctrl_ctx->add_flags = cpu_to_le32(SLOT_FLAG);
+	ctrl_ctx->drop_flags = 0;
+
+	xhci_inval_cache((uintptr_t)out_ctx->bytes, out_ctx->size);
+
+	/* slot context */
+	xhci_slot_copy(ctrl, in_ctx, out_ctx);
+	slot_ctx = xhci_get_slot_ctx(ctrl, in_ctx);
+
+	/* Update hub related fields */
+	slot_ctx->dev_info |= cpu_to_le32(DEV_HUB);
+	/*
+	 * refer to section 6.2.2: MTT should be 0 for full speed hub,
+	 * but it may be already set to 1 when setup an xHCI virtual
+	 * device, so clear it anyway.
+	 */
+	if (hub->tt.multi)
+		slot_ctx->dev_info |= cpu_to_le32(DEV_MTT);
+	else if (udev->speed == USB_SPEED_FULL)
+		slot_ctx->dev_info &= cpu_to_le32(~DEV_MTT);
+	slot_ctx->dev_info2 |= cpu_to_le32(XHCI_MAX_PORTS(udev->maxchild));
+	/*
+	 * Set TT think time - convert from ns to FS bit times.
+	 * Note 8 FS bit times == (8 bits / 12000000 bps) ~= 666ns
+	 *
+	 * 0 =  8 FS bit times, 1 = 16 FS bit times,
+	 * 2 = 24 FS bit times, 3 = 32 FS bit times.
+	 *
+	 * This field shall be 0 if the device is not a high-spped hub.
+	 */
+	think_time = hub->tt.think_time;
+	if (think_time != 0)
+		think_time = (think_time / 666) - 1;
+	if (udev->speed == USB_SPEED_HIGH)
+		slot_ctx->tt_info |= cpu_to_le32(TT_THINK_TIME(think_time));
+	slot_ctx->dev_state = 0;
+
+	return xhci_configure_endpoints(udev, false);
+}
+
+static __maybe_unused int xhci_get_max_xfer_size(size_t *size)
+{
+	/*
+	 * xHCD allocates one segment which includes 64 TRBs for each endpoint
+	 * and the last TRB in this segment is configured as a link TRB to form
+	 * a TRB ring. Each TRB can transfer up to 64K bytes, however data
+	 * buffers referenced by transfer TRBs shall not span 64KB boundaries.
+	 * Hence the maximum number of TRBs we can use in one transfer is 62.
+	 */
+	*size = (TRBS_PER_SEGMENT - 2) * TRB_MAX_BUFF_SIZE;
+
+	return 0;
+}
+
+int xhci_register(struct xhci_ctrl *ctrl)
+{
+	struct usb_host *host;
+	struct device_d *dev = ctrl->dev;
+	int ret;
+
+	dev_dbg(dev, "%s: hccr=%p, hcor=%p\n", __func__, ctrl->hccr, ctrl->hcor);
+
+	host = &ctrl->host;
+
+	/*
+	 * XHCI needs to issue a Address device command to setup
+	 * proper device context structures, before it can interact
+	 * with the device. So a get_descriptor will fail before any
+	 * of that is done for XHCI unlike EHCI.
+	 */
+	host->no_desc_before_addr = true;
+
+	host->hw_dev = dev;
+	host->submit_int_msg = xhci_submit_int_msg;
+	host->submit_control_msg = xhci_submit_control_msg;
+	host->submit_bulk_msg = xhci_submit_bulk_msg;
+	host->alloc_device = xhci_alloc_device;
+	host->update_hub_device = xhci_update_hub_device;
+
+	ret = xhci_reset(ctrl);
+	if (ret)
+		goto err;
+
+	ret = xhci_lowlevel_init(ctrl);
+	if (ret)
+		goto err;
+
+	usb_register_host(&ctrl->host);
+
+	return 0;
+err:
+	dev_dbg(dev, "%s: failed, ret=%d\n", __func__, ret);
+	return ret;
+}
+
+int xhci_deregister(struct xhci_ctrl *ctrl)
+{
+	xhci_lowlevel_stop(ctrl);
+	xhci_cleanup(ctrl);
+
+	return 0;
+}
+
+static int xhci_detect(struct device_d *dev)
+{
+	struct xhci_ctrl *ctrl = dev->priv;
+
+	return usb_host_detect(&ctrl->host);
+}
+
+/*
+ * xHCI platform driver
+ */
+
+static int xhci_probe(struct device_d *dev)
+{
+	struct resource *iores;
+	struct xhci_ctrl *ctrl;
+
+	iores = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(iores))
+		return PTR_ERR(iores);
+
+	ctrl = xzalloc(sizeof(*ctrl));
+
+	ctrl->dev = dev;
+	ctrl->hccr = IOMEM(iores->start);
+	ctrl->hcor = (struct xhci_hcor *)((uintptr_t)ctrl->hccr +
+		HC_LENGTH(xhci_readl(&(ctrl->hccr)->cr_capbase)));
+
+	dev->priv = ctrl;
+	dev->detect = xhci_detect;
+
+	return xhci_register(ctrl);
+}
+
+static void xhci_remove(struct device_d *dev)
+{
+	struct xhci_ctrl *ctrl = dev->priv;
+
+	xhci_deregister(ctrl);
+}
+
+static struct driver_d xhci_driver = {
+	.name  = "xHCI",
+	.probe = xhci_probe,
+	.remove = xhci_remove,
+};
+device_platform_driver(xhci_driver);
diff --git a/drivers/usb/host/xhci.h b/drivers/usb/host/xhci.h
new file mode 100644
index 0000000000..886cbef14c
--- /dev/null
+++ b/drivers/usb/host/xhci.h
@@ -0,0 +1,1295 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
+/*
+ * USB HOST XHCI Controller
+ *
+ * Based on xHCI host controller driver in linux-kernel
+ * by Sarah Sharp.
+ *
+ * Copyright (C) 2008 Intel Corp.
+ * Author: Sarah Sharp
+ *
+ * Copyright (C) 2013 Samsung Electronics Co.Ltd
+ * Authors: Vivek Gautam <gautam.vivek@samsung.com>
+ *	    Vikas Sajjan <vikas.sajjan@samsung.com>
+ */
+
+#ifndef HOST_XHCI_H_
+#define HOST_XHCI_H_
+
+#include <asm/types.h>
+#include <asm/cache.h>
+#include <io.h>
+#include <linux/list.h>
+
+#define MAX_EP_CTX_NUM		31
+#define XHCI_ALIGNMENT		64
+/* Generic timeout for XHCI events */
+#define XHCI_TIMEOUT		5000
+/* Max number of USB devices for any host controller - limit in section 6.1 */
+#define MAX_HC_SLOTS            256
+/* Section 5.3.3 - MaxPorts */
+#define MAX_HC_PORTS            255
+
+/* Up to 16 ms to halt an HC */
+#define XHCI_MAX_HALT_USEC	(16*1000)
+
+#define XHCI_MAX_RESET_USEC	(250*1000)
+
+/*
+ * These bits are Read Only (RO) and should be saved and written to the
+ * registers: 0, 3, 10:13, 30
+ * connect status, over-current status, port speed, and device removable.
+ * connect status and port speed are also sticky - meaning they're in
+ * the AUX well and they aren't changed by a hot, warm, or cold reset.
+ */
+#define XHCI_PORT_RO ((1 << 0) | (1 << 3) | (0xf << 10) | (1 << 30))
+/*
+ * These bits are RW; writing a 0 clears the bit, writing a 1 sets the bit:
+ * bits 5:8, 9, 14:15, 25:27
+ * link state, port power, port indicator state, "wake on" enable state
+ */
+#define XHCI_PORT_RWS ((0xf << 5) | (1 << 9) | (0x3 << 14) | (0x7 << 25))
+/*
+ * These bits are RW; writing a 1 sets the bit, writing a 0 has no effect:
+ * bit 4 (port reset)
+ */
+#define XHCI_PORT_RW1S ((1 << 4))
+/*
+ * These bits are RW; writing a 1 clears the bit, writing a 0 has no effect:
+ * bits 1, 17, 18, 19, 20, 21, 22, 23
+ * port enable/disable, and
+ * change bits: connect, PED,
+ * warm port reset changed (reserved zero for USB 2.0 ports),
+ * over-current, reset, link state, and L1 change
+ */
+#define XHCI_PORT_RW1CS ((1 << 1) | (0x7f << 17))
+/*
+ * Bit 16 is RW, and writing a '1' to it causes the link state control to be
+ * latched in
+ */
+#define XHCI_PORT_RW ((1 << 16))
+/*
+ * These bits are Reserved Zero (RsvdZ) and zero should be written to them:
+ * bits 2, 24, 28:31
+ */
+#define XHCI_PORT_RZ ((1 << 2) | (1 << 24) | (0xf << 28))
+
+/*
+ * XHCI Register Space.
+ */
+struct xhci_hccr {
+	uint32_t cr_capbase;
+	uint32_t cr_hcsparams1;
+	uint32_t cr_hcsparams2;
+	uint32_t cr_hcsparams3;
+	uint32_t cr_hccparams;
+	uint32_t cr_dboff;
+	uint32_t cr_rtsoff;
+
+/* hc_capbase bitmasks */
+/* bits 7:0 - how long is the Capabilities register */
+#define HC_LENGTH(p)		XHCI_HC_LENGTH(p)
+/* bits 31:16	*/
+#define HC_VERSION(p)		(((p) >> 16) & 0xffff)
+
+/* HCSPARAMS1 - hcs_params1 - bitmasks */
+/* bits 0:7, Max Device Slots */
+#define HCS_MAX_SLOTS(p)	(((p) >> 0) & 0xff)
+#define HCS_SLOTS_MASK		0xff
+/* bits 8:18, Max Interrupters */
+#define HCS_MAX_INTRS(p)	(((p) >> 8) & 0x7ff)
+/* bits 24:31, Max Ports - max value is 0x7F = 127 ports */
+#define HCS_MAX_PORTS_SHIFT	24
+#define HCS_MAX_PORTS_MASK	(0xff << HCS_MAX_PORTS_SHIFT)
+#define HCS_MAX_PORTS(p)	(((p) >> 24) & 0xff)
+
+/* HCSPARAMS2 - hcs_params2 - bitmasks */
+/* bits 0:3, frames or uframes that SW needs to queue transactions
+ * ahead of the HW to meet periodic deadlines */
+#define HCS_IST(p)		(((p) >> 0) & 0xf)
+/* bits 4:7, max number of Event Ring segments */
+#define HCS_ERST_MAX(p)		(((p) >> 4) & 0xf)
+/* bits 21:25 Hi 5 bits of Scratchpad buffers SW must allocate for the HW */
+/* bit 26 Scratchpad restore - for save/restore HW state - not used yet */
+/* bits 27:31 Lo 5 bits of Scratchpad buffers SW must allocate for the HW */
+#define HCS_MAX_SCRATCHPAD(p)	((((p) >> 16) & 0x3e0) | (((p) >> 27) & 0x1f))
+
+/* HCSPARAMS3 - hcs_params3 - bitmasks */
+/* bits 0:7, Max U1 to U0 latency for the roothub ports */
+#define HCS_U1_LATENCY(p)	(((p) >> 0) & 0xff)
+/* bits 16:31, Max U2 to U0 latency for the roothub ports */
+#define HCS_U2_LATENCY(p)	(((p) >> 16) & 0xffff)
+
+/* HCCPARAMS - hcc_params - bitmasks */
+/* true: HC can use 64-bit address pointers */
+#define HCC_64BIT_ADDR(p)	((p) & (1 << 0))
+/* true: HC can do bandwidth negotiation */
+#define HCC_BANDWIDTH_NEG(p)	((p) & (1 << 1))
+/* true: HC uses 64-byte Device Context structures
+ * FIXME 64-byte context structures aren't supported yet.
+ */
+#define HCC_64BYTE_CONTEXT(p)	((p) & (1 << 2))
+/* true: HC has port power switches */
+#define HCC_PPC(p)		((p) & (1 << 3))
+/* true: HC has port indicators */
+#define HCS_INDICATOR(p)	((p) & (1 << 4))
+/* true: HC has Light HC Reset Capability */
+#define HCC_LIGHT_RESET(p)	((p) & (1 << 5))
+/* true: HC supports latency tolerance messaging */
+#define HCC_LTC(p)		((p) & (1 << 6))
+/* true: no secondary Stream ID Support */
+#define HCC_NSS(p)		((p) & (1 << 7))
+/* Max size for Primary Stream Arrays - 2^(n+1), where n is bits 12:15 */
+#define HCC_MAX_PSA(p)		(1 << ((((p) >> 12) & 0xf) + 1))
+/* Extended Capabilities pointer from PCI base - section 5.3.6 */
+#define HCC_EXT_CAPS(p)		XHCI_HCC_EXT_CAPS(p)
+
+/* db_off bitmask - bits 0:1 reserved */
+#define	DBOFF_MASK	(~0x3)
+
+/* run_regs_off bitmask - bits 0:4 reserved */
+#define	RTSOFF_MASK	(~0x1f)
+
+};
+
+struct xhci_hcor_port_regs {
+	volatile uint32_t or_portsc;
+	volatile uint32_t or_portpmsc;
+	volatile uint32_t or_portli;
+	volatile uint32_t reserved_3;
+};
+
+struct xhci_hcor {
+	volatile uint32_t or_usbcmd;
+	volatile uint32_t or_usbsts;
+	volatile uint32_t or_pagesize;
+	volatile uint32_t reserved_0[2];
+	volatile uint32_t or_dnctrl;
+	volatile uint64_t or_crcr;
+	volatile uint32_t reserved_1[4];
+	volatile uint64_t or_dcbaap;
+	volatile uint32_t or_config;
+	volatile uint32_t reserved_2[241];
+	struct xhci_hcor_port_regs portregs[MAX_HC_PORTS];
+};
+
+/* USBCMD - USB command - command bitmasks */
+/* start/stop HC execution - do not write unless HC is halted*/
+#define CMD_RUN		XHCI_CMD_RUN
+/* Reset HC - resets internal HC state machine and all registers (except
+ * PCI config regs).  HC does NOT drive a USB reset on the downstream ports.
+ * The xHCI driver must reinitialize the xHC after setting this bit.
+ */
+#define CMD_RESET	(1 << 1)
+/* Event Interrupt Enable - a '1' allows interrupts from the host controller */
+#define CMD_EIE		XHCI_CMD_EIE
+/* Host System Error Interrupt Enable - get out-of-band signal for HC errors */
+#define CMD_HSEIE	XHCI_CMD_HSEIE
+/* bits 4:6 are reserved (and should be preserved on writes). */
+/* light reset (port status stays unchanged) - reset completed when this is 0 */
+#define CMD_LRESET	(1 << 7)
+/* host controller save/restore state. */
+#define CMD_CSS		(1 << 8)
+#define CMD_CRS		(1 << 9)
+/* Enable Wrap Event - '1' means xHC generates an event when MFINDEX wraps. */
+#define CMD_EWE		XHCI_CMD_EWE
+/* MFINDEX power management - '1' means xHC can stop MFINDEX counter if all root
+ * hubs are in U3 (selective suspend), disconnect, disabled, or powered-off.
+ * '0' means the xHC can power it off if all ports are in the disconnect,
+ * disabled, or powered-off state.
+ */
+#define CMD_PM_INDEX	(1 << 11)
+/* bits 12:31 are reserved (and should be preserved on writes). */
+
+/* USBSTS - USB status - status bitmasks */
+/* HC not running - set to 1 when run/stop bit is cleared. */
+#define STS_HALT	XHCI_STS_HALT
+/* serious error, e.g. PCI parity error.  The HC will clear the run/stop bit. */
+#define STS_FATAL	(1 << 2)
+/* event interrupt - clear this prior to clearing any IP flags in IR set*/
+#define STS_EINT	(1 << 3)
+/* port change detect */
+#define STS_PORT	(1 << 4)
+/* bits 5:7 reserved and zeroed */
+/* save state status - '1' means xHC is saving state */
+#define STS_SAVE	(1 << 8)
+/* restore state status - '1' means xHC is restoring state */
+#define STS_RESTORE	(1 << 9)
+/* true: save or restore error */
+#define STS_SRE		(1 << 10)
+/* true: Controller Not Ready to accept doorbell or op reg writes after reset */
+#define STS_CNR		XHCI_STS_CNR
+/* true: internal Host Controller Error - SW needs to reset and reinitialize */
+#define STS_HCE		(1 << 12)
+/* bits 13:31 reserved and should be preserved */
+
+/*
+ * DNCTRL - Device Notification Control Register - dev_notification bitmasks
+ * Generate a device notification event when the HC sees a transaction with a
+ * notification type that matches a bit set in this bit field.
+ */
+#define	DEV_NOTE_MASK		(0xffff)
+#define ENABLE_DEV_NOTE(x)	(1 << (x))
+/* Most of the device notification types should only be used for debug.
+ * SW does need to pay attention to function wake notifications.
+ */
+#define	DEV_NOTE_FWAKE		ENABLE_DEV_NOTE(1)
+
+/* CRCR - Command Ring Control Register - cmd_ring bitmasks */
+/* bit 0 is the command ring cycle state */
+/* stop ring operation after completion of the currently executing command */
+#define CMD_RING_PAUSE		(1 << 1)
+/* stop ring immediately - abort the currently executing command */
+#define CMD_RING_ABORT		(1 << 2)
+/* true: command ring is running */
+#define CMD_RING_RUNNING	(1 << 3)
+/* bits 4:5 reserved and should be preserved */
+/* Command Ring pointer - bit mask for the lower 32 bits. */
+#define CMD_RING_RSVD_BITS	(0x3f)
+
+/* CONFIG - Configure Register - config_reg bitmasks */
+/* bits 0:7 - maximum number of device slots enabled (NumSlotsEn) */
+#define MAX_DEVS(p)	((p) & 0xff)
+/* bits 8:31 - reserved and should be preserved */
+
+/* PORTSC - Port Status and Control Register - port_status_base bitmasks */
+/* true: device connected */
+#define PORT_CONNECT	(1 << 0)
+/* true: port enabled */
+#define PORT_PE		(1 << 1)
+/* bit 2 reserved and zeroed */
+/* true: port has an over-current condition */
+#define PORT_OC		(1 << 3)
+/* true: port reset signaling asserted */
+#define PORT_RESET	(1 << 4)
+/* Port Link State - bits 5:8
+ * A read gives the current link PM state of the port,
+ * a write with Link State Write Strobe set sets the link state.
+ */
+#define PORT_PLS_MASK	(0xf << 5)
+#define XDEV_U0		(0x0 << 5)
+#define XDEV_U2		(0x2 << 5)
+#define XDEV_U3		(0x3 << 5)
+#define XDEV_RESUME	(0xf << 5)
+/* true: port has power (see HCC_PPC) */
+#define PORT_POWER	(1 << 9)
+/* bits 10:13 indicate device speed:
+ * 0 - undefined speed - port hasn't be initialized by a reset yet
+ * 1 - full speed
+ * 2 - low speed
+ * 3 - high speed
+ * 4 - super speed
+ * 5-15 reserved
+ */
+#define DEV_SPEED_MASK		(0xf << 10)
+#define	XDEV_FS			(0x1 << 10)
+#define	XDEV_LS			(0x2 << 10)
+#define	XDEV_HS			(0x3 << 10)
+#define	XDEV_SS			(0x4 << 10)
+#define DEV_UNDEFSPEED(p)	(((p) & DEV_SPEED_MASK) == (0x0<<10))
+#define DEV_FULLSPEED(p)	(((p) & DEV_SPEED_MASK) == XDEV_FS)
+#define DEV_LOWSPEED(p)		(((p) & DEV_SPEED_MASK) == XDEV_LS)
+#define DEV_HIGHSPEED(p)	(((p) & DEV_SPEED_MASK) == XDEV_HS)
+#define DEV_SUPERSPEED(p)	(((p) & DEV_SPEED_MASK) == XDEV_SS)
+/* Bits 20:23 in the Slot Context are the speed for the device */
+#define	SLOT_SPEED_FS		(XDEV_FS << 10)
+#define	SLOT_SPEED_LS		(XDEV_LS << 10)
+#define	SLOT_SPEED_HS		(XDEV_HS << 10)
+#define	SLOT_SPEED_SS		(XDEV_SS << 10)
+/* Port Indicator Control */
+#define PORT_LED_OFF	(0 << 14)
+#define PORT_LED_AMBER	(1 << 14)
+#define PORT_LED_GREEN	(2 << 14)
+#define PORT_LED_MASK	(3 << 14)
+/* Port Link State Write Strobe - set this when changing link state */
+#define PORT_LINK_STROBE	(1 << 16)
+/* true: connect status change */
+#define PORT_CSC	(1 << 17)
+/* true: port enable change */
+#define PORT_PEC	(1 << 18)
+/* true: warm reset for a USB 3.0 device is done.  A "hot" reset puts the port
+ * into an enabled state, and the device into the default state.  A "warm" reset
+ * also resets the link, forcing the device through the link training sequence.
+ * SW can also look at the Port Reset register to see when warm reset is done.
+ */
+#define PORT_WRC	(1 << 19)
+/* true: over-current change */
+#define PORT_OCC	(1 << 20)
+/* true: reset change - 1 to 0 transition of PORT_RESET */
+#define PORT_RC		(1 << 21)
+/* port link status change - set on some port link state transitions:
+ *  Transition				Reason
+ *  --------------------------------------------------------------------------
+ *  - U3 to Resume		Wakeup signaling from a device
+ *  - Resume to Recovery to U0	USB 3.0 device resume
+ *  - Resume to U0		USB 2.0 device resume
+ *  - U3 to Recovery to U0	Software resume of USB 3.0 device complete
+ *  - U3 to U0			Software resume of USB 2.0 device complete
+ *  - U2 to U0			L1 resume of USB 2.1 device complete
+ *  - U0 to U0 (???)		L1 entry rejection by USB 2.1 device
+ *  - U0 to disabled		L1 entry error with USB 2.1 device
+ *  - Any state to inactive	Error on USB 3.0 port
+ */
+#define PORT_PLC	(1 << 22)
+/* port configure error change - port failed to configure its link partner */
+#define PORT_CEC	(1 << 23)
+/* bit 24 reserved */
+/* wake on connect (enable) */
+#define PORT_WKCONN_E	(1 << 25)
+/* wake on disconnect (enable) */
+#define PORT_WKDISC_E	(1 << 26)
+/* wake on over-current (enable) */
+#define PORT_WKOC_E	(1 << 27)
+/* bits 28:29 reserved */
+/* true: device is removable - for USB 3.0 roothub emulation */
+#define PORT_DEV_REMOVE	(1 << 30)
+/* Initiate a warm port reset - complete when PORT_WRC is '1' */
+#define PORT_WR		(1 << 31)
+
+/* We mark duplicate entries with -1 */
+#define DUPLICATE_ENTRY ((u8)(-1))
+
+/* Port Power Management Status and Control - port_power_base bitmasks */
+/* Inactivity timer value for transitions into U1, in microseconds.
+ * Timeout can be up to 127us.  0xFF means an infinite timeout.
+ */
+#define PORT_U1_TIMEOUT(p)	((p) & 0xff)
+/* Inactivity timer value for transitions into U2 */
+#define PORT_U2_TIMEOUT(p)	(((p) & 0xff) << 8)
+/* Bits 24:31 for port testing */
+
+/* USB2 Protocol PORTSPMSC */
+#define	PORT_L1S_MASK		7
+#define	PORT_L1S_SUCCESS	1
+#define	PORT_RWE		(1 << 3)
+#define	PORT_HIRD(p)		(((p) & 0xf) << 4)
+#define	PORT_HIRD_MASK		(0xf << 4)
+#define	PORT_L1DS(p)		(((p) & 0xff) << 8)
+#define	PORT_HLE		(1 << 16)
+
+/**
+* struct xhci_intr_reg - Interrupt Register Set
+* @irq_pending:	IMAN - Interrupt Management Register.  Used to enable
+*			interrupts and check for pending interrupts.
+* @irq_control:	IMOD - Interrupt Moderation Register.
+*			Used to throttle interrupts.
+* @erst_size:		Number of segments in the
+			Event Ring Segment Table (ERST).
+* @erst_base:		ERST base address.
+* @erst_dequeue:	Event ring dequeue pointer.
+*
+* Each interrupter (defined by a MSI-X vector) has an event ring and an Event
+* Ring Segment Table (ERST) associated with it.
+* The event ring is comprised of  multiple segments of the same size.
+* The HC places events on the ring and  "updates the Cycle bit in the TRBs to
+* indicate to software the current  position of the Enqueue Pointer."
+* The HCD (Linux) processes those events and  updates the dequeue pointer.
+*/
+struct xhci_intr_reg {
+	volatile __le32	irq_pending;
+	volatile __le32	irq_control;
+	volatile __le32	erst_size;
+	volatile __le32	rsvd;
+	volatile __le64	erst_base;
+	volatile __le64	erst_dequeue;
+};
+
+/* irq_pending bitmasks */
+#define	ER_IRQ_PENDING(p)	((p) & 0x1)
+/* bits 2:31 need to be preserved */
+/* THIS IS BUGGY - FIXME - IP IS WRITE 1 TO CLEAR */
+#define	ER_IRQ_CLEAR(p)		((p) & 0xfffffffe)
+#define	ER_IRQ_ENABLE(p)	((ER_IRQ_CLEAR(p)) | 0x2)
+#define	ER_IRQ_DISABLE(p)	((ER_IRQ_CLEAR(p)) & ~(0x2))
+
+/* irq_control bitmasks */
+/* Minimum interval between interrupts (in 250ns intervals).  The interval
+ * between interrupts will be longer if there are no events on the event ring.
+ * Default is 4000 (1 ms).
+ */
+#define ER_IRQ_INTERVAL_MASK	(0xffff)
+/* Counter used to count down the time to the next interrupt - HW use only */
+#define ER_IRQ_COUNTER_MASK	(0xffff << 16)
+
+/* erst_size bitmasks */
+/* Preserve bits 16:31 of erst_size */
+#define	ERST_SIZE_MASK		(0xffff << 16)
+
+/* erst_dequeue bitmasks */
+/* Dequeue ERST Segment Index (DESI) - Segment number (or alias)
+ * where the current dequeue pointer lies.  This is an optional HW hint.
+ */
+#define ERST_DESI_MASK		(0x7)
+/* Event Handler Busy (EHB) - is the event ring scheduled to be serviced by
+ * a work queue (or delayed service routine)?
+ */
+#define ERST_EHB		(1 << 3)
+#define ERST_PTR_MASK		(0xf)
+
+/**
+ * struct xhci_run_regs
+ * @microframe_index:	MFINDEX - current microframe number
+ *
+ * Section 5.5 Host Controller Runtime Registers:
+ * "Software should read and write these registers using only Dword (32 bit)
+ * or larger accesses"
+ */
+struct xhci_run_regs {
+	__le32			microframe_index;
+	__le32			rsvd[7];
+	struct xhci_intr_reg	ir_set[128];
+};
+
+/**
+ * struct doorbell_array
+ *
+ * Bits  0 -  7: Endpoint target
+ * Bits  8 - 15: RsvdZ
+ * Bits 16 - 31: Stream ID
+ *
+ * Section 5.6
+ */
+struct xhci_doorbell_array {
+	volatile __le32	doorbell[256];
+};
+
+#define DB_VALUE(ep, stream)	((((ep) + 1) & 0xff) | ((stream) << 16))
+#define DB_VALUE_HOST		0x00000000
+
+/**
+ * struct xhci_protocol_caps
+ * @revision:		major revision, minor revision, capability ID,
+ *			and next capability pointer.
+ * @name_string:	Four ASCII characters to say which spec this xHC
+ *			follows, typically "USB ".
+ * @port_info:		Port offset, count, and protocol-defined information.
+ */
+struct xhci_protocol_caps {
+	u32	revision;
+	u32	name_string;
+	u32	port_info;
+};
+
+#define	XHCI_EXT_PORT_MAJOR(x)	(((x) >> 24) & 0xff)
+#define	XHCI_EXT_PORT_OFF(x)	((x) & 0xff)
+#define	XHCI_EXT_PORT_COUNT(x)	(((x) >> 8) & 0xff)
+
+/**
+ * struct xhci_container_ctx
+ * @type: Type of context.  Used to calculated offsets to contained contexts.
+ * @size: Size of the context data
+ * @bytes: The raw context data given to HW
+ *
+ * Represents either a Device or Input context.  Holds a pointer to the raw
+ * memory used for the context (bytes).
+ */
+struct xhci_container_ctx {
+	unsigned type;
+#define XHCI_CTX_TYPE_DEVICE  0x1
+#define XHCI_CTX_TYPE_INPUT   0x2
+
+	int size;
+	u8 *bytes;
+};
+
+/**
+ * struct xhci_slot_ctx
+ * @dev_info:	Route string, device speed, hub info, and last valid endpoint
+ * @dev_info2:	Max exit latency for device number, root hub port number
+ * @tt_info:	tt_info is used to construct split transaction tokens
+ * @dev_state:	slot state and device address
+ *
+ * Slot Context - section 6.2.1.1.  This assumes the HC uses 32-byte context
+ * structures.  If the HC uses 64-byte contexts, there is an additional 32 bytes
+ * reserved at the end of the slot context for HC internal use.
+ */
+struct xhci_slot_ctx {
+	__le32	dev_info;
+	__le32	dev_info2;
+	__le32	tt_info;
+	__le32	dev_state;
+	/* offset 0x10 to 0x1f reserved for HC internal use */
+	__le32	reserved[4];
+};
+
+/* dev_info bitmasks */
+/* Route String - 0:19 */
+#define ROUTE_STRING_MASK	(0xfffff)
+/* Device speed - values defined by PORTSC Device Speed field - 20:23 */
+#define DEV_SPEED		(0xf << 20)
+/* bit 24 reserved */
+/* Is this LS/FS device connected through a HS hub? - bit 25 */
+#define DEV_MTT			(0x1 << 25)
+/* Set if the device is a hub - bit 26 */
+#define DEV_HUB			(0x1 << 26)
+/* Index of the last valid endpoint context in this device context - 27:31 */
+#define LAST_CTX_MASK		(0x1f << 27)
+#define LAST_CTX(p)		((p) << 27)
+#define LAST_CTX_TO_EP_NUM(p)	(((p) >> 27) - 1)
+#define SLOT_FLAG		(1 << 0)
+#define EP0_FLAG		(1 << 1)
+
+/* dev_info2 bitmasks */
+/* Max Exit Latency (ms) - worst case time to wake up all links in dev path */
+#define MAX_EXIT			(0xffff)
+/* Root hub port number that is needed to access the USB device */
+#define ROOT_HUB_PORT(p)		(((p) & 0xff) << 16)
+#define ROOT_HUB_PORT_MASK		(0xff)
+#define ROOT_HUB_PORT_SHIFT		(16)
+#define DEVINFO_TO_ROOT_HUB_PORT(p)	(((p) >> 16) & 0xff)
+/* Maximum number of ports under a hub device */
+#define XHCI_MAX_PORTS(p)		(((p) & 0xff) << 24)
+
+/* tt_info bitmasks */
+/*
+ * TT Hub Slot ID - for low or full speed devices attached to a high-speed hub
+ * The Slot ID of the hub that isolates the high speed signaling from
+ * this low or full-speed device.  '0' if attached to root hub port.
+ */
+#define TT_SLOT(p)		(((p) & 0xff) << 0)
+/*
+ * The number of the downstream facing port of the high-speed hub
+ * '0' if the device is not low or full speed.
+ */
+#define TT_PORT(p)		(((p) & 0xff) << 8)
+#define TT_THINK_TIME(p)	(((p) & 0x3) << 16)
+
+/* dev_state bitmasks */
+/* USB device address - assigned by the HC */
+#define DEV_ADDR_MASK	(0xff)
+/* bits 8:26 reserved */
+/* Slot state */
+#define SLOT_STATE		(0x1f << 27)
+#define GET_SLOT_STATE(p)	(((p) & (0x1f << 27)) >> 27)
+
+#define SLOT_STATE_DISABLED	0
+#define SLOT_STATE_ENABLED	SLOT_STATE_DISABLED
+#define SLOT_STATE_DEFAULT	1
+#define SLOT_STATE_ADDRESSED	2
+#define SLOT_STATE_CONFIGURED	3
+
+/**
+ * struct xhci_ep_ctx
+ * @ep_info:	endpoint state, streams, mult, and interval information.
+ * @ep_info2:	information on endpoint type, max packet size, max burst size,
+ *		error count, and whether the HC will force an event for all
+ *		transactions.
+ * @deq:	64-bit ring dequeue pointer address.  If the endpoint only
+ *		defines one stream, this points to the endpoint transfer ring.
+ *		Otherwise, it points to a stream context array, which has a
+ *		ring pointer for each flow.
+ * @tx_info:
+ *		Average TRB lengths for the endpoint ring and
+ *		max payload within an Endpoint Service Interval Time (ESIT).
+ *
+ * Endpoint Context - section 6.2.1.2.This assumes the HC uses 32-byte context
+ * structures.If the HC uses 64-byte contexts, there is an additional 32 bytes
+ * reserved at the end of the endpoint context for HC internal use.
+ */
+struct xhci_ep_ctx {
+	__le32	ep_info;
+	__le32	ep_info2;
+	__le64	deq;
+	__le32	tx_info;
+	/* offset 0x14 - 0x1f reserved for HC internal use */
+	__le32	reserved[3];
+};
+
+/* ep_info bitmasks */
+/*
+ * Endpoint State - bits 0:2
+ * 0 - disabled
+ * 1 - running
+ * 2 - halted due to halt condition - ok to manipulate endpoint ring
+ * 3 - stopped
+ * 4 - TRB error
+ * 5-7 - reserved
+ */
+#define EP_STATE_MASK		(0xf)
+#define EP_STATE_DISABLED	0
+#define EP_STATE_RUNNING	1
+#define EP_STATE_HALTED		2
+#define EP_STATE_STOPPED	3
+#define EP_STATE_ERROR		4
+/* Mult - Max number of burtst within an interval, in EP companion desc. */
+#define EP_MULT(p)		(((p) & 0x3) << 8)
+#define CTX_TO_EP_MULT(p)	(((p) >> 8) & 0x3)
+/* bits 10:14 are Max Primary Streams */
+/* bit 15 is Linear Stream Array */
+/* Interval - period between requests to an endpoint - 125u increments. */
+#define EP_INTERVAL(p)			(((p) & 0xff) << 16)
+#define EP_INTERVAL_TO_UFRAMES(p)	(1 << (((p) >> 16) & 0xff))
+#define CTX_TO_EP_INTERVAL(p)		(((p) >> 16) & 0xff)
+#define EP_MAXPSTREAMS_MASK		(0x1f << 10)
+#define EP_MAXPSTREAMS(p)		(((p) << 10) & EP_MAXPSTREAMS_MASK)
+/* Endpoint is set up with a Linear Stream Array (vs. Secondary Stream Array) */
+#define	EP_HAS_LSA			(1 << 15)
+
+/* ep_info2 bitmasks */
+/*
+ * Force Event - generate transfer events for all TRBs for this endpoint
+ * This will tell the HC to ignore the IOC and ISP flags (for debugging only).
+ */
+#define	FORCE_EVENT		(0x1)
+#define ERROR_COUNT(p)		(((p) & 0x3) << 1)
+#define ERROR_COUNT_SHIFT	(1)
+#define ERROR_COUNT_MASK	(0x3)
+#define CTX_TO_EP_TYPE(p)	(((p) >> 3) & 0x7)
+#define EP_TYPE(p)		((p) << 3)
+#define EP_TYPE_SHIFT		(3)
+#define ISOC_OUT_EP		1
+#define BULK_OUT_EP		2
+#define INT_OUT_EP		3
+#define CTRL_EP			4
+#define ISOC_IN_EP		5
+#define BULK_IN_EP		6
+#define INT_IN_EP		7
+/* bit 6 reserved */
+/* bit 7 is Host Initiate Disable - for disabling stream selection */
+#define MAX_BURST(p)		(((p)&0xff) << 8)
+#define MAX_BURST_MASK		(0xff)
+#define MAX_BURST_SHIFT		(8)
+#define CTX_TO_MAX_BURST(p)	(((p) >> 8) & 0xff)
+#define MAX_PACKET(p)		(((p)&0xffff) << 16)
+#define MAX_PACKET_MASK		(0xffff)
+#define MAX_PACKET_DECODED(p)	(((p) >> 16) & 0xffff)
+#define MAX_PACKET_SHIFT	(16)
+
+/* Get max packet size from ep desc. Bit 10..0 specify the max packet size.
+ * USB2.0 spec 9.6.6.
+ */
+#define GET_MAX_PACKET(p)	((p) & 0x7ff)
+
+/* tx_info bitmasks */
+#define EP_AVG_TRB_LENGTH(p)		((p) & 0xffff)
+#define EP_MAX_ESIT_PAYLOAD_LO(p)	(((p) & 0xffff) << 16)
+#define EP_MAX_ESIT_PAYLOAD_HI(p)	((((p) >> 16) & 0xff) << 24)
+#define CTX_TO_MAX_ESIT_PAYLOAD(p)	(((p) >> 16) & 0xffff)
+
+/* deq bitmasks */
+#define EP_CTX_CYCLE_MASK		(1 << 0)
+
+
+/**
+ * struct xhci_input_control_context
+ * Input control context; see section 6.2.5.
+ *
+ * @drop_context:	set the bit of the endpoint context you want to disable
+ * @add_context:	set the bit of the endpoint context you want to enable
+ */
+struct xhci_input_control_ctx {
+	volatile __le32	drop_flags;
+	volatile __le32	add_flags;
+	__le32	rsvd2[6];
+};
+
+
+/**
+ * struct xhci_device_context_array
+ * @dev_context_ptr	array of 64-bit DMA addresses for device contexts
+ */
+struct xhci_device_context_array {
+	/* 64-bit device addresses; we only write 32-bit addresses */
+	__le64			dev_context_ptrs[MAX_HC_SLOTS];
+};
+/* TODO: write function to set the 64-bit device DMA address */
+/*
+ * TODO: change this to be dynamically sized at HC mem init time since the HC
+ * might not be able to handle the maximum number of devices possible.
+ */
+
+
+struct xhci_transfer_event {
+	/* 64-bit buffer address, or immediate data */
+	__le64	buffer;
+	__le32	transfer_len;
+	/* This field is interpreted differently based on the type of TRB */
+	volatile __le32	flags;
+};
+
+/* Transfer event TRB length bit mask */
+/* bits 0:23 */
+#define EVENT_TRB_LEN(p)	((p) & 0xffffff)
+
+/** Transfer Event bit fields **/
+#define	TRB_TO_EP_ID(p)		(((p) >> 16) & 0x1f)
+
+/* Completion Code - only applicable for some types of TRBs */
+#define	COMP_CODE_MASK		(0xff << 24)
+#define	COMP_CODE_SHIFT		(24)
+#define GET_COMP_CODE(p)	(((p) & COMP_CODE_MASK) >> 24)
+
+typedef enum {
+	COMP_SUCCESS = 1,
+	/* Data Buffer Error */
+	COMP_DB_ERR, /* 2 */
+	/* Babble Detected Error */
+	COMP_BABBLE, /* 3 */
+	/* USB Transaction Error */
+	COMP_TX_ERR, /* 4 */
+	/* TRB Error - some TRB field is invalid */
+	COMP_TRB_ERR, /* 5 */
+	/* Stall Error - USB device is stalled */
+	COMP_STALL, /* 6 */
+	/* Resource Error - HC doesn't have memory for that device configuration */
+	COMP_ENOMEM, /* 7 */
+	/* Bandwidth Error - not enough room in schedule for this dev config */
+	COMP_BW_ERR, /* 8 */
+	/* No Slots Available Error - HC ran out of device slots */
+	COMP_ENOSLOTS, /* 9 */
+	/* Invalid Stream Type Error */
+	COMP_STREAM_ERR, /* 10 */
+	/* Slot Not Enabled Error - doorbell rung for disabled device slot */
+	COMP_EBADSLT, /* 11 */
+	/* Endpoint Not Enabled Error */
+	COMP_EBADEP,/* 12 */
+	/* Short Packet */
+	COMP_SHORT_TX, /* 13 */
+	/* Ring Underrun - doorbell rung for an empty isoc OUT ep ring */
+	COMP_UNDERRUN, /* 14 */
+	/* Ring Overrun - isoc IN ep ring is empty when ep is scheduled to RX */
+	COMP_OVERRUN, /* 15 */
+	/* Virtual Function Event Ring Full Error */
+	COMP_VF_FULL, /* 16 */
+	/* Parameter Error - Context parameter is invalid */
+	COMP_EINVAL, /* 17 */
+	/* Bandwidth Overrun Error - isoc ep exceeded its allocated bandwidth */
+	COMP_BW_OVER,/* 18 */
+	/* Context State Error - illegal context state transition requested */
+	COMP_CTX_STATE,/* 19 */
+	/* No Ping Response Error - HC didn't get PING_RESPONSE in time to TX */
+	COMP_PING_ERR,/* 20 */
+	/* Event Ring is full */
+	COMP_ER_FULL,/* 21 */
+	/* Incompatible Device Error */
+	COMP_DEV_ERR,/* 22 */
+	/* Missed Service Error - HC couldn't service an isoc ep within interval */
+	COMP_MISSED_INT,/* 23 */
+	/* Successfully stopped command ring */
+	COMP_CMD_STOP, /* 24 */
+	/* Successfully aborted current command and stopped command ring */
+	COMP_CMD_ABORT, /* 25 */
+	/* Stopped - transfer was terminated by a stop endpoint command */
+	COMP_STOP,/* 26 */
+	/* Same as COMP_EP_STOPPED, but the transferred length in the event
+	 * is invalid */
+	COMP_STOP_INVAL, /* 27*/
+	/* Control Abort Error - Debug Capability - control pipe aborted */
+	COMP_DBG_ABORT, /* 28 */
+	/* Max Exit Latency Too Large Error */
+	COMP_MEL_ERR,/* 29 */
+	/* TRB type 30 reserved */
+	/* Isoc Buffer Overrun - an isoc IN ep sent more data than could fit in TD */
+	COMP_BUFF_OVER = 31,
+	/* Event Lost Error - xHC has an "internal event overrun condition" */
+	COMP_ISSUES, /* 32 */
+	/* Undefined Error - reported when other error codes don't apply */
+	COMP_UNKNOWN, /* 33 */
+	/* Invalid Stream ID Error */
+	COMP_STRID_ERR, /* 34 */
+	/* Secondary Bandwidth Error - may be returned by a Configure Endpoint cmd */
+	COMP_2ND_BW_ERR, /* 35 */
+	/* Split Transaction Error */
+	COMP_SPLIT_ERR /* 36 */
+
+} xhci_comp_code;
+
+struct xhci_link_trb {
+	/* 64-bit segment pointer*/
+	volatile __le64 segment_ptr;
+	volatile __le32 intr_target;
+	volatile __le32 control;
+};
+
+/* control bitfields */
+#define LINK_TOGGLE (0x1 << 1)
+
+/* Command completion event TRB */
+struct xhci_event_cmd {
+	/* Pointer to command TRB, or the value passed by the event data trb */
+	volatile __le64 cmd_trb;
+	volatile __le32 status;
+	volatile __le32 flags;
+};
+
+/* flags bitmasks */
+/* bits 16:23 are the virtual function ID */
+/* bits 24:31 are the slot ID */
+#define	TRB_TO_SLOT_ID(p)		(((p) & (0xff << 24)) >> 24)
+#define	TRB_TO_SLOT_ID_SHIFT		(24)
+#define	TRB_TO_SLOT_ID_MASK		(0xff << TRB_TO_SLOT_ID_SHIFT)
+#define	SLOT_ID_FOR_TRB(p)		(((p) & 0xff) << 24)
+#define	SLOT_ID_FOR_TRB_MASK		(0xff)
+#define	SLOT_ID_FOR_TRB_SHIFT		(24)
+
+/* Stop Endpoint TRB - ep_index to endpoint ID for this TRB */
+#define TRB_TO_EP_INDEX(p)		((((p) & (0x1f << 16)) >> 16) - 1)
+#define	EP_ID_FOR_TRB(p)		((((p) + 1) & 0x1f) << 16)
+
+#define SUSPEND_PORT_FOR_TRB(p)		(((p) & 1) << 23)
+#define TRB_TO_SUSPEND_PORT(p)		(((p) & (1 << 23)) >> 23)
+#define LAST_EP_INDEX			30
+
+/* Set TR Dequeue Pointer command TRB fields */
+#define TRB_TO_STREAM_ID(p)		((((p) & (0xffff << 16)) >> 16))
+#define STREAM_ID_FOR_TRB(p)		((((p)) & 0xffff) << 16)
+
+
+/* Port Status Change Event TRB fields */
+/* Port ID - bits 31:24 */
+#define GET_PORT_ID(p)			(((p) & (0xff << 24)) >> 24)
+#define	PORT_ID_SHIFT			(24)
+#define	PORT_ID_MASK			(0xff << PORT_ID_SHIFT)
+
+/* Normal TRB fields */
+/* transfer_len bitmasks - bits 0:16 */
+#define	TRB_LEN(p)			((p) & 0x1ffff)
+#define	TRB_LEN_MASK			(0x1ffff)
+/* Interrupter Target - which MSI-X vector to target the completion event at */
+#define	TRB_INTR_TARGET_SHIFT		(22)
+#define	TRB_INTR_TARGET_MASK		(0x3ff)
+#define TRB_INTR_TARGET(p)		(((p) & 0x3ff) << 22)
+#define GET_INTR_TARGET(p)		(((p) >> 22) & 0x3ff)
+#define TRB_TBC(p)			(((p) & 0x3) << 7)
+#define TRB_TLBPC(p)			(((p) & 0xf) << 16)
+
+/* Cycle bit - indicates TRB ownership by HC or HCD */
+#define TRB_CYCLE		(1<<0)
+/*
+ * Force next event data TRB to be evaluated before task switch.
+ * Used to pass OS data back after a TD completes.
+ */
+#define TRB_ENT			(1<<1)
+/* Interrupt on short packet */
+#define TRB_ISP			(1<<2)
+/* Set PCIe no snoop attribute */
+#define TRB_NO_SNOOP		(1<<3)
+/* Chain multiple TRBs into a TD */
+#define TRB_CHAIN		(1<<4)
+/* Interrupt on completion */
+#define TRB_IOC			(1<<5)
+/* The buffer pointer contains immediate data */
+#define TRB_IDT			(1<<6)
+
+/* Block Event Interrupt */
+#define	TRB_BEI			(1<<9)
+
+/* Control transfer TRB specific fields */
+#define TRB_DIR_IN		(1<<16)
+#define	TRB_TX_TYPE(p)		((p) << 16)
+#define	TRB_TX_TYPE_SHIFT	(16)
+#define	TRB_DATA_OUT		2
+#define	TRB_DATA_IN		3
+
+/* Isochronous TRB specific fields */
+#define TRB_SIA			(1 << 31)
+
+struct xhci_generic_trb {
+	volatile __le32 field[4];
+};
+
+union xhci_trb {
+	struct xhci_link_trb		link;
+	struct xhci_transfer_event	trans_event;
+	struct xhci_event_cmd		event_cmd;
+	struct xhci_generic_trb		generic;
+};
+
+/* TRB bit mask */
+#define	TRB_TYPE_BITMASK	(0xfc00)
+#define TRB_TYPE(p)		((p) << 10)
+#define TRB_TYPE_SHIFT		(10)
+#define TRB_FIELD_TO_TYPE(p)	(((p) & TRB_TYPE_BITMASK) >> 10)
+
+/* TRB type IDs */
+typedef enum {
+	/* bulk, interrupt, isoc scatter/gather, and control data stage */
+	TRB_NORMAL = 1,
+	/* setup stage for control transfers */
+	TRB_SETUP, /* 2 */
+	/* data stage for control transfers */
+	TRB_DATA, /* 3 */
+	/* status stage for control transfers */
+	TRB_STATUS, /* 4 */
+	/* isoc transfers */
+	TRB_ISOC, /* 5 */
+	/* TRB for linking ring segments */
+	TRB_LINK, /* 6 */
+	/* TRB for EVENT DATA */
+	TRB_EVENT_DATA, /* 7 */
+	/* Transfer Ring No-op (not for the command ring) */
+	TRB_TR_NOOP, /* 8 */
+	/* Command TRBs */
+	/* Enable Slot Command */
+	TRB_ENABLE_SLOT, /* 9 */
+	/* Disable Slot Command */
+	TRB_DISABLE_SLOT, /* 10 */
+	/* Address Device Command */
+	TRB_ADDR_DEV, /* 11 */
+	/* Configure Endpoint Command */
+	TRB_CONFIG_EP, /* 12 */
+	/* Evaluate Context Command */
+	TRB_EVAL_CONTEXT, /* 13 */
+	/* Reset Endpoint Command */
+	TRB_RESET_EP, /* 14 */
+	/* Stop Transfer Ring Command */
+	TRB_STOP_RING, /* 15 */
+	/* Set Transfer Ring Dequeue Pointer Command */
+	TRB_SET_DEQ, /* 16 */
+	/* Reset Device Command */
+	TRB_RESET_DEV, /* 17 */
+	/* Force Event Command (opt) */
+	TRB_FORCE_EVENT, /* 18 */
+	/* Negotiate Bandwidth Command (opt) */
+	TRB_NEG_BANDWIDTH, /* 19 */
+	/* Set Latency Tolerance Value Command (opt) */
+	TRB_SET_LT, /* 20 */
+	/* Get port bandwidth Command */
+	TRB_GET_BW, /* 21 */
+	/* Force Header Command - generate a transaction or link management packet */
+	TRB_FORCE_HEADER, /* 22 */
+	/* No-op Command - not for transfer rings */
+	TRB_CMD_NOOP, /* 23 */
+	/* TRB IDs 24-31 reserved */
+	/* Event TRBS */
+	/* Transfer Event */
+	TRB_TRANSFER = 32,
+	/* Command Completion Event */
+	TRB_COMPLETION, /* 33 */
+	/* Port Status Change Event */
+	TRB_PORT_STATUS, /* 34 */
+	/* Bandwidth Request Event (opt) */
+	TRB_BANDWIDTH_EVENT, /* 35 */
+	/* Doorbell Event (opt) */
+	TRB_DOORBELL, /* 36 */
+	/* Host Controller Event */
+	TRB_HC_EVENT, /* 37 */
+	/* Device Notification Event - device sent function wake notification */
+	TRB_DEV_NOTE, /* 38 */
+	/* MFINDEX Wrap Event - microframe counter wrapped */
+	TRB_MFINDEX_WRAP, /* 39 */
+	/* TRB IDs 40-47 reserved, 48-63 is vendor-defined */
+	/* Nec vendor-specific command completion event. */
+	TRB_NEC_CMD_COMP = 48, /* 48 */
+	/* Get NEC firmware revision. */
+	TRB_NEC_GET_FW, /* 49 */
+} trb_type;
+
+#define TRB_TYPE_LINK(x)	(((x) & TRB_TYPE_BITMASK) == TRB_TYPE(TRB_LINK))
+/* Above, but for __le32 types -- can avoid work by swapping constants: */
+#define TRB_TYPE_LINK_LE32(x)	(((x) & cpu_to_le32(TRB_TYPE_BITMASK)) == \
+				 cpu_to_le32(TRB_TYPE(TRB_LINK)))
+#define TRB_TYPE_NOOP_LE32(x)	(((x) & cpu_to_le32(TRB_TYPE_BITMASK)) == \
+				 cpu_to_le32(TRB_TYPE(TRB_TR_NOOP)))
+
+/*
+ * TRBS_PER_SEGMENT must be a multiple of 4,
+ * since the command ring is 64-byte aligned.
+ * It must also be greater than 16.
+ */
+#define TRBS_PER_SEGMENT	64
+/* Allow two commands + a link TRB, along with any reserved command TRBs */
+#define MAX_RSVD_CMD_TRBS	(TRBS_PER_SEGMENT - 3)
+#define SEGMENT_SIZE		(TRBS_PER_SEGMENT*16)
+/* SEGMENT_SHIFT should be log2(SEGMENT_SIZE).
+ * Change this if you change TRBS_PER_SEGMENT!
+ */
+#define SEGMENT_SHIFT		10
+/* TRB buffer pointers can't cross 64KB boundaries */
+#define TRB_MAX_BUFF_SHIFT	16
+#define TRB_MAX_BUFF_SIZE	(1 << TRB_MAX_BUFF_SHIFT)
+
+struct xhci_segment {
+	union xhci_trb		*trbs;
+	/* private to HCD */
+	struct xhci_segment	*next;
+};
+
+struct xhci_ring {
+	struct xhci_segment	*first_seg;
+	union  xhci_trb		*enqueue;
+	struct xhci_segment	*enq_seg;
+	union  xhci_trb		*dequeue;
+	struct xhci_segment	*deq_seg;
+	/*
+	 * Write the cycle state into the TRB cycle field to give ownership of
+	 * the TRB to the host controller (if we are the producer), or to check
+	 * if we own the TRB (if we are the consumer).  See section 4.9.1.
+	 */
+	volatile u32		cycle_state;
+	unsigned int		num_segs;
+};
+
+struct xhci_erst_entry {
+	/* 64-bit event ring segment address */
+	__le64	seg_addr;
+	__le32	seg_size;
+	/* Set to zero */
+	__le32	rsvd;
+};
+
+struct xhci_erst {
+	struct xhci_erst_entry	*entries;
+	unsigned int		num_entries;
+	/* Num entries the ERST can contain */
+	unsigned int		erst_size;
+};
+
+struct xhci_scratchpad {
+	u64 *sp_array;
+};
+
+/*
+ * Each segment table entry is 4*32bits long.  1K seems like an ok size:
+ * (1K bytes * 8bytes/bit) / (4*32 bits) = 64 segment entries in the table,
+ * meaning 64 ring segments.
+ * Initial allocated size of the ERST, in number of entries */
+#define	ERST_NUM_SEGS	1
+/* Initial number of event segment rings allocated */
+#define	ERST_ENTRIES	1
+/* Initial allocated size of the ERST, in number of entries */
+#define	ERST_SIZE	64
+/* Poll every 60 seconds */
+#define	POLL_TIMEOUT	60
+/* Stop endpoint command timeout (secs) for URB cancellation watchdog timer */
+#define XHCI_STOP_EP_CMD_TIMEOUT	5
+/* XXX: Make these module parameters */
+
+struct xhci_virt_ep {
+	struct xhci_ring		*ring;
+	unsigned int			ep_state;
+#define SET_DEQ_PENDING		(1 << 0)
+#define EP_HALTED		(1 << 1)	/* For stall handling */
+#define EP_HALT_PENDING		(1 << 2)	/* For URB cancellation */
+/* Transitioning the endpoint to using streams, don't enqueue URBs */
+#define EP_GETTING_STREAMS	(1 << 3)
+#define EP_HAS_STREAMS		(1 << 4)
+/* Transitioning the endpoint to not using streams, don't enqueue URBs */
+#define EP_GETTING_NO_STREAMS	(1 << 5)
+};
+
+#define CTX_SIZE(_hcc) (HCC_64BYTE_CONTEXT(_hcc) ? 64 : 32)
+
+struct xhci_virt_device {
+	struct usb_device		*udev;
+	/*
+	 * Commands to the hardware are passed an "input context" that
+	 * tells the hardware what to change in its data structures.
+	 * The hardware will return changes in an "output context" that
+	 * software must allocate for the hardware.  We need to keep
+	 * track of input and output contexts separately because
+	 * these commands might fail and we don't trust the hardware.
+	 */
+	struct xhci_container_ctx       *out_ctx;
+	/* Used for addressing devices and configuration changes */
+	struct xhci_container_ctx       *in_ctx;
+	/* Rings saved to ensure old alt settings can be re-instated */
+#define	XHCI_MAX_RINGS_CACHED	31
+	struct xhci_virt_ep		eps[31];
+};
+
+/* TODO: copied from ehci.h - can be refactored? */
+/* xHCI spec says all registers are little endian */
+static inline unsigned int xhci_readl(uint32_t volatile *regs)
+{
+	return readl(regs);
+}
+
+static inline void xhci_writel(uint32_t volatile *regs, const unsigned int val)
+{
+	writel(val, regs);
+}
+
+/*
+ * Registers should always be accessed with double word or quad word accesses.
+ * Some xHCI implementations may support 64-bit address pointers.  Registers
+ * with 64-bit address pointers should be written to with dword accesses by
+ * writing the low dword first (ptr[0]), then the high dword (ptr[1]) second.
+ * xHCI implementations that do not support 64-bit address pointers will ignore
+ * the high dword, and write order is irrelevant.
+ */
+static inline u64 xhci_readq(__le64 volatile *regs)
+{
+#if BITS_PER_LONG == 64
+	return readq(regs);
+#else
+	__u32 *ptr = (__u32 *)regs;
+	u64 val_lo = readl(ptr);
+	u64 val_hi = readl(ptr + 1);
+	return val_lo + (val_hi << 32);
+#endif
+}
+
+static inline void xhci_writeq(__le64 volatile *regs, const u64 val)
+{
+#if BITS_PER_LONG == 64
+	writeq(val, regs);
+#else
+	__u32 *ptr = (__u32 *)regs;
+	u32 val_lo = lower_32_bits(val);
+	/* FIXME */
+	u32 val_hi = upper_32_bits(val);
+	writel(val_lo, ptr);
+	writel(val_hi, ptr + 1);
+#endif
+}
+
+int xhci_hcd_init(int index, struct xhci_hccr **ret_hccr,
+					struct xhci_hcor **ret_hcor);
+void xhci_hcd_stop(int index);
+
+
+/*************************************************************
+	EXTENDED CAPABILITY DEFINITIONS
+*************************************************************/
+/* Up to 16 ms to halt an HC */
+#define XHCI_MAX_HALT_USEC	(16*1000)
+/* HC not running - set to 1 when run/stop bit is cleared. */
+#define XHCI_STS_HALT		(1 << 0)
+
+/* HCCPARAMS offset from PCI base address */
+#define XHCI_HCC_PARAMS_OFFSET	0x10
+/* HCCPARAMS contains the first extended capability pointer */
+#define XHCI_HCC_EXT_CAPS(p)	(((p)>>16)&0xffff)
+
+/* Command and Status registers offset from the Operational Registers address */
+#define XHCI_CMD_OFFSET		0x00
+#define XHCI_STS_OFFSET		0x04
+
+#define XHCI_MAX_EXT_CAPS		50
+
+/* Capability Register */
+/* bits 7:0 - how long is the Capabilities register */
+#define XHCI_HC_LENGTH(p)	(((p) >> 00) & 0x00ff)
+
+/* Extended capability register fields */
+#define XHCI_EXT_CAPS_ID(p)	(((p) >> 0) & 0xff)
+#define XHCI_EXT_CAPS_NEXT(p)	(((p) >> 8) & 0xff)
+#define	XHCI_EXT_CAPS_VAL(p)	((p) >> 16)
+/* Extended capability IDs - ID 0 reserved */
+#define XHCI_EXT_CAPS_LEGACY	1
+#define XHCI_EXT_CAPS_PROTOCOL	2
+#define XHCI_EXT_CAPS_PM	3
+#define XHCI_EXT_CAPS_VIRT	4
+#define XHCI_EXT_CAPS_ROUTE	5
+/* IDs 6-9 reserved */
+#define XHCI_EXT_CAPS_DEBUG	10
+/* USB Legacy Support Capability - section 7.1.1 */
+#define XHCI_HC_BIOS_OWNED	(1 << 16)
+#define XHCI_HC_OS_OWNED	(1 << 24)
+
+/* USB Legacy Support Capability - section 7.1.1 */
+/* Add this offset, plus the value of xECP in HCCPARAMS to the base address */
+#define XHCI_LEGACY_SUPPORT_OFFSET	(0x00)
+
+/* USB Legacy Support Control and Status Register  - section 7.1.2 */
+/* Add this offset, plus the value of xECP in HCCPARAMS to the base address */
+#define XHCI_LEGACY_CONTROL_OFFSET	(0x04)
+/* bits 1:2, 5:12, and 17:19 need to be preserved; bits 21:28 should be zero */
+#define	XHCI_LEGACY_DISABLE_SMI		((0x3 << 1) + (0xff << 5) + (0x7 << 17))
+
+/* USB 2.0 xHCI 0.96 L1C capability - section 7.2.2.1.3.2 */
+#define XHCI_L1C               (1 << 16)
+
+/* USB 2.0 xHCI 1.0 hardware LMP capability - section 7.2.2.1.3.2 */
+#define XHCI_HLC               (1 << 19)
+
+/* command register values to disable interrupts and halt the HC */
+/* start/stop HC execution - do not write unless HC is halted*/
+#define XHCI_CMD_RUN		(1 << 0)
+/* Event Interrupt Enable - get irq when EINT bit is set in USBSTS register */
+#define XHCI_CMD_EIE		(1 << 2)
+/* Host System Error Interrupt Enable - get irq when HSEIE bit set in USBSTS */
+#define XHCI_CMD_HSEIE		(1 << 3)
+/* Enable Wrap Event - '1' means xHC generates an event when MFINDEX wraps. */
+#define XHCI_CMD_EWE		(1 << 10)
+
+#define XHCI_IRQS		(XHCI_CMD_EIE | XHCI_CMD_HSEIE | XHCI_CMD_EWE)
+
+/* true: Controller Not Ready to accept doorbell or op reg writes after reset */
+#define XHCI_STS_CNR		(1 << 11)
+
+struct xhci_ctrl {
+	struct usb_host host;
+	struct device_d *dev;
+	struct xhci_hccr *hccr;	/* R/O registers, not need for volatile */
+	struct xhci_hcor *hcor;
+	struct xhci_doorbell_array *dba;
+	struct xhci_run_regs *run_regs;
+	struct xhci_device_context_array *dcbaa;
+	struct xhci_ring *event_ring;
+	struct xhci_ring *cmd_ring;
+	struct xhci_ring *transfer_ring;
+	struct xhci_segment *seg;
+	struct xhci_intr_reg *ir_set;
+	struct xhci_erst erst;
+	struct xhci_erst_entry entry[ERST_NUM_SEGS];
+	struct xhci_scratchpad *scratchpad;
+	struct xhci_virt_device *devs[MAX_HC_SLOTS];
+	void *bounce_buffer;
+	int rootdev;
+};
+
+static inline struct xhci_ctrl *to_xhci(struct usb_host *host)
+{
+	return container_of(host, struct xhci_ctrl, host);
+}
+
+unsigned long trb_addr(struct xhci_segment *seg, union xhci_trb *trb);
+struct xhci_input_control_ctx
+		*xhci_get_input_control_ctx(struct xhci_container_ctx *ctx);
+struct xhci_slot_ctx *xhci_get_slot_ctx(struct xhci_ctrl *ctrl,
+					struct xhci_container_ctx *ctx);
+struct xhci_ep_ctx *xhci_get_ep_ctx(struct xhci_ctrl *ctrl,
+				    struct xhci_container_ctx *ctx,
+				    unsigned int ep_index);
+void xhci_endpoint_copy(struct xhci_ctrl *ctrl,
+			struct xhci_container_ctx *in_ctx,
+			struct xhci_container_ctx *out_ctx,
+			unsigned int ep_index);
+void xhci_slot_copy(struct xhci_ctrl *ctrl,
+		    struct xhci_container_ctx *in_ctx,
+		    struct xhci_container_ctx *out_ctx);
+void xhci_setup_addressable_virt_dev(struct xhci_ctrl *ctrl,
+				     struct usb_device *udev, int hop_portnr);
+void xhci_queue_command(struct xhci_ctrl *ctrl, u8 *ptr,
+			u32 slot_id, u32 ep_index, trb_type cmd);
+void xhci_acknowledge_event(struct xhci_ctrl *ctrl);
+union xhci_trb *xhci_wait_for_event(struct xhci_ctrl *ctrl, trb_type expected);
+int xhci_bulk_tx(struct usb_device *udev, unsigned long pipe,
+		 int length, void *buffer);
+int xhci_ctrl_tx(struct usb_device *udev, unsigned long pipe,
+		 struct devrequest *req, int length, void *buffer);
+int xhci_check_maxpacket(struct usb_device *udev);
+void xhci_flush_cache(uintptr_t addr, u32 type_len);
+void xhci_inval_cache(uintptr_t addr, u32 type_len);
+void xhci_cleanup(struct xhci_ctrl *ctrl);
+struct xhci_ring *xhci_ring_alloc(struct xhci_ctrl *ctrl, unsigned int num_segs,
+				  bool link_trbs);
+int xhci_alloc_virt_device(struct xhci_ctrl *ctrl, unsigned int slot_id);
+int xhci_mem_init(struct xhci_ctrl *ctrl, struct xhci_hccr *hccr,
+		  struct xhci_hcor *hcor);
+
+/**
+ * xhci_deregister() - Unregister an XHCI controller
+ *
+ * @dev:	Controller device
+ * @return 0 if registered, -ve on error
+ */
+int xhci_deregister(struct xhci_ctrl *ctrl);
+
+/**
+ * xhci_register() - Register a new XHCI controller
+ *
+ * @dev:	Controller device
+ * @hccr:	Host controller control registers
+ * @hcor:	Not sure what this means
+ * @return 0 if registered, -ve on error
+ */
+int xhci_register(struct xhci_ctrl *ctrl);
+
+extern struct dm_usb_ops xhci_usb_ops;
+
+struct xhci_ctrl *xhci_get_ctrl(struct usb_device *udev);
+
+#endif /* HOST_XHCI_H_ */
diff --git a/include/usb/xhci.h b/include/usb/xhci.h
index 1a3138b132..b1ad0185b9 100644
--- a/include/usb/xhci.h
+++ b/include/usb/xhci.h
@@ -24,10 +24,4 @@
 #ifndef __XHCI_HCD_H
 #define __XHCI_HCD_H
 
-struct xhci_data {
-	void __iomem *regs;
-};
-
-int xhci_register(struct device_d *dev, struct xhci_data *data);
-
 #endif
-- 
2.26.0.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
