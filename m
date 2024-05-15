Delivery-date: Wed, 15 May 2024 13:03:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7CPp-00Fhzu-2B
	for lore@lore.pengutronix.de;
	Wed, 15 May 2024 13:03:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7CPn-00005E-MI
	for lore@pengutronix.de; Wed, 15 May 2024 13:03:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=GUDRznx7hzXt8tFiXBPmzOMTxryfwfS7qFw3ebCpwhA=; b=gv43GyPV9+Gam3kFehQSjHg9IN
	LgKtH71gCdVEEvWfIgSBUF+VM5UStbrxu2dW48gvzyZJskfa77GG9DSz4+1x4izijq+rDu+0Vd62I
	/wm83icum8Mx9WjHveG4ws1J8lSLxpEF6ksqBXri8RuLRxvnp5oRlVWqKJr5yFOmxRht2MOVkOAY0
	tpCjP+uASBS+hh+HFpFkgLKG4IbQsJrvehU+CEoEOijlhcXKmu8NxHYkxFzi6XrqpAWC20Vs4YkES
	HlTmTmTuylMiANDYU9UETX8pcmL+GdyviTYXKcPLLEF90AAnjVu4WOK0xtE9/0ZnPRM6eT8WrA5vC
	MRD5c5cQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7COg-00000001J1Y-0LEK;
	Wed, 15 May 2024 11:02:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7COd-00000001Izx-1sXR
	for barebox@lists.infradead.org;
	Wed, 15 May 2024 11:02:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s7COU-0008GS-JE; Wed, 15 May 2024 13:01:58 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s7COU-001WBu-6w; Wed, 15 May 2024 13:01:58 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s7COU-0083Zn-0J;
	Wed, 15 May 2024 13:01:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 15 May 2024 13:01:56 +0200
Message-Id: <20240515110156.1920361-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240515_040207_507120_56E95788 
X-CRM114-Status: GOOD (  16.05  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] watchdog: imxwd: Do not suspend in lpm on i.MX27
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The i.MX watchdog has two different configurable behaviours for low
power modes.  The watchdog can either be suspended during low power
modes or kept running.
The useful behaviour is normally to disable it during low power modes to
be able to suspend the system without having the watchdog resetting the
system. This setting was introduced in the Kernel back in 2014 [1] and
in barebox back in 2021 [2].
On i.MX27 however this setting has the effect that the watchdog is
suspended during normal cpu_do_idle(), so on an idle system it takes
very long time until the watchdog triggers. This renders this setting
useless, so disable it on i.MX27. This seems to be fixed on SoCs newer
than i.MX35.

[1] 1a9c5efa576ec ("watchdog: imx2_wdt: disable watchdog timer during low power mode")
[2] c3787a81f26bb ("watchdog: imxwd: suspend watchdog timer in low power mode")

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/watchdog/imxwd.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/watchdog/imxwd.c b/drivers/watchdog/imxwd.c
index 8f4de5a994..616248af38 100644
--- a/drivers/watchdog/imxwd.c
+++ b/drivers/watchdog/imxwd.c
@@ -33,6 +33,7 @@ struct imx_wd {
 	struct restart_handler restart_warm;
 	bool ext_reset;
 	bool bigendian;
+	bool suspend_in_lpm;
 };
 
 #define to_imx_wd(h) container_of(h, struct imx_wd, wd)
@@ -127,7 +128,8 @@ static int imx21_watchdog_set_timeout(struct imx_wd *priv, unsigned timeout)
 		val |= IMX21_WDOG_WCR_WDT;
 
 	/* Suspend timer in low power mode */
-	val |= IMX21_WDOG_WCR_WDZST;
+	if (priv->suspend_in_lpm)
+		val |= IMX21_WDOG_WCR_WDZST;
 
 	/*
 	 * set time and some write once bits first prior enabling the
@@ -273,6 +275,7 @@ static int imx_wd_probe(struct device *dev)
 
 	priv->ext_reset = of_property_read_bool(dev->of_node,
 						"fsl,ext-reset-output");
+	priv->suspend_in_lpm = !of_machine_is_compatible("fsl,imx27");
 
 	if (IS_ENABLED(CONFIG_WATCHDOG_IMX)) {
 		if (priv->ops->is_running) {
-- 
2.39.2



