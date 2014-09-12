Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XSNrr-00039u-Ek
 for barebox@lists.infradead.org; Fri, 12 Sep 2014 10:14:16 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 12 Sep 2014 12:13:42 +0200
Message-Id: <1410516830-9403-3-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 02/10] resource: Let dev_get_resource_by_name return an error
 pointer
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/base/driver.c       | 7 ++++---
 drivers/gpio/gpio-generic.c | 6 +++---
 2 files changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index 2cf3ee6..00b3046 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -32,6 +32,7 @@
 #include <fs.h>
 #include <of.h>
 #include <linux/list.h>
+#include <linux/err.h>
 #include <complete.h>
 #include <pinctrl.h>
 
@@ -286,7 +287,7 @@ struct resource *dev_get_resource_by_name(struct device_d *dev,
 			return res;
 	}
 
-	return NULL;
+	return ERR_PTR(-ENOENT);
 }
 
 void *dev_get_mem_region_by_name(struct device_d *dev, const char *name)
@@ -294,7 +295,7 @@ void *dev_get_mem_region_by_name(struct device_d *dev, const char *name)
 	struct resource *res;
 
 	res = dev_get_resource_by_name(dev, IORESOURCE_MEM, name);
-	if (!res)
+	if (IS_ERR(res))
 		return NULL;
 
 	return (void __force *)res->start;
@@ -306,7 +307,7 @@ void __iomem *dev_request_mem_region_by_name(struct device_d *dev, const char *n
 	struct resource *res;
 
 	res = dev_get_resource_by_name(dev, IORESOURCE_MEM, name);
-	if (!res)
+	if (IS_ERR(res))
 		return NULL;
 
 	res = request_iomem_region(dev_name(dev), res->start, res->end);
diff --git a/drivers/gpio/gpio-generic.c b/drivers/gpio/gpio-generic.c
index 5c46282..60c8b3a 100644
--- a/drivers/gpio/gpio-generic.c
+++ b/drivers/gpio/gpio-generic.c
@@ -311,7 +311,7 @@ static void __iomem *bgpio_map(struct device_d *dev, const char *name,
 	*err = 0;
 
 	r = dev_get_resource_by_name(dev, IORESOURCE_MEM, name);
-	if (!r)
+	if (IS_ERR(r))
 		return NULL;
 
 	if (resource_size(r) != sane_sz) {
@@ -343,8 +343,8 @@ static int bgpio_dev_probe(struct device_d *dev)
 	struct bgpio_pdata *pdata = dev->platform_data;
 
 	r = dev_get_resource_by_name(dev, IORESOURCE_MEM, "dat");
-	if (!r)
-		return -EINVAL;
+	if (IS_ERR(r))
+		return PTR_ERR(r);
 
 	sz = resource_size(r);
 
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
