Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x22f.google.com ([2607:f8b0:400e:c03::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aVqwQ-0003nE-9l
 for barebox@lists.infradead.org; Wed, 17 Feb 2016 01:30:08 +0000
Received: by mail-pa0-x22f.google.com with SMTP id ho8so1499266pac.2
 for <barebox@lists.infradead.org>; Tue, 16 Feb 2016 17:29:46 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 16 Feb 2016 17:29:09 -0800
Message-Id: <1455672559-25061-9-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 08/18] [RFC] base: Introduce dev_request_mem_resource
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Introduce dev_request_mem_resource as a version of
dev_request_mem_region that returns the corresponding 'struct resource'
and thus allows to perform proper resource deallocation. This is useful
for drivers that can experience deferred probling and need to be able to
be probed twice.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/base/driver.c | 12 ++++++++++++
 include/driver.h      |  2 ++
 2 files changed, 14 insertions(+)

diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index a3ca057..9e55061 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -385,6 +385,18 @@ void __iomem *dev_request_mem_region_by_name(struct device_d *dev, const char *n
 }
 EXPORT_SYMBOL(dev_request_mem_region_by_name);
 
+struct resource *dev_request_mem_resource(struct device_d *dev, int num)
+{
+	struct resource *res;
+
+	res = dev_get_resource(dev, IORESOURCE_MEM, num);
+	if (IS_ERR(res))
+		return ERR_CAST(res);
+
+	return request_iomem_region(dev_name(dev), res->start, res->end);
+}
+EXPORT_SYMBOL(dev_request_mem_resource);
+
 void __iomem *dev_request_mem_region(struct device_d *dev, int num)
 {
 	struct resource *res;
diff --git a/include/driver.h b/include/driver.h
index 08adaf9..2e67223 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -206,6 +206,8 @@ void *dev_get_mem_region(struct device_d *dev, int num);
  */
 void __iomem *dev_request_mem_region(struct device_d *dev, int num);
 
+struct resource *dev_request_mem_resource(struct device_d *dev, int num);
+
 struct device_d *device_alloc(const char *devname, int id);
 
 int device_add_resources(struct device_d *dev, const struct resource *res, int num);
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
