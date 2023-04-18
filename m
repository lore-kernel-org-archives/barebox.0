Delivery-date: Tue, 18 Apr 2023 11:31:50 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pohgj-007X03-OG
	for lore@lore.pengutronix.de; Tue, 18 Apr 2023 11:31:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pohgj-0006wI-9U
	for lore@pengutronix.de; Tue, 18 Apr 2023 11:31:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sMK6uXMwGSjxaOFuGp8SxHu9rDnzgVctwFrVdWGRCuk=; b=ywf3jEmRAum1G0W1BeIfUm3HUu
	JmsiHh5cOswJ5+ctji4btulcXFTH3yqOYd2jM0pGUwXA7XhoX7mRcoQd9Xi2ekuTi57J+alKYK0FD
	hyTBD60S+4O3liXTrtojQ7FhF9FAxYOTpybmvjfc38EKjDDiIk2iSQnqtnbbgPPVs/hGGiOSWZ8Hk
	aP/epSgjpmgITFDsRuXgBJ3ESqX0LQiUxr0FQbB/0M7XYr4ha17tiX6bXyIAI4BRt5pcqo71dRYTc
	OG9xC2un9Zunxtiyr+lFicqM/KatwGBBzdbCwWRkNEbpiHxWSzwCncUWOTkD4u86hwsq2ayw3ksZH
	1NeWIuNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pohfk-001Tgz-0d;
	Tue, 18 Apr 2023 09:30:48 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pohfg-001TeS-0J
	for barebox@lists.infradead.org;
	Tue, 18 Apr 2023 09:30:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pohfe-0006bl-Iv; Tue, 18 Apr 2023 11:30:42 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pohfd-00C4g1-Uh; Tue, 18 Apr 2023 11:30:41 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pohfd-007pV2-4Y; Tue, 18 Apr 2023 11:30:41 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Marco Felsch <m.felsch@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 18 Apr 2023 11:30:40 +0200
Message-Id: <20230418093040.1865982-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230418093040.1865982-1-a.fatoum@pengutronix.de>
References: <20230418093040.1865982-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230418_023044_134469_71D0E874 
X-CRM114-Status: GOOD (  19.78  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 5/5] mci: imx-esdhc: add uSDHC eMMC DDR52 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The uSDHC available with the i.MX6/7/8 SoCs has support for DDR
clock operation. This is enabled by flipping a bit in
IMX_SDHCI_MIXCTRL and adjusting the clock divider calculation to
account for the automatic internal halving of the clock.

Let's do that to speed up boot from eMMC. How much effect this has
in practice is not constant. Comparing two Kingston eMMCs: DDR on the
older v4.5 connected to an i.MX6 did not yield any difference. On the
newer v5.1 one connected to an i.MX8MM, I observe a 70% improvement in
sequential read throughput: from 40MiB/s to 69.5 MiB/s.

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - added Marco's Reviewed-by
---
 drivers/mci/imx-esdhc-common.c |  1 +
 drivers/mci/imx-esdhc.c        | 45 +++++++++++++++++++++++++++++-----
 drivers/mci/imx-esdhc.h        | 14 +++++++++++
 3 files changed, 54 insertions(+), 6 deletions(-)

diff --git a/drivers/mci/imx-esdhc-common.c b/drivers/mci/imx-esdhc-common.c
index 27293e44b724..3c1ff9882432 100644
--- a/drivers/mci/imx-esdhc-common.c
+++ b/drivers/mci/imx-esdhc-common.c
@@ -160,6 +160,7 @@ int __esdhc_send_cmd(struct fsl_esdhc_host *host, struct mci_cmd *cmd,
 		mixctrl = xfertyp;
 		/* Keep the bits 22-25 of the register as is */
 		mixctrl |= (sdhci_read32(&host->sdhci, IMX_SDHCI_MIXCTRL) & (0xF << 22));
+		mixctrl |= mci_timing_is_ddr(host->sdhci.timing) ? MIX_CTRL_DDREN : 0;
 		sdhci_write32(&host->sdhci, IMX_SDHCI_MIXCTRL, mixctrl);
 	}
 
diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index 2e2bc14ef95c..94f18fe2b3cf 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -43,9 +43,9 @@ esdhc_send_cmd(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data)
 	return  __esdhc_send_cmd(host, cmd, data);
 }
 
-static void set_sysctl(struct mci_host *mci, u32 clock)
+static void set_sysctl(struct mci_host *mci, u32 clock, bool ddr)
 {
-	int div, pre_div;
+	int div, pre_div, ddr_pre_div = ddr ? 2 : 1;
 	struct fsl_esdhc_host *host = to_fsl_esdhc(mci);
 	int sdhc_clk = clk_get_rate(host->clk);
 	u32 clk;
@@ -65,11 +65,11 @@ static void set_sysctl(struct mci_host *mci, u32 clock)
 		pre_div = 1;
 	else if (sdhc_clk / 16 > clock)
 		for (; pre_div < 256; pre_div *= 2)
-			if ((sdhc_clk / pre_div) <= (clock * 16))
+			if ((sdhc_clk / (pre_div * ddr_pre_div)) <= (clock * 16))
 				break;
 
 	for (div = 1; div <= 16; div++)
-		if ((sdhc_clk / (div * pre_div)) <= clock)
+		if ((sdhc_clk / (div * pre_div * ddr_pre_div)) <= clock)
 			break;
 
 	cur_clock = sdhc_clk / pre_div / div;
@@ -103,12 +103,42 @@ static void set_sysctl(struct mci_host *mci, u32 clock)
 		   10 * MSECOND);
 }
 
+static void esdhc_set_timing(struct fsl_esdhc_host *host, enum mci_timing timing)
+{
+	u32 mixctrl;
+
+	mixctrl = sdhci_read32(&host->sdhci, IMX_SDHCI_MIXCTRL);
+	mixctrl &= ~MIX_CTRL_DDREN;
+
+	switch (timing) {
+	case MMC_TIMING_UHS_DDR50:
+	case MMC_TIMING_MMC_DDR52:
+		mixctrl |= MIX_CTRL_DDREN;
+		sdhci_write32(&host->sdhci, IMX_SDHCI_MIXCTRL, mixctrl);
+		break;
+	default:
+		sdhci_write32(&host->sdhci, IMX_SDHCI_MIXCTRL, mixctrl);
+	}
+
+	host->sdhci.timing = timing;
+}
+
 static void esdhc_set_ios(struct mci_host *mci, struct mci_ios *ios)
 {
 	struct fsl_esdhc_host *host = to_fsl_esdhc(mci);
 
+	/*
+	 * call esdhc_set_timing() before update the clock rate,
+	 * This is because current we support DDR and SDR timing,
+	 * Once the DDR_EN bit is set, the card clock will be
+	 * divide by 2 automatically. So need to do this before
+	 * setting clock rate.
+	 */
+	if (esdhc_is_usdhc(host) && host->sdhci.timing != ios->timing)
+		esdhc_set_timing(host, ios->timing);
+
 	/* Set the clock speed */
-	set_sysctl(mci, ios->clock);
+	set_sysctl(mci, ios->clock, mci_timing_is_ddr(ios->timing));
 
 	/* Set the bus width */
 	esdhc_clrbits32(host, SDHCI_HOST_CONTROL__POWER_CONTROL__BLOCK_GAP_CONTROL,
@@ -206,7 +236,7 @@ static int esdhc_init(struct mci_host *mci, struct device *dev)
 		esdhc_setbits32(host, ESDHC_DMA_SYSCTL, ESDHC_SYSCTL_DMA_SNOOP);
 
 	/* Set the initial clock speed */
-	set_sysctl(mci, 400000);
+	set_sysctl(mci, 400000, false);
 
 	sdhci_write32(&host->sdhci, SDHCI_INT_ENABLE, SDHCI_INT_CMD_COMPLETE |
 			SDHCI_INT_XFER_COMPLETE | SDHCI_INT_CARD_INT |
@@ -285,6 +315,9 @@ static int fsl_esdhc_probe(struct device *dev)
 	if (ret)
 		goto err_clk_disable;
 
+	if (esdhc_is_usdhc(host))
+		mci->host_caps |= MMC_CAP_MMC_3_3V_DDR | MMC_CAP_MMC_1_8V_DDR;
+
 	rate = clk_get_rate(host->clk);
 	host->mci.f_min = rate >> 12;
 	if (host->mci.f_min < 200000)
diff --git a/drivers/mci/imx-esdhc.h b/drivers/mci/imx-esdhc.h
index 0d8f157a7615..b14039757a7a 100644
--- a/drivers/mci/imx-esdhc.h
+++ b/drivers/mci/imx-esdhc.h
@@ -41,6 +41,20 @@
 
 #define IMX_SDHCI_WML		0x44
 #define IMX_SDHCI_MIXCTRL	0x48
+/* Imported from Linux Kernel drivers/mmc/host/sdhci-esdhc-imx.c */
+#define  MIX_CTRL_DDREN		BIT(3)
+#define  MIX_CTRL_DTDSEL_READ	BIT(4)
+#define  MIX_CTRL_AC23EN	BIT(7)
+#define  MIX_CTRL_EXE_TUNE	BIT(22)
+#define  MIX_CTRL_SMPCLK_SEL	BIT(23)
+#define  MIX_CTRL_AUTO_TUNE_EN	BIT(24)
+#define  MIX_CTRL_FBCLK_SEL	BIT(25)
+#define  MIX_CTRL_HS400_EN	BIT(26)
+#define  MIX_CTRL_HS400_ES	BIT(27)
+/* Bits 3 and 6 are not SDHCI standard definitions */
+#define  MIX_CTRL_SDHCI_MASK	0xb7
+/* Tuning bits */
+#define  MIX_CTRL_TUNING_MASK	0x03c00000
 #define IMX_SDHCI_DLL_CTRL	0x60
 #define IMX_SDHCI_MIX_CTRL_FBCLK_SEL	BIT(25)
 
-- 
2.39.2



