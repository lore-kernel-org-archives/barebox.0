Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp33.i.mail.ru ([94.100.177.93])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bJD2O-0004x5-9r
 for barebox@lists.infradead.org; Sat, 02 Jul 2016 05:00:18 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sat,  2 Jul 2016 07:59:47 +0300
Message-Id: <1467435587-20533-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH v2] net: smc911x: Add parsing devicetree options
To: barebox@lists.infradead.org

This patch adds parsing basic devicetree options for the smc911x driver:
reg-io-width, reg-shift and smsc,force-(in/ex)ternal-phy, which makes
driver usable for most DTS-based boards.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 drivers/net/smc911x.c               | 17 +++++++++++++++--
 include/platform_data/eth-smc911x.h |  2 +-
 2 files changed, 16 insertions(+), 3 deletions(-)

diff --git a/drivers/net/smc911x.c b/drivers/net/smc911x.c
index fe9d1df..45175bb 100644
--- a/drivers/net/smc911x.c
+++ b/drivers/net/smc911x.c
@@ -38,7 +38,7 @@ struct smc911x_priv {
 	struct mii_bus miibus;
 	void __iomem *base;
 
-	int shift;
+	u32 shift;
 	int generation;
 	unsigned int flags;
 	unsigned int idrev;
@@ -516,6 +516,19 @@ static int smc911x_probe(struct device_d *dev)
 		priv->shift = pdata->shift;
 		priv->flags = pdata->flags;
 		priv->phy_mask = pdata->phy_mask;
+	} else if (IS_ENABLED(CONFIG_OFDEVICE) && dev->device_node) {
+		ret = of_property_read_u32(dev->device_node, "reg-io-width", &val);
+		if (ret)
+			return ret;
+		is_32bit = (val == 4);
+
+		of_property_read_u32(dev->device_node, "reg-shift", &priv->shift);
+
+		if (of_property_read_bool(dev->device_node, "smsc,force-internal-phy"))
+			priv->flags |= SMC911X_FORCE_INTERNAL_PHY;
+
+		if (of_property_read_bool(dev->device_node, "smsc,force-external-phy"))
+			priv->flags |= SMC911X_FORCE_EXTERNAL_PHY;
 	}
 
 	if (is_32bit) {
@@ -562,7 +575,7 @@ static int smc911x_probe(struct device_d *dev)
 	if (val != 0x87654321) {
 		dev_err(dev, "no smc911x found on 0x%p (byte_test=0x%08x)\n",
 			priv->base, val);
-		if (((val >> 16) & 0xFFFF) == (val & 0xFFFF)) {
+		if ((((val >> 16) & 0xFFFF) == (val & 0xFFFF)) && is_32bit) {
 			/*
 			 * This may mean the chip is set
 			 * for 32 bit while the bus is reading 16 bit
diff --git a/include/platform_data/eth-smc911x.h b/include/platform_data/eth-smc911x.h
index 4a802ee..c97a296 100644
--- a/include/platform_data/eth-smc911x.h
+++ b/include/platform_data/eth-smc911x.h
@@ -12,7 +12,7 @@
  * Pass pointer to this structure as part of device_d -> platform_data
  */
 struct smc911x_plat {
-	int shift;
+	u32 shift;
 	unsigned int flags;
 	unsigned int phy_mask;	/* external PHY only: mask out PHYs,
 				   e.g. ~(1 << 5) to use PHY addr 5 */
-- 
2.4.9


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
