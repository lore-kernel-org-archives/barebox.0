Delivery-date: Mon, 05 May 2025 14:39:12 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uBv6G-002SX1-1K
	for lore@lore.pengutronix.de;
	Mon, 05 May 2025 14:39:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uBv69-0006mg-Kq
	for lore@pengutronix.de; Mon, 05 May 2025 14:39:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mEkaUXq4qnpvIoIKuGzL86tlHsv7ZISgZzQkLwxkJqM=; b=F9VLOsvAOE1RRG95X26//1BTuF
	s4cIVT/Y6shitXY4kARebG9dm9P+ExDOTd2+HccIIGaTvQi0nD1HmrrDhu3R9TiLhSegsObWL7t5C
	QxxtMiltQPXxySsKKJHA8B4xih/xVrkkAIPPfIf3DvyjtZMv3JmYVZ2SsT+Cs7EYZg7Jdc53mS9Z+
	8gHB/RuKDiq6k0K7SwsgM3njFdlp1a3hHONx5xi2bOhpcYT0j/egn5AVHe7fcqyIditZ15uj5j8Nn
	hnS5wNF+0J3MScg35hnRCY1Lgdsr0Lxf269Zi1kxj7BeS035esVgIbQ54KDldK6xkziVlQr9DcOwk
	tRzqvFzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBv5O-00000007LcN-1yDG;
	Mon, 05 May 2025 12:38:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBv29-00000007Kaf-3gli
	for barebox@lists.infradead.org;
	Mon, 05 May 2025 12:35:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uBv28-0004qz-L7; Mon, 05 May 2025 14:34:56 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uBv28-001EQX-1T;
	Mon, 05 May 2025 14:34:56 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uBuah-00Fb9X-0z;
	Mon, 05 May 2025 14:06:34 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 May 2025 14:06:21 +0200
Message-Id: <20250505120633.3717186-19-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250505120633.3717186-1-a.fatoum@pengutronix.de>
References: <20250505120633.3717186-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250505_053457_918317_595842DB 
X-CRM114-Status: GOOD (  21.17  )
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
Subject: [PATCH 18/30] mci: imx-esdhc: add support for delay/tuning properties in DT
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

With higher data rates, we will need to fine tune delay settings, which
can be supplied via the device tree. Add support for the binding to
barebox.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/imx-esdhc.c | 70 ++++++++++++++++++++++++++++++++++++++++-
 drivers/mci/imx-esdhc.h | 14 +++++++++
 2 files changed, 83 insertions(+), 1 deletion(-)

diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index 86dc6daba845..9d82c886cdcf 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -145,6 +145,15 @@ static void usdhc_set_timing(struct fsl_esdhc_host *host, enum mci_timing timing
 	case MMC_TIMING_MMC_DDR52:
 		mixctrl |= MIX_CTRL_DDREN;
 		sdhci_write32(&host->sdhci, IMX_SDHCI_MIXCTRL, mixctrl);
+		if (host->boarddata.delay_line) {
+			u32 v;
+			v = host->boarddata.delay_line <<
+				IMX_SDHCI_DLL_CTRL_OVERRIDE_VAL_SHIFT |
+				(1 << IMX_SDHCI_DLL_CTRL_OVERRIDE_EN_SHIFT);
+			if (cpu_is_mx53())
+				v <<= 1;
+			sdhci_write32(&host->sdhci, IMX_SDHCI_DLL_CTRL, v);
+		}
 		break;
 	default:
 		sdhci_write32(&host->sdhci, IMX_SDHCI_MIXCTRL, mixctrl);
@@ -290,7 +299,49 @@ static int esdhc_init(struct mci_host *mci, struct device *dev)
 	esdhc_clrsetbits32(host, SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET,
 			SYSCTL_TIMEOUT_MASK, 14 << 16);
 
-	return ret;
+	if (IS_ENABLED(CONFIG_MCI_TUNING) && esdhc_is_usdhc(host) &&
+	    (host->socdata->flags & ESDHC_FLAG_STD_TUNING)) {
+		u32 tmp;
+
+		/* disable DLL_CTRL delay line settings */
+		sdhci_write32(&host->sdhci, ESDHC_DLL_CTRL, 0x0);
+
+		tmp = sdhci_read32(&host->sdhci, ESDHC_TUNING_CTRL);
+		tmp |= ESDHC_STD_TUNING_EN;
+
+		/*
+		 * ROM code or bootloader may config the start tap
+		 * and step, unmask them first.
+		 */
+		tmp &= ~(ESDHC_TUNING_START_TAP_MASK | ESDHC_TUNING_STEP_MASK);
+		if (host->boarddata.tuning_start_tap)
+			tmp |= host->boarddata.tuning_start_tap;
+		else
+			tmp |= ESDHC_TUNING_START_TAP_DEFAULT;
+
+		if (host->boarddata.tuning_step) {
+			tmp |= host->boarddata.tuning_step
+				<< ESDHC_TUNING_STEP_SHIFT;
+		} else {
+			tmp |= ESDHC_TUNING_STEP_DEFAULT
+				<< ESDHC_TUNING_STEP_SHIFT;
+		}
+
+		/* Disable the CMD CRC check for tuning, if not, need to
+		 * add some delay after every tuning command, because
+		 * hardware standard tuning logic will directly go to next
+		 * step once it detect the CMD CRC error, will not wait for
+		 * the card side to finally send out the tuning data, trigger
+		 * the buffer read ready interrupt immediately. If usdhc send
+		 * the next tuning command some eMMC card will stuck, can't
+		 * response, block the tuning procedure or the first command
+		 * after the whole tuning procedure always can't get any response.
+		 */
+		tmp |= ESDHC_TUNING_CMD_CRC_CHECK_DISABLE;
+		sdhci_write32(&host->sdhci, ESDHC_TUNING_CTRL, tmp);
+	}
+
+	return 0;
 }
 
 static const struct mci_ops fsl_esdhc_ops = {
@@ -300,6 +351,21 @@ static const struct mci_ops fsl_esdhc_ops = {
 	.card_present = esdhc_card_present,
 };
 
+static void fsl_esdhc_probe_dt(struct device *dev, struct fsl_esdhc_host *host)
+{
+	struct device_node *np = dev->of_node;
+	struct esdhc_platform_data *boarddata = &host->boarddata;
+
+	if (!IS_ENABLED(CONFIG_MCI_TUNING))
+		return;
+
+	of_property_read_u32(np, "fsl,tuning-step", &boarddata->tuning_step);
+	of_property_read_u32(np, "fsl,tuning-start-tap",
+			     &boarddata->tuning_start_tap);
+	if (of_property_read_u32(np, "fsl,delay-line", &boarddata->delay_line))
+		boarddata->delay_line = 0;
+}
+
 static int fsl_esdhc_probe(struct device *dev)
 {
 	struct resource *iores;
@@ -360,6 +426,8 @@ static int fsl_esdhc_probe(struct device *dev)
 
 	mci_of_parse(&host->mci);
 
+	fsl_esdhc_probe_dt(dev, host);
+
 	ret = mci_register(&host->mci);
 	if (ret)
 		goto err_release_res;
diff --git a/drivers/mci/imx-esdhc.h b/drivers/mci/imx-esdhc.h
index ea57ca534f80..569986c1bf0e 100644
--- a/drivers/mci/imx-esdhc.h
+++ b/drivers/mci/imx-esdhc.h
@@ -62,6 +62,8 @@
 /* Tuning bits */
 #define  MIX_CTRL_TUNING_MASK	0x03c00000
 #define IMX_SDHCI_DLL_CTRL	0x60
+#define  IMX_SDHCI_DLL_CTRL_OVERRIDE_VAL_SHIFT	9
+#define  IMX_SDHCI_DLL_CTRL_OVERRIDE_EN_SHIFT	8
 #define IMX_SDHCI_MIX_CTRL_FBCLK_SEL	BIT(25)
 
 /* tune control register */
@@ -137,11 +139,23 @@ struct esdhc_soc_data {
 	const char *clkidx;
 };
 
+/*
+ * struct esdhc_platform_data - platform data for esdhc on i.MX
+ */
+
+struct esdhc_platform_data {
+	unsigned int delay_line;
+	unsigned int tuning_step;       /* The delay cell steps in tuning procedure */
+	unsigned int tuning_start_tap;	/* The start delay cell point in tuning procedure */
+};
+
 struct fsl_esdhc_host {
 	struct mci_host		mci;
 	struct clk		*clk;
 	struct device		*dev;
 	const struct esdhc_soc_data *socdata;
+	struct esdhc_platform_data boarddata;
+	u32		last_cmd;
 	struct sdhci	sdhci;
 };
 
-- 
2.39.5



