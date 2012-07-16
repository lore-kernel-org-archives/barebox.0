Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pb0-f49.google.com ([209.85.160.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SqZqZ-0004wu-A9
 for barebox@lists.infradead.org; Mon, 16 Jul 2012 01:11:42 +0000
Received: by pbbrq13 with SMTP id rq13so10398343pbb.36
 for <barebox@lists.infradead.org>; Sun, 15 Jul 2012 18:10:19 -0700 (PDT)
From: Marc Reilly <marc@cpdesign.com.au>
Date: Mon, 16 Jul 2012 11:04:58 +1000
Message-Id: <1342400699-6753-5-git-send-email-marc@cpdesign.com.au>
In-Reply-To: <1342400699-6753-1-git-send-email-marc@cpdesign.com.au>
References: <1342400699-6753-1-git-send-email-marc@cpdesign.com.au>
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
Subject: [PATCH 4/5] at24: add I2C eeprom for 24cl02
To: barebox@lists.infradead.org

This series adds a driver for at24 eeproms. Much of the guts of the code
is taken from the at24 driver in the linux kernel.

Signed-off-by: Marc Reilly <marc@cpdesign.com.au>
---
 drivers/eeprom/Kconfig  |    7 +++
 drivers/eeprom/Makefile |    1 +
 drivers/eeprom/at24.c   |  134 +++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 142 insertions(+), 0 deletions(-)
 create mode 100644 drivers/eeprom/at24.c

diff --git a/drivers/eeprom/Kconfig b/drivers/eeprom/Kconfig
index a0b5489..56dfd1a 100644
--- a/drivers/eeprom/Kconfig
+++ b/drivers/eeprom/Kconfig
@@ -8,4 +8,11 @@ config EEPROM_AT25
 	  after you configure the board init code to know about each eeprom
 	  on your target board.
 
+config EEPROM_AT24
+	bool "at24 based eeprom"
+	depends on I2C
+	help
+	  Provides read/write for the at24 family of I2C EEPROMS.
+	  Currently only the 2K bit versions are supported.
+	  
 endmenu
diff --git a/drivers/eeprom/Makefile b/drivers/eeprom/Makefile
index e323bd0..e287eb0 100644
--- a/drivers/eeprom/Makefile
+++ b/drivers/eeprom/Makefile
@@ -1 +1,2 @@
 obj-$(CONFIG_EEPROM_AT25)	+= at25.o
+obj-$(CONFIG_EEPROM_AT24)	+= at24.o
diff --git a/drivers/eeprom/at24.c b/drivers/eeprom/at24.c
new file mode 100644
index 0000000..fd578b1
--- /dev/null
+++ b/drivers/eeprom/at24.c
@@ -0,0 +1,134 @@
+/*
+ * Copyright (C) 2007 Sascha Hauer, Pengutronix
+ *               2009 Marc Kleine-Budde <mkl@pengutronix.de>
+ *               2010 Marc Reilly, Creative Product Design
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ *
+ */
+
+#include <common.h>
+#include <init.h>
+#include <driver.h>
+#include <xfuncs.h>
+#include <errno.h>
+
+#include <i2c/i2c.h>
+
+#define DRIVERNAME		"eeprom"
+
+struct at24 {
+	struct cdev		cdev;
+	struct i2c_client	*client;
+	/* size in bytes */
+	unsigned int		size;
+};
+
+#define to_at24(a)		container_of(a, struct at24, cdev)
+
+static ssize_t at24_read(struct cdev *cdev, void *_buf, size_t count,
+		ulong offset, ulong flags)
+{
+	struct at24 *priv = to_at24(cdev);
+	u8 *buf = _buf;
+	size_t i = count;
+	ssize_t numwritten = 0;
+	int retries = 5;
+	int ret;
+
+	while (i && retries) {
+		ret = i2c_read_reg(priv->client, offset, buf, i);
+		if (ret < 0)
+			return (ssize_t)ret;
+		else if (ret == 0)
+			--retries;
+
+		numwritten += ret;
+		i -= ret;
+		offset += ret;
+		buf += ret;
+	}
+
+	return numwritten;
+}
+
+static ssize_t at24_write(struct cdev *cdev, const void *_buf, size_t count,
+		ulong offset, ulong flags)
+{
+	struct at24 *priv = to_at24(cdev);
+	const u8 *buf = _buf;
+	const int maxwrite = 8;
+	int numtowrite;
+	ssize_t numwritten = 0;
+
+	while (count) {
+		int ret;
+
+		numtowrite = count;
+		if (numtowrite > maxwrite)
+			numtowrite = maxwrite;
+
+		ret = i2c_write_reg(priv->client, offset, buf, numtowrite);
+		if (ret < 0)
+			return (ssize_t)ret;
+
+		mdelay(10);
+
+		numwritten += ret;
+		buf += ret;
+		count -= ret;
+		offset += ret;
+	}
+
+	return numwritten;
+}
+
+static struct file_operations at24_fops = {
+	.lseek	= dev_lseek_default,
+	.read	= at24_read,
+	.write	= at24_write,
+};
+
+static int at24_probe(struct device_d *dev)
+{
+	struct at24 *at24;
+	at24 = xzalloc(sizeof(*at24));
+
+	dev->priv = at24;
+
+	at24->cdev.name = DRIVERNAME;
+	at24->client = to_i2c_client(dev);
+	at24->cdev.size = 256;
+	at24->cdev.dev = dev;
+	at24->cdev.ops = &at24_fops;
+
+	devfs_create(&at24->cdev);
+
+	return 0;
+}
+
+static struct driver_d at24_driver = {
+	.name  = DRIVERNAME,
+	.probe = at24_probe,
+};
+
+static int at24_init(void)
+{
+	register_driver(&at24_driver);
+	return 0;
+}
+
+device_initcall(at24_init);
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
