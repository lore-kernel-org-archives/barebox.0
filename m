Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XSNrr-0003A2-En
 for barebox@lists.infradead.org; Fri, 12 Sep 2014 10:14:18 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 12 Sep 2014 12:13:47 +0200
Message-Id: <1410516830-9403-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1410516830-9403-1-git-send-email-s.hauer@pengutronix.de>
References: <1410516830-9403-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/10] resource: Let dev_get_mem_region return an error pointer
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/base/driver.c            |  7 ++++++-
 drivers/bus/omap-gpmc.c          |  5 +++--
 drivers/net/gianfar.c            | 11 +++++++----
 drivers/net/orion-gbe.c          |  5 +++++
 drivers/net/phy/mdio-mvebu.c     |  5 +++--
 drivers/pinctrl/imx-iomux-v1.c   |  3 +++
 drivers/serial/serial_clps711x.c |  2 ++
 7 files changed, 29 insertions(+), 9 deletions(-)

diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index 524ed1c..23f31ce 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -265,7 +265,7 @@ void *dev_get_mem_region(struct device_d *dev, int num)
 
 	res = dev_get_resource(dev, IORESOURCE_MEM, num);
 	if (IS_ERR(res))
-		return NULL;
+		return ERR_CAST(res);
 
 	return (void __force *)res->start;
 }
@@ -348,6 +348,8 @@ int generic_memmap_ro(struct cdev *cdev, void **map, int flags)
 	if (flags & PROT_WRITE)
 		return -EACCES;
 	*map = dev_get_mem_region(cdev->dev, 0);
+	if (IS_ERR(*map))
+		return PTR_ERR(*map);
 	return 0;
 }
 
@@ -357,6 +359,9 @@ int generic_memmap_rw(struct cdev *cdev, void **map, int flags)
 		return -EINVAL;
 
 	*map = dev_get_mem_region(cdev->dev, 0);
+	if (IS_ERR(*map))
+		return PTR_ERR(*map);
+
 	return 0;
 }
 
diff --git a/drivers/bus/omap-gpmc.c b/drivers/bus/omap-gpmc.c
index d7b02cf..6cc3269 100644
--- a/drivers/bus/omap-gpmc.c
+++ b/drivers/bus/omap-gpmc.c
@@ -17,6 +17,7 @@
 #include <of_address.h>
 #include <of_mtd.h>
 #include <linux/clk.h>
+#include <linux/err.h>
 #include <mach/gpmc_nand.h>
 #include <mach/gpmc.h>
 
@@ -404,8 +405,8 @@ static int gpmc_probe_nand_child(struct device_d *dev,
 	}
 
 	gpmc_base = dev_get_mem_region(dev, 0);
-	if (!gpmc_base)
-		return -ENODEV;
+	if (IS_ERR(gpmc_base))
+		return PTR_ERR(gpmc_base);
 
 	gpmc_nand_data.cs = val;
 	gpmc_nand_data.of_node = child;
diff --git a/drivers/net/gianfar.c b/drivers/net/gianfar.c
index a308035..5e47c64 100644
--- a/drivers/net/gianfar.c
+++ b/drivers/net/gianfar.c
@@ -21,6 +21,7 @@
 #include <errno.h>
 #include <asm/io.h>
 #include <linux/phy.h>
+#include <linux/err.h>
 #include "gianfar.h"
 
 /* 2 seems to be the minimum number of TX descriptors to make it work. */
@@ -489,6 +490,8 @@ static int gfar_probe(struct device_d *dev)
 
 	priv->mdiobus_tbi = gfar_info->mdiobus_tbi;
 	priv->regs = dev_get_mem_region(dev, 0);
+	if (IS_ERR(priv->regs))
+		return PTR_ERR(priv->regs);
 	priv->phyaddr = gfar_info->phyaddr;
 	priv->tbicr = gfar_info->tbicr;
 	priv->tbiana = gfar_info->tbiana;
@@ -553,8 +556,8 @@ static int gfar_phy_probe(struct device_d *dev)
 	phy = xzalloc(sizeof(*phy));
 	phy->dev = dev;
 	phy->regs = dev_get_mem_region(dev, 0);
-	if (!phy->regs)
-		return -ENOMEM;
+	if (IS_ERR(phy->regs))
+		return PTR_ERR(phy->regs);
 
 	phy->miibus.read = gfar_miiphy_read;
 	phy->miibus.write = gfar_miiphy_write;
@@ -584,8 +587,8 @@ static int gfar_tbiphy_probe(struct device_d *dev)
 	phy = xzalloc(sizeof(*phy));
 	phy->dev = dev;
 	phy->regs = dev_get_mem_region(dev, 0);
-	if (!phy->regs)
-		return -ENOMEM;
+	if (IS_ERR(phy->regs))
+		return PTR_ERR(phy->regs);
 
 	phy->miibus.read = gfar_miiphy_read;
 	phy->miibus.write = gfar_miiphy_write;
diff --git a/drivers/net/orion-gbe.c b/drivers/net/orion-gbe.c
index 991c8a8..ab761ad 100644
--- a/drivers/net/orion-gbe.c
+++ b/drivers/net/orion-gbe.c
@@ -415,6 +415,8 @@ static int port_probe(struct device_d *parent, struct port_priv *port)
 		port->intf = PHY_INTERFACE_MODE_RGMII;
 
 	port->regs = dev_get_mem_region(parent, 0) + PORTn_REGS(port->portno);
+	if (IS_ERR(port->regs))
+		return PTR_ERR(port->regs);
 
 	/* allocate rx/tx descriptors and buffers */
 	port->txdesc = dma_alloc_coherent(ALIGN(sizeof(*port->txdesc), 16));
@@ -490,6 +492,9 @@ static int orion_gbe_probe(struct device_d *dev)
 	dev->priv = gbe;
 
 	gbe->regs = dev_get_mem_region(dev, 0);
+	if (IS_ERR(gbe->regs))
+		return PTR_ERR(gbe->regs);
+
 	gbe->clk = clk_get(dev, 0);
 	if (!IS_ERR(gbe->clk))
 		clk_enable(gbe->clk);
diff --git a/drivers/net/phy/mdio-mvebu.c b/drivers/net/phy/mdio-mvebu.c
index b90e281..460e2b4 100644
--- a/drivers/net/phy/mdio-mvebu.c
+++ b/drivers/net/phy/mdio-mvebu.c
@@ -28,6 +28,7 @@
 #include <io.h>
 #include <of.h>
 #include <linux/clk.h>
+#include <linux/err.h>
 #include <linux/phy.h>
 
 #define SMI_DATA_SHIFT          0
@@ -113,8 +114,8 @@ static int mvebu_mdio_probe(struct device_d *dev)
 	dev->priv = priv;
 
 	priv->regs = dev_get_mem_region(dev, 0);
-	if (!priv->regs)
-		return -ENOMEM;
+	if (IS_ERR(priv->regs))
+		return PTR_ERR(priv->regs);
 
 	priv->clk = clk_get(dev, NULL);
 	if (IS_ERR(priv->clk))
diff --git a/drivers/pinctrl/imx-iomux-v1.c b/drivers/pinctrl/imx-iomux-v1.c
index 16415c2..a3f0480 100644
--- a/drivers/pinctrl/imx-iomux-v1.c
+++ b/drivers/pinctrl/imx-iomux-v1.c
@@ -4,6 +4,7 @@
 #include <malloc.h>
 #include <pinctrl.h>
 #include <mach/iomux-v1.h>
+#include <linux/err.h>
 
 /*
  *  GPIO Module and I/O Multiplexer
@@ -284,6 +285,8 @@ static int imx_iomux_v1_probe(struct device_d *dev)
 		return -EBUSY;
 
 	iomuxv1_base = dev_get_mem_region(dev, 0);
+	if (IS_ERR(iomuxv1_base))
+		return PTR_ERR(iomuxv1_base);
 
 	ret = of_platform_populate(dev->device_node, NULL, NULL);
 
diff --git a/drivers/serial/serial_clps711x.c b/drivers/serial/serial_clps711x.c
index a75547c..ad14373 100644
--- a/drivers/serial/serial_clps711x.c
+++ b/drivers/serial/serial_clps711x.c
@@ -147,6 +147,8 @@ static int clps711x_probe(struct device_d *dev)
 	}
 
 	s->base = dev_get_mem_region(dev, 0);
+	if (IS_ERR(s->base))
+		return PTR_ERR(s->base);
 
 	if (!dev->device_node) {
 		sprintf(syscon_dev, "syscon%i", id + 1);
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
