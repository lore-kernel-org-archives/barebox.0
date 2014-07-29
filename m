Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XC3S1-0006aI-TA
 for barebox@lists.infradead.org; Tue, 29 Jul 2014 09:12:15 +0000
From: Markus Pargmann <mpa@pengutronix.de>
Date: Tue, 29 Jul 2014 11:11:04 +0200
Message-Id: <1406625065-20070-1-git-send-email-mpa@pengutronix.de>
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
Subject: [PATCH v2 1/2] usb: chipidea: Add DT vbus-supply parsing
To: barebox@lists.infradead.org

Add some code to parse and enable vbus supply when probing.

Signed-off-by: Markus Pargmann <mpa@pengutronix.de>
---
 drivers/usb/imx/chipidea-imx.c | 19 ++++++++++++++++++-
 1 file changed, 18 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/imx/chipidea-imx.c b/drivers/usb/imx/chipidea-imx.c
index 9b6829b8f59f..fd3a57145f4d 100644
--- a/drivers/usb/imx/chipidea-imx.c
+++ b/drivers/usb/imx/chipidea-imx.c
@@ -15,9 +15,11 @@
 #include <common.h>
 #include <init.h>
 #include <io.h>
+#include <linux/err.h>
 #include <of.h>
 #include <errno.h>
 #include <driver.h>
+#include <regulator.h>
 #include <usb/usb.h>
 #include <usb/ehci.h>
 #include <usb/chipidea-imx.h>
@@ -136,6 +138,7 @@ static int imx_chipidea_probe(struct device_d *dev)
 	void __iomem *base;
 	struct imx_chipidea *ci;
 	uint32_t portsc;
+	struct regulator *vbus;
 
 	ci = xzalloc(sizeof(*ci));
 	ci->dev = dev;
@@ -184,9 +187,23 @@ static int imx_chipidea_probe(struct device_d *dev)
 		ret = ci_udc_register(dev, base);
 	} else {
 		dev_err(dev, "No supported role\n");
-		ret = -ENODEV;
+		return -ENODEV;
+	}
+
+	if (ret)
+		return ret;
+
+	vbus = regulator_get(dev, "vbus");
+	if (IS_ERR(vbus)) {
+		dev_err(dev, "Failed to get vbus regulator %ld\n", PTR_ERR(vbus));
+		return PTR_ERR(vbus);
 	}
 
+	if (ci->mode == IMX_USB_MODE_HOST)
+		ret = regulator_enable(vbus);
+	else
+		ret = regulator_disable(vbus);
+
 	return ret;
 };
 
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
