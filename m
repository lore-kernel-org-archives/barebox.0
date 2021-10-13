Delivery-date: Wed, 13 Oct 2021 15:05:08 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1madwS-00068z-De
	for lore@lore.pengutronix.de; Wed, 13 Oct 2021 15:05:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1madwQ-0005T1-5q
	for lore@pengutronix.de; Wed, 13 Oct 2021 15:05:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k8UoSGhO7cIJBLR/+eN9RXZtI0lDgDbC578V6iAOh/Q=; b=ZzAB8OEcN4vqRV
	hNgjDd2SbJsc0Sd5IvEoXvDPYAUG6IoqaLfMlK73v+qH21hteV81VQW3LdCyz3Hm2HKWE+R6FwQI2
	J6tdyj8CHJZpSRqLmlCfmfzwI2hp+pcAkEmtvgliS+MZbcwVmrXqXwGJffnF7lUEIsN0gAlOwkfT1
	/J8snNKlFcoWpEfu9OCSWBTnSex7zXnpIBd8r6H+jLj13SasvcRhSNYY/TJyErLngegYItr4WtkNz
	6qN8EN1+wvlBUgt1VrU46X6aX8pGlmUUB1RhHT2hwERNIeTGM30B0WJzqJeyveLvzCSHqVepQaYGn
	ueLyvtISZvW8pfCM+G4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1madut-00GkUv-Sq; Wed, 13 Oct 2021 13:03:32 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1madDJ-00GVYw-7Y
 for barebox@lists.infradead.org; Wed, 13 Oct 2021 12:18:31 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1madDH-0007M1-OO; Wed, 13 Oct 2021 14:18:27 +0200
Received: from ore by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1madDH-00018E-Bv; Wed, 13 Oct 2021 14:18:27 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed, 13 Oct 2021 14:18:25 +0200
Message-Id: <20211013121825.4278-2-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211013121825.4278-1-o.rempel@pengutronix.de>
References: <20211013121825.4278-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211013_051829_491386_393A9DEE 
X-CRM114-Status: GOOD (  24.76  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 2/2] net: phy: micrel: sync init code for ksz80xx variants
 with the kernel driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Sync part of barebox micrel driver with the kernel v5.15-rc1.
This change will affect most of by barebox supported 100Mbit/ksz80xx PHY
variants and provide unified devicetree support for LED and clock configuration.

At same time, NAND and broadcast configuration parts are synced as well
to reduce the difference with the kernel driver.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/net/phy/micrel.c | 250 +++++++++++++++++++++++++++++++++++----
 1 file changed, 228 insertions(+), 22 deletions(-)

diff --git a/drivers/net/phy/micrel.c b/drivers/net/phy/micrel.c
index ea193c84a7..cf593ee6a6 100644
--- a/drivers/net/phy/micrel.c
+++ b/drivers/net/phy/micrel.c
@@ -14,6 +14,7 @@
 
 #include <common.h>
 #include <init.h>
+#include <linux/clk.h>
 #include <linux/mii.h>
 #include <linux/ethtool.h>
 #include <linux/phy.h>
@@ -24,16 +25,17 @@
 /* Operation Mode Strap Override */
 #define MII_KSZPHY_OMSO				0x16
 #define KSZPHY_OMSO_B_CAST_OFF			BIT(9)
+#define KSZPHY_OMSO_NAND_TREE_ON		BIT(5)
 #define KSZPHY_OMSO_RMII_OVERRIDE		BIT(1)
 #define KSZPHY_OMSO_MII_OVERRIDE		BIT(0)
 
 /* general PHY control reg in vendor specific block. */
-#define	MII_KSZPHY_CTRL				0x1F
+#define	MII_KSZPHY_CTRL				0x1f
 /* bitmap of PHY register to set interrupt mode */
 #define KSZPHY_CTRL_INT_ACTIVE_HIGH		BIT(9)
 #define KSZ9021_CTRL_INT_ACTIVE_HIGH		BIT(14)
 #define KS8737_CTRL_INT_ACTIVE_HIGH		BIT(14)
-#define KSZ8051_RMII_50MHZ_CLK			BIT(7)
+#define KSZPHY_RMII_REF_CLK_SEL			BIT(7)
 
 /* PHY Control 1 */
 #define MII_KSZPHY_CTRL_1			0x1e
@@ -52,6 +54,47 @@
 
 #define PS_TO_REG				200
 
+struct kszphy_type {
+	u32 led_mode_reg;
+	bool has_broadcast_disable;
+	bool has_nand_tree_disable;
+	bool has_rmii_ref_clk_sel;
+};
+
+struct kszphy_priv {
+	const struct kszphy_type *type;
+	int led_mode;
+	bool rmii_ref_clk_sel;
+	bool rmii_ref_clk_sel_val;
+};
+
+static const struct kszphy_type ksz8001_type = {
+	.led_mode_reg		= MII_KSZPHY_CTRL_1,
+};
+
+static const struct kszphy_type ksz8021_type = {
+	.led_mode_reg		= MII_KSZPHY_CTRL,
+	.has_broadcast_disable	= true,
+	.has_nand_tree_disable	= true,
+	.has_rmii_ref_clk_sel	= true,
+};
+
+static const struct kszphy_type ksz8041_type = {
+	.led_mode_reg		= MII_KSZPHY_CTRL_1,
+};
+
+static const struct kszphy_type ksz8051_type = {
+	.led_mode_reg		= MII_KSZPHY_CTRL,
+	.has_nand_tree_disable	= true,
+};
+
+static const struct kszphy_type ksz8081_type = {
+	.led_mode_reg		= MII_KSZPHY_CTRL,
+	.has_broadcast_disable	= true,
+	.has_nand_tree_disable	= true,
+	.has_rmii_ref_clk_sel	= true,
+};
+
 static int kszphy_extended_write(struct phy_device *phydev,
 				u32 regnum, u16 val)
 {
@@ -66,6 +109,22 @@ static int kszphy_extended_read(struct phy_device *phydev,
 	return phy_read(phydev, MII_KSZPHY_EXTREG_READ);
 }
 
+static int kszphy_rmii_clk_sel(struct phy_device *phydev, bool val)
+{
+	int ctrl;
+
+	ctrl = phy_read(phydev, MII_KSZPHY_CTRL);
+	if (ctrl < 0)
+		return ctrl;
+
+	if (val)
+		ctrl |= KSZPHY_RMII_REF_CLK_SEL;
+	else
+		ctrl &= ~KSZPHY_RMII_REF_CLK_SEL;
+
+	return phy_write(phydev, MII_KSZPHY_CTRL, ctrl);
+}
+
 /* Handle LED mode, shift = position of first led mode bit, usually 4 or 14 */
 static int kszphy_led_mode(struct phy_device *phydev, int reg, int shift)
 {
@@ -83,37 +142,119 @@ static int kszphy_led_mode(struct phy_device *phydev, int reg, int shift)
 	return 0;
 }
 
-static int kszphy_config_init(struct phy_device *phydev)
+static int kszphy_setup_led(struct phy_device *phydev, u32 reg, int val)
 {
-	kszphy_led_mode(phydev, MII_KSZPHY_CTRL_1, 14);
+	const struct device_d *dev = &phydev->dev;
+	int rc, temp, shift;
 
-	return 0;
+	switch (reg) {
+	case MII_KSZPHY_CTRL_1:
+		shift = 14;
+		break;
+	case MII_KSZPHY_CTRL:
+		shift = 4;
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	temp = phy_read(phydev, reg);
+	if (temp < 0) {
+		rc = temp;
+		goto out;
+	}
+
+	temp &= ~(3 << shift);
+	temp |= val << shift;
+	rc = phy_write(phydev, reg, temp);
+out:
+	if (rc < 0)
+		dev_err(dev, "failed to set led mode\n");
+
+	return rc;
 }
 
-static int ksz8021_config_init(struct phy_device *phydev)
+/* Disable PHY address 0 as the broadcast address, so that it can be used as a
+ * unique (non-broadcast) address on a shared bus.
+ */
+static int kszphy_broadcast_disable(struct phy_device *phydev)
 {
-	phy_set_bits(phydev, MII_KSZPHY_OMSO, KSZPHY_OMSO_B_CAST_OFF);
+	const struct device_d *dev = &phydev->dev;
+	int ret;
 
-	kszphy_led_mode(phydev, MII_KSZPHY_CTRL, 4);
+	ret = phy_read(phydev, MII_KSZPHY_OMSO);
+	if (ret < 0)
+		goto out;
 
-	return 0;
+	ret = phy_write(phydev, MII_KSZPHY_OMSO, ret | KSZPHY_OMSO_B_CAST_OFF);
+out:
+	if (ret)
+		dev_err(dev, "failed to disable broadcast address\n");
+
+	return ret;
 }
 
-static int ks8051_config_init(struct phy_device *phydev)
+static int kszphy_nand_tree_disable(struct phy_device *phydev)
 {
-	int regval;
+	const struct device_d *dev = &phydev->dev;
+	int ret;
+
+	ret = phy_read(phydev, MII_KSZPHY_OMSO);
+	if (ret < 0)
+		goto out;
+
+	if (!(ret & KSZPHY_OMSO_NAND_TREE_ON))
+		return 0;
+
+	ret = phy_write(phydev, MII_KSZPHY_OMSO,
+			ret & ~KSZPHY_OMSO_NAND_TREE_ON);
+out:
+	if (ret)
+		dev_err(dev, "failed to disable NAND tree mode\n");
+
+	return ret;
+}
+
+/* Some config bits need to be set again on resume, handle them here. */
+static int kszphy_config_reset(struct phy_device *phydev)
+{
+	struct kszphy_priv *priv = phydev->priv;
+	int ret;
 
-	if (phydev->dev_flags & MICREL_PHY_50MHZ_CLK) {
-		regval = phy_read(phydev, MII_KSZPHY_CTRL);
-		regval |= KSZ8051_RMII_50MHZ_CLK;
-		phy_write(phydev, MII_KSZPHY_CTRL, regval);
+	if (priv->rmii_ref_clk_sel) {
+		ret = kszphy_rmii_clk_sel(phydev, priv->rmii_ref_clk_sel_val);
+		if (ret) {
+			dev_err(&phydev->dev,
+				   "failed to set rmii reference clock\n");
+			return ret;
+		}
 	}
 
-	kszphy_led_mode(phydev, MII_KSZPHY_CTRL, 4);
+	if (priv->led_mode >= 0)
+		kszphy_setup_led(phydev, priv->type->led_mode_reg, priv->led_mode);
 
 	return 0;
 }
 
+static int kszphy_config_init(struct phy_device *phydev)
+{
+	struct kszphy_priv *priv = phydev->priv;
+	const struct kszphy_type *type;
+
+	if (!priv)
+		return 0;
+
+	type = priv->type;
+
+	if (type->has_broadcast_disable)
+		kszphy_broadcast_disable(phydev);
+
+	if (type->has_nand_tree_disable)
+		kszphy_nand_tree_disable(phydev);
+
+	return kszphy_config_reset(phydev);
+}
+
 static int ksz9021_load_values_from_of(struct phy_device *phydev,
 				       const struct device_node *of_node,
 				       u16 reg, const char *field[])
@@ -468,13 +609,66 @@ static int ksz8873mll_config_init(struct phy_device *phydev)
 	return 0;
 }
 
+static int kszphy_probe(struct phy_device *phydev)
+{
+	struct device_d *dev = &phydev->dev;
+	struct device_node *np = dev->device_node;
+	struct phy_driver *drv = to_phy_driver(dev->driver);
+	const struct kszphy_type *type = drv->driver_data;
+	struct kszphy_priv *priv;
+	struct clk *clk;
+	int ret;
+
+	priv = xzalloc(sizeof(*priv));
+
+	phydev->priv = priv;
+
+	priv->type = type;
+
+	if (type->led_mode_reg) {
+		ret = of_property_read_u32(np, "micrel,led-mode",
+				&priv->led_mode);
+		if (ret)
+			priv->led_mode = -1;
+
+		if (priv->led_mode > 3) {
+			dev_err(dev, "invalid led mode: 0x%02x\n",
+				priv->led_mode);
+			priv->led_mode = -1;
+		}
+	} else {
+		priv->led_mode = -1;
+	}
+
+	clk = clk_get(dev, "rmii-ref");
+	/* NOTE: clk may be NULL if building without CONFIG_HAVE_CLK */
+	if (!IS_ERR_OR_NULL(clk)) {
+		unsigned long rate = clk_get_rate(clk);
+		bool rmii_ref_clk_sel_25_mhz;
+
+		priv->rmii_ref_clk_sel = type->has_rmii_ref_clk_sel;
+		rmii_ref_clk_sel_25_mhz = of_property_read_bool(np,
+				"micrel,rmii-reference-clock-select-25-mhz");
+
+		if (rate > 24500000 && rate < 25500000) {
+			priv->rmii_ref_clk_sel_val = rmii_ref_clk_sel_25_mhz;
+		} else if (rate > 49500000 && rate < 50500000) {
+			priv->rmii_ref_clk_sel_val = !rmii_ref_clk_sel_25_mhz;
+		} else {
+			dev_err(dev, "Clock rate out of range: %ld\n", rate);
+			return -EINVAL;
+		}
+	}
+
+	return 0;
+}
+
 static struct phy_driver ksphy_driver[] = {
 {
 	.phy_id		= PHY_ID_KS8737,
 	.phy_id_mask	= 0x00fffff0,
 	.drv.name	= "Micrel KS8737",
 	.features	= (PHY_BASIC_FEATURES | SUPPORTED_Pause),
-	.config_init	= kszphy_config_init,
 	.config_aneg	= genphy_config_aneg,
 	.read_status	= genphy_read_status,
 }, {
@@ -483,7 +677,9 @@ static struct phy_driver ksphy_driver[] = {
 	.drv.name	= "Micrel KSZ8021",
 	.features	= (PHY_BASIC_FEATURES | SUPPORTED_Pause |
 			   SUPPORTED_Asym_Pause),
-	.config_init	= ksz8021_config_init,
+	.driver_data	= &ksz8021_type,
+	.probe		= kszphy_probe,
+	.config_init	= kszphy_config_init,
 	.config_aneg	= genphy_config_aneg,
 	.read_status	= genphy_read_status,
 }, {
@@ -492,7 +688,9 @@ static struct phy_driver ksphy_driver[] = {
 	.drv.name	= "Micrel KSZ8031",
 	.features	= (PHY_BASIC_FEATURES | SUPPORTED_Pause |
 			   SUPPORTED_Asym_Pause),
-	.config_init	= ksz8021_config_init,
+	.driver_data	= &ksz8021_type,
+	.probe		= kszphy_probe,
+	.config_init	= kszphy_config_init,
 	.config_aneg	= genphy_config_aneg,
 	.read_status	= genphy_read_status,
 }, {
@@ -501,6 +699,8 @@ static struct phy_driver ksphy_driver[] = {
 	.drv.name	= "Micrel KSZ8041",
 	.features	= (PHY_BASIC_FEATURES | SUPPORTED_Pause
 				| SUPPORTED_Asym_Pause),
+	.driver_data	= &ksz8041_type,
+	.probe		= kszphy_probe,
 	.config_init	= kszphy_config_init,
 	.config_aneg	= genphy_config_aneg,
 	.read_status	= genphy_read_status,
@@ -510,22 +710,28 @@ static struct phy_driver ksphy_driver[] = {
 	.drv.name	= "Micrel KSZ8051",
 	.features	= (PHY_BASIC_FEATURES | SUPPORTED_Pause
 				| SUPPORTED_Asym_Pause),
-	.config_init	= ks8051_config_init,
+	.driver_data	= &ksz8051_type,
+	.probe		= kszphy_probe,
+	.config_init	= kszphy_config_init,
 	.config_aneg	= genphy_config_aneg,
 	.read_status	= genphy_read_status,
 }, {
 	.phy_id		= PHY_ID_KSZ8081,
 	.phy_id_mask	= MICREL_PHY_ID_MASK,
 	.drv.name	= "Micrel KSZ8081/91",
+	.driver_data	= &ksz8081_type,
 	.features	= (PHY_BASIC_FEATURES | SUPPORTED_Pause),
-	.config_init	= ksz8021_config_init,
+	.probe		= kszphy_probe,
+	.config_init	= kszphy_config_init,
 	.config_aneg	= genphy_config_aneg,
 	.read_status	= genphy_read_status,
 }, {
 	.phy_id		= PHY_ID_KSZ8001,
-	.drv.name	= "Micrel KSZ8001 or KS8721",
 	.phy_id_mask	= 0x00ffffff,
+	.drv.name	= "Micrel KSZ8001 or KS8721",
+	.driver_data	= &ksz8001_type,
 	.features	= (PHY_BASIC_FEATURES | SUPPORTED_Pause),
+	.probe		= kszphy_probe,
 	.config_init	= kszphy_config_init,
 	.config_aneg	= genphy_config_aneg,
 	.read_status	= genphy_read_status,
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

