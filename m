Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gCUpV-0004cd-TN
 for barebox@lists.infradead.org; Tue, 16 Oct 2018 19:16:45 +0000
Received: by mail-pg1-x541.google.com with SMTP id a5-v6so11290600pgv.13
 for <barebox@lists.infradead.org>; Tue, 16 Oct 2018 12:16:26 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 16 Oct 2018 12:15:42 -0700
Message-Id: <20181016191552.16690-13-andrew.smirnov@gmail.com>
In-Reply-To: <20181016191552.16690-1-andrew.smirnov@gmail.com>
References: <20181016191552.16690-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v4 12/22] drivers: base: Convert device_d name to be
 dynamically allocated
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Convert device_d name to be dynamically allocated in order to lift
MAX_DRIVER_NAME length limit needed for commits that follow.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/base/driver.c | 23 +++++++++++++++++------
 include/driver.h      |  5 ++---
 2 files changed, 19 insertions(+), 9 deletions(-)

diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index b7720f31a..1941a972c 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -184,11 +184,9 @@ int register_device(struct device_d *new_device)
 	}
 
 	if (new_device->id != DEVICE_ID_SINGLE)
-		snprintf(new_device->unique_name,
-			 sizeof(new_device->unique_name),
-			 FORMAT_DRIVER_NAME_ID,
-			 new_device->name,
-			 new_device->id);
+		new_device->unique_name = basprintf(FORMAT_DRIVER_NAME_ID,
+						    new_device->name,
+						    new_device->id);
 
 	debug ("register_device: %s\n", dev_name(new_device));
 
@@ -478,16 +476,29 @@ EXPORT_SYMBOL(dummy_probe);
  * @dev: device
  * @fmt: format string for the device's name
  *
+ * NOTE: This function expects dev->name to be free()-able, so extra
+ * precautions needs to be taken when mixing its usage with manual
+ * assignement of device_d.name.
  */
 int dev_set_name(struct device_d *dev, const char *fmt, ...)
 {
 	va_list vargs;
 	int err;
+	/*
+	 * Save old pointer in case we are overriding already set name
+	 */
+	char *oldname = dev->name;
 
 	va_start(vargs, fmt);
-	err = vsnprintf(dev->name, sizeof(dev->name), fmt, vargs);
+	err = vasprintf(&dev->name, fmt, vargs);
 	va_end(vargs);
 
+	/*
+	 * Free old pointer, we do this after vasprintf call in case
+	 * old device name was in one of vargs
+	 */
+	free(oldname);
+
 	WARN_ON(err < 0);
 
 	return err;
diff --git a/include/driver.h b/include/driver.h
index 94fddc735..db844aed3 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -23,7 +23,6 @@
 #include <linux/ioport.h>
 #include <of.h>
 
-#define MAX_DRIVER_NAME		32
 #define FORMAT_DRIVER_NAME_ID	"%s%d"
 
 #include <param.h>
@@ -44,13 +43,13 @@ struct device_d {
 	 * should not be modified directly and dev_set_name() should
 	 * be used instead.
 	 */
-	char name[MAX_DRIVER_NAME];
+	char *name;
 
 	/*! This member is used to store device's unique name as
 	 *  obtained by calling dev_id(). Internal field, do not
 	 *  access it directly.
 	  */
-	char unique_name[MAX_DRIVER_NAME + 16];
+	char *unique_name;
 	/*! The id is used to uniquely identify a device in the system. The id
 	 * will show up under /dev/ as the device's name. Usually this is
 	 * something like eth0 or nor0. */
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
