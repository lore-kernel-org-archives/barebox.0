Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bpacq-00036e-3T
 for barebox@lists.infradead.org; Thu, 29 Sep 2016 12:39:45 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 29 Sep 2016 14:38:59 +0200
Message-Id: <20160929123900.24853-8-s.hauer@pengutronix.de>
In-Reply-To: <20160929123900.24853-1-s.hauer@pengutronix.de>
References: <20160929123900.24853-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 8/9] usb: imx-us-phy: Convert driver to generic phy support
To: Barebox List <barebox@lists.infradead.org>

The generic phy layer now supports USB phys, so convert
the driver over to use it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/imx_defconfig    |  2 ++
 arch/arm/configs/imx_v7_defconfig |  2 ++
 drivers/usb/imx/Kconfig           |  3 +--
 drivers/usb/imx/chipidea-imx.c    | 21 ++++++++++++++++++
 drivers/usb/imx/imx-usb-phy.c     | 46 +++++++++++++++++++++++++++++++++++++--
 5 files changed, 70 insertions(+), 4 deletions(-)

diff --git a/arch/arm/configs/imx_defconfig b/arch/arm/configs/imx_defconfig
index 69ab021..7d061cd 100644
--- a/arch/arm/configs/imx_defconfig
+++ b/arch/arm/configs/imx_defconfig
@@ -107,6 +107,8 @@ CONFIG_EEPROM_AT24=y
 CONFIG_WATCHDOG=y
 CONFIG_WATCHDOG_IMX=y
 CONFIG_IMX_WEIM=y
+CONFIG_GENERIC_PHY=y
+CONFIG_USB_NOP_XCEIV=y
 CONFIG_FS_EXT4=y
 CONFIG_FS_TFTP=y
 CONFIG_FS_NFS=y
diff --git a/arch/arm/configs/imx_v7_defconfig b/arch/arm/configs/imx_v7_defconfig
index e3a8f47..ac649ac 100644
--- a/arch/arm/configs/imx_v7_defconfig
+++ b/arch/arm/configs/imx_v7_defconfig
@@ -177,6 +177,8 @@ CONFIG_MXS_APBH_DMA=y
 CONFIG_GPIO_STMPE=y
 CONFIG_REGULATOR=y
 CONFIG_REGULATOR_FIXED=y
+CONFIG_GENERIC_PHY=y
+CONFIG_USB_NOP_XCEIV=y
 CONFIG_FS_EXT4=y
 CONFIG_FS_TFTP=y
 CONFIG_FS_NFS=y
diff --git a/drivers/usb/imx/Kconfig b/drivers/usb/imx/Kconfig
index b1ce682..b0c6a41 100644
--- a/drivers/usb/imx/Kconfig
+++ b/drivers/usb/imx/Kconfig
@@ -16,5 +16,4 @@ config USB_IMX_CHIPIDEA
 
 config USB_IMX_PHY
 	bool
-	depends on ARCH_IMX
-	default y if ARCH_IMX6
+	default y if ARCH_IMX6 && GENERIC_PHY
diff --git a/drivers/usb/imx/chipidea-imx.c b/drivers/usb/imx/chipidea-imx.c
index a6f5926..ed00ff4 100644
--- a/drivers/usb/imx/chipidea-imx.c
+++ b/drivers/usb/imx/chipidea-imx.c
@@ -26,6 +26,7 @@
 #include <usb/ulpi.h>
 #include <usb/fsl_usb2.h>
 #include <linux/err.h>
+#include <linux/phy/phy.h>
 
 #define MXC_EHCI_PORTSC_MASK ((0xf << 28) | (1 << 25))
 
@@ -40,6 +41,8 @@ struct imx_chipidea {
 	struct param_d *param_mode;
 	int role_registered;
 	struct regulator *vbus;
+	struct phy *phy;
+	struct usb_phy *usbphy;
 };
 
 static int imx_chipidea_port_init(void *drvdata)
@@ -260,6 +263,23 @@ static int imx_chipidea_probe(struct device_d *dev)
 	if (IS_ERR(ci->vbus))
 		ci->vbus = NULL;
 
+	if (of_property_read_bool(dev->device_node, "fsl,usbphy")) {
+		ci->phy = of_phy_get_by_phandle(dev, "fsl,usbphy", 0);
+		if (IS_ERR(ci->phy)) {
+			ret = PTR_ERR(ci->phy);
+			dev_err(dev, "Cannot get phy: %s\n", strerror(-ret));
+			return ret;
+		} else {
+			ci->usbphy = phy_to_usbphy(ci->phy);
+			if (IS_ERR(ci->usbphy))
+				return PTR_ERR(ci->usbphy);
+
+			ret = phy_init(ci->phy);
+			if (ret)
+				return ret;
+		}
+	}
+
 	iores = dev_request_mem_resource(dev, 0);
 	if (IS_ERR(iores))
 		return PTR_ERR(iores);
@@ -270,6 +290,7 @@ static int imx_chipidea_probe(struct device_d *dev)
 	ci->data.init = imx_chipidea_port_init;
 	ci->data.post_init = imx_chipidea_port_post_init;
 	ci->data.drvdata = ci;
+	ci->data.usbphy = ci->usbphy;
 
 	if ((ci->flags & MXC_EHCI_PORTSC_MASK) == MXC_EHCI_MODE_HSIC)
 		imx_chipidea_port_init(ci);
diff --git a/drivers/usb/imx/imx-usb-phy.c b/drivers/usb/imx/imx-usb-phy.c
index eec195d..2829ffc 100644
--- a/drivers/usb/imx/imx-usb-phy.c
+++ b/drivers/usb/imx/imx-usb-phy.c
@@ -19,6 +19,8 @@
 #include <errno.h>
 #include <driver.h>
 #include <malloc.h>
+#include <usb/phy.h>
+#include <linux/phy/phy.h>
 #include <linux/clk.h>
 #include <linux/err.h>
 
@@ -33,12 +35,17 @@
 #define USBPHY_CTRL_ENUTMILEVEL2	(1 << 14)
 
 struct imx_usbphy {
+	struct usb_phy usb_phy;
+	struct phy *phy;
 	void __iomem *base;
 	struct clk *clk;
+	struct phy_provider *provider;
 };
 
-static int imx_usbphy_enable(struct imx_usbphy *imxphy)
+static int imx_usbphy_phy_init(struct phy *phy)
 {
+	struct imx_usbphy *imxphy = phy_get_drvdata(phy);
+
 	clk_enable(imxphy->clk);
 
 	/* reset usbphy */
@@ -60,6 +67,26 @@ static int imx_usbphy_enable(struct imx_usbphy *imxphy)
 	return 0;
 }
 
+static struct phy *imx_usbphy_xlate(struct device_d *dev,
+				    struct of_phandle_args *args)
+{
+	struct imx_usbphy *imxphy = dev->priv;
+
+	return imxphy->phy;
+}
+
+static struct usb_phy *imx_usbphy_to_usbphy(struct phy *phy)
+{
+	struct imx_usbphy *imxphy = phy_get_drvdata(phy);
+
+	return &imxphy->usb_phy;
+}
+
+static const struct phy_ops imx_phy_ops = {
+	.init = imx_usbphy_phy_init,
+	.to_usbphy = imx_usbphy_to_usbphy,
+};
+
 static int imx_usbphy_probe(struct device_d *dev)
 {
 	struct resource *iores;
@@ -82,7 +109,22 @@ static int imx_usbphy_probe(struct device_d *dev)
 		goto err_clk;
 	}
 
-	imx_usbphy_enable(imxphy);
+	dev->priv = imxphy;
+
+	imxphy->usb_phy.dev = dev;
+	imxphy->phy = phy_create(dev, NULL, &imx_phy_ops, NULL);
+	if (IS_ERR(imxphy->phy)) {
+		ret = PTR_ERR(imxphy->phy);
+		goto err_clk;
+	}
+
+	phy_set_drvdata(imxphy->phy, imxphy);
+
+	imxphy->provider = of_phy_provider_register(dev, imx_usbphy_xlate);
+	if (IS_ERR(imxphy->provider)) {
+		ret = PTR_ERR(imxphy->provider);
+		goto err_clk;
+	}
 
 	dev_dbg(dev, "phy enabled\n");
 
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
