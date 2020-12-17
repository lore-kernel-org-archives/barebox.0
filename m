Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kpr8A-0006Rj-JB
 for barebox@lists.infradead.org; Thu, 17 Dec 2020 11:07:36 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mgr@pengutronix.de>) id 1kpr89-0005CE-OU
 for barebox@lists.infradead.org; Thu, 17 Dec 2020 12:07:33 +0100
Received: from mgr by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mgr@pengutronix.de>) id 1kpr89-0003uB-Dx
 for barebox@lists.infradead.org; Thu, 17 Dec 2020 12:07:33 +0100
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Thu, 17 Dec 2020 12:07:30 +0100
Message-Id: <20201217110731.14914-5-m.grzeschik@pengutronix.de>
In-Reply-To: <20201217110731.14914-1-m.grzeschik@pengutronix.de>
References: <20201217110731.14914-1-m.grzeschik@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v2 4/5] usb: dwc2: update the dr_mode on set_mode callback
To: barebox@lists.infradead.org

The dwc2 dr_mode can be configured with otg.mode in otg mode. Currently
the mode will not be set with the users decision. This patch fixes this
by overwriting the mode with the one set by set_mode callback.

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 drivers/usb/dwc2/dwc2.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/usb/dwc2/dwc2.c b/drivers/usb/dwc2/dwc2.c
index 6f5127fc3b..65b92b542e 100644
--- a/drivers/usb/dwc2/dwc2.c
+++ b/drivers/usb/dwc2/dwc2.c
@@ -20,6 +20,9 @@ static int dwc2_set_mode(void *ctx, enum usb_dr_mode mode)
 {
 	struct dwc2 *dwc2 = ctx;
 	int ret = -ENODEV;
+	int oldmode = dwc2->dr_mode;
+
+	dwc2->dr_mode = mode;
 
 	if (mode == USB_DR_MODE_HOST || mode == USB_DR_MODE_OTG) {
 		if (IS_ENABLED(CONFIG_USB_DWC2_HOST))
@@ -34,6 +37,9 @@ static int dwc2_set_mode(void *ctx, enum usb_dr_mode mode)
 			dwc2_err(dwc2, "Peripheral support not available\n");
 	}
 
+	if (ret)
+		dwc2->dr_mode = oldmode;
+
 	return ret;
 }
 
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
