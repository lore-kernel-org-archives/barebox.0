Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RXULI-0006Un-RK
 for barebox@lists.infradead.org; Mon, 05 Dec 2011 08:56:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  5 Dec 2011 09:56:01 +0100
Message-Id: <1323075361-27455-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1323075361-27455-1-git-send-email-s.hauer@pengutronix.de>
References: <1323075361-27455-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/5] implement resource management for platform devices
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/base/driver.c |   29 +++++++++++++++++++++++++++--
 include/driver.h      |    6 +-----
 2 files changed, 28 insertions(+), 7 deletions(-)

diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index 0b80103..0132e7d 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -214,7 +214,7 @@ int register_driver(struct driver_d *drv)
 }
 EXPORT_SYMBOL(register_driver);
 
-void __iomem *dev_get_mem_region(struct device_d *dev, int num)
+static struct resource *dev_get_resource(struct device_d *dev, int num)
 {
 	int i, n = 0;
 
@@ -222,15 +222,40 @@ void __iomem *dev_get_mem_region(struct device_d *dev, int num)
 		struct resource *res = &dev->resource[i];
 		if (resource_type(res) == IORESOURCE_MEM) {
 			if (n == num)
-				return (void __force __iomem *)res->start;
+				return res;
 			n++;
 		}
 	}
 
 	return NULL;
 }
+
+void __iomem *dev_get_mem_region(struct device_d *dev, int num)
+{
+	struct resource *res;
+
+	res = dev_get_resource(dev, num);
+	if (!res)
+		return res;
+
+	return (void __force __iomem *)res->start;
+}
 EXPORT_SYMBOL(dev_get_mem_region);
 
+void __iomem *dev_request_mem_region(struct device_d *dev, int num)
+{
+	struct resource *res;
+
+	res = dev_get_resource(dev, num);
+	if (!res)
+		return NULL;
+
+	res = request_iomem_region(dev_name(dev), res->start, res->size);
+
+	return (void __force __iomem *)res->start;
+}
+EXPORT_SYMBOL(dev_request_mem_region);
+
 int dev_protect(struct device_d *dev, size_t count, unsigned long offset, int prot)
 {
 	printf("%s: currently broken\n", __func__);
diff --git a/include/driver.h b/include/driver.h
index fe9d37a..bbe7248 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -190,11 +190,7 @@ void __iomem *dev_get_mem_region(struct device_d *dev, int num);
 /*
  * exlusively request register base 'num' for a device
  */
-static inline void __iomem *dev_request_mem_region(struct device_d *dev, int num)
-{
-	/* no resource tracking yet */
-	return dev_get_mem_region(dev, num);
-}
+void __iomem *dev_request_mem_region(struct device_d *dev, int num);
 
 /*
  * register a generic device
-- 
1.7.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
