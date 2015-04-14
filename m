Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x234.google.com ([2a00:1450:400c:c05::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Yi9iH-00079z-Qq
 for barebox@lists.infradead.org; Tue, 14 Apr 2015 22:53:53 +0000
Received: by wizk4 with SMTP id k4so132619485wiz.1
 for <barebox@lists.infradead.org>; Tue, 14 Apr 2015 15:53:26 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Wed, 15 Apr 2015 00:53:15 +0200
Message-Id: <1429052000-20647-2-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1429052000-20647-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1429052000-20647-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH v2 1/6] base: Introduce deferred probing
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

As expected, we would need deferred probing sooner or later. This is
a first approach to allow devices to return -EPROBE_DEFER and get
sorted into a list of deferred devices that will be re-probed later.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Changelog:
v1->v2:
- Rework deferred probing to loop until no previously deferred device
  probing succeeds. (Suggested by Sascha Hauer)
- Print an error message for devices stuck in deferred list.
- Add a comment how deferred probing and re-assignment to deferred
  list works.

Cc: barebox@lists.infradead.org
---
 drivers/base/driver.c       | 56 ++++++++++++++++++++++++++++++++++++++++++---
 include/asm-generic/errno.h |  1 +
 2 files changed, 54 insertions(+), 3 deletions(-)

diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index 590c97c96424..6112b4953ba6 100644
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
@@ -213,6 +222,47 @@ int unregister_device(struct device_d *old_dev)
 }
 EXPORT_SYMBOL(unregister_device);
 
+/*
+ * Loop over list of deferred devices as long as at least one
+ * device is successfully probed. Devices that again request
+ * deferral are re-added to deferred list in device_probe().
+ * For devices finally left in deferred list -EPROBE_DEFER
+ * becomes a fatal error.
+ */
+static int device_probe_deferred(void)
+{
+	struct device_d *dev, *tmp;
+	struct driver_d *drv;
+	bool success;
+
+	do {
+		success = false;
+
+		if (list_empty(&deferred))
+			break;
+
+		list_for_each_entry_safe(dev, tmp, &deferred, active) {
+			list_del(&dev->active);
+			dev_dbg(dev, "re-probe device\n");
+			bus_for_each_driver(dev->bus, drv) {
+				if (match(drv, dev))
+					continue;
+				success = true;
+				break;
+			}
+		}
+	} while (success);
+
+	if (list_empty(&deferred))
+		return 0;
+
+	list_for_each_entry(dev, &deferred, active)
+		dev_err(dev, "probe permanently deferred\n");
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
