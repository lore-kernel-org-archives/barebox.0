Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxGnC-0003hi-MX
 for barebox@lists.infradead.org; Mon, 12 Aug 2019 20:19:47 +0000
Received: by mail-pf1-x442.google.com with SMTP id q139so1969474pfc.13
 for <barebox@lists.infradead.org>; Mon, 12 Aug 2019 13:19:46 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 12 Aug 2019 13:19:14 -0700
Message-Id: <20190812201915.12414-4-andrew.smirnov@gmail.com>
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
Subject: [PATCH 4/5] eeprom: at24: Drop at24_cdev_protect()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Instead of exposing a dedictaed .protect() callback, mimic the
behaviour of corresponding driver in Linux and adjust the value of WP
pin in .write() callback as necessary. This is done in order to
convert this driver to NVMEM subsytem.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/eeprom/at24.c | 37 +++++++++++++++++--------------------
 1 file changed, 17 insertions(+), 20 deletions(-)

diff --git a/drivers/eeprom/at24.c b/drivers/eeprom/at24.c
index 1fd4aeaba6..db452c1076 100644
--- a/drivers/eeprom/at24.c
+++ b/drivers/eeprom/at24.c
@@ -317,6 +317,19 @@ static ssize_t at24_eeprom_write(struct at24_data *at24, const char *buf,
 	return -ETIMEDOUT;
 }
 
+static void at24_protect(struct at24_data *at24, bool prot)
+{
+	if (gpio_is_valid(at24->wp_gpio)) {
+
+		if (at24->wp_active_low)
+			prot = !prot;
+
+		gpio_set_value(at24->wp_gpio, prot);
+
+		udelay(50);
+	}
+}
+
 static ssize_t at24_write(struct at24_data *at24, const char *buf, loff_t off,
 			  size_t count)
 {
@@ -325,6 +338,8 @@ static ssize_t at24_write(struct at24_data *at24, const char *buf, loff_t off,
 	if (unlikely(!count))
 		return count;
 
+	at24_protect(at24, false);
+
 	while (count) {
 		ssize_t	status;
 
@@ -340,6 +355,8 @@ static ssize_t at24_write(struct at24_data *at24, const char *buf, loff_t off,
 		retval += status;
 	}
 
+	at24_protect(at24, true);
+
 	return retval;
 }
 
@@ -351,25 +368,6 @@ static ssize_t at24_cdev_write(struct cdev *cdev, const void *buf, size_t count,
 	return at24_write(at24, buf, off, count);
 }
 
-static int at24_cdev_protect(struct cdev *cdev, size_t count, loff_t offset,
-		int prot)
-{
-	struct at24_data *at24 = cdev->priv;
-
-	if (!gpio_is_valid(at24->wp_gpio))
-		return -EOPNOTSUPP;
-
-	prot = !!prot;
-	if (at24->wp_active_low)
-		prot = !prot;
-
-	gpio_set_value(at24->wp_gpio, prot);
-
-	udelay(50);
-
-	return 0;
-}
-
 static int at24_probe(struct device_d *dev)
 {
 	struct i2c_client *client = to_i2c_client(dev);
@@ -448,7 +446,6 @@ static int at24_probe(struct device_d *dev)
 	at24->cdev.dev = dev;
 	at24->cdev.ops = &at24->fops;
 	at24->fops.read	= at24_cdev_read,
-	at24->fops.protect = at24_cdev_protect,
 	at24->cdev.size = chip.byte_len;
 
 	writable = !(chip.flags & AT24_FLAG_READONLY);
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
