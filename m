Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo4.mail-out.ovh.net ([178.33.253.54]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T1KyV-0004lk-KO
 for barebox@lists.infradead.org; Tue, 14 Aug 2012 17:32:16 +0000
Received: from mail628.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id BF92B105826C
 for <barebox@lists.infradead.org>; Tue, 14 Aug 2012 19:36:54 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 14 Aug 2012 19:32:16 +0200
Message-Id: <1344965540-31534-3-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/7] smc911x: add 16bit bus width support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/net/smc911x.c |   20 ++++++++++++++++++--
 1 file changed, 18 insertions(+), 2 deletions(-)

diff --git a/drivers/net/smc911x.c b/drivers/net/smc911x.c
index 2583235..c74ed52 100644
--- a/drivers/net/smc911x.c
+++ b/drivers/net/smc911x.c
@@ -47,6 +47,8 @@ struct smc911x_priv {
 	struct mii_device miidev;
 	void __iomem *base;
 
+	u32 width;
+
 	u32 (*reg_read)(struct smc911x_priv *priv, u32 reg);
 	void (*reg_write)(struct smc911x_priv *priv, u32 reg, u32 val);
 };
@@ -78,7 +80,11 @@ static inline u32 smc911x_reg_read(struct smc911x_priv *priv, u32 reg)
 
 static inline u32 __smc911x_reg_read(struct smc911x_priv *priv, u32 reg)
 {
-	return readl(priv->base + reg);
+	if (priv->width)
+		return readl(priv->base + reg);
+	else
+		return ((readw(priv->base + reg) & 0xFFFF) |
+			((readw(priv->base + reg + 2) & 0xFFFF) << 16));
 }
 
 static inline void smc911x_reg_write(struct smc911x_priv *priv, u32 reg,
@@ -90,7 +96,12 @@ static inline void smc911x_reg_write(struct smc911x_priv *priv, u32 reg,
 static inline void __smc911x_reg_write(struct smc911x_priv *priv, u32 reg,
 					u32 val)
 {
-	writel(val, priv->base + reg);
+	if (priv->width) {
+		writel(val, priv->base + reg);
+	} else {
+		writew(val & 0xFFFF, priv->base + reg);
+		writew((val >> 16) & 0xFFFF, priv->base + reg + 2);
+	}
 }
 
 static int smc911x_mac_wait_busy(struct smc911x_priv *priv)
@@ -393,6 +404,11 @@ static int smc911x_probe(struct device_d *dev)
 	int i;
 
 	priv = xzalloc(sizeof(*priv));
+	priv->width = dev->resource[0].flags & IORESOURCE_MEM_TYPE_MASK;
+	if (!priv->width)
+		priv->width = 1;
+	else
+		priv->width = priv->width == IORESOURCE_MEM_32BIT;
 	priv->base = dev_request_mem_region(dev, 0);
 	priv->reg_read = __smc911x_reg_read;
 	priv->reg_write = __smc911x_reg_write;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
