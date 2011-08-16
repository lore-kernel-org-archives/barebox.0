Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 20.mo3.mail-out.ovh.net ([178.33.47.94]
	helo=mo3.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QtCcU-00063Q-ON
	for barebox@lists.infradead.org; Tue, 16 Aug 2011 05:55:24 +0000
Received: from mail191.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo3.mail-out.ovh.net (Postfix) with SMTP id 97527FFB708
	for <barebox@lists.infradead.org>;
	Tue, 16 Aug 2011 07:55:42 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 16 Aug 2011 07:36:05 +0200
Message-Id: <1313472967-19324-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1313397992-3065-1-git-send-email-s.hauer@pengutronix.de>
References: <1313397992-3065-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/4] add bus registration support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/base/Makefile |    1 +
 drivers/base/bus.c    |   69 +++++++++++++++++++++++++++++++++++++++++++++++++
 include/driver.h      |   17 ++++++++++++
 3 files changed, 87 insertions(+), 0 deletions(-)
 create mode 100644 drivers/base/bus.c

diff --git a/drivers/base/Makefile b/drivers/base/Makefile
index 957ca5a..5f19d4d 100644
--- a/drivers/base/Makefile
+++ b/drivers/base/Makefile
@@ -1,3 +1,4 @@
 obj-y	+= driver.o
+obj-y	+= bus.o
 obj-y	+= platform.o
 obj-y	+= resource.o
diff --git a/drivers/base/bus.c b/drivers/base/bus.c
new file mode 100644
index 0000000..b124ab0
--- /dev/null
+++ b/drivers/base/bus.c
@@ -0,0 +1,69 @@
+/*
+ * Copyright (c) 2011 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
+ */
+#include <common.h>
+#include <driver.h>
+
+static int bus_match(struct device_d *dev, struct driver_d *drv)
+{
+	return strcmp(dev->name, drv->name) ? -1 : 0;
+}
+
+static int bus_probe(struct device_d *dev)
+{
+	if (dev->driver->probe)
+		return dev->driver->probe(dev);
+	return 0;
+}
+
+static void bus_remove(struct device_d *dev)
+{
+	if (dev->driver->remove)
+		dev->driver->remove(dev);
+}
+
+struct bus_type bus_bus = {
+	.name = "bus",
+	.match = bus_match,
+	.probe = bus_probe,
+	.remove = bus_remove,
+};
+
+void bus_for_each_device(struct bus_type *bus,
+			 void (*fn)(struct device_d *dev))
+{
+	struct device_d *dev;
+
+	for_each_device(dev) {
+		if (dev->bus == bus)
+			fn(dev);
+	}
+}
+
+int register_bus_driver(struct driver_d *drv)
+{
+	drv->bus = &bus_bus;
+	return register_driver(drv);
+}
+
+int register_bus_device(struct device_d *dev)
+{
+	dev->bus = &bus_bus;
+	return register_device(dev);
+}
diff --git a/include/driver.h b/include/driver.h
index 0b5a652..ab7424e 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -269,6 +269,23 @@ extern struct list_head driver_list;
  */
 #define for_each_device(dev) list_for_each_entry(dev, &device_list, list)
 
+
+int register_bus_driver(struct driver_d *drv);
+int register_bus_device(struct device_d *dev);
+
+/* Iterate over all bus device
+ */
+void bus_for_each_device(struct bus_type *bus,
+			 void (*fn)(struct device_d *dev));
+
+extern struct bus_type bus_bus;
+/* Iterate over all bus
+ */
+static inline void bus_for_each(void (*fn)(struct device_d *dev))
+{
+	bus_for_each_device(&bus_bus, fn);
+}
+
 /* Iterate over all drivers
  */
 #define for_each_driver(drv) list_for_each_entry(drv, &driver_list, list)
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
