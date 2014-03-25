Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.reverze.net ([82.161.88.7] helo=fsm.reverze.net)
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WSPHR-0000rB-MK
 for barebox@lists.infradead.org; Tue, 25 Mar 2014 11:12:32 +0000
Message-ID: <53316470.4040004@reverze.net>
Date: Tue, 25 Mar 2014 12:11:44 +0100
From: Michel Stam <michel@reverze.net>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/3] common: driver: Allow for I/O mapped I/O in resource
 requests
To: barebox@lists.infradead.org

The current resource framework is fully geared towards memory
mapped I/O.
This patch adds support for other types of I/O in the resource
structures / function calls.
---
  common/memory.c        |  2 +-
  common/resource.c      | 18 ++++++++++++++++--
  drivers/base/driver.c  | 36 ++++++++++++++++++------------------
  include/driver.h       | 24 +++++++++++++++++-------
  include/linux/ioport.h |  5 ++++-
  5 files changed, 56 insertions(+), 29 deletions(-)

diff --git a/common/memory.c b/common/memory.c
index c82bbaa..d36c8df 100644
--- a/common/memory.c
+++ b/common/memory.c
@@ -148,7 +148,7 @@ struct resource *request_sdram_region(const char 
*name, resource_size_t start,
  	for_each_memory_bank(bank) {
  		struct resource *res;
  -		res = request_region(bank->res, name, start, start + size - 1);
+		res = request_region(bank->res, name, start, start + size - 1, 
IORESOURCE_MEM);
  		if (res)
  			return res;
  	}
diff --git a/common/resource.c b/common/resource.c
index 5795e79..6600444 100644
--- a/common/resource.c
+++ b/common/resource.c
@@ -38,7 +38,7 @@ static int init_resource(struct resource *res, const 
char *name)
   */
  struct resource *request_region(struct resource *parent,
  		const char *name, resource_size_t start,
-		resource_size_t end)
+		resource_size_t end, int type)
  {
  	struct resource *r, *new;
  @@ -70,6 +70,10 @@ struct resource *request_region(struct resource 
*parent,
  			goto ok;
  		if (start > r->end)
  			continue;
+
+		if (type != resource_type(r->parent))
+			continue;
+
  		debug("%s: 0x%08llx:0x%08llx conflicts with 0x%08llx:0x%08llx\n",
  				__func__,
  				(unsigned long long)start,
@@ -89,6 +93,7 @@ ok:
  	new->start = start;
  	new->end = end;
  	new->parent = parent;
+	new->flags = type;
  	list_add_tail(&new->sibling, &r->sibling);
   	return new;
@@ -123,5 +128,14 @@ struct resource iomem_resource = {
  struct resource *request_iomem_region(const char *name,
  		resource_size_t start, resource_size_t end)
  {
-	return request_region(&iomem_resource, name, start, end);
+	return request_region(&iomem_resource, name, start, end, IORESOURCE_MEM);
+}
+
+/*
+ * request an io region inside the io space
+ */
+struct resource *request_io_region(const char *name,
+		resource_size_t start, resource_size_t end,int type)
+{
+	return request_region(&iomem_resource, name, start, end, type);
  }
diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index 37560fd..560579a 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -241,13 +241,13 @@ int register_driver(struct driver_d *drv)
  }
  EXPORT_SYMBOL(register_driver);
  -struct resource *dev_get_resource(struct device_d *dev, int num)
+struct resource *dev_get_resource(struct device_d *dev, int num, int type)
  {
  	int i, n = 0;
   	for (i = 0; i < dev->num_resources; i++) {
  		struct resource *res = &dev->resource[i];
-		if (resource_type(res) == IORESOURCE_MEM) {
+		if (!type || (resource_type(res) == type)) {
  			if (n == num)
  				return res;
  			n++;
@@ -257,26 +257,26 @@ struct resource *dev_get_resource(struct device_d 
*dev, int num)
  	return NULL;
  }
  -void *dev_get_mem_region(struct device_d *dev, int num)
+void *dev_get_region(struct device_d *dev, int num, int type)
  {
  	struct resource *res;
  -	res = dev_get_resource(dev, num);
+	res = dev_get_resource(dev, num, type);
  	if (!res)
  		return NULL;
   	return (void __force *)res->start;
  }
-EXPORT_SYMBOL(dev_get_mem_region);
+EXPORT_SYMBOL(dev_get_region);
   struct resource *dev_get_resource_by_name(struct device_d *dev,
-					  const char *name)
+					  const char *name, int type)
  {
  	int i;
   	for (i = 0; i < dev->num_resources; i++) {
  		struct resource *res = &dev->resource[i];
-		if (resource_type(res) != IORESOURCE_MEM)
+		if (!type && (resource_type(res) != type))
  			continue;
  		if (!res->name)
  			continue;
@@ -287,49 +287,49 @@ struct resource *dev_get_resource_by_name(struct 
device_d *dev,
  	return NULL;
  }
  -void *dev_get_mem_region_by_name(struct device_d *dev, const char *name)
+void *dev_get_region_by_name(struct device_d *dev, const char *name, 
int type)
  {
  	struct resource *res;
  -	res = dev_get_resource_by_name(dev, name);
+	res = dev_get_resource_by_name(dev, name, type);
  	if (!res)
  		return NULL;
   	return (void __force *)res->start;
  }
-EXPORT_SYMBOL(dev_get_mem_region_by_name);
+EXPORT_SYMBOL(dev_get_region_by_name);
  -void __iomem *dev_request_mem_region_by_name(struct device_d *dev, 
const char *name)
+void __iomem *dev_request_region_by_name(struct device_d *dev, const 
char *name, int type)
  {
  	struct resource *res;
  -	res = dev_get_resource_by_name(dev, name);
+	res = dev_get_resource_by_name(dev, name, type);
  	if (!res)
  		return NULL;
  -	res = request_iomem_region(dev_name(dev), res->start, res->end);
+	res = request_io_region(dev_name(dev), res->start, res->end, type);
  	if (!res)
  		return NULL;
   	return (void __force __iomem *)res->start;
  }
-EXPORT_SYMBOL(dev_request_mem_region_by_name);
+EXPORT_SYMBOL(dev_request_region_by_name);
  -void __iomem *dev_request_mem_region(struct device_d *dev, int num)
+void __iomem *dev_request_region(struct device_d *dev, int num,int type)
  {
  	struct resource *res;
  -	res = dev_get_resource(dev, num);
+	res = dev_get_resource(dev, num, type);
  	if (!res)
  		return NULL;
  -	res = request_iomem_region(dev_name(dev), res->start, res->end);
+	res = request_io_region(dev_name(dev), res->start, res->end, type);
  	if (!res)
  		return NULL;
   	return (void __force __iomem *)res->start;
  }
-EXPORT_SYMBOL(dev_request_mem_region);
+EXPORT_SYMBOL(dev_request_region);
   int dev_protect(struct device_d *dev, size_t count, unsigned long 
offset, int prot)
  {
diff --git a/include/driver.h b/include/driver.h
index 01b181d..2eb4cf8 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -203,31 +203,41 @@ static inline const char *dev_name(const struct 
device_d *dev)
  /*
   * get resource 'num' for a device
   */
-struct resource *dev_get_resource(struct device_d *dev, int num);
+struct resource *dev_get_resource(struct device_d *dev, int num, int type);
  /*
   * get resource base 'name' for a device
   */
  struct resource *dev_get_resource_by_name(struct device_d *dev,
-					  const char *name);
+					  const char *name, int type);
+
  /*
+ *
   * get register base 'name' for a device
   */
-void *dev_get_mem_region_by_name(struct device_d *dev, const char *name);
+void *dev_get_region_by_name(struct device_d *dev, const char *name, 
int type);
   /*
   * exlusively request register base 'name' for a device
   */
-void __iomem *dev_request_mem_region_by_name(struct device_d *dev,
-					     const char *name);
+void __iomem *dev_request_region_by_name(struct device_d *dev,
+					 const char *name, int type);
  /*
   * get register base 'num' for a device
   */
-void *dev_get_mem_region(struct device_d *dev, int num);
+void *dev_get_region(struct device_d *dev, int num, int type);
   /*
   * exlusively request register base 'num' for a device
   */
-void __iomem *dev_request_mem_region(struct device_d *dev, int num);
+void __iomem *dev_request_region(struct device_d *dev, int num, int type);
+
+/*
+ * Macros for requesting memory resources
+ */
+#define dev_get_mem_region(dev, num)			dev_get_region(dev, num, 
IORESOURCE_MEM)
+#define dev_get_mem_region_by_name(dev, name)	 
dev_get_region_by_name(dev, name, IORESOURCE_MEM)
+#define dev_request_mem_region_by_name(dev, name) 
dev_request_region_by_name(dev, name, IORESOURCE_MEM)
+#define dev_request_mem_region(dev, num)		dev_request_region(dev, num, 
IORESOURCE_MEM)
   struct device_d *device_alloc(const char *devname, int id);
  diff --git a/include/linux/ioport.h b/include/linux/ioport.h
index ff0cba0..3fc2665 100644
--- a/include/linux/ioport.h
+++ b/include/linux/ioport.h
@@ -138,9 +138,12 @@ static inline unsigned long resource_type(const 
struct resource *res)
  struct resource *request_iomem_region(const char *name,
  		resource_size_t start, resource_size_t end);
  +struct resource *request_io_region(const char *name,
+		resource_size_t start, resource_size_t end, int type);
+
  struct resource *request_region(struct resource *parent,
  		const char *name, resource_size_t end,
-		resource_size_t size);
+		resource_size_t size,int type);
   int release_region(struct resource *res);
  -- 1.8.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
