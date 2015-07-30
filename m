Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from proxima.lasnet.de ([78.47.171.185])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZKpv4-0004PV-Vc
 for barebox@lists.infradead.org; Thu, 30 Jul 2015 15:38:56 +0000
Received: from polaris.fritz.box (f053152215.adsl.alicedsl.de [78.53.152.215])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: polaris@lasnet.de)
 by proxima.lasnet.de (Postfix) with ESMTPSA id 70054C08C6
 for <barebox@lists.infradead.org>; Thu, 30 Jul 2015 17:38:33 +0200 (CEST)
From: Jan Luebbe <jluebbe@debian.org>
Date: Thu, 30 Jul 2015 17:38:29 +0200
Message-Id: <1438270709-2066-1-git-send-email-jluebbe@debian.org>
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
Subject: [PATCH] at24: support write-protect GPIO
To: barebox@lists.infradead.org

Signed-off-by: Jan Luebbe <jluebbe@debian.org>
---
 drivers/eeprom/at24.c | 38 ++++++++++++++++++++++++++++++++++++++
 1 file changed, 38 insertions(+)

diff --git a/drivers/eeprom/at24.c b/drivers/eeprom/at24.c
index bb2dd53..76f30e7 100644
--- a/drivers/eeprom/at24.c
+++ b/drivers/eeprom/at24.c
@@ -21,6 +21,8 @@
 #include <linux/log2.h>
 #include <i2c/i2c.h>
 #include <i2c/at24.h>
+#include <gpio.h>
+#include <of_gpio.h>
 
 /*
  * I2C EEPROMs from most vendors are inexpensive and mostly interchangeable.
@@ -55,6 +57,8 @@ struct at24_data {
 	u8 *writebuf;
 	unsigned write_max;
 	unsigned num_addresses;
+	int wp_gpio;
+	int wp_active_low;
 
 	/*
 	 * Some chips tie up multiple I2C addresses; dummy devices reserve
@@ -345,6 +349,25 @@ static ssize_t at24_cdev_write(struct cdev *cdev, const void *buf, size_t count,
 	return at24_write(at24, buf, off, count);
 }
 
+static ssize_t at24_cdev_protect(struct cdev *cdev, size_t count, loff_t offset,
+		int prot)
+{
+	struct at24_data *at24 = cdev->priv;
+
+	if (!gpio_is_valid(at24->wp_gpio))
+		return -EOPNOTSUPP;
+
+	prot = !!prot;
+	if (at24->wp_active_low)
+		prot = !prot;
+
+	gpio_set_value(at24->wp_gpio, prot);
+
+	udelay(50);
+
+	return 0;
+}
+
 static int at24_probe(struct device_d *dev)
 {
 	struct i2c_client *client = to_i2c_client(dev);
@@ -403,6 +426,7 @@ static int at24_probe(struct device_d *dev)
 	at24->cdev.ops = &at24->fops;
 	at24->fops.lseek = dev_lseek_default;
 	at24->fops.read	= at24_cdev_read,
+	at24->fops.protect = at24_cdev_protect,
 	at24->cdev.size = chip.byte_len;
 
 	writable = !(chip.flags & AT24_FLAG_READONLY);
@@ -419,6 +443,19 @@ static int at24_probe(struct device_d *dev)
 		at24->writebuf = xmalloc(write_max + 2);
 	}
 
+	at24->wp_gpio = -1;
+	if (dev->device_node) {
+		enum of_gpio_flags flags;
+		at24->wp_gpio = of_get_named_gpio_flags(dev->device_node,
+				"wp-gpios", 0, &flags);
+		if (gpio_is_valid(at24->wp_gpio)) {
+			at24->wp_active_low = flags & OF_GPIO_ACTIVE_LOW;
+			gpio_request(at24->wp_gpio, "eeprom-wp");
+			gpio_direction_output(at24->wp_gpio,
+					!at24->wp_active_low);
+		}
+	}
+
 	at24->client[0] = client;
 
 	/* use dummy devices for multiple-address chips */
@@ -440,6 +477,7 @@ static int at24_probe(struct device_d *dev)
 	return 0;
 
 err_clients:
+	gpio_free(at24->wp_gpio);
 	kfree(at24->writebuf);
 	kfree(at24);
 err_out:
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
