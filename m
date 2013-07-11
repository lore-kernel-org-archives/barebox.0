Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp9.mail.ru ([94.100.176.54])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UxNPo-0000wB-Bi
 for barebox@lists.infradead.org; Thu, 11 Jul 2013 20:24:40 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Fri, 12 Jul 2013 00:24:07 +0400
Message-Id: <1373574247-19502-3-git-send-email-shc_work@mail.ru>
In-Reply-To: <1373574247-19502-1-git-send-email-shc_work@mail.ru>
References: <1373574247-19502-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 3/3] mfd: mc13xxx: Add support for MC34708
To: barebox@lists.infradead.org

This patch moves support for MC34708 PMIC into mc13xxx driver.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/boards/freescale-mx53-loco/board.c    |   6 +-
 arch/arm/configs/freescale_mx53_loco_defconfig |   2 +-
 arch/arm/configs/imx_v7_defconfig              |   1 -
 drivers/mfd/Kconfig                            |   6 +-
 drivers/mfd/Makefile                           |   1 -
 drivers/mfd/mc13xxx.c                          |  20 ++
 drivers/mfd/mc34708.c                          | 295 -------------------------
 include/mfd/mc34708.h                          | 109 ---------
 8 files changed, 25 insertions(+), 415 deletions(-)
 delete mode 100644 drivers/mfd/mc34708.c
 delete mode 100644 include/mfd/mc34708.h

diff --git a/arch/arm/boards/freescale-mx53-loco/board.c b/arch/arm/boards/freescale-mx53-loco/board.c
index 3c8842c..15dc591 100644
--- a/arch/arm/boards/freescale-mx53-loco/board.c
+++ b/arch/arm/boards/freescale-mx53-loco/board.c
@@ -23,7 +23,7 @@
 #include <fs.h>
 #include <io.h>
 
-#include <mfd/mc34708.h>
+#include <mfd/mc13xxx.h>
 #include <i2c/i2c.h>
 
 #include <asm/armlinux.h>
@@ -80,7 +80,7 @@ extern char flash_header_imx53_loco_end[];
 
 static int loco_late_init(void)
 {
-	struct mc34708 *mc34708;
+	struct mc13xxx *mc34708;
 	int rev;
 
 	if (!of_machine_is_compatible("fsl,imx53-qsb"))
@@ -90,7 +90,7 @@ static int loco_late_init(void)
 
 	devfs_add_partition("mmc0", 0x40000, 0x20000, DEVFS_PARTITION_FIXED, "env0");
 
-	mc34708 = mc34708_get();
+	mc34708 = mc13xxx_get();
 	if (mc34708) {
 		/* get the board revision from fuse */
 		rev = readl(MX53_IIM_BASE_ADDR + 0x878);
diff --git a/arch/arm/configs/freescale_mx53_loco_defconfig b/arch/arm/configs/freescale_mx53_loco_defconfig
index dbf4f4e..8863944 100644
--- a/arch/arm/configs/freescale_mx53_loco_defconfig
+++ b/arch/arm/configs/freescale_mx53_loco_defconfig
@@ -78,7 +78,7 @@ CONFIG_USB_EHCI=y
 CONFIG_USB_STORAGE=y
 CONFIG_MCI=y
 CONFIG_MCI_IMX_ESDHC=y
-CONFIG_MFD_MC34708=y
+CONFIG_MFD_MC13XXX=y
 CONFIG_WATCHDOG=y
 CONFIG_WATCHDOG_IMX=y
 CONFIG_FS_TFTP=y
diff --git a/arch/arm/configs/imx_v7_defconfig b/arch/arm/configs/imx_v7_defconfig
index e088c2c..9655ac2 100644
--- a/arch/arm/configs/imx_v7_defconfig
+++ b/arch/arm/configs/imx_v7_defconfig
@@ -110,7 +110,6 @@ CONFIG_MCI_MMC_BOOT_PARTITIONS=y
 CONFIG_MCI_IMX_ESDHC=y
 CONFIG_MFD_MC13XXX=y
 CONFIG_MFD_MC34704=y
-CONFIG_MFD_MC34708=y
 CONFIG_MFD_MC9SDZ60=y
 CONFIG_MFD_STMPE=y
 CONFIG_LED=y
diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
index afb87db..8873764 100644
--- a/drivers/mfd/Kconfig
+++ b/drivers/mfd/Kconfig
@@ -6,16 +6,12 @@ config MFD_LP3972
 
 config MFD_MC13XXX
 	depends on I2C || SPI
-	bool "MC13XXX a.k.a. PMIC driver (MC13783, MC13892)"
+	bool "MC13XXX a.k.a. PMIC driver (MC13783, MC13892, MC34708)"
 
 config MFD_MC34704
 	depends on I2C
 	bool "MC34704 PMIC driver"
 
-config MFD_MC34708
-	depends on I2C || SPI
-	bool "MC34708 PMIC driver"
-
 config MFD_MC9SDZ60
 	depends on I2C
 	bool "MC9SDZ60 driver"
diff --git a/drivers/mfd/Makefile b/drivers/mfd/Makefile
index 1afd52b..2ad766d 100644
--- a/drivers/mfd/Makefile
+++ b/drivers/mfd/Makefile
@@ -1,7 +1,6 @@
 obj-$(CONFIG_MFD_LP3972)	+= lp3972.o
 obj-$(CONFIG_MFD_MC13XXX)	+= mc13xxx.o
 obj-$(CONFIG_MFD_MC34704)	+= mc34704.o
-obj-$(CONFIG_MFD_MC34708)	+= mc34708.o
 obj-$(CONFIG_MFD_MC9SDZ60)	+= mc9sdz60.o
 obj-$(CONFIG_MFD_STMPE)		+= stmpe-i2c.o
 obj-$(CONFIG_MFD_SYSCON)	+= syscon.o
diff --git a/drivers/mfd/mc13xxx.c b/drivers/mfd/mc13xxx.c
index 556f0b2..cf4c02a 100644
--- a/drivers/mfd/mc13xxx.c
+++ b/drivers/mfd/mc13xxx.c
@@ -287,6 +287,20 @@ static int __init mc13892_revision(struct mc13xxx *mc13xxx)
 	return rev;
 }
 
+static int __init mc34708_revision(struct mc13xxx *mc13xxx)
+{
+	unsigned int rev_id;
+
+	mc13xxx_reg_read(mc13xxx, MC13XXX_REG_IDENTIFICATION, &rev_id);
+
+	if (rev_id > 0xfff)
+		return -ENODEV;
+
+	dev_info(mc_dev->cdev.dev, "Found MC34708 ID: 0x%03x\n", rev_id);
+
+	return (int)rev_id;
+}
+
 static int __init mc13xxx_probe(struct device_d *dev)
 {
 	struct mc13xxx_devtype *devtype;
@@ -346,15 +360,21 @@ static struct mc13xxx_devtype mc13892_devtype = {
 	.revision	= mc13892_revision,
 };
 
+static struct mc13xxx_devtype mc34708_devtype = {
+	.revision	= mc34708_revision,
+};
+
 static struct platform_device_id mc13xxx_ids[] = {
 	{ .name = "mc13783", .driver_data = (ulong)&mc13783_devtype, },
 	{ .name = "mc13892", .driver_data = (ulong)&mc13892_devtype, },
+	{ .name = "mc34708", .driver_data = (ulong)&mc34708_devtype, },
 	{ }
 };
 
 static __maybe_unused struct of_device_id mc13xxx_dt_ids[] = {
 	{ .compatible = "fsl,mc13783", .data = (ulong)&mc13783_devtype, },
 	{ .compatible = "fsl,mc13892", .data = (ulong)&mc13892_devtype, },
+	{ .compatible = "fsl,mc34708", .data = (ulong)&mc34708_devtype, },
 	{ }
 };
 
diff --git a/drivers/mfd/mc34708.c b/drivers/mfd/mc34708.c
deleted file mode 100644
index 6fea2e2..0000000
--- a/drivers/mfd/mc34708.c
+++ /dev/null
@@ -1,295 +0,0 @@
-/*
- * Copyright (C) 2007 Sascha Hauer, Pengutronix
- *               2009 Marc Kleine-Budde <mkl@pengutronix.de>
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- *
- */
-
-#include <common.h>
-#include <init.h>
-#include <driver.h>
-#include <xfuncs.h>
-#include <errno.h>
-#include <spi/spi.h>
-#include <malloc.h>
-
-#include <i2c/i2c.h>
-#include <mfd/mc34708.h>
-
-#define DRIVERNAME		"mc34708"
-
-#define to_mc34708(a)		container_of(a, struct mc34708, cdev)
-
-static struct mc34708 *mc_dev;
-
-struct mc34708 *mc34708_get(void)
-{
-	if (!mc_dev)
-		return NULL;
-
-	return mc_dev;
-}
-EXPORT_SYMBOL(mc34708_get);
-
-#ifdef CONFIG_SPI
-static int spi_rw(struct spi_device *spi, void * buf, size_t len)
-{
-	int ret;
-
-	struct spi_transfer t = {
-		.tx_buf = (const void *)buf,
-		.rx_buf = buf,
-		.len = len,
-		.cs_change = 0,
-		.delay_usecs = 0,
-	};
-	struct spi_message m;
-
-	spi_message_init(&m);
-	spi_message_add_tail(&t, &m);
-
-	if ((ret = spi_sync(spi, &m)))
-		return ret;
-	return 0;
-}
-
-#define MXC_PMIC_REG_NUM(reg)	(((reg) & 0x3f) << 25)
-#define MXC_PMIC_WRITE		(1 << 31)
-
-static int mc34708_spi_reg_read(struct mc34708 *mc34708, enum mc34708_reg reg, u32 *val)
-{
-	uint32_t buf;
-
-	buf = MXC_PMIC_REG_NUM(reg);
-
-	spi_rw(mc34708->spi, &buf, 4);
-
-	*val = buf;
-
-	return 0;
-}
-
-static int mc34708_spi_reg_write(struct mc34708 *mc34708, enum mc34708_reg reg, u32 val)
-{
-	uint32_t buf = MXC_PMIC_REG_NUM(reg) | MXC_PMIC_WRITE | (val & 0xffffff);
-
-	spi_rw(mc34708->spi, &buf, 4);
-
-	return 0;
-}
-#endif
-
-#ifdef CONFIG_I2C
-static int mc34708_i2c_reg_read(struct mc34708 *mc34708, enum mc34708_reg reg, u32 *val)
-{
-	u8 buf[3];
-	int ret;
-
-	ret = i2c_read_reg(mc34708->client, reg, buf, 3);
-	*val = buf[0] << 16 | buf[1] << 8 | buf[2] << 0;
-
-	return ret == 3 ? 0 : ret;
-}
-
-static int mc34708_i2c_reg_write(struct mc34708 *mc34708, enum mc34708_reg reg, u32 val)
-{
-	u8 buf[] = {
-		val >> 16,
-		val >>  8,
-		val >>  0,
-	};
-	int ret;
-
-	ret = i2c_write_reg(mc34708->client, reg, buf, 3);
-
-	return ret == 3 ? 0 : ret;
-}
-#endif
-
-int mc34708_reg_write(struct mc34708 *mc34708, enum mc34708_reg reg, u32 val)
-{
-#ifdef CONFIG_I2C
-	if (mc34708->mode == MC34708_MODE_I2C)
-		return mc34708_i2c_reg_write(mc34708, reg, val);
-#endif
-#ifdef CONFIG_SPI
-	if (mc34708->mode == MC34708_MODE_SPI)
-		return mc34708_spi_reg_write(mc34708, reg, val);
-#endif
-	return -EINVAL;
-}
-EXPORT_SYMBOL(mc34708_reg_write);
-
-int mc34708_reg_read(struct mc34708 *mc34708, enum mc34708_reg reg, u32 *val)
-{
-#ifdef CONFIG_I2C
-	if (mc34708->mode == MC34708_MODE_I2C)
-		return mc34708_i2c_reg_read(mc34708, reg, val);
-#endif
-#ifdef CONFIG_SPI
-	if (mc34708->mode == MC34708_MODE_SPI)
-		return mc34708_spi_reg_read(mc34708, reg, val);
-#endif
-	return -EINVAL;
-}
-EXPORT_SYMBOL(mc34708_reg_read);
-
-int mc34708_set_bits(struct mc34708 *mc34708, enum mc34708_reg reg, u32 mask, u32 val)
-{
-	u32 tmp;
-	int err;
-
-	err = mc34708_reg_read(mc34708, reg, &tmp);
-	tmp = (tmp & ~mask) | val;
-
-	if (!err)
-		err = mc34708_reg_write(mc34708, reg, tmp);
-
-	return err;
-}
-EXPORT_SYMBOL(mc34708_set_bits);
-
-static ssize_t mc_read(struct cdev *cdev, void *_buf, size_t count,
-		loff_t offset, ulong flags)
-{
-	struct mc34708 *priv = to_mc34708(cdev);
-	u32 *buf = _buf;
-	size_t i = count >> 2;
-	int err;
-
-	offset >>= 2;
-
-	while (i) {
-		err = mc34708_reg_read(priv, offset, buf);
-		if (err)
-			return (ssize_t)err;
-		buf++;
-		i--;
-		offset++;
-	}
-
-	return count;
-}
-
-static ssize_t mc_write(struct cdev *cdev, const void *_buf, size_t count,
-		loff_t offset, ulong flags)
-{
-	struct mc34708 *mc34708 = to_mc34708(cdev);
-	const u32 *buf = _buf;
-	size_t i = count >> 2;
-	int err;
-
-	offset >>= 2;
-
-	while (i) {
-		err = mc34708_reg_write(mc34708, offset, *buf);
-		if (err)
-			return (ssize_t)err;
-		buf++;
-		i--;
-		offset++;
-	}
-
-	return count;
-}
-
-static struct file_operations mc_fops = {
-	.lseek	= dev_lseek_default,
-	.read	= mc_read,
-	.write	= mc_write,
-};
-
-static int mc34708_query_revision(struct mc34708 *mc34708)
-{
-	unsigned int rev_id;
-	int rev;
-
-	mc34708_reg_read(mc34708, 7, &rev_id);
-
-	if (rev_id > 0xFFF)
-		return -EINVAL;
-
-	rev = rev_id & 0xFFF;
-
-	dev_info(mc_dev->cdev.dev, "MC34708 ID: 0x%04x\n", rev);
-
-	mc34708->revision = rev;
-
-	return rev;
-}
-
-static int mc_probe(struct device_d *dev, enum mc34708_mode mode)
-{
-	int rev;
-
-	if (mc_dev)
-		return -EBUSY;
-
-	mc_dev = xzalloc(sizeof(struct mc34708));
-	mc_dev->mode = mode;
-	mc_dev->cdev.name = DRIVERNAME;
-	if (mode == MC34708_MODE_I2C) {
-		mc_dev->client = to_i2c_client(dev);
-	}
-	if (mode == MC34708_MODE_SPI) {
-		mc_dev->spi = dev->type_data;
-		mc_dev->spi->mode = SPI_MODE_0 | SPI_CS_HIGH;
-		mc_dev->spi->bits_per_word = 32;
-	}
-	mc_dev->cdev.size = 256;
-	mc_dev->cdev.dev = dev;
-	mc_dev->cdev.ops = &mc_fops;
-
-	rev = mc34708_query_revision(mc_dev);
-	if (rev < 0) {
-		free(mc_dev);
-		mc_dev = NULL;
-		return -EINVAL;
-	}
-
-	devfs_create(&mc_dev->cdev);
-
-	return 0;
-}
-
-#ifdef CONFIG_I2C
-static int mc_i2c_probe(struct device_d *dev)
-{
-	return mc_probe(dev, MC34708_MODE_I2C);
-}
-
-static struct driver_d mc_i2c_driver = {
-	.name  = "mc34708-i2c",
-	.probe = mc_i2c_probe,
-};
-
-static int mc_i2c_init(void)
-{
-	return i2c_driver_register(&mc_i2c_driver);
-}
-
-device_initcall(mc_i2c_init);
-#endif
-
-#ifdef CONFIG_SPI
-static int mc_spi_probe(struct device_d *dev)
-{
-	return mc_probe(dev, MC34708_MODE_SPI);
-}
-
-static struct driver_d mc_spi_driver = {
-	.name  = "mc34708-spi",
-	.probe = mc_spi_probe,
-};
-device_spi_driver(mc_spi_driver);
-#endif
diff --git a/include/mfd/mc34708.h b/include/mfd/mc34708.h
deleted file mode 100644
index 541c47f..0000000
--- a/include/mfd/mc34708.h
+++ /dev/null
@@ -1,109 +0,0 @@
-/*
- * Copyright (C) 2009 Marc Kleine-Budde <mkl@pengutronix.de>
- *
- * This file is released under the GPLv2
- *
- * Derived from:
- * - arch-mxc/pmic_external.h --  contains interface of the PMIC protocol driver
- *   Copyright 2008-2009 Freescale Semiconductor, Inc. All Rights Reserved.
- *
- */
-
-#ifndef __ASM_ARCH_MC34708_H
-#define __ASM_ARCH_MC34708_H
-
-enum mc34708_reg {
-	MC34708_REG_INT_STATUS0		= 0x00,
-	MC34708_REG_INT_MASK0		= 0x01,
-	MC34708_REG_INT_SENSE0		= 0x02,
-	MC34708_REG_INT_STATUS1		= 0x03,
-	MC34708_REG_INT_MASK1		= 0x04,
-	MC34708_REG_INT_SENSE1		= 0x05,
-	MC34708_REG_PU_MODE_S		= 0x06,
-	MC34708_REG_IDENTIFICATION	= 0x07,
-	MC34708_REG_REG_FAULT_S		= 0x08,
-	MC34708_REG_ACC0		= 0x09,
-	MC34708_REG_ACC1		= 0x0a,
-	MC34708_REG_ACC2		= 0x0b,
-	MC34708_REG_UNUSED0		= 0x0c,
-	MC34708_REG_POWER_CTL0		= 0x0d,
-	MC34708_REG_POWER_CTL1		= 0x0e,
-	MC34708_REG_POWER_CTL2		= 0x0f,
-	MC34708_REG_MEM_A		= 0x10,
-	MC34708_REG_MEM_B		= 0x11,
-	MC34708_REG_MEM_C		= 0x12,
-	MC34708_REG_MEM_D		= 0x13,
-	MC34708_REG_RTC_TIME		= 0x14,
-	MC34708_REG_RTC_ALARM		= 0x15,
-	MC34708_REG_RTC_DAY		= 0x16,
-	MC34708_REG_RTC_DAY_ALARM	= 0x17,
-	MC34708_REG_1			= 0x18,
-	MC34708_REG_2_3			= 0x19,
-	MC34708_REG_4			= 0x1a,
-	MC34708_REG_5			= 0x1b,
-	MC34708_REG_1_2_MODE		= 0x1c,
-	MC34708_REG_3_4_5_MODE		= 0x1d,
-	MC34708_REG_SETTING_0		= 0x1e,
-	MC34708_REG_SWBST_CTRL		= 0x1f,
-	MC34708_REG_MODE_0		= 0x20,
-	MC34708_REG_GPIOLV0_CTRL	= 0x21,
-	MC34708_REG_GPIOLV1_CTRL	= 0x22,
-	MC34708_REG_GPIOLV2_CTRL	= 0x23,
-	MC34708_REG_GPIOLV3_CTRL	= 0x24,
-	MC34708_REG_USB_TIMING		= 0x25,
-	MC34708_REG_USB_BUTTON		= 0x26,
-	MC34708_REG_USB_CTRL		= 0x27,
-	MC34708_REG_USB_DEVTYPE		= 0x28,
-	MC34708_REG_UNUSED1		= 0x29,
-	MC34708_REG_UNUSED2		= 0x2a,
-	MC34708_REG_ADC0		= 0x2b,
-	MC34708_REG_ADC1		= 0x2c,
-	MC34708_REG_ADC2		= 0x2d,
-	MC34708_REG_ADC3		= 0x2e,
-	MC34708_REG_ADC4		= 0x2f,
-	MC34708_REG_ADC5		= 0x30,
-	MC34708_REG_ADC6		= 0x31,
-	MC34708_REG_ADC7		= 0x32,
-	MC34708_REG_BAT_PROFILE		= 0x33,
-	MC34708_REG_CHRG_DEBOUNCE	= 0x34,
-	MC34708_REG_CHRG_SOURCE		= 0x35,
-	MC34708_REG_CHRG_LED_CTRL	= 0x36,
-	MC34708_REG_PWM_CTRL		= 0x37,
-	MC34708_REG_UNUSED3		= 0x38,
-	MC34708_REG_UNUSED4		= 0x39,
-	MC34708_REG_UNUSED5		= 0x3a,
-	MC34708_REG_UNUSED6		= 0x3b,
-	MC34708_REG_UNUSED7		= 0x3c,
-	MC34708_REG_UNUSED8		= 0x3d,
-	MC34708_REG_UNUSED9		= 0x3e,
-	MC34708_REG_UNUSED10		= 0x3f,
-};
-
-
-enum mc34708_mode {
-	MC34708_MODE_I2C,
-	MC34708_MODE_SPI,
-};
-
-struct mc34708 {
-	struct cdev		cdev;
-	struct i2c_client	*client;
-	struct spi_device	*spi;
-	enum mc34708_mode	mode;
-	unsigned int		revision;
-};
-
-#ifdef CONFIG_MFD_MC34708
-struct mc34708 *mc34708_get(void);
-#else
-static inline struct mc34708 *mc34708_get(void)
-{
-	return NULL;
-}
-#endif
-
-extern int mc34708_reg_read(struct mc34708 *mc34708, enum mc34708_reg reg, u32 *val);
-extern int mc34708_reg_write(struct mc34708 *mc34708, enum mc34708_reg reg, u32 val);
-extern int mc34708_set_bits(struct mc34708 *mc34708, enum mc34708_reg reg, u32 mask, u32 val);
-
-#endif /* __ASM_ARCH_MC34708_H */
-- 
1.8.1.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
