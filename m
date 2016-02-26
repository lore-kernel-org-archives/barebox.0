Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aZLHB-00067K-MJ
 for barebox@lists.infradead.org; Fri, 26 Feb 2016 16:30:06 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Fri, 26 Feb 2016 17:29:28 +0100
Message-Id: <1456504168-1206-5-git-send-email-s.trumtrar@pengutronix.de>
In-Reply-To: <1456504168-1206-1-git-send-email-s.trumtrar@pengutronix.de>
References: <1456504168-1206-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 5/5] crypto: add new mxc-scc driver
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

The Security Controller (SCC) is found on (at least) i.MX25 SoCs.
It is not a crypto engine in the usual sense. The only supported
algorithm in hardware is 3DES and the key is not configurable, but
is fused in the hardware.

The SCC can be handed some block of data in the red memory space
and it will return the encrypted data in the black memory space and
vice versa.

The API for this driver are the functions

  - mxc_scc_cbc_des_encrypt
  - mxc_scc_cbc_des_decrypt

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/crypto/Kconfig   |  17 ++
 drivers/crypto/Makefile  |   1 +
 drivers/crypto/mxc_scc.c | 502 +++++++++++++++++++++++++++++++++++++++++++++++
 include/crypto/mxc_scc.h |  12 ++
 4 files changed, 532 insertions(+)
 create mode 100644 drivers/crypto/Kconfig
 create mode 100644 drivers/crypto/Makefile
 create mode 100644 drivers/crypto/mxc_scc.c
 create mode 100644 include/crypto/mxc_scc.h

diff --git a/drivers/crypto/Kconfig b/drivers/crypto/Kconfig
new file mode 100644
index 000000000000..6ec137ef1b55
--- /dev/null
+++ b/drivers/crypto/Kconfig
@@ -0,0 +1,17 @@
+
+menuconfig CRYPTO_HW
+	bool "Hardware crypto devices"
+	help
+
+if CRYPTO_HW
+
+config CRYPTO_DEV_MXC_SCC
+	tristate "Support for Freescale Security Controller (SCC)"
+	depends on ARCH_IMX25 && OFTREE
+	select CRYPTO_BLKCIPHER
+	select CRYPTO_DES
+	help
+	  This option enables support for the Security Controller (SCC)
+	  found in Freescale i.MX25 chips.
+
+endif
diff --git a/drivers/crypto/Makefile b/drivers/crypto/Makefile
new file mode 100644
index 000000000000..9d3874f5220e
--- /dev/null
+++ b/drivers/crypto/Makefile
@@ -0,0 +1 @@
+obj-$(CONFIG_CRYPTO_DEV_MXC_SCC) += mxc_scc.o
diff --git a/drivers/crypto/mxc_scc.c b/drivers/crypto/mxc_scc.c
new file mode 100644
index 000000000000..e1601974afba
--- /dev/null
+++ b/drivers/crypto/mxc_scc.c
@@ -0,0 +1,502 @@
+/*
+ * Copyright (C) 2016 Pengutronix, Steffen Trumtrar <kernel@pengutronix.de>
+ *
+ * The driver is based on information gathered from
+ * drivers/mxc/security/mxc_scc.c which can be found in
+ * the Freescale linux-2.6-imx.git in the imx_2.6.35_maintain branch.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * version 2, as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+#include <common.h>
+#include <clock.h>
+#include <driver.h>
+#include <init.h>
+#include <io.h>
+#include <crypto.h>
+#include <crypto/mxc_scc.h>
+#include <linux/barebox-wrapper.h>
+#include <linux/clk.h>
+
+#include <crypto/des.h>
+
+/* Secure Memory (SCM) registers */
+#define SCC_SCM_RED_START		0x0000
+#define SCC_SCM_BLACK_START		0x0004
+#define SCC_SCM_LENGTH			0x0008
+#define SCC_SCM_CTRL			0x000C
+#define SCC_SCM_STATUS			0x0010
+#define SCC_SCM_ERROR_STATUS		0x0014
+#define SCC_SCM_INTR_CTRL		0x0018
+#define SCC_SCM_CFG			0x001C
+#define SCC_SCM_INIT_VECTOR_0		0x0020
+#define SCC_SCM_INIT_VECTOR_1		0x0024
+#define SCC_SCM_RED_MEMORY		0x0400
+#define SCC_SCM_BLACK_MEMORY		0x0800
+
+/* Security Monitor (SMN) Registers */
+#define SCC_SMN_STATUS			0x1000
+#define SCC_SMN_COMMAND			0x1004
+#define SCC_SMN_SEQ_START		0x1008
+#define SCC_SMN_SEQ_END			0x100C
+#define SCC_SMN_SEQ_CHECK		0x1010
+#define SCC_SMN_BIT_COUNT		0x1014
+#define SCC_SMN_BITBANK_INC_SIZE	0x1018
+#define SCC_SMN_BITBANK_DECREMENT	0x101C
+#define SCC_SMN_COMPARE_SIZE		0x1020
+#define SCC_SMN_PLAINTEXT_CHECK		0x1024
+#define SCC_SMN_CIPHERTEXT_CHECK	0x1028
+#define SCC_SMN_TIMER_IV		0x102C
+#define SCC_SMN_TIMER_CONTROL		0x1030
+#define SCC_SMN_DEBUG_DETECT_STAT	0x1034
+#define SCC_SMN_TIMER			0x1038
+
+#define SCC_SCM_CTRL_START_CIPHER	BIT(2)
+#define SCC_SCM_CTRL_CBC_MODE		BIT(1)
+#define SCC_SCM_CTRL_DECRYPT_MODE	BIT(0)
+
+#define SCC_SCM_STATUS_LEN_ERR		BIT(12)
+#define SCC_SCM_STATUS_SMN_UNBLOCKED	BIT(11)
+#define SCC_SCM_STATUS_CIPHERING_DONE	BIT(10)
+#define SCC_SCM_STATUS_ZEROIZING_DONE	BIT(9)
+#define SCC_SCM_STATUS_INTR_STATUS	BIT(8)
+#define SCC_SCM_STATUS_SEC_KEY		BIT(7)
+#define SCC_SCM_STATUS_INTERNAL_ERR	BIT(6)
+#define SCC_SCM_STATUS_BAD_SEC_KEY	BIT(5)
+#define SCC_SCM_STATUS_ZEROIZE_FAIL	BIT(4)
+#define SCC_SCM_STATUS_SMN_BLOCKED	BIT(3)
+#define SCC_SCM_STATUS_CIPHERING	BIT(2)
+#define SCC_SCM_STATUS_ZEROIZING	BIT(1)
+#define SCC_SCM_STATUS_BUSY		BIT(0)
+
+#define SCC_SMN_STATUS_STATE_MASK	0x0000001F
+#define SCC_SMN_STATE_START		0x0
+/* The SMN is zeroizing its RAM during reset */
+#define SCC_SMN_STATE_ZEROIZE_RAM	0x5
+/* SMN has passed internal checks */
+#define SCC_SMN_STATE_HEALTH_CHECK	0x6
+/* Fatal Security Violation. SMN is locked, SCM is inoperative. */
+#define SCC_SMN_STATE_FAIL		0x9
+/* SCC is in secure state. SCM is using secret key. */
+#define SCC_SMN_STATE_SECURE		0xA
+/* SCC is not secure. SCM is using default key. */
+#define SCC_SMN_STATE_NON_SECURE	0xC
+
+#define SCC_SCM_INTR_CTRL_ZEROIZE_MEM	BIT(2)
+#define SCC_SCM_INTR_CTRL_CLR_INTR	BIT(1)
+#define SCC_SCM_INTR_CTRL_MASK_INTR	BIT(0)
+
+/* Size, in blocks, of Red memory. */
+#define SCC_SCM_CFG_BLACK_SIZE_MASK	0x07fe0000
+#define SCC_SCM_CFG_BLACK_SIZE_SHIFT	17
+/* Size, in blocks, of Black memory. */
+#define SCC_SCM_CFG_RED_SIZE_MASK	0x0001ff80
+#define SCC_SCM_CFG_RED_SIZE_SHIFT	7
+/* Number of bytes per block. */
+#define SCC_SCM_CFG_BLOCK_SIZE_MASK	0x0000007f
+
+#define SCC_SMN_COMMAND_TAMPER_LOCK	BIT(4)
+#define SCC_SMN_COMMAND_CLR_INTR	BIT(3)
+#define SCC_SMN_COMMAND_CLR_BIT_BANK	BIT(2)
+#define SCC_SMN_COMMAND_EN_INTR		BIT(1)
+#define SCC_SMN_COMMAND_SET_SOFTWARE_ALARM  BIT(0)
+
+#define SCC_KEY_SLOTS			20
+#define SCC_MAX_KEY_SIZE		32
+#define SCC_KEY_SLOT_SIZE		32
+
+#define SCC_CRC_CCITT_START		0xFFFF
+
+#define memory_display_debug(addr, offs, nbytes, size, swab) \
+	({ \
+		(7) <= LOGLEVEL ? memory_display(addr, offs, nbytes, size, swab) : 0; \
+	})
+
+/*
+ * Offset into each RAM of the base of the area which is not
+ * used for Stored Keys.
+ */
+#define SCC_NON_RESERVED_OFFSET	(SCC_KEY_SLOTS * SCC_KEY_SLOT_SIZE)
+
+/* Fixed padding for appending to plaintext to fill out a block */
+static char scc_block_padding[8] = { 0x80, 0, 0, 0, 0, 0, 0, 0 };
+
+enum mxc_scc_state {
+	SCC_STATE_OK,
+	SCC_STATE_UNIMPLEMENTED,
+	SCC_STATE_FAILED
+};
+
+struct mxc_scc {
+	struct device_d	*dev;
+	void __iomem		*base;
+	struct clk		*clk;
+	struct ablkcipher_request *req;
+	unsigned int		block_size_bytes;
+	unsigned int		black_ram_size_blocks;
+	unsigned int		memory_size_bytes;
+	unsigned int		bytes_remaining;
+
+	void __iomem		*red_memory;
+	void __iomem		*black_memory;
+};
+
+struct mxc_scc_ctx {
+	struct mxc_scc		*scc;
+	unsigned int		offset;
+	unsigned int		size;
+	unsigned int		ctrl;
+};
+
+static struct mxc_scc *scc_dev;
+
+static int mxc_scc_get_data(struct mxc_scc_ctx *ctx,
+			    struct ablkcipher_request *ablkreq)
+{
+	struct mxc_scc *scc = ctx->scc;
+	void __iomem *from;
+
+	if (ctx->ctrl & SCC_SCM_CTRL_DECRYPT_MODE)
+		from = scc->red_memory;
+	else
+		from = scc->black_memory;
+
+	memcpy(ablkreq->dst, from + ctx->offset, ctx->size);
+
+	pr_debug("GET_DATA:\n");
+	memory_display_debug(from, 0, ctx->size, 0x40 >> 3, 0);
+
+	ctx->offset += ctx->size;
+
+	if (ctx->offset < ablkreq->nbytes)
+		return -EINPROGRESS;
+
+	return 0;
+}
+
+static int mxc_scc_ablkcipher_req_init(struct ablkcipher_request *req,
+				       struct mxc_scc_ctx *ctx)
+{
+	ctx->size = 0;
+	ctx->offset = 0;
+
+	return 0;
+}
+
+static int mxc_scc_put_data(struct mxc_scc_ctx *ctx,
+			    struct ablkcipher_request *req)
+{
+	u8 padding_buffer[sizeof(u16) + sizeof(scc_block_padding)];
+	size_t len = min(req->nbytes - ctx->offset, ctx->scc->bytes_remaining);
+	unsigned int padding_byte_count = 0;
+	struct mxc_scc *scc = ctx->scc;
+	void __iomem *to;
+
+	if (ctx->ctrl & SCC_SCM_CTRL_DECRYPT_MODE)
+		to = scc->black_memory;
+	else
+		to = scc->red_memory;
+
+	if (ctx->ctrl & SCC_SCM_CTRL_CBC_MODE) {
+		dev_dbg(scc->dev, "set IV@0x%p\n", scc->base + SCC_SCM_INIT_VECTOR_0);
+		memcpy(scc->base + SCC_SCM_INIT_VECTOR_0, req->info,
+		       scc->block_size_bytes);
+	}
+
+	memcpy(to, req->src + ctx->offset, len);
+
+	ctx->size = len;
+
+	scc->bytes_remaining -= len;
+
+	padding_byte_count = ((len + scc->block_size_bytes - 1) &
+			      ~(scc->block_size_bytes-1)) - len;
+
+	if (padding_byte_count) {
+		memcpy(padding_buffer, scc_block_padding, padding_byte_count);
+		memcpy(to + len, padding_buffer, padding_byte_count);
+		ctx->size += padding_byte_count;
+	}
+
+	dev_dbg(scc->dev, "copied %d bytes to 0x%p\n", ctx->size, to);
+	pr_debug("IV:\n");
+	memory_display_debug(scc->base + SCC_SCM_INIT_VECTOR_0, 0, scc->block_size_bytes,
+			     0x40 >> 3, 0);
+	pr_debug("DATA:\n");
+	memory_display_debug(to, 0, ctx->size, 0x40 >> 3, 0);
+
+	return 0;
+}
+
+static int mxc_scc_ablkcipher_next(struct mxc_scc_ctx *ctx,
+				   struct ablkcipher_request *ablkreq)
+{
+	struct mxc_scc *scc = ctx->scc;
+	int err;
+
+	writel(0, scc->base + SCC_SCM_ERROR_STATUS);
+
+	err = mxc_scc_put_data(ctx, ablkreq);
+	if (err)
+		return err;
+
+	dev_dbg(scc->dev, "Start encryption (0x%p/0x%p)\n",
+		(void *)readl(scc->base + SCC_SCM_RED_START),
+		(void *)readl(scc->base + SCC_SCM_BLACK_START));
+
+	/* clear interrupt control registers */
+	writel(SCC_SCM_INTR_CTRL_CLR_INTR,
+	       scc->base + SCC_SCM_INTR_CTRL);
+
+	writel((ctx->size / ctx->scc->block_size_bytes) - 1,
+	       scc->base + SCC_SCM_LENGTH);
+
+	dev_dbg(scc->dev, "Process %d block(s) in 0x%p\n",
+		ctx->size / ctx->scc->block_size_bytes,
+		(ctx->ctrl & SCC_SCM_CTRL_DECRYPT_MODE) ? scc->black_memory :
+		scc->red_memory);
+
+	writel(ctx->ctrl, scc->base + SCC_SCM_CTRL);
+
+	return 0;
+}
+
+static int mxc_scc_int(struct mxc_scc_ctx *ctx)
+{
+	struct ablkcipher_request *ablkreq;
+	struct mxc_scc *scc = ctx->scc;
+	uint64_t start;
+
+	start = get_time_ns();
+	while (readl(scc->base + SCC_SCM_STATUS) & SCC_SCM_STATUS_BUSY) {
+		if (is_timeout(start, 100 * MSECOND)) {
+			dev_err(scc->dev, "timeout waiting for interrupt\n");
+			return -ETIMEDOUT;
+		}
+	}
+
+	/* clear interrupt control registers */
+	writel(SCC_SCM_INTR_CTRL_CLR_INTR, scc->base + SCC_SCM_INTR_CTRL);
+
+	ablkreq = scc->req;
+
+	if (ablkreq)
+		return mxc_scc_get_data(ctx, ablkreq);
+
+	return 0;
+}
+
+static int mxc_scc_process_req(struct mxc_scc_ctx *ctx,
+			       struct ablkcipher_request *ablkreq)
+{
+	int ret = -EINPROGRESS;
+
+	ctx->scc->req = ablkreq;
+
+	while (ret == -EINPROGRESS) {
+		ret = mxc_scc_ablkcipher_next(ctx, ablkreq);
+		if (ret)
+			break;
+		ret = mxc_scc_int(ctx);
+	}
+
+	ctx->scc->req = NULL;
+	ctx->scc->bytes_remaining = ctx->scc->memory_size_bytes;
+
+	return 0;
+}
+
+static int mxc_scc_des3_op(struct mxc_scc_ctx *ctx,
+			   struct ablkcipher_request *req)
+{
+	int err;
+
+	err = mxc_scc_ablkcipher_req_init(req, ctx);
+	if (err)
+		return err;
+
+	return mxc_scc_process_req(ctx, req);
+}
+
+int mxc_scc_cbc_des_encrypt(struct ablkcipher_request *req)
+{
+	struct mxc_scc_ctx *ctx;
+
+	ctx = xzalloc(sizeof(*ctx));
+	ctx->scc = scc_dev;
+
+	ctx->ctrl = SCC_SCM_CTRL_START_CIPHER;
+	ctx->ctrl |= SCC_SCM_CTRL_CBC_MODE;
+
+	return mxc_scc_des3_op(ctx, req);
+}
+
+int mxc_scc_cbc_des_decrypt(struct ablkcipher_request *req)
+{
+	struct mxc_scc_ctx *ctx;
+
+	ctx = xzalloc(sizeof(*ctx));
+	ctx->scc = scc_dev;
+
+	ctx->ctrl = SCC_SCM_CTRL_START_CIPHER;
+	ctx->ctrl |= SCC_SCM_CTRL_CBC_MODE;
+	ctx->ctrl |= SCC_SCM_CTRL_DECRYPT_MODE;
+
+	return mxc_scc_des3_op(ctx, req);
+}
+
+static void mxc_scc_hw_init(struct mxc_scc *scc)
+{
+	int offset;
+
+	offset = SCC_NON_RESERVED_OFFSET / scc->block_size_bytes;
+
+	/* Fill the RED_START register */
+	writel(offset, scc->base + SCC_SCM_RED_START);
+
+	/* Fill the BLACK_START register */
+	writel(offset, scc->base + SCC_SCM_BLACK_START);
+
+	scc->red_memory = scc->base + SCC_SCM_RED_MEMORY +
+			  SCC_NON_RESERVED_OFFSET;
+
+	scc->black_memory = scc->base + SCC_SCM_BLACK_MEMORY +
+			    SCC_NON_RESERVED_OFFSET;
+
+	scc->bytes_remaining = scc->memory_size_bytes;
+}
+
+static int mxc_scc_get_config(struct mxc_scc *scc)
+{
+	int config;
+
+	config = readl(scc->base + SCC_SCM_CFG);
+
+	scc->block_size_bytes = config & SCC_SCM_CFG_BLOCK_SIZE_MASK;
+
+	scc->black_ram_size_blocks = config & SCC_SCM_CFG_BLACK_SIZE_MASK;
+
+	scc->memory_size_bytes = (scc->block_size_bytes *
+				  scc->black_ram_size_blocks) -
+				  SCC_NON_RESERVED_OFFSET;
+
+	return 0;
+}
+
+static enum mxc_scc_state mxc_scc_get_state(struct mxc_scc *scc)
+{
+	enum mxc_scc_state state;
+	int status;
+
+	status = readl(scc->base + SCC_SMN_STATUS) &
+		       SCC_SMN_STATUS_STATE_MASK;
+
+	/* If in Health Check, try to bringup to secure state */
+	if (status & SCC_SMN_STATE_HEALTH_CHECK) {
+		/*
+		 * Write a simple algorithm to the Algorithm Sequence
+		 * Checker (ASC)
+		 */
+		writel(0xaaaa, scc->base + SCC_SMN_SEQ_START);
+		writel(0x5555, scc->base + SCC_SMN_SEQ_END);
+		writel(0x5555, scc->base + SCC_SMN_SEQ_CHECK);
+
+		status = readl(scc->base + SCC_SMN_STATUS) &
+			       SCC_SMN_STATUS_STATE_MASK;
+	}
+
+	switch (status) {
+	case SCC_SMN_STATE_NON_SECURE:
+	case SCC_SMN_STATE_SECURE:
+		state = SCC_STATE_OK;
+		break;
+	case SCC_SMN_STATE_FAIL:
+		state = SCC_STATE_FAILED;
+		break;
+	default:
+		state = SCC_STATE_UNIMPLEMENTED;
+		break;
+	}
+
+	return state;
+}
+
+static int mxc_scc_probe(struct device_d *dev)
+{
+	struct mxc_scc *scc;
+	enum mxc_scc_state state;
+	int ret;
+
+	scc = xzalloc(sizeof(*scc));
+
+	scc->base = dev_request_mem_region(dev, 0);
+	if (IS_ERR(scc->base))
+		return PTR_ERR(scc->base);
+
+	scc->clk = clk_get(dev, "ipg");
+	if (IS_ERR(scc->clk)) {
+		dev_err(dev, "Could not get ipg clock\n");
+		return PTR_ERR(scc->clk);
+	}
+
+	clk_enable(scc->clk);
+
+	/* clear error status register */
+
+	writel(0x0, scc->base + SCC_SCM_ERROR_STATUS);
+
+	/* clear interrupt control registers */
+	writel(SCC_SCM_INTR_CTRL_CLR_INTR |
+	       SCC_SCM_INTR_CTRL_MASK_INTR,
+	       scc->base + SCC_SCM_INTR_CTRL);
+
+	writel(SCC_SMN_COMMAND_CLR_INTR |
+	       SCC_SMN_COMMAND_EN_INTR,
+	       scc->base + SCC_SMN_COMMAND);
+
+	scc->dev = dev;
+
+	ret = mxc_scc_get_config(scc);
+	if (ret)
+		goto err_out;
+
+	state = mxc_scc_get_state(scc);
+
+	if (state != SCC_STATE_OK) {
+		dev_err(dev, "SCC in unusable state %d\n", state);
+		ret = -EINVAL;
+		goto err_out;
+	}
+
+	mxc_scc_hw_init(scc);
+
+	scc_dev = scc;
+
+	dev_info(dev, "registered successfully.\n");
+
+	return 0;
+
+err_out:
+	clk_disable(scc->clk);
+
+	return ret;
+}
+
+static __maybe_unused struct of_device_id mxc_scc_dt_ids[] = {
+	{ .compatible = "fsl,imx25-scc", },
+	{ /* sentinel */ }
+};
+
+static struct driver_d mxc_scc_driver = {
+	.name		= "mxc-scc",
+	.probe		= mxc_scc_probe,
+	.of_compatible	= mxc_scc_dt_ids,
+};
+device_platform_driver(mxc_scc_driver);
diff --git a/include/crypto/mxc_scc.h b/include/crypto/mxc_scc.h
new file mode 100644
index 000000000000..3c6bc2e2085e
--- /dev/null
+++ b/include/crypto/mxc_scc.h
@@ -0,0 +1,12 @@
+/*
+ * Copyright (C) 2016 Pengutronix, Steffen Trumtrar <kernel@pengutronix.de>
+ *
+ * This program is free software; you can redistribute it and/or modify it under
+ * the terms of the GNU General Public License version 2 as published by the
+ * Free Software Foundation.
+ */
+
+struct ablkcipher_request;
+
+int mxc_scc_cbc_des_encrypt(struct ablkcipher_request *req);
+int mxc_scc_cbc_des_decrypt(struct ablkcipher_request *req);
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
