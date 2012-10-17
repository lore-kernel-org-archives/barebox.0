Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo2.mail-out.ovh.net ([87.98.172.75]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TOTLU-00071D-O4
 for barebox@lists.infradead.org; Wed, 17 Oct 2012 13:07:37 +0000
Received: from mail426.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 8B514DC0DFE
 for <barebox@lists.infradead.org>; Wed, 17 Oct 2012 15:14:16 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 17 Oct 2012 15:05:14 +0200
Message-Id: <1350479115-29192-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20121017130320.GF30038@game.jcrosoft.org>
References: <20121017130320.GF30038@game.jcrosoft.org>
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
Subject: [PATCH 1/2] driver: add support for requesting resource by name
To: barebox@lists.infradead.org

this will allow to avoid issue with resource order

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/base/driver.c |   46 ++++++++++++++++++++++++++++++++++++++++++++++
 include/driver.h      |   15 +++++++++++++++
 2 files changed, 61 insertions(+)

diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index 64fe289..d0d20ce 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -247,6 +247,52 @@ void *dev_get_mem_region(struct device_d *dev, int num)
 }
 EXPORT_SYMBOL(dev_get_mem_region);
 
+struct resource *dev_get_resource_by_name(struct device_d *dev,
+					  const char *name)
+{
+	int i;
+
+	for (i = 0; i < dev->num_resources; i++) {
+		struct resource *res = &dev->resource[i];
+		if (resource_type(res) != IORESOURCE_MEM)
+			continue;
+		if (!res->name)
+			continue;
+		if (!strcmp(name, res->name))
+			return res;
+	}
+
+	return NULL;
+}
+
+void *dev_get_mem_region_by_name(struct device_d *dev, const char *name)
+{
+	struct resource *res;
+
+	res = dev_get_resource_by_name(dev, name);
+	if (!res)
+		return NULL;
+
+	return (void __force *)res->start;
+}
+EXPORT_SYMBOL(dev_get_mem_region_by_name);
+
+void __iomem *dev_request_mem_region_by_name(struct device_d *dev, const char *name)
+{
+	struct resource *res;
+
+	res = dev_get_resource_by_name(dev, name);
+	if (!res)
+		return NULL;
+
+	res = request_iomem_region(dev_name(dev), res->start, res->end);
+	if (!res)
+		return NULL;
+
+	return (void __force __iomem *)res->start;
+}
+EXPORT_SYMBOL(dev_request_mem_region_by_name);
+
 void __iomem *dev_request_mem_region(struct device_d *dev, int num)
 {
 	struct resource *res;
diff --git a/include/driver.h b/include/driver.h
index 4918054..f8d815c 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -193,6 +193,21 @@ static inline const char *dev_name(const struct device_d *dev)
 }
 
 /*
+ * get resource base 'name' for a device
+ */
+struct resource *dev_get_resource_by_name(struct device_d *dev,
+					  const char *name);
+/*
+ * get register base 'name' for a device
+ */
+void *dev_get_mem_region_by_name(struct device_d *dev, const char *name);
+
+/*
+ * exlusively request register base 'name' for a device
+ */
+void __iomem *dev_request_mem_region_by_name(struct device_d *dev,
+					     const char *name);
+/*
  * get register base 'num' for a device
  */
 void *dev_get_mem_region(struct device_d *dev, int num);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
