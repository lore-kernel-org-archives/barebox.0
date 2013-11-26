Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VlHaM-0001el-0A
 for barebox@lists.infradead.org; Tue, 26 Nov 2013 12:17:47 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 26 Nov 2013 13:17:19 +0100
Message-Id: <1385468240-3915-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1385468240-3915-1-git-send-email-s.hauer@pengutronix.de>
References: <1385468240-3915-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/3] device: Add functions to add resources
To: barebox@lists.infradead.org

We currently have functions to add a device based on function parameters.
This adds the corresponding functions to add resources to a device without
registering the device itself. This is useful to manipulate devices before
registering them.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/base/resource.c | 60 ++++++++++++++++++++++++++++++++++++++-----------
 include/driver.h        |  9 ++++++++
 2 files changed, 56 insertions(+), 13 deletions(-)

diff --git a/drivers/base/resource.c b/drivers/base/resource.c
index 2985c78..71ae0fe 100644
--- a/drivers/base/resource.c
+++ b/drivers/base/resource.c
@@ -20,33 +20,67 @@
 #include <common.h>
 #include <driver.h>
 #include <xfuncs.h>
+#include <malloc.h>
 
-static struct device_d *alloc_device(const char* devname, int id, void *pdata)
+struct device_d *device_alloc(const char *devname, int id)
 {
 	struct device_d *dev;
 
 	dev = xzalloc(sizeof(*dev));
 	strcpy(dev->name, devname);
 	dev->id = id;
-	dev->platform_data = pdata;
 
 	return dev;
 }
 
+int device_add_data(struct device_d *dev, void *data, size_t size)
+{
+	free(dev->platform_data);
+
+	if (data)
+		dev->platform_data = xmemdup(data, size);
+	else
+		dev->platform_data = NULL;
+
+	return 0;
+}
+
+int device_add_resources(struct device_d *dev, const struct resource *res, int num)
+{
+	dev->resource = xmemdup(res, sizeof(*res) * num);
+	dev->num_resources = num;
+
+	return 0;
+}
+
+int device_add_resource(struct device_d *dev, const char *resname,
+		resource_size_t start, resource_size_t size, unsigned int flags)
+{
+	struct resource res = {
+		.start = start,
+		.end = start + size - 1,
+		.flags = flags,
+	};
+
+	if (resname)
+		res.name = xstrdup(resname);
+
+	return device_add_resources(dev, &res, 1);
+}
+
 struct device_d *add_generic_device(const char* devname, int id, const char *resname,
 		resource_size_t start, resource_size_t size, unsigned int flags,
 		void *pdata)
 {
-	struct resource *res;
+	struct device_d *dev;
 
-	res = xzalloc(sizeof(struct resource));
-	if (resname)
-		res[0].name = xstrdup(resname);
-	res[0].start = start;
-	res[0].end = start + size - 1;
-	res[0].flags = flags;
+	dev = device_alloc(devname, id);
+	dev->platform_data = pdata;
+	device_add_resource(dev, resname, start, size, flags);
+
+	platform_device_register(dev);
 
-	return add_generic_device_res(devname, id, res, 1, pdata);
+	return dev;
 }
 EXPORT_SYMBOL(add_generic_device);
 
@@ -55,9 +89,9 @@ struct device_d *add_generic_device_res(const char* devname, int id,
 {
 	struct device_d *dev;
 
-	dev = alloc_device(devname, id, pdata);
-	dev->resource = res;
-	dev->num_resources = nb;
+	dev = device_alloc(devname, id);
+	dev->platform_data = pdata;
+	device_add_resources(dev, res, nb);
 
 	platform_device_register(dev);
 
diff --git a/include/driver.h b/include/driver.h
index 7f0532e..bbe789b 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -229,6 +229,15 @@ void *dev_get_mem_region(struct device_d *dev, int num);
  */
 void __iomem *dev_request_mem_region(struct device_d *dev, int num);
 
+struct device_d *device_alloc(const char *devname, int id);
+
+int device_add_resources(struct device_d *dev, const struct resource *res, int num);
+
+int device_add_resource(struct device_d *dev, const char *resname,
+		resource_size_t start, resource_size_t size, unsigned int flags);
+
+int device_add_data(struct device_d *dev, void *data, size_t size);
+
 /*
  * register a generic device
  * with only one resource
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
