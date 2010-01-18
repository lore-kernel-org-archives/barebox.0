Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NWqED-0006Ao-7S
	for barebox@lists.infradead.org; Mon, 18 Jan 2010 11:57:10 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Mon, 18 Jan 2010 12:56:24 +0100
Message-Id: <1263815791-10839-2-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1263815791-10839-1-git-send-email-mkl@pengutronix.de>
References: <1263815791-10839-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 1/8] mc9sdz60: clean up driver interface
To: barebox@lists.infradead.org
Cc: sha@pengutronix.de

Export mc9sdz60_reg_read, mc9sdz60_reg_write and mc9sdz60_set_bits
function instead of exposing the i2c interface.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 drivers/i2c/mc9sdz60.c |   84 ++++++++++++++++++++++++++++++++++++-----------
 include/i2c/mc9sdz60.h |   61 +++++++++++++++++++++++++++++++++-
 2 files changed, 123 insertions(+), 22 deletions(-)

diff --git a/drivers/i2c/mc9sdz60.c b/drivers/i2c/mc9sdz60.c
index 4b1068d..3580af8 100644
--- a/drivers/i2c/mc9sdz60.c
+++ b/drivers/i2c/mc9sdz60.c
@@ -26,45 +26,88 @@
 #include <errno.h>
 
 #include <i2c/i2c.h>
-
-#include <asm/byteorder.h>
+#include <i2c/mc9sdz60.h>
 
 #define DRIVERNAME		"mc9sdz60"
 
-struct mc_priv {
-	struct cdev		cdev;
-	struct i2c_client	*client;
-};
-
-#define to_mc_priv(a)		container_of(a, struct mc_priv, cdev)
+#define to_mc9sdz60(a)		container_of(a, struct mc9sdz60, cdev)
 
-static struct mc_priv *mc_dev;
+static struct mc9sdz60 *mc_dev;
 
-struct i2c_client *mc9sdz60_get_client(void)
+struct mc9sdz60 *mc9sdz60_get(void)
 {
 	if (!mc_dev)
 		return NULL;
 
-	return mc_dev->client;
+	return mc_dev;
 }
+EXPORT_SYMBOL(mc9sdz60_get);
 
-static u32 mc_read_reg(struct mc_priv *mc, int reg)
+int mc9sdz60_reg_read(struct mc9sdz60 *mc9sdz60, enum mc9sdz60_reg reg, u8 *val)
 {
-	u8 buf;
+	int ret;
 
-	i2c_read_reg(mc->client, reg, &buf, sizeof(buf));
+	ret = i2c_read_reg(mc9sdz60->client, reg, val, 1);
 
-	return buf;
+	return ret == 1 ? 0 : ret;
 }
+EXPORT_SYMBOL(mc9sdz60_reg_read)
+
+int mc9sdz60_reg_write(struct mc9sdz60 *mc9sdz60, enum mc9sdz60_reg reg, u8 val)
+{
+	int ret;
+
+	ret = i2c_write_reg(mc9sdz60->client, reg, &val, 1);
+
+	return ret == 1 ? 0 : ret;
+}
+EXPORT_SYMBOL(mc9sdz60_reg_write)
+
+int mc9sdz60_set_bits(struct mc9sdz60 *mc9sdz60, enum mc9sdz60_reg reg, u8 mask, u8 val)
+{
+	u8 tmp;
+	int err;
+
+	err = mc9sdz60_reg_read(mc9sdz60, reg, &tmp);
+	tmp = (tmp & ~mask) | val;
+
+	if (!err)
+		err = mc9sdz60_reg_write(mc9sdz60, reg, tmp);
+
+	return err;
+}
+EXPORT_SYMBOL(mc9sdz60_set_bits);
 
 static ssize_t mc_read(struct cdev *cdev, void *_buf, size_t count, ulong offset, ulong flags)
 {
-	struct mc_priv *priv = to_mc_priv(cdev);
-	int i = count;
+	struct mc9sdz60 *mc9sdz60 = to_mc9sdz60(cdev);
 	u8 *buf = _buf;
+	size_t i = count;
+	int err;
+
+	while (i) {
+		err = mc9sdz60_reg_read(mc9sdz60, offset, buf);
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
+static ssize_t mc_write(struct cdev *cdev, const void *_buf, size_t count, ulong offset, ulong flags)
+{
+	struct mc9sdz60 *mc9sdz60 = to_mc9sdz60(cdev);
+	const u8 *buf = _buf;
+	size_t i = count;
+	int err;
 
 	while (i) {
-		*buf = mc_read_reg(priv, offset);
+		err = mc9sdz60_reg_write(mc9sdz60, offset, *buf);
+		if (err)
+			return (ssize_t)err;
 		buf++;
 		i--;
 		offset++;
@@ -76,6 +119,7 @@ static ssize_t mc_read(struct cdev *cdev, void *_buf, size_t count, ulong offset
 static struct file_operations mc_fops = {
 	.lseek	= dev_lseek_default,
 	.read	= mc_read,
+	.write	= mc_write,
 };
 
 static int mc_probe(struct device_d *dev)
@@ -83,10 +127,10 @@ static int mc_probe(struct device_d *dev)
 	if (mc_dev)
 		return -EBUSY;
 
-	mc_dev = xzalloc(sizeof(struct mc_priv));
+	mc_dev = xzalloc(sizeof(struct mc9sdz60));
 	mc_dev->cdev.name = DRIVERNAME;
 	mc_dev->client = to_i2c_client(dev);
-	mc_dev->cdev.size = 256;
+	mc_dev->cdev.size = 64;		/* 35 known registers */
 	mc_dev->cdev.dev = dev;
 	mc_dev->cdev.ops = &mc_fops;
 
diff --git a/include/i2c/mc9sdz60.h b/include/i2c/mc9sdz60.h
index 04cfca0..4cc233e 100644
--- a/include/i2c/mc9sdz60.h
+++ b/include/i2c/mc9sdz60.h
@@ -1,7 +1,64 @@
+/*
+ * Copyright (C) 2009 Marc Kleine-Budde <mkl@pengutronix.de>
+ *
+ * This file is released under the GPLv2
+ *
+ * Derived from:
+ * - mcu_max8660-bus.h --  contains interface of the mc9sdz60 and max8660
+ *   Copyright 2004-2009 Freescale Semiconductor, Inc. All Rights Reserved.
+ *
+ */
+
 #ifndef __ASM_ARCH_MC9SDZ60_H
 #define __ASM_ARCH_MC9SDZ60_H
 
-extern struct i2c_client *mc9sdz60_get_client(void);
+enum mc9sdz60_reg {
+	MC9SDZ60_REG_VERSION		= 0x00,
+	MC9SDZ60_REG_SECS		= 0x01,
+	MC9SDZ60_REG_MINS		= 0x02,
+	MC9SDZ60_REG_HRS		= 0x03,
+	MC9SDZ60_REG_DAY		= 0x04,
+	MC9SDZ60_REG_DATE		= 0x05,
+	MC9SDZ60_REG_MONTH		= 0x06,
+	MC9SDZ60_REG_YEAR		= 0x07,
+	MC9SDZ60_REG_ALARM_SECS		= 0x08,
+	MC9SDZ60_REG_ALARM_MINS		= 0x09,
+	MC9SDZ60_REG_ALARM_HRS		= 0x0a,
+	MC9SDZ60_REG_TS_CONTROL		= 0x0b,
+	MC9SDZ60_REG_X_LOW		= 0x0c,
+	MC9SDZ60_REG_Y_LOW		= 0x0d,
+	MC9SDZ60_REG_XY_HIGH		= 0x0e,
+	MC9SDZ60_REG_X_LEFT_LOW		= 0x0f,
+	MC9SDZ60_REG_X_LEFT_HIGH	= 0x10,
+	MC9SDZ60_REG_X_RIGHT		= 0x11,
+	MC9SDZ60_REG_Y_TOP_LOW		= 0x12,
+	MC9SDZ60_REG_Y_TOP_HIGH		= 0x13,
+	MC9SDZ60_REG_Y_BOTTOM		= 0x14,
+	MC9SDZ60_REG_RESET_1		= 0x15,
+	MC9SDZ60_REG_RESET_2		= 0x16,
+	MC9SDZ60_REG_POWER_CTL		= 0x17,
+	MC9SDZ60_REG_DELAY_CONFIG	= 0x18,
+	MC9SDZ60_REG_GPIO_1		= 0x19,
+	MC9SDZ60_REG_GPIO_2		= 0x1a,
+	MC9SDZ60_REG_KPD_1		= 0x1b,
+	MC9SDZ60_REG_KPD_2		= 0x1c,
+	MC9SDZ60_REG_KPD_CONTROL	= 0x1d,
+	MC9SDZ60_REG_INT_ENABLE_1	= 0x1e,
+	MC9SDZ60_REG_INT_ENABLE_2	= 0x1f,
+	MC9SDZ60_REG_INT_FLAG_1		= 0x20,
+	MC9SDZ60_REG_INT_FLAG_2		= 0x21,
+	MC9SDZ60_REG_DES_FLAG		= 0x22,
+};
 
-#endif /* __ASM_ARCH_MC9SDZ60_H */
+struct mc9sdz60 {
+	struct cdev		cdev;
+	struct i2c_client	*client;
+};
+
+extern struct mc9sdz60 *mc9sdz60_get(void);
 
+extern int mc9sdz60_reg_read(struct mc9sdz60 *priv, enum mc9sdz60_reg reg, u8 *val);
+extern int mc9sdz60_reg_write(struct mc9sdz60 *priv, enum mc9sdz60_reg reg, u8 val);
+extern int mc9sdz60_set_bits(struct mc9sdz60 *priv, enum mc9sdz60_reg reg, u8 mask, u8 val);
+
+#endif /* __ASM_ARCH_MC9SDZ60_H */
-- 
1.6.6


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
