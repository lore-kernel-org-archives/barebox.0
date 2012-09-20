Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo5.mail-out.ovh.net ([46.105.39.65]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TEZTt-0003dm-5t
 for barebox@lists.infradead.org; Thu, 20 Sep 2012 05:39:25 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id C8482FF9546
 for <barebox@lists.infradead.org>; Thu, 20 Sep 2012 07:45:09 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 20 Sep 2012 07:36:44 +0200
Message-Id: <1348119406-17464-4-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1348119406-17464-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120920053418.GB26553@game.jcrosoft.org>
 <1348119406-17464-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 4/6] driver: register bus
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/base/Makefile   |    1 +
 drivers/base/bus.c      |   34 ++++++++++++++++++++++++++++++++++
 drivers/base/platform.c |   14 ++++----------
 drivers/i2c/i2c.c       |    7 +++++++
 drivers/net/phy/phy.c   |    7 +++++++
 drivers/spi/spi.c       |    6 ++++++
 drivers/usb/core/usb.c  |    5 +++++
 fs/fs.c                 |    6 ++++++
 include/driver.h        |    8 ++++++++
 9 files changed, 78 insertions(+), 10 deletions(-)
 create mode 100644 drivers/base/bus.c

diff --git a/drivers/base/Makefile b/drivers/base/Makefile
index 957ca5a..e1f1c7a 100644
--- a/drivers/base/Makefile
+++ b/drivers/base/Makefile
@@ -1,3 +1,4 @@
+obj-y	+= bus.o
 obj-y	+= driver.o
 obj-y	+= platform.o
 obj-y	+= resource.o
diff --git a/drivers/base/bus.c b/drivers/base/bus.c
new file mode 100644
index 0000000..f80363d
--- /dev/null
+++ b/drivers/base/bus.c
@@ -0,0 +1,34 @@
+/*
+ * Copyright (c) 2012 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * Under GPLv2
+ */
+
+#include <common.h>
+#include <driver.h>
+#include <errno.h>
+
+LIST_HEAD(bus_list);
+EXPORT_SYMBOL(bus_list);
+
+struct bus_type *get_bus_by_name(const char *name)
+{
+	struct bus_type *bus;
+
+	for_each_bus(bus) {
+		if(!strcmp(bus->name, name))
+			return bus;
+	}
+
+	return NULL;
+}
+
+int bus_register(struct bus_type *bus)
+{
+	if (get_bus_by_name(bus->name))
+		return -EEXIST;
+
+	list_add_tail(&bus->list, &bus_list);
+
+	return 0;
+}
diff --git a/drivers/base/platform.c b/drivers/base/platform.c
index afeee05..d3021ab 100644
--- a/drivers/base/platform.c
+++ b/drivers/base/platform.c
@@ -19,6 +19,7 @@
 #include <common.h>
 #include <driver.h>
 #include <errno.h>
+#include <init.h>
 
 static int platform_match(struct device_d *dev, struct driver_d *drv)
 {
@@ -61,15 +62,8 @@ struct bus_type platform_bus = {
 	.remove = platform_remove,
 };
 
-#if 0
-LIST_HEAD(bus_list);
-EXPORT_SYMBOL(bus_list);
-
-int bus_register(struct bus_type *bus)
+static int plarform_init(void)
 {
-	list_add_tail(&bus->list, &bus_list);
-
-	return 0;
+	return bus_register(&platform_bus);
 }
-#endif
-
+pure_initcall(plarform_init);
diff --git a/drivers/i2c/i2c.c b/drivers/i2c/i2c.c
index 555722b..27fd256 100644
--- a/drivers/i2c/i2c.c
+++ b/drivers/i2c/i2c.c
@@ -21,6 +21,7 @@
 #include <errno.h>
 #include <malloc.h>
 #include <xfuncs.h>
+#include <init.h>
 
 #include <i2c/i2c.h>
 
@@ -395,3 +396,9 @@ struct bus_type i2c_bus = {
 	.probe = i2c_probe,
 	.remove = i2c_remove,
 };
+
+static int i2c_bus_init(void)
+{
+	return bus_register(&i2c_bus);
+}
+pure_initcall(i2c_bus_init);
diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
index bfebe3b..424de44 100644
--- a/drivers/net/phy/phy.c
+++ b/drivers/net/phy/phy.c
@@ -22,6 +22,7 @@
 #include <net.h>
 #include <malloc.h>
 #include <miidev.h>
+#include <init.h>
 #include <linux/phy.h>
 #include <linux/err.h>
 
@@ -685,3 +686,9 @@ int phy_driver_register(struct phy_driver *phydrv)
 
 	return register_driver(&phydrv->drv);
 }
+
+static int phy_bus_init(void)
+{
+	return bus_register(&phy_bustype);
+}
+pure_initcall(phy_bus_init);
diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
index 99a5069..17aae93 100644
--- a/drivers/spi/spi.c
+++ b/drivers/spi/spi.c
@@ -291,3 +291,9 @@ struct bus_type spi_bus = {
 	.probe = spi_probe,
 	.remove = spi_remove,
 };
+
+static int spi_bus_init(void)
+{
+	return bus_register(&spi_bus);
+}
+pure_initcall(spi_bus_init);
diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
index 662705e..9dc931b 100644
--- a/drivers/usb/core/usb.c
+++ b/drivers/usb/core/usb.c
@@ -1418,3 +1418,8 @@ struct bus_type usb_bus_type = {
 	.remove	= usb_remove,
 };
 
+static int usb_bus_init(void)
+{
+	return bus_register(&usb_bus_type);
+}
+pure_initcall(usb_bus_init);
diff --git a/fs/fs.c b/fs/fs.c
index bbee124..b9a1f17 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -1138,6 +1138,12 @@ struct bus_type fs_bus = {
 	.remove = fs_remove,
 };
 
+static int fs_bus_init(void)
+{
+	return bus_register(&fs_bus);
+}
+pure_initcall(fs_bus_init);
+
 int register_fs_driver(struct fs_driver_d *fsdrv)
 {
 	fsdrv->drv.bus = &fs_bus;
diff --git a/include/driver.h b/include/driver.h
index 7c31c24..f89bfff 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -379,6 +379,14 @@ struct bus_type {
 	struct list_head list;
 };
 
+int bus_register(struct bus_type *bus);
+
+extern struct list_head bus_list;
+
+/* Iterate over all buses
+ */
+#define for_each_bus(bus) list_for_each_entry(bus, &bus_list, list)
+
 extern struct bus_type platform_bus;
 
 struct file_operations {
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
