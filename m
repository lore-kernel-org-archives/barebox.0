Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ukb3K-000259-2A
 for barebox@lists.infradead.org; Thu, 06 Jun 2013 14:20:34 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  6 Jun 2013 16:20:09 +0200
Message-Id: <1370528409-3439-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] mfd: stmpe: Add devicetree probe support
To: barebox@lists.infradead.org

Our driver matches stmpe-i2c and stmpe-spi. It seems the device
we really support is the stmpe1601, so use this one for matching
the devicetree compatible.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mfd/stmpe-i2c.c | 32 ++++++++++++++++++++++++++++++--
 1 file changed, 30 insertions(+), 2 deletions(-)

diff --git a/drivers/mfd/stmpe-i2c.c b/drivers/mfd/stmpe-i2c.c
index d87620e..d785430 100644
--- a/drivers/mfd/stmpe-i2c.c
+++ b/drivers/mfd/stmpe-i2c.c
@@ -106,6 +106,25 @@ static struct file_operations stmpe_fops = {
 	.write	= stmpe_write,
 };
 
+static struct stmpe_platform_data *stmpe_of_probe(struct device_d *dev)
+{
+	struct stmpe_platform_data *pdata;
+	struct device_node *node;
+
+	if (!IS_ENABLED(CONFIG_OFDEVICE) || !dev->device_node)
+		return NULL;
+
+	pdata = xzalloc(sizeof(*pdata));
+
+	device_node_for_nach_child(dev->device_node, node) {
+		if (!strcmp(node->name, "stmpe_gpio")) {
+			pdata->blocks |= STMPE_BLOCK_GPIO;
+		}
+	}
+
+	return pdata;
+}
+
 static int stmpe_probe(struct device_d *dev)
 {
 	struct stmpe_platform_data *pdata = dev->platform_data;
@@ -113,8 +132,11 @@ static int stmpe_probe(struct device_d *dev)
 	struct stmpe_client_info *i2c_ci;
 
 	if (!pdata) {
-		dev_dbg(dev, "no platform data\n");
-		return -ENODEV;
+		pdata = stmpe_of_probe(dev);
+		if (!pdata) {
+			dev_dbg(dev, "no platform data\n");
+			return -ENODEV;
+		}
 	}
 
 	stmpe_dev = xzalloc(sizeof(struct stmpe));
@@ -140,9 +162,15 @@ static int stmpe_probe(struct device_d *dev)
 	return 0;
 }
 
+static struct platform_device_id stmpe_i2c_id[] = {
+	{ "stmpe1601", 0 },
+	{ }
+};
+
 static struct driver_d stmpe_driver = {
 	.name  = DRIVERNAME,
 	.probe = stmpe_probe,
+	.id_table = stmpe_i2c_id,
 };
 
 static int stmpe_init(void)
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
