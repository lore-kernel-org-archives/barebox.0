Delivery-date: Thu, 23 Nov 2023 09:17:40 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r64u3-005YJU-1H
	for lore@lore.pengutronix.de;
	Thu, 23 Nov 2023 09:17:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r64u3-0005bd-DF
	for lore@pengutronix.de; Thu, 23 Nov 2023 09:17:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=n1ri1C0lTFnxCZcGEF5RuFTsWC2fIJetpBW7R+ullBA=; b=afCItLNL0zjjD1zYVQsXjUBUHm
	zmGtVVE0Bqy8AKwNg9En1dFewox+hOUgYC07l3XtATvmA/k151Z27tKATxfnyixgWVUDRGMcatR/f
	MTlXubaBSKHQVsA0WtIzwkD/58aUH4CsFwFJdt2LN0brvYsua+66ZWK9K3BvgyciNn7Y91IwCfRUX
	+FekN/mpehnIIre1e302U/X2nEr72r0kWW4+7c1qkq3CMe1zPTk4S061ShtnBVTFNOBXVfG5j2jEA
	NSGQAmU3Np0+GdGysSsgGzF8/lKlvGVSOK1gDItt12E8DDuON/38X1JfnN0JdeakiIsciopbesTH+
	fqjcDKcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r64r7-0047JY-1l;
	Thu, 23 Nov 2023 08:14:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r64r4-0047JA-0t
	for barebox@lists.infradead.org;
	Thu, 23 Nov 2023 08:14:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r64r2-00053A-E2; Thu, 23 Nov 2023 09:14:32 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r64r0-00Azyu-Am; Thu, 23 Nov 2023 09:14:30 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r64r0-004ZuM-0k;
	Thu, 23 Nov 2023 09:14:30 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 23 Nov 2023 09:14:27 +0100
Message-Id: <20231123081427.1084418-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231123_001434_315892_20F663D6 
X-CRM114-Status: GOOD (  12.56  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] drivers: pxa: don't define clk_enable/clk_disable with different prototype
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Even on platforms without CCF support, clk_enable and clk_disable are
defined as stubs. Defining functions with the same name can thus clash
with these definitions, e.g. if <linux/clk.h> is included from a new
header. Fix this by renaming the functions.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
Please order before
https://lore.barebox.org/barebox/20231122171320.1714868-1-a.fatoum@pengutronix.de/T/#t
---
 drivers/mci/pxamci.c                | 4 ++--
 drivers/usb/gadget/udc/pxa27x_udc.c | 8 ++++----
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/mci/pxamci.c b/drivers/mci/pxamci.c
index 8d8e9e88bb5c..5df1ef5cb6fb 100644
--- a/drivers/mci/pxamci.c
+++ b/drivers/mci/pxamci.c
@@ -26,7 +26,7 @@
 #define TX_TIMEOUT (250 * MSECOND)
 #define CMD_TIMEOUT (100 * MSECOND)
 
-static void clk_enable(void)
+static void mmc_clk_enable(void)
 {
 	CKEN |= CKEN_MMC;
 }
@@ -334,7 +334,7 @@ static int pxamci_probe(struct device *dev)
 	struct pxamci_host *host;
 	int gpio_power = -1;
 
-	clk_enable();
+	mmc_clk_enable();
 	host = xzalloc(sizeof(*host));
 	iores = dev_request_mem_resource(dev, 0);
 	if (IS_ERR(iores))
diff --git a/drivers/usb/gadget/udc/pxa27x_udc.c b/drivers/usb/gadget/udc/pxa27x_udc.c
index 67b7e28de9d2..20148f48783d 100644
--- a/drivers/usb/gadget/udc/pxa27x_udc.c
+++ b/drivers/usb/gadget/udc/pxa27x_udc.c
@@ -882,12 +882,12 @@ static const struct usb_gadget_ops pxa_udc_ops = {
 	.udc_poll	= pxa_udc_gadget_poll,
 };
 
-static void clk_enable(void)
+static void usb_clk_enable(void)
 {
 	CKEN |= CKEN_USB;
 }
 
-static void clk_disable(void)
+static void usb_clk_disable(void)
 {
 	CKEN &= ~CKEN_USB;
 }
@@ -901,7 +901,7 @@ static void udc_disable(struct pxa_udc *udc)
 	udc_writel(udc, UDCICR1, 0);
 
 	udc_clear_mask_UDCCR(udc, UDCCR_UDE);
-	clk_disable();
+	usb_clk_disable();
 
 	ep0_idle(udc);
 	udc->gadget.speed = USB_SPEED_UNKNOWN;
@@ -946,7 +946,7 @@ static void udc_enable(struct pxa_udc *udc)
 	udc_writel(udc, UDCICR1, 0);
 	udc_clear_mask_UDCCR(udc, UDCCR_UDE);
 
-	clk_enable();
+	usb_clk_enable();
 
 	ep0_idle(udc);
 	udc->gadget.speed = USB_SPEED_FULL;
-- 
2.39.2



