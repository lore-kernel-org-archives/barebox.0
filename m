Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo2.mail-out.ovh.net ([87.98.165.38]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T7jRN-00069A-RR
 for barebox@lists.infradead.org; Sat, 01 Sep 2012 08:52:35 +0000
Received: from mail21.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 4AA00DC6FA5
 for <barebox@lists.infradead.org>; Sat,  1 Sep 2012 10:57:42 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat,  1 Sep 2012 10:52:40 +0200
Message-Id: <1346489564-16176-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1346489564-16176-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120901084728.GH18708@game.jcrosoft.org>
 <1346489564-16176-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/7] smc911x: add 16bit bus width support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/net/smc911x.c |   34 +++++++++++++++++++++++++++++-----
 1 file changed, 29 insertions(+), 5 deletions(-)

diff --git a/drivers/net/smc911x.c b/drivers/net/smc911x.c
index 2583235..917f994 100644
--- a/drivers/net/smc911x.c
+++ b/drivers/net/smc911x.c
@@ -76,7 +76,13 @@ static inline u32 smc911x_reg_read(struct smc911x_priv *priv, u32 reg)
 	return priv->reg_read(priv, reg);
 }
 
-static inline u32 __smc911x_reg_read(struct smc911x_priv *priv, u32 reg)
+static inline u32 __smc911x_reg_readw(struct smc911x_priv *priv, u32 reg)
+{
+	return ((readw(priv->base + reg) & 0xFFFF) |
+		((readw(priv->base + reg + 2) & 0xFFFF) << 16));
+}
+
+static inline u32 __smc911x_reg_readl(struct smc911x_priv *priv, u32 reg)
 {
 	return readl(priv->base + reg);
 }
@@ -87,7 +93,14 @@ static inline void smc911x_reg_write(struct smc911x_priv *priv, u32 reg,
 	priv->reg_write(priv, reg, val);
 }
 
-static inline void __smc911x_reg_write(struct smc911x_priv *priv, u32 reg,
+static inline void __smc911x_reg_writew(struct smc911x_priv *priv, u32 reg,
+					u32 val)
+{
+	writew(val & 0xFFFF, priv->base + reg);
+	writew((val >> 16) & 0xFFFF, priv->base + reg + 2);
+}
+
+static inline void __smc911x_reg_writel(struct smc911x_priv *priv, u32 reg,
 					u32 val)
 {
 	writel(val, priv->base + reg);
@@ -390,12 +403,23 @@ static int smc911x_probe(struct device_d *dev)
 	struct eth_device *edev;
 	struct smc911x_priv *priv;
 	uint32_t val;
-	int i;
+	int i, is_32bit;
 
 	priv = xzalloc(sizeof(*priv));
+	is_32bit = dev->resource[0].flags & IORESOURCE_MEM_TYPE_MASK;
+	if (!is_32bit)
+		is_32bit = 1;
+	else
+		is_32bit = is_32bit == IORESOURCE_MEM_32BIT;
 	priv->base = dev_request_mem_region(dev, 0);
-	priv->reg_read = __smc911x_reg_read;
-	priv->reg_write = __smc911x_reg_write;
+
+	if (is_32bit) {
+		priv->reg_read = __smc911x_reg_readl;
+		priv->reg_write = __smc911x_reg_writel;
+	} else {
+		priv->reg_read = __smc911x_reg_readw;
+		priv->reg_write = __smc911x_reg_writew;
+	}
 
 	val = smc911x_reg_read(priv, BYTE_TEST);
 	if(val != 0x87654321) {
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
