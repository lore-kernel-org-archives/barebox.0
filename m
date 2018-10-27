Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gGDTB-0001Ad-QD
 for barebox@lists.infradead.org; Sat, 27 Oct 2018 01:34:04 +0000
Received: by mail-pl1-x643.google.com with SMTP id x6-v6so1265247pln.0
 for <barebox@lists.infradead.org>; Fri, 26 Oct 2018 18:32:47 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 26 Oct 2018 18:32:29 -0700
Message-Id: <20181027013230.24387-6-andrew.smirnov@gmail.com>
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
Subject: [PATCH 5/6] drivers: base: Share code for dev_request_mem_region*()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Both dev_request_mem_region() and dev_request_mem_region_err_null()
implement exactly the same functionality different only in error
reporting value. Change the code to make use of a common generic
function whose return type can be specified via an argument.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/base/driver.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index c687afd75..476f844be 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -407,27 +407,27 @@ struct resource *dev_request_mem_resource(struct device_d *dev, int num)
 	return request_iomem_region(dev_name(dev), res->start, res->end);
 }
 
-void __iomem *dev_request_mem_region_err_null(struct device_d *dev, int num)
+static void __iomem *__dev_request_mem_region(struct device_d *dev, int num,
+					      bool null_on_error)
 {
 	struct resource *res;
 
 	res = dev_request_mem_resource(dev, num);
 	if (IS_ERR(res))
-		return NULL;
+		return null_on_error ? NULL : ERR_CAST(res);
 
 	return IOMEM(res->start);
 }
+
+void __iomem *dev_request_mem_region_err_null(struct device_d *dev, int num)
+{
+	return __dev_request_mem_region(dev, num, true);
+}
 EXPORT_SYMBOL(dev_request_mem_region_err_null);
 
 void __iomem *dev_request_mem_region(struct device_d *dev, int num)
 {
-	struct resource *res;
-
-	res = dev_request_mem_resource(dev, num);
-	if (IS_ERR(res))
-		return ERR_CAST(res);
-
-	return IOMEM(res->start);
+	return __dev_request_mem_region(dev, num, false);
 }
 EXPORT_SYMBOL(dev_request_mem_region);
 
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
