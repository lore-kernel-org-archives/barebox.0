Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kvTGv-0003BN-UY
 for barebox@lists.infradead.org; Fri, 01 Jan 2021 22:51:51 +0000
Received: from geraet.fritz.box (unknown [87.123.97.237])
 (Authenticated sender: ahmad@a3f.at)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 99F3AC0002
 for <barebox@lists.infradead.org>; Fri,  1 Jan 2021 22:51:44 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Fri,  1 Jan 2021 23:51:39 +0100
Message-Id: <20210101225139.2165289-1-ahmad@a3f.at>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] driver: provide dev_request_mem_resource_by_name() helper
To: barebox@lists.infradead.org

There are both dev_request_mem_resource() and dev_request_mem_region(),
which return the struct resource and a IOMEM(.start) respectively.

There is only dev_request_mem_region_by_name(), but
no dev_request_mem_resource_by_name(), so add the latter for symmetry.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/base/driver.c | 12 ++++++++++--
 include/driver.h      |  5 +++++
 2 files changed, 15 insertions(+), 2 deletions(-)

diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index 3205bbc3c33b..6763bbc6f512 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -372,7 +372,7 @@ struct resource *dev_get_resource_by_name(struct device_d *dev,
 	return ERR_PTR(-ENOENT);
 }
 
-void __iomem *dev_request_mem_region_by_name(struct device_d *dev, const char *name)
+struct resource *dev_request_mem_resource_by_name(struct device_d *dev, const char *name)
 {
 	struct resource *res;
 
@@ -380,7 +380,15 @@ void __iomem *dev_request_mem_region_by_name(struct device_d *dev, const char *n
 	if (IS_ERR(res))
 		return ERR_CAST(res);
 
-	res = request_iomem_region(dev_name(dev), res->start, res->end);
+	return request_iomem_region(dev_name(dev), res->start, res->end);
+}
+EXPORT_SYMBOL(dev_request_mem_resource_by_name);
+
+void __iomem *dev_request_mem_region_by_name(struct device_d *dev, const char *name)
+{
+	struct resource *res;
+
+	res = dev_request_mem_resource_by_name(dev, name);
 	if (IS_ERR(res))
 		return ERR_CAST(res);
 
diff --git a/include/driver.h b/include/driver.h
index e2886d051d4f..0d43b3614863 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -214,6 +214,11 @@ void __iomem *dev_request_mem_region(struct device_d *dev, int num);
  */
 struct resource *dev_request_mem_resource(struct device_d *dev, int num);
 
+/*
+ * exlusively request resource 'name' for a device
+ */
+struct resource *dev_request_mem_resource_by_name(struct device_d *dev, const char *name);
+
 /*
  * exlusively request register base 'num' for a device
  * will return NULL on error
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
