Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x22e.google.com ([2a00:1450:400c:c05::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YgNLn-0002dy-2a
 for barebox@lists.infradead.org; Fri, 10 Apr 2015 01:03:15 +0000
Received: by widdi4 with SMTP id di4so111269735wid.0
 for <barebox@lists.infradead.org>; Thu, 09 Apr 2015 18:02:53 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Fri, 10 Apr 2015 03:02:43 +0200
Message-Id: <1428627766-17178-2-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1428627766-17178-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1428627766-17178-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 1/4] base: Introduce deferred probing
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

As expected, we would need deferred probing sooner or later. This is
a first approach to allow devices to return -EPROBE_DEFER and get
sorted into a list of deferred devices that will be re-probed later.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: barebox@lists.infradead.org
---
 drivers/base/driver.c       | 42 +++++++++++++++++++++++++++++++++++++++---
 include/asm-generic/errno.h |  1 +
 2 files changed, 40 insertions(+), 3 deletions(-)

diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index 590c97c96424..5eac21f3c950 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -29,6 +29,7 @@
 #include <console.h>
 #include <linux/ctype.h>
 #include <errno.h>
+#include <init.h>
 #include <fs.h>
 #include <of.h>
 #include <linux/list.h>
@@ -43,6 +44,7 @@ LIST_HEAD(driver_list);
 EXPORT_SYMBOL(driver_list);
 
 static LIST_HEAD(active);
+static LIST_HEAD(deferred);
 
 struct device_d *get_device_by_name(const char *name)
 {
@@ -88,13 +90,20 @@ int device_probe(struct device_d *dev)
 	list_add(&dev->active, &active);
 
 	ret = dev->bus->probe(dev);
-	if (ret) {
+	if (ret == 0)
+		return 0;
+
+	if (ret == -EPROBE_DEFER) {
 		list_del(&dev->active);
-		dev_err(dev, "probe failed: %s\n", strerror(-ret));
+		list_add(&dev->active, &deferred);
+		dev_dbg(dev, "probe deferred\n");
 		return ret;
 	}
 
-	return 0;
+	list_del(&dev->active);
+	dev_err(dev, "probe failed: %s\n", strerror(-ret));
+
+	return ret;
 }
 
 int device_detect(struct device_d *dev)
@@ -213,6 +222,33 @@ int unregister_device(struct device_d *old_dev)
 }
 EXPORT_SYMBOL(unregister_device);
 
+static int device_probe_deferred(void)
+{
+	struct device_d *dev, *tmp;
+	struct driver_d *drv;
+	int retries = 10;
+
+	do {
+		if (list_empty(&deferred))
+			break;
+
+		list_for_each_entry_safe(dev, tmp, &deferred, active) {
+			list_del(&dev->active);
+
+			if (dev->bus) {
+				bus_for_each_driver(dev->bus, drv) {
+					if (!match(drv, dev))
+						break;
+				}
+				device_probe(dev);
+			}
+		}
+	} while (retries--);
+
+	return 0;
+}
+late_initcall(device_probe_deferred);
+
 struct driver_d *get_driver_by_name(const char *name)
 {
 	struct driver_d *drv;
diff --git a/include/asm-generic/errno.h b/include/asm-generic/errno.h
index bbf493c373ae..6072f7b605bb 100644
--- a/include/asm-generic/errno.h
+++ b/include/asm-generic/errno.h
@@ -132,6 +132,7 @@
 #define ERESTARTNOINTR	513
 #define ERESTARTNOHAND	514	/* restart if no handler.. */
 #define ENOIOCTLCMD	515	/* No ioctl command */
+#define EPROBE_DEFER	517	/* Driver requests probe retry */
 
 #define ENOTSUPP	524	/* Operation is not supported */
 
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
