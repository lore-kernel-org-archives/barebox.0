Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.mo5.mail-out.ovh.net ([178.33.45.10]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TELbm-000358-O5
 for barebox@lists.infradead.org; Wed, 19 Sep 2012 14:50:38 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 223B9FF9FCD
 for <barebox@lists.infradead.org>; Wed, 19 Sep 2012 16:56:22 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 19 Sep 2012 16:47:58 +0200
Message-Id: <1348066078-26482-5-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1348066078-26482-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120919144332.GX25990@game.jcrosoft.org>
 <1348066078-26482-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 5/5] driver: search device and driver based on the bus instead
 of all
To: barebox@lists.infradead.org

This will allow reduce the number of driver and device to search on.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/base/driver.c |   11 ++++++-----
 include/driver.h      |   12 ++++++++++++
 2 files changed, 18 insertions(+), 5 deletions(-)

diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index 18ac70c..5d25a3c 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -82,8 +82,6 @@ static int match(struct driver_d *drv, struct device_d *dev)
 
 	dev->driver = drv;
 
-	if (dev->bus != drv->bus)
-		goto err_out;
 	if (dev->bus->match(dev, drv))
 		goto err_out;
 	if (dev->bus->probe(dev))
@@ -119,7 +117,7 @@ int register_device(struct device_d *new_device)
 	if (new_device->bus == &platform_bus && new_device->resource) {
 		struct device_d *dev;
 
-		for_each_device(dev) {
+		for_each_bus_device(new_device->bus, dev) {
 			if (!dev->resource)
 				continue;
 			if (dev->resource->start == new_device->resource->start) {
@@ -129,12 +127,13 @@ int register_device(struct device_d *new_device)
 	}
 
 	list_add_tail(&new_device->list, &device_list);
+	list_add_tail(&new_device->bus_list, &new_device->bus->device_list);
 	INIT_LIST_HEAD(&new_device->children);
 	INIT_LIST_HEAD(&new_device->cdevs);
 	INIT_LIST_HEAD(&new_device->parameters);
 	INIT_LIST_HEAD(&new_device->active);
 
-	for_each_driver(drv) {
+	for_each_bus_driver(new_device->bus, drv) {
 		if (!match(drv, new_device))
 			break;
 	}
@@ -166,6 +165,7 @@ int unregister_device(struct device_d *old_dev)
 	}
 
 	list_del(&old_dev->list);
+	list_del(&old_dev->bus_list);
 	list_del(&old_dev->active);
 
 	/* remove device from parents child list */
@@ -219,13 +219,14 @@ int register_driver(struct driver_d *drv)
 	}
 
 	list_add_tail(&drv->list, &driver_list);
+	list_add_tail(&drv->bus_list, &drv->bus->driver_list);
 
 	if (!drv->info)
 		drv->info = noinfo;
 	if (!drv->shortinfo)
 		drv->shortinfo = noshortinfo;
 
-	for_each_device(dev)
+	for_each_bus_device(drv->bus, dev)
 		match(drv, dev);
 
 	return 0;
diff --git a/include/driver.h b/include/driver.h
index f89bfff..6a182d8 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -88,6 +88,7 @@ struct device_d {
 	struct driver_d *driver; /*! The driver for this device */
 
 	struct list_head list;     /* The list of all devices */
+	struct list_head bus_list; /* our bus            */
 	struct list_head children; /* our children            */
 	struct list_head sibling;
 	struct list_head active;   /* The list of all devices which have a driver */
@@ -115,6 +116,7 @@ struct driver_d {
 	const char *name;
 
 	struct list_head list;
+	struct list_head bus_list; /* our bus            */
 
 	/*! Called if an instance of a device is found */
 	int     (*probe) (struct device_d *);
@@ -377,6 +379,8 @@ struct bus_type {
 	void (*remove)(struct device_d *dev);
 
 	struct list_head list;
+	struct list_head device_list;
+	struct list_head driver_list;
 };
 
 int bus_register(struct bus_type *bus);
@@ -387,6 +391,14 @@ extern struct list_head bus_list;
  */
 #define for_each_bus(bus) list_for_each_entry(bus, &bus_list, list)
 
+/* Iterate over all devices of a bus
+ */
+#define for_each_bus_device(bus, dev) list_for_each_entry(dev, &bus->device_list, bus_list)
+
+/* Iterate over all drivers of a bus
+ */
+#define for_each_bus_driver(bus, drv) list_for_each_entry(drv, &bus->driver_list, bus_list)
+
 extern struct bus_type platform_bus;
 
 struct file_operations {
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
