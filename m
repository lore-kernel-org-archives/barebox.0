Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NWqED-0006E2-Kh
	for barebox@lists.infradead.org; Mon, 18 Jan 2010 11:57:13 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Mon, 18 Jan 2010 12:56:25 +0100
Message-Id: <1263815791-10839-3-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1263815791-10839-2-git-send-email-mkl@pengutronix.de>
References: <1263815791-10839-1-git-send-email-mkl@pengutronix.de>
	<1263815791-10839-2-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 2/8] mc13892: clean up driver interface
To: barebox@lists.infradead.org
Cc: sha@pengutronix.de

Export mc13892_reg_read, mc13892_reg_write and mc13892_set_bits
function instead of exposing the i2c interface.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 drivers/i2c/mc13892.c |   91 ++++++++++++++++++++++++++++++++++++++----------
 include/i2c/mc13892.h |   90 +++++++++++++++++++++++++++++++++++++++++++++++-
 2 files changed, 160 insertions(+), 21 deletions(-)

diff --git a/drivers/i2c/mc13892.c b/drivers/i2c/mc13892.c
index 54661d4..67d4232 100644
--- a/drivers/i2c/mc13892.c
+++ b/drivers/i2c/mc13892.c
@@ -26,47 +26,99 @@
 #include <errno.h>
 
 #include <i2c/i2c.h>
-
-#include <asm/byteorder.h>
+#include <i2c/mc13892.h>
 
 #define DRIVERNAME		"mc13892"
 
-struct mc_priv {
-	struct cdev		cdev;
-	struct i2c_client	*client;
-};
-
-#define to_mc_priv(a)		container_of(a, struct mc_priv, cdev)
+#define to_mc13892(a)		container_of(a, struct mc13892, cdev)
 
-static struct mc_priv *mc_dev;
+static struct mc13892 *mc_dev;
 
-struct i2c_client *mc13892_get_client(void)
+struct mc13892 *mc13892_get(void)
 {
 	if (!mc_dev)
 		return NULL;
 
-	return mc_dev->client;
+	return mc_dev;
+}
+EXPORT_SYMBOL(mc13892_get);
+
+int mc13892_reg_read(struct mc13892 *mc13892, enum mc13892_reg reg, u32 *val)
+{
+	u8 buf[3];
+	int ret;
+
+	ret = i2c_read_reg(mc13892->client, reg, buf, 3);
+	*val = buf[0] << 16 | buf[1] << 8 | buf[2] << 0;
+
+	return ret == 3 ? 0 : ret;
 }
+EXPORT_SYMBOL(mc13892_reg_read)
 
-static u32 mc_read_reg(struct mc_priv *mc, int reg)
+int mc13892_reg_write(struct mc13892 *mc13892, enum mc13892_reg reg, u32 val)
 {
-	u32 buf;
+	u8 buf[] = {
+		val >> 16,
+		val >>  8,
+		val >>  0,
+	};
+	int ret;
+
+	ret = i2c_write_reg(mc13892->client, reg, buf, 3);
+
+	return ret == 3 ? 0 : ret;
+}
+EXPORT_SYMBOL(mc13892_reg_write)
+
+int mc13892_set_bits(struct mc13892 *mc13892, enum mc13892_reg reg, u32 mask, u32 val)
+{
+	u32 tmp;
+	int err;
+
+	err = mc13892_reg_read(mc13892, reg, &tmp);
+	tmp = (tmp & ~mask) | val;
 
-	i2c_read_reg(mc->client, reg, (u8 *)&buf, sizeof(buf));
+	if (!err)
+		err = mc13892_reg_write(mc13892, reg, tmp);
 
-	return buf;
+	return err;
 }
+EXPORT_SYMBOL(mc13892_set_bits);
 
 static ssize_t mc_read(struct cdev *cdev, void *_buf, size_t count, ulong offset, ulong flags)
 {
-	struct mc_priv *priv = to_mc_priv(cdev);
-	int i = count >> 2;
+	struct mc13892 *priv = to_mc13892(cdev);
 	u32 *buf = _buf;
+	size_t i = count >> 2;
+	int err;
+
+	offset >>= 2;
+
+	while (i) {
+		err = mc13892_reg_read(priv, offset, buf);
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
+	struct mc13892 *mc13892 = to_mc13892(cdev);
+	const u32 *buf = _buf;
+	size_t i = count >> 2;
+	int err;
 
 	offset >>= 2;
 
 	while (i) {
-		*buf = mc_read_reg(priv, offset);
+		err = mc13892_reg_write(mc13892, offset, *buf);
+		if (err)
+			return (ssize_t)err;
 		buf++;
 		i--;
 		offset++;
@@ -78,6 +130,7 @@ static ssize_t mc_read(struct cdev *cdev, void *_buf, size_t count, ulong offset
 static struct file_operations mc_fops = {
 	.lseek	= dev_lseek_default,
 	.read	= mc_read,
+	.write	= mc_write,
 };
 
 static int mc_probe(struct device_d *dev)
@@ -85,7 +138,7 @@ static int mc_probe(struct device_d *dev)
 	if (mc_dev)
 		return -EBUSY;
 
-	mc_dev = xzalloc(sizeof(struct mc_priv));
+	mc_dev = xzalloc(sizeof(struct mc13892));
 	mc_dev->cdev.name = DRIVERNAME;
 	mc_dev->client = to_i2c_client(dev);
 	mc_dev->cdev.size = 256;
diff --git a/include/i2c/mc13892.h b/include/i2c/mc13892.h
index 2f44f6c..112d05b 100644
--- a/include/i2c/mc13892.h
+++ b/include/i2c/mc13892.h
@@ -1,7 +1,93 @@
+/*
+ * Copyright (C) 2009 Marc Kleine-Budde <mkl@pengutronix.de>
+ *
+ * This file is released under the GPLv2
+ *
+ * Derived from:
+ * - arch-mxc/pmic_external.h --  contains interface of the PMIC protocol driver
+ *   Copyright 2008-2009 Freescale Semiconductor, Inc. All Rights Reserved.
+ *
+ */
+
 #ifndef __ASM_ARCH_MC13892_H
 #define __ASM_ARCH_MC13892_H
 
-extern struct i2c_client *mc13892_get_client(void);
+enum mc13892_reg {
+	MC13892_REG_INT_STATUS0		= 0x00,
+	MC13892_REG_INT_MASK0		= 0x01,
+	MC13892_REG_INT_SENSE0		= 0x02,
+	MC13892_REG_INT_STATUS1		= 0x03,
+	MC13892_REG_INT_MASK1		= 0x04,
+	MC13892_REG_INT_SENSE1		= 0x05,
+	MC13892_REG_PU_MODE_S		= 0x06,
+	MC13892_REG_IDENTIFICATION	= 0x07,
+	MC13892_REG_UNUSED0		= 0x08,
+	MC13892_REG_ACC0		= 0x09,
+	MC13892_REG_ACC1		= 0x0a,
+	MC13892_REG_UNUSED1		= 0x0b,
+	MC13892_REG_UNUSED2		= 0x0c,
+	MC13892_REG_POWER_CTL0		= 0x0d,
+	MC13892_REG_POWER_CTL1		= 0x0e,
+	MC13892_REG_POWER_CTL2		= 0x0f,
+	MC13892_REG_REGEN_ASSIGN	= 0x10,
+	MC13892_REG_UNUSED3		= 0x11,
+	MC13892_REG_MEM_A		= 0x12,
+	MC13892_REG_MEM_B		= 0x13,
+	MC13892_REG_RTC_TIME		= 0x14,
+	MC13892_REG_RTC_ALARM		= 0x15,
+	MC13892_REG_RTC_DAY		= 0x16,
+	MC13892_REG_RTC_DAY_ALARM	= 0x17,
+	MC13892_REG_SW_0		= 0x18,
+	MC13892_REG_SW_1		= 0x19,
+	MC13892_REG_SW_2		= 0x1a,
+	MC13892_REG_SW_3		= 0x1b,
+	MC13892_REG_SW_4		= 0x1c,
+	MC13892_REG_SW_5		= 0x1d,
+	MC13892_REG_SETTING_0		= 0x1e,
+	MC13892_REG_SETTING_1		= 0x1f,
+	MC13892_REG_MODE_0		= 0x20,
+	MC13892_REG_MODE_1		= 0x21,
+	MC13892_REG_POWER_MISC		= 0x22,
+	MC13892_REG_UNUSED4		= 0x23,
+	MC13892_REG_UNUSED5		= 0x24,
+	MC13892_REG_UNUSED6		= 0x25,
+	MC13892_REG_UNUSED7		= 0x26,
+	MC13892_REG_UNUSED8		= 0x27,
+	MC13892_REG_UNUSED9		= 0x28,
+	MC13892_REG_UNUSED10		= 0x29,
+	MC13892_REG_UNUSED11		= 0x2a,
+	MC13892_REG_ADC0		= 0x2b,
+	MC13892_REG_ADC1		= 0x2c,
+	MC13892_REG_ADC2		= 0x2d,
+	MC13892_REG_ADC3		= 0x2e,
+	MC13892_REG_ADC4		= 0x2f,
+	MC13892_REG_CHARGE		= 0x30,
+	MC13892_REG_USB0		= 0x31,
+	MC13892_REG_USB1		= 0x32,
+	MC13892_REG_LED_CTL0		= 0x33,
+	MC13892_REG_LED_CTL1		= 0x34,
+	MC13892_REG_LED_CTL2		= 0x35,
+	MC13892_REG_LED_CTL3		= 0x36,
+	MC13892_REG_UNUSED12		= 0x37,
+	MC13892_REG_UNUSED13		= 0x38,
+	MC13892_REG_TRIM0		= 0x39,
+	MC13892_REG_TRIM1		= 0x3a,
+	MC13892_REG_TEST0		= 0x3b,
+	MC13892_REG_TEST1		= 0x3c,
+	MC13892_REG_TEST2		= 0x3d,
+	MC13892_REG_TEST3		= 0x3e,
+	MC13892_REG_TEST4		= 0x3f,
+};
 
-#endif /* __ASM_ARCH_MC13892_H */
+struct mc13892 {
+	struct cdev		cdev;
+	struct i2c_client	*client;
+};
+
+extern struct mc13892 *mc13892_get(void);
 
+extern int mc13892_reg_read(struct mc13892 *mc13892, enum mc13892_reg reg, u32 *val);
+extern int mc13892_reg_write(struct mc13892 *mc13892, enum mc13892_reg reg, u32 val);
+extern int mc13892_set_bits(struct mc13892 *mc13892, enum mc13892_reg reg, u32 mask, u32 val);
+
+#endif /* __ASM_ARCH_MC13892_H */
-- 
1.6.6


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
