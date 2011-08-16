Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 20.mo3.mail-out.ovh.net ([178.33.47.94]
	helo=mo3.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QtCcU-00063R-Oj
	for barebox@lists.infradead.org; Tue, 16 Aug 2011 05:55:24 +0000
Received: from mail191.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo3.mail-out.ovh.net (Postfix) with SMTP id 52670FFB6F3
	for <barebox@lists.infradead.org>;
	Tue, 16 Aug 2011 07:55:44 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 16 Aug 2011 07:36:06 +0200
Message-Id: <1313472967-19324-3-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/4] platform_bus: add registrattion to bus
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/base/driver.c   |    3 +++
 drivers/base/platform.c |   16 ++++++++--------
 include/driver.h        |    1 +
 3 files changed, 12 insertions(+), 8 deletions(-)

diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index dfd81c5..33eb016 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -120,6 +120,9 @@ int register_device(struct device_d *new_device)
 		new_device->bus = &platform_bus;
 	}
 
+	if (!new_device->parent && new_device->bus == &platform_bus)
+		dev_add_child(&platform_bus_device, new_device);
+
 	list_add_tail(&new_device->list, &device_list);
 	INIT_LIST_HEAD(&new_device->children);
 	INIT_LIST_HEAD(&new_device->cdevs);
diff --git a/drivers/base/platform.c b/drivers/base/platform.c
index e0dd9ea..60c87d3 100644
--- a/drivers/base/platform.c
+++ b/drivers/base/platform.c
@@ -21,6 +21,7 @@
  */
 #include <common.h>
 #include <driver.h>
+#include <init.h>
 
 static int platform_match(struct device_d *dev, struct driver_d *drv)
 {
@@ -44,15 +45,14 @@ struct bus_type platform_bus = {
 	.remove = platform_remove,
 };
 
-#if 0
-LIST_HEAD(bus_list);
-EXPORT_SYMBOL(bus_list);
+struct device_d platform_bus_device = {
+	.id	= -1,
+	.name	= "platform",
+};
 
-int bus_register(struct bus_type *bus)
+static int platform_bus_init(void)
 {
-	list_add_tail(&bus->list, &bus_list);
-
+	register_bus_device(&platform_bus_device);
 	return 0;
 }
-#endif
-
+postcore_initcall(platform_bus_init);
diff --git a/include/driver.h b/include/driver.h
index ab7424e..c122cf2 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -370,6 +370,7 @@ struct bus_type {
 };
 
 extern struct bus_type platform_bus;
+extern struct device_d platform_bus_device;
 
 struct file_operations {
 	/*! Called in response of reading from this device. Required */
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
