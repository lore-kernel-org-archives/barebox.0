Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gh82W-0003ou-PH
 for barebox@lists.infradead.org; Wed, 09 Jan 2019 07:12:45 +0000
Received: by mail-pl1-x643.google.com with SMTP id t13so3147300ply.13
 for <barebox@lists.infradead.org>; Tue, 08 Jan 2019 23:12:36 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue,  8 Jan 2019 23:11:54 -0800
Message-Id: <20190109071210.18896-6-andrew.smirnov@gmail.com>
In-Reply-To: <20190109071210.18896-1-andrew.smirnov@gmail.com>
References: <20190109071210.18896-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 05/21] base: Port driver_deferred_probe_check_state() from
 Linux
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port driver_deferred_probe_check_state() from Linux by adding on last
pass going through all of the deferred drivers that allows us to
declare all unresolved dependencies as missing.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/base/driver.c | 73 ++++++++++++++++++++++++++++++++-----------
 include/driver.h      |  2 ++
 2 files changed, 57 insertions(+), 18 deletions(-)

diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index 1fd6bbc01..be735189a 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -46,6 +46,8 @@ EXPORT_SYMBOL(driver_list);
 static LIST_HEAD(active);
 static LIST_HEAD(deferred);
 
+static bool initcalls_done;
+
 struct device_d *get_device_by_name(const char *name)
 {
 	struct device_d *dev;
@@ -259,31 +261,66 @@ EXPORT_SYMBOL(unregister_device);
  * For devices finally left in deferred list -EPROBE_DEFER
  * becomes a fatal error.
  */
-static int device_probe_deferred(void)
+
+/**
+ * driver_deferred_probe_check_state() - Check deferred probe state
+ * @dev: device to check
+ *
+ * Returns -ENODEV if init is done and all built-in drivers have had a chance
+ * to probe (i.e. initcalls are done), -ETIMEDOUT if deferred probe debug
+ * timeout has expired, or -EPROBE_DEFER if none of those conditions are met.
+ *
+ * Drivers or subsystems can opt-in to calling this function instead of directly
+ * returning -EPROBE_DEFER.
+ */
+int driver_deferred_probe_check_state(struct device_d *dev)
+{
+	if (initcalls_done) {
+		dev_warn(dev, "ignoring dependency for device, assuming no driver");
+		return -ENODEV;
+	}
+	return -EPROBE_DEFER;
+}
+
+static bool device_probe_deferred_match_all(void)
 {
 	struct device_d *dev, *tmp;
 	struct driver_d *drv;
-	bool success;
+	bool success = false;
 
-	do {
-		success = false;
+	list_for_each_entry_safe(dev, tmp, &deferred, active) {
+		list_del(&dev->active);
+		INIT_LIST_HEAD(&dev->active);
 
-		if (list_empty(&deferred))
-			return 0;
+		dev_dbg(dev, "re-probe device\n");
+		bus_for_each_driver(dev->bus, drv) {
+			if (match(drv, dev))
+				continue;
+			success = true;
+			break;
+		}
+	}
 
-		list_for_each_entry_safe(dev, tmp, &deferred, active) {
-			list_del(&dev->active);
-			INIT_LIST_HEAD(&dev->active);
+	return success;
+}
 
-			dev_dbg(dev, "re-probe device\n");
-			bus_for_each_driver(dev->bus, drv) {
-				if (match(drv, dev))
-					continue;
-				success = true;
-				break;
-			}
-		}
-	} while (success);
+static int device_probe_deferred(void)
+{
+	struct device_d *dev;
+
+	while (device_probe_deferred_match_all())
+		;
+
+	initcalls_done = true;
+
+	if (list_empty(&deferred))
+		return 0;
+	/*
+	 * Loop over all deferred devices to give various functions
+	 * that call driver_deferred_probe_check_state() a chance to
+	 * finally return -ENODEV as opposed to -EPROBE_DEFER
+	 */
+	device_probe_deferred_match_all();
 
 	list_for_each_entry(dev, &deferred, active)
 		dev_err(dev, "probe permanently deferred\n");
diff --git a/include/driver.h b/include/driver.h
index 3d9970df5..385e410dd 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -151,6 +151,8 @@ void device_detect_all(void);
  */
 int unregister_device(struct device_d *);
 
+int driver_deferred_probe_check_state(struct device_d *dev);
+
 /* Iterate over a devices children
  */
 #define device_for_each_child(dev, child) \
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
