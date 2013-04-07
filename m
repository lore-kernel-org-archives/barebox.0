Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UOq9T-0001MF-SA
 for barebox@lists.infradead.org; Sun, 07 Apr 2013 14:01:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun,  7 Apr 2013 16:00:39 +0200
Message-Id: <1365343255-26497-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1365343255-26497-1-git-send-email-s.hauer@pengutronix.de>
References: <1365343255-26497-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/21] net: ksz8864: Use dev_add_param_bool for enable
 parameter
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/ksz8864rmn.c | 30 +++++++++++-------------------
 1 file changed, 11 insertions(+), 19 deletions(-)

diff --git a/drivers/net/ksz8864rmn.c b/drivers/net/ksz8864rmn.c
index af3c124..ec3e9f7 100644
--- a/drivers/net/ksz8864rmn.c
+++ b/drivers/net/ksz8864rmn.c
@@ -49,6 +49,7 @@
 struct micrel_switch_priv {
 	struct cdev             cdev;
 	struct spi_device       *spi;
+	unsigned int		p_enable;
 };
 
 static int micrel_switch_read_reg(struct spi_device *spi, uint8_t reg)
@@ -78,27 +79,15 @@ static void micrel_switch_write_reg(struct spi_device *spi, uint8_t reg, uint8_t
 	spi_write_then_read(spi, tx, 3, NULL, 0);
 }
 
-static int micrel_switch_enable_set(struct device_d *dev, struct param_d *param,
-		const char *val)
+static int micrel_switch_enable_set(struct param_d *param, void *_priv)
 {
-	struct spi_device *spi = (struct spi_device *)dev->type_data;
-	int enable;
-	char *new;
+	struct micrel_switch_priv *priv = _priv;
+	struct spi_device *spi = priv->spi;
 
-	if (!val)
-		return dev_param_set_generic(dev, param, NULL);
-
-	enable = simple_strtoul(val, NULL, 0);
-
-	if (enable) {
+	if (priv->p_enable)
 		micrel_switch_write_reg(spi, REG_ID1, 1);
-		new = "1";
-	} else {
+	else
 		micrel_switch_write_reg(spi, REG_ID1, 0);
-		new = "0";
-	}
-
-	dev_param_set_generic(dev, param, new);
 
 	return 0;
 }
@@ -172,8 +161,11 @@ static int micrel_switch_probe(struct device_d *dev)
 	priv->cdev.dev = dev;
 	devfs_create(&priv->cdev);
 
-	dev_add_param(dev, "enable", micrel_switch_enable_set, NULL, 0);
-	dev_set_param(dev, "enable", "1");
+	dev_add_param_bool(dev, "enable", micrel_switch_enable_set,
+			NULL, &priv->p_enable, priv);
+
+	priv->p_enable = 1;
+	micrel_switch_write_reg(priv->spi, REG_ID1, 1);
 
 	return 0;
 }
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
