Delivery-date: Mon, 05 May 2025 14:39:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uBv68-002SUU-2n
	for lore@lore.pengutronix.de;
	Mon, 05 May 2025 14:39:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uBv60-0006aL-Qr
	for lore@pengutronix.de; Mon, 05 May 2025 14:39:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=n+pIkOrtd+P2BF2RJsCG1mn7xlByOzWc0N0DGDbMX1M=; b=ZKTMhVTiAkJqR0Zy3/hwr2wTfD
	95izKsK9mAyuRcD8TUIyVWtohfZkLbU1ApppQPURPom92UDbz+kNWiXJczE7cVjK2MkF6PFQ7AH23
	fOxFxhKSt5NpCuURXMWasxKNr7HRZi+tVCxQWZ6U3cyQ4kM8mGmgkcIe3UgJ1uPQlihwc2JPEswVI
	9i8iIZZhxJL9HYT6zVGo6x7QWSaqsZZQf8oTn9x058W0PkDqeH/JIxdBbbWp1mjU1BK9TtuvuMjpt
	DiWKs62KAQxUjxa8WPpxyGGDlFpeEI2s4LyNzzM1bFZYS2f/b13cSrRGc2KOtA0Bt+QG7HHLPz5t2
	zpRQIwCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBv5I-00000007LVF-1wz4;
	Mon, 05 May 2025 12:38:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBv29-00000007KaV-1Iva
	for barebox@lists.infradead.org;
	Mon, 05 May 2025 12:34:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uBv28-0004pf-4J; Mon, 05 May 2025 14:34:56 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uBv27-001EQ9-31;
	Mon, 05 May 2025 14:34:55 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uBuah-00Fb9X-1a;
	Mon, 05 May 2025 14:06:35 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 May 2025 14:06:25 +0200
Message-Id: <20250505120633.3717186-23-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250505120633.3717186-1-a.fatoum@pengutronix.de>
References: <20250505120633.3717186-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250505_053457_359169_2091C3D1 
X-CRM114-Status: GOOD (  14.68  )
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
Subject: [PATCH 22/30] mci: imx-esdhc: select different pinctrl state depending on frequency
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
index 5f427a1898b7..751b3703e579 100644
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
 
@@ -366,6 +403,13 @@ static void fsl_esdhc_probe_dt(struct device *dev, struct fsl_esdhc_host *host)
 			     &boarddata->tuning_start_tap);
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
@@ -428,6 +472,10 @@ static int fsl_esdhc_probe(struct device *dev)
 
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



