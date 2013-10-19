Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x22f.google.com ([2a00:1450:4013:c00::22f])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VXVX7-0002ni-UY
 for barebox@lists.infradead.org; Sat, 19 Oct 2013 12:21:33 +0000
Received: by mail-ee0-f47.google.com with SMTP id d49so2602344eek.6
 for <barebox@lists.infradead.org>; Sat, 19 Oct 2013 05:21:08 -0700 (PDT)
Received: from mamamia.internal (a89-182-1-5.net-htp.de. [89.182.1.5])
 by mx.google.com with ESMTPSA id b42sm17147502eem.9.2013.10.19.05.21.07
 for <barebox@lists.infradead.org>
 (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
 Sat, 19 Oct 2013 05:21:07 -0700 (PDT)
From: Andre Heider <a.heider@gmail.com>
Date: Sat, 19 Oct 2013 14:20:52 +0200
Message-Id: <1382185254-29183-6-git-send-email-a.heider@gmail.com>
In-Reply-To: <1382185130-28995-1-git-send-email-a.heider@gmail.com>
References: <1382185130-28995-1-git-send-email-a.heider@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 07/10] ARM: bcm2835: add a mailbox driver for VideoCore
To: barebox@lists.infradead.org

This allows exchanging data with the on-SoC GPU.

Based on U-Boot code by Stephen Warren.

Signed-off-by: Andre Heider <a.heider@gmail.com>
---
 arch/arm/mach-bcm2835/Makefile            |   2 +-
 arch/arm/mach-bcm2835/include/mach/mbox.h | 420 ++++++++++++++++++++++++++++++
 arch/arm/mach-bcm2835/mbox.c              | 152 +++++++++++
 3 files changed, 573 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/mach-bcm2835/include/mach/mbox.h
 create mode 100644 arch/arm/mach-bcm2835/mbox.c

diff --git a/arch/arm/mach-bcm2835/Makefile b/arch/arm/mach-bcm2835/Makefile
index 820eb10..940f98c 100644
--- a/arch/arm/mach-bcm2835/Makefile
+++ b/arch/arm/mach-bcm2835/Makefile
@@ -1 +1 @@
-obj-y += core.o
+obj-y += core.o mbox.o
diff --git a/arch/arm/mach-bcm2835/include/mach/mbox.h b/arch/arm/mach-bcm2835/include/mach/mbox.h
new file mode 100644
index 0000000..6c36389
--- /dev/null
+++ b/arch/arm/mach-bcm2835/include/mach/mbox.h
@@ -0,0 +1,420 @@
+/*
+ * based on U-Boot code
+ *
+ * (C) Copyright 2012 Stephen Warren
+ *
+ * SPDX-License-Identifier:	GPL-2.0+
+ */
+
+#ifndef _BCM2835_MBOX_H
+#define _BCM2835_MBOX_H
+
+#include <common.h>
+
+/*
+ * The BCM2835 SoC contains (at least) two CPUs; the VideoCore (a/k/a "GPU")
+ * and the ARM CPU. The ARM CPU is often thought of as the main CPU.
+ * However, the VideoCore actually controls the initial SoC boot, and hides
+ * much of the hardware behind a protocol. This protocol is transported
+ * using the SoC's mailbox hardware module.
+ *
+ * The mailbox hardware supports passing 32-bit values back and forth.
+ * Presumably by software convention of the firmware, the bottom 4 bits of the
+ * value are used to indicate a logical channel, and the upper 28 bits are the
+ * actual payload. Various channels exist using these simple raw messages. See
+ * https://github.com/raspberrypi/firmware/wiki/Mailboxes for a list. As an
+ * example, the messages on the power management channel are a bitmask of
+ * devices whose power should be enabled.
+ *
+ * The property mailbox channel passes messages that contain the (16-byte
+ * aligned) ARM physical address of a memory buffer. This buffer is passed to
+ * the VC for processing, is modified in-place by the VC, and the address then
+ * passed back to the ARM CPU as the response mailbox message to indicate
+ * request completion. The buffers have a generic and extensible format; each
+ * buffer contains a standard header, a list of "tags", and a terminating zero
+ * entry. Each tag contains an ID indicating its type, and length fields for
+ * generic parsing. With some limitations, an arbitrary set of tags may be
+ * combined together into a single message buffer. This file defines structs
+ * representing the header and many individual tag layouts and IDs.
+ */
+
+/* Raw mailbox HW */
+
+#define BCM2835_MBOX_PHYSADDR	0x2000b880
+
+struct bcm2835_mbox_regs {
+	u32 read;
+	u32 rsvd0[5];
+	u32 status;
+	u32 config;
+	u32 write;
+};
+
+#define BCM2835_MBOX_STATUS_WR_FULL	0x80000000
+#define BCM2835_MBOX_STATUS_RD_EMPTY	0x40000000
+
+/* Lower 4-bits are channel ID */
+#define BCM2835_CHAN_MASK		0xf
+#define BCM2835_MBOX_PACK(chan, data)	(((data) & (~BCM2835_CHAN_MASK)) | \
+					 (chan & BCM2835_CHAN_MASK))
+#define BCM2835_MBOX_UNPACK_CHAN(val)	((val) & BCM2835_CHAN_MASK)
+#define BCM2835_MBOX_UNPACK_DATA(val)	((val) & (~BCM2835_CHAN_MASK))
+
+/* Property mailbox buffer structures */
+
+#define BCM2835_MBOX_PROP_CHAN		8
+
+/* All message buffers must start with this header */
+struct bcm2835_mbox_hdr {
+	u32 buf_size;
+	u32 code;
+};
+
+#define BCM2835_MBOX_REQ_CODE		0
+#define BCM2835_MBOX_RESP_CODE_SUCCESS	0x80000000
+
+#define BCM2835_MBOX_STACK_ALIGN(type, name) \
+	STACK_ALIGN_ARRAY(type, name, 1, BCM2835_CHAN_MASK + 1)
+
+#define BCM2835_MBOX_INIT_HDR(_m_) { \
+		memset((_m_), 0, sizeof(*(_m_))); \
+		(_m_)->hdr.buf_size = sizeof(*(_m_)); \
+		(_m_)->hdr.code = 0; \
+		(_m_)->end_tag = 0; \
+	}
+
+/*
+ * A message buffer contains a list of tags. Each tag must also start with
+ * a standardized header.
+ */
+struct bcm2835_mbox_tag_hdr {
+	u32 tag;
+	u32 val_buf_size;
+	u32 val_len;
+};
+
+#define BCM2835_MBOX_INIT_TAG(_t_, _id_) { \
+		(_t_)->tag_hdr.tag = BCM2835_MBOX_TAG_##_id_; \
+		(_t_)->tag_hdr.val_buf_size = sizeof((_t_)->body); \
+		(_t_)->tag_hdr.val_len = sizeof((_t_)->body.req); \
+	}
+
+#define BCM2835_MBOX_INIT_TAG_NO_REQ(_t_, _id_) { \
+		(_t_)->tag_hdr.tag = BCM2835_MBOX_TAG_##_id_; \
+		(_t_)->tag_hdr.val_buf_size = sizeof((_t_)->body); \
+		(_t_)->tag_hdr.val_len = 0; \
+	}
+
+/* When responding, the VC sets this bit in val_len to indicate a response */
+#define BCM2835_MBOX_TAG_VAL_LEN_RESPONSE	0x80000000
+
+/*
+ * Below we define the ID and struct for many possible tags. This header only
+ * defines individual tag structs, not entire message structs, since in
+ * general an arbitrary set of tags may be combined into a single message.
+ * Clients of the mbox API are expected to define their own overall message
+ * structures by combining the header, a set of tags, and a terminating
+ * entry. For example,
+ *
+ * struct msg {
+ *     struct bcm2835_mbox_hdr hdr;
+ *     struct bcm2835_mbox_tag_get_arm_mem get_arm_mem;
+ *     ... perhaps other tags here ...
+ *     u32 end_tag;
+ * };
+ */
+
+#define BCM2835_MBOX_TAG_GET_ARM_MEMORY		0x00010005
+
+struct bcm2835_mbox_tag_get_arm_mem {
+	struct bcm2835_mbox_tag_hdr tag_hdr;
+	union {
+		struct {
+		} req;
+		struct {
+			u32 mem_base;
+			u32 mem_size;
+		} resp;
+	} body;
+};
+
+#define BCM2835_MBOX_TAG_GET_CLOCK_RATE	0x00030002
+
+#define BCM2835_MBOX_CLOCK_ID_EMMC	1
+#define BCM2835_MBOX_CLOCK_ID_UART	2
+#define BCM2835_MBOX_CLOCK_ID_ARM	3
+#define BCM2835_MBOX_CLOCK_ID_CORE	4
+#define BCM2835_MBOX_CLOCK_ID_V3D	5
+#define BCM2835_MBOX_CLOCK_ID_H264	6
+#define BCM2835_MBOX_CLOCK_ID_ISP	7
+#define BCM2835_MBOX_CLOCK_ID_SDRAM	8
+#define BCM2835_MBOX_CLOCK_ID_PIXEL	9
+#define BCM2835_MBOX_CLOCK_ID_PWM	10
+
+struct bcm2835_mbox_tag_get_clock_rate {
+	struct bcm2835_mbox_tag_hdr tag_hdr;
+	union {
+		struct {
+			u32 clock_id;
+		} req;
+		struct {
+			u32 clock_id;
+			u32 rate_hz;
+		} resp;
+	} body;
+};
+
+#define BCM2835_MBOX_TAG_ALLOCATE_BUFFER	0x00040001
+
+struct bcm2835_mbox_tag_allocate_buffer {
+	struct bcm2835_mbox_tag_hdr tag_hdr;
+	union {
+		struct {
+			u32 alignment;
+		} req;
+		struct {
+			u32 fb_address;
+			u32 fb_size;
+		} resp;
+	} body;
+};
+
+#define BCM2835_MBOX_TAG_RELEASE_BUFFER		0x00048001
+
+struct bcm2835_mbox_tag_release_buffer {
+	struct bcm2835_mbox_tag_hdr tag_hdr;
+	union {
+		struct {
+		} req;
+		struct {
+		} resp;
+	} body;
+};
+
+#define BCM2835_MBOX_TAG_BLANK_SCREEN		0x00040002
+
+struct bcm2835_mbox_tag_blank_screen {
+	struct bcm2835_mbox_tag_hdr tag_hdr;
+	union {
+		struct {
+			/* bit 0 means on, other bits reserved */
+			u32 state;
+		} req;
+		struct {
+			u32 state;
+		} resp;
+	} body;
+};
+
+/* Physical means output signal */
+#define BCM2835_MBOX_TAG_GET_PHYSICAL_W_H	0x00040003
+#define BCM2835_MBOX_TAG_TEST_PHYSICAL_W_H	0x00044003
+#define BCM2835_MBOX_TAG_SET_PHYSICAL_W_H	0x00048003
+
+struct bcm2835_mbox_tag_physical_w_h {
+	struct bcm2835_mbox_tag_hdr tag_hdr;
+	union {
+		/* req not used for get */
+		struct {
+			u32 width;
+			u32 height;
+		} req;
+		struct {
+			u32 width;
+			u32 height;
+		} resp;
+	} body;
+};
+
+/* Virtual means display buffer */
+#define BCM2835_MBOX_TAG_GET_VIRTUAL_W_H	0x00040004
+#define BCM2835_MBOX_TAG_TEST_VIRTUAL_W_H	0x00044004
+#define BCM2835_MBOX_TAG_SET_VIRTUAL_W_H	0x00048004
+
+struct bcm2835_mbox_tag_virtual_w_h {
+	struct bcm2835_mbox_tag_hdr tag_hdr;
+	union {
+		/* req not used for get */
+		struct {
+			u32 width;
+			u32 height;
+		} req;
+		struct {
+			u32 width;
+			u32 height;
+		} resp;
+	} body;
+};
+
+#define BCM2835_MBOX_TAG_GET_DEPTH		0x00040005
+#define BCM2835_MBOX_TAG_TEST_DEPTH		0x00044005
+#define BCM2835_MBOX_TAG_SET_DEPTH		0x00048005
+
+struct bcm2835_mbox_tag_depth {
+	struct bcm2835_mbox_tag_hdr tag_hdr;
+	union {
+		/* req not used for get */
+		struct {
+			u32 bpp;
+		} req;
+		struct {
+			u32 bpp;
+		} resp;
+	} body;
+};
+
+#define BCM2835_MBOX_TAG_GET_PIXEL_ORDER	0x00040006
+#define BCM2835_MBOX_TAG_TEST_PIXEL_ORDER	0x00044005
+#define BCM2835_MBOX_TAG_SET_PIXEL_ORDER	0x00048006
+
+#define BCM2835_MBOX_PIXEL_ORDER_BGR		0
+#define BCM2835_MBOX_PIXEL_ORDER_RGB		1
+
+struct bcm2835_mbox_tag_pixel_order {
+	struct bcm2835_mbox_tag_hdr tag_hdr;
+	union {
+		/* req not used for get */
+		struct {
+			u32 order;
+		} req;
+		struct {
+			u32 order;
+		} resp;
+	} body;
+};
+
+#define BCM2835_MBOX_TAG_GET_ALPHA_MODE		0x00040007
+#define BCM2835_MBOX_TAG_TEST_ALPHA_MODE	0x00044007
+#define BCM2835_MBOX_TAG_SET_ALPHA_MODE		0x00048007
+
+#define BCM2835_MBOX_ALPHA_MODE_0_OPAQUE	0
+#define BCM2835_MBOX_ALPHA_MODE_0_TRANSPARENT	1
+#define BCM2835_MBOX_ALPHA_MODE_IGNORED		2
+
+struct bcm2835_mbox_tag_alpha_mode {
+	struct bcm2835_mbox_tag_hdr tag_hdr;
+	union {
+		/* req not used for get */
+		struct {
+			u32 alpha;
+		} req;
+		struct {
+			u32 alpha;
+		} resp;
+	} body;
+};
+
+#define BCM2835_MBOX_TAG_GET_PITCH		0x00040008
+
+struct bcm2835_mbox_tag_pitch {
+	struct bcm2835_mbox_tag_hdr tag_hdr;
+	union {
+		struct {
+		} req;
+		struct {
+			u32 pitch;
+		} resp;
+	} body;
+};
+
+/* Offset of display window within buffer */
+#define BCM2835_MBOX_TAG_GET_VIRTUAL_OFFSET	0x00040009
+#define BCM2835_MBOX_TAG_TEST_VIRTUAL_OFFSET	0x00044009
+#define BCM2835_MBOX_TAG_SET_VIRTUAL_OFFSET	0x00048009
+
+struct bcm2835_mbox_tag_virtual_offset {
+	struct bcm2835_mbox_tag_hdr tag_hdr;
+	union {
+		/* req not used for get */
+		struct {
+			u32 x;
+			u32 y;
+		} req;
+		struct {
+			u32 x;
+			u32 y;
+		} resp;
+	} body;
+};
+
+#define BCM2835_MBOX_TAG_GET_OVERSCAN		0x0004000a
+#define BCM2835_MBOX_TAG_TEST_OVERSCAN		0x0004400a
+#define BCM2835_MBOX_TAG_SET_OVERSCAN		0x0004800a
+
+struct bcm2835_mbox_tag_overscan {
+	struct bcm2835_mbox_tag_hdr tag_hdr;
+	union {
+		/* req not used for get */
+		struct {
+			u32 top;
+			u32 bottom;
+			u32 left;
+			u32 right;
+		} req;
+		struct {
+			u32 top;
+			u32 bottom;
+			u32 left;
+		} resp;
+	} body;
+};
+
+#define BCM2835_MBOX_TAG_GET_PALETTE		0x0004000b
+
+struct bcm2835_mbox_tag_get_palette {
+	struct bcm2835_mbox_tag_hdr tag_hdr;
+	union {
+		struct {
+		} req;
+		struct {
+			u32 data[1024];
+		} resp;
+	} body;
+};
+
+#define BCM2835_MBOX_TAG_TEST_PALETTE		0x0004400b
+
+struct bcm2835_mbox_tag_test_palette {
+	struct bcm2835_mbox_tag_hdr tag_hdr;
+	union {
+		struct {
+			u32 offset;
+			u32 num_entries;
+			u32 data[256];
+		} req;
+		struct {
+			u32 is_invalid;
+		} resp;
+	} body;
+};
+
+#define BCM2835_MBOX_TAG_SET_PALETTE		0x0004800b
+
+struct bcm2835_mbox_tag_set_palette {
+	struct bcm2835_mbox_tag_hdr tag_hdr;
+	union {
+		struct {
+			u32 offset;
+			u32 num_entries;
+			u32 data[256];
+		} req;
+		struct {
+			u32 is_invalid;
+		} resp;
+	} body;
+};
+
+/*
+ * Pass a complete property-style buffer to the VC, and wait until it has
+ * been processed.
+ *
+ * This function expects a pointer to the mbox_hdr structure in an attempt
+ * to ensure some degree of type safety. However, some number of tags and
+ * a termination value are expected to immediately follow the header in
+ * memory, as required by the property protocol.
+ *
+ * Returns 0 for success, any other value for error.
+ */
+int bcm2835_mbox_call_prop(u32 chan, struct bcm2835_mbox_hdr *buffer);
+
+#endif
diff --git a/arch/arm/mach-bcm2835/mbox.c b/arch/arm/mach-bcm2835/mbox.c
new file mode 100644
index 0000000..2bca567
--- /dev/null
+++ b/arch/arm/mach-bcm2835/mbox.c
@@ -0,0 +1,152 @@
+/*
+ * based on U-Boot code
+ *
+ * (C) Copyright 2012 Stephen Warren
+ *
+ * SPDX-License-Identifier:	GPL-2.0+
+ */
+
+#include <asm/io.h>
+#include <asm/mmu.h>
+#include <common.h>
+#include <clock.h>
+
+#include <mach/mbox.h>
+
+#define TIMEOUT (MSECOND * 100) /* 100mS */
+
+static int bcm2835_mbox_call_raw(u32 chan, struct bcm2835_mbox_hdr *buffer,
+					u32 *recv)
+{
+	struct bcm2835_mbox_regs __iomem *regs =
+		(struct bcm2835_mbox_regs *)BCM2835_MBOX_PHYSADDR;
+	uint64_t starttime = get_time_ns();
+	u32 send = virt_to_phys(buffer);
+	u32 val;
+
+	if (send & BCM2835_CHAN_MASK) {
+		printf("mbox: Illegal mbox data 0x%08x\n", send);
+		return -EINVAL;
+	}
+
+	/* Drain any stale responses */
+	for (;;) {
+		val = readl(&regs->status);
+		if (val & BCM2835_MBOX_STATUS_RD_EMPTY)
+			break;
+		if (is_timeout(starttime, TIMEOUT)) {
+			printf("mbox: Timeout draining stale responses\n");
+			return -ETIMEDOUT;
+		}
+		val = readl(&regs->read);
+	}
+
+	/* Wait for space to send */
+	for (;;) {
+		val = readl(&regs->status);
+		if (!(val & BCM2835_MBOX_STATUS_WR_FULL))
+			break;
+		if (is_timeout(starttime, TIMEOUT)) {
+			printf("mbox: Timeout waiting for send space\n");
+			return -ETIMEDOUT;
+		}
+	}
+
+	/* Send the request */
+	val = BCM2835_MBOX_PACK(chan, send);
+	debug("mbox: TX raw: 0x%08x\n", val);
+	dma_flush_range(send, send + buffer->buf_size);
+	writel(val, &regs->write);
+
+	/* Wait for the response */
+	for (;;) {
+		val = readl(&regs->status);
+		if (!(val & BCM2835_MBOX_STATUS_RD_EMPTY))
+			break;
+		if (is_timeout(starttime, TIMEOUT)) {
+			printf("mbox: Timeout waiting for response\n");
+			return -ETIMEDOUT;
+		}
+	}
+
+	/* Read the response */
+	val = readl(&regs->read);
+	debug("mbox: RX raw: 0x%08x\n", val);
+	dma_inv_range(send, send + buffer->buf_size);
+
+	/* Validate the response */
+	if (BCM2835_MBOX_UNPACK_CHAN(val) != chan) {
+		printf("mbox: Response channel mismatch\n");
+		return -EIO;
+	}
+
+	*recv = BCM2835_MBOX_UNPACK_DATA(val);
+
+	return 0;
+}
+
+#ifdef DEBUG
+void dump_buf(struct bcm2835_mbox_hdr *buffer)
+{
+	u32 *p;
+	u32 words;
+	int i;
+
+	p = (u32 *)buffer;
+	words = buffer->buf_size / 4;
+	for (i = 0; i < words; i++)
+		printf("    0x%04x: 0x%08x\n", i * 4, p[i]);
+}
+#endif
+
+int bcm2835_mbox_call_prop(u32 chan, struct bcm2835_mbox_hdr *buffer)
+{
+	int ret;
+	u32 rbuffer;
+	struct bcm2835_mbox_tag_hdr *tag;
+	int tag_index;
+
+#ifdef DEBUG
+	printf("mbox: TX buffer\n");
+	dump_buf(buffer);
+#endif
+
+	ret = bcm2835_mbox_call_raw(chan, buffer, &rbuffer);
+	if (ret)
+		return ret;
+	if (rbuffer != (u32)buffer) {
+		printf("mbox: Response buffer mismatch\n");
+		return -EIO;
+	}
+
+#ifdef DEBUG
+	printf("mbox: RX buffer\n");
+	dump_buf(buffer);
+#endif
+
+	/* Validate overall response status */
+	if (buffer->code != BCM2835_MBOX_RESP_CODE_SUCCESS) {
+		printf("mbox: Header response code invalid\n");
+		return -EIO;
+	}
+
+	/* Validate each tag's response status */
+	tag = (void *)(buffer + 1);
+	tag_index = 0;
+	while (tag->tag) {
+		if (!(tag->val_len & BCM2835_MBOX_TAG_VAL_LEN_RESPONSE)) {
+			printf("mbox: Tag %d missing val_len response bit\n",
+				tag_index);
+			return -EIO;
+		}
+		/*
+		 * Clear the reponse bit so clients can just look right at the
+		 * length field without extra processing
+		 */
+		tag->val_len &= ~BCM2835_MBOX_TAG_VAL_LEN_RESPONSE;
+		tag = (void *)(((u8 *)tag) + sizeof(*tag) + tag->val_buf_size);
+		tag_index++;
+	}
+
+	return 0;
+}
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
