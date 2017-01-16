Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cT4su-0002kE-0X
 for barebox@lists.infradead.org; Mon, 16 Jan 2017 10:51:35 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 16 Jan 2017 11:50:56 +0100
Message-Id: <20170116105108.13617-12-s.hauer@pengutronix.de>
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
Subject: [PATCH 11/23] phy: usb-nop-xceiv: Add clock support
To: Barebox List <barebox@lists.infradead.org>

As stated in the FIXME comment this is needed. Get and
enable a "main_clk" just like the kernel does.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/phy/usb-nop-xceiv.c | 18 +++++++++++++++---
 1 file changed, 15 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/usb-nop-xceiv.c b/drivers/phy/usb-nop-xceiv.c
index 606e09822..d403fe4d6 100644
--- a/drivers/phy/usb-nop-xceiv.c
+++ b/drivers/phy/usb-nop-xceiv.c
@@ -27,6 +27,7 @@ struct nop_usbphy {
 	struct usb_phy usb_phy;
 	struct phy *phy;
 	struct phy_provider *provider;
+	struct clk *clk;
 };
 
 static struct phy *nop_usbphy_xlate(struct device_d *dev,
@@ -37,6 +38,13 @@ static struct phy *nop_usbphy_xlate(struct device_d *dev,
 	return nopphy->phy;
 }
 
+static int nop_usbphy_init(struct phy *phy)
+{
+	struct nop_usbphy *nopphy = phy_get_drvdata(phy);
+
+	return clk_enable(nopphy->clk);
+}
+
 static struct usb_phy *nop_usbphy_to_usbphy(struct phy *phy)
 {
 	struct nop_usbphy *nopphy = phy_get_drvdata(phy);
@@ -46,6 +54,7 @@ static struct usb_phy *nop_usbphy_to_usbphy(struct phy *phy)
 
 static const struct phy_ops nop_phy_ops = {
 	.to_usbphy = nop_usbphy_to_usbphy,
+	.init = nop_usbphy_init,
 };
 
 static int nop_usbphy_probe(struct device_d *dev)
@@ -57,7 +66,10 @@ static int nop_usbphy_probe(struct device_d *dev)
 
 	dev->priv = nopphy;
 
-	/* FIXME: Add clk support */
+	nopphy->clk = clk_get(dev, "main_clk");
+	if (IS_ERR(nopphy->clk))
+		nopphy->clk = NULL;
+
 	/* FIXME: Add vbus regulator support */
 	/* FIXME: Add vbus-detect-gpio support */
 
@@ -97,8 +109,8 @@ static struct driver_d nop_usbphy_driver = {
 	.of_compatible = DRV_OF_COMPAT(nop_usbphy_dt_ids),
 };
 
-static int nop_usbphy_init(void)
+static int nop_usbphy_driver_init(void)
 {
 	return platform_driver_register(&nop_usbphy_driver);
 }
-fs_initcall(nop_usbphy_init);
+fs_initcall(nop_usbphy_driver_init);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
