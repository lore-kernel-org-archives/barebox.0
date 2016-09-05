Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bgnKu-0005Fw-1U
 for barebox@lists.infradead.org; Mon, 05 Sep 2016 06:24:53 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  5 Sep 2016 08:24:27 +0200
Message-Id: <1473056667-2043-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] usb: i.MX chipidea: Enable VBUS regulator when needed
To: Barebox List <barebox@lists.infradead.org>

We should enable VBUS only in host mode, not unconditionally
during probe(). Fix that.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/imx/chipidea-imx.c | 17 +++++++++++++----
 1 file changed, 13 insertions(+), 4 deletions(-)

diff --git a/drivers/usb/imx/chipidea-imx.c b/drivers/usb/imx/chipidea-imx.c
index a799abe..9857fe5 100644
--- a/drivers/usb/imx/chipidea-imx.c
+++ b/drivers/usb/imx/chipidea-imx.c
@@ -150,13 +150,23 @@ static int imx_chipidea_probe_dt(struct imx_chipidea *ci)
 
 static int ci_register_role(struct imx_chipidea *ci)
 {
+	int ret;
+
 	if (ci->role_registered)
 		return -EBUSY;
 
 	if (ci->mode == IMX_USB_MODE_HOST) {
 		if (IS_ENABLED(CONFIG_USB_EHCI)) {
 			ci->role_registered = 1;
-			return ehci_register(ci->dev, &ci->data);
+			ret = regulator_enable(ci->vbus);
+			if (ret)
+				return ret;
+
+			ret = ehci_register(ci->dev, &ci->data);
+			if (!ret)
+				return 0;
+
+			regulator_disable(ci->vbus);
 		} else {
 			dev_err(ci->dev, "Host support not available\n");
 			return -ENODEV;
@@ -242,9 +252,8 @@ static int imx_chipidea_probe(struct device_d *dev)
 	}
 
 	ci->vbus = regulator_get(dev, "vbus");
-
-	if (!IS_ERR(ci->vbus))
-		regulator_enable(ci->vbus);
+	if (IS_ERR(ci->vbus))
+		ci->vbus = NULL;
 
 	iores = dev_request_mem_resource(dev, 0);
 	if (IS_ERR(iores))
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
