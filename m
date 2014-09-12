Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XSNrr-0003A1-Em
 for barebox@lists.infradead.org; Fri, 12 Sep 2014 10:14:17 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 12 Sep 2014 12:13:46 +0200
Message-Id: <1410516830-9403-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1410516830-9403-1-git-send-email-s.hauer@pengutronix.de>
References: <1410516830-9403-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/10] resource: Let dev_get_resource return an error pointer
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/ata/intf_platform_ide.c | 6 +++---
 drivers/base/driver.c           | 6 +++---
 drivers/mfd/syscon.c            | 4 ++--
 drivers/misc/sram.c             | 2 ++
 drivers/serial/serial_ns16550.c | 8 ++++----
 5 files changed, 14 insertions(+), 12 deletions(-)

diff --git a/drivers/ata/intf_platform_ide.c b/drivers/ata/intf_platform_ide.c
index db4c356..851f8f5 100644
--- a/drivers/ata/intf_platform_ide.c
+++ b/drivers/ata/intf_platform_ide.c
@@ -97,8 +97,8 @@ static int platform_ide_probe(struct device_d *dev)
 		alt_base = dev_request_mem_region(dev, 1);
 	} else {
 		reg = dev_get_resource(dev, IORESOURCE_IO, 0);
-		if (!reg)
-			return -ENODEV;
+		if (IS_ERR(reg))
+			return PTR_ERR(reg);
 
 		reg = request_ioport_region(dev_name(dev), reg->start,
 					    reg->end);
@@ -108,7 +108,7 @@ static int platform_ide_probe(struct device_d *dev)
 		reg_base = (void __force __iomem *) reg->start;
 
 		alt = dev_get_resource(dev, IORESOURCE_IO, 1);
-		if (alt) {
+		if (!IS_ERR(alt)) {
 			alt = request_ioport_region(dev_name(dev),
 						    alt->start,
 						    alt->end);
diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index d90da42..524ed1c 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -256,7 +256,7 @@ struct resource *dev_get_resource(struct device_d *dev, unsigned long type,
 		}
 	}
 
-	return NULL;
+	return ERR_PTR(-ENOENT);
 }
 
 void *dev_get_mem_region(struct device_d *dev, int num)
@@ -264,7 +264,7 @@ void *dev_get_mem_region(struct device_d *dev, int num)
 	struct resource *res;
 
 	res = dev_get_resource(dev, IORESOURCE_MEM, num);
-	if (!res)
+	if (IS_ERR(res))
 		return NULL;
 
 	return (void __force *)res->start;
@@ -323,7 +323,7 @@ void __iomem *dev_request_mem_region(struct device_d *dev, int num)
 	struct resource *res;
 
 	res = dev_get_resource(dev, IORESOURCE_MEM, num);
-	if (!res)
+	if (IS_ERR(res))
 		return NULL;
 
 	res = request_iomem_region(dev_name(dev), res->start, res->end);
diff --git a/drivers/mfd/syscon.c b/drivers/mfd/syscon.c
index 231f4fe..9589a03 100644
--- a/drivers/mfd/syscon.c
+++ b/drivers/mfd/syscon.c
@@ -71,9 +71,9 @@ static int syscon_probe(struct device_d *dev)
 		return -ENOMEM;
 
 	res = dev_get_resource(dev, IORESOURCE_MEM, 0);
-	if (!res) {
+	if (IS_ERR(res)) {
 		free(syscon);
-		return -ENOENT;
+		return PTR_ERR(res);
 	}
 
 	res = request_iomem_region(dev_name(dev), res->start, res->end);
diff --git a/drivers/misc/sram.c b/drivers/misc/sram.c
index 0466a15..c89fe87 100644
--- a/drivers/misc/sram.c
+++ b/drivers/misc/sram.c
@@ -48,6 +48,8 @@ static int sram_probe(struct device_d *dev)
 			cdev_find_free_index("sram"));
 
 	res = dev_get_resource(dev, IORESOURCE_MEM, 0);
+	if (IS_ERR(res))
+		return PTR_ERR(res);
 
 	sram->cdev.size = (unsigned long)resource_size(res);
 	sram->cdev.ops = &memops;
diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
index 09e6a6a..dd0986c 100644
--- a/drivers/serial/serial_ns16550.c
+++ b/drivers/serial/serial_ns16550.c
@@ -317,8 +317,8 @@ static int ns16550_init_iomem(struct device_d *dev, struct ns16550_priv *priv)
 	int width;
 
 	res = dev_get_resource(dev, IORESOURCE_MEM, 0);
-	if (!res)
-		return -ENODEV;
+	if (IS_ERR(res))
+		return PTR_ERR(res);
 
 	priv->mmiobase = dev_request_mem_region(dev, 0);
 
@@ -347,8 +347,8 @@ static int ns16550_init_ioport(struct device_d *dev, struct ns16550_priv *priv)
 	int width;
 
 	res = dev_get_resource(dev, IORESOURCE_IO, 0);
-	if (!res)
-		return -ENODEV;
+	if (IS_ERR(res))
+		return PTR_ERR(res);
 
 	res = request_ioport_region(dev_name(dev), res->start, res->end);
 	if (!res)
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
