Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo4.mail-out.ovh.net ([178.33.253.54]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T1KyX-0004mf-3r
 for barebox@lists.infradead.org; Tue, 14 Aug 2012 17:32:20 +0000
Received: from mail628.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 33DCF10583C7
 for <barebox@lists.infradead.org>; Tue, 14 Aug 2012 19:36:55 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 14 Aug 2012 19:32:19 +0200
Message-Id: <1344965540-31534-6-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1344965540-31534-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120814172555.GP6271@game.jcrosoft.org>
 <1344965540-31534-1-git-send-email-plagnioj@jcrosoft.com>
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
 drivers/net/smc911x.c |   59 +++++++++++++++++++++++++++----------------------
 drivers/net/smc911x.h |   33 +++++++++++++++++----------
 2 files changed, 54 insertions(+), 38 deletions(-)

diff --git a/drivers/net/smc911x.c b/drivers/net/smc911x.c
index 67d82df..021a194 100644
--- a/drivers/net/smc911x.c
+++ b/drivers/net/smc911x.c
@@ -48,29 +48,12 @@ struct smc911x_priv {
 
 	u32 width;
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
@@ -429,7 +412,6 @@ static int smc911x_probe(struct device_d *dev)
 	struct eth_device *edev;
 	struct smc911x_priv *priv;
 	uint32_t val;
-	int i;
 	struct smc911x_plat *pdata = dev->platform_data;
 
 	priv = xzalloc(sizeof(*priv));
@@ -474,16 +456,41 @@ static int smc911x_probe(struct device_d *dev)
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
index d409247..623e192 100644
--- a/drivers/net/smc911x.h
+++ b/drivers/net/smc911x.h
@@ -341,15 +341,24 @@
 #define WUCSR_WAKE_EN			0x00000004
 #define WUCSR_MPEN			0x00000002
 
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
+/* SMSC PHY */
+#define MII_LAN83C185_ISF 29 /* Interrupt Source Flags */
+#define MII_LAN83C185_IM  30 /* Interrupt Mask */
+#define MII_LAN83C185_CTRL_STATUS 17 /* Mode/Status Register */
+
+#define MII_LAN83C185_ISF_INT1 (1<<1) /* Auto-Negotiation Page Received */
+#define MII_LAN83C185_ISF_INT2 (1<<2) /* Parallel Detection Fault */
+#define MII_LAN83C185_ISF_INT3 (1<<3) /* Auto-Negotiation LP Ack */
+#define MII_LAN83C185_ISF_INT4 (1<<4) /* Link Down */
+#define MII_LAN83C185_ISF_INT5 (1<<5) /* Remote Fault Detected */
+#define MII_LAN83C185_ISF_INT6 (1<<6) /* Auto-Negotiation complete */
+#define MII_LAN83C185_ISF_INT7 (1<<7) /* ENERGYON */
+
+#define MII_LAN83C185_ISF_INT_ALL (0x0e)
+
+#define MII_LAN83C185_ISF_INT_PHYLIB_EVENTS \
+	(MII_LAN83C185_ISF_INT6 | MII_LAN83C185_ISF_INT4 | \
+	 MII_LAN83C185_ISF_INT7)
+
+#define MII_LAN83C185_EDPWRDOWN (1 << 13) /* EDPWRDOWN */
+#define MII_LAN83C185_ENERGYON  (1 << 1)  /* ENERGYON */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
