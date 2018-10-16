Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gCUpX-0004c2-7G
 for barebox@lists.infradead.org; Tue, 16 Oct 2018 19:16:54 +0000
Received: by mail-pg1-x542.google.com with SMTP id 32-v6so125051pgu.2
 for <barebox@lists.infradead.org>; Tue, 16 Oct 2018 12:16:24 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 16 Oct 2018 12:15:41 -0700
Message-Id: <20181016191552.16690-12-andrew.smirnov@gmail.com>
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
Subject: [PATCH v4 11/22] base: Don't use shared buffer for results of dev_id()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Using shared memory buffer to return results of dev_id() leads to
incorrect results when used as follows:

    dev_info(..., "... %s ...\n", ..., dev_name(foo), ...);

since result returned for dev_name(foo) will be overwritten by
dev_name() call that will happen as a part of dev_* logging functions.

To prevent that allocate a dedicated field "unique_name" in struct
device_d and use it to store unique name returned by
dev_id()/dev_name().

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/base/driver.c | 19 +++++++------------
 include/driver.h      | 11 ++++++++++-
 2 files changed, 17 insertions(+), 13 deletions(-)

diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index c9e6e6ddd..b7720f31a 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -183,6 +183,13 @@ int register_device(struct device_d *new_device)
 		}
 	}
 
+	if (new_device->id != DEVICE_ID_SINGLE)
+		snprintf(new_device->unique_name,
+			 sizeof(new_device->unique_name),
+			 FORMAT_DRIVER_NAME_ID,
+			 new_device->name,
+			 new_device->id);
+
 	debug ("register_device: %s\n", dev_name(new_device));
 
 	list_add_tail(&new_device->list, &device_list);
@@ -466,18 +473,6 @@ int dummy_probe(struct device_d *dev)
 }
 EXPORT_SYMBOL(dummy_probe);
 
-const char *dev_id(const struct device_d *dev)
-{
-	static char buf[MAX_DRIVER_NAME + 16];
-
-	if (dev->id != DEVICE_ID_SINGLE)
-		snprintf(buf, sizeof(buf), FORMAT_DRIVER_NAME_ID, dev->name, dev->id);
-	else
-		snprintf(buf, sizeof(buf), "%s", dev->name);
-
-	return buf;
-}
-
 /**
  * dev_set_name - set a device name
  * @dev: device
diff --git a/include/driver.h b/include/driver.h
index c12ca9c2f..94fddc735 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -45,6 +45,12 @@ struct device_d {
 	 * be used instead.
 	 */
 	char name[MAX_DRIVER_NAME];
+
+	/*! This member is used to store device's unique name as
+	 *  obtained by calling dev_id(). Internal field, do not
+	 *  access it directly.
+	  */
+	char unique_name[MAX_DRIVER_NAME + 16];
 	/*! The id is used to uniquely identify a device in the system. The id
 	 * will show up under /dev/ as the device's name. Usually this is
 	 * something like eth0 or nor0. */
@@ -173,7 +179,10 @@ int get_free_deviceid(const char *name_template);
 
 char *deviceid_from_spec_str(const char *str, char **endp);
 
-extern const char *dev_id(const struct device_d *dev);
+static inline const char *dev_id(const struct device_d *dev)
+{
+	return (dev->id != DEVICE_ID_SINGLE) ? dev->unique_name : dev->name;
+}
 
 static inline const char *dev_name(const struct device_d *dev)
 {
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
