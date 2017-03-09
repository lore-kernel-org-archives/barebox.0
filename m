Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cltVr-0004oI-0M
 for barebox@lists.infradead.org; Thu, 09 Mar 2017 08:33:33 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  9 Mar 2017 09:33:05 +0100
Message-Id: <20170309083306.21101-1-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/2] usb: imx: role_registered contains role
To: Barebox List <barebox@lists.infradead.org>

role_registered contains the role, it's not a bool indicating that
a role is registered.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/imx/chipidea-imx.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/imx/chipidea-imx.c b/drivers/usb/imx/chipidea-imx.c
index ccd5346133..67d01d3de5 100644
--- a/drivers/usb/imx/chipidea-imx.c
+++ b/drivers/usb/imx/chipidea-imx.c
@@ -167,7 +167,7 @@ static int ci_register_role(struct imx_chipidea *ci)
 
 	if (ci->mode == IMX_USB_MODE_HOST) {
 		if (IS_ENABLED(CONFIG_USB_EHCI)) {
-			ci->role_registered = 1;
+			ci->role_registered = IMX_USB_MODE_HOST;
 			ret = regulator_enable(ci->vbus);
 			if (ret)
 				return ret;
@@ -185,7 +185,7 @@ static int ci_register_role(struct imx_chipidea *ci)
 
 	if (ci->mode == IMX_USB_MODE_DEVICE) {
 		if (IS_ENABLED(CONFIG_USB_GADGET_DRIVER_ARC)) {
-			ci->role_registered = 1;
+			ci->role_registered = IMX_USB_MODE_DEVICE;
 			return ci_udc_register(ci->dev, ci->base);
 		} else {
 			dev_err(ci->dev, "USB device support not available\n");
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
