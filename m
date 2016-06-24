Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp14.mail.ru ([94.100.181.95])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bGRqt-0002jh-3d
 for barebox@lists.infradead.org; Fri, 24 Jun 2016 14:13:01 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Fri, 24 Jun 2016 17:12:33 +0300
Message-Id: <1466777553-14483-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH] net: smc911x: Add parsing devicetree options
To: barebox@lists.infradead.org

This patch adds parsing basic devicetree options for the smc911x driver:
reg-io-width, reg-shift and smsc,force-(in/ex)ternal-phy, which makes
driver usable for most DTS-based boards.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 drivers/net/smc911x.c               | 54 ++++++++++++++++++++++---------------
 include/platform_data/eth-smc911x.h |  7 ++---
 2 files changed, 36 insertions(+), 25 deletions(-)

diff --git a/drivers/net/smc911x.c b/drivers/net/smc911x.c
index fe9d1df..5739ce7 100644
--- a/drivers/net/smc911x.c
+++ b/drivers/net/smc911x.c
@@ -34,16 +34,15 @@
 #include "smc911x.h"
 
 struct smc911x_priv {
-	struct eth_device edev;
-	struct mii_bus miibus;
-	void __iomem *base;
+	struct eth_device	edev;
+	struct mii_bus		miibus;
+	void __iomem		*base;
 
-	int shift;
-	int generation;
-	unsigned int flags;
-	unsigned int idrev;
-	unsigned int using_extphy;
-	unsigned int phy_mask;
+	u32			shift;
+	u32			flags;
+	u32			phy_mask;
+	u32			idrev;
+	unsigned int		using_extphy;
 
 	u32 (*reg_read)(struct smc911x_priv *priv, u32 reg);
 	void (*reg_write)(struct smc911x_priv *priv, u32 reg, u32 val);
@@ -497,16 +496,12 @@ static int smc911x_probe(struct device_d *dev)
 	struct resource *iores;
 	struct eth_device *edev;
 	struct smc911x_priv *priv;
-	uint32_t val;
-	int is_32bit, ret;
+	u32 val, generation;
+	int ret;
 	struct smc911x_plat *pdata = dev->platform_data;
 
 	priv = xzalloc(sizeof(*priv));
-	is_32bit = dev->resource[0].flags & IORESOURCE_MEM_TYPE_MASK;
-	if (!is_32bit)
-		is_32bit = 1;
-	else
-		is_32bit = is_32bit == IORESOURCE_MEM_32BIT;
+
 	iores = dev_request_mem_resource(dev, 0);
 	if (IS_ERR(iores))
 		return PTR_ERR(iores);
@@ -516,9 +511,23 @@ static int smc911x_probe(struct device_d *dev)
 		priv->shift = pdata->shift;
 		priv->flags = pdata->flags;
 		priv->phy_mask = pdata->phy_mask;
+	} else if (IS_ENABLED(CONFIG_OFDEVICE) && dev->device_node) {
+		ret = of_property_read_u32(dev->device_node, "reg-io-width", &val);
+		if (ret)
+			return ret;
+		if (val == 4)
+			priv->flags |= SMC911X_USE_32BIT;
+
+		of_property_read_u32(dev->device_node, "reg-shift", &priv->shift);
+
+		if (of_property_read_bool(dev->device_node, "smsc,force-internal-phy"))
+			priv->flags |= SMC911X_FORCE_INTERNAL_PHY;
+
+		if (of_property_read_bool(dev->device_node, "smsc,force-external-phy"))
+			priv->flags |= SMC911X_FORCE_EXTERNAL_PHY;
 	}
 
-	if (is_32bit) {
+	if (priv->flags & SMC911X_USE_32BIT) {
 		if (priv->shift) {
 			priv->reg_read = __smc911x_reg_readl_shift;
 			priv->reg_write = __smc911x_reg_writel_shift;
@@ -562,7 +571,8 @@ static int smc911x_probe(struct device_d *dev)
 	if (val != 0x87654321) {
 		dev_err(dev, "no smc911x found on 0x%p (byte_test=0x%08x)\n",
 			priv->base, val);
-		if (((val >> 16) & 0xFFFF) == (val & 0xFFFF)) {
+		if ((((val >> 16) & 0xFFFF) == (val & 0xFFFF)) &&
+		    (priv->flags & SMC911X_USE_32BIT)) {
 			/*
 			 * This may mean the chip is set
 			 * for 32 bit while the bus is reading 16 bit
@@ -580,7 +590,7 @@ static int smc911x_probe(struct device_d *dev)
 	case 0x01150000:
 	case 0x218A0000:
 		/* LAN911[5678] family */
-		priv->generation = val & 0x0000FFFF;
+		generation = val & 0x0000FFFF;
 		break;
 
 	case 0x118A0000:
@@ -588,7 +598,7 @@ static int smc911x_probe(struct device_d *dev)
 	case 0x116A0000:
 	case 0x115A0000:
 		/* LAN921[5678] family */
-		priv->generation = 3;
+		generation = 3;
 		break;
 
 	case 0x92100000:
@@ -596,7 +606,7 @@ static int smc911x_probe(struct device_d *dev)
 	case 0x92200000:
 	case 0x92210000:
 		/* LAN9210/LAN9211/LAN9220/LAN9221 */
-		priv->generation = 4;
+		generation = 4;
 		break;
 
 	default:
@@ -606,7 +616,7 @@ static int smc911x_probe(struct device_d *dev)
 	}
 
 	dev_info(dev, "LAN911x identified, idrev: 0x%08X, generation: %d\n",
-		   val, priv->generation);
+		   val, generation);
 
 	edev = &priv->edev;
 	edev->priv = priv;
diff --git a/include/platform_data/eth-smc911x.h b/include/platform_data/eth-smc911x.h
index 4a802ee..3cce195 100644
--- a/include/platform_data/eth-smc911x.h
+++ b/include/platform_data/eth-smc911x.h
@@ -12,13 +12,14 @@
  * Pass pointer to this structure as part of device_d -> platform_data
  */
 struct smc911x_plat {
-	int shift;
-	unsigned int flags;
-	unsigned int phy_mask;	/* external PHY only: mask out PHYs,
+	u32	shift;
+	u32	flags;
+	u32	phy_mask;	/* external PHY only: mask out PHYs,
 				   e.g. ~(1 << 5) to use PHY addr 5 */
 };
 
 #define SMC911X_FORCE_INTERNAL_PHY	0x01
 #define SMC911X_FORCE_EXTERNAL_PHY	0x02
+#define SMC911X_USE_32BIT		0x04
 
 #endif /* __SMC911X_PLATFORM_H_ */
-- 
2.4.9


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
