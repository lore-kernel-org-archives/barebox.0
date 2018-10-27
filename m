Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gGDT9-00019a-3T
 for barebox@lists.infradead.org; Sat, 27 Oct 2018 01:33:41 +0000
Received: by mail-pl1-x641.google.com with SMTP id y11-v6so1259648plt.3
 for <barebox@lists.infradead.org>; Fri, 26 Oct 2018 18:32:44 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 26 Oct 2018 18:32:27 -0700
Message-Id: <20181027013230.24387-4-andrew.smirnov@gmail.com>
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
Subject: [PATCH 3/6] drivers: base: Share implementations for
 dev_get_resource*()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Both dev_get_resource() and dev_get_resource_by_name() implement the
same algorithm and differ only in matching criteria. Move that
algoritm into a separate generic function and implement those two
functions using it.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/base/driver.c | 39 +++++++++++++++++++++++----------------
 1 file changed, 23 insertions(+), 16 deletions(-)

diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index 22ca96d7e..4c1b6110a 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -325,14 +325,27 @@ int register_driver(struct driver_d *drv)
 }
 EXPORT_SYMBOL(register_driver);
 
-struct resource *dev_get_resource(struct device_d *dev, unsigned long type,
-				  int num)
+static struct resource *
+dev_get_resource_by_name_or_id(struct device_d *dev, unsigned long type,
+			       const char *name, int num)
 {
 	int i, n = 0;
 
 	for (i = 0; i < dev->num_resources; i++) {
 		struct resource *res = &dev->resource[i];
-		if (resource_type(res) == type) {
+		if (resource_type(res) != type)
+			continue;
+
+		if (name) {
+			/*
+			 * If name is proveded we search using it
+			 */
+			if (res->name && !strcmp(name, res->name))
+				return res;
+		} else {
+			/*
+			 * Otherwise we match against provided id
+			 */
 			if (n == num)
 				return res;
 			n++;
@@ -342,6 +355,12 @@ struct resource *dev_get_resource(struct device_d *dev, unsigned long type,
 	return ERR_PTR(-ENOENT);
 }
 
+struct resource *dev_get_resource(struct device_d *dev, unsigned long type,
+				  int num)
+{
+	return dev_get_resource_by_name_or_id(dev, type, NULL, num);
+}
+
 void *dev_get_mem_region(struct device_d *dev, int num)
 {
 	struct resource *res;
@@ -358,19 +377,7 @@ struct resource *dev_get_resource_by_name(struct device_d *dev,
 					  unsigned long type,
 					  const char *name)
 {
-	int i;
-
-	for (i = 0; i < dev->num_resources; i++) {
-		struct resource *res = &dev->resource[i];
-		if (resource_type(res) != type)
-			continue;
-		if (!res->name)
-			continue;
-		if (!strcmp(name, res->name))
-			return res;
-	}
-
-	return ERR_PTR(-ENOENT);
+	return dev_get_resource_by_name_or_id(dev, type, name, -1);
 }
 
 void __iomem *dev_request_mem_region_by_name(struct device_d *dev, const char *name)
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
