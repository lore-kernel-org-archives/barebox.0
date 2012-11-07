Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.mars-solutions.de ([213.239.212.107])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TWEzi-0002DA-Ui
 for barebox@lists.infradead.org; Wed, 07 Nov 2012 23:25:16 +0000
From: Andreas Pretzsch <apr@cn-eng.de>
Date: Thu,  8 Nov 2012 00:25:03 +0100
Message-Id: <1352330703-27402-1-git-send-email-apr@cn-eng.de>
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
Subject: [PATCH] net smc911x: add support for external PHY
To: barebox@lists.infradead.org

On LAN9115/LAN9117/LAN9215/LAN9217, external PHYs are supported.
Switch to external PHY based on hardware strap pin and/or override flags.
Also add a mask to platform data selecting external PHY address to be used.

Code based on linux/drivers/net/ethernet/smsc/smsc911x.c (fd9abb3d, d23f028a).
---
Code is tested on a SMSC LAN9217 with an external PHY (switch chip attached
in PHY mode via MII), the external mode works as expected.
As I have no board at hand using the internal PHY of the controller (or any
of these family), I cannot verify the current behaviour, beside looking at
the internal PHY register (which are fine).
But as the modifications are mostly 1:1 copies of the respective Linux mainline
code, slightly adapted for Barebox, I expect no problems here.

Patch is against current next, but should also match current master.
CC'ing last active authors.

 drivers/net/smc911x.c |   97 +++++++++++++++++++++++++++++++++++++++++++++++--
 include/smc911x.h     |    6 +++
 2 files changed, 99 insertions(+), 4 deletions(-)

diff --git a/drivers/net/smc911x.c b/drivers/net/smc911x.c
index c657fec..28c69ba 100644
--- a/drivers/net/smc911x.c
+++ b/drivers/net/smc911x.c
@@ -44,6 +44,10 @@ struct smc911x_priv {
 
 	int shift;
 	int generation;
+	unsigned int flags;
+	unsigned int idrev;
+	unsigned int using_extphy;
+	unsigned int phy_mask;
 
 	u32 (*reg_read)(struct smc911x_priv *priv, u32 reg);
 	void (*reg_write)(struct smc911x_priv *priv, u32 reg, u32 val);
@@ -225,6 +229,60 @@ static int smc911x_phy_write(struct mii_bus *bus, int phy_addr,
 	return 0;
 }
 
+/* Switch to external phy. Assumes tx and rx are stopped. */
+static void smsc911x_phy_enable_external(struct eth_device *edev)
+{
+	struct smc911x_priv *priv = edev->priv;
+	u32 hwcfg = smc911x_reg_read(priv, HW_CFG);
+
+	/* Disable phy clocks to the MAC */
+	hwcfg &= (~HW_CFG_PHY_CLK_SEL);
+	hwcfg |= HW_CFG_PHY_CLK_SEL_CLK_DIS;
+	smc911x_reg_write(priv, HW_CFG, hwcfg);
+	udelay(10);	/* Enough time for clocks to stop */
+
+	/* Switch to external phy */
+	hwcfg |= HW_CFG_EXT_PHY_EN;
+	smc911x_reg_write(priv, HW_CFG, hwcfg);
+
+	/* Enable phy clocks to the MAC */
+	hwcfg &= (~HW_CFG_PHY_CLK_SEL);
+	hwcfg |= HW_CFG_PHY_CLK_SEL_EXT_PHY;
+	smc911x_reg_write(priv, HW_CFG, hwcfg);
+	udelay(10);	/* Enough time for clocks to restart */
+
+	/* Switch MDIO/MDC to external PHY */
+	hwcfg |= HW_CFG_SMI_SEL;
+	smc911x_reg_write(priv, HW_CFG, hwcfg);
+}
+
+/* Autodetects and enables external phy if present on supported chips.
+ * autodetection can be overridden by specifying SMC911X_FORCE_INTERNAL_PHY
+ * or SMC911X_FORCE_EXTERNAL_PHY in the platform_data flags. */
+static void smsc911x_phy_initialise_external(struct eth_device *edev)
+{
+	struct smc911x_priv *priv = edev->priv;
+	u32 hwcfg = smc911x_reg_read(priv, HW_CFG);
+
+	if (priv->flags & SMC911X_FORCE_INTERNAL_PHY) {
+		dev_info(edev->parent, "Forcing internal PHY\n");
+		priv->using_extphy = 0;
+	} else if (priv->flags & SMC911X_FORCE_EXTERNAL_PHY) {
+		dev_info(edev->parent, "Forcing external PHY\n");
+		smsc911x_phy_enable_external(edev);
+		priv->using_extphy = 1;
+	} else if (hwcfg & HW_CFG_EXT_PHY_DET) {
+		dev_info(edev->parent,
+			"HW_CFG EXT_PHY_DET set, using external PHY\n");
+		smsc911x_phy_enable_external(edev);
+		priv->using_extphy = 1;
+	} else {
+		dev_info(edev->parent,
+			"HW_CFG EXT_PHY_DET clear, using internal PHY\n");
+		priv->using_extphy = 0;
+	}
+}
+
 static int smc911x_phy_reset(struct eth_device *edev)
 {
 	struct smc911x_priv *priv = edev->priv;
@@ -284,14 +342,41 @@ static void smc911x_reset(struct eth_device *edev)
 
 	/* Set to LED outputs */
 	smc911x_reg_write(priv, GPIO_CFG, 0x70070000);
+
+	/* Select internal/external PHY */
+	switch (priv->idrev & 0xFFFF0000) {
+	case 0x01170000:
+	case 0x01150000:
+	case 0x117A0000:
+	case 0x115A0000:
+		/* External PHY supported, try to autodetect */
+		smsc911x_phy_initialise_external(edev);
+		break;
+	default:
+		dev_dbg(edev->parent, "External PHY is not supported, "
+			"using internal PHY\n");
+		priv->using_extphy = 0;
+		break;
+	}
+
+	if (!priv->using_extphy) {
+		/* Mask all PHYs except ID 1 (internal) */
+		priv->miibus.phy_mask = ~(1 << 1);
+	} else {
+		/* Mask PHYs as requested (or try all if mask is 0) */
+		/* Attn.: first probed PHY is used by phy_device_connect */
+		priv->miibus.phy_mask = priv->phy_mask;
+	}
 }
 
 static void smc911x_enable(struct eth_device *edev)
 {
 	struct smc911x_priv *priv = edev->priv;
+	u32 hw_cfg_phy_settings;
 
 	/* Enable TX */
-	smc911x_reg_write(priv, HW_CFG, 8 << 16 | HW_CFG_SF);
+	hw_cfg_phy_settings = smc911x_reg_read(priv, HW_CFG) & (HW_CFG_PHY_CLK_SEL|HW_CFG_SMI_SEL|HW_CFG_EXT_PHY_EN);
+	smc911x_reg_write(priv, HW_CFG, 8 << 16 | HW_CFG_SF | hw_cfg_phy_settings);
 
 	smc911x_reg_write(priv, GPT_CFG, GPT_CFG_TIMER_EN | 10000);
 
@@ -306,7 +391,8 @@ static int smc911x_eth_open(struct eth_device *edev)
 	struct smc911x_priv *priv = (struct smc911x_priv *)edev->priv;
 	int ret;
 
-	ret = phy_device_connect(edev, &priv->miibus, 1, NULL,
+	/* use first probed PHY (see also phy_mask) */
+	ret = phy_device_connect(edev, &priv->miibus, -1, NULL,
 				 0, PHY_INTERFACE_MODE_NA);
 	if (ret)
 		return ret;
@@ -426,8 +512,11 @@ static int smc911x_probe(struct device_d *dev)
 		is_32bit = is_32bit == IORESOURCE_MEM_32BIT;
 	priv->base = dev_request_mem_region(dev, 0);
 
-	if (pdata && pdata->shift)
+	if (pdata) {
 		priv->shift = pdata->shift;
+		priv->flags = pdata->flags;
+		priv->phy_mask = pdata->phy_mask;
+	}
 
 	if (is_32bit) {
 		if (priv->shift) {
@@ -483,7 +572,7 @@ static int smc911x_probe(struct device_d *dev)
 		return -ENODEV;
 	}
 
-	val = smc911x_reg_read(priv, ID_REV);
+	priv->idrev = val = smc911x_reg_read(priv, ID_REV);
 	switch (val & 0xFFFF0000) {
 	case 0x01180000:
 	case 0x01170000:
diff --git a/include/smc911x.h b/include/smc911x.h
index 148906b..4a802ee 100644
--- a/include/smc911x.h
+++ b/include/smc911x.h
@@ -13,6 +13,12 @@
  */
 struct smc911x_plat {
 	int shift;
+	unsigned int flags;
+	unsigned int phy_mask;	/* external PHY only: mask out PHYs,
+				   e.g. ~(1 << 5) to use PHY addr 5 */
 };
 
+#define SMC911X_FORCE_INTERNAL_PHY	0x01
+#define SMC911X_FORCE_EXTERNAL_PHY	0x02
+
 #endif /* __SMC911X_PLATFORM_H_ */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
