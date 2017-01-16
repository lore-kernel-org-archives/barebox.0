Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cT4su-0002kJ-0T
 for barebox@lists.infradead.org; Mon, 16 Jan 2017 10:51:38 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 16 Jan 2017 11:50:55 +0100
Message-Id: <20170116105108.13617-11-s.hauer@pengutronix.de>
In-Reply-To: <20170116105108.13617-1-s.hauer@pengutronix.de>
References: <20170116105108.13617-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/23] usb: imx: Add clock support
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/imx/chipidea-imx.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/usb/imx/chipidea-imx.c b/drivers/usb/imx/chipidea-imx.c
index f4354876c..ccd534613 100644
--- a/drivers/usb/imx/chipidea-imx.c
+++ b/drivers/usb/imx/chipidea-imx.c
@@ -27,6 +27,7 @@
 #include <usb/fsl_usb2.h>
 #include <linux/err.h>
 #include <linux/phy/phy.h>
+#include <linux/clk.h>
 
 #define MXC_EHCI_PORTSC_MASK ((0xf << 28) | (1 << 25))
 
@@ -44,6 +45,7 @@ struct imx_chipidea {
 	struct regulator *vbus;
 	struct phy *phy;
 	struct usb_phy *usbphy;
+	struct clk *clk;
 };
 
 static int imx_chipidea_port_init(void *drvdata)
@@ -268,6 +270,17 @@ static int imx_chipidea_probe(struct device_d *dev)
 	if (IS_ERR(ci->vbus))
 		ci->vbus = NULL;
 
+	/*
+	 * Some devices have more than one clock, in this case they are enabled
+	 * by default in the clock driver. At least enable the main clock for
+	 * devices which have only one.
+	 */
+	ci->clk = clk_get(dev, NULL);
+	if (IS_ERR(ci->clk))
+		return PTR_ERR(ci->clk);
+
+	clk_enable(ci->clk);
+
 	if (of_property_read_bool(dev->device_node, "fsl,usbphy")) {
 		ci->phy = of_phy_get_by_phandle(dev, "fsl,usbphy", 0);
 		if (IS_ERR(ci->phy)) {
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
