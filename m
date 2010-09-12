Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 64.mail-out.ovh.net ([91.121.185.65])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Oukji-0003xc-3M
	for barebox@lists.infradead.org; Sun, 12 Sep 2010 11:28:43 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 12 Sep 2010 13:27:38 +0200
Message-Id: <1284290860-32033-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1284290860-32033-1-git-send-email-plagnioj@jcrosoft.com>
References: <1284290860-32033-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/4] device: fix dev_name
To: barebox@lists.infradead.org

dev_name is supposed to return the name of the device plus the id

currently we use %s%d format where in the kernel the use %s.%d
we may think to switch to this format for the device name and keeping the %s%d
for the devfs

this will be usefull to not modify the clock device name as example

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 include/driver.h |   12 +++++++-----
 lib/driver.c     |   14 ++++++--------
 2 files changed, 13 insertions(+), 13 deletions(-)

diff --git a/include/driver.h b/include/driver.h
index ee0749d..ab1f850 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -25,7 +25,8 @@
 
 #include <linux/list.h>
 
-#define MAX_DRIVER_NAME 32
+#define MAX_DRIVER_NAME		32
+#define FORMAT_DRIVER_MANE_ID	"%s%d"
 
 #include <param.h>
 
@@ -176,9 +177,11 @@ int get_free_deviceid(const char *name_template);
 
 char *deviceid_from_spec_str(const char *str, char **endp);
 
+extern const char *dev_id(const struct device_d *dev);
+
 static inline const char *dev_name(const struct device_d *dev)
 {
-	return dev->name;
+	return dev_id(dev);
 }
 
 /* linear list over all available devices
@@ -239,11 +242,10 @@ static inline int dev_close_default(struct device_d *dev, struct filep *f)
 }
 
 /* debugging and troubleshooting/diagnostic helpers. */
-extern const char *dev_id(const struct device_d *dev);
 
 #define dev_printf(dev, format, arg...)	\
-	printf("%s@%s: " format , dev_name(dev) , \
-	       dev_id(dev) , ## arg)
+	printf("%s@%s: " format , dev->name , \
+	       dev_name(dev) , ## arg)
 
 #define dev_emerg(dev, format, arg...)		\
 	dev_printf((dev) , format , ## arg)
diff --git a/lib/driver.c b/lib/driver.c
index 00aca9c..39881c2 100644
--- a/lib/driver.c
+++ b/lib/driver.c
@@ -45,11 +45,9 @@ static LIST_HEAD(active);
 struct device_d *get_device_by_name(const char *name)
 {
 	struct device_d *dev;
-	char devname[MAX_DRIVER_NAME + 3];
 
 	for_each_device(dev) {
-		sprintf(devname, "%s%d", dev->name, dev->id);
-		if(!strcmp(name, devname))
+		if(!strcmp(dev_name(dev), name))
 			return dev;
 	}
 
@@ -115,7 +113,7 @@ int register_device(struct device_d *new_device)
 		}
 	}
 
-	debug ("register_device: %s\n",new_device->name);
+	debug ("register_device: %s\n", dev_name(new_device));
 
 	if (!new_device->bus) {
 //		dev_err(new_device, "no bus type associated. Needs fixup\n");
@@ -138,7 +136,7 @@ EXPORT_SYMBOL(register_device);
 
 int unregister_device(struct device_d *old_dev)
 {
-	debug("unregister_device: %s:%s\n",old_dev->name, old_dev->id);
+	debug("unregister_device: %s\n", dev_name(old_dev));
 
 	if (!list_empty(&old_dev->children)) {
 		errno = -EBUSY;
@@ -182,7 +180,7 @@ struct driver_d *get_driver_by_name(const char *name)
 
 static void noinfo(struct device_d *dev)
 {
-	printf("no info available for %s\n", dev->name);
+	printf("no info available for %s\n", dev_name(dev));
 }
 
 static void noshortinfo(struct device_d *dev)
@@ -255,7 +253,7 @@ static int do_devinfo_subtree(struct device_d *dev, int depth, char edge)
 	for (i = 0; i < depth; i++)
 		printf("|    ");
 
-	printf("%c----%s%d", edge, dev->name, dev->id);
+	printf("%c----%s", edge, dev_name(dev));
 	if (!list_empty(&dev->cdevs)) {
 		printf(" (");
 		list_for_each_entry(cdev, &dev->cdevs, devices_list) {
@@ -282,7 +280,7 @@ const char *dev_id(const struct device_d *dev)
 {
 	static char buf[sizeof(unsigned long) * 2];
 
-	sprintf(buf, "%s%d", dev->name, dev->id);
+	sprintf(buf, FORMAT_DRIVER_MANE_ID, dev->name, dev->id);
 
 	return buf;
 }
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
