Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pb0-f49.google.com ([209.85.160.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SqZqe-0004wv-3I
 for barebox@lists.infradead.org; Mon, 16 Jul 2012 01:11:43 +0000
Received: by pbbrq13 with SMTP id rq13so10398409pbb.36
 for <barebox@lists.infradead.org>; Sun, 15 Jul 2012 18:10:21 -0700 (PDT)
From: Marc Reilly <marc@cpdesign.com.au>
Date: Mon, 16 Jul 2012 11:04:59 +1000
Message-Id: <1342400699-6753-6-git-send-email-marc@cpdesign.com.au>
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
Subject: [PATCH 5/5] misc: new driver: isl22316 digital potentiometer
To: barebox@lists.infradead.org

This series adds a driver for the isl22316 digital pot.
A new misc config option and folder is added.

Signed-off-by: Marc Reilly <marc@cpdesign.com.au>
---
 drivers/Kconfig         |    1 +
 drivers/Makefile        |    1 +
 drivers/misc/Kconfig    |   10 +++
 drivers/misc/Makefile   |    1 +
 drivers/misc/isl22316.c |  180 +++++++++++++++++++++++++++++++++++++++++++++++
 include/misc/isl22316.h |   26 +++++++
 6 files changed, 219 insertions(+), 0 deletions(-)
 create mode 100644 drivers/misc/Kconfig
 create mode 100644 drivers/misc/Makefile
 create mode 100644 drivers/misc/isl22316.c
 create mode 100644 include/misc/isl22316.h

diff --git a/drivers/Kconfig b/drivers/Kconfig
index 883b0e7..8710432 100644
--- a/drivers/Kconfig
+++ b/drivers/Kconfig
@@ -18,5 +18,6 @@ source "drivers/input/Kconfig"
 source "drivers/watchdog/Kconfig"
 source "drivers/pwm/Kconfig"
 source "drivers/dma/Kconfig"
+source "drivers/misc/Kconfig"
 
 endmenu
diff --git a/drivers/Makefile b/drivers/Makefile
index ea3263f..5c93274 100644
--- a/drivers/Makefile
+++ b/drivers/Makefile
@@ -17,3 +17,4 @@ obj-$(CONFIG_PWM) += pwm/
 obj-y	+= input/
 obj-y	+= dma/
 obj-y  += watchdog/
+obj-$(CONFIG_MISC) += misc/
diff --git a/drivers/misc/Kconfig b/drivers/misc/Kconfig
new file mode 100644
index 0000000..859035f
--- /dev/null
+++ b/drivers/misc/Kconfig
@@ -0,0 +1,10 @@
+menuconfig MISC
+	bool "Misc devices support"
+
+if MISC
+
+config ISL22316
+	bool "isl22316 digital controlled potentiometer"
+	depends on I2C
+
+endif
diff --git a/drivers/misc/Makefile b/drivers/misc/Makefile
new file mode 100644
index 0000000..1ab3a6c
--- /dev/null
+++ b/drivers/misc/Makefile
@@ -0,0 +1 @@
+obj-$(CONFIG_ISL22316) += isl22316.o
diff --git a/drivers/misc/isl22316.c b/drivers/misc/isl22316.c
new file mode 100644
index 0000000..aeb9f89
--- /dev/null
+++ b/drivers/misc/isl22316.c
@@ -0,0 +1,180 @@
+/*
+ * Copyright (C) 2007 Sascha Hauer, Pengutronix
+ *               2009 Marc Kleine-Budde <mkl@pengutronix.de>
+ * Copyright (C) 2010 Baruch Siach <baruch@tkos.co.il>
+ *               2011 Marc Reilly, Creative Product Design
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
+#include <common.h>
+#include <init.h>
+#include <driver.h>
+#include <xfuncs.h>
+#include <errno.h>
+
+#include <i2c/i2c.h>
+#include <misc/isl22316.h>
+
+#define DRIVERNAME		"isl22316"
+
+#define to_isl22316(a)		container_of(a, struct isl22316, cdev)
+
+#define ISL22316_WR		0
+#define ISL22316_ACR		2
+#define ISL22316_ACR_VOL	0x80
+#define ISL22316_ACR_SHDN	0x40
+#define ISL22316_ACR_WIP	0x20
+
+static struct isl22316 *isl22316_dev;
+
+struct isl22316 *isl22316_get(void)
+{
+	return isl22316_dev;
+}
+EXPORT_SYMBOL(isl22316_get);
+
+int isl22316_reg_read(struct isl22316 *isl22316, u8 reg, u8 *val)
+{
+	int ret;
+
+	ret = i2c_read_reg(isl22316->client, reg, val, 1);
+
+	return ret == 1 ? 0 : ret;
+}
+EXPORT_SYMBOL(isl22316_reg_read);
+
+int isl22316_reg_write(struct isl22316 *isl22316, u8 reg, u8 val)
+{
+	int ret;
+
+	ret = i2c_write_reg(isl22316->client, reg, &val, 1);
+
+	return ret == 1 ? 0 : ret;
+}
+EXPORT_SYMBOL(isl22316_reg_write);
+
+int isl22316_get_value(struct isl22316 *isl22316, u8 *val, int save)
+{
+	int ret;
+	u8 acr = ISL22316_ACR_SHDN;
+
+	if (!save)
+		acr |= ISL22316_ACR_VOL;
+
+	ret = isl22316_reg_write(isl22316, ISL22316_ACR, acr);
+	if (ret)
+		return ret;
+
+	ret = isl22316_reg_read(isl22316, ISL22316_WR, val);
+
+	return ret;
+}
+EXPORT_SYMBOL(isl22316_get_value);
+
+int isl22316_set_value(struct isl22316 *isl22316, u8 val, int save)
+{
+	int ret;
+	u8 acr = ISL22316_ACR_SHDN;
+
+	if (!save)
+		acr |= ISL22316_ACR_VOL;
+
+	ret = isl22316_reg_write(isl22316, ISL22316_ACR, acr);
+	if (ret)
+		return ret;
+
+	ret = isl22316_reg_write(isl22316, ISL22316_WR, val);
+
+	return ret;
+}
+EXPORT_SYMBOL(isl22316_set_value);
+
+static ssize_t isl22316_read(struct cdev *cdev, void *_buf, size_t count,
+		ulong offset, ulong flags)
+{
+	struct isl22316 *priv = to_isl22316(cdev);
+	u8 *buf = _buf;
+	size_t i = count;
+	int err;
+
+	while (i) {
+		err = isl22316_reg_read(priv, offset, buf);
+		if (err)
+			return (ssize_t)err;
+		buf++;
+		i--;
+		offset++;
+	}
+
+	return count;
+}
+
+static ssize_t isl22316_write(struct cdev *cdev, const void *_buf, size_t count,
+		ulong offset, ulong flags)
+{
+	struct isl22316 *isl22316 = to_isl22316(cdev);
+	const u8 *buf = _buf;
+	size_t i = count;
+	int err;
+
+	while (i) {
+		err = isl22316_reg_write(isl22316, offset, *buf);
+		if (err)
+			return (ssize_t)err;
+		buf++;
+		i--;
+		offset++;
+	}
+
+	return count;
+}
+
+static struct file_operations isl22316_fops = {
+	.lseek	= dev_lseek_default,
+	.read	= isl22316_read,
+	.write	= isl22316_write,
+};
+
+static int isl22316_probe(struct device_d *dev)
+{
+	if (isl22316_dev)
+		return -EBUSY;
+
+	isl22316_dev = xzalloc(sizeof(*isl22316_dev));
+	isl22316_dev->cdev.name = DRIVERNAME;
+	isl22316_dev->client = to_i2c_client(dev);
+	isl22316_dev->cdev.dev = dev;
+	isl22316_dev->cdev.size = 3;
+	isl22316_dev->cdev.ops = &isl22316_fops;
+
+	devfs_create(&isl22316_dev->cdev);
+
+	return 0;
+}
+
+static struct driver_d isl22316_driver = {
+	.name  = DRIVERNAME,
+	.probe = isl22316_probe,
+};
+
+static int isl22316_init(void)
+{
+	register_driver(&isl22316_driver);
+	return 0;
+}
+
+device_initcall(isl22316_init);
diff --git a/include/misc/isl22316.h b/include/misc/isl22316.h
new file mode 100644
index 0000000..3563dc3
--- /dev/null
+++ b/include/misc/isl22316.h
@@ -0,0 +1,26 @@
+/*
+ * Copyright (C) 2011 Creative Product Design
+ *
+ * This file is released under the GPLv2
+ */
+#ifndef __ISL22316_H
+#define __ISL22316_H
+
+struct isl22316 {
+	struct cdev		cdev;
+	struct i2c_client	*client;
+};
+
+struct isl22316 *isl22316_get(void);
+
+int isl22316_reg_read(struct isl22316 *isl22316, u8 reg, u8 *val);
+int isl22316_reg_write(struct isl22316 *isl22316, u8 reg, u8 val);
+
+/*
+ * Uses non volatile storage if save is non zero.
+ * (remember that saving to non-vol also sets the working value)
+ */
+int isl22316_get_value(struct isl22316 *isl22316, u8 *val, int save);
+int isl22316_set_value(struct isl22316 *isl22316, u8 val, int save);
+
+#endif
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
