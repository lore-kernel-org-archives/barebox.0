Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og103.obsmtp.com ([64.18.0.145])
 by merlin.infradead.org with smtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UrT1P-0007qa-Kh
 for barebox@lists.infradead.org; Tue, 25 Jun 2013 13:11:00 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Tue, 25 Jun 2013 14:09:59 +0100
Message-Id: <1372165800-18759-2-git-send-email-renaud.barbier@ge.com>
In-Reply-To: <1369926935-24159-1-git-send-email-renaud.barbier@ge.com>
References: <1369926935-24159-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH 1/2] ppc: gianfar MDIO buses
To: barebox@lists.infradead.org

This commit creates MDIO bus devices to separate the MDIO bus
abstraction from the Ethernet device initialisation.

It also updates the configuration of the P2020RDB ports.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 arch/ppc/boards/freescale-p2020rdb/p2020rdb.c |   13 ++-
 arch/ppc/mach-mpc85xx/eth-devices.c           |   44 +++++---
 arch/ppc/mach-mpc85xx/include/mach/gianfar.h  |    4 +
 drivers/net/gianfar.c                         |  146 +++++++++++++++++++------
 drivers/net/gianfar.h                         |   13 ++-
 5 files changed, 162 insertions(+), 58 deletions(-)

diff --git a/arch/ppc/boards/freescale-p2020rdb/p2020rdb.c b/arch/ppc/boards/freescale-p2020rdb/p2020rdb.c
index edb9bcd..6426bd3 100644
--- a/arch/ppc/boards/freescale-p2020rdb/p2020rdb.c
+++ b/arch/ppc/boards/freescale-p2020rdb/p2020rdb.c
@@ -59,12 +59,19 @@
 #define SYSCLK_50	50000000
 #define SYSCLK_100	100000000
 
-/* Ethernet. Use eTSEC3 */
+/* Define attributes for eTSEC2 and eTSEC3 */
 static struct gfar_info_struct gfar_info[] = {
 	{
+		.phyaddr = 0,
+		.tbiana = 0x1a0,
+		.tbicr = 0x9140,
+		.mdiobus_tbi = 1,
+	},
+	{
 		.phyaddr = 1,
 		.tbiana = 0,
 		.tbicr = 0,
+		.mdiobus_tbi = 2,
 	},
 };
 
@@ -82,8 +89,8 @@ static int devices_init(void)
 	add_generic_device("i2c-fsl", 1, NULL, I2C2_BASE_ADDR,
 			0x100, IORESOURCE_MEM, &i2cplat);
 
-	/* eTSEC3 */
-	fsl_eth_init(3, &gfar_info[0]);
+	fsl_eth_init(2, &gfar_info[0]);
+	fsl_eth_init(3, &gfar_info[1]);
 
 	devfs_add_partition("nor0", 0xf80000, 0x80000, DEVFS_PARTITION_FIXED,
 			    "self0");
diff --git a/arch/ppc/mach-mpc85xx/eth-devices.c b/arch/ppc/mach-mpc85xx/eth-devices.c
index c6e8f36..611a578 100644
--- a/arch/ppc/mach-mpc85xx/eth-devices.c
+++ b/arch/ppc/mach-mpc85xx/eth-devices.c
@@ -22,28 +22,40 @@
 
 #include <common.h>
 #include <driver.h>
+#include <init.h>
 #include <mach/immap_85xx.h>
 #include <mach/gianfar.h>
 
-int fsl_eth_init(int num, struct gfar_info_struct *gf)
+static int fsl_phy_init(void)
 {
-	struct resource *res;
+	int i;
+	void __iomem *base  = IOMEM(GFAR_BASE_ADDR + GFAR_TBIPA_OFFSET);
+
+	/*
+	 * The TBI address must be initialised to enable the PHY to
+	 * link up after the MDIO reset.
+	 */
+	out_be32(base, GFAR_TBIPA_END);
+	/* All ports access external PHYs via the "gfar-mdio" device */
+	add_generic_device("gfar-mdio", 0, NULL, MDIO_BASE_ADDR,
+			0x1000, IORESOURCE_MEM, NULL);
 
-	res = xzalloc(3 * sizeof(struct resource));
-	/* TSEC interface registers */
-	res[0].start = GFAR_BASE_ADDR + ((num - 1) * 0x1000);
-	res[0].end = res[0].start + 0x1000 - 1;
-	res[0].flags = IORESOURCE_MEM;
-	/* External PHY access always through eTSEC1 */
-	res[1].start = MDIO_BASE_ADDR;
-	res[1].end = res[1].start + 0x1000 - 1;
-	res[1].flags = IORESOURCE_MEM;
-	/* Access to TBI/RTBI interface. */
-	res[2].start = MDIO_BASE_ADDR + ((num - 1) * 0x1000);
-	res[2].end = res[2].start + 0x1000 - 1;
-	res[2].flags = IORESOURCE_MEM;
+	for (i = 1; i < 3; i++) {
+		out_be32(base + (i * 0x1000), GFAR_TBIPA_END - i);
+		/* Use "gfar-tbiphy" devices to access internal PHY. */
+		add_generic_device("gfar-tbiphy", i, NULL,
+				MDIO_BASE_ADDR + (i * 0x1000),
+				0x1000, IORESOURCE_MEM, NULL);
+	}
+	return 0;
+}
 
-	add_generic_device_res("gfar", DEVICE_ID_DYNAMIC, res, 3, gf);
+coredevice_initcall(fsl_phy_init);
 
+int fsl_eth_init(int num, struct gfar_info_struct *gf)
+{
+	add_generic_device("gfar", DEVICE_ID_DYNAMIC, NULL,
+			GFAR_BASE_ADDR + ((num - 1) * 0x1000), 0x1000,
+			IORESOURCE_MEM, gf);
 	return 0;
 }
diff --git a/arch/ppc/mach-mpc85xx/include/mach/gianfar.h b/arch/ppc/mach-mpc85xx/include/mach/gianfar.h
index ae31638..6a7b9e9 100644
--- a/arch/ppc/mach-mpc85xx/include/mach/gianfar.h
+++ b/arch/ppc/mach-mpc85xx/include/mach/gianfar.h
@@ -22,10 +22,14 @@
  * Platform data for the Motorola Triple Speed Ethernet Controller
  */
 
+#define GFAR_TBIPA_OFFSET       0x030   /* TBI PHY address */
+#define GFAR_TBIPA_END		0x1f    /* Last valid PHY address */
+
 struct gfar_info_struct {
 	unsigned int phyaddr;
 	unsigned int tbiana;
 	unsigned int tbicr;
+	unsigned int mdiobus_tbi;
 };
 
 int fsl_eth_init(int num, struct gfar_info_struct *gf);
diff --git a/drivers/net/gianfar.c b/drivers/net/gianfar.c
index 96055bd..f944c6c 100644
--- a/drivers/net/gianfar.c
+++ b/drivers/net/gianfar.c
@@ -184,10 +184,11 @@ static int gfar_open(struct eth_device *edev)
 {
 	int ix;
 	struct gfar_private *priv = edev->priv;
+	struct gfar_phy *phy = priv->gfar_mdio;
 	void __iomem *regs = priv->regs;
 	int ret;
 
-	ret = phy_device_connect(edev, &priv->miibus, priv->phyaddr,
+	ret = phy_device_connect(edev, &phy->miibus, priv->phyaddr,
 				 gfar_adjust_link, 0, PHY_INTERFACE_MODE_NA);
 	if (ret)
 		return ret;
@@ -305,44 +306,51 @@ static uint gfar_local_mdio_read(void __iomem *phyregs, uint phyid, uint regnum)
 
 static void gfar_configure_serdes(struct gfar_private *priv)
 {
-	gfar_local_mdio_write(priv->phyregs_sgmii,
+	struct gfar_phy *phy = priv->gfar_tbi;
+
+	gfar_local_mdio_write(phy->regs,
 			in_be32(priv->regs + GFAR_TBIPA_OFFSET), GFAR_TBI_ANA,
 			priv->tbiana);
-	gfar_local_mdio_write(priv->phyregs_sgmii,
+	gfar_local_mdio_write(phy->regs,
 			in_be32(priv->regs + GFAR_TBIPA_OFFSET),
 			GFAR_TBI_TBICON, GFAR_TBICON_CLK_SELECT);
-	gfar_local_mdio_write(priv->phyregs_sgmii,
+	gfar_local_mdio_write(phy->regs,
 			in_be32(priv->regs + GFAR_TBIPA_OFFSET), GFAR_TBI_CR,
 			priv->tbicr);
 }
 
-/* Reset the internal and external PHYs. */
-static void gfar_init_phy(struct eth_device *dev)
+static int gfar_bus_reset(struct mii_bus *bus)
 {
-	struct gfar_private *priv = dev->priv;
-	void __iomem *regs = priv->regs;
+	struct gfar_phy *phy = bus->priv;
 	uint64_t start;
 
-	/* Assign a Physical address to the TBI */
-	out_be32(regs + GFAR_TBIPA_OFFSET, GFAR_TBIPA_VALUE);
-
 	/* Reset MII (due to new addresses) */
-	out_be32(priv->phyregs + GFAR_MIIMCFG_OFFSET, GFAR_MIIMCFG_RESET);
-	out_be32(priv->phyregs + GFAR_MIIMCFG_OFFSET, GFAR_MIIMCFG_INIT_VALUE);
+	out_be32(phy->regs + GFAR_MIIMCFG_OFFSET, GFAR_MIIMCFG_RESET);
+	out_be32(phy->regs + GFAR_MIIMCFG_OFFSET, GFAR_MIIMCFG_INIT_VALUE);
 
 	start = get_time_ns();
 	while (!is_timeout(start, 10 * MSECOND)) {
-		if (!(in_be32(priv->phyregs + GFAR_MIIMMIND_OFFSET) &
+		if (!(in_be32(phy->regs + GFAR_MIIMMIND_OFFSET) &
 			GFAR_MIIMIND_BUSY))
 			break;
 	}
+	return 0;
+}
 
-	gfar_local_mdio_write(priv->phyregs, priv->phyaddr, GFAR_MIIM_CR,
+/* Reset the external PHYs. */
+static void gfar_init_phy(struct eth_device *dev)
+{
+	struct gfar_private *priv = dev->priv;
+	struct gfar_phy *phy = priv->gfar_mdio;
+	void __iomem *regs = priv->regs;
+	uint64_t start;
+
+	gfar_local_mdio_write(phy->regs, priv->phyaddr, GFAR_MIIM_CR,
 			GFAR_MIIM_CR_RST);
 
 	start = get_time_ns();
 	while (!is_timeout(start, 10 * MSECOND)) {
-		if (!(gfar_local_mdio_read(priv->phyregs, priv->phyaddr,
+		if (!(gfar_local_mdio_read(phy->regs, priv->phyaddr,
 					GFAR_MIIM_CR) & GFAR_MIIM_CR_RST))
 			break;
 	}
@@ -433,13 +441,12 @@ static int gfar_recv(struct eth_device *edev)
 /* Read a MII PHY register. */
 static int gfar_miiphy_read(struct mii_bus *bus, int addr, int reg)
 {
-	struct device_d *dev = bus->parent;
-	struct gfar_private *priv = bus->priv;
+	struct gfar_phy *phy = bus->priv;
 	int ret;
 
-	ret = gfar_local_mdio_read(priv->phyregs, addr, reg);
+	ret = gfar_local_mdio_read(phy->regs, addr, reg);
 	if (ret == -EIO)
-		dev_err(dev, "Can't read PHY at address %d\n", addr);
+		dev_err(phy->dev, "Can't read PHY at address %d\n", addr);
 
 	return ret;
 }
@@ -448,15 +455,14 @@ static int gfar_miiphy_read(struct mii_bus *bus, int addr, int reg)
 static int gfar_miiphy_write(struct mii_bus *bus, int addr, int reg,
 				u16 value)
 {
-	struct device_d *dev = bus->parent;
-	struct gfar_private *priv = bus->priv;
+	struct gfar_phy *phy = bus->priv;
 	unsigned short val = value;
 	int ret;
 
-	ret = gfar_local_mdio_write(priv->phyregs, addr, reg, val);
+	ret = gfar_local_mdio_write(phy->regs, addr, reg, val);
 
 	if (ret)
-		dev_err(dev, "Can't write PHY at address %d\n", addr);
+		dev_err(phy->dev, "Can't write PHY at address %d\n", addr);
 
 	return 0;
 }
@@ -470,7 +476,9 @@ static int gfar_probe(struct device_d *dev)
 	struct gfar_info_struct *gfar_info = dev->platform_data;
 	struct eth_device *edev;
 	struct gfar_private *priv;
+	struct device_d *mdev;
 	size_t size;
+	char devname[16];
 	char *p;
 
 	priv = xzalloc(sizeof(struct gfar_private));
@@ -480,14 +488,28 @@ static int gfar_probe(struct device_d *dev)
 
 	edev = &priv->edev;
 
-	priv->regs = dev_request_mem_region(dev, 0);
-	priv->phyregs = dev_request_mem_region(dev, 1);
-	priv->phyregs_sgmii = dev_request_mem_region(dev, 2);
-
+	priv->mdiobus_tbi = gfar_info->mdiobus_tbi;
+	priv->regs = dev_get_mem_region(dev, 0);
 	priv->phyaddr = gfar_info->phyaddr;
 	priv->tbicr = gfar_info->tbicr;
 	priv->tbiana = gfar_info->tbiana;
 
+	mdev = get_device_by_name("gfar-mdio0");
+	if (mdev == NULL) {
+		pr_err("gfar-mdio0 was not found\n");
+		return -ENODEV;
+	}
+	priv->gfar_mdio = mdev->priv;
+
+	if (priv->mdiobus_tbi != 0) {
+		sprintf(devname, "%s%d", "gfar-tbiphy", priv->mdiobus_tbi);
+		mdev = get_device_by_name(devname);
+		if (mdev == NULL) {
+			pr_err("%s was not found\n", devname);
+			return -ENODEV;
+		}
+	}
+	priv->gfar_tbi = mdev->priv;
 	/*
 	 * Allocate descriptors 64-bit aligned. Descriptors
 	 * are 8 bytes in size.
@@ -512,15 +534,8 @@ static int gfar_probe(struct device_d *dev)
 	udelay(2);
 	clrbits_be32(priv->regs + GFAR_MACCFG1_OFFSET, GFAR_MACCFG1_SOFT_RESET);
 
-	priv->miibus.read = gfar_miiphy_read;
-	priv->miibus.write = gfar_miiphy_write;
-	priv->miibus.priv = priv;
-	priv->miibus.parent = dev;
-
 	gfar_init_phy(edev);
 
-	mdiobus_register(&priv->miibus);
-
 	return eth_register(edev);
 }
 
@@ -529,3 +544,64 @@ static struct driver_d gfar_eth_driver = {
 	.probe = gfar_probe,
 };
 device_platform_driver(gfar_eth_driver);
+
+static int gfar_phy_probe(struct device_d *dev)
+{
+	struct gfar_phy *phy;
+	int ret;
+
+	phy = xzalloc(sizeof(*phy));
+	phy->dev = dev;
+	phy->regs = dev_get_mem_region(dev, 0);
+	if (!phy->regs)
+		return -ENOMEM;
+
+	phy->miibus.read = gfar_miiphy_read;
+	phy->miibus.write = gfar_miiphy_write;
+	phy->miibus.priv = phy;
+	phy->miibus.reset = gfar_bus_reset;
+	phy->miibus.parent = dev;
+	dev->priv = phy;
+
+	ret = mdiobus_register(&phy->miibus);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
+static struct driver_d gfar_phy_driver = {
+	.name  = "gfar-mdio",
+	.probe = gfar_phy_probe,
+};
+register_driver_macro(coredevice, platform, gfar_phy_driver);
+
+static int gfar_tbiphy_probe(struct device_d *dev)
+{
+	struct gfar_phy *phy;
+	int ret;
+
+	phy = xzalloc(sizeof(*phy));
+	phy->dev = dev;
+	phy->regs = dev_get_mem_region(dev, 0);
+	if (!phy->regs)
+		return -ENOMEM;
+
+	phy->miibus.read = gfar_miiphy_read;
+	phy->miibus.write = gfar_miiphy_write;
+	phy->miibus.priv = phy;
+	phy->miibus.parent = dev;
+	dev->priv = phy;
+
+	ret = mdiobus_register(&phy->miibus);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
+static struct driver_d gfar_tbiphy_driver = {
+	.name  = "gfar-tbiphy",
+	.probe = gfar_tbiphy_probe,
+};
+register_driver_macro(coredevice, platform, gfar_tbiphy_driver);
diff --git a/drivers/net/gianfar.h b/drivers/net/gianfar.h
index b52cc5a..1aac479 100644
--- a/drivers/net/gianfar.h
+++ b/drivers/net/gianfar.h
@@ -205,7 +205,6 @@ struct rxbd8 {
 #define GFAR_ECNTRL_OFFSET	0x020	/* Ethernet Control */
 #define GFAR_MINFLR_OFFSET	0x024	/* Minimum Frame Length */
 #define GFAR_DMACTRL_OFFSET	0x02c	/* DMA Control */
-#define GFAR_TBIPA_OFFSET	0x030	/* TBI PHY address */
 
 /* eTSEC transmit control and status register */
 #define GFAR_TSTAT_OFFSET	0x104	/* transmit status register */
@@ -263,13 +262,19 @@ struct rxbd8 {
 #define GFAR_ATTR_OFFSET	0xbf8	/* Default Attribute Register */
 #define GFAR_ATTRELI_OFFSET	0xbfc	/* Default Attribute Extract Len/Idx */
 
+struct gfar_phy {
+	void __iomem *regs;
+	struct device_d *dev;
+	struct mii_bus miibus;
+};
+
 struct gfar_private {
 	struct eth_device edev;
 	void __iomem *regs;
-	void __iomem *phyregs;
-	void __iomem *phyregs_sgmii;
+	int mdiobus_tbi;
+	struct gfar_phy *gfar_mdio;
+	struct gfar_phy *gfar_tbi;
 	struct phy_info *phyinfo;
-	struct mii_bus miibus;
 	volatile struct txbd8 *txbd;
 	volatile struct rxbd8 *rxbd;
 	uint txidx;
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
