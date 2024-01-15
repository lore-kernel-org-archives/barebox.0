Delivery-date: Mon, 15 Jan 2024 16:57:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rPPLP-000Kas-1o
	for lore@lore.pengutronix.de;
	Mon, 15 Jan 2024 16:57:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rPPLQ-0007PO-6m
	for lore@pengutronix.de; Mon, 15 Jan 2024 16:57:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=J9pa5RWfrfF0L9YHv52KBrfFJ87F+ymtbQHfmdUMdv0=; b=aTEBzUm1SnOs2Fd3CbP+/Trucz
	NIgTxehOLt2vmLAGoLaVHihHJpWByjhvmDu9HuJvBHsInWd4J4UeGjtpL5MmjRcy5U7P1loGXXxJb
	xq5vAl8WkKcj1LCD8MwNc0RnOuUl638+XVji3zBUZjxOUK6jA59lwI28OeKpxZAbb6WEZJLnr8wK6
	XSYFS9MEwAqwbUWM8Vv9ai85sF8Wf8Ha35zTU/PcW8DlYIGg9NEEGwXxf2DhuaLXBeNbqDpTUVwGZ
	J80jiU3jw0cfK51q906zkQwW7Fc6jWOzhed/wh65WVWYKa9Yf8L6ALYYbLAoWVNEIL1bOOhfillzs
	nsnDqdQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPPK8-009VCY-08;
	Mon, 15 Jan 2024 15:56:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPPK5-009V4b-10
	for barebox@lists.infradead.org;
	Mon, 15 Jan 2024 15:56:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rPPJy-0007Ey-Lt; Mon, 15 Jan 2024 16:56:18 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rPPJx-00032B-DR; Mon, 15 Jan 2024 16:56:17 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rPPJx-0040AY-10;
	Mon, 15 Jan 2024 16:56:17 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 15 Jan 2024 16:56:15 +0100
Message-Id: <20240115155615.953954-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240115155615.953954-1-s.hauer@pengutronix.de>
References: <20240115155615.953954-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240115_075625_345424_2D7D0D25 
X-CRM114-Status: GOOD (  15.13  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/2] watchdog: imxulp: Fix prescaler setting on i.MX7ulp
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On i.MX7ulp the driver assumes a clock tick rate of 1kHz. This is only
true though when the /256 prescaler is disabled. To fix this we disable
the prescaler on i.MX7ulp while keeping it enabled on i.MX93. We derived
this bug from U-Boot, the Kernel does this correctly and has the same
code as we introduce here now.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/watchdog/imxulp-wdt.c | 17 ++++++++++++-----
 1 file changed, 12 insertions(+), 5 deletions(-)

diff --git a/drivers/watchdog/imxulp-wdt.c b/drivers/watchdog/imxulp-wdt.c
index 84d558b812..5a89876175 100644
--- a/drivers/watchdog/imxulp-wdt.c
+++ b/drivers/watchdog/imxulp-wdt.c
@@ -16,14 +16,16 @@
 #include <asm/system.h>
 
 struct imxulp_socdata {
+	bool prescaler_enable;
 	unsigned int rate;
 };
 
 struct imxulp_wd {
 	struct watchdog wd;
 	void __iomem *base;
-	unsigned int rate;
+	bool prescaler_enable;
 	struct device *dev;
+	const struct imxulp_socdata *socdata;
 };
 
 #define REFRESH_WORD0 0xA602 /* 1st refresh word */
@@ -72,10 +74,13 @@ static int imxulp_watchdog_set_timeout(struct watchdog *wd, unsigned int timeout
 	while (!(readl(imxwd->base + WDOG_CS) & WDOG_CS_ULK))
 		;
 
-	writel(timeout * imxwd->rate, imxwd->base + WDOG_TOVAL);
+	writel(timeout * imxwd->socdata->rate, imxwd->base + WDOG_TOVAL);
+
+	if (imxwd->socdata->prescaler_enable)
+		cmd32 |= WDOG_CS_PRES;
 
 	writel(cmd32 | WDOG_CS_EN | WDOG_CS_UPDATE | WDOG_CS_LPO_CLK |
-	       WDOG_CS_FLG | WDOG_CS_PRES | WDOG_CS_INT, imxwd->base + WDOG_CS);
+	       WDOG_CS_FLG | WDOG_CS_INT, imxwd->base + WDOG_CS);
 
 	/* Wait WDOG reconfiguration */
 	while (!(readl(imxwd->base + WDOG_CS) & WDOG_CS_RCS))
@@ -115,10 +120,10 @@ static int imxulp_wd_probe(struct device *dev)
 	if (IS_ERR(iores))
 		return dev_err_probe(dev, PTR_ERR(iores), "could not get memory region\n");
 
-	imxwd->rate = socdata->rate;
+	imxwd->socdata = socdata;
 	imxwd->base = IOMEM(iores->start);
 	imxwd->wd.set_timeout = imxulp_watchdog_set_timeout;
-	imxwd->wd.timeout_max = 0xffff / imxwd->rate;
+	imxwd->wd.timeout_max = 0xffff / imxwd->socdata->rate;
 	imxwd->wd.hwdev = dev;
 	imxwd->wd.running = imxulp_wd_running(imxwd);
 
@@ -130,10 +135,12 @@ static int imxulp_wd_probe(struct device *dev)
 }
 
 static struct imxulp_socdata imx7ulp_wd_socdata = {
+	.prescaler_enable = false,
 	.rate = CLK_RATE_1KHZ,
 };
 
 static struct imxulp_socdata imx93_wd_socdata = {
+	.prescaler_enable = true,
 	.rate = CLK_RATE_32KHZ,
 };
 
-- 
2.39.2



