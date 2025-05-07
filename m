Delivery-date: Wed, 07 May 2025 11:27:27 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCb3n-0035Uw-0s
	for lore@lore.pengutronix.de;
	Wed, 07 May 2025 11:27:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCb3l-0006JQ-H1
	for lore@pengutronix.de; Wed, 07 May 2025 11:27:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Eb8RDyI3mee+etV4mcU3z8T4sWn/ujV5vTGkWc5CiEw=; b=rn3xR+qQ/MZe38wKgsQ0EmI4ro
	qPOgc3S6HnC8px4zBKAtwcMedTJG12n7g9gRoqCbmlBx/ry64UWx+ZUM0qBn4CY5XdNSAKnAmdpCm
	dPCqdF5cYxeE5nNz2p0BxhEzjmslVwh1makvHvEay2UlwDl7wO0YJw1XqSDkJBLZlMV7QyyBwEm54
	jBySlJjk8ssLzHmd/y8C4zEQmnhjGf619VAhh/KbsZ5FzObtf0U5WhUk89wakC9FHiv4oBp/f7tEI
	iRR6rbe0PrwuxGWPn3JMvmYSY0rzneZ1hE0L0Cy106ve6NbAMiQpCY/t4y6KHjYar5crXpYV8KfE4
	2w+67cHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCb3J-0000000Ewx5-1Cyz;
	Wed, 07 May 2025 09:26:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCaFI-0000000Eljx-1rm7
	for barebox@lists.infradead.org;
	Wed, 07 May 2025 08:35:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCaF9-0003wx-5E; Wed, 07 May 2025 10:35:07 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCaF8-001WuG-38;
	Wed, 07 May 2025 10:35:06 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCa2e-00AQeI-1S;
	Wed, 07 May 2025 10:22:12 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  7 May 2025 10:21:57 +0200
Message-Id: <20250507082209.3289972-19-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250507082209.3289972-1-a.fatoum@pengutronix.de>
References: <20250507082209.3289972-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250507_013516_506561_880409FA 
X-CRM114-Status: GOOD (  20.22  )
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
Subject: [PATCH v2 18/30] mci: imx-esdhc: add support for delay/tuning properties in DT
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

With higher data rates, we will need to fine tune delay settings, which
can be supplied via the device tree. Add support for the binding to
barebox.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/imx-esdhc.c | 59 ++++++++++++++++++++++++++++++++++++++++-
 drivers/mci/imx-esdhc.h | 14 ++++++++++
 2 files changed, 72 insertions(+), 1 deletion(-)

diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index 86dc6daba845..5416d0648fa8 100644
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
@@ -290,7 +299,36 @@ static int esdhc_init(struct mci_host *mci, struct device *dev)
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
+		tmp &= ~(ESDHC_TUNING_START_TAP_MASK | ESDHC_TUNING_STEP_MASK);
+		tmp |= host->boarddata.tuning_start_tap;
+
+		tmp |= host->boarddata.tuning_step << ESDHC_TUNING_STEP_SHIFT;
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
@@ -300,6 +338,23 @@ static const struct mci_ops fsl_esdhc_ops = {
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
+	if (of_property_read_u32(np, "fsl,tuning-step", &boarddata->tuning_step))
+		boarddata->tuning_step = ESDHC_TUNING_STEP_DEFAULT;
+	if (of_property_read_u32(np, "fsl,tuning-start-tap",
+			     &boarddata->tuning_start_tap))
+		boarddata->tuning_start_tap = ESDHC_TUNING_START_TAP_DEFAULT;
+	if (of_property_read_u32(np, "fsl,delay-line", &boarddata->delay_line))
+		boarddata->delay_line = 0;
+}
+
 static int fsl_esdhc_probe(struct device *dev)
 {
 	struct resource *iores;
@@ -360,6 +415,8 @@ static int fsl_esdhc_probe(struct device *dev)
 
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



