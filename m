Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo5.mail-out.ovh.net ([87.98.173.103]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TNVLX-00049v-KE
 for barebox@lists.infradead.org; Sun, 14 Oct 2012 21:03:41 +0000
Received: from mail619.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id A0DC1FF964C
 for <barebox@lists.infradead.org>; Sun, 14 Oct 2012 23:10:16 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 14 Oct 2012 23:01:08 +0200
Message-Id: <1350248478-19359-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1350248478-19359-1-git-send-email-plagnioj@jcrosoft.com>
References: <20121014205929.GU13639@game.jcrosoft.org>
 <1350248478-19359-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 02/12] platform: add bus device
To: barebox@lists.infradead.org

automatically add it as parent if the device does not have a parent already

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/base/platform.c |   18 ++++++++++++++----
 include/driver.h        |    3 ++-
 2 files changed, 16 insertions(+), 5 deletions(-)

diff --git a/drivers/base/platform.c b/drivers/base/platform.c
index ea4e37b..08787f6 100644
--- a/drivers/base/platform.c
+++ b/drivers/base/platform.c
@@ -57,19 +57,28 @@ static void platform_remove(struct device_d *dev)
 
 int platform_driver_register(struct driver_d *drv)
 {
-	drv->bus = &platform_bus;
+	drv->bus = &platform_bus_type;
 
 	return register_driver(drv);
 }
 
 int platform_device_register(struct device_d *new_device)
 {
-	new_device->bus = &platform_bus;
+	new_device->bus = &platform_bus_type;
+	if (!new_device->parent) {
+		new_device->parent = &platform_bus;
+		dev_add_child(new_device->parent, new_device);
+	}
 
 	return register_device(new_device);
 }
 
-struct bus_type platform_bus = {
+struct device_d platform_bus = {
+	.name = "platfrom",
+	.id = DEVICE_ID_SINGLE,
+};
+
+struct bus_type platform_bus_type = {
 	.name = "platform",
 	.match = platform_match,
 	.probe = platform_probe,
@@ -78,6 +87,7 @@ struct bus_type platform_bus = {
 
 static int plarform_init(void)
 {
-	return bus_register(&platform_bus);
+	register_device(&platform_bus);
+	return bus_register(&platform_bus_type);
 }
 pure_initcall(plarform_init);
diff --git a/include/driver.h b/include/driver.h
index dd22c77..5d85c1d 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -399,7 +399,8 @@ extern struct list_head bus_list;
  */
 #define bus_for_each_driver(bus, drv) list_for_each_entry(drv, &(bus)->driver_list, bus_list)
 
-extern struct bus_type platform_bus;
+extern struct bus_type platform_bus_type;
+extern struct device_d platform_bus;
 
 int platform_driver_register(struct driver_d *drv);
 int platform_device_register(struct device_d *new_device);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
