Delivery-date: Mon, 17 Oct 2022 09:11:45 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1okKHp-00BNjX-Pk
	for lore@lore.pengutronix.de; Mon, 17 Oct 2022 09:11:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1okKHn-0005vm-DT
	for lore@pengutronix.de; Mon, 17 Oct 2022 09:11:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xUamluc1pJVGz/X1h9nfgrR0HpNlzHMcMsSd8QcOAMs=; b=QtDw4+1lUag7Oiy5kYkBFDxB+8
	MA/UHoaU6eYwC77Dl/Hqdklosd02+cI/kbVcC316cS2oNfzJCvnlMz4bR/B47sNjBKMtvA2JPXMSU
	GBjVodFQr8ADIVkAe8Q62RNk8k6J0CcBXCTQ8kZeqwvALIlZNoh8bellP+IPy4NMvOeU4zcoxlCKq
	dG3cpnROUja1fpYo5bb2SldmU0czbbny0+8OgX+vvt/zgdzDTj2C7MZx/MjE2diaK3Y5g+BabJ2bQ
	0mT10zWxnKeuZUvaG3lRVcNcXpEQTFrWJFdcssQpXTcUVmBjLWS6cPEuILw6yDN6Cnk3nb7bCou5y
	IkCB98zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okKGY-008MkL-Az; Mon, 17 Oct 2022 07:10:26 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okKGD-008MZh-25
	for barebox@lists.infradead.org; Mon, 17 Oct 2022 07:10:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1okKGB-0004xo-2j; Mon, 17 Oct 2022 09:10:03 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1okKG9-0021UH-W5; Mon, 17 Oct 2022 09:10:02 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1okKG8-0067Oj-Pd; Mon, 17 Oct 2022 09:10:00 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 17 Oct 2022 09:09:56 +0200
Message-Id: <20221017071000.1458292-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221017071000.1458292-1-a.fatoum@pengutronix.de>
References: <20221017071000.1458292-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221017_001005_196556_C24A316D 
X-CRM114-Status: GOOD (  11.50  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/8] watchdog: imxwd: don't register broken imxwd-warm for i.MX7
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Due to erratum e10574 "Watchdog: A watchdog timeout or software trigger
will not reset the SOC", any use of the watchdog reset must trigger an
external PMIC or reset circuit. Registering imxwd-warm thus serves no
purpose, so don't register it for i.MX7. We'll need an alternative for
reboot mode, which will follow in a later commit.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/watchdog/imxwd.c | 30 +++++++++++++++++++++++-------
 1 file changed, 23 insertions(+), 7 deletions(-)

diff --git a/drivers/watchdog/imxwd.c b/drivers/watchdog/imxwd.c
index dba92cb46afb..b669f6702d62 100644
--- a/drivers/watchdog/imxwd.c
+++ b/drivers/watchdog/imxwd.c
@@ -213,7 +213,7 @@ static void imx_watchdog_detect_reset_source(struct imx_wd *priv)
 	/* else keep the default 'unknown' state */
 }
 
-static int imx21_wd_init(struct imx_wd *priv)
+static int imx21_wd_init_no_warm_reset(struct imx_wd *priv)
 {
 	imx_watchdog_detect_reset_source(priv);
 
@@ -225,6 +225,17 @@ static int imx21_wd_init(struct imx_wd *priv)
 	return 0;
 }
 
+static int imx21_wd_init(struct imx_wd *priv)
+{
+	priv->restart_warm.name = "imxwd-warm";
+	priv->restart_warm.restart = imxwd_force_soc_reset_internal;
+	priv->restart_warm.priority = RESTART_DEFAULT_PRIORITY - 10;
+
+	restart_handler_register(&priv->restart_warm);
+
+	return imx21_wd_init_no_warm_reset(priv);
+}
+
 static int imx_wd_probe(struct device_d *dev)
 {
 	struct resource *iores;
@@ -294,12 +305,6 @@ static int imx_wd_probe(struct device_d *dev)
 
 	restart_handler_register(&priv->restart);
 
-	priv->restart_warm.name = "imxwd-warm";
-	priv->restart_warm.restart = imxwd_force_soc_reset_internal;
-	priv->restart_warm.priority = RESTART_DEFAULT_PRIORITY - 10;
-
-	restart_handler_register(&priv->restart_warm);
-
 	return 0;
 
 error_unregister:
@@ -310,6 +315,14 @@ on_error:
 	return ret;
 }
 
+static const struct imx_wd_ops imx7d_wd_ops = {
+	.set_timeout = imx21_watchdog_set_timeout,
+	.soc_reset = imx21_soc_reset,
+	.init = imx21_wd_init_no_warm_reset,
+	.is_running = imx21_watchdog_is_running,
+	.timeout_max = 128,
+};
+
 static const struct imx_wd_ops imx21_wd_ops = {
 	.set_timeout = imx21_watchdog_set_timeout,
 	.soc_reset = imx21_soc_reset,
@@ -331,6 +344,9 @@ static __maybe_unused struct of_device_id imx_wdt_dt_ids[] = {
 	}, {
 		.compatible = "fsl,imx21-wdt",
 		.data = &imx21_wd_ops,
+	}, {
+		.compatible = "fsl,imx7d-wdt",
+		.data = &imx7d_wd_ops,
 	}, {
 		/* sentinel */
 	}
-- 
2.30.2



