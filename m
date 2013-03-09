Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UEHOv-0000iF-D4
 for barebox@lists.infradead.org; Sat, 09 Mar 2013 10:53:20 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sat,  9 Mar 2013 11:53:07 +0100
Message-Id: <1362826391-16215-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1362826391-16215-1-git-send-email-s.hauer@pengutronix.de>
References: <1362826391-16215-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/10] bus: Make struct device a pointer
To: barebox@lists.infradead.org

struct bus_type contains an embedded struct device_d which is quite
a big structure. Dynamically allocate this instead to save the space
in the binary.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/base/bus.c    | 7 ++++---
 drivers/base/driver.c | 2 +-
 include/driver.h      | 2 +-
 3 files changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/base/bus.c b/drivers/base/bus.c
index e2204da..5251be6 100644
--- a/drivers/base/bus.c
+++ b/drivers/base/bus.c
@@ -30,10 +30,11 @@ int bus_register(struct bus_type *bus)
 	if (get_bus_by_name(bus->name))
 		return -EEXIST;
 
-	strcpy(bus->dev.name, bus->name);
-	bus->dev.id = DEVICE_ID_SINGLE;
+	bus->dev = xzalloc(sizeof(*bus->dev));
+	strcpy(bus->dev->name, bus->name);
+	bus->dev->id = DEVICE_ID_SINGLE;
 
-	ret = register_device(&bus->dev);
+	ret = register_device(bus->dev);
 	if (ret)
 		return ret;
 
diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index fa30c68..487f478 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -135,7 +135,7 @@ int register_device(struct device_d *new_device)
 
 	if (new_device->bus) {
 		if (!new_device->parent)
-			new_device->parent = &new_device->bus->dev;
+			new_device->parent = new_device->bus->dev;
 
 		list_add_tail(&new_device->bus_list, &new_device->bus->device_list);
 
diff --git a/include/driver.h b/include/driver.h
index 46c56c0..2d107e1 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -368,7 +368,7 @@ struct bus_type {
 	int (*probe)(struct device_d *dev);
 	void (*remove)(struct device_d *dev);
 
-	struct device_d dev;
+	struct device_d *dev;
 
 	struct list_head list;
 	struct list_head device_list;
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
