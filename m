Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo173.mail-out.ovh.net ([178.32.228.173])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ck3nj-0000R3-SO
 for barebox@lists.infradead.org; Sat, 04 Mar 2017 07:08:25 +0000
Received: from player791.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo173.mail-out.ovh.net (Postfix) with ESMTP id B3B7728B54
 for <barebox@lists.infradead.org>; Sat,  4 Mar 2017 08:08:01 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat,  4 Mar 2017 08:14:08 +0100
Message-Id: <1488611648-22773-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1488611648-22773-1-git-send-email-plagnioj@jcrosoft.com>
References: <20170304071241.GG4120@mail.ovh.net>
 <1488611648-22773-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/2] driver: generate hash at runtime to speed up
 device/driver matching
To: barebox@lists.infradead.org

use GNU Hash

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/base/bus.c    | 12 ++++++++----
 drivers/base/driver.c | 27 ++++++++++++++++++++++++++-
 include/driver.h      |  5 +++++
 3 files changed, 39 insertions(+), 5 deletions(-)

diff --git a/drivers/base/bus.c b/drivers/base/bus.c
index 03feba502..2da736a4b 100644
--- a/drivers/base/bus.c
+++ b/drivers/base/bus.c
@@ -58,13 +58,13 @@ int device_match(struct device_d *dev, struct driver_d *drv)
 		struct platform_device_id *id = drv->id_table;
 
 		while (id->name) {
-			if (!strcmp(id->name, dev->name)) {
+			if (dev->hash == id->hash && !strcmp(id->name, dev->name)) {
 				dev->id_entry = id;
 				return 0;
 			}
 			id++;
 		}
-	} else if (!strcmp(dev->name, drv->name)) {
+	} else if (dev->hash == drv->hash && !strcmp(dev->name, drv->name)) {
 		return 0;
 	}
 
@@ -77,6 +77,7 @@ int device_match_of_modalias(struct device_d *dev, struct driver_d *drv)
 	const char *of_modalias = NULL, *p;
 	int cplen;
 	const char *compat;
+	unsigned long hash;
 
 	if (!device_match(dev, drv))
 		return 0;
@@ -90,14 +91,17 @@ int device_match_of_modalias(struct device_d *dev, struct driver_d *drv)
 
 	p = strchr(compat, ',');
 	of_modalias = p ? p + 1 : compat;
+	if (of_modalias)
+		hash = gnu_hash(of_modalias);
 
 	while (id->name) {
-		if (!strcmp(id->name, dev->name)) {
+		if (id->hash == dev->hash && !strcmp(id->name, dev->name)) {
 			dev->id_entry = id;
 			return 0;
 		}
 
-		if (of_modalias && !strcmp(id->name, of_modalias)) {
+		if (of_modalias && id->hash == hash &&
+			!strcmp(id->name, of_modalias)) {
 			dev->id_entry = id;
 			return 0;
 		}
diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index 5867fe45d..c3257f640 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -46,6 +46,17 @@ EXPORT_SYMBOL(driver_list);
 static LIST_HEAD(active);
 static LIST_HEAD(deferred);
 
+unsigned long gnu_hash(const unsigned char *name)
+{
+	unsigned long h = 5381;
+	unsigned char c;
+
+	for (c = *name; c != '\0'; c = *++name)
+		h = h * 33 + c;
+
+	return h & 0xffffffff;
+}
+
 struct device_d *get_device_by_name(const char *name)
 {
 	struct device_d *dev;
@@ -61,9 +72,10 @@ struct device_d *get_device_by_name(const char *name)
 static struct device_d *get_device_by_name_id(const char *name, int id)
 {
 	struct device_d *dev;
+	unsigned long hash = gnu_hash(name);
 
 	for_each_device(dev) {
-		if(!strcmp(dev->name, name) && id == dev->id)
+		if(hash == dev->hash && !strcmp(dev->name, name) && id == dev->id)
 			return dev;
 	}
 
@@ -165,6 +177,8 @@ int register_device(struct device_d *new_device)
 {
 	struct driver_d *drv;
 
+	new_device->hash = gnu_hash(new_device->name);
+
 	if (new_device->id == DEVICE_ID_DYNAMIC) {
 		new_device->id = get_free_deviceid(new_device->name);
 	} else {
@@ -302,6 +316,17 @@ int register_driver(struct driver_d *drv)
 
 	BUG_ON(!drv->bus);
 
+	drv->hash = gnu_hash(drv->name);
+
+	if (drv->id_table) {
+		struct platform_device_id *id = drv->id_table;
+
+		while (id->name) {
+			id->hash = gnu_hash(id->name);
+			id++;
+		}
+	}
+
 	list_add_tail(&drv->list, &driver_list);
 	list_add_tail(&drv->bus_list, &drv->bus->driver_list);
 
diff --git a/include/driver.h b/include/driver.h
index db7f9c780..64b59dc91 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -31,8 +31,11 @@
 struct filep;
 struct bus_type;
 
+unsigned long gnu_hash(const unsigned char *name);
+
 struct platform_device_id {
 	const char *name;
+	unsigned long hash;
 	unsigned long driver_data;
 };
 
@@ -42,6 +45,7 @@ struct device_d {
 	 * driver. This is a descriptive name and could be MPC5XXX_ether or
 	 * imx_serial. */
 	char name[MAX_DRIVER_NAME];
+	unsigned long hash;
 	/*! The id is used to uniquely identify a device in the system. The id
 	 * will show up under /dev/ as the device's name. Usually this is
 	 * something like eth0 or nor0. */
@@ -95,6 +99,7 @@ struct driver_d {
 	/*! The name of this driver. Used to match to
 	 * the corresponding device. */
 	const char *name;
+	unsigned long hash;
 
 	struct list_head list;
 	struct list_head bus_list; /* our bus            */
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
