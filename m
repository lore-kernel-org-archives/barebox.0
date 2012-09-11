Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TBQZY-0003oX-Ld
 for barebox@lists.infradead.org; Tue, 11 Sep 2012 13:32:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 11 Sep 2012 15:31:53 +0200
Message-Id: <1347370313-15184-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1347370313-15184-1-git-send-email-s.hauer@pengutronix.de>
References: <1347370313-15184-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/5] driver: Add platform_device_id mechanism
To: barebox@lists.infradead.org

It is common for drivers to handle multiple similar devices. On
Linux the driver can distinguish between the devices using the
platform_device_id mechanism. Introduce the same for barebox.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/base/platform.c |   17 ++++++++++++++++-
 include/driver.h        |    9 +++++++++
 2 files changed, 25 insertions(+), 1 deletion(-)

diff --git a/drivers/base/platform.c b/drivers/base/platform.c
index e0dd9ea..82d2521 100644
--- a/drivers/base/platform.c
+++ b/drivers/base/platform.c
@@ -24,7 +24,22 @@
 
 static int platform_match(struct device_d *dev, struct driver_d *drv)
 {
-	return strcmp(dev->name, drv->name) ? -1 : 0;
+	if (!strcmp(dev->name, drv->name))
+		return 0;
+
+	if (drv->id_table) {
+		struct platform_device_id *id = drv->id_table;
+
+		while (id->name) {
+			if (!strcmp(id->name, dev->name)) {
+				dev->id_entry = id;
+				return 0;
+			}
+			id++;
+		}
+	}
+
+	return -1;
 }
 
 static int platform_probe(struct device_d *dev)
diff --git a/include/driver.h b/include/driver.h
index c74f245..40b76c1 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -60,6 +60,11 @@
 struct filep;
 struct bus_type;
 
+struct platform_device_id {
+	const char *name;
+	unsigned long driver_data;
+};
+
 /** @brief Describes a particular device present in the system */
 struct device_d {
 	/*! This member (and 'type' described below) is used to match with a
@@ -99,6 +104,8 @@ struct device_d {
 	struct list_head parameters;
 
 	struct list_head cdevs;
+
+	struct platform_device_id *id_entry;
 };
 
 /** @brief Describes a driver present in the system */
@@ -119,6 +126,8 @@ struct driver_d {
 	void    (*shortinfo) (struct device_d *);
 
 	struct bus_type *bus;
+
+	struct platform_device_id *id_table;
 };
 
 /*@}*/	/* do not delete, doxygen relevant */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
