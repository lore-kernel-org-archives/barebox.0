Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo1.mail-out.ovh.net ([87.98.158.110]
	helo=mo1.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1R5d6u-0000V3-M0
	for barebox@lists.infradead.org; Mon, 19 Sep 2011 12:38:11 +0000
Received: from mail179.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo1.mail-out.ovh.net (Postfix) with SMTP id 4AAB91014059
	for <barebox@lists.infradead.org>;
	Mon, 19 Sep 2011 14:38:58 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 19 Sep 2011 14:15:42 +0200
Message-Id: <1316434549-15243-5-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1316434549-15243-1-git-send-email-plagnioj@jcrosoft.com>
References: <1316434549-15243-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 05/12] resource: introduce add_generic_device_res to add
	multiple resource
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/base/resource.c |   67 ++++++++++++++++++++++++----------------------
 include/driver.h        |    7 +++++
 2 files changed, 42 insertions(+), 32 deletions(-)

diff --git a/drivers/base/resource.c b/drivers/base/resource.c
index 175beb9..f6c429f 100644
--- a/drivers/base/resource.c
+++ b/drivers/base/resource.c
@@ -41,33 +41,42 @@ struct device_d *add_generic_device(const char* devname, int id, const char *res
 		resource_size_t start, resource_size_t size, unsigned int flags,
 		void *pdata)
 {
+	struct resource *res;
+
+	res = xzalloc(sizeof(struct resource));
+	if (resname)
+		res[0].name = xstrdup(resname);
+	res[0].start = start;
+	res[0].size = size;
+	res[0].flags = flags;
+
+	return add_generic_device_res(devname, id, res, 1, pdata);
+}
+EXPORT_SYMBOL(add_generic_device);
+
+struct device_d *add_generic_device_res(const char* devname, int id,
+		struct resource *res, int nb, void *pdata)
+{
 	struct device_d *dev;
 
 	dev = alloc_device(devname, id, pdata);
-	dev->resource = xzalloc(sizeof(struct resource));
-	dev->num_resources = 1;
-	if (resname)
-		dev->resource[0].name = xstrdup(resname);
-	dev->resource[0].start = start;
-	dev->resource[0].size = size;
-	dev->resource[0].flags = flags;
+	dev->resource = res;
+	dev->num_resources = nb;
 
 	register_device(dev);
 
 	return dev;
 }
-EXPORT_SYMBOL(add_generic_device);
+EXPORT_SYMBOL(add_generic_device_res);
 
 #ifdef CONFIG_DRIVER_NET_DM9000
 struct device_d *add_dm9000_device(int id, resource_size_t base,
 		resource_size_t data, int flags, void *pdata)
 {
-	struct device_d *dev;
+	struct resource *res;
 	resource_size_t size;
 
-	dev = alloc_device("dm9000", id, pdata);
-	dev->resource = xzalloc(sizeof(struct resource) * 2);
-	dev->num_resources = 2;
+	res = xzalloc(sizeof(struct resource) * 2);
 
 	switch (flags) {
 	case IORESOURCE_MEM_32BIT:
@@ -84,16 +93,14 @@ struct device_d *add_dm9000_device(int id, resource_size_t base,
 		return NULL;
 	}
 
-	dev->resource[0].start = base;
-	dev->resource[0].size = size;
-	dev->resource[0].flags = IORESOURCE_MEM | flags;
-	dev->resource[1].start = data;
-	dev->resource[1].size = size;
-	dev->resource[1].flags = IORESOURCE_MEM | flags;
-
-	register_device(dev);
+	res[0].start = base;
+	res[0].size = size;
+	res[0].flags = IORESOURCE_MEM | flags;
+	res[1].start = data;
+	res[1].size = size;
+	res[1].flags = IORESOURCE_MEM | flags;
 
-	return dev;
+	return add_generic_device_res("dm9000", id, res, 2, pdata);
 }
 EXPORT_SYMBOL(add_dm9000_device);
 #endif
@@ -102,19 +109,15 @@ EXPORT_SYMBOL(add_dm9000_device);
 struct device_d *add_usb_ehci_device(int id, resource_size_t hccr,
 		resource_size_t hcor, void *pdata)
 {
-	struct device_d *dev;
-
-	dev = alloc_device("ehci", id, pdata);
-	dev->resource = xzalloc(sizeof(struct resource) * 2);
-	dev->num_resources = 2;
-	dev->resource[0].start = hccr;
-	dev->resource[0].flags = IORESOURCE_MEM;
-	dev->resource[1].start = hcor;
-	dev->resource[1].flags = IORESOURCE_MEM;
+	resource_size_t *res;
 
-	register_device(dev);
+	res = xzalloc(sizeof(struct resource) * 2);
+	res[0].start = hccr;
+	res[0].flags = IORESOURCE_MEM;
+	res[1].start = hcor;
+	res[1].flags = IORESOURCE_MEM;
 
-	return dev;
+	return add_generic_device_res("ehci", id, res, 2, pdata);
 }
 EXPORT_SYMBOL(add_usb_ehci_device);
 #endif
diff --git a/include/driver.h b/include/driver.h
index e9ac727..80de0c8 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -205,6 +205,13 @@ struct device_d *add_generic_device(const char* devname, int id, const char *res
 		void *pdata);
 
 /*
+ * register a generic device
+ * with multiple resources
+ */
+struct device_d *add_generic_device_res(const char* devname, int id,
+		struct resource *res, int nb, void *pdata);
+
+/*
  * register a memory device
  */
 static inline struct device_d *add_mem_device(const char *name, resource_size_t start,
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
