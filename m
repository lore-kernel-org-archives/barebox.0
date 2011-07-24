Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo3.mail-out.ovh.net ([188.165.41.191]
	helo=mo3.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1Ql0GB-0002vO-QH
	for barebox@lists.infradead.org; Sun, 24 Jul 2011 15:06:30 +0000
Received: from mail191.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo3.mail-out.ovh.net (Postfix) with SMTP id 664F0FFA2F5
	for <barebox@lists.infradead.org>;
	Sun, 24 Jul 2011 17:07:13 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 24 Jul 2011 16:49:00 +0200
Message-Id: <1311518949-6990-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20110724144441.GA10295@game.jcrosoft.org>
References: <20110724144441.GA10295@game.jcrosoft.org>
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
Subject: [PATCH 03/12 v2] resource: introduce add_generic_device to register
	simple device
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/base/resource.c |   16 ++++++++++------
 include/driver.h        |   16 ++++++++++++++--
 2 files changed, 24 insertions(+), 8 deletions(-)

diff --git a/drivers/base/resource.c b/drivers/base/resource.c
index 7b0020b..f0450d3 100644
--- a/drivers/base/resource.c
+++ b/drivers/base/resource.c
@@ -25,22 +25,26 @@
 #include <driver.h>
 #include <xfuncs.h>
 
-struct device_d *add_mem_device(const char *name, resource_size_t start,
-		resource_size_t size, unsigned int flags)
+struct device_d *add_generic_device(const char* devname, int id, const char *resname,
+		resource_size_t start, resource_size_t size, unsigned int flags,
+		void *pdata)
 {
 	struct device_d *dev;
 
 	dev = xzalloc(sizeof(*dev));
-	strcpy(dev->name, "mem");
-	dev->id = -1;
+	strcpy(dev->name, devname);
+	dev->id = id;
 	dev->resource = xzalloc(sizeof(struct resource));
 	dev->num_resources = 1;
-	dev->resource[0].name = xstrdup(name);
+	if (resname)
+		dev->resource[0].name = xstrdup(resname);
 	dev->resource[0].start = start;
 	dev->resource[0].size = size;
-	dev->resource[0].flags = IORESOURCE_MEM | flags;
+	dev->resource[0].flags = flags;
+	dev->platform_data = pdata;
 
 	register_device(dev);
 
 	return dev;
 }
+EXPORT_SYMBOL(add_generic_device);
diff --git a/include/driver.h b/include/driver.h
index 11c42fe..738cfae 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -203,10 +203,22 @@ static inline void __iomem *dev_request_mem_region(struct device_d *dev, int num
 }
 
 /*
+ * register a generic device
+ * with only one resource
+ */
+struct device_d *add_generic_device(const char* devname, int id, const char *resname,
+		resource_size_t start, resource_size_t size, unsigned int flags,
+		void *pdata);
+
+/*
  * register a memory device
  */
-struct device_d *add_mem_device(const char *name, resource_size_t start,
-		resource_size_t size, unsigned int flags);
+static inline struct device_d *add_mem_device(const char *name, resource_size_t start,
+		resource_size_t size, unsigned int flags)
+{
+	return add_generic_device("mem", -1, name, start, size,
+				  IORESOURCE_MEM | flags, NULL);
+}
 
 /* linear list over all available devices
  */
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
