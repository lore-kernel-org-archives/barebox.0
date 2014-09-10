Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22f.google.com ([2a00:1450:4010:c04::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XRcjG-0001ux-GM
 for barebox@lists.infradead.org; Wed, 10 Sep 2014 07:54:15 +0000
Received: by mail-lb0-f175.google.com with SMTP id v6so4241126lbi.20
 for <barebox@lists.infradead.org>; Wed, 10 Sep 2014 00:53:52 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 10 Sep 2014 11:53:48 +0400
Message-Id: <1410335628-13200-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC] net: dm9k: add device tree support
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/net/dm9k.c | 46 +++++++++++++++++++++++++++++++++++++++-------
 1 file changed, 39 insertions(+), 7 deletions(-)

diff --git a/drivers/net/dm9k.c b/drivers/net/dm9k.c
index e525a84..9e7b415 100644
--- a/drivers/net/dm9k.c
+++ b/drivers/net/dm9k.c
@@ -707,16 +707,30 @@ static int dm9k_init_dev(struct eth_device *edev)
 	return 0;
 }
 
+static struct dm9000_platform_data *dm9000_parse_dt(struct device_d *dev)
+{
+	struct dm9000_platform_data *pdata;
+	struct device_node *np = dev->device_node;
+
+	if (!IS_ENABLED(CONFIG_OF) || !np)
+		return NULL;
+
+	pdata = xzalloc(sizeof(*pdata));
+
+	pdata->srom = 0;
+
+	return pdata;
+}
+
 static int dm9k_probe(struct device_d *dev)
 {
 	unsigned io_mode;
 	struct eth_device *edev;
 	struct dm9k *priv;
-	struct dm9000_platform_data *pdata;
+	struct dm9000_platform_data *pdata = dev->platform_data;
 
-	if (!dev->platform_data) {
-		dev_err(dev, "No platform_data\n");
-		return -ENODEV;
+	if (!pdata) {
+		pdata = dm9000_parse_dt(dev);
 	}
 
 	if (dev->num_resources < 2) {
@@ -727,11 +741,23 @@ static int dm9k_probe(struct device_d *dev)
 	edev = xzalloc(sizeof(struct eth_device) + sizeof(struct dm9k));
 	edev->priv = (struct dm9k *)(edev + 1);
 
-	pdata = dev->platform_data;
-
 	priv = edev->priv;
 
-	priv->buswidth = dev->resource[0].flags & IORESOURCE_MEM_TYPE_MASK;
+	switch (resource_size(&dev->resource[0])) {
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
+		priv->buswidth = 0;
+	}
+
 	priv->iodata = dev_request_mem_region(dev, 1);
 	if (!priv->iodata)
 		return -EBUSY;
@@ -791,8 +817,14 @@ static int dm9k_probe(struct device_d *dev)
 	return 0;
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
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
