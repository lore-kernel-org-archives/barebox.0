Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dD9Zb-0006qt-0l
 for barebox@lists.infradead.org; Tue, 23 May 2017 13:10:04 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 23 May 2017 15:09:37 +0200
Message-Id: <20170523130937.24433-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] usb: imx: Only use clock when it exists
To: Barebox List <barebox@lists.infradead.org>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, jbe@pengutronix.de

Fixes: bbe0df90b8e2463dd8db651e9f1dd57702985d2d

I assumed all chipidea devices actually have a clock. This is true
when looking at the device tree, but in barebox not all i.MX SoCs
use the clocks provided by the device tree. Most instead use
clkdev_add_physbase() to attach a clocks to devices. For these the
chipidea device does not have a clock.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/imx/chipidea-imx.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/usb/imx/chipidea-imx.c b/drivers/usb/imx/chipidea-imx.c
index 67d01d3de5..39593c40fb 100644
--- a/drivers/usb/imx/chipidea-imx.c
+++ b/drivers/usb/imx/chipidea-imx.c
@@ -276,10 +276,8 @@ static int imx_chipidea_probe(struct device_d *dev)
 	 * devices which have only one.
 	 */
 	ci->clk = clk_get(dev, NULL);
-	if (IS_ERR(ci->clk))
-		return PTR_ERR(ci->clk);
-
-	clk_enable(ci->clk);
+	if (!IS_ERR(ci->clk))
+		clk_enable(ci->clk);
 
 	if (of_property_read_bool(dev->device_node, "fsl,usbphy")) {
 		ci->phy = of_phy_get_by_phandle(dev, "fsl,usbphy", 0);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
