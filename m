Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from gw6.ovh.net ([213.251.189.206] helo=mail611.ha.ovh.net)
 by merlin.infradead.org with smtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TwuIO-00014L-1o
 for barebox@lists.infradead.org; Sun, 20 Jan 2013 12:46:45 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 20 Jan 2013 13:45:18 +0100
Message-Id: <1358685918-562-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH] w1: add ds28ec20 eeprom support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/w1/slaves/Kconfig     |    4 ++--
 drivers/w1/slaves/w1_ds2433.c |   43 ++++++++++++++++++++++++++++++-----------
 2 files changed, 34 insertions(+), 13 deletions(-)

diff --git a/drivers/w1/slaves/Kconfig b/drivers/w1/slaves/Kconfig
index 946a0b3..19942ad 100644
--- a/drivers/w1/slaves/Kconfig
+++ b/drivers/w1/slaves/Kconfig
@@ -15,10 +15,10 @@ config W1_SLAVE_DS2431_WRITE
 	depends on W1_SLAVE_DS2431
 
 config W1_SLAVE_DS2433
-	bool "4kb EEPROM family support (DS2433)"
+	bool "EEPROM family support (DS2433 4Kb or DS28EC20 20kb)"
 	help
 	  Say Y here if you want to use a 1-wire
-	  4kb EEPROM family device (DS2433).
+	  EEPROM family device (DS2433 4Kb or DS28EC20 20kb).
 
 config W1_SLAVE_DS2433_WRITE
 	bool "write support"
diff --git a/drivers/w1/slaves/w1_ds2433.c b/drivers/w1/slaves/w1_ds2433.c
index 51279fb..a840d9a 100644
--- a/drivers/w1/slaves/w1_ds2433.c
+++ b/drivers/w1/slaves/w1_ds2433.c
@@ -10,8 +10,6 @@
 #include <init.h>
 #include "../w1.h"
 
-#define W1_EEPROM_SIZE		512
-#define W1_PAGE_COUNT		16
 #define W1_PAGE_SIZE		32
 #define W1_PAGE_BITS		5
 #define W1_PAGE_MASK		0x1F
@@ -23,9 +21,8 @@
 #define W1_F23_READ_SCRATCH	0xAA
 #define W1_F23_COPY_SCRATCH	0x55
 
-#define DRIVERNAME	"ds2433"
-
 static int ds2433_count = 0;
+static int ds28ec20_count = 0;
 
 /**
  * Check the file size bounds and adjusts count as needed.
@@ -49,7 +46,7 @@ static ssize_t ds2433_cdev_read(struct cdev *cdev, void *buf, size_t count,
 	struct w1_bus *bus = dev->bus;
 	u8 wrbuf[3];
 
-	if ((count = ds2433_fix_count(off, count, W1_EEPROM_SIZE)) == 0)
+	if ((count = ds2433_fix_count(off, count, cdev->size)) == 0)
 		return 0;
 
 	/* read directly from the EEPROM */
@@ -134,7 +131,7 @@ static ssize_t ds2433_cdev_write(struct cdev *cdev, const void *buf, size_t coun
 	int addr, len, idx;
 	const u8 *buf8 = buf;
 
-	if ((count = ds2433_fix_count(off, count, W1_EEPROM_SIZE)) == 0)
+	if ((count = ds2433_fix_count(off, count, cdev->size)) == 0)
 		return 0;
 
 	/* Can only write data to one page at a time */
@@ -165,7 +162,7 @@ static struct file_operations ds2433_ops = {
 	.lseek	= dev_lseek_default,
 };
 
-static int ds2433_probe(struct w1_device *dev)
+static int ds2433_cdev_create(struct w1_device *dev, int size, int id)
 {
 	struct cdev *cdev;
 
@@ -173,24 +170,48 @@ static int ds2433_probe(struct w1_device *dev)
 	cdev->dev	= &dev->dev;
 	cdev->priv	= dev;
 	cdev->ops	= &ds2433_ops;
-	cdev->size	= W1_EEPROM_SIZE;
-	cdev->name	= asprintf(DRIVERNAME"%d", ds2433_count++);
+	cdev->size	= size;
+	cdev->name	= asprintf("%s%d", dev->dev.driver->name, id);
 	if (cdev->name == NULL)
 		return -ENOMEM;
 
 	return devfs_create(cdev);
 }
 
+static int ds2433_probe(struct w1_device *dev)
+{
+	return ds2433_cdev_create(dev, 512, ds2433_count++);
+}
+
+static int ds28ec20_probe(struct w1_device *dev)
+{
+	return ds2433_cdev_create(dev, 2560, ds28ec20_count++);
+}
+
 struct w1_driver ds2433_driver = {
 	.drv = {
-		.name = DRIVERNAME,
+		.name = "ds2433",
 	},
 	.probe		= ds2433_probe,
 	.fid		= 0x23,
 };
 
+struct w1_driver ds28ec20_driver = {
+	.drv = {
+		.name = "ds28ec20",
+	},
+	.probe		= ds28ec20_probe,
+	.fid		= 0x43,
+};
+
 static int w1_ds2433_init(void)
 {
-	return w1_driver_register(&ds2433_driver);
+	int ret;
+
+	ret = w1_driver_register(&ds2433_driver);
+	if (ret)
+		return ret;
+
+	return w1_driver_register(&ds28ec20_driver);
 }
 device_initcall(w1_ds2433_init);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
