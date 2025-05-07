Delivery-date: Wed, 07 May 2025 11:31:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCb7Z-0035cy-0v
	for lore@lore.pengutronix.de;
	Wed, 07 May 2025 11:31:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCb7Y-0007fC-G0
	for lore@pengutronix.de; Wed, 07 May 2025 11:31:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QAGBE1p2IguLmt4lvttgvrKiJCDAkJje020fuUf58mg=; b=ohZApPb96gaQHpfJTxFVzxx+2y
	tFrqRQyw8MYRYlmUZkmlQiVW7UHLes5zPmdBURdFgDJLpTpi0plUvtuYR5OqSwhnBFKQGlb3/MjeJ
	b89+gWDr+Wm9YfCsY+SWsw6kC9B1MldLHGLmnS2OVU2qjaW5RlNcinGQc5XCgKwUFLsN/06zPLVgS
	JTWUsNvGNDBq4Cx2KHcyYYrz5aRFzyAXNWyITy2lZF1KQqiBha/00TBLR9z/03otPQDuHtTt1WVwT
	BVZRSeAlcdzH13sQ4oPMUKcx1Xjgbecp7I+/wisprcpVzFf3ThsyhGR7YrXFstdlN3pRdFwFTFV7I
	kr299yzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCb76-0000000Ey8e-051g;
	Wed, 07 May 2025 09:30:52 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCaGB-0000000EmFK-3dOV
	for barebox@bombadil.infradead.org;
	Wed, 07 May 2025 08:36:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=QAGBE1p2IguLmt4lvttgvrKiJCDAkJje020fuUf58mg=; b=gQkt1Lo4KQ4dNEXi5pzZoagz0q
	0xGvG7TAEs+1uIuN9R7uTl5YJe9ThxUGt98DJyRzMdkCBtuoKNyyTS555IAb/p0J/GU3cuuwTE1mn
	RUQYIpcJ9LHSQzPPxrcVbLusF5jOpsQ2F/JaqwS4vnZJ0lOspIEWmQcp65qEDzRpNiqWqdjgDxjYc
	pO/3knR809nAVYsbG3jvCnytnR86RzcOIqivukPtPk4rvcsIFY0+8FyfrmHO9FoUZrbsYTap47Tvm
	yb2HV7Ljxv04yBCVbcdHvg4aDR6Wc5DlSyekQSDL+3tiz9DMJ1/jMfJIIRt1x0oVg43t7anpNCFzB
	xzm9RxAA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCaFn-00000001ihK-3xn4
	for barebox@lists.infradead.org;
	Wed, 07 May 2025 08:35:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCaFA-00040g-Cq; Wed, 07 May 2025 10:35:08 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCaFA-001WvC-0e;
	Wed, 07 May 2025 10:35:08 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCa2e-00AQeI-21;
	Wed, 07 May 2025 10:22:12 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  7 May 2025 10:22:01 +0200
Message-Id: <20250507082209.3289972-23-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250507082209.3289972-1-a.fatoum@pengutronix.de>
References: <20250507082209.3289972-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250507_093548_435090_A24306C8 
X-CRM114-Status: GOOD (  14.61  )
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
Subject: [PATCH v2 22/30] mci: imx-esdhc: select different pinctrl state depending on frequency
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Like done before for the card side, we need to adjust drive strength on
the host as well with higher data rates. For i.MX, this is done via
speed-specific pincontrol groups, so implement this binding.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/imx-esdhc.c | 48 +++++++++++++++++++++++++++++++++++++++++
 drivers/mci/imx-esdhc.h |  3 +++
 2 files changed, 51 insertions(+)

diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index 3871f85ea6d6..18a5750ed0ed 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -14,6 +14,7 @@
 #include <of.h>
 #include <malloc.h>
 #include <mci.h>
+#include <linux/pinctrl/consumer.h>
 #include <clock.h>
 #include <io.h>
 #include <linux/clk.h>
@@ -56,6 +57,9 @@
 #define ESDHC_TUNING_STEP_MASK		0x00070000
 #define ESDHC_TUNING_STEP_SHIFT		16
 
+/* pinctrl state */
+#define ESDHC_PINCTRL_STATE_100MHZ	"state_100mhz"
+#define ESDHC_PINCTRL_STATE_200MHZ	"state_200mhz"
 
 #define to_fsl_esdhc(mci)	container_of(mci, struct fsl_esdhc_host, mci)
 
@@ -133,6 +137,37 @@ static void set_sysctl(struct mci_host *mci, u32 clock, bool ddr)
 		   10 * MSECOND);
 }
 
+static int esdhc_change_pinstate(struct fsl_esdhc_host *host,
+				 unsigned int uhs)
+{
+	struct pinctrl_state *pinctrl;
+
+	dev_dbg(host->dev, "change pinctrl state for uhs %d\n", uhs);
+
+	if (IS_ERR(host->pinctrl) ||
+		IS_ERR(host->pins_100mhz) ||
+		IS_ERR(host->pins_200mhz))
+		return -EINVAL;
+
+	switch (uhs) {
+	case MMC_TIMING_UHS_SDR50:
+	case MMC_TIMING_UHS_DDR50:
+		pinctrl = host->pins_100mhz;
+		break;
+	case MMC_TIMING_UHS_SDR104:
+	case MMC_TIMING_MMC_HS200:
+	case MMC_TIMING_MMC_HS400:
+		pinctrl = host->pins_200mhz;
+		break;
+	default:
+		/* back to default state for other legacy timing */
+		return pinctrl_select_state_default(host->dev);
+	}
+
+	return pinctrl_select_state(host->pinctrl, pinctrl);
+}
+
+
 static void usdhc_set_timing(struct fsl_esdhc_host *host, enum mci_timing timing)
 {
 	u32 mixctrl;
@@ -159,6 +194,8 @@ static void usdhc_set_timing(struct fsl_esdhc_host *host, enum mci_timing timing
 		sdhci_write32(&host->sdhci, IMX_SDHCI_MIXCTRL, mixctrl);
 	}
 
+	esdhc_change_pinstate(host, timing);
+
 	host->sdhci.timing = timing;
 }
 
@@ -355,6 +392,13 @@ static void fsl_esdhc_probe_dt(struct device *dev, struct fsl_esdhc_host *host)
 		boarddata->tuning_start_tap = ESDHC_TUNING_START_TAP_DEFAULT;
 	if (of_property_read_u32(np, "fsl,delay-line", &boarddata->delay_line))
 		boarddata->delay_line = 0;
+
+	if (esdhc_is_usdhc(host) && !IS_ERR(host->pinctrl)) {
+		host->pins_100mhz = pinctrl_lookup_state(host->pinctrl,
+						ESDHC_PINCTRL_STATE_100MHZ);
+		host->pins_200mhz = pinctrl_lookup_state(host->pinctrl,
+						ESDHC_PINCTRL_STATE_200MHZ);
+	}
 }
 
 static int fsl_esdhc_probe(struct device *dev)
@@ -417,6 +461,10 @@ static int fsl_esdhc_probe(struct device *dev)
 
 	mci_of_parse(&host->mci);
 
+	host->pinctrl = pinctrl_get(dev);
+	if (IS_ERR(host->pinctrl))
+		dev_warn(host->dev, "could not get pinctrl\n");
+
 	fsl_esdhc_probe_dt(dev, host);
 
 	ret = mci_register(&host->mci);
diff --git a/drivers/mci/imx-esdhc.h b/drivers/mci/imx-esdhc.h
index 569986c1bf0e..e24d76d0c687 100644
--- a/drivers/mci/imx-esdhc.h
+++ b/drivers/mci/imx-esdhc.h
@@ -153,6 +153,9 @@ struct fsl_esdhc_host {
 	struct mci_host		mci;
 	struct clk		*clk;
 	struct device		*dev;
+	struct pinctrl		*pinctrl;
+	struct pinctrl_state	*pins_100mhz;
+	struct pinctrl_state	*pins_200mhz;
 	const struct esdhc_soc_data *socdata;
 	struct esdhc_platform_data boarddata;
 	u32		last_cmd;
-- 
2.39.5



