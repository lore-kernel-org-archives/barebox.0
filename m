Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo2.mail-out.ovh.net ([188.165.52.147]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T6aTs-0008E3-JE
 for barebox@lists.infradead.org; Wed, 29 Aug 2012 05:06:21 +0000
Received: from mail21.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 34558DC44B7
 for <barebox@lists.infradead.org>; Wed, 29 Aug 2012 07:11:14 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 29 Aug 2012 07:06:17 +0200
Message-Id: <1346216778-14100-6-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1346216778-14100-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120829042727.GA18708@game.jcrosoft.org>
 <1346216778-14100-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 6/7] smc911x: update chip detection
To: barebox@lists.infradead.org

Use linux kernel chip detection from 3.5

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/net/smc911x.c |   60 ++++++++++++++++++++++++++++---------------------
 drivers/net/smc911x.h |   13 -----------
 2 files changed, 34 insertions(+), 39 deletions(-)

diff --git a/drivers/net/smc911x.c b/drivers/net/smc911x.c
index 17f365d..cfcd83f 100644
--- a/drivers/net/smc911x.c
+++ b/drivers/net/smc911x.c
@@ -47,29 +47,12 @@ struct smc911x_priv {
 	void __iomem *base;
 
 	int shift;
+	int generation;
 
 	u32 (*reg_read)(struct smc911x_priv *priv, u32 reg);
 	void (*reg_write)(struct smc911x_priv *priv, u32 reg, u32 val);
 };
 
-struct chip_id {
-	u16 id;
-	char *name;
-};
-
-static const struct chip_id chip_ids[] =  {
-	{ CHIP_9115, "LAN9115" },
-	{ CHIP_9116, "LAN9116" },
-	{ CHIP_9117, "LAN9117" },
-	{ CHIP_9118, "LAN9118" },
-	{ CHIP_9215, "LAN9215" },
-	{ CHIP_9216, "LAN9216" },
-	{ CHIP_9217, "LAN9217" },
-	{ CHIP_9218, "LAN9218" },
-	{ CHIP_9221, "LAN9221" },
-	{ 0, NULL },
-};
-
 #define DRIVERNAME "smc911x"
 
 #define __smc_shift(priv, reg) ((reg) << ((priv)->shift))
@@ -437,7 +420,7 @@ static int smc911x_probe(struct device_d *dev)
 	struct eth_device *edev;
 	struct smc911x_priv *priv;
 	uint32_t val;
-	int i, is_32bit;
+	int is_32bit;
 	struct smc911x_plat *pdata = dev->platform_data;
 
 	priv = xzalloc(sizeof(*priv));
@@ -494,16 +477,41 @@ static int smc911x_probe(struct device_d *dev)
 		return -ENODEV;
 	}
 
-	val = smc911x_reg_read(priv, ID_REV) >> 16;
-	for(i = 0; chip_ids[i].id != 0; i++) {
-		if (chip_ids[i].id == val) break;
-	}
-	if (!chip_ids[i].id) {
-		dev_err(dev, "Unknown chip ID %04x\n", val);
+	val = smc911x_reg_read(priv, ID_REV);
+	switch (val & 0xFFFF0000) {
+	case 0x01180000:
+	case 0x01170000:
+	case 0x01160000:
+	case 0x01150000:
+	case 0x218A0000:
+		/* LAN911[5678] family */
+		priv->generation = val & 0x0000FFFF;
+		break;
+
+	case 0x118A0000:
+	case 0x117A0000:
+	case 0x116A0000:
+	case 0x115A0000:
+		/* LAN921[5678] family */
+		priv->generation = 3;
+		break;
+
+	case 0x92100000:
+	case 0x92110000:
+	case 0x92200000:
+	case 0x92210000:
+		/* LAN9210/LAN9211/LAN9220/LAN9221 */
+		priv->generation = 4;
+		break;
+
+	default:
+		dev_err(dev, "LAN911x not identified, idrev: 0x%08X\n",
+			  val);
 		return -ENODEV;
 	}
 
-	dev_info(dev, "detected %s controller\n", chip_ids[i].name);
+	dev_info(dev, "LAN911x identified, idrev: 0x%08X, generation: %d\n",
+		   val, priv->generation);
 
 	edev = &priv->edev;
 	edev->priv = priv;
diff --git a/drivers/net/smc911x.h b/drivers/net/smc911x.h
index d409247..572c1f8 100644
--- a/drivers/net/smc911x.h
+++ b/drivers/net/smc911x.h
@@ -340,16 +340,3 @@
 #define WUCSR_MPR			0x00000020
 #define WUCSR_WAKE_EN			0x00000004
 #define WUCSR_MPEN			0x00000002
-
-/* Chip ID values */
-#define CHIP_9115	0x115
-#define CHIP_9116	0x116
-#define CHIP_9117	0x117
-#define CHIP_9118	0x118
-#define CHIP_9215	0x115a
-#define CHIP_9216	0x116a
-#define CHIP_9217	0x117a
-#define CHIP_9218	0x118a
-#define CHIP_9221	0x9221
-
-
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
