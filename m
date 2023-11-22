Delivery-date: Wed, 22 Nov 2023 11:54:54 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r5ksg-004EnK-0z
	for lore@lore.pengutronix.de;
	Wed, 22 Nov 2023 11:54:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r5ksg-00019r-7U
	for lore@pengutronix.de; Wed, 22 Nov 2023 11:54:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NwEkEKKPv4Im3pYCKmUTluHoZYGqiSoevv9J2aHIPmE=; b=K8F0uWJ1O2Q2U1BWjBoBM3q3X8
	uEUVhSMNBoXMQWW2hfG/mKOThLjnKXkVcKXSfz1lauKOpLQJUpL8HL4B5XGRbBc8vvQfsVzGbIdiC
	WoopPSodVHd2Hro8f035BWCuD/xgLAe1Hj4LBU75zkCItbY6yOHmLmVP95ndgTGn0CxddrDS4S0yH
	6QaDAaIXjIom+dK1ljnyCWjbiZP5pumONrLMaynKYzHMgcU5eJG/rvl4BDdC8x3NokBDLC8pk+EDB
	+iP8SQGKXkIfPozLmLuGarZJ7q4mzfJwTaTMd54WUN67oar03rll/+kvMHXJIMJ39AB09b/GvBakI
	f6cjhI3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5krL-001U3l-2n;
	Wed, 22 Nov 2023 10:53:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5krG-001Tzx-0v
	for barebox@lists.infradead.org;
	Wed, 22 Nov 2023 10:53:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r5krC-0000na-Tp; Wed, 22 Nov 2023 11:53:22 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r5krC-00An7s-HP; Wed, 22 Nov 2023 11:53:22 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1r5krC-00Fnz9-1Y;
	Wed, 22 Nov 2023 11:53:22 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 22 Nov 2023 11:53:21 +0100
Message-Id: <20231122105321.3767044-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231122105321.3767044-1-s.hauer@pengutronix.de>
References: <20231122105321.3767044-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_025326_346144_A74D1549 
X-CRM114-Status: GOOD (  16.96  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 3/3] mci: imx-esdhc: Layerscape: add eMMC DDR52 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The Layerscape variant of the imx-esdhc also supports eMMC DDR52,
add support for this mode.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/imx-esdhc.c | 41 ++++++++++++++++++++++++++++++++++++-----
 drivers/mci/imx-esdhc.h |  2 ++
 2 files changed, 38 insertions(+), 5 deletions(-)

diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index 92aea9ed9d..e1d4e3c2d4 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -45,12 +45,15 @@ esdhc_send_cmd(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data)
 
 static void set_sysctl(struct mci_host *mci, u32 clock, bool ddr)
 {
-	int div, pre_div, ddr_pre_div = ddr ? 2 : 1;
+	int div, pre_div, ddr_pre_div = 1;
 	struct fsl_esdhc_host *host = to_fsl_esdhc(mci);
 	int sdhc_clk = clk_get_rate(host->clk);
 	u32 clk;
 	unsigned long  cur_clock;
 
+	if (esdhc_is_usdhc(host) && ddr)
+		ddr_pre_div = 2;
+
 	if (esdhc_is_layerscape(host))
 		sdhc_clk >>= 1;
 
@@ -106,7 +109,7 @@ static void set_sysctl(struct mci_host *mci, u32 clock, bool ddr)
 		   10 * MSECOND);
 }
 
-static void esdhc_set_timing(struct fsl_esdhc_host *host, enum mci_timing timing)
+static void usdhc_set_timing(struct fsl_esdhc_host *host, enum mci_timing timing)
 {
 	u32 mixctrl;
 
@@ -126,6 +129,30 @@ static void esdhc_set_timing(struct fsl_esdhc_host *host, enum mci_timing timing
 	host->sdhci.timing = timing;
 }
 
+static void layerscape_set_timing(struct fsl_esdhc_host *host, enum mci_timing timing)
+{
+	esdhc_clrbits32(host, SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET,
+			SYSCTL_CKEN);
+
+	switch (timing) {
+	case MMC_TIMING_UHS_DDR50:
+	case MMC_TIMING_MMC_DDR52:
+		esdhc_clrsetbits32(host, SDHCI_ACMD12_ERR__HOST_CONTROL2,
+				   SDHCI_ACMD12_ERR__HOST_CONTROL2_UHSM,
+				   FIELD_PREP(SDHCI_ACMD12_ERR__HOST_CONTROL2_UHSM, 4));
+		break;
+	default:
+		esdhc_clrbits32(host, SDHCI_ACMD12_ERR__HOST_CONTROL2,
+				SDHCI_ACMD12_ERR__HOST_CONTROL2_UHSM);
+		break;
+	}
+
+	esdhc_setbits32(host, SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET,
+			SYSCTL_CKEN);
+
+	host->sdhci.timing = timing;
+}
+
 static void esdhc_set_ios(struct mci_host *mci, struct mci_ios *ios)
 {
 	struct fsl_esdhc_host *host = to_fsl_esdhc(mci);
@@ -137,8 +164,12 @@ static void esdhc_set_ios(struct mci_host *mci, struct mci_ios *ios)
 	 * divide by 2 automatically. So need to do this before
 	 * setting clock rate.
 	 */
-	if (esdhc_is_usdhc(host) && host->sdhci.timing != ios->timing)
-		esdhc_set_timing(host, ios->timing);
+	if (host->sdhci.timing != ios->timing) {
+		if (esdhc_is_usdhc(host))
+			usdhc_set_timing(host, ios->timing);
+		else if (esdhc_is_layerscape(host))
+			layerscape_set_timing(host, ios->timing);
+	}
 
 	/* Set the clock speed */
 	set_sysctl(mci, ios->clock, mci_timing_is_ddr(ios->timing));
@@ -319,7 +350,7 @@ static int fsl_esdhc_probe(struct device *dev)
 	if (ret)
 		goto err_clk_disable;
 
-	if (esdhc_is_usdhc(host))
+	if (esdhc_is_usdhc(host) || esdhc_is_layerscape(host))
 		mci->host_caps |= MMC_CAP_MMC_3_3V_DDR | MMC_CAP_MMC_1_8V_DDR;
 
 	rate = clk_get_rate(host->clk);
diff --git a/drivers/mci/imx-esdhc.h b/drivers/mci/imx-esdhc.h
index 047c32615d..eff556f2ff 100644
--- a/drivers/mci/imx-esdhc.h
+++ b/drivers/mci/imx-esdhc.h
@@ -39,6 +39,8 @@
 
 #define PIO_TIMEOUT		100000
 
+#define SDHCI_ACMD12_ERR__HOST_CONTROL2_UHSM GENMASK(18, 16) /* Layerscape specific */
+
 #define IMX_SDHCI_WML		0x44
 #define IMX_SDHCI_MIXCTRL	0x48
 /* Imported from Linux Kernel drivers/mmc/host/sdhci-esdhc-imx.c */
-- 
2.39.2



