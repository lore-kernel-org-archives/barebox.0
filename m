Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UihzP-0005BB-Ig
 for barebox@lists.infradead.org; Sat, 01 Jun 2013 09:20:46 +0000
Date: Sat, 1 Jun 2013 11:20:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130601092018.GO32299@pengutronix.de>
References: <1369926935-24159-1-git-send-email-renaud.barbier@ge.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1369926935-24159-1-git-send-email-renaud.barbier@ge.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] gianfar: prevent resource conflict
To: Renaud Barbier <renaud.barbier@ge.com>
Cc: barebox@lists.infradead.org

On Thu, May 30, 2013 at 04:15:35PM +0100, Renaud Barbier wrote:
> On eTSEC Ethernet devices, there are three memory regions to map.
> These regions map registers to control the TSEC interfaces, PHY
> access and TBI interface.
> 
> Depending on the port number and TSEC version, some of these resources
> may be shared within an instance of the driver or between instances
> of the driver.
> 
> Since dev_request_mem_region returns NULL to avoid resource conflicts if
> a region is already mapped the TSEC driver fails to initialise when
> these regions are shared. This patch works around this and makes
> all three memory regions available to each instance.
> 
> Below is a description of TSEC Ethernet port mapping for port 1 to 3.
> These ports are present in CPUs susch as the mpc8544 and P2020.
> 
> Each port has three set of registers:
> * region 0 maps the TSEC registers.
> * region 1 maps the PHY access registers always through port 1.
> * region 2 maps the TBI interface registers.
> 
> The tables below shows how registers are mapped.
> For instance, for TSEC version 1:
> - port 2/register set 1 i.e p2/reg1 is the same region as
>   port 1/register set 1 i.e p1/reg1. That is they share port 1
>   register set 1 as the same region.
>   As well is p3/reg1, p1/reg0 and p1/reg2 uses p1/reg1.
> 
> - port 2/register set 0 i.e p2/reg0 is not the same region as
>   port 3/register set 0 i.e p3/reg0.
>   That is p2/r0 and p3/r0 are two different regions.
>   However, port 2/register 2 is the same as port 2/register 0.
> 
> TSEC version 1:
> ports/registers  reg0    reg1    reg2
> p1               p1/r1   p1/r1   p1/r1
> p2               p2/r0   p1/r1   p2/r0
> p3               p3/r0   p1/r1   p3/r0
> 
> TSEC version2:
> ports/registers  reg0    reg1    reg2
> p1               p1/r0   p1/r1   p1/r1
> p2               p2/r0   p1/r1   p2/r2
> p3               p3/r0   p1/r1   p3/r2
> 
> Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
> ---
>  drivers/net/gianfar.c |   19 ++++++++++++++++++-
>  1 files changed, 18 insertions(+), 1 deletions(-)
> 
> diff --git a/drivers/net/gianfar.c b/drivers/net/gianfar.c
> index 96055bd..79113a8 100644
> --- a/drivers/net/gianfar.c
> +++ b/drivers/net/gianfar.c
> @@ -28,6 +28,8 @@
>  #define RX_BUF_CNT 	PKTBUFSRX
>  #define BUF_ALIGN	8
>  
> +static void __iomem *phyregs;
> +
>  /*
>   * Initialize required registers to appropriate values, zeroing
>   * those we don't care about (unless zero is bad, in which case,
> @@ -481,8 +483,23 @@ static int gfar_probe(struct device_d *dev)
>  	edev = &priv->edev;
>  
>  	priv->regs = dev_request_mem_region(dev, 0);
> -	priv->phyregs = dev_request_mem_region(dev, 1);
> +	if (priv->regs == NULL)
> +		priv->regs = phyregs;

the first resource is for the ethernet registers and no phy registers,
right?

> +
> +	if (phyregs == NULL) {
> +		phyregs = dev_request_mem_region(dev, 1);
> +		if (phyregs == NULL)
> +			phyregs = priv->regs;
> +	}
> +	priv->phyregs = phyregs;
> +
>  	priv->phyregs_sgmii = dev_request_mem_region(dev, 2);
> +	if (priv->phyregs_sgmii == NULL) {
> +		if (IS_ENABLED(CONFIG_TSECV2))
> +			priv->phyregs_sgmii = priv->phyregs;
> +		else
> +			priv->phyregs_sgmii = priv->regs;
> +	}

I think you should really register the mdio buses as separate devices
since it's the mdio buses that are shared between the different
instances, not the registers. The following may be a starting point
(untested)



From 480a54380c42d56e1b5f16fb718fe2c4a1a38ab0 Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sat, 1 Jun 2013 11:16:37 +0200
Subject: [PATCH] net: gfar: register mdio buses as separate devices

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/ppc/boards/freescale-p2020rdb/p2020rdb.c |   2 +
 arch/ppc/mach-mpc85xx/eth-devices.c           |  32 +++----
 arch/ppc/mach-mpc85xx/include/mach/gianfar.h  |   2 +
 drivers/net/gianfar.c                         | 117 ++++++++++++++++++--------
 drivers/net/gianfar.h                         |   5 +-
 5 files changed, 103 insertions(+), 55 deletions(-)

diff --git a/arch/ppc/boards/freescale-p2020rdb/p2020rdb.c b/arch/ppc/boards/freescale-p2020rdb/p2020rdb.c
index edb9bcd..cc4af7f 100644
--- a/arch/ppc/boards/freescale-p2020rdb/p2020rdb.c
+++ b/arch/ppc/boards/freescale-p2020rdb/p2020rdb.c
@@ -65,6 +65,8 @@ static struct gfar_info_struct gfar_info[] = {
 		.phyaddr = 1,
 		.tbiana = 0,
 		.tbicr = 0,
+		.mdiobus = -1, /* FIXME */
+		.mdiobus_sgmii = -1, /* FIXME */
 	},
 };
 
diff --git a/arch/ppc/mach-mpc85xx/eth-devices.c b/arch/ppc/mach-mpc85xx/eth-devices.c
index c6e8f36..510e57c 100644
--- a/arch/ppc/mach-mpc85xx/eth-devices.c
+++ b/arch/ppc/mach-mpc85xx/eth-devices.c
@@ -22,28 +22,28 @@
 
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
+
+	for (i = 0; i < 4; i++)
+		add_generic_device("gfar-phy", i, NULL,
+				MDIO_BASE_ADDR + i * 0x1000, 0x1000,
+				IORESOURCE_MEM, NULL);
+	return 0;
+}
 
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
+coredevice_initcall(fsl_phy_init);
 
-	add_generic_device_res("gfar", DEVICE_ID_DYNAMIC, res, 3, gf);
+int fsl_eth_init(int num, struct gfar_info_struct *gf)
+{
+	add_generic_device("gfar", num - 1, NULL,
+			GFAR_BASE_ADDR + (num - 1) * 0x1000, 0x1000,
+			IORESOURCE_MEM, gf);
 
 	return 0;
 }
diff --git a/arch/ppc/mach-mpc85xx/include/mach/gianfar.h b/arch/ppc/mach-mpc85xx/include/mach/gianfar.h
index ae31638..48dd945 100644
--- a/arch/ppc/mach-mpc85xx/include/mach/gianfar.h
+++ b/arch/ppc/mach-mpc85xx/include/mach/gianfar.h
@@ -26,6 +26,8 @@ struct gfar_info_struct {
 	unsigned int phyaddr;
 	unsigned int tbiana;
 	unsigned int tbicr;
+	unsigned int mdiobus; /* mdio bus number (0..3) */
+	unsigned int mdiobus_sgmii; /* mdio bus number for sgmii (0..3) */
 };
 
 int fsl_eth_init(int num, struct gfar_info_struct *gf);
diff --git a/drivers/net/gianfar.c b/drivers/net/gianfar.c
index 96055bd..bb4931e 100644
--- a/drivers/net/gianfar.c
+++ b/drivers/net/gianfar.c
@@ -28,6 +28,14 @@
 #define RX_BUF_CNT 	PKTBUFSRX
 #define BUF_ALIGN	8
 
+struct gfar_phy {
+	void __iomem *regs;
+	struct device_d *dev;
+	struct mii_bus miibus;
+};
+
+static struct gfar_phy *phys[4];
+
 /*
  * Initialize required registers to appropriate values, zeroing
  * those we don't care about (unless zero is bad, in which case,
@@ -184,10 +192,11 @@ static int gfar_open(struct eth_device *edev)
 {
 	int ix;
 	struct gfar_private *priv = edev->priv;
+	struct gfar_phy *phy = phys[priv->mdiobus];
 	void __iomem *regs = priv->regs;
 	int ret;
 
-	ret = phy_device_connect(edev, &priv->miibus, priv->phyaddr,
+	ret = phy_device_connect(edev, &phy->miibus, priv->phyaddr,
 				 gfar_adjust_link, 0, PHY_INTERFACE_MODE_NA);
 	if (ret)
 		return ret;
@@ -255,17 +264,21 @@ static int gfar_set_ethaddr(struct eth_device *edev, unsigned char *mac)
 }
 
 /* Writes the given phy's reg with value, using the specified MDIO regs */
-static int gfar_local_mdio_write(void __iomem *phyregs, uint addr, uint reg,
+static int gfar_local_mdio_write(int mdiobus, uint addr, uint reg,
 				uint value)
 {
+	struct gfar_phy *phy = phys[mdiobus];
 	uint64_t start;
 
-	out_be32(phyregs + GFAR_MIIMADD_OFFSET, (addr << 8) | (reg & 0x1f));
-	out_be32(phyregs + GFAR_MIIMCON_OFFSET, value);
+	if (!phy)
+		return -ENODEV;
+
+	out_be32(phy->regs + GFAR_MIIMADD_OFFSET, (addr << 8) | (reg & 0x1f));
+	out_be32(phy->regs + GFAR_MIIMCON_OFFSET, value);
 
 	start = get_time_ns();
 	while (!is_timeout(start, 10 * MSECOND)) {
-		if (!(in_be32(phyregs + GFAR_MIIMMIND_OFFSET) &
+		if (!(in_be32(phy->regs + GFAR_MIIMMIND_OFFSET) &
 					GFAR_MIIMIND_BUSY))
 			return 0;
 	}
@@ -280,24 +293,28 @@ static int gfar_local_mdio_write(void __iomem *phyregs, uint addr, uint reg,
  * notvalid bit cleared), and the bus to cease activity (miimind
  * busy bit cleared), and then returns the value
  */
-static uint gfar_local_mdio_read(void __iomem *phyregs, uint phyid, uint regnum)
+static uint gfar_local_mdio_read(int mdiobus, uint phyid, uint regnum)
 {
+	struct gfar_phy *phy = phys[mdiobus];
 	uint64_t start;
 
+	if (!phy)
+		return -ENODEV;
+
 	/* Put the address of the phy, and the register number into MIIMADD */
-	out_be32(phyregs + GFAR_MIIMADD_OFFSET, (phyid << 8) | (regnum & 0x1f));
+	out_be32(phy->regs + GFAR_MIIMADD_OFFSET, (phyid << 8) | (regnum & 0x1f));
 
 	/* Clear the command register, and wait */
-	out_be32(phyregs + GFAR_MIIMCOM_OFFSET, 0);
+	out_be32(phy->regs + GFAR_MIIMCOM_OFFSET, 0);
 
 	/* Initiate a read command, and wait */
-	out_be32(phyregs + GFAR_MIIMCOM_OFFSET, GFAR_MIIM_READ_COMMAND);
+	out_be32(phy->regs + GFAR_MIIMCOM_OFFSET, GFAR_MIIM_READ_COMMAND);
 
 	start = get_time_ns();
 	while (!is_timeout(start, 10 * MSECOND)) {
-		if (!(in_be32(phyregs + GFAR_MIIMMIND_OFFSET) &
+		if (!(in_be32(phy->regs + GFAR_MIIMMIND_OFFSET) &
 			(GFAR_MIIMIND_NOTVALID | GFAR_MIIMIND_BUSY)))
-			return in_be32(phyregs + GFAR_MIIMSTAT_OFFSET);
+			return in_be32(phy->regs + GFAR_MIIMSTAT_OFFSET);
 	}
 
 	return -EIO;
@@ -305,13 +322,13 @@ static uint gfar_local_mdio_read(void __iomem *phyregs, uint phyid, uint regnum)
 
 static void gfar_configure_serdes(struct gfar_private *priv)
 {
-	gfar_local_mdio_write(priv->phyregs_sgmii,
+	gfar_local_mdio_write(priv->mdiobus_sgmii,
 			in_be32(priv->regs + GFAR_TBIPA_OFFSET), GFAR_TBI_ANA,
 			priv->tbiana);
-	gfar_local_mdio_write(priv->phyregs_sgmii,
+	gfar_local_mdio_write(priv->mdiobus_sgmii,
 			in_be32(priv->regs + GFAR_TBIPA_OFFSET),
 			GFAR_TBI_TBICON, GFAR_TBICON_CLK_SELECT);
-	gfar_local_mdio_write(priv->phyregs_sgmii,
+	gfar_local_mdio_write(priv->mdiobus_sgmii,
 			in_be32(priv->regs + GFAR_TBIPA_OFFSET), GFAR_TBI_CR,
 			priv->tbicr);
 }
@@ -320,29 +337,33 @@ static void gfar_configure_serdes(struct gfar_private *priv)
 static void gfar_init_phy(struct eth_device *dev)
 {
 	struct gfar_private *priv = dev->priv;
+	struct gfar_phy *phy = phys[priv->mdiobus];
 	void __iomem *regs = priv->regs;
 	uint64_t start;
 
+	if (!phy)
+		return;
+
 	/* Assign a Physical address to the TBI */
 	out_be32(regs + GFAR_TBIPA_OFFSET, GFAR_TBIPA_VALUE);
 
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
 
-	gfar_local_mdio_write(priv->phyregs, priv->phyaddr, GFAR_MIIM_CR,
+	gfar_local_mdio_write(priv->mdiobus, priv->phyaddr, GFAR_MIIM_CR,
 			GFAR_MIIM_CR_RST);
 
 	start = get_time_ns();
 	while (!is_timeout(start, 10 * MSECOND)) {
-		if (!(gfar_local_mdio_read(priv->phyregs, priv->phyaddr,
+		if (!(gfar_local_mdio_read(priv->mdiobus, priv->phyaddr,
 					GFAR_MIIM_CR) & GFAR_MIIM_CR_RST))
 			break;
 	}
@@ -433,13 +454,12 @@ static int gfar_recv(struct eth_device *edev)
 /* Read a MII PHY register. */
 static int gfar_miiphy_read(struct mii_bus *bus, int addr, int reg)
 {
-	struct device_d *dev = bus->parent;
-	struct gfar_private *priv = bus->priv;
+	struct gfar_phy *phy = bus->priv;
 	int ret;
 
-	ret = gfar_local_mdio_read(priv->phyregs, addr, reg);
+	ret = gfar_local_mdio_read(phy->dev->id, addr, reg);
 	if (ret == -EIO)
-		dev_err(dev, "Can't read PHY at address %d\n", addr);
+		dev_err(phy->dev, "Can't read PHY at address %d\n", addr);
 
 	return ret;
 }
@@ -448,15 +468,14 @@ static int gfar_miiphy_read(struct mii_bus *bus, int addr, int reg)
 static int gfar_miiphy_write(struct mii_bus *bus, int addr, int reg,
 				u16 value)
 {
-	struct device_d *dev = bus->parent;
-	struct gfar_private *priv = bus->priv;
+	struct gfar_phy *phy = bus->priv;
 	unsigned short val = value;
 	int ret;
 
-	ret = gfar_local_mdio_write(priv->phyregs, addr, reg, val);
+	ret = gfar_local_mdio_write(phy->dev->id, addr, reg, val);
 
 	if (ret)
-		dev_err(dev, "Can't write PHY at address %d\n", addr);
+		dev_err(phy->dev, "Can't write PHY at address %d\n", addr);
 
 	return 0;
 }
@@ -481,8 +500,12 @@ static int gfar_probe(struct device_d *dev)
 	edev = &priv->edev;
 
 	priv->regs = dev_request_mem_region(dev, 0);
-	priv->phyregs = dev_request_mem_region(dev, 1);
-	priv->phyregs_sgmii = dev_request_mem_region(dev, 2);
+	priv->mdiobus = gfar_info->mdiobus;
+	priv->mdiobus_sgmii = gfar_info->mdiobus_sgmii;
+
+	if (priv->mdiobus >= ARRAY_SIZE(phys) ||
+			priv->mdiobus_sgmii >= ARRAY_SIZE(phys))
+		return -EINVAL;
 
 	priv->phyaddr = gfar_info->phyaddr;
 	priv->tbicr = gfar_info->tbicr;
@@ -512,15 +535,8 @@ static int gfar_probe(struct device_d *dev)
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
 
@@ -529,3 +545,32 @@ static struct driver_d gfar_eth_driver = {
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
+	phy->regs = dev_request_mem_region(dev, 0);
+	if (!phy->regs)
+		return -ENOMEM;
+
+	phy->miibus.read = gfar_miiphy_read;
+	phy->miibus.write = gfar_miiphy_write;
+	phy->miibus.priv = phy;
+	phy->miibus.parent = dev;
+
+	ret = mdiobus_register(&phy->miibus);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
+static struct driver_d gfar_phy_driver = {
+	.name  = "gfar-phy",
+	.probe = gfar_phy_probe,
+};
+register_driver_macro(coredevice, platform, gfar_phy_driver);
diff --git a/drivers/net/gianfar.h b/drivers/net/gianfar.h
index b52cc5a..9094506 100644
--- a/drivers/net/gianfar.h
+++ b/drivers/net/gianfar.h
@@ -266,10 +266,9 @@ struct rxbd8 {
 struct gfar_private {
 	struct eth_device edev;
 	void __iomem *regs;
-	void __iomem *phyregs;
-	void __iomem *phyregs_sgmii;
+	int mdiobus;
+	int mdiobus_sgmii;
 	struct phy_info *phyinfo;
-	struct mii_bus miibus;
 	volatile struct txbd8 *txbd;
 	volatile struct rxbd8 *rxbd;
 	uint txidx;
-- 
1.8.2.rc2

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
