Delivery-date: Fri, 08 Nov 2024 14:16:24 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t9Oqd-006Kpo-0D
	for lore@lore.pengutronix.de;
	Fri, 08 Nov 2024 14:16:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t9OqY-000458-Gf
	for lore@pengutronix.de; Fri, 08 Nov 2024 14:16:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lytRvnJHN/Hwpa9SOLpWRk+p0x/Zgj7lf2/YyXN+19A=; b=JWN/47L6TfQylHK2f2Vi6VftfO
	m0Tw0/9WoM+Qas90k/NJH/LbYTFl7eFHA+y4W3zmeZ1jrdbztIium8ctQvq9DluWV/AgwpMOqq1Tg
	2mMkG0V6cSB/0i9inlY2DPSFc5u78xZ0mEbFStMFew+257PGkQSsEnJXzT7o4r5n+0w+NkJR61d5G
	qe1GAreb4dCsxO/riVoV0WwVKetSt4yswPr5fcqFcTyrJbHj7s7n9u86eHnCvkUlt91SceHAonkfw
	wu4Z9nFFkaxfor4OV8xLTgLgcJ3QxFztNkZEK+UME7knw16gSLY/sILz01BM4xlJ4L9ur5RDrrgPr
	iczaHOkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t9Opk-0000000Adx4-0rBG;
	Fri, 08 Nov 2024 13:15:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t9Opa-0000000Adq4-2a77
	for barebox@lists.infradead.org;
	Fri, 08 Nov 2024 13:15:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t9OpJ-0003XA-A8; Fri, 08 Nov 2024 14:15:01 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t9OpI-002cw2-2z;
	Fri, 08 Nov 2024 14:15:00 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t9OpI-00AFXY-2b;
	Fri, 08 Nov 2024 14:15:00 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 08 Nov 2024 14:15:01 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241108-network-k3-v1-3-ee71bff15eb7@pengutronix.de>
References: <20241108-network-k3-v1-0-ee71bff15eb7@pengutronix.de>
In-Reply-To: <20241108-network-k3-v1-0-ee71bff15eb7@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1731071700; l=42780;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=5oB69a9xTq3OXfo4vkDb3a+25l/9oJkEGmYRvjJd22Q=;
 b=CNoenAomJGf6xeqmGhweR82Xx67pIKlYpweDFxrsMOdt0LRx6lVN5QbQWJm6tzZnX7fHv6KFo
 q2WEWM4aN39CvTmpUHzTQ65u8VO7Y7wupB/0HGVpKsfUn2qhWp2Hopa
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241108_051519_255331_0EDBE305 
X-CRM114-Status: GOOD (  32.98  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/7] ARM: K3: add navss-ringacc driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

>From the commit message adding the ringacc driver to Linux:

> The Ring Accelerator (RINGACC or RA) provides hardware acceleration to
> enable straightforward passing of work between a producer and a consumer.
> There is one RINGACC module per NAVSS on TI AM65x SoCs.
>
> The RINGACC converts constant-address read and write accesses to equivalent
> read or write accesses to a circular data structure in memory. The RINGACC
> eliminates the need for each DMA controller which needs to access ring
> elements from having to know the current state of the ring (base address,
> current offset). The DMA controller performs a read or write access to a
> specific address range (which maps to the source interface on the RINGACC)
> and the RINGACC replaces the address for the transaction with a new address
> which corresponds to the head or tail element of the ring (head for reads,
> tail for writes). Since the RINGACC maintains the state, multiple DMA
> controllers or channels are allowed to coherently share the same rings as
> applicable. The RINGACC is able to place data which is destined towards
> software into cached memory directly.

This adds support for this driver based on the U-Boot driver from U-Boot
v2025.01-rc1.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/soc/Makefile              |    1 +
 drivers/soc/ti/Makefile           |    1 +
 drivers/soc/ti/k3-navss-ringacc.c | 1163 +++++++++++++++++++++++++++++++++++++
 include/soc/ti/k3-navss-ringacc.h |  252 ++++++++
 4 files changed, 1417 insertions(+)

diff --git a/drivers/soc/Makefile b/drivers/soc/Makefile
index 9bff737b78..5b6ebe53c3 100644
--- a/drivers/soc/Makefile
+++ b/drivers/soc/Makefile
@@ -5,3 +5,4 @@ obj-$(CONFIG_KVX)		+= kvx/
 obj-$(CONFIG_ARCH_ROCKCHIP)	+= rockchip/
 obj-$(CONFIG_CPU_SIFIVE)	+= sifive/
 obj-$(CONFIG_SOC_STARFIVE)	+= starfive/
+obj-$(CONFIG_ARCH_K3)		+= ti/
diff --git a/drivers/soc/ti/Makefile b/drivers/soc/ti/Makefile
new file mode 100644
index 0000000000..56f6653882
--- /dev/null
+++ b/drivers/soc/ti/Makefile
@@ -0,0 +1 @@
+obj-y += k3-navss-ringacc.o
diff --git a/drivers/soc/ti/k3-navss-ringacc.c b/drivers/soc/ti/k3-navss-ringacc.c
new file mode 100644
index 0000000000..d95b2a5d5d
--- /dev/null
+++ b/drivers/soc/ti/k3-navss-ringacc.c
@@ -0,0 +1,1163 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * TI K3 AM65x NAVSS Ring accelerator Manager (RA) subsystem driver
+ *
+ * Copyright (C) 2018 Texas Instruments Incorporated - https://www.ti.com
+ */
+
+#include <driver.h>
+#include <xfuncs.h>
+#include <soc/ti/k3-navss-ringacc.h>
+#include <soc/ti/ti_sci_protocol.h>
+#include <linux/device.h>
+
+static LIST_HEAD(k3_nav_ringacc_list);
+
+static	void ringacc_writel(u32 v, void __iomem *reg)
+{
+	writel(v, reg);
+}
+
+static	u32 ringacc_readl(void __iomem *reg)
+{
+	u32 v;
+
+	v = readl(reg);
+
+	return v;
+}
+
+#define KNAV_RINGACC_CFG_RING_SIZE_ELCNT_MASK		GENMASK(19, 0)
+#define K3_DMARING_RING_CFG_RING_SIZE_ELCNT_MASK		GENMASK(15, 0)
+
+/**
+ * struct k3_nav_ring_rt_regs -  The RA Control/Status Registers region
+ */
+struct k3_nav_ring_rt_regs {
+	u32	resv_16[4];
+	u32	db;		/* RT Ring N Doorbell Register */
+	u32	resv_4[1];
+	u32	occ;		/* RT Ring N Occupancy Register */
+	u32	indx;		/* RT Ring N Current Index Register */
+	u32	hwocc;		/* RT Ring N Hardware Occupancy Register */
+	u32	hwindx;		/* RT Ring N Current Index Register */
+};
+
+#define KNAV_RINGACC_RT_REGS_STEP	0x1000
+#define K3_DMARING_RING_RT_REGS_STEP			0x2000
+#define K3_DMARING_RING_RT_REGS_REVERSE_OFS		0x1000
+#define KNAV_RINGACC_RT_OCC_MASK		GENMASK(20, 0)
+#define K3_DMARING_RING_RT_OCC_TDOWN_COMPLETE		BIT(31)
+#define K3_DMARING_RING_RT_DB_ENTRY_MASK		GENMASK(7, 0)
+#define K3_DMARING_RING_RT_DB_TDOWN_ACK		BIT(31)
+
+/**
+ * struct k3_nav_ring_fifo_regs -  The Ring Accelerator Queues Registers region
+ */
+struct k3_nav_ring_fifo_regs {
+	u32	head_data[128];		/* Ring Head Entry Data Registers */
+	u32	tail_data[128];		/* Ring Tail Entry Data Registers */
+	u32	peek_head_data[128];	/* Ring Peek Head Entry Data Regs */
+	u32	peek_tail_data[128];	/* Ring Peek Tail Entry Data Regs */
+};
+
+#define KNAV_RINGACC_FIFO_WINDOW_SIZE_BYTES  (512U)
+#define KNAV_RINGACC_FIFO_REGS_STEP	0x1000
+#define KNAV_RINGACC_MAX_DB_RING_CNT    (127U)
+
+/**
+ * struct k3_nav_ring_ops -  Ring operations
+ */
+struct k3_nav_ring_ops {
+	int (*push_tail)(struct k3_nav_ring *ring, void *elm);
+	int (*push_head)(struct k3_nav_ring *ring, void *elm);
+	int (*pop_tail)(struct k3_nav_ring *ring, void *elm);
+	int (*pop_head)(struct k3_nav_ring *ring, void *elm);
+};
+
+/**
+ * struct k3_nav_ring_state - Internal state tracking structure
+ *
+ * @free: Number of free entries
+ * @occ: Occupancy
+ * @windex: Write index
+ * @rindex: Read index
+ */
+struct k3_nav_ring_state {
+	u32 free;
+	u32 occ;
+	u32 windex;
+	u32 rindex;
+	u32 tdown_complete:1;
+};
+
+/**
+ * struct k3_nav_ring - RA Ring descriptor
+ *
+ * @cfg - Ring configuration registers
+ * @rt - Ring control/status registers
+ * @fifos - Ring queues registers
+ * @ring_mem_dma - Ring buffer dma address
+ * @ring_mem_virt - Ring buffer virt address
+ * @ops - Ring operations
+ * @size - Ring size in elements
+ * @elm_size - Size of the ring element
+ * @mode - Ring mode
+ * @flags - flags
+ * @ring_id - Ring Id
+ * @parent - Pointer on struct @k3_nav_ringacc
+ * @use_count - Use count for shared rings
+ */
+struct k3_nav_ring {
+	struct k3_nav_ring_cfg_regs __iomem *cfg;
+	struct k3_nav_ring_rt_regs __iomem *rt;
+	struct k3_nav_ring_fifo_regs __iomem *fifos;
+	dma_addr_t	ring_mem_dma;
+	void		*ring_mem_virt;
+	struct k3_nav_ring_ops *ops;
+	u32		size;
+	enum k3_nav_ring_size elm_size;
+	enum k3_nav_ring_mode mode;
+	u32		flags;
+#define KNAV_RING_FLAG_BUSY	BIT(1)
+#define K3_NAV_RING_FLAG_SHARED	BIT(2)
+#define K3_NAV_RING_FLAG_REVERSE BIT(3)
+	struct k3_nav_ring_state state;
+	u32		ring_id;
+	struct k3_nav_ringacc	*parent;
+	u32		use_count;
+};
+
+struct k3_nav_ringacc_ops {
+	int (*init)(struct device *dev, struct k3_nav_ringacc *ringacc);
+};
+
+/**
+ * struct k3_nav_ringacc - Rings accelerator descriptor
+ *
+ * @dev - pointer on RA device
+ * @num_rings - number of ring in RA
+ * @rm_gp_range - general purpose rings range from tisci
+ * @dma_ring_reset_quirk - DMA reset w/a enable
+ * @num_proxies - number of RA proxies
+ * @rings - array of rings descriptors (struct @k3_nav_ring)
+ * @list - list of RAs in the system
+ * @tisci - pointer ti-sci handle
+ * @tisci_ring_ops - ti-sci rings ops
+ * @tisci_dev_id - ti-sci device id
+ * @ops: SoC specific ringacc operation
+ * @dual_ring: indicate k3_dmaring dual ring support
+ */
+struct k3_nav_ringacc {
+	struct device *dev;
+	u32 num_rings; /* number of rings in Ringacc module */
+	unsigned long *rings_inuse;
+	struct ti_sci_resource *rm_gp_range;
+	bool dma_ring_reset_quirk;
+	u32 num_proxies;
+
+	struct k3_nav_ring *rings;
+	struct list_head list;
+
+	const struct ti_sci_handle *tisci;
+	const struct ti_sci_rm_ringacc_ops *tisci_ring_ops;
+	u32  tisci_dev_id;
+
+	const struct k3_nav_ringacc_ops *ops;
+	bool dual_ring;
+};
+
+struct k3_nav_ring_cfg_regs {
+	u32	resv_64[16];
+	u32	ba_lo;		/* Ring Base Address Lo Register */
+	u32	ba_hi;		/* Ring Base Address Hi Register */
+	u32	size;		/* Ring Size Register */
+	u32	event;		/* Ring Event Register */
+	u32	orderid;	/* Ring OrderID Register */
+};
+
+#define KNAV_RINGACC_CFG_REGS_STEP	0x100
+
+#define KNAV_RINGACC_CFG_RING_BA_HI_ADDR_HI_MASK	GENMASK(15, 0)
+
+#define KNAV_RINGACC_CFG_RING_SIZE_QMODE_MASK		GENMASK(31, 30)
+#define KNAV_RINGACC_CFG_RING_SIZE_QMODE_SHIFT		(30)
+
+#define KNAV_RINGACC_CFG_RING_SIZE_ELSIZE_MASK		GENMASK(26, 24)
+#define KNAV_RINGACC_CFG_RING_SIZE_ELSIZE_SHIFT		(24)
+
+#define KNAV_RINGACC_CFG_RING_SIZE_MASK			GENMASK(19, 0)
+
+static void k3_ringacc_ring_reset_raw(struct k3_nav_ring *ring)
+{
+	u32 reg;
+
+	reg = readl(&ring->cfg->size);
+	reg &= ~KNAV_RINGACC_CFG_RING_SIZE_MASK;
+	reg |= ring->size;
+	writel(reg, &ring->cfg->size);
+}
+
+static void k3_ringacc_ring_reconfig_qmode_raw(struct k3_nav_ring *ring, enum k3_nav_ring_mode mode)
+{
+	u32 val;
+
+	val = readl(&ring->cfg->size);
+	val &= ~KNAV_RINGACC_CFG_RING_SIZE_QMODE_MASK;
+	val |= mode << KNAV_RINGACC_CFG_RING_SIZE_QMODE_SHIFT;
+	writel(val, &ring->cfg->size);
+}
+
+static void k3_ringacc_ring_free_raw(struct k3_nav_ring *ring)
+{
+	writel(0, &ring->cfg->ba_hi);
+	writel(0, &ring->cfg->ba_lo);
+	writel(0, &ring->cfg->size);
+}
+
+static void k3_nav_ringacc_ring_cfg_raw(struct k3_nav_ring *ring)
+{
+	u32 val;
+
+	writel(lower_32_bits(ring->ring_mem_dma), &ring->cfg->ba_lo);
+	writel(upper_32_bits(ring->ring_mem_dma), &ring->cfg->ba_hi);
+
+	val = ring->mode << KNAV_RINGACC_CFG_RING_SIZE_QMODE_SHIFT |
+	      ring->elm_size << KNAV_RINGACC_CFG_RING_SIZE_ELSIZE_SHIFT |
+	      ring->size;
+	writel(val, &ring->cfg->size);
+}
+
+static int k3_nav_ringacc_ring_read_occ(struct k3_nav_ring *ring)
+{
+	return readl(&ring->rt->occ) & KNAV_RINGACC_RT_OCC_MASK;
+}
+
+static void k3_nav_ringacc_ring_update_occ(struct k3_nav_ring *ring)
+{
+	u32 val;
+
+	val = readl(&ring->rt->occ);
+
+	ring->state.occ = val & KNAV_RINGACC_RT_OCC_MASK;
+	ring->state.tdown_complete = !!(val & K3_DMARING_RING_RT_OCC_TDOWN_COMPLETE);
+}
+
+static void *k3_nav_ringacc_get_elm_addr(struct k3_nav_ring *ring, u32 idx)
+{
+	return (idx * (4 << ring->elm_size) + ring->ring_mem_virt);
+}
+
+static int k3_nav_ringacc_ring_push_mem(struct k3_nav_ring *ring, void *elem);
+static int k3_nav_ringacc_ring_pop_mem(struct k3_nav_ring *ring, void *elem);
+static int k3_dmaring_ring_fwd_pop_mem(struct k3_nav_ring *ring, void *elem);
+static int k3_dmaring_ring_reverse_pop_mem(struct k3_nav_ring *ring, void *elem);
+
+static struct k3_nav_ring_ops k3_nav_mode_ring_ops = {
+		.push_tail = k3_nav_ringacc_ring_push_mem,
+		.pop_head = k3_nav_ringacc_ring_pop_mem,
+};
+
+static struct k3_nav_ring_ops k3_dmaring_fwd_ring_ops = {
+		.push_tail = k3_nav_ringacc_ring_push_mem,
+		.pop_head = k3_dmaring_ring_fwd_pop_mem,
+};
+
+static struct k3_nav_ring_ops k3_dmaring_reverse_ring_ops = {
+		.pop_head = k3_dmaring_ring_reverse_pop_mem,
+};
+
+struct device *k3_nav_ringacc_get_dev(struct k3_nav_ringacc *ringacc)
+{
+	return ringacc->dev;
+}
+
+struct k3_nav_ring *k3_nav_ringacc_request_ring(struct k3_nav_ringacc *ringacc,
+						int id)
+{
+	if (id == K3_NAV_RINGACC_RING_ID_ANY) {
+		/* Request for any general purpose ring */
+		struct ti_sci_resource_desc *gp_rings =
+					&ringacc->rm_gp_range->desc[0];
+		unsigned long size;
+
+		size = gp_rings->start + gp_rings->num;
+		id = find_next_zero_bit(ringacc->rings_inuse,
+					size, gp_rings->start);
+		if (id == size)
+			goto error;
+	} else if (id < 0) {
+		goto error;
+	}
+
+	if (test_bit(id, ringacc->rings_inuse) &&
+	    !(ringacc->rings[id].flags & K3_NAV_RING_FLAG_SHARED))
+		goto error;
+	else if (ringacc->rings[id].flags & K3_NAV_RING_FLAG_SHARED)
+		goto out;
+
+	dev_dbg(ringacc->dev, "Giving ring#%d\n", id);
+
+	set_bit(id, ringacc->rings_inuse);
+out:
+	ringacc->rings[id].use_count++;
+	return &ringacc->rings[id];
+
+error:
+	return NULL;
+}
+
+static int k3_dmaring_ring_request_rings_pair(struct k3_nav_ringacc *ringacc,
+					      int fwd_id, int compl_id,
+					      struct k3_nav_ring **fwd_ring,
+					      struct k3_nav_ring **compl_ring)
+{
+	/* k3_dmaring: fwd_id == compl_id, so we ignore compl_id */
+	if (fwd_id < 0)
+		return -EINVAL;
+
+	if (test_bit(fwd_id, ringacc->rings_inuse))
+		return -EBUSY;
+
+	*fwd_ring = &ringacc->rings[fwd_id];
+	*compl_ring = &ringacc->rings[fwd_id + ringacc->num_rings];
+	set_bit(fwd_id, ringacc->rings_inuse);
+	ringacc->rings[fwd_id].use_count++;
+	dev_dbg(ringacc->dev, "Giving ring#%d\n", fwd_id);
+
+	return 0;
+}
+
+int k3_nav_ringacc_request_rings_pair(struct k3_nav_ringacc *ringacc,
+				      int fwd_id, int compl_id,
+				      struct k3_nav_ring **fwd_ring,
+				      struct k3_nav_ring **compl_ring)
+{
+	int ret = 0;
+
+	if (!fwd_ring || !compl_ring)
+		return -EINVAL;
+
+	if (ringacc->dual_ring)
+		return k3_dmaring_ring_request_rings_pair(ringacc, fwd_id, compl_id,
+						    fwd_ring, compl_ring);
+
+	*fwd_ring = k3_nav_ringacc_request_ring(ringacc, fwd_id);
+	if (!(*fwd_ring))
+		return -ENODEV;
+
+	*compl_ring = k3_nav_ringacc_request_ring(ringacc, compl_id);
+	if (!(*compl_ring)) {
+		k3_nav_ringacc_ring_free(*fwd_ring);
+		ret = -ENODEV;
+	}
+
+	return ret;
+}
+
+static void k3_ringacc_ring_reset_sci(struct k3_nav_ring *ring)
+{
+	struct k3_nav_ringacc *ringacc = ring->parent;
+	int ret;
+
+	if (IS_ENABLED(CONFIG_K3_DM_FW))
+		return k3_ringacc_ring_reset_raw(ring);
+
+	ret = ringacc->tisci_ring_ops->config(
+			ringacc->tisci,
+			TI_SCI_MSG_VALUE_RM_RING_COUNT_VALID,
+			ringacc->tisci_dev_id,
+			ring->ring_id,
+			0,
+			0,
+			ring->size,
+			0,
+			0,
+			0);
+	if (ret)
+		dev_err(ringacc->dev, "TISCI reset ring fail (%d) ring_idx %d\n",
+			ret, ring->ring_id);
+}
+
+void k3_nav_ringacc_ring_reset(struct k3_nav_ring *ring)
+{
+	if (!ring || !(ring->flags & KNAV_RING_FLAG_BUSY))
+		return;
+
+	memset(&ring->state, 0, sizeof(ring->state));
+
+	k3_ringacc_ring_reset_sci(ring);
+}
+
+static void k3_ringacc_ring_reconfig_qmode_sci(struct k3_nav_ring *ring,
+					       enum k3_nav_ring_mode mode)
+{
+	struct k3_nav_ringacc *ringacc = ring->parent;
+	int ret;
+
+	if (IS_ENABLED(CONFIG_K3_DM_FW))
+		return k3_ringacc_ring_reconfig_qmode_raw(ring, mode);
+
+	ret = ringacc->tisci_ring_ops->config(
+			ringacc->tisci,
+			TI_SCI_MSG_VALUE_RM_RING_MODE_VALID,
+			ringacc->tisci_dev_id,
+			ring->ring_id,
+			0,
+			0,
+			0,
+			mode,
+			0,
+			0);
+	if (ret)
+		dev_err(ringacc->dev, "TISCI reconf qmode fail (%d) ring_idx %d\n",
+			ret, ring->ring_id);
+}
+
+void k3_nav_ringacc_ring_reset_dma(struct k3_nav_ring *ring, u32 occ)
+{
+	if (!ring || !(ring->flags & KNAV_RING_FLAG_BUSY))
+		return;
+
+	if (!ring->parent->dma_ring_reset_quirk) {
+		k3_nav_ringacc_ring_reset(ring);
+		return;
+	}
+
+	if (!occ)
+		occ = ringacc_readl(&ring->rt->occ);
+
+	if (occ) {
+		u32 db_ring_cnt, db_ring_cnt_cur;
+
+		pr_debug("%s %u occ: %u\n", __func__,
+			 ring->ring_id, occ);
+		/* 2. Reset the ring */
+		k3_ringacc_ring_reset_sci(ring);
+
+		/*
+		 * 3. Setup the ring in ring/doorbell mode
+		 * (if not already in this mode)
+		 */
+		if (ring->mode != K3_NAV_RINGACC_RING_MODE_RING)
+			k3_ringacc_ring_reconfig_qmode_sci(
+					ring, K3_NAV_RINGACC_RING_MODE_RING);
+		/*
+		 * 4. Ring the doorbell 2**22 - ringOcc times.
+		 * This will wrap the internal UDMAP ring state occupancy
+		 * counter (which is 21-bits wide) to 0.
+		 */
+		db_ring_cnt = (1U << 22) - occ;
+
+		while (db_ring_cnt != 0) {
+			/*
+			 * Ring the doorbell with the maximum count each
+			 * iteration if possible to minimize the total
+			 * of writes
+			 */
+			if (db_ring_cnt > KNAV_RINGACC_MAX_DB_RING_CNT)
+				db_ring_cnt_cur = KNAV_RINGACC_MAX_DB_RING_CNT;
+			else
+				db_ring_cnt_cur = db_ring_cnt;
+
+			writel(db_ring_cnt_cur, &ring->rt->db);
+			db_ring_cnt -= db_ring_cnt_cur;
+		}
+
+		/* 5. Restore the original ring mode (if not ring mode) */
+		if (ring->mode != K3_NAV_RINGACC_RING_MODE_RING)
+			k3_ringacc_ring_reconfig_qmode_sci(ring, ring->mode);
+	}
+
+	/* 2. Reset the ring */
+	k3_nav_ringacc_ring_reset(ring);
+}
+
+static void k3_ringacc_ring_free_sci(struct k3_nav_ring *ring)
+{
+	struct k3_nav_ringacc *ringacc = ring->parent;
+	int ret;
+
+	if (IS_ENABLED(CONFIG_K3_DM_FW))
+		return k3_ringacc_ring_free_raw(ring);
+
+	ret = ringacc->tisci_ring_ops->config(
+			ringacc->tisci,
+			TI_SCI_MSG_VALUE_RM_ALL_NO_ORDER,
+			ringacc->tisci_dev_id,
+			ring->ring_id,
+			0,
+			0,
+			0,
+			0,
+			0,
+			0);
+	if (ret)
+		dev_err(ringacc->dev, "TISCI ring free fail (%d) ring_idx %d\n",
+			ret, ring->ring_id);
+}
+
+int k3_nav_ringacc_ring_free(struct k3_nav_ring *ring)
+{
+	struct k3_nav_ringacc *ringacc;
+
+	if (!ring)
+		return -EINVAL;
+
+	ringacc = ring->parent;
+
+	/*
+	 * k3_dmaring: rings shared memory and configuration, only forward ring is
+	 * configured and reverse ring considered as slave.
+	 */
+	if (ringacc->dual_ring && (ring->flags & K3_NAV_RING_FLAG_REVERSE))
+		return 0;
+
+	pr_debug("%s flags: 0x%08x\n", __func__, ring->flags);
+
+	if (!test_bit(ring->ring_id, ringacc->rings_inuse))
+		return -EINVAL;
+
+	if (--ring->use_count)
+		goto out;
+
+	if (!(ring->flags & KNAV_RING_FLAG_BUSY))
+		goto no_init;
+
+	k3_ringacc_ring_free_sci(ring);
+
+	dma_free_coherent(ringacc->dev,
+			  ring->ring_mem_virt, ring->ring_mem_dma,
+			  ring->size * (4 << ring->elm_size));
+	ring->flags &= ~KNAV_RING_FLAG_BUSY;
+	ring->ops = NULL;
+
+no_init:
+	clear_bit(ring->ring_id, ringacc->rings_inuse);
+
+out:
+	return 0;
+}
+
+u32 k3_nav_ringacc_get_ring_id(struct k3_nav_ring *ring)
+{
+	if (!ring)
+		return -EINVAL;
+
+	return ring->ring_id;
+}
+
+static int k3_nav_ringacc_ring_cfg_sci(struct k3_nav_ring *ring)
+{
+	struct k3_nav_ringacc *ringacc = ring->parent;
+	u32 ring_idx;
+	int ret;
+
+	if (!ringacc->tisci)
+		return -EINVAL;
+
+	ring_idx = ring->ring_id;
+	ret = ringacc->tisci_ring_ops->config(
+			ringacc->tisci,
+			TI_SCI_MSG_VALUE_RM_ALL_NO_ORDER,
+			ringacc->tisci_dev_id,
+			ring_idx,
+			lower_32_bits(ring->ring_mem_dma),
+			upper_32_bits(ring->ring_mem_dma),
+			ring->size,
+			ring->mode,
+			ring->elm_size,
+			0);
+	if (ret) {
+		dev_err(ringacc->dev, "TISCI config ring fail (%d) ring_idx %d\n",
+			ret, ring_idx);
+		return ret;
+	}
+
+	/*
+	 * Above TI SCI call handles firewall configuration, cfg
+	 * register configuration still has to be done locally in
+	 * absence of RM services.
+	 */
+	if (IS_ENABLED(CONFIG_K3_DM_FW))
+		k3_nav_ringacc_ring_cfg_raw(ring);
+
+	return 0;
+}
+
+static int k3_dmaring_ring_cfg(struct k3_nav_ring *ring, struct k3_nav_ring_cfg *cfg)
+{
+	struct k3_nav_ringacc *ringacc;
+	struct k3_nav_ring *reverse_ring;
+	int ret = 0;
+
+	if (cfg->elm_size != K3_NAV_RINGACC_RING_ELSIZE_8 ||
+	    cfg->mode != K3_NAV_RINGACC_RING_MODE_RING ||
+	    cfg->size & ~K3_DMARING_RING_CFG_RING_SIZE_ELCNT_MASK)
+		return -EINVAL;
+
+	ringacc = ring->parent;
+
+	/*
+	 * k3_dmaring: rings shared memory and configuration, only forward ring is
+	 * configured and reverse ring considered as slave.
+	 */
+	if (ringacc->dual_ring && (ring->flags & K3_NAV_RING_FLAG_REVERSE))
+		return 0;
+
+	if (!test_bit(ring->ring_id, ringacc->rings_inuse))
+		return -EINVAL;
+
+	ring->size = cfg->size;
+	ring->elm_size = cfg->elm_size;
+	ring->mode = cfg->mode;
+	memset(&ring->state, 0, sizeof(ring->state));
+
+	ring->ops = &k3_dmaring_fwd_ring_ops;
+
+	ring->ring_mem_virt =
+		dma_alloc_coherent(ringacc->dev, ring->size * (4 << ring->elm_size),
+				   &ring->ring_mem_dma);
+	if (!ring->ring_mem_virt) {
+		dev_err(ringacc->dev, "Failed to alloc ring mem\n");
+		ret = -ENOMEM;
+		goto err_free_ops;
+	}
+
+	ret = k3_nav_ringacc_ring_cfg_sci(ring);
+	if (ret)
+		goto err_free_mem;
+
+	ring->flags |= KNAV_RING_FLAG_BUSY;
+
+	/* k3_dmaring: configure reverse ring */
+	reverse_ring = &ringacc->rings[ring->ring_id + ringacc->num_rings];
+	reverse_ring->size = cfg->size;
+	reverse_ring->elm_size = cfg->elm_size;
+	reverse_ring->mode = cfg->mode;
+	memset(&reverse_ring->state, 0, sizeof(reverse_ring->state));
+	reverse_ring->ops = &k3_dmaring_reverse_ring_ops;
+
+	reverse_ring->ring_mem_virt = ring->ring_mem_virt;
+	reverse_ring->ring_mem_dma = ring->ring_mem_dma;
+	reverse_ring->flags |= KNAV_RING_FLAG_BUSY;
+
+	return 0;
+
+err_free_mem:
+	dma_free_coherent(ringacc->dev,
+			  ring->ring_mem_virt, ring->ring_mem_dma,
+			  ring->size * (4 << ring->elm_size));
+err_free_ops:
+	ring->ops = NULL;
+	return ret;
+}
+
+int k3_nav_ringacc_ring_cfg(struct k3_nav_ring *ring,
+			    struct k3_nav_ring_cfg *cfg)
+{
+	struct k3_nav_ringacc *ringacc = ring->parent;
+	int ret = 0;
+
+	if (!ring || !cfg)
+		return -EINVAL;
+
+	if (ringacc->dual_ring)
+		return k3_dmaring_ring_cfg(ring, cfg);
+
+	if (cfg->elm_size > K3_NAV_RINGACC_RING_ELSIZE_256 ||
+	    cfg->mode > K3_NAV_RINGACC_RING_MODE_QM ||
+	    cfg->size & ~KNAV_RINGACC_CFG_RING_SIZE_ELCNT_MASK ||
+	    !test_bit(ring->ring_id, ringacc->rings_inuse))
+		return -EINVAL;
+
+	if (ring->use_count != 1)
+		return 0;
+
+	ring->size = cfg->size;
+	ring->elm_size = cfg->elm_size;
+	ring->mode = cfg->mode;
+	memset(&ring->state, 0, sizeof(ring->state));
+
+	switch (ring->mode) {
+	case K3_NAV_RINGACC_RING_MODE_RING:
+		ring->ops = &k3_nav_mode_ring_ops;
+		break;
+	default:
+		ring->ops = NULL;
+		ret = -EINVAL;
+		goto err_free_ops;
+	};
+
+	ring->ring_mem_virt =
+			dma_alloc_coherent(ringacc->dev,
+					   ring->size * (4 << ring->elm_size),
+					   &ring->ring_mem_dma);
+	if (!ring->ring_mem_virt) {
+		dev_err(ringacc->dev, "Failed to alloc ring mem\n");
+		ret = -ENOMEM;
+		goto err_free_ops;
+	}
+
+	ret = k3_nav_ringacc_ring_cfg_sci(ring);
+
+	if (ret)
+		goto err_free_mem;
+
+	ring->flags |= KNAV_RING_FLAG_BUSY;
+	ring->flags |= (cfg->flags & K3_NAV_RINGACC_RING_SHARED) ?
+			K3_NAV_RING_FLAG_SHARED : 0;
+
+	return 0;
+
+err_free_mem:
+	dma_free_coherent(ringacc->dev,
+			  ring->ring_mem_virt, ring->ring_mem_dma,
+			  ring->size * (4 << ring->elm_size));
+err_free_ops:
+	ring->ops = NULL;
+	return ret;
+}
+
+u32 k3_nav_ringacc_ring_get_size(struct k3_nav_ring *ring)
+{
+	if (!ring || !(ring->flags & KNAV_RING_FLAG_BUSY))
+		return -EINVAL;
+
+	return ring->size;
+}
+
+u32 k3_nav_ringacc_ring_get_free(struct k3_nav_ring *ring)
+{
+	if (!ring || !(ring->flags & KNAV_RING_FLAG_BUSY))
+		return -EINVAL;
+
+	if (!ring->state.free)
+		ring->state.free = ring->size - ringacc_readl(&ring->rt->occ);
+
+	return ring->state.free;
+}
+
+u32 k3_nav_ringacc_ring_get_occ(struct k3_nav_ring *ring)
+{
+	if (!ring || !(ring->flags & KNAV_RING_FLAG_BUSY))
+		return -EINVAL;
+
+	return ringacc_readl(&ring->rt->occ);
+}
+
+u32 k3_nav_ringacc_ring_is_full(struct k3_nav_ring *ring)
+{
+	return !k3_nav_ringacc_ring_get_free(ring);
+}
+
+enum k3_ringacc_access_mode {
+	K3_RINGACC_ACCESS_MODE_PUSH_HEAD,
+	K3_RINGACC_ACCESS_MODE_POP_HEAD,
+	K3_RINGACC_ACCESS_MODE_PUSH_TAIL,
+	K3_RINGACC_ACCESS_MODE_POP_TAIL,
+	K3_RINGACC_ACCESS_MODE_PEEK_HEAD,
+	K3_RINGACC_ACCESS_MODE_PEEK_TAIL,
+};
+
+static int k3_dmaring_ring_fwd_pop_mem(struct k3_nav_ring *ring, void *elem)
+{
+	void *elem_ptr;
+	u32 elem_idx;
+
+	/*
+	 * k3_dmaring: forward ring is always tied DMA channel and HW does not
+	 * maintain any state data required for POP operation and its unknown
+	 * how much elements were consumed by HW. So, to actually
+	 * do POP, the read pointer has to be recalculated every time.
+	 */
+	ring->state.occ = k3_nav_ringacc_ring_read_occ(ring);
+	if (ring->state.windex >= ring->state.occ)
+		elem_idx = ring->state.windex - ring->state.occ;
+	else
+		elem_idx = ring->size - (ring->state.occ - ring->state.windex);
+
+	elem_ptr = k3_nav_ringacc_get_elm_addr(ring, elem_idx);
+
+	memcpy(elem, elem_ptr, (4 << ring->elm_size));
+
+	ring->state.occ--;
+	writel(-1, &ring->rt->db);
+
+	dev_dbg(ring->parent->dev, "%s: occ%d Windex%d Rindex%d pos_ptr%px\n",
+		__func__, ring->state.occ, ring->state.windex, elem_idx,
+		elem_ptr);
+	return 0;
+}
+
+static int k3_dmaring_ring_reverse_pop_mem(struct k3_nav_ring *ring, void *elem)
+{
+	void *elem_ptr;
+
+	elem_ptr = k3_nav_ringacc_get_elm_addr(ring, ring->state.rindex);
+
+	if (ring->state.occ) {
+		memcpy(elem, elem_ptr, (4 << ring->elm_size));
+		ring->state.rindex = (ring->state.rindex + 1) % ring->size;
+		ring->state.occ--;
+		writel(-1 & K3_DMARING_RING_RT_DB_ENTRY_MASK, &ring->rt->db);
+	}
+
+	dev_vdbg(ring->parent->dev, "%s: occ%d index%d pos_ptr%px\n",
+		__func__, ring->state.occ, ring->state.rindex, elem_ptr);
+	return 0;
+}
+
+static int k3_nav_ringacc_ring_push_mem(struct k3_nav_ring *ring, void *elem)
+{
+	void *elem_ptr;
+
+	elem_ptr = k3_nav_ringacc_get_elm_addr(ring, ring->state.windex);
+
+	memcpy(elem_ptr, elem, (4 << ring->elm_size));
+
+	ring->state.windex = (ring->state.windex + 1) % ring->size;
+	ring->state.free--;
+	ringacc_writel(1, &ring->rt->db);
+
+	dev_vdbg(ring->parent->dev, "ring_push_mem: free%d index%d\n",
+		 ring->state.free, ring->state.windex);
+
+	return 0;
+}
+
+static int k3_nav_ringacc_ring_pop_mem(struct k3_nav_ring *ring, void *elem)
+{
+	void *elem_ptr;
+
+	elem_ptr = k3_nav_ringacc_get_elm_addr(ring, ring->state.rindex);
+
+	memcpy(elem, elem_ptr, (4 << ring->elm_size));
+
+	ring->state.rindex = (ring->state.rindex + 1) % ring->size;
+	ring->state.occ--;
+	ringacc_writel(-1, &ring->rt->db);
+
+	dev_vdbg(ring->parent->dev, "ring_pop_mem: occ%d index%d pos_ptr%p\n",
+		 ring->state.occ, ring->state.rindex, elem_ptr);
+	return 0;
+}
+
+int k3_nav_ringacc_ring_push(struct k3_nav_ring *ring, void *elem)
+{
+	int ret = -EOPNOTSUPP;
+
+	if (!ring || !(ring->flags & KNAV_RING_FLAG_BUSY))
+		return -EINVAL;
+
+	dev_vdbg(ring->parent->dev, "ring_push%d: free%d index%d\n",
+		 ring->ring_id, ring->state.free, ring->state.windex);
+
+	if (k3_nav_ringacc_ring_is_full(ring))
+		return -ENOMEM;
+
+	if (ring->ops && ring->ops->push_tail)
+		ret = ring->ops->push_tail(ring, elem);
+
+	return ret;
+}
+
+int k3_nav_ringacc_ring_push_head(struct k3_nav_ring *ring, void *elem)
+{
+	int ret = -EOPNOTSUPP;
+
+	if (!ring || !(ring->flags & KNAV_RING_FLAG_BUSY))
+		return -EINVAL;
+
+	dev_vdbg(ring->parent->dev, "ring_push_head: free%d index%d\n",
+		 ring->state.free, ring->state.windex);
+
+	if (k3_nav_ringacc_ring_is_full(ring))
+		return -ENOMEM;
+
+	if (ring->ops && ring->ops->push_head)
+		ret = ring->ops->push_head(ring, elem);
+
+	return ret;
+}
+
+int k3_nav_ringacc_ring_pop(struct k3_nav_ring *ring, void *elem)
+{
+	int ret = -EOPNOTSUPP;
+
+	if (!ring || !(ring->flags & KNAV_RING_FLAG_BUSY))
+		return -EINVAL;
+
+	if (!ring->state.occ)
+		k3_nav_ringacc_ring_update_occ(ring);
+
+	dev_vdbg(ring->parent->dev, "ring_pop%d: occ%d index%d\n",
+		 ring->ring_id, ring->state.occ, ring->state.rindex);
+
+	if (!ring->state.occ && !ring->state.tdown_complete)
+		return -ENODATA;
+
+	if (ring->ops && ring->ops->pop_head)
+		ret = ring->ops->pop_head(ring, elem);
+
+	return ret;
+}
+
+int k3_nav_ringacc_ring_pop_tail(struct k3_nav_ring *ring, void *elem)
+{
+	int ret = -EOPNOTSUPP;
+
+	if (!ring || !(ring->flags & KNAV_RING_FLAG_BUSY))
+		return -EINVAL;
+
+	if (!ring->state.occ)
+		k3_nav_ringacc_ring_update_occ(ring);
+
+	dev_vdbg(ring->parent->dev, "ring_pop_tail: occ%d index%d\n",
+		 ring->state.occ, ring->state.rindex);
+
+	if (!ring->state.occ)
+		return -ENODATA;
+
+	if (ring->ops && ring->ops->pop_tail)
+		ret = ring->ops->pop_tail(ring, elem);
+
+	return ret;
+}
+
+static int k3_nav_ringacc_probe_dt(struct k3_nav_ringacc *ringacc)
+{
+	struct device *dev = ringacc->dev;
+	int ret;
+	u32 val;
+
+	ret = of_property_read_u32(dev->of_node, "ti,num-rings", &ringacc->num_rings);
+	if (ret) {
+		dev_err(dev, "ti,num-rings read failure %d\n", ret);
+		return -EINVAL;
+	}
+
+	ringacc->dma_ring_reset_quirk =
+			of_property_read_bool(dev->of_node, "ti,dma-ring-reset-quirk");
+
+	ringacc->tisci = ti_sci_get_by_phandle(dev, "ti,sci");
+
+	ret = of_property_read_u32(dev->of_node, "ti,sci", &val);
+	if (!ret && !val) {
+		dev_err(dev, "TISCI RA RM disabled\n");
+		ringacc->tisci = NULL;
+		return ret;
+	}
+
+	ret = of_property_read_u32(dev->of_node, "ti,sci-dev-id", &ringacc->tisci_dev_id);
+	if (ret) {
+		dev_err(dev, "ti,sci-dev-id read failure %d\n", ret);
+		ringacc->tisci = NULL;
+		return ret;
+	}
+
+	ringacc->rm_gp_range = devm_ti_sci_get_of_resource(
+					ringacc->tisci, dev,
+					ringacc->tisci_dev_id,
+					"ti,sci-rm-range-gp-rings");
+	if (IS_ERR(ringacc->rm_gp_range))
+		ret = PTR_ERR(ringacc->rm_gp_range);
+
+	return 0;
+}
+
+static int k3_nav_ringacc_init(struct device *dev, struct k3_nav_ringacc *ringacc)
+{
+	void __iomem *base_cfg, *base_rt;
+	int ret, i;
+
+	ret = k3_nav_ringacc_probe_dt(ringacc);
+	if (ret)
+		return ret;
+
+	base_cfg = dev_request_mem_region_by_name(dev, "cfg");
+	dev_dbg(dev, "cfg %p\n", base_cfg);
+	if (!base_cfg)
+		return -EINVAL;
+
+	base_rt = dev_request_mem_region_by_name(dev, "rt");
+	dev_dbg(dev, "rt %p\n", base_rt);
+	if (!base_rt)
+		return -EINVAL;
+
+	ringacc->rings = devm_kzalloc(dev,
+				      sizeof(*ringacc->rings) *
+				      ringacc->num_rings,
+				      GFP_KERNEL);
+	ringacc->rings_inuse = devm_kcalloc(dev,
+					    BITS_TO_LONGS(ringacc->num_rings),
+					    sizeof(unsigned long), GFP_KERNEL);
+
+	if (!ringacc->rings || !ringacc->rings_inuse)
+		return -ENOMEM;
+
+	for (i = 0; i < ringacc->num_rings; i++) {
+		ringacc->rings[i].cfg = base_cfg +
+					KNAV_RINGACC_CFG_REGS_STEP * i;
+		ringacc->rings[i].rt = base_rt +
+				       KNAV_RINGACC_RT_REGS_STEP * i;
+		ringacc->rings[i].parent = ringacc;
+		ringacc->rings[i].ring_id = i;
+	}
+
+	ringacc->tisci_ring_ops = &ringacc->tisci->ops.rm_ring_ops;
+
+	list_add_tail(&ringacc->list, &k3_nav_ringacc_list);
+
+	dev_info(dev, "Ring Accelerator probed rings:%u, gp-rings[%u,%u] sci-dev-id:%u\n",
+		 ringacc->num_rings,
+		 ringacc->rm_gp_range->desc[0].start,
+		 ringacc->rm_gp_range->desc[0].num,
+		 ringacc->tisci_dev_id);
+	dev_info(dev, "dma-ring-reset-quirk: %s\n",
+		 ringacc->dma_ring_reset_quirk ? "enabled" : "disabled");
+	return 0;
+}
+
+struct k3_nav_ringacc *k3_ringacc_dmarings_init(struct device *dev,
+						struct k3_ringacc_init_data *data)
+{
+	void __iomem *base_rt, *base_cfg;
+	struct k3_nav_ringacc *ringacc;
+	int i;
+
+	ringacc = devm_kzalloc(dev, sizeof(*ringacc), GFP_KERNEL);
+	if (!ringacc)
+		return ERR_PTR(-ENOMEM);
+
+	ringacc->dual_ring = true;
+
+	ringacc->dev = dev;
+	ringacc->num_rings = data->num_rings;
+	ringacc->tisci = data->tisci;
+	ringacc->tisci_dev_id = data->tisci_dev_id;
+
+	base_rt = dev_request_mem_region_by_name(dev, "ringrt");
+	if (!base_rt)
+		return ERR_PTR(-EINVAL);
+
+	/*
+	 * Since register property is defined as "ring" for PKTDMA and
+	 * "cfg" for UDMA, configure base address of ring configuration
+	 * register accordingly.
+	 */
+	base_cfg = dev_request_mem_region_by_name(dev, "ring");
+	dev_dbg(dev, "ring %p\n", base_cfg);
+	if (!base_cfg) {
+		base_cfg = dev_request_mem_region_by_name(dev, "cfg");
+		dev_dbg(dev, "cfg %p\n", base_cfg);
+		if (!base_cfg)
+			return ERR_PTR(-EINVAL);
+	}
+
+	ringacc->rings = devm_kzalloc(dev,
+				      sizeof(*ringacc->rings) *
+				      ringacc->num_rings * 2,
+				      GFP_KERNEL);
+	ringacc->rings_inuse = devm_kcalloc(dev,
+					    BITS_TO_LONGS(ringacc->num_rings),
+					    sizeof(unsigned long), GFP_KERNEL);
+
+	if (!ringacc->rings || !ringacc->rings_inuse)
+		return ERR_PTR(-ENOMEM);
+
+	for (i = 0; i < ringacc->num_rings; i++) {
+		struct k3_nav_ring *ring = &ringacc->rings[i];
+
+		ring->cfg = base_cfg + KNAV_RINGACC_CFG_REGS_STEP * i;
+		ring->rt = base_rt + K3_DMARING_RING_RT_REGS_STEP * i;
+		ring->parent = ringacc;
+		ring->ring_id = i;
+
+		ring = &ringacc->rings[ringacc->num_rings + i];
+		ring->rt = base_rt + K3_DMARING_RING_RT_REGS_STEP * i +
+			   K3_DMARING_RING_RT_REGS_REVERSE_OFS;
+		ring->parent = ringacc;
+		ring->ring_id = i;
+		ring->flags = K3_NAV_RING_FLAG_REVERSE;
+	}
+
+	ringacc->tisci_ring_ops = &ringacc->tisci->ops.rm_ring_ops;
+
+	dev_dbg(dev, "k3_dmaring Ring probed rings:%u, sci-dev-id:%u\n",
+		 ringacc->num_rings,
+		 ringacc->tisci_dev_id);
+	dev_dbg(dev, "dma-ring-reset-quirk: %s\n",
+		 ringacc->dma_ring_reset_quirk ? "enabled" : "disabled");
+
+	return ringacc;
+}
+
+struct k3_nav_ringacc *k3_navss_ringacc_get_by_phandle(struct device *dev, const char *property)
+{
+	struct k3_nav_ringacc *ringacc = NULL, *entry;
+	struct device_node *np;
+
+	np = of_parse_phandle(dev->of_node, property, 0);
+	if (!np)
+		return ERR_PTR(-ENODEV);
+
+	of_device_ensure_probed(np);
+
+	list_for_each_entry(entry, &k3_nav_ringacc_list, list)
+		if (dev_of_node(entry->dev) == np) {
+			ringacc = entry;
+			break;
+		}
+
+	if (!ringacc)
+		return ERR_PTR(-ENODEV);
+
+	return ringacc;
+}
+
+struct ringacc_match_data {
+	struct k3_nav_ringacc_ops ops;
+};
+
+static struct ringacc_match_data k3_nav_ringacc_data = {
+	.ops = {
+		.init = k3_nav_ringacc_init,
+	},
+};
+
+static const struct of_device_id knav_ringacc_ids[] = {
+	{
+		.compatible = "ti,am654-navss-ringacc",
+		.data = &k3_nav_ringacc_data,
+	}, {
+		/* sentinel */
+	},
+};
+
+static int k3_nav_ringacc_probe(struct device *dev)
+{
+	struct k3_nav_ringacc *ringacc;
+	int ret;
+	const struct ringacc_match_data *match_data;
+
+	match_data = device_get_match_data(dev);
+
+	ringacc = xzalloc(sizeof(*ringacc));
+
+	ringacc->dev = dev;
+	ringacc->ops = &match_data->ops;
+	ret = ringacc->ops->init(dev, ringacc);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
+static struct driver k3_navss_ringacc = {
+	.probe  = k3_nav_ringacc_probe,
+	.name   = "k3-navss-ringacc",
+	.of_compatible = knav_ringacc_ids,
+};
+
+core_platform_driver(k3_navss_ringacc);
diff --git a/include/soc/ti/k3-navss-ringacc.h b/include/soc/ti/k3-navss-ringacc.h
new file mode 100644
index 0000000000..b9e19a65e8
--- /dev/null
+++ b/include/soc/ti/k3-navss-ringacc.h
@@ -0,0 +1,252 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
+/*
+ * TI K3 AM65x NAVSS Ring accelerator Manager (RA) subsystem driver
+ *
+ * Copyright (C) 2018 Texas Instruments Incorporated - https://www.ti.com
+ */
+
+#ifndef __SOC_TI_K3_NAVSS_RINGACC_API_H_
+#define __SOC_TI_K3_NAVSS_RINGACC_API_H_
+
+#include <linux/bitops.h>
+
+/**
+ * enum k3_nav_ring_mode - &struct k3_nav_ring_cfg mode
+ *
+ * RA ring operational modes
+ *
+ * @K3_NAV_RINGACC_RING_MODE_RING: Exposed Ring mode for SW direct access
+ * @K3_NAV_RINGACC_RING_MODE_MESSAGE: Messaging mode. Messaging mode requires
+ *	that all accesses to the queue must go through this IP so that all
+ *	accesses to the memory are controlled and ordered. This IP then
+ *	controls the entire state of the queue, and SW has no directly control,
+ *	such as through doorbells and cannot access the storage memory directly.
+ *	This is particularly useful when more than one SW or HW entity can be
+ *	the producer and/or consumer at the same time
+ * @K3_NAV_RINGACC_RING_MODE_CREDENTIALS: Credentials mode is message mode plus
+ *	stores credentials with each message, requiring the element size to be
+ *	doubled to fit the credentials. Any exposed memory should be protected
+ *	by a firewall from unwanted access
+ * @K3_NAV_RINGACC_RING_MODE_QM:  Queue manager mode. This takes the credentials
+ *	mode and adds packet length per element, along with additional read only
+ *	fields for element count and accumulated queue length. The QM mode only
+ *	operates with an 8 byte element size (any other element size is
+ *	illegal), and like in credentials mode each operation uses 2 element
+ *	slots to store the credentials and length fields
+ */
+enum k3_nav_ring_mode {
+	K3_NAV_RINGACC_RING_MODE_RING = 0,
+	K3_NAV_RINGACC_RING_MODE_MESSAGE,
+	K3_NAV_RINGACC_RING_MODE_CREDENTIALS,
+	K3_NAV_RINGACC_RING_MODE_QM,
+	k3_NAV_RINGACC_RING_MODE_INVALID
+};
+
+/**
+ * enum k3_nav_ring_size - &struct k3_nav_ring_cfg elm_size
+ *
+ * RA ring element's sizes in bytes.
+ */
+enum k3_nav_ring_size {
+	K3_NAV_RINGACC_RING_ELSIZE_4 = 0,
+	K3_NAV_RINGACC_RING_ELSIZE_8,
+	K3_NAV_RINGACC_RING_ELSIZE_16,
+	K3_NAV_RINGACC_RING_ELSIZE_32,
+	K3_NAV_RINGACC_RING_ELSIZE_64,
+	K3_NAV_RINGACC_RING_ELSIZE_128,
+	K3_NAV_RINGACC_RING_ELSIZE_256,
+	K3_NAV_RINGACC_RING_ELSIZE_INVALID
+};
+
+struct k3_nav_ringacc;
+struct k3_nav_ring;
+
+/**
+ * enum k3_nav_ring_cfg - RA ring configuration structure
+ *
+ * @size: Ring size, number of elements
+ * @elm_size: Ring element size
+ * @mode: Ring operational mode
+ * @flags: Ring configuration flags. Possible values:
+ *	 @K3_NAV_RINGACC_RING_SHARED: when set allows to request the same ring
+ *	 few times. It's usable when the same ring is used as Free Host PD ring
+ *	 for different flows, for example.
+ *	 Note: Locking should be done by consumer if required
+ */
+struct k3_nav_ring_cfg {
+	u32 size;
+	enum k3_nav_ring_size elm_size;
+	enum k3_nav_ring_mode mode;
+#define K3_NAV_RINGACC_RING_SHARED BIT(1)
+	u32 flags;
+};
+
+#define K3_NAV_RINGACC_RING_ID_ANY (-1)
+
+/**
+ * k3_nav_ringacc_request_ring - request ring from ringacc
+ * @ringacc: pointer on ringacc
+ * @id: ring id or K3_NAV_RINGACC_RING_ID_ANY for any general purpose ring
+ *
+ * Returns pointer on the Ring - struct k3_nav_ring
+ * or NULL in case of failure.
+ */
+struct k3_nav_ring *k3_nav_ringacc_request_ring(struct k3_nav_ringacc *ringacc,
+						int id);
+
+int k3_nav_ringacc_request_rings_pair(struct k3_nav_ringacc *ringacc,
+				      int fwd_id, int compl_id,
+				      struct k3_nav_ring **fwd_ring,
+				      struct k3_nav_ring **compl_ring);
+/**
+ * k3_nav_ringacc_get_dev - get pointer on RA device
+ * @ringacc: pointer on RA
+ *
+ * Returns device pointer
+ */
+struct device *k3_nav_ringacc_get_dev(struct k3_nav_ringacc *ringacc);
+
+/**
+ * k3_nav_ringacc_ring_reset - ring reset
+ * @ring: pointer on Ring
+ *
+ * Resets ring internal state ((hw)occ, (hw)idx).
+ * TODO_GS: ? Ring can be reused without reconfiguration
+ */
+void k3_nav_ringacc_ring_reset(struct k3_nav_ring *ring);
+/**
+ * k3_nav_ringacc_ring_reset - ring reset for DMA rings
+ * @ring: pointer on Ring
+ *
+ * Resets ring internal state ((hw)occ, (hw)idx). Should be used for rings
+ * which are read by K3 UDMA, like TX or Free Host PD rings.
+ */
+void k3_nav_ringacc_ring_reset_dma(struct k3_nav_ring *ring, u32 occ);
+
+/**
+ * k3_nav_ringacc_ring_free - ring free
+ * @ring: pointer on Ring
+ *
+ * Resets ring and free all alocated resources.
+ */
+int k3_nav_ringacc_ring_free(struct k3_nav_ring *ring);
+
+/**
+ * k3_nav_ringacc_get_ring_id - Get the Ring ID
+ * @ring: pointer on ring
+ *
+ * Returns the Ring ID
+ */
+u32 k3_nav_ringacc_get_ring_id(struct k3_nav_ring *ring);
+
+/**
+ * k3_nav_ringacc_ring_cfg - ring configure
+ * @ring: pointer on ring
+ * @cfg: Ring configuration parameters (see &struct k3_nav_ring_cfg)
+ *
+ * Configures ring, including ring memory allocation.
+ * Returns 0 on success, errno otherwise.
+ */
+int k3_nav_ringacc_ring_cfg(struct k3_nav_ring *ring,
+			    struct k3_nav_ring_cfg *cfg);
+
+/**
+ * k3_nav_ringacc_ring_get_size - get ring size
+ * @ring: pointer on ring
+ *
+ * Returns ring size in number of elements.
+ */
+u32 k3_nav_ringacc_ring_get_size(struct k3_nav_ring *ring);
+
+/**
+ * k3_nav_ringacc_ring_get_free - get free elements
+ * @ring: pointer on ring
+ *
+ * Returns number of free elements in the ring.
+ */
+u32 k3_nav_ringacc_ring_get_free(struct k3_nav_ring *ring);
+
+/**
+ * k3_nav_ringacc_ring_get_occ - get ring occupancy
+ * @ring: pointer on ring
+ *
+ * Returns total number of valid entries on the ring
+ */
+u32 k3_nav_ringacc_ring_get_occ(struct k3_nav_ring *ring);
+
+/**
+ * k3_nav_ringacc_ring_is_full - checks if ring is full
+ * @ring: pointer on ring
+ *
+ * Returns true if the ring is full
+ */
+u32 k3_nav_ringacc_ring_is_full(struct k3_nav_ring *ring);
+
+/**
+ * k3_nav_ringacc_ring_push - push element to the ring tail
+ * @ring: pointer on ring
+ * @elem: pointer on ring element buffer
+ *
+ * Push one ring element to the ring tail. Size of the ring element is
+ * determined by ring configuration &struct k3_nav_ring_cfg elm_size.
+ *
+ * Returns 0 on success, errno otherwise.
+ */
+int k3_nav_ringacc_ring_push(struct k3_nav_ring *ring, void *elem);
+
+/**
+ * k3_nav_ringacc_ring_pop - pop element from the ring head
+ * @ring: pointer on ring
+ * @elem: pointer on ring element buffer
+ *
+ * Push one ring element from the ring head. Size of the ring element is
+ * determined by ring configuration &struct k3_nav_ring_cfg elm_size..
+ *
+ * Returns 0 on success, errno otherwise.
+ */
+int k3_nav_ringacc_ring_pop(struct k3_nav_ring *ring, void *elem);
+
+/**
+ * k3_nav_ringacc_ring_push_head - push element to the ring head
+ * @ring: pointer on ring
+ * @elem: pointer on ring element buffer
+ *
+ * Push one ring element to the ring head. Size of the ring element is
+ * determined by ring configuration &struct k3_nav_ring_cfg elm_size.
+ *
+ * Returns 0 on success, errno otherwise.
+ * Not Supported by ring modes: K3_NAV_RINGACC_RING_MODE_RING
+ */
+int k3_nav_ringacc_ring_push_head(struct k3_nav_ring *ring, void *elem);
+
+/**
+ * k3_nav_ringacc_ring_pop_tail - pop element from the ring tail
+ * @ring: pointer on ring
+ * @elem: pointer on ring element buffer
+ *
+ * Push one ring element from the ring tail. Size of the ring element is
+ * determined by ring configuration &struct k3_nav_ring_cfg elm_size.
+ *
+ * Returns 0 on success, errno otherwise.
+ * Not Supported by ring modes: K3_NAV_RINGACC_RING_MODE_RING
+ */
+int k3_nav_ringacc_ring_pop_tail(struct k3_nav_ring *ring, void *elem);
+
+/* DMA ring support */
+struct ti_sci_handle;
+
+/**
+ * struct struct k3_ringacc_init_data - Initialization data for DMA rings
+ */
+struct k3_ringacc_init_data {
+	const struct ti_sci_handle *tisci;
+	u32 tisci_dev_id;
+	u32 num_rings;
+};
+
+struct k3_nav_ringacc *k3_ringacc_dmarings_init(struct device *dev,
+						struct k3_ringacc_init_data *data);
+
+struct k3_nav_ringacc *k3_navss_ringacc_get_by_phandle(struct device *dev, const char *property);
+
+#endif /* __SOC_TI_K3_NAVSS_RINGACC_API_H_ */

-- 
2.39.5



