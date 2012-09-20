Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og111.obsmtp.com ([64.18.0.22])
 by merlin.infradead.org with smtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TEjes-0003MV-1j
 for barebox@lists.infradead.org; Thu, 20 Sep 2012 16:31:24 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Thu, 20 Sep 2012 17:31:07 +0100
Message-Id: <1348158669-14034-4-git-send-email-renaud.barbier@ge.com>
In-Reply-To: <1348158669-14034-1-git-send-email-renaud.barbier@ge.com>
References: <1348158669-14034-1-git-send-email-renaud.barbier@ge.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 3/5] gianfar update
To: barebox@lists.infradead.org

The gianfar is updated following the addition of the FSL mdio bus support.
PHY access functions have been removed as well as the reset of the mdio
bus.
Also the resource for the External PHY registers has been removed
from the Ethernet port initialization function.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 arch/ppc/mach-mpc85xx/eth-devices.c          |   14 +--
 arch/ppc/mach-mpc85xx/include/mach/gianfar.h |    2 +
 drivers/net/gianfar.c                        |  127 ++++----------------------
 drivers/net/gianfar.h                        |    3 +-
 4 files changed, 26 insertions(+), 120 deletions(-)

diff --git a/arch/ppc/mach-mpc85xx/eth-devices.c b/arch/ppc/mach-mpc85xx/eth-devices.c
index c6e8f36..8399f21 100644
--- a/arch/ppc/mach-mpc85xx/eth-devices.c
+++ b/arch/ppc/mach-mpc85xx/eth-devices.c
@@ -29,21 +29,17 @@ int fsl_eth_init(int num, struct gfar_info_struct *gf)
 {
 	struct resource *res;
 
-	res = xzalloc(3 * sizeof(struct resource));
+	res = xzalloc(2 * sizeof(struct resource));
 	/* TSEC interface registers */
 	res[0].start = GFAR_BASE_ADDR + ((num - 1) * 0x1000);
 	res[0].end = res[0].start + 0x1000 - 1;
 	res[0].flags = IORESOURCE_MEM;
-	/* External PHY access always through eTSEC1 */
-	res[1].start = MDIO_BASE_ADDR;
-	res[1].end = res[1].start + 0x1000 - 1;
-	res[1].flags = IORESOURCE_MEM;
 	/* Access to TBI/RTBI interface. */
-	res[2].start = MDIO_BASE_ADDR + ((num - 1) * 0x1000);
-	res[2].end = res[2].start + 0x1000 - 1;
-	res[2].flags = IORESOURCE_MEM;
+	res[1].start = MDIO_BASE_ADDR + ((num - 1) * 0x1000);
+	res[1].end = res[2].start + 0x1000 - 1;
+	res[1].flags = IORESOURCE_MEM;
 
-	add_generic_device_res("gfar", DEVICE_ID_DYNAMIC, res, 3, gf);
+	add_generic_device_res("gfar", DEVICE_ID_DYNAMIC, res, 2, gf);
 
 	return 0;
 }
diff --git a/arch/ppc/mach-mpc85xx/include/mach/gianfar.h b/arch/ppc/mach-mpc85xx/include/mach/gianfar.h
index ae31638..2c6d58c 100644
--- a/arch/ppc/mach-mpc85xx/include/mach/gianfar.h
+++ b/arch/ppc/mach-mpc85xx/include/mach/gianfar.h
@@ -22,6 +22,8 @@
  * Platform data for the Motorola Triple Speed Ethernet Controller
  */
 
+#include <asm/fsl_mdio.h>
+
 struct gfar_info_struct {
 	unsigned int phyaddr;
 	unsigned int tbiana;
diff --git a/drivers/net/gianfar.c b/drivers/net/gianfar.c
index f8a7cd7..a8033b4 100644
--- a/drivers/net/gianfar.c
+++ b/drivers/net/gianfar.c
@@ -83,7 +83,6 @@ static void gfar_adjust_link(struct eth_device *edev)
 	struct gfar_private *priv = edev->priv;
 	void __iomem *regs = priv->regs;
 	u32 ecntrl, maccfg2;
-	uint32_t status;
 
 	priv->link = edev->phydev->link;
 	priv->duplexity =edev->phydev->duplex;
@@ -189,7 +188,7 @@ static int gfar_open(struct eth_device *edev)
 	void __iomem *regs = priv->regs;
 	int ret;
 
-	ret = phy_device_connect(edev, &priv->miidev, priv->phyaddr,
+	ret = phy_device_connect(edev, priv->miidev, priv->phyaddr,
 				 gfar_adjust_link, 0, PHY_INTERFACE_MODE_NA);
 	if (ret)
 		return ret;
@@ -256,64 +255,15 @@ static int gfar_set_ethaddr(struct eth_device *edev, unsigned char *mac)
 	return 0;
 }
 
-/* Writes the given phy's reg with value, using the specified MDIO regs */
-static int gfar_local_mdio_write(void __iomem *phyregs, uint addr, uint reg,
-				uint value)
-{
-	uint64_t start;
-
-	out_be32(phyregs + GFAR_MIIMADD_OFFSET, (addr << 8) | (reg & 0x1f));
-	out_be32(phyregs + GFAR_MIIMCON_OFFSET, value);
-
-	start = get_time_ns();
-	while (!is_timeout(start, 10 * MSECOND)) {
-		if (!(in_be32(phyregs + GFAR_MIIMMIND_OFFSET) &
-					GFAR_MIIMIND_BUSY))
-			return 0;
-	}
-
-	return -EIO;
-}
-
-/*
- * Reads register regnum on the device's PHY through the
- * specified registers. It lowers and raises the read
- * command, and waits for the data to become valid (miimind
- * notvalid bit cleared), and the bus to cease activity (miimind
- * busy bit cleared), and then returns the value
- */
-static uint gfar_local_mdio_read(void __iomem *phyregs, uint phyid, uint regnum)
-{
-	uint64_t start;
-
-	/* Put the address of the phy, and the register number into MIIMADD */
-	out_be32(phyregs + GFAR_MIIMADD_OFFSET, (phyid << 8) | (regnum & 0x1f));
-
-	/* Clear the command register, and wait */
-	out_be32(phyregs + GFAR_MIIMCOM_OFFSET, 0);
-
-	/* Initiate a read command, and wait */
-	out_be32(phyregs + GFAR_MIIMCOM_OFFSET, GFAR_MIIM_READ_COMMAND);
-
-	start = get_time_ns();
-	while (!is_timeout(start, 10 * MSECOND)) {
-		if (!(in_be32(phyregs + GFAR_MIIMMIND_OFFSET) &
-			(GFAR_MIIMIND_NOTVALID | GFAR_MIIMIND_BUSY)))
-			return in_be32(phyregs + GFAR_MIIMSTAT_OFFSET);
-	}
-
-	return -EIO;
-}
-
 static void gfar_configure_serdes(struct gfar_private *priv)
 {
-	gfar_local_mdio_write(priv->phyregs_sgmii,
+	fsl_local_mdio_write(priv->phyregs_sgmii,
 			in_be32(priv->regs + GFAR_TBIPA_OFFSET), GFAR_TBI_ANA,
 			priv->tbiana);
-	gfar_local_mdio_write(priv->phyregs_sgmii,
+	fsl_local_mdio_write(priv->phyregs_sgmii,
 			in_be32(priv->regs + GFAR_TBIPA_OFFSET),
 			GFAR_TBI_TBICON, GFAR_TBICON_CLK_SELECT);
-	gfar_local_mdio_write(priv->phyregs_sgmii,
+	fsl_local_mdio_write(priv->phyregs_sgmii,
 			in_be32(priv->regs + GFAR_TBIPA_OFFSET), GFAR_TBI_CR,
 			priv->tbicr);
 }
@@ -322,34 +272,22 @@ static void gfar_configure_serdes(struct gfar_private *priv)
 static void gfar_init_phy(struct eth_device *dev)
 {
 	struct gfar_private *priv = dev->priv;
-	void __iomem *regs = priv->regs;
 	uint64_t start;
 
 	/* Assign a Physical address to the TBI */
-	out_be32(regs + GFAR_TBIPA_OFFSET, GFAR_TBIPA_VALUE);
-
-	/* Reset MII (due to new addresses) */
-	out_be32(priv->phyregs + GFAR_MIIMCFG_OFFSET, GFAR_MIIMCFG_RESET);
-	out_be32(priv->phyregs + GFAR_MIIMCFG_OFFSET, GFAR_MIIMCFG_INIT_VALUE);
-
-	start = get_time_ns();
-	while (!is_timeout(start, 10 * MSECOND)) {
-		if (!(in_be32(priv->phyregs + GFAR_MIIMMIND_OFFSET) &
-			GFAR_MIIMIND_BUSY))
-			break;
-	}
+	out_be32(priv->regs + GFAR_TBIPA_OFFSET, GFAR_TBIPA_VALUE);
 
-	gfar_local_mdio_write(priv->phyregs, priv->phyaddr, GFAR_MIIM_CR,
+	fsl_local_mdio_write(priv->phyregs, priv->phyaddr, GFAR_MIIM_CR,
 			GFAR_MIIM_CR_RST);
 
 	start = get_time_ns();
 	while (!is_timeout(start, 10 * MSECOND)) {
-		if (!(gfar_local_mdio_read(priv->phyregs, priv->phyaddr,
+		if (!(fsl_local_mdio_read(priv->phyregs, priv->phyaddr,
 					GFAR_MIIM_CR) & GFAR_MIIM_CR_RST))
 			break;
 	}
 
-	if (in_be32(regs + GFAR_ECNTRL_OFFSET) & GFAR_ECNTRL_SGMII_MODE)
+	if (in_be32(priv->regs + GFAR_ECNTRL_OFFSET) & GFAR_ECNTRL_SGMII_MODE)
 		gfar_configure_serdes(priv);
 }
 
@@ -432,43 +370,13 @@ static int gfar_recv(struct eth_device *edev)
 	return 0;
 }
 
-/* Read a MII PHY register. */
-static int gfar_miiphy_read(struct mii_device *mdev, int addr, int reg)
-{
-	struct device_d *dev = mdev->parent;
-	struct gfar_private *priv = mdev->priv;
-	int ret;
-
-	ret = gfar_local_mdio_read(priv->phyregs, addr, reg);
-	if (ret == -EIO)
-		dev_err(dev, "Can't read PHY at address %d\n", addr);
-
-	return ret;
-}
-
-/* Write a MII PHY register.  */
-static int gfar_miiphy_write(struct mii_device *mdev, int addr, int reg,
-				int value)
-{
-	struct device_d *dev = mdev->parent;
-	struct gfar_private *priv = mdev->priv;
-	unsigned short val = value;
-	int ret;
-
-	ret = gfar_local_mdio_write(priv->phyregs, addr, reg, val);
-
-	if (ret)
-		dev_err(dev, "Can't write PHY at address %d\n", addr);
-
-	return 0;
-}
-
 /*
  * Initialize device structure. Returns success if
  * initialization succeeded.
  */
 static int gfar_probe(struct device_d *dev)
 {
+	struct device_d *mdiodev;
 	struct gfar_info_struct *gfar_info = dev->platform_data;
 	struct eth_device *edev;
 	struct gfar_private *priv;
@@ -483,8 +391,12 @@ static int gfar_probe(struct device_d *dev)
 	edev = &priv->edev;
 
 	priv->regs = dev_request_mem_region(dev, 0);
-	priv->phyregs = dev_request_mem_region(dev, 1);
-	priv->phyregs_sgmii = dev_request_mem_region(dev, 2);
+
+#ifdef CONFIG_TSECV2
+	priv->phyregs_sgmii = dev_request_mem_region(dev, 1);
+#else
+	priv->phyregs_sgmii = priv->regs;
+#endif
 
 	priv->phyaddr = gfar_info->phyaddr;
 	priv->tbicr = gfar_info->tbicr;
@@ -514,15 +426,12 @@ static int gfar_probe(struct device_d *dev)
 	udelay(2);
 	clrbits_be32(priv->regs + GFAR_MACCFG1_OFFSET, GFAR_MACCFG1_SOFT_RESET);
 
-	priv->miidev.read = gfar_miiphy_read;
-	priv->miidev.write = gfar_miiphy_write;
-	priv->miidev.priv = priv;
-	priv->miidev.parent = dev;
+	mdiodev = get_device_by_name("miidev0");
+	priv->miidev =  mdiodev->priv;
+	priv->phyregs = priv->miidev->priv;
 
 	gfar_init_phy(edev);
 
-	mii_register(&priv->miidev);
-
 	return eth_register(edev);
 }
 
diff --git a/drivers/net/gianfar.h b/drivers/net/gianfar.h
index a4ad99e..13c49c4 100644
--- a/drivers/net/gianfar.h
+++ b/drivers/net/gianfar.h
@@ -268,8 +268,7 @@ struct gfar_private {
 	void __iomem *regs;
 	void __iomem *phyregs;
 	void __iomem *phyregs_sgmii;
-	struct phy_info *phyinfo;
-	struct mii_device miidev;
+	struct mii_device *miidev;
 	volatile struct txbd8 *txbd;
 	volatile struct rxbd8 *rxbd;
 	uint txidx;
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
