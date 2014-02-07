Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WBgsZ-0007KF-Fc
 for barebox@lists.infradead.org; Fri, 07 Feb 2014 08:33:44 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  7 Feb 2014 09:33:19 +0100
Message-Id: <1391762000-19451-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1391762000-19451-1-git-send-email-s.hauer@pengutronix.de>
References: <1391762000-19451-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] i2c/spi: match of_modaliases
To: barebox@lists.infradead.org

i2c/spi devices in the devicetree often come with a "vendor,device"
comaptible string. These do not match in barebox, so add a
device_match_of_modalias function which does exactly that.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/base/bus.c | 37 +++++++++++++++++++++++++++++++++++++
 drivers/i2c/i2c.c  |  2 +-
 drivers/spi/spi.c  |  2 +-
 include/driver.h   |  3 ++-
 4 files changed, 41 insertions(+), 3 deletions(-)

diff --git a/drivers/base/bus.c b/drivers/base/bus.c
index b383d09..c41e0b0 100644
--- a/drivers/base/bus.c
+++ b/drivers/base/bus.c
@@ -71,3 +71,40 @@ int device_match(struct device_d *dev, struct driver_d *drv)
 
 	return -1;
 }
+
+int device_match_of_modalias(struct device_d *dev, struct driver_d *drv)
+{
+	struct platform_device_id *id = drv->id_table;
+	const char *of_modalias = NULL, *p;
+	int cplen;
+	const char *compat;
+
+	if (!device_match(dev, drv))
+		return 0;
+
+	if (!id || !IS_ENABLED(CONFIG_OFDEVICE) || !dev->device_node)
+		return -1;
+
+	compat = of_get_property(dev->device_node, "compatible", &cplen);
+	if (!compat)
+		return -1;
+
+	p = strchr(compat, ',');
+	of_modalias = p ? p + 1 : compat;
+
+	while (id->name) {
+		if (!strcmp(id->name, dev->name)) {
+			dev->id_entry = id;
+			return 0;
+		}
+
+		if (of_modalias && !strcmp(id->name, of_modalias)) {
+			dev->id_entry = id;
+			return 0;
+		}
+
+		id++;
+	}
+
+	return -1;
+}
diff --git a/drivers/i2c/i2c.c b/drivers/i2c/i2c.c
index 3b9f601..d774105 100644
--- a/drivers/i2c/i2c.c
+++ b/drivers/i2c/i2c.c
@@ -467,7 +467,7 @@ static void i2c_remove(struct device_d *dev)
 
 struct bus_type i2c_bus = {
 	.name = "i2c",
-	.match = device_match,
+	.match = device_match_of_modalias,
 	.probe = i2c_probe,
 	.remove = i2c_remove,
 };
diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
index ad65884..8bddd98 100644
--- a/drivers/spi/spi.c
+++ b/drivers/spi/spi.c
@@ -316,7 +316,7 @@ static void spi_remove(struct device_d *dev)
 
 struct bus_type spi_bus = {
 	.name = "spi",
-	.match = device_match,
+	.match = device_match_of_modalias,
 	.probe = spi_probe,
 	.remove = spi_remove,
 };
diff --git a/include/driver.h b/include/driver.h
index bbe789b..cbb0401 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -496,5 +496,6 @@ int devfs_del_partition(const char *name);
 
 int dev_get_drvdata(struct device_d *dev, unsigned long *data);
 
-#endif /* DRIVER_H */
+int device_match_of_modalias(struct device_d *dev, struct driver_d *drv);
 
+#endif /* DRIVER_H */
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
