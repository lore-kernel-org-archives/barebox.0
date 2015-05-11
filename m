Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22c.google.com ([2a00:1450:4010:c03::22c])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Yrung-0004i1-KK
 for barebox@lists.infradead.org; Mon, 11 May 2015 20:59:46 +0000
Received: by labbd9 with SMTP id bd9so102420075lab.2
 for <barebox@lists.infradead.org>; Mon, 11 May 2015 13:59:22 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 12 May 2015 00:00:50 +0300
Message-Id: <1431378053-18914-3-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1431378053-18914-1-git-send-email-antonynpavlov@gmail.com>
References: <1431378053-18914-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v2 2/5] net: dm9k: add device tree support
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/net/dm9k.c | 103 ++++++++++++++++++++++++++++++++++++++++++++---------
 1 file changed, 87 insertions(+), 16 deletions(-)

diff --git a/drivers/net/dm9k.c b/drivers/net/dm9k.c
index 5798e16..4251a91 100644
--- a/drivers/net/dm9k.c
+++ b/drivers/net/dm9k.c
@@ -708,17 +708,66 @@ static int dm9k_init_dev(struct eth_device *edev)
 	return 0;
 }
 
+static int dm9000_setup_buswidth(struct device_d *dev, struct dm9k *priv, uint32_t width)
+{
+	switch (width) {
+	case 1:
+		priv->buswidth = IORESOURCE_MEM_8BIT;
+		break;
+	case 2:
+		priv->buswidth = IORESOURCE_MEM_16BIT;
+		break;
+	case 4:
+		priv->buswidth = IORESOURCE_MEM_32BIT;
+		break;
+	default:
+		dev_err(dev, "Wrong io resource size\n");
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+static int dm9000_parse_dt(struct device_d *dev, struct dm9k *priv)
+{
+	struct device_node *np = dev->device_node;
+	uint32_t prop;
+
+	if (!IS_ENABLED(CONFIG_OFDEVICE) || !np)
+		return -ENODEV;
+
+	if (of_find_property(np, "davicom,no-eeprom", NULL)) {
+		priv->srom = 0;
+	} else {
+		priv->srom = 1;
+	}
+
+	if (of_property_read_u32(np, "reg-io-width", &prop)) {
+		/* Use 8-bit registers by default */
+		prop = 1;
+	}
+
+	return dm9000_setup_buswidth(dev, priv, prop);
+}
+
+static int dm9000_parse_pdata(struct device_d *dev, struct dm9k *priv)
+{
+	struct dm9000_platform_data *pdata = dev->platform_data;
+	uint32_t width;
+
+	priv->srom = pdata->srom;
+
+	width = dev->resource[0].flags & IORESOURCE_MEM_TYPE_MASK;
+
+	return dm9000_setup_buswidth(dev, priv, width);
+}
+
 static int dm9k_probe(struct device_d *dev)
 {
 	unsigned io_mode;
 	struct eth_device *edev;
 	struct dm9k *priv;
-	struct dm9000_platform_data *pdata;
-
-	if (!dev->platform_data) {
-		dev_err(dev, "No platform_data\n");
-		return -ENODEV;
-	}
+	int ret;
 
 	if (dev->num_resources < 2) {
 		dev_err(dev, "Need 2 resources base and data");
@@ -727,19 +776,28 @@ static int dm9k_probe(struct device_d *dev)
 
 	edev = xzalloc(sizeof(struct eth_device) + sizeof(struct dm9k));
 	edev->priv = (struct dm9k *)(edev + 1);
+	priv = edev->priv;
 
-	pdata = dev->platform_data;
+	if (dev->platform_data) {
+		ret = dm9000_parse_pdata(dev, priv);
+	} else {
+		ret = dm9000_parse_dt(dev, priv);
+	}
 
-	priv = edev->priv;
+	if (ret)
+		goto err;
 
-	priv->buswidth = dev->resource[0].flags & IORESOURCE_MEM_TYPE_MASK;
 	priv->iodata = dev_request_mem_region(dev, 1);
-	if (!priv->iodata)
-		return -EBUSY;
+	if (!priv->iodata) {
+		ret = -EBUSY;
+		goto err;
+	}
+
 	priv->iobase = dev_request_mem_region(dev, 0);
-	if (!priv->iobase)
-		return -EBUSY;
-	priv->srom = pdata->srom;
+	if (!priv->iobase) {
+		ret = -EBUSY;
+		goto err;
+	}
 
 	edev->init = dm9k_init_dev;
 	edev->open = dm9k_eth_open;
@@ -757,8 +815,10 @@ static int dm9k_probe(struct device_d *dev)
 
 	/* RESET device */
 	dm9k_reset(priv);
-	if(dm9k_check_id(priv))
-		return -ENODEV;
+	if (dm9k_check_id(priv)) {
+		ret = -ENODEV;
+		goto err;
+	}
 
 	io_mode = dm9k_ior(priv, DM9K_ISR) >> 6;
 	switch (io_mode) {
@@ -790,10 +850,21 @@ static int dm9k_probe(struct device_d *dev)
 	eth_register(edev);
 
 	return 0;
+
+err:
+	free(edev);
+
+	return ret;
 }
 
+static struct of_device_id dm9000_of_matches[] = {
+	{ .compatible = "davicom,dm9000", },
+	{ /* sentinel */ }
+};
+
 static struct driver_d dm9k_driver = {
 	.name  = "dm9000",
 	.probe = dm9k_probe,
+	.of_compatible = DRV_OF_COMPAT(dm9000_of_matches),
 };
 device_platform_driver(dm9k_driver);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
