Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aWMAR-0001N2-AB
 for barebox@lists.infradead.org; Thu, 18 Feb 2016 10:50:41 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 18 Feb 2016 11:50:16 +0100
Message-Id: <1455792617-13671-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1455792617-13671-1-git-send-email-s.hauer@pengutronix.de>
References: <1455792617-13671-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/3] driver: Introduce dev_request_mem_resource
To: Barebox List <barebox@lists.infradead.org>

dev_request_mem_region returns a void * which shall be checked with
IS_ERR(), but in some cases the valid pointer returned clashes with
error values. This is especially the case on some Atmel SoCs.

This introduces dev_request_mem_resource which returns a struct resource
instead which in any case can be checked with IS_ERR(). It's the drivers
responsibility then to get the IOMEM pointer from the resource.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/base/driver.c | 11 +++++++++--
 include/driver.h      |  6 ++++++
 2 files changed, 15 insertions(+), 2 deletions(-)

diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index c529296..5867fe4 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -404,7 +404,7 @@ void __iomem *dev_request_mem_region_err_null(struct device_d *dev, int num)
 }
 EXPORT_SYMBOL(dev_request_mem_region_err_null);
 
-void __iomem *dev_request_mem_region(struct device_d *dev, int num)
+struct resource *dev_request_mem_resource(struct device_d *dev, int num)
 {
 	struct resource *res;
 
@@ -412,7 +412,14 @@ void __iomem *dev_request_mem_region(struct device_d *dev, int num)
 	if (IS_ERR(res))
 		return ERR_CAST(res);
 
-	res = request_iomem_region(dev_name(dev), res->start, res->end);
+	return request_iomem_region(dev_name(dev), res->start, res->end);
+}
+
+void __iomem *dev_request_mem_region(struct device_d *dev, int num)
+{
+	struct resource *res;
+
+	res = dev_request_mem_resource(dev, num);
 	if (IS_ERR(res))
 		return ERR_CAST(res);
 
diff --git a/include/driver.h b/include/driver.h
index 31c6734..5e2b88f 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -203,10 +203,16 @@ void *dev_get_mem_region(struct device_d *dev, int num);
 
 /*
  * exlusively request register base 'num' for a device
+ * deprecated, use dev_request_mem_resource instead
  */
 void __iomem *dev_request_mem_region(struct device_d *dev, int num);
 
 /*
+ * exlusively request resource 'num' for a device
+ */
+struct resource *dev_request_mem_resource(struct device_d *dev, int num);
+
+/*
  * exlusively request register base 'num' for a device
  * will return NULL on error
  * only used on platform like at91 where the Ressource address collision with
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
