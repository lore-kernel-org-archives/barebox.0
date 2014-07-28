Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XBrSx-0000DG-I4
 for barebox@lists.infradead.org; Mon, 28 Jul 2014 20:24:21 +0000
From: Markus Pargmann <mpa@pengutronix.de>
Date: Mon, 28 Jul 2014 22:23:00 +0200
Message-Id: <1406578981-3761-1-git-send-email-mpa@pengutronix.de>
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
Subject: [PATCH 1/2] usb: chipidea: Add DT vbus-supply parsing
To: barebox@lists.infradead.org

Add some code to parse and enable vbus supply when probing.

Signed-off-by: Markus Pargmann <mpa@pengutronix.de>
---
 drivers/usb/imx/chipidea-imx.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/usb/imx/chipidea-imx.c b/drivers/usb/imx/chipidea-imx.c
index 9b6829b8f59f..a4cf4a1a5f3d 100644
--- a/drivers/usb/imx/chipidea-imx.c
+++ b/drivers/usb/imx/chipidea-imx.c
@@ -15,6 +15,7 @@
 #include <common.h>
 #include <init.h>
 #include <io.h>
+#include <linux/err.h>
 #include <of.h>
 #include <errno.h>
 #include <driver.h>
@@ -23,6 +24,7 @@
 #include <usb/chipidea-imx.h>
 #include <usb/ulpi.h>
 #include <usb/fsl_usb2.h>
+#include <regulator.h>
 
 #define MXC_EHCI_PORTSC_MASK ((0xf << 28) | (1 << 25))
 
@@ -187,6 +189,16 @@ static int imx_chipidea_probe(struct device_d *dev)
 		ret = -ENODEV;
 	}
 
+	if (ci->mode == IMX_USB_MODE_HOST) {
+		struct regulator *vbus = regulator_get(dev, "vbus");
+		if (!IS_ERR(vbus)) {
+			regulator_enable(vbus);
+		} else {
+			dev_err(dev, "Failed to get vbus regulator %ld\n", PTR_ERR(vbus));
+			ret = PTR_ERR(vbus);
+		}
+	}
+
 	return ret;
 };
 
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
