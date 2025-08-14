Delivery-date: Thu, 14 Aug 2025 15:15:40 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1umXnx-000WCS-0P
	for lore@lore.pengutronix.de;
	Thu, 14 Aug 2025 15:15:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1umXnv-0007gI-SX
	for lore@pengutronix.de; Thu, 14 Aug 2025 15:15:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=jHL+dtQ0qTCZq9B65CFZA3rHpqa8uvCnmLdS4nZPdDI=; b=3vtdzhVhfDQIRbPRSuXISjSJIh
	Sz0N5cLAj0QCPxUY/jrqz0zLqomTEgAdTtrA/fc8EXW7cnyY8r5yoBlrkGwVRTz/3aMywzQy2oY7P
	3uzqc48XqrqDZrFUVukU8a8LA8Gu9KlfRRaTVoWORRjxM0kg45qMhLpGrNJrbBCwgff7kyTDBJUu7
	Yb0zS2YTIByh8nBiqNqfuKaHG9F2XOjRdbtLQs4a1u8TJfMc/8en8rgZFqx3CLZxAeMlTbObBQ9Cj
	HAA7GKRBts4ZBGSHnRwBbmzlhP3Qwdh//WqbaHEbABxSxPBkTQyP8OxTjQsNslEpcpc+44BAxnWC2
	g9PJtbNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umXnF-0000000Gxy8-3mVw;
	Thu, 14 Aug 2025 13:14:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umUhU-0000000GVAJ-2tUW
	for barebox@lists.infradead.org;
	Thu, 14 Aug 2025 09:56:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1umUhS-0002TM-4O; Thu, 14 Aug 2025 11:56:46 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1umUhR-000EXg-34;
	Thu, 14 Aug 2025 11:56:45 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1umUhR-004kUc-2h;
	Thu, 14 Aug 2025 11:56:45 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 14 Aug 2025 11:56:42 +0200
Message-Id: <20250814095643.1132022-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250814_025648_725255_5065ABE7 
X-CRM114-Status: GOOD (  17.08  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] watchdog: rti_wdt: Fix reset on AM62L
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Due to different watchdog output routing on the AM62L we have to set RTIWWDRXCTRL
register differently in order to properly reset the SoC. Handle this
difference in form of a SoC specific compatible string. Based on the
corresponding Linux patch posted here [1]

[1] https://lore.kernel.org/all/20250721235705.1160972-1-jm@ti.com/

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/watchdog/rti_wdt.c | 31 +++++++++++++++++++++++++++----
 1 file changed, 27 insertions(+), 4 deletions(-)

diff --git a/drivers/watchdog/rti_wdt.c b/drivers/watchdog/rti_wdt.c
index ffc4427059..ba943495ff 100644
--- a/drivers/watchdog/rti_wdt.c
+++ b/drivers/watchdog/rti_wdt.c
@@ -26,7 +26,8 @@
 #define RTIWWDRXCTRL		0xa4
 #define RTIWWDSIZECTRL		0xa8
 
-#define RTIWWDRX_NMI		0xa
+#define RTIWWDRXN_RST 		0x5
+#define RTIWWDRXN_NMI		0xa
 
 #define RTIWWDSIZE_100P		0x5
 #define RTIWWDSIZE_50P		0x50
@@ -42,10 +43,15 @@
 
 #define DWDST			BIT(1)
 
+struct rti_wdt_data {
+	bool nmi;
+};
+
 struct rti_wdt_priv {
 	void __iomem *regs;
 	struct watchdog wdt;
 	unsigned int clk_hz;
+	struct rti_wdt_data *data;
 };
 
 static int rti_wdt_ping(struct watchdog *wdt)
@@ -67,7 +73,7 @@ static int rti_wdt_ping(struct watchdog *wdt)
 static int rti_wdt_settimeout(struct watchdog *wdt, unsigned int timeout)
 {
 	struct rti_wdt_priv *priv = container_of(wdt, struct rti_wdt_priv, wdt);
-	u32 timer_margin;
+	u32 timer_margin, reaction;
 
 	if (!timeout)
 		return -ENOSYS;
@@ -84,7 +90,13 @@ static int rti_wdt_settimeout(struct watchdog *wdt, unsigned int timeout)
 		timer_margin = WDT_PRELOAD_MAX;
 
 	writel(timer_margin, priv->regs + RTIDWDPRLD);
-	writel(RTIWWDRX_NMI, priv->regs + RTIWWDRXCTRL);
+
+	if (priv->data->nmi)
+		reaction = RTIWWDRXN_NMI;
+	else
+		reaction = RTIWWDRXN_RST;
+
+	writel(reaction, priv->regs + RTIWWDRXCTRL);
 	writel(RTIWWDSIZE_50P, priv->regs + RTIWWDSIZECTRL);
 
 	(void)readl(priv->regs + RTIWWDSIZECTRL);
@@ -137,6 +149,8 @@ static int rti_wdt_probe(struct device *dev)
 	if (priv->clk_hz == 0)
 		return -EINVAL;
 
+	priv->data = device_get_match_data(dev);
+
 	/*
 	 * If watchdog is running at 32k clock, it is not accurate.
 	 * Adjust frequency down in this case so that it does not expire
@@ -172,8 +186,17 @@ static int rti_wdt_probe(struct device *dev)
 	return watchdog_register(wdt);
 }
 
+static struct rti_wdt_data j7_wdt = {
+	.nmi = true,
+};
+
+static struct rti_wdt_data am62l_wdt = {
+	.nmi = false,
+};
+
 static const struct of_device_id rti_wdt_of_match[] = {
-	{ .compatible = "ti,j7-rti-wdt", },
+	{ .compatible = "ti,j7-rti-wdt", .data = &j7_wdt },
+	{ .compatible = "ti,am62l-rti-wdt", .data = &am62l_wdt },
 	{ /* sentinel */ }
 };
 
-- 
2.39.5



