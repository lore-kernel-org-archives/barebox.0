Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp4-g21.free.fr ([212.27.42.4])
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1NVjlD-0001ei-9k
	for barebox@lists.infradead.org; Fri, 15 Jan 2010 10:50:44 +0000
From: Eric Benard <eric@eukrea.com>
Date: Fri, 15 Jan 2010 11:50:18 +0100
Message-Id: <1263552619-4601-3-git-send-email-eric@eukrea.com>
In-Reply-To: <1263552619-4601-2-git-send-email-eric@eukrea.com>
References: <1263552619-4601-1-git-send-email-eric@eukrea.com>
	<1263552619-4601-2-git-send-email-eric@eukrea.com>
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
Subject: [PATCH 3/4] I2C : add NS LP3972 PMIC support
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org

Signed-off-by: Eric Benard <eric@eukrea.com>
---
 drivers/i2c/Kconfig  |    3 +
 drivers/i2c/Makefile |    1 +
 drivers/i2c/lp3972.c |  110 ++++++++++++++++++++++++++++++++++++++++++++++++++
 include/i2c/lp3972.h |    7 +++
 4 files changed, 121 insertions(+), 0 deletions(-)
 create mode 100644 drivers/i2c/lp3972.c
 create mode 100644 include/i2c/lp3972.h

diff --git a/drivers/i2c/Kconfig b/drivers/i2c/Kconfig
index 46723ed..f1b2949 100644
--- a/drivers/i2c/Kconfig
+++ b/drivers/i2c/Kconfig
@@ -13,4 +13,7 @@ config DRIVER_I2C_MC13892
 config DRIVER_I2C_MC9SDZ60
 	bool "MC9SDZ60 driver"
 
+config DRIVER_I2C_LP3972
+	bool "LP3972 driver"
+
 endif
diff --git a/drivers/i2c/Makefile b/drivers/i2c/Makefile
index 5dd642f..62d030b 100644
--- a/drivers/i2c/Makefile
+++ b/drivers/i2c/Makefile
@@ -4,3 +4,4 @@ obj-$(CONFIG_DRIVER_I2C_IMX) += i2c-imx.o
 
 obj-$(CONFIG_DRIVER_I2C_MC13892) += mc13892.o
 obj-$(CONFIG_DRIVER_I2C_MC9SDZ60) += mc9sdz60.o
+obj-$(CONFIG_DRIVER_I2C_LP3972) += lp3972.o
diff --git a/drivers/i2c/lp3972.c b/drivers/i2c/lp3972.c
new file mode 100644
index 0000000..9826699
--- /dev/null
+++ b/drivers/i2c/lp3972.c
@@ -0,0 +1,110 @@
+/*
+ * Copyright (C) 2007 Sascha Hauer, Pengutronix
+ *               2009 Marc Kleine-Budde <mkl@pengutronix.de>
+ *               2009 Eric Benard <eric@eukrea.com>
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
+#include <asm/byteorder.h>
+
+#define DRIVERNAME		"lp3972"
+
+struct lp_priv {
+	struct cdev		cdev;
+	struct i2c_client	*client;
+};
+
+#define to_lp_priv(a)		container_of(a, struct lp_priv, cdev)
+
+static struct lp_priv *lp_dev;
+
+struct i2c_client *lp3972_get_client(void)
+{
+	if (!lp_dev)
+		return NULL;
+
+	return lp_dev->client;
+}
+
+static u32 lp_read_reg(struct lp_priv *lp, int reg)
+{
+	u8 buf;
+
+	i2c_read_reg(lp->client, reg, &buf, sizeof(buf));
+
+	return buf;
+}
+
+static ssize_t lp_read(struct cdev *cdev, void *_buf, size_t count, ulong offset, ulong flags)
+{
+	struct lp_priv *priv = to_lp_priv(cdev);
+	int i = count;
+	u8 *buf = _buf;
+
+	while (i) {
+		*buf = lp_read_reg(priv, offset);
+		buf++;
+		i--;
+		offset++;
+	}
+
+	return count;
+}
+
+static struct file_operations lp_fops = {
+	.lseek	= dev_lseek_default,
+	.read	= lp_read,
+};
+
+static int lp_probe(struct device_d *dev)
+{
+	if (lp_dev)
+		return -EBUSY;
+
+	lp_dev = xzalloc(sizeof(struct lp_priv));
+	lp_dev->cdev.name = DRIVERNAME;
+	lp_dev->client = to_i2c_client(dev);
+	lp_dev->cdev.size = 256;
+	lp_dev->cdev.dev = dev;
+	lp_dev->cdev.ops = &lp_fops;
+
+	devfs_create(&lp_dev->cdev);
+
+	return 0;
+}
+
+static struct driver_d lp_driver = {
+	.name  = DRIVERNAME,
+	.probe = lp_probe,
+};
+
+static int lp_init(void)
+{
+	register_driver(&lp_driver);
+	return 0;
+}
+
+device_initcall(lp_init);
diff --git a/include/i2c/lp3972.h b/include/i2c/lp3972.h
new file mode 100644
index 0000000..edb5801
--- /dev/null
+++ b/include/i2c/lp3972.h
@@ -0,0 +1,7 @@
+#ifndef __ASM_ARCH_LP3972_H
+#define __ASM_ARCH_LP3972_H
+
+extern struct i2c_client *lp3972_get_client(void);
+
+#endif /* __ASM_ARCH_LP3972_H */
+
-- 
1.6.3.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
