Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gGDTB-00018y-Pv
 for barebox@lists.infradead.org; Sat, 27 Oct 2018 01:33:53 +0000
Received: by mail-pl1-x643.google.com with SMTP id bh10-v6so1254043plb.4
 for <barebox@lists.infradead.org>; Fri, 26 Oct 2018 18:32:43 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 26 Oct 2018 18:32:26 -0700
Message-Id: <20181027013230.24387-3-andrew.smirnov@gmail.com>
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
Subject: [PATCH 2/6] drivers: base: Drop dev_get_mem_region_by_name()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Drop dev_get_mem_region_by_name() which doesn't seem to have any users
in the codebase.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/base/driver.c | 12 ------------
 include/driver.h      |  4 ----
 2 files changed, 16 deletions(-)

diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index c74fee99f..22ca96d7e 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -373,18 +373,6 @@ struct resource *dev_get_resource_by_name(struct device_d *dev,
 	return ERR_PTR(-ENOENT);
 }
 
-void *dev_get_mem_region_by_name(struct device_d *dev, const char *name)
-{
-	struct resource *res;
-
-	res = dev_get_resource_by_name(dev, IORESOURCE_MEM, name);
-	if (IS_ERR(res))
-		return ERR_CAST(res);
-
-	return (void __force *)res->start;
-}
-EXPORT_SYMBOL(dev_get_mem_region_by_name);
-
 void __iomem *dev_request_mem_region_by_name(struct device_d *dev, const char *name)
 {
 	struct resource *res;
diff --git a/include/driver.h b/include/driver.h
index db844aed3..7da184d3a 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -201,10 +201,6 @@ struct resource *dev_get_resource(struct device_d *dev, unsigned long type,
 struct resource *dev_get_resource_by_name(struct device_d *dev,
 					  unsigned long type,
 					  const char *name);
-/*
- * get register base 'name' for a device
- */
-void *dev_get_mem_region_by_name(struct device_d *dev, const char *name);
 
 /*
  * exlusively request register base 'name' for a device
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
