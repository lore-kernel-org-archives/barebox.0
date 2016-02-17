Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x229.google.com ([2607:f8b0:400e:c00::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aVqwM-0003mo-I3
 for barebox@lists.infradead.org; Wed, 17 Feb 2016 01:30:03 +0000
Received: by mail-pf0-x229.google.com with SMTP id x65so1518731pfb.1
 for <barebox@lists.infradead.org>; Tue, 16 Feb 2016 17:29:42 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 16 Feb 2016 17:29:03 -0800
Message-Id: <1455672559-25061-3-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1455672559-25061-1-git-send-email-andrew.smirnov@gmail.com>
References: <1455672559-25061-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 02/18] base: driver.c: Coalesce error checking code
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Both dev_get_mem_region and dev_get_mem_region_by_name do exactly the
same thing with struct resource they obtain. Move that code into a
dedicated helper function.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/base/driver.c | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index a70fbb2..2ef7ca9 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -325,15 +325,18 @@ struct resource *dev_get_resource(struct device_d *dev, unsigned long type,
 	return ERR_PTR(-ENOENT);
 }
 
+static void *__start_or_err(const struct resource *res)
+{
+	return IS_ERR(res) ? ERR_CAST(res) : IOMEM(res->start);
+}
+
 void *dev_get_mem_region(struct device_d *dev, int num)
 {
 	struct resource *res;
 
 	res = dev_get_resource(dev, IORESOURCE_MEM, num);
-	if (IS_ERR(res))
-		return ERR_CAST(res);
 
-	return (void __force *)res->start;
+	return __start_or_err(res);
 }
 EXPORT_SYMBOL(dev_get_mem_region);
 
@@ -361,10 +364,8 @@ void *dev_get_mem_region_by_name(struct device_d *dev, const char *name)
 	struct resource *res;
 
 	res = dev_get_resource_by_name(dev, IORESOURCE_MEM, name);
-	if (IS_ERR(res))
-		return ERR_CAST(res);
 
-	return (void __force *)res->start;
+	return __start_or_err(res);
 }
 EXPORT_SYMBOL(dev_get_mem_region_by_name);
 
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
