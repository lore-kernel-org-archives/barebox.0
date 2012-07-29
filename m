Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pb0-f49.google.com ([209.85.160.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SvOEF-0004ni-ER
 for barebox@lists.infradead.org; Sun, 29 Jul 2012 07:47:55 +0000
Received: by mail-pb0-f49.google.com with SMTP id rq13so8523245pbb.36
 for <barebox@lists.infradead.org>; Sun, 29 Jul 2012 00:47:55 -0700 (PDT)
From: Marc Reilly <marc@cpdesign.com.au>
Date: Sun, 29 Jul 2012 17:41:54 +1000
Message-Id: <1343547714-32740-8-git-send-email-marc@cpdesign.com.au>
In-Reply-To: <1343547714-32740-1-git-send-email-marc@cpdesign.com.au>
References: <1343547714-32740-1-git-send-email-marc@cpdesign.com.au>
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
Subject: [PATCH 7/7] drivers/eeprom: at24: add I2C eeprom driver for 24c01/02
To: barebox@lists.infradead.org

This series adds a driver for at24 eeproms. Much of the guts of the code
was taken from the at24 driver in the linux kernel.

The device is polled for write completion. All the datasheets I looked
at had a max of 10ms for eeprom write time.
The driver automatically wraps the writes to page boundaries, so we don't
write more than is remaining in the page.

The driver can not yet handle addressing offsets > 256 in devices with
larger capacities.

The platform data fields are all optional, if they are zero they are
assigned default values. As the device capabilities can not be probed,
the default assumption is that the device is 256 bytes.

Signed-off-by: Marc Reilly <marc@cpdesign.com.au>
---
 drivers/eeprom/Kconfig  |    7 ++
 drivers/eeprom/Makefile |    1 +
 drivers/eeprom/at24.c   |  233 +++++++++++++++++++++++++++++++++++++++++++++++
 include/i2c/at24.h      |   13 +++
 4 files changed, 254 insertions(+), 0 deletions(-)
 create mode 100644 drivers/eeprom/at24.c
 create mode 100644 include/i2c/at24.h

diff --git a/drivers/eeprom/Kconfig b/drivers/eeprom/Kconfig
index a0b5489..a2bcaaa 100644
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
index 0000000..fa16d88
--- /dev/null
+++ b/drivers/eeprom/at24.c
@@ -0,0 +1,233 @@
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
+#include <clock.h>
+#include <driver.h>
+#include <xfuncs.h>
+#include <errno.h>
+
+#include <i2c/i2c.h>
+#include <i2c/at24.h>
+
+#define DRIVERNAME		"at24"
+#define DEVICENAME		"eeprom"
+
+struct at24 {
+	struct cdev		cdev;
+	struct i2c_client	*client;
+	/* size in bytes */
+	unsigned int		size;
+	unsigned int		page_size;
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
+static int at24_poll_device(struct i2c_client *client)
+{
+	uint64_t start;
+	u8 dummy;
+	int ret;
+
+	/*
+	 * eeprom can take 5-10ms to write, during which time it
+	 * will not respond. Poll it by attempting reads.
+	 */
+	start = get_time_ns();
+	while (1) {
+		ret = i2c_master_recv(client, &dummy, 1);
+		if (ret > 0)
+			return ret;
+
+		if (is_timeout(start, 20 * MSECOND))
+			return -EIO;
+	}
+
+	return 0;
+}
+
+static ssize_t at24_write(struct cdev *cdev, const void *_buf, size_t count,
+		ulong offset, ulong flags)
+{
+	struct at24 *priv = to_at24(cdev);
+	const u8 *buf = _buf;
+	const int pagesize = priv->page_size;
+	ssize_t numwritten = 0;
+
+	while (count) {
+		int ret, numtowrite;
+		int page_remain = pagesize - (offset % pagesize);
+
+		numtowrite = count;
+		if (numtowrite > pagesize)
+			numtowrite = pagesize;
+		/* don't write past page */
+		if (numtowrite > page_remain)
+			numtowrite = page_remain;
+
+		ret = i2c_write_reg(priv->client, offset, buf, numtowrite);
+		if (ret < 0)
+			return (ssize_t)ret;
+
+		numwritten += ret;
+		buf += ret;
+		count -= ret;
+		offset += ret;
+
+		ret = at24_poll_device(priv->client);
+		if (ret < 0)
+			return (ssize_t)ret;
+	}
+
+	return numwritten;
+}
+
+/* max page size of any of the at24 family devices is 16 bytes */
+#define AT24_MAX_PAGE_SIZE	16
+
+static ssize_t at24_erase(struct cdev *cdev, size_t count, unsigned long offset)
+{
+	struct at24 *priv = to_at24(cdev);
+	char erase[AT24_MAX_PAGE_SIZE];
+	const int pagesize = priv->page_size;
+	ssize_t numwritten = 0;
+
+	memset(erase, 0xff, sizeof(erase));
+
+	while (count) {
+		int ret, numtowrite;
+		int page_remain = pagesize - (offset % pagesize);
+
+		numtowrite = count;
+		if (numtowrite > pagesize)
+			numtowrite = pagesize;
+		/* don't write past page */
+		if (numtowrite > page_remain)
+			numtowrite = page_remain;
+
+		ret = i2c_write_reg(priv->client, offset, erase, numtowrite);
+		if (ret < 0)
+			return (ssize_t)ret;
+
+		numwritten += ret;
+		count -= ret;
+		offset += ret;
+
+		ret = at24_poll_device(priv->client);
+		if (ret < 0)
+			return (ssize_t)ret;
+	}
+
+	return 0;
+}
+
+static struct file_operations at24_fops = {
+	.lseek	= dev_lseek_default,
+	.read	= at24_read,
+	.write	= at24_write,
+	.erase	= at24_erase,
+};
+
+static int at24_probe(struct device_d *dev)
+{
+	const struct at24_platform_data *pdata;
+	struct at24 *at24;
+	at24 = xzalloc(sizeof(*at24));
+
+	dev->priv = at24;
+	at24->client = to_i2c_client(dev);
+	at24->cdev.dev = dev;
+	at24->cdev.ops = &at24_fops;
+
+	pdata = dev->platform_data;
+	if (pdata) {
+		at24->cdev.size = pdata->size_bytes;
+		at24->cdev.name = strdup(pdata->name);
+		at24->page_size = pdata->page_size;
+	}
+
+	if (at24->cdev.size == 0)
+		at24->cdev.size = 256;
+	if (!at24->cdev.name || at24->cdev.name[0] == '\0') {
+		char buf[20];
+		sprintf(buf, DEVICENAME"%d", dev->id);
+		at24->cdev.name = strdup(buf);
+	}
+	if (at24->page_size == 0) {
+		switch (at24->cdev.size) {
+		case 512:
+		case 1024:
+		case 2048:
+			at24->page_size = 16;
+			break;
+		case 128:
+		case 256:
+		default:
+			at24->page_size = 8;
+			break;
+		}
+	}
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
diff --git a/include/i2c/at24.h b/include/i2c/at24.h
new file mode 100644
index 0000000..00e4624
--- /dev/null
+++ b/include/i2c/at24.h
@@ -0,0 +1,13 @@
+#ifndef _EEPROM_AT24_H
+#define _EEPROM_AT24_H
+
+struct at24_platform_data {
+	/* preferred device name */
+	const char name[10];
+	/* page write size in bytes */
+	u8 page_size;
+	/* device size in bytes */
+	u16 size_bytes;
+};
+
+#endif /* _EEPROM_AT24_H */
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
