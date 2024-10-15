Delivery-date: Tue, 15 Oct 2024 13:21:37 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0fcP-004dmb-30
	for lore@lore.pengutronix.de;
	Tue, 15 Oct 2024 13:21:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0fcO-0000Nq-A6
	for lore@pengutronix.de; Tue, 15 Oct 2024 13:21:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nOVjrw3zgDQNdriw/TOnZTO9O1wjng5EUlAeVi8ruMo=; b=C8OWo3XZWweMvU8o5o6qlokME/
	/eHT9HXK3e+FcmL79koidm1epbniITDeyTk9IVgrUnv2KtDZfOJTm/ayv6njEcE57TE4T4WHDjGnU
	rerzlyk/mFZDQcwWL/+/WV4RyBpTf/xG5kFXqX3vKDgezlbEW+lLSuyrJ369o8C2euFO4TMSEygvP
	pClHsGsFVy/IUFjmBHYF82PbUpwTDv0Dk2/0UNO9/4pJCFHyeMiT0iCV8m9fUzvrXL8SKs9jvzPTM
	dGCU0E/+rlblNfO2pcUBkiQqnCioMWl6QzguxASER+Y8SAhD70zc0vBdTpJ6ryryewPTlaroh9r0n
	iuJLHHGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0fbc-00000007zkP-3luC;
	Tue, 15 Oct 2024 11:20:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0fSK-00000007yGR-2z4A
	for barebox@lists.infradead.org;
	Tue, 15 Oct 2024 11:11:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t0fSB-0007ue-H8; Tue, 15 Oct 2024 13:11:03 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t0fSB-00219B-05; Tue, 15 Oct 2024 13:11:03 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t0fSA-000ubB-33;
	Tue, 15 Oct 2024 13:11:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 15 Oct 2024 13:10:58 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241015-rockchip-spi-rk808-v1-1-e276b4b59603@pengutronix.de>
References: <20241015-rockchip-spi-rk808-v1-0-e276b4b59603@pengutronix.de>
In-Reply-To: <20241015-rockchip-spi-rk808-v1-0-e276b4b59603@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1728990662; l=17342;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=FKVS+0UX9oaCuhc01MQEIF3Sh+4AKW8WwX4Q6+NWcn8=;
 b=x5M4HMDu1b+FP9eSnTKUR1QSaOF9fMgFcaD84Lh3B3VFy/Pihdiev1ztSRllrmOswR/j1zKvC
 Wh+PzdXGxZlBDtzLC6n7NitAamGp+Bn2dfRBupMTmrR4oSBUcmCJali
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241015_041113_126434_CBDC9A66 
X-CRM114-Status: GOOD (  27.25  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/7] spi: add rockchip spi controller support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This adds support for the SPI controller found on many Rockchip SoCs.
The driver is based on the corresponding Linux driver as of
Linux-6.12-rc1.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/spi/Makefile       |   1 +
 drivers/spi/spi-rockchip.c | 584 +++++++++++++++++++++++++++++++++++++++++++++
 include/spi/spi.h          |   7 +
 3 files changed, 592 insertions(+)

diff --git a/drivers/spi/Makefile b/drivers/spi/Makefile
index 68a8c4e675..f9aefdfe45 100644
--- a/drivers/spi/Makefile
+++ b/drivers/spi/Makefile
@@ -17,3 +17,4 @@ obj-$(CONFIG_SPI_ZYNQ_QSPI) += zynq_qspi.o
 obj-$(CONFIG_SPI_NXP_FLEXSPI) += spi-nxp-fspi.o
 obj-$(CONFIG_DRIVER_SPI_STM32) += stm32_spi.o
 obj-$(CONFIG_SPI_SIFIVE) += spi-sifive.o
+obj-y += spi-rockchip.o
diff --git a/drivers/spi/spi-rockchip.c b/drivers/spi/spi-rockchip.c
new file mode 100644
index 0000000000..1e81e9393f
--- /dev/null
+++ b/drivers/spi/spi-rockchip.c
@@ -0,0 +1,584 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (c) 2014, Fuzhou Rockchip Electronics Co., Ltd
+ * Author: Addy Ke <addy.ke@rock-chips.com>
+ */
+
+#include <common.h>
+#include <linux/clk.h>
+#include <driver.h>
+#include <errno.h>
+#include <spi/spi.h>
+#include <linux/spi/spi-mem.h>
+#include <linux/bitops.h>
+#include <clock.h>
+#include <gpio.h>
+#include <of_gpio.h>
+#include <linux/bitfield.h>
+#include <linux/iopoll.h>
+
+#define DRIVER_NAME "rockchip-spi"
+
+#define ROCKCHIP_SPI_CLR_BITS(reg, bits) \
+		writel_relaxed(readl_relaxed(reg) & ~(bits), reg)
+#define ROCKCHIP_SPI_SET_BITS(reg, bits) \
+		writel_relaxed(readl_relaxed(reg) | (bits), reg)
+
+/* SPI register offsets */
+#define ROCKCHIP_SPI_CTRLR0			0x0000
+#define ROCKCHIP_SPI_CTRLR1			0x0004
+#define ROCKCHIP_SPI_SSIENR			0x0008
+#define ROCKCHIP_SPI_SER			0x000c
+#define ROCKCHIP_SPI_BAUDR			0x0010
+#define ROCKCHIP_SPI_TXFTLR			0x0014
+#define ROCKCHIP_SPI_RXFTLR			0x0018
+#define ROCKCHIP_SPI_TXFLR			0x001c
+#define ROCKCHIP_SPI_RXFLR			0x0020
+#define ROCKCHIP_SPI_SR				0x0024
+#define ROCKCHIP_SPI_IPR			0x0028
+#define ROCKCHIP_SPI_IMR			0x002c
+#define ROCKCHIP_SPI_ISR			0x0030
+#define ROCKCHIP_SPI_RISR			0x0034
+#define ROCKCHIP_SPI_ICR			0x0038
+#define ROCKCHIP_SPI_DMACR			0x003c
+#define ROCKCHIP_SPI_DMATDLR			0x0040
+#define ROCKCHIP_SPI_DMARDLR			0x0044
+#define ROCKCHIP_SPI_VERSION			0x0048
+#define ROCKCHIP_SPI_TXDR			0x0400
+#define ROCKCHIP_SPI_RXDR			0x0800
+
+/* Bit fields in CTRLR0 */
+#define CR0_DFS_OFFSET				0
+#define CR0_DFS_4BIT				0x0
+#define CR0_DFS_8BIT				0x1
+#define CR0_DFS_16BIT				0x2
+
+#define CR0_CFS_OFFSET				2
+
+#define CR0_SCPH_OFFSET				6
+
+#define CR0_SCPOL_OFFSET			7
+
+#define CR0_CSM_OFFSET				8
+#define CR0_CSM_KEEP				0x0
+/* ss_n be high for half sclk_out cycles */
+#define CR0_CSM_HALF				0X1
+/* ss_n be high for one sclk_out cycle */
+#define CR0_CSM_ONE					0x2
+
+/* ss_n to sclk_out delay */
+#define CR0_SSD_OFFSET				10
+/*
+ * The period between ss_n active and
+ * sclk_out active is half sclk_out cycles
+ */
+#define CR0_SSD_HALF				0x0
+/*
+ * The period between ss_n active and
+ * sclk_out active is one sclk_out cycle
+ */
+#define CR0_SSD_ONE					0x1
+
+#define CR0_EM_OFFSET				11
+#define CR0_EM_LITTLE				0x0
+#define CR0_EM_BIG					0x1
+
+#define CR0_FBM_OFFSET				12
+#define CR0_FBM_MSB					0x0
+#define CR0_FBM_LSB					0x1
+
+#define CR0_BHT_OFFSET				13
+#define CR0_BHT_16BIT				0x0
+#define CR0_BHT_8BIT				0x1
+
+#define CR0_RSD_OFFSET				14
+#define CR0_RSD_MAX				0x3
+
+#define CR0_FRF_OFFSET				16
+#define CR0_FRF_SPI					0x0
+#define CR0_FRF_SSP					0x1
+#define CR0_FRF_MICROWIRE			0x2
+
+#define CR0_XFM_OFFSET				18
+#define CR0_XFM_MASK				(0x03 << SPI_XFM_OFFSET)
+#define CR0_XFM_TR					0x0
+#define CR0_XFM_TO					0x1
+#define CR0_XFM_RO					0x2
+
+#define CR0_OPM_OFFSET				20
+#define CR0_OPM_HOST				0x0
+#define CR0_OPM_TARGET				0x1
+
+#define CR0_SOI_OFFSET				23
+
+#define CR0_MTM_OFFSET				0x21
+
+/* Bit fields in SER, 2bit */
+#define SER_MASK					0x3
+
+/* Bit fields in BAUDR */
+#define BAUDR_SCKDV_MIN				2
+#define BAUDR_SCKDV_MAX				65534
+
+/* Bit fields in SR, 6bit */
+#define SR_MASK						0x3f
+#define SR_BUSY						(1 << 0)
+#define SR_TF_FULL					(1 << 1)
+#define SR_TF_EMPTY					(1 << 2)
+#define SR_RF_EMPTY					(1 << 3)
+#define SR_RF_FULL					(1 << 4)
+#define SR_TARGET_TX_BUSY				(1 << 5)
+
+/* Bit fields in ISR, IMR, ISR, RISR, 5bit */
+#define INT_MASK					0x1f
+#define INT_TF_EMPTY				(1 << 0)
+#define INT_TF_OVERFLOW				(1 << 1)
+#define INT_RF_UNDERFLOW			(1 << 2)
+#define INT_RF_OVERFLOW				(1 << 3)
+#define INT_RF_FULL				(1 << 4)
+#define INT_CS_INACTIVE				(1 << 6)
+
+/* Bit fields in ICR, 4bit */
+#define ICR_MASK					0x0f
+#define ICR_ALL						(1 << 0)
+#define ICR_RF_UNDERFLOW			(1 << 1)
+#define ICR_RF_OVERFLOW				(1 << 2)
+#define ICR_TF_OVERFLOW				(1 << 3)
+
+/* Bit fields in DMACR */
+#define RF_DMA_EN					(1 << 0)
+#define TF_DMA_EN					(1 << 1)
+
+/* Driver state flags */
+#define RXDMA					(1 << 0)
+#define TXDMA					(1 << 1)
+
+/* sclk_out: spi host internal logic in rk3x can support 50Mhz */
+#define MAX_SCLK_OUT				50000000U
+
+/*
+ * SPI_CTRLR1 is 16-bits, so we should support lengths of 0xffff + 1. However,
+ * the controller seems to hang when given 0x10000, so stick with this for now.
+ */
+#define ROCKCHIP_SPI_MAX_TRANLEN		0xffff
+
+#define ROCKCHIP_SPI_MAX_NATIVE_CS_NUM		2
+#define ROCKCHIP_SPI_VER2_TYPE1			0x05EC0002
+#define ROCKCHIP_SPI_VER2_TYPE2			0x00110002
+
+#define ROCKCHIP_AUTOSUSPEND_TIMEOUT		2000
+
+struct rockchip_spi {
+	struct spi_controller ctlr;
+	struct device *dev;
+
+	struct clk *spiclk;
+	struct clk *apb_pclk;
+
+	void __iomem *regs;
+
+	/*depth of the FIFO buffer */
+	u32 fifo_len;
+	/* frequency of spiclk */
+	u32 freq;
+
+	u8 rsd;
+
+	bool cs_high_supported; /* native CS supports active-high polarity */
+
+	struct spi_transfer *xfer; /* Store xfer temporarily */
+};
+
+static inline void spi_enable_chip(struct rockchip_spi *rs, bool enable)
+{
+	writel_relaxed((enable ? 1U : 0U), rs->regs + ROCKCHIP_SPI_SSIENR);
+}
+
+static inline void wait_for_tx_idle(struct rockchip_spi *rs, bool target_mode)
+{
+	u64 start = get_time_ns();
+
+	do {
+		if (target_mode) {
+			if (!(readl_relaxed(rs->regs + ROCKCHIP_SPI_SR) & SR_TARGET_TX_BUSY) &&
+			    !((readl_relaxed(rs->regs + ROCKCHIP_SPI_SR) & SR_BUSY)))
+				return;
+		} else {
+			if (!(readl_relaxed(rs->regs + ROCKCHIP_SPI_SR) & SR_BUSY))
+				return;
+		}
+	} while (!is_timeout(start, 5 * MSECOND));
+
+	dev_warn(rs->dev, "spi controller is in busy state!\n");
+}
+
+static u32 get_fifo_len(struct rockchip_spi *rs)
+{
+	u32 ver;
+
+	ver = readl_relaxed(rs->regs + ROCKCHIP_SPI_VERSION);
+
+	switch (ver) {
+	case ROCKCHIP_SPI_VER2_TYPE1:
+	case ROCKCHIP_SPI_VER2_TYPE2:
+		return 64;
+	default:
+		return 32;
+	}
+}
+
+static inline struct gpio_desc *spi_get_csgpiod(const struct spi_device *spi, u8 idx)
+{
+	return NULL;
+}
+
+static void rockchip_spi_set_cs(struct spi_device *spi, bool enable)
+{
+	struct spi_controller *ctlr = spi->controller;
+	struct rockchip_spi *rs = spi_controller_get_devdata(ctlr);
+	bool cs_asserted = spi->mode & SPI_CS_HIGH ? !enable : enable;
+
+	if (cs_asserted) {
+		if (spi_get_csgpiod(spi, 0))
+			ROCKCHIP_SPI_SET_BITS(rs->regs + ROCKCHIP_SPI_SER, 1);
+		else
+			ROCKCHIP_SPI_SET_BITS(rs->regs + ROCKCHIP_SPI_SER,
+					      BIT(spi_get_chipselect(spi, 0)));
+	} else {
+		if (spi_get_csgpiod(spi, 0))
+			ROCKCHIP_SPI_CLR_BITS(rs->regs + ROCKCHIP_SPI_SER, 1);
+		else
+			ROCKCHIP_SPI_CLR_BITS(rs->regs + ROCKCHIP_SPI_SER,
+					      BIT(spi_get_chipselect(spi, 0)));
+	}
+}
+
+static int rockchip_spi_pio(struct rockchip_spi *rs, struct spi_transfer *xfer)
+{
+	int bytes_per_word = xfer->bits_per_word <= 8 ? 1 : 2;
+	const void *txbuf = xfer->tx_buf;
+	void *rxbuf = xfer->rx_buf;
+	int rxwords, txwords;
+
+	txwords = rxwords = xfer->len / bytes_per_word;
+
+	while (1) {
+		unsigned int fifowords = readl_relaxed(rs->regs + ROCKCHIP_SPI_TXFLR);
+		unsigned int tx_free = rs->fifo_len - fifowords;
+
+		if (tx_free && txwords) {
+			u32 txw;
+
+			if (!txbuf)
+				txw = 0;
+			else if (bytes_per_word == 1)
+				txw = *(u8 *)txbuf;
+			else
+				txw = *(u16 *)txbuf;
+
+			writel_relaxed(txw, rs->regs + ROCKCHIP_SPI_TXDR);
+
+			if (txbuf)
+				txbuf += bytes_per_word;
+
+			txwords--;
+		}
+
+		fifowords = readl_relaxed(rs->regs + ROCKCHIP_SPI_RXFLR);
+
+		if (fifowords) {
+			u32 rxw = readl_relaxed(rs->regs + ROCKCHIP_SPI_RXDR);
+
+			if (rxbuf) {
+				if (bytes_per_word == 1)
+					*(u8 *)rxbuf = (u8)rxw;
+				else
+					*(u16 *)rxbuf = (u16)rxw;
+				rxbuf += bytes_per_word;
+			}
+			
+			rxwords--;
+		}
+
+		if (!rxwords)
+			return 0;
+	}
+}
+
+static int rockchip_spi_config(struct rockchip_spi *rs,
+		struct spi_device *spi, struct spi_transfer *xfer)
+{
+	u32 cr0 = CR0_FRF_SPI  << CR0_FRF_OFFSET
+		| CR0_BHT_8BIT << CR0_BHT_OFFSET
+		| CR0_SSD_ONE  << CR0_SSD_OFFSET
+		| CR0_EM_BIG   << CR0_EM_OFFSET;
+
+	cr0 |= rs->rsd << CR0_RSD_OFFSET;
+	cr0 |= (spi->mode & 0x3U) << CR0_SCPH_OFFSET;
+	if (spi->mode & SPI_LSB_FIRST)
+		cr0 |= CR0_FBM_LSB << CR0_FBM_OFFSET;
+	if (spi->mode & SPI_CS_HIGH)
+		cr0 |= BIT(spi_get_chipselect(spi, 0)) << CR0_SOI_OFFSET;
+
+	if (xfer->rx_buf && xfer->tx_buf)
+		cr0 |= CR0_XFM_TR << CR0_XFM_OFFSET;
+	else if (xfer->rx_buf)
+		cr0 |= CR0_XFM_RO << CR0_XFM_OFFSET;
+
+	cr0 |= CR0_XFM_TR << CR0_XFM_OFFSET;
+
+	switch (xfer->bits_per_word) {
+	case 4:
+		cr0 |= CR0_DFS_4BIT << CR0_DFS_OFFSET;
+		break;
+	case 8:
+		cr0 |= CR0_DFS_8BIT << CR0_DFS_OFFSET;
+		break;
+	case 16:
+		cr0 |= CR0_DFS_16BIT << CR0_DFS_OFFSET;
+		break;
+	default:
+		/* we only whitelist 4, 8 and 16 bit words in
+		 * ctlr->bits_per_word_mask, so this shouldn't
+		 * happen
+		 */
+		dev_err(rs->dev, "unknown bits per word: %d\n",
+			xfer->bits_per_word);
+		return -EINVAL;
+	}
+
+	writel_relaxed(cr0, rs->regs + ROCKCHIP_SPI_CTRLR0);
+
+	/* the hardware only supports an even clock divisor, so
+	 * round divisor = spiclk / speed up to nearest even number
+	 * so that the resulting speed is <= the requested speed
+	 */
+	writel_relaxed(2 * DIV_ROUND_UP(rs->freq, 2 * xfer->speed_hz),
+			rs->regs + ROCKCHIP_SPI_BAUDR);
+
+	return 0;
+}
+
+static size_t rockchip_spi_max_transfer_size(struct spi_device *spi)
+{
+	return ROCKCHIP_SPI_MAX_TRANLEN;
+}
+
+static int rockchip_spi_transfer_one(
+		struct rockchip_spi *rs,
+		struct spi_device *spi,
+		struct spi_transfer *xfer)
+{
+	int ret;
+
+	/* Zero length transfers won't trigger an interrupt on completion */
+	if (!xfer->len)
+		return 1;
+
+	if (!xfer->tx_buf && !xfer->rx_buf) {
+		dev_err(rs->dev, "No buffer for transfer\n");
+		return -EINVAL;
+	}
+
+	if (xfer->len > ROCKCHIP_SPI_MAX_TRANLEN) {
+		dev_err(rs->dev, "Transfer is too long (%d)\n", xfer->len);
+		return -EINVAL;
+	}
+
+	ret = rockchip_spi_config(rs, spi, xfer);
+	if (ret)
+		return ret;
+
+	spi_enable_chip(rs, true);
+	rockchip_spi_pio(rs, xfer);
+	spi_enable_chip(rs, false);
+
+	return 0;
+}
+
+static int rockchip_spi_transfer(struct spi_device *spi_dev, struct spi_message *msg)
+{
+	struct rockchip_spi *rs = spi_controller_get_devdata(spi_dev->controller);
+	struct spi_transfer *t;
+	int ret = 0;
+
+	if (list_empty(&msg->transfers))
+		return 0;
+
+	rockchip_spi_set_cs(spi_dev, true);
+
+	msg->actual_length = 0;
+
+	list_for_each_entry(t, &msg->transfers, transfer_list) {
+		dev_dbg(rs->dev, "  xfer %p: len %u tx %p rx %p\n",
+			t, t->len, t->tx_buf, t->rx_buf);
+
+		ret = rockchip_spi_transfer_one(rs, spi_dev, t);
+		if (ret < 0)
+			goto out;
+		msg->actual_length += t->len;
+	}
+
+out:
+	rockchip_spi_set_cs(spi_dev, false);
+	return ret;
+}
+
+static int rockchip_spi_setup(struct spi_device *spi)
+{
+	struct rockchip_spi *rs = spi_controller_get_devdata(spi->controller);
+	u32 cr0;
+
+	if (!spi_get_csgpiod(spi, 0) && (spi->mode & SPI_CS_HIGH) && !rs->cs_high_supported) {
+		dev_warn(&spi->dev, "setup: non GPIO CS can't be active-high\n");
+		return -EINVAL;
+	}
+
+	cr0 = readl_relaxed(rs->regs + ROCKCHIP_SPI_CTRLR0);
+
+	cr0 &= ~(0x3 << CR0_SCPH_OFFSET);
+	cr0 |= ((spi->mode & 0x3) << CR0_SCPH_OFFSET);
+	if (spi->mode & SPI_CS_HIGH && spi_get_chipselect(spi, 0) <= 1)
+		cr0 |= BIT(spi_get_chipselect(spi, 0)) << CR0_SOI_OFFSET;
+	else if (spi_get_chipselect(spi, 0) <= 1)
+		cr0 &= ~(BIT(spi_get_chipselect(spi, 0)) << CR0_SOI_OFFSET);
+
+	writel_relaxed(cr0, rs->regs + ROCKCHIP_SPI_CTRLR0);
+
+	return 0;
+}
+
+static int rockchip_spi_probe(struct device *dev)
+{
+	int ret;
+	struct rockchip_spi *rs;
+	struct spi_controller *ctlr;
+	struct device_node *np = dev->of_node;
+	u32 rsd_nsecs, num_cs;
+	bool target_mode;
+	struct resource *iores;
+
+	target_mode = of_property_read_bool(np, "spi-slave");
+	if (target_mode)
+		return 0;
+
+	rs = xzalloc(sizeof(*rs));
+	ctlr = &rs->ctlr;
+
+	/* Get basic io resource and map it */
+	iores = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(iores))
+		return PTR_ERR(iores);
+	rs->regs = IOMEM(iores->start);
+
+	rs->apb_pclk = clk_get_enabled(dev, "apb_pclk");
+	if (IS_ERR(rs->apb_pclk)) {
+		dev_err(dev, "Failed to get apb_pclk\n");
+		ret = PTR_ERR(rs->apb_pclk);
+		goto err_put_ctlr;
+	}
+
+	rs->spiclk = clk_get_enabled(dev, "spiclk");
+	if (IS_ERR(rs->spiclk)) {
+		dev_err(dev, "Failed to get spi_pclk\n");
+		ret = PTR_ERR(rs->spiclk);
+		goto err_put_ctlr;
+	}
+
+	spi_enable_chip(rs, false);
+
+	rs->dev = dev;
+	rs->freq = clk_get_rate(rs->spiclk);
+
+	if (!of_property_read_u32(np, "rx-sample-delay-ns",
+				  &rsd_nsecs)) {
+		/* rx sample delay is expressed in parent clock cycles (max 3) */
+		u32 rsd = DIV_ROUND_CLOSEST(rsd_nsecs * (rs->freq >> 8),
+				1000000000 >> 8);
+		if (!rsd) {
+			dev_warn(rs->dev, "%u Hz are too slow to express %u ns delay\n",
+					rs->freq, rsd_nsecs);
+		} else if (rsd > CR0_RSD_MAX) {
+			rsd = CR0_RSD_MAX;
+			dev_warn(rs->dev, "%u Hz are too fast to express %u ns delay, clamping at %u ns\n",
+					rs->freq, rsd_nsecs,
+					CR0_RSD_MAX * 1000000000U / rs->freq);
+		}
+		rs->rsd = rsd;
+	}
+
+	rs->fifo_len = get_fifo_len(rs);
+	if (!rs->fifo_len) {
+		dev_err(dev, "Failed to get fifo length\n");
+		ret = -EINVAL;
+		goto err_put_ctlr;
+	}
+
+//	ctlr->bus_num = pdev->id;
+//	ctlr->mode_bits = SPI_CPOL | SPI_CPHA | SPI_LOOP | SPI_LSB_FIRST;
+
+	/*
+	 * rk spi0 has two native cs, spi1..5 one cs only
+	 * if num-cs is missing in the dts, default to 1
+	 */
+	num_cs = 1;
+	of_property_read_u32(np, "num-cs", &num_cs);
+	ctlr->num_chipselect = num_cs;
+
+	ctlr->dev = dev;
+	ctlr->bits_per_word_mask = SPI_BPW_MASK(16) | SPI_BPW_MASK(8) | SPI_BPW_MASK(4);
+	ctlr->max_speed_hz = min(rs->freq / BAUDR_SCKDV_MIN, MAX_SCLK_OUT);
+
+	ctlr->setup = rockchip_spi_setup;
+	ctlr->transfer = rockchip_spi_transfer;
+	ctlr->max_transfer_size = rockchip_spi_max_transfer_size;
+
+	switch (readl_relaxed(rs->regs + ROCKCHIP_SPI_VERSION)) {
+	case ROCKCHIP_SPI_VER2_TYPE2:
+		rs->cs_high_supported = true;
+		break;
+	}
+
+	spi_controller_set_devdata(ctlr, rs);
+
+	ret = spi_register_controller(ctlr);
+	if (ret < 0) {
+		dev_err(dev, "Failed to register controller\n");
+		goto err_free_dma_rx;
+	}
+
+	return 0;
+
+err_free_dma_rx:
+err_put_ctlr:
+
+	return ret;
+}
+
+static const struct of_device_id rockchip_spi_dt_match[] = {
+	{ .compatible = "rockchip,px30-spi", },
+	{ .compatible = "rockchip,rk3036-spi", },
+	{ .compatible = "rockchip,rk3066-spi", },
+	{ .compatible = "rockchip,rk3188-spi", },
+	{ .compatible = "rockchip,rk3228-spi", },
+	{ .compatible = "rockchip,rk3288-spi", },
+	{ .compatible = "rockchip,rk3308-spi", },
+	{ .compatible = "rockchip,rk3328-spi", },
+	{ .compatible = "rockchip,rk3368-spi", },
+	{ .compatible = "rockchip,rk3399-spi", },
+	{ .compatible = "rockchip,rv1108-spi", },
+	{ .compatible = "rockchip,rv1126-spi", },
+	{ },
+};
+MODULE_DEVICE_TABLE(of, rockchip_spi_dt_match);
+
+static struct driver rockchip_spi_driver = {
+        .name  = DRIVER_NAME,
+        .probe = rockchip_spi_probe,
+        .of_compatible = rockchip_spi_dt_match,
+};
+coredevice_platform_driver(rockchip_spi_driver);
+
+MODULE_AUTHOR("Addy Ke <addy.ke@rock-chips.com>");
+MODULE_DESCRIPTION("ROCKCHIP SPI Controller Driver");
+MODULE_LICENSE("GPL v2");
diff --git a/include/spi/spi.h b/include/spi/spi.h
index 45d6f5931c..0c60e99868 100644
--- a/include/spi/spi.h
+++ b/include/spi/spi.h
@@ -115,6 +115,13 @@ static inline struct spi_device *to_spi_device(struct device *dev)
         return dev ? container_of(dev, struct spi_device, dev) : NULL;
 }
 
+static inline u8 spi_get_chipselect(const struct spi_device *spi, u8 idx)
+{
+	BUG_ON(idx != 0);
+
+	return spi->chip_select;
+}
+
 struct spi_message;
 
 /**

-- 
2.39.5



