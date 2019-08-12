Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxGnD-0003iH-Pz
 for barebox@lists.infradead.org; Mon, 12 Aug 2019 20:19:49 +0000
Received: by mail-pl1-x642.google.com with SMTP id m9so48140066pls.8
 for <barebox@lists.infradead.org>; Mon, 12 Aug 2019 13:19:47 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 12 Aug 2019 13:19:15 -0700
Message-Id: <20190812201915.12414-5-andrew.smirnov@gmail.com>
In-Reply-To: <20190812201915.12414-1-andrew.smirnov@gmail.com>
References: <20190812201915.12414-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 5/5] eeprom: at24: Convert the driver to NVMEM
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Convert AT24 driver to use NVMEM subsystem instead of explicitly
creating a dedicated cdev. This way it becomes possible to access the
contenst of EEPROM via NVMEM API, which could be usefull for things
like MAC-addresses and such.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/eeprom/at24.c | 48 ++++++++++++++++++++++++-------------------
 1 file changed, 27 insertions(+), 21 deletions(-)

diff --git a/drivers/eeprom/at24.c b/drivers/eeprom/at24.c
index db452c1076..568aa02a4c 100644
--- a/drivers/eeprom/at24.c
+++ b/drivers/eeprom/at24.c
@@ -23,6 +23,8 @@
 #include <gpio.h>
 #include <of_gpio.h>
 
+#include <linux/nvmem-provider.h>
+
 /*
  * I2C EEPROMs from most vendors are inexpensive and mostly interchangeable.
  * Differences between different vendor product lines (like Atmel AT24C or
@@ -50,8 +52,8 @@
 struct at24_data {
 	struct at24_platform_data chip;
 
-	struct cdev		cdev;
-	struct cdev_operations	fops;
+	struct nvmem_config nvmem_config;
+	struct nvmem_device *nvmem;
 
 	u8 *writebuf;
 	unsigned write_max;
@@ -242,10 +244,10 @@ static ssize_t at24_read(struct at24_data *at24,
 	return retval;
 }
 
-static ssize_t at24_cdev_read(struct cdev *cdev, void *buf, size_t count,
-		loff_t off, ulong flags)
+static int at24_nvmem_read(struct device_d *dev, int off,
+			       void *buf, int count)
 {
-	struct at24_data *at24 = cdev->priv;
+	struct at24_data *at24 = dev->parent->priv;
 
 	return at24_read(at24, buf, off, count);
 }
@@ -360,14 +362,19 @@ static ssize_t at24_write(struct at24_data *at24, const char *buf, loff_t off,
 	return retval;
 }
 
-static ssize_t at24_cdev_write(struct cdev *cdev, const void *buf, size_t count,
-		loff_t off, ulong flags)
+static int at24_nvmem_write(struct device_d *dev, const int off,
+			       const void *buf, int count)
 {
-	struct at24_data *at24 = cdev->priv;
+	struct at24_data *at24 = dev->parent->priv;
 
 	return at24_write(at24, buf, off, count);
 }
 
+static const struct nvmem_bus at24_nvmem_bus = {
+	.write = at24_nvmem_write,
+	.read  = at24_nvmem_read,
+};
+
 static int at24_probe(struct device_d *dev)
 {
 	struct i2c_client *client = to_i2c_client(dev);
@@ -441,13 +448,6 @@ static int at24_probe(struct device_d *dev)
 		devname = xasprintf("eeprom%d", err);
 	}
 
-	at24->cdev.name = devname;
-	at24->cdev.priv = at24;
-	at24->cdev.dev = dev;
-	at24->cdev.ops = &at24->fops;
-	at24->fops.read	= at24_cdev_read,
-	at24->cdev.size = chip.byte_len;
-
 	writable = !(chip.flags & AT24_FLAG_READONLY);
 
 	if (of_get_property(dev->device_node, "read-only", NULL))
@@ -456,8 +456,6 @@ static int at24_probe(struct device_d *dev)
 	if (writable) {
 		unsigned write_max = chip.page_size;
 
-		at24->fops.write = at24_cdev_write;
-
 		if (write_max > io_limit)
 			write_max = io_limit;
 		at24->write_max = write_max;
@@ -494,13 +492,21 @@ static int at24_probe(struct device_d *dev)
 		}
 	}
 
-	err = devfs_create(&at24->cdev);
+	at24->nvmem_config.name = devname;
+	at24->nvmem_config.dev = dev;
+	at24->nvmem_config.read_only = !writable;
+	at24->nvmem_config.bus = &at24_nvmem_bus;
+	at24->nvmem_config.stride = 1;
+	at24->nvmem_config.word_size = 1;
+	at24->nvmem_config.size = chip.byte_len;
+
+	dev->priv = at24;
+
+	at24->nvmem = nvmem_register(&at24->nvmem_config);
+	err = PTR_ERR_OR_ZERO(at24->nvmem);
 	if (err)
 		goto err_devfs_create;
 
-	of_parse_partitions(&at24->cdev, dev->device_node);
-	of_partitions_register_fixup(&at24->cdev);
-
 	return 0;
 
 err_devfs_create:
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
