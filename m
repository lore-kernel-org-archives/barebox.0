Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1beOdU-0002OI-QT
 for barebox@lists.infradead.org; Mon, 29 Aug 2016 15:38:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 29 Aug 2016 17:37:46 +0200
Message-Id: <1472485066-27702-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] usb: chipidea i.MX: Do not return unnecessary error
To: Barebox List <barebox@lists.infradead.org>

We only allow to setup the host/peripheral role once, when it's already
set then we return -EBUSY.
Return 0 instead when we set the same role again and only return -EBUSY
when we actually try to change the role.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/imx/chipidea-imx.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/usb/imx/chipidea-imx.c b/drivers/usb/imx/chipidea-imx.c
index a799abe..fb451f3 100644
--- a/drivers/usb/imx/chipidea-imx.c
+++ b/drivers/usb/imx/chipidea-imx.c
@@ -150,7 +150,7 @@ static int imx_chipidea_probe_dt(struct imx_chipidea *ci)
 
 static int ci_register_role(struct imx_chipidea *ci)
 {
-	if (ci->role_registered)
+	if (ci->role_registered != IMX_USB_MODE_OTG)
 		return -EBUSY;
 
 	if (ci->mode == IMX_USB_MODE_HOST) {
@@ -180,8 +180,12 @@ static int ci_set_mode(struct param_d *param, void *priv)
 {
 	struct imx_chipidea *ci = priv;
 
-	if (ci->role_registered)
-		return -EBUSY;
+	if (ci->role_registered != IMX_USB_MODE_OTG) {
+		if (ci->role_registered == ci->mode)
+			return 0;
+		else
+			return -EBUSY;
+	}
 
 	return ci_register_role(ci);
 }
@@ -225,6 +229,7 @@ static int imx_chipidea_probe(struct device_d *dev)
 
 	ci = xzalloc(sizeof(*ci));
 	ci->dev = dev;
+	ci->role_registered = IMX_USB_MODE_OTG;
 
 	if (IS_ENABLED(CONFIG_OFDEVICE) && dev->device_node) {
 		ret = imx_chipidea_probe_dt(ci);
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
