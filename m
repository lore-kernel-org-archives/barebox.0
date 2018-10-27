Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gGDTE-00019y-5D
 for barebox@lists.infradead.org; Sat, 27 Oct 2018 01:34:05 +0000
Received: by mail-pl1-x642.google.com with SMTP id y11-v6so1259661plt.3
 for <barebox@lists.infradead.org>; Fri, 26 Oct 2018 18:32:45 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 26 Oct 2018 18:32:28 -0700
Message-Id: <20181027013230.24387-5-andrew.smirnov@gmail.com>
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
Subject: [PATCH 4/6] drivers: base: Simplify dev_request_mem_region_err_null()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Simplify dev_request_mem_region_err_null() by making use of
dev_request_mem_resource() to implement it.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/base/driver.c | 20 ++++++++------------
 1 file changed, 8 insertions(+), 12 deletions(-)

diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index 4c1b6110a..c687afd75 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -396,32 +396,28 @@ void __iomem *dev_request_mem_region_by_name(struct device_d *dev, const char *n
 }
 EXPORT_SYMBOL(dev_request_mem_region_by_name);
 
-void __iomem *dev_request_mem_region_err_null(struct device_d *dev, int num)
+struct resource *dev_request_mem_resource(struct device_d *dev, int num)
 {
 	struct resource *res;
 
 	res = dev_get_resource(dev, IORESOURCE_MEM, num);
 	if (IS_ERR(res))
-		return NULL;
-
-	res = request_iomem_region(dev_name(dev), res->start, res->end);
-	if (IS_ERR(res))
-		return NULL;
+		return ERR_CAST(res);
 
-	return IOMEM(res->start);
+	return request_iomem_region(dev_name(dev), res->start, res->end);
 }
-EXPORT_SYMBOL(dev_request_mem_region_err_null);
 
-struct resource *dev_request_mem_resource(struct device_d *dev, int num)
+void __iomem *dev_request_mem_region_err_null(struct device_d *dev, int num)
 {
 	struct resource *res;
 
-	res = dev_get_resource(dev, IORESOURCE_MEM, num);
+	res = dev_request_mem_resource(dev, num);
 	if (IS_ERR(res))
-		return ERR_CAST(res);
+		return NULL;
 
-	return request_iomem_region(dev_name(dev), res->start, res->end);
+	return IOMEM(res->start);
 }
+EXPORT_SYMBOL(dev_request_mem_region_err_null);
 
 void __iomem *dev_request_mem_region(struct device_d *dev, int num)
 {
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
