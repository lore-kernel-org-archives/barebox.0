Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gGDTG-0001B8-Ij
 for barebox@lists.infradead.org; Sat, 27 Oct 2018 01:34:17 +0000
Received: by mail-pg1-x543.google.com with SMTP id g12-v6so1306625pgs.1
 for <barebox@lists.infradead.org>; Fri, 26 Oct 2018 18:32:48 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 26 Oct 2018 18:32:30 -0700
Message-Id: <20181027013230.24387-7-andrew.smirnov@gmail.com>
In-Reply-To: <20181027013230.24387-1-andrew.smirnov@gmail.com>
References: <20181027013230.24387-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 6/6] drivers: base: Share code for getting and then requesting
 a region
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/base/driver.c | 29 +++++++++++++++++------------
 1 file changed, 17 insertions(+), 12 deletions(-)

diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index 476f844be..687e36e1b 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -355,6 +355,19 @@ dev_get_resource_by_name_or_id(struct device_d *dev, unsigned long type,
 	return ERR_PTR(-ENOENT);
 }
 
+static struct resource *
+dev_request_resource_by_name_or_id(struct device_d *dev, unsigned long type,
+				   const char *name, int num)
+{
+	struct resource *res;
+
+	res = dev_get_resource_by_name_or_id(dev, type, name, num);
+	if (IS_ERR(res))
+		return ERR_CAST(res);
+
+	return request_iomem_region(dev_name(dev), res->start, res->end);
+}
+
 struct resource *dev_get_resource(struct device_d *dev, unsigned long type,
 				  int num)
 {
@@ -384,11 +397,8 @@ void __iomem *dev_request_mem_region_by_name(struct device_d *dev, const char *n
 {
 	struct resource *res;
 
-	res = dev_get_resource_by_name(dev, IORESOURCE_MEM, name);
-	if (IS_ERR(res))
-		return ERR_CAST(res);
-
-	res = request_iomem_region(dev_name(dev), res->start, res->end);
+	res = dev_request_resource_by_name_or_id(dev, IORESOURCE_MEM,
+						 name, -1);
 	if (IS_ERR(res))
 		return ERR_CAST(res);
 
@@ -398,13 +408,8 @@ EXPORT_SYMBOL(dev_request_mem_region_by_name);
 
 struct resource *dev_request_mem_resource(struct device_d *dev, int num)
 {
-	struct resource *res;
-
-	res = dev_get_resource(dev, IORESOURCE_MEM, num);
-	if (IS_ERR(res))
-		return ERR_CAST(res);
-
-	return request_iomem_region(dev_name(dev), res->start, res->end);
+	return dev_request_resource_by_name_or_id(dev, IORESOURCE_MEM,
+						  NULL, num);
 }
 
 static void __iomem *__dev_request_mem_region(struct device_d *dev, int num,
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
