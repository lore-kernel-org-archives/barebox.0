Delivery-date: Wed, 07 May 2025 11:31:22 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCb7a-0035dR-0U
	for lore@lore.pengutronix.de;
	Wed, 07 May 2025 11:31:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCb7Z-0007fj-02
	for lore@pengutronix.de; Wed, 07 May 2025 11:31:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kCfR8vUdJT+B9ez+E8AK+dwL00ERcCDCAX329LxaV5g=; b=J0FdJriTwTGOfPUPF54qkuxgla
	OIGEC3qHF7yhfmnpwQMksiUyiN+kIAczNuKEvBlJjqXqlpmBgr5tQP59YZ+GIm++f4lALhmKJG6MK
	ecNfxT/tZmxyZKxnucntIzIs8jZaG2/81f8e/j9tJSaLBHwQ2Ar/Z2q+Q23JLTSk77FaK1vaHCxXk
	d9VvXaUoBhIhifBSU5xukWQk+vs7l+PkoeRizm/+rfsEUB6fqnRXdxxTOjjYfmCvf3BQgpskkcF+6
	+w+z98It5jkXVawtzoNvpYBXarW0beBzBwlQjAuPjyItv8JA1WsTTFARqGnrs7VTha4A/ga3OFfRh
	A/kfbPlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCb75-0000000Ey8N-2EaE;
	Wed, 07 May 2025 09:30:51 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCaG3-0000000EmFJ-2gB8
	for barebox@bombadil.infradead.org;
	Wed, 07 May 2025 08:36:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=kCfR8vUdJT+B9ez+E8AK+dwL00ERcCDCAX329LxaV5g=; b=O34r8Gu6AobeXGtbRZp3JGS8m7
	snLEIR+ehcheW6w2V3ywB36TbTrxqvzCIXPrQhZutThNnyJfQ6t1em9yDb/+TzwhV1Ai+92LRP4zy
	BEM1KUqPfqlluOmLIq0f4zwh1+ajdgeIDHJQioqSzB6LBus2ecRYH/vktW60ExcvruZhDbKGGUK0x
	q7wYU5hFaJeGAM1GWC5TC1Cy+Soo64l4WnTbLfWFN64zaC9N4iru8/076OWKglM5arntouo/HzeqP
	QV66Ou5/ODpf3NFOb73osuGMj0tZQROK3crd/XeTnwc5T5i6QODGPXoq2wyIsocuq5tLl307cY28I
	ubrGQgtw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCaFn-00000001ihF-4BGT
	for barebox@lists.infradead.org;
	Wed, 07 May 2025 08:35:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCaF9-0003zF-TQ; Wed, 07 May 2025 10:35:07 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCaF9-001Wuo-2H;
	Wed, 07 May 2025 10:35:07 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCa2e-00AQeI-3B;
	Wed, 07 May 2025 10:22:12 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  7 May 2025 10:22:09 +0200
Message-Id: <20250507082209.3289972-31-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250507082209.3289972-1-a.fatoum@pengutronix.de>
References: <20250507082209.3289972-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250507_093549_077693_49DC5B1E 
X-CRM114-Status: GOOD (  19.06  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 30/30] mci: imx-esdhc: implement HS200 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Now everything is in place, so we can actually implement execute_tuning
for i.MX6SL or later. i.MX6Q would be possible as well, but that
requires a different manual tuning scheme which was not ported here.

Comparison copying 64M off a Samsung 8GTF4R eMMC on an i.MX8MP.
Before:

  imx8mp-ddr52: time cp /dev/mmc2.2 .
  time: 884ms

After:

  imx8mp-hs200: time cp /dev/mmc2.2 .
  time: 488ms

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/imx-esdhc-common.c |   8 +-
 drivers/mci/imx-esdhc.c        | 153 ++++++++++++++++++++++++++++++++-
 2 files changed, 157 insertions(+), 4 deletions(-)

diff --git a/drivers/mci/imx-esdhc-common.c b/drivers/mci/imx-esdhc-common.c
index caa8505ac00e..228f4a9b03fe 100644
--- a/drivers/mci/imx-esdhc-common.c
+++ b/drivers/mci/imx-esdhc-common.c
@@ -323,7 +323,7 @@ int __esdhc_send_cmd(struct fsl_esdhc_host *host, struct mci_cmd *cmd,
 		     struct mci_data *data)
 {
 	u32	xfertyp, mixctrl, command;
-	u32	val, irqstat;
+	u32	val, irqflags, irqstat;
 	dma_addr_t dma = SDHCI_NO_DMA;
 	int ret;
 
@@ -363,9 +363,13 @@ int __esdhc_send_cmd(struct fsl_esdhc_host *host, struct mci_cmd *cmd,
 	sdhci_write32(&host->sdhci, SDHCI_TRANSFER_MODE__COMMAND,
 		      command << 16 | xfertyp);
 
+	irqflags = SDHCI_INT_CMD_COMPLETE;
+	if (mmc_op_tuning(cmd->cmdidx))
+		irqflags = SDHCI_INT_DATA_AVAIL;
+
 	/* Wait for the command to complete */
 	ret = esdhc_poll(host, SDHCI_INT_STATUS, irqstat,
-			 irqstat & SDHCI_INT_CMD_COMPLETE,
+			 irqstat & irqflags,
 			 100 * MSECOND);
 	if (ret) {
 		dev_dbg(host->dev, "timeout 1\n");
diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index 4f2f02cfbdbe..c6547d94a4f9 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -61,6 +61,14 @@
 #define ESDHC_PINCTRL_STATE_100MHZ	"state_100mhz"
 #define ESDHC_PINCTRL_STATE_200MHZ	"state_200mhz"
 
+/*
+ * Our interpretation of the SDHCI_HOST_CONTROL register
+ */
+#define ESDHC_CTRL_4BITBUS		(0x1 << 1)
+#define ESDHC_CTRL_8BITBUS		(0x2 << 1)
+#define ESDHC_CTRL_BUSWIDTH_MASK	(0x3 << 1)
+#define USDHC_GET_BUSWIDTH(c) (c & ESDHC_CTRL_BUSWIDTH_MASK)
+
 #define to_fsl_esdhc(mci)	container_of(mci, struct fsl_esdhc_host, mci)
 
 /*
@@ -137,6 +145,104 @@ static void set_sysctl(struct mci_host *mci, u32 clock, bool ddr)
 		   10 * MSECOND);
 }
 
+static inline void esdhc_clrset_le(struct fsl_esdhc_host *host,
+				   u32 mask, u32 val, int reg)
+{
+	void __iomem *base = host->sdhci.base + (reg & ~0x3);
+	u32 shift = (reg & 0x3) * 8;
+
+	writel(((readl(base) & ~(mask << shift)) | (val << shift)), base);
+}
+
+/* Enable the auto tuning circuit to check the CMD line and BUS line */
+static inline void usdhc_auto_tuning_mode_sel_and_en(struct fsl_esdhc_host *host)
+{
+	u32 buswidth, auto_tune_buswidth;
+	u32 reg;
+
+	buswidth = USDHC_GET_BUSWIDTH(sdhci_read32(&host->sdhci, SDHCI_HOST_CONTROL));
+
+	switch (buswidth) {
+	case ESDHC_CTRL_8BITBUS:
+		auto_tune_buswidth = ESDHC_VEND_SPEC2_AUTO_TUNE_8BIT_EN;
+		break;
+	case ESDHC_CTRL_4BITBUS:
+		auto_tune_buswidth = ESDHC_VEND_SPEC2_AUTO_TUNE_4BIT_EN;
+		break;
+	default:	/* 1BITBUS */
+		auto_tune_buswidth = ESDHC_VEND_SPEC2_AUTO_TUNE_1BIT_EN;
+		break;
+	}
+
+	esdhc_clrset_le(host, ESDHC_VEND_SPEC2_AUTO_TUNE_MODE_MASK,
+			auto_tune_buswidth | ESDHC_VEND_SPEC2_AUTO_TUNE_CMD_EN,
+			ESDHC_VEND_SPEC2);
+
+	reg = sdhci_read32(&host->sdhci, IMX_SDHCI_MIXCTRL);
+	reg |= MIX_CTRL_AUTO_TUNE_EN;
+	sdhci_write32(&host->sdhci, IMX_SDHCI_MIXCTRL, reg);
+}
+
+static void esdhc_reset_tuning(struct fsl_esdhc_host *host)
+{
+	u32 ctrl;
+	int ret;
+
+	/* Reset the tuning circuit */
+	if (esdhc_is_usdhc(host)) {
+		ctrl = sdhci_read32(&host->sdhci, IMX_SDHCI_MIXCTRL);
+		ctrl &= ~MIX_CTRL_AUTO_TUNE_EN;
+		if (host->socdata->flags & ESDHC_FLAG_STD_TUNING) {
+			sdhci_write32(&host->sdhci, IMX_SDHCI_MIXCTRL, ctrl);
+			ctrl = sdhci_read32(&host->sdhci, SDHCI_ACMD12_ERR__HOST_CONTROL2);
+			ctrl &= ~MIX_CTRL_SMPCLK_SEL;
+			ctrl &= ~MIX_CTRL_EXE_TUNE;
+			sdhci_write32(&host->sdhci, SDHCI_ACMD12_ERR__HOST_CONTROL2, ctrl);
+			/* Make sure MIX_CTRL_EXE_TUNE cleared */
+			ret = sdhci_read32_poll_timeout(&host->sdhci, SDHCI_ACMD12_ERR__HOST_CONTROL2,
+				ctrl, !(ctrl & MIX_CTRL_EXE_TUNE), 50);
+			if (ret == -ETIMEDOUT)
+				dev_warn(host->dev,
+				 "Warning! clear execute tuning bit failed\n");
+			/*
+			 * SDHCI_INT_DATA_AVAIL is W1C bit, set this bit will clear the
+			 * usdhc IP internal logic flag execute_tuning_with_clr_buf, which
+			 * will finally make sure the normal data transfer logic correct.
+			 */
+			ctrl = sdhci_read32(&host->sdhci, SDHCI_INT_STATUS);
+			ctrl |= SDHCI_INT_DATA_AVAIL;
+			sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, ctrl);
+		}
+	}
+}
+
+static int usdhc_execute_tuning(struct mci_host *mci, u32 opcode)
+{
+	struct fsl_esdhc_host *host = to_fsl_esdhc(mci);
+	int err;
+
+	/*
+	 * i.MX uSDHC internally already uses a fixed optimized timing for
+	 * DDR50, normally does not require tuning for DDR50 mode.
+	 */
+	if (host->sdhci.timing == MMC_TIMING_UHS_DDR50)
+		return 0;
+
+	/*
+	 * Reset tuning circuit logic. If not, the previous tuning result
+	 * will impact current tuning, make current tuning can't set the
+	 * correct delay cell.
+	 */
+	esdhc_reset_tuning(host);
+
+	err = sdhci_execute_tuning(&host->sdhci, opcode);
+	/* If tuning done, enable auto tuning */
+	if (!err)
+		usdhc_auto_tuning_mode_sel_and_en(host);
+
+	return err;
+}
+
 static int esdhc_change_pinstate(struct fsl_esdhc_host *host,
 				 unsigned int uhs)
 {
@@ -190,8 +296,18 @@ static void usdhc_set_timing(struct fsl_esdhc_host *host, enum mci_timing timing
 			sdhci_write32(&host->sdhci, IMX_SDHCI_DLL_CTRL, v);
 		}
 		break;
-	default:
+	case MMC_TIMING_UHS_SDR12:
+	case MMC_TIMING_UHS_SDR25:
+	case MMC_TIMING_UHS_SDR50:
+	case MMC_TIMING_UHS_SDR104:
+	case MMC_TIMING_MMC_HS:
+	case MMC_TIMING_MMC_HS200:
 		sdhci_write32(&host->sdhci, IMX_SDHCI_MIXCTRL, mixctrl);
+		break;
+	case MMC_TIMING_LEGACY:
+	default:
+		esdhc_reset_tuning(host);
+		break;
 	}
 
 	esdhc_change_pinstate(host, timing);
@@ -421,6 +537,39 @@ static void fsl_esdhc_probe_dt(struct device *dev, struct fsl_esdhc_host *host)
 	}
 }
 
+static bool usdhc_setup_tuning(struct fsl_esdhc_host *host)
+{
+	struct mci_host *mci = &host->mci;
+
+	if (!IS_ENABLED(CONFIG_MCI_TUNING) || !esdhc_is_usdhc(host))
+		return false;
+
+	/*
+	 * clear tuning bits in case ROM has set it already
+	 * We use writel, because we haven't set up SDHCI yet
+	 */
+	writel(0x0, host->sdhci.base + IMX_SDHCI_MIXCTRL);
+	writel(0x0, host->sdhci.base + SDHCI_ACMD12_ERR__HOST_CONTROL2);
+	writel(0x0, host->sdhci.base + ESDHC_TUNE_CTRL_STATUS);
+
+	if (!(host->socdata->flags & ESDHC_FLAG_HS200))
+		return false;
+
+	if (host->socdata->flags & ESDHC_FLAG_MAN_TUNING) {
+		dev_dbg(host->dev, "i.MX6Q manual tuning not supported\n");
+		return false;
+	}
+
+	/*
+	 * Link usdhc specific mmc_host_ops execute_tuning function,
+	 * to replace the standard one in sdhci_ops.
+	 */
+	mci->ops.execute_tuning = usdhc_execute_tuning;
+	mci->caps2 |= MMC_CAP2_HS200;
+
+	return true;
+}
+
 static int fsl_esdhc_probe(struct device *dev)
 {
 	struct resource *iores;
@@ -466,7 +615,7 @@ static int fsl_esdhc_probe(struct device *dev)
 	host->mci.hw_dev = dev;
 	host->sdhci.mci = &host->mci;
 
-	if (!(host->socdata->flags & ESDHC_FLAG_HS200))
+	if (!usdhc_setup_tuning(host))
 		host->sdhci.quirks2 |= SDHCI_QUIRK2_BROKEN_HS200;
 
 	ret = sdhci_setup_host(&host->sdhci);
-- 
2.39.5



