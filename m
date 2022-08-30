Delivery-date: Tue, 30 Aug 2022 10:15:28 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oSwPA-001Vxm-6a
	for lore@lore.pengutronix.de; Tue, 30 Aug 2022 10:15:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oSwP6-0002vP-PU
	for lore@pengutronix.de; Tue, 30 Aug 2022 10:15:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=5F4t/pr1js4EZb5XJTKpTPO0+b9EdTk21k2lIS8Uuto=; b=QKzLHIC3farMZmaQbVWq38YqhP
	Fl/8DHv1OUmwBZbcPKWYVo7+Dg7JE/PGMYhgIQfbMsLp62v8lvbSsNAq8+ovQFBnz97EhSVvnksI4
	GHjGZ2nG3PnNmsrV66T4QPU0VMKRe4ICYtnv+gzDH4BzY2vmqhfa63JIsplHtaKY8oucDYCfLkz8z
	ZYUPEMM5foVd7hKyXH5p/ApKINtU8KVFaTvRVlNX5F3c7U1kFJCGAzZveofPhcSVSf95no0CRgr7T
	LkjR/EbMucWw/Y8HWs512Lw4/UpJA7farRU+bee6bY/hY1/zNlRIXxNwQHOrTh2TuktJaz7P9PWCD
	qdYiYbsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSwNF-00F5vT-Am; Tue, 30 Aug 2022 08:13:32 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSwJB-00F3sR-26
	for barebox@lists.infradead.org; Tue, 30 Aug 2022 08:09:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <jzi@pengutronix.de>)
	id 1oSwJ9-0001iT-8A; Tue, 30 Aug 2022 10:09:15 +0200
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <jzi@pengutronix.de>)
	id 1oSwJ8-002pL1-Hi; Tue, 30 Aug 2022 10:09:14 +0200
Received: from jzi by dude03.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <jzi@pengutronix.de>)
	id 1oSwJ7-001quC-P2; Tue, 30 Aug 2022 10:09:13 +0200
From: Johannes Zink <j.zink@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Johannes Zink <j.zink@pengutronix.de>
Date: Tue, 30 Aug 2022 10:09:11 +0200
Message-Id: <20220830080911.440884-1-j.zink@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_010917_522029_06FA5A25 
X-CRM114-Status: GOOD (  27.03  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] mfd: axp20x: add mfd axp20x driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@pengutronix.de>

This commit ports the axp20x driver from linux kernel code. Structures
not applicable for barebox are being dropped.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Johannes Zink <j.zink@pengutronix.de>
---
 drivers/mfd/Kconfig        |   8 +
 drivers/mfd/Makefile       |   1 +
 drivers/mfd/axp20x-i2c.c   |  71 ++++++
 drivers/mfd/axp20x.c       | 360 ++++++++++++++++++++++++++++
 include/linux/mfd/axp20x.h | 477 +++++++++++++++++++++++++++++++++++++
 5 files changed, 917 insertions(+)
 create mode 100644 drivers/mfd/axp20x-i2c.c
 create mode 100644 drivers/mfd/axp20x.c
 create mode 100644 include/linux/mfd/axp20x.h

diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
index 6c6b65dacf..5fd1a0aaa8 100644
--- a/drivers/mfd/Kconfig
+++ b/drivers/mfd/Kconfig
@@ -117,4 +117,12 @@ config MFD_RK808
 	  This driver provides common support for accessing the device
 	  through I2C interface.
 
+config MFD_AXP20X_I2C
+	tristate "X-Powers AXP series PMICs with I2C"
+	depends on I2C && OFDEVICE
+	help
+	  If you say Y here you get support for the X-Powers AXP series power
+	  management ICs (PMICs) controlled with I2C.
+	  This driver currently only provide a character device in /dev.
+
 endmenu
diff --git a/drivers/mfd/Makefile b/drivers/mfd/Makefile
index 7b5d0398d1..a3cb90e883 100644
--- a/drivers/mfd/Makefile
+++ b/drivers/mfd/Makefile
@@ -22,3 +22,4 @@ obj-$(CONFIG_SMSC_SUPERIO)	+= smsc-superio.o
 obj-$(CONFIG_MFD_STM32_TIMERS)	+= stm32-timers.o
 obj-$(CONFIG_MFD_ATMEL_FLEXCOM)	+= atmel-flexcom.o
 obj-$(CONFIG_MFD_RK808)		+= rk808.o
+obj-$(CONFIG_MFD_AXP20X_I2C)	+= axp20x-i2c.o axp20x.o
diff --git a/drivers/mfd/axp20x-i2c.c b/drivers/mfd/axp20x-i2c.c
new file mode 100644
index 0000000000..d0f6a0f394
--- /dev/null
+++ b/drivers/mfd/axp20x-i2c.c
@@ -0,0 +1,71 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * I2C driver for the X-Powers' Power Management ICs
+ *
+ * AXP20x typically comprises an adaptive USB-Compatible PWM charger, BUCK DC-DC
+ * converters, LDOs, multiple 12-bit ADCs of voltage, current and temperature
+ * as well as configurable GPIOs.
+ *
+ * This driver supports the I2C variants.
+ *
+ * Copyright (C) 2014 Carlo Caione
+ *
+ * Author: Carlo Caione <carlo@caione.org>
+ */
+
+#include <common.h>
+#include <of.h>
+#include <linux/err.h>
+#include <i2c/i2c.h>
+#include <module.h>
+#include <linux/mfd/axp20x.h>
+#include <regmap.h>
+
+static int axp20x_i2c_probe(struct device_d *dev)
+{
+	struct i2c_client *client = to_i2c_client(dev);
+	struct axp20x_dev *axp20x;
+	int ret;
+
+	axp20x = xzalloc(sizeof(*axp20x));
+
+	axp20x->dev = dev;
+
+	ret = axp20x_match_device(axp20x);
+	if (ret)
+		return ret;
+
+	axp20x->regmap = regmap_init_i2c(client, axp20x->regmap_cfg);
+	if (IS_ERR(axp20x->regmap))
+		return dev_err_probe(dev, PTR_ERR(axp20x->regmap),
+				     "regmap init failed\n");
+
+	ret = axp20x_device_probe(axp20x);
+	if (ret)
+		return ret;
+
+	return regmap_register_cdev(axp20x->regmap, NULL);
+}
+
+static const struct of_device_id axp20x_i2c_of_match[] = {
+	{ .compatible = "x-powers,axp152", .data = (void *)AXP152_ID },
+	{ .compatible = "x-powers,axp202", .data = (void *)AXP202_ID },
+	{ .compatible = "x-powers,axp209", .data = (void *)AXP209_ID },
+	{ .compatible = "x-powers,axp221", .data = (void *)AXP221_ID },
+	{ .compatible = "x-powers,axp223", .data = (void *)AXP223_ID },
+	{ .compatible = "x-powers,axp803", .data = (void *)AXP803_ID },
+	{ .compatible = "x-powers,axp806", .data = (void *)AXP806_ID },
+	{ },
+};
+
+static struct driver_d axp20x_i2c_driver = {
+	.name		= "axp20x-i2c",
+	.probe		= axp20x_i2c_probe,
+	.of_compatible	= DRV_OF_COMPAT(axp20x_i2c_of_match),
+};
+
+coredevice_i2c_driver(axp20x_i2c_driver);
+
+MODULE_DESCRIPTION("PMIC MFD I2C driver for AXP20X");
+MODULE_AUTHOR("Carlo Caione <carlo@caione.org>");
+MODULE_LICENSE("GPL");
diff --git a/drivers/mfd/axp20x.c b/drivers/mfd/axp20x.c
new file mode 100644
index 0000000000..da1e8ce35a
--- /dev/null
+++ b/drivers/mfd/axp20x.c
@@ -0,0 +1,360 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * MFD core driver for the X-Powers' Power Management ICs
+ *
+ * AXP20x typically comprises an adaptive USB-Compatible PWM charger, BUCK DC-DC
+ * converters, LDOs, multiple 12-bit ADCs of voltage, current and temperature
+ * as well as configurable GPIOs.
+ *
+ * This file contains the interface independent core functions.
+ *
+ * Copyright (C) 2014 Carlo Caione
+ *
+ * Author: Carlo Caione <carlo@caione.org>
+ */
+
+#include <common.h>
+#include <linux/bitops.h>
+#include <clock.h>
+#include <linux/err.h>
+#include <linux/kernel.h>
+#include <linux/mfd/axp20x.h>
+#include <linux/mfd/core.h>
+#include <module.h>
+#include <of.h>
+#include <of_device.h>
+#include <regmap.h>
+#include <regulator.h>
+
+#define AXP20X_OFF	BIT(7)
+
+#define AXP806_REG_ADDR_EXT_ADDR_MASTER_MODE	0
+#define AXP806_REG_ADDR_EXT_ADDR_SLAVE_MODE	BIT(4)
+
+static const char * const axp20x_model_names[] = {
+	"AXP152",
+	"AXP202",
+	"AXP209",
+	"AXP221",
+	"AXP223",
+	"AXP288",
+	"AXP803",
+	"AXP806",
+	"AXP809",
+	"AXP813",
+};
+
+static const struct regmap_config axp152_regmap_config = {
+	.reg_bits	= 8,
+	.val_bits	= 8,
+	.max_register	= AXP152_PWM1_DUTY_CYCLE,
+};
+
+static const struct regmap_config axp20x_regmap_config = {
+	.reg_bits	= 8,
+	.val_bits	= 8,
+	.max_register	= AXP20X_OCV(AXP20X_OCV_MAX),
+};
+
+static const struct regmap_config axp22x_regmap_config = {
+	.reg_bits	= 8,
+	.val_bits	= 8,
+	.max_register	= AXP22X_BATLOW_THRES1,
+};
+
+static const struct regmap_config axp288_regmap_config = {
+	.reg_bits	= 8,
+	.val_bits	= 8,
+	.max_register	= AXP288_FG_TUNE5,
+};
+
+static const struct regmap_config axp806_regmap_config = {
+	.reg_bits	= 8,
+	.val_bits	= 8,
+	.max_register	= AXP806_REG_ADDR_EXT,
+};
+
+static const struct mfd_cell axp20x_cells[] = {
+	{
+		.name		= "axp20x-gpio",
+		/* .of_compatible	= "x-powers,axp209-gpio", */
+	}, {
+		.name		= "axp20x-pek",
+	}, {
+		.name		= "axp20x-regulator",
+	}, {
+		.name		= "axp20x-adc",
+		/* .of_compatible	= "x-powers,axp209-adc", */
+	}, {
+		.name		= "axp20x-battery-power-supply",
+		/* .of_compatible	= "x-powers,axp209-battery-power-supply", */
+	}, {
+		.name		= "axp20x-ac-power-supply",
+		/* .of_compatible	= "x-powers,axp202-ac-power-supply", */
+	}, {
+		.name		= "axp20x-usb-power-supply",
+		/* .of_compatible	= "x-powers,axp202-usb-power-supply", */
+	},
+};
+
+static const struct mfd_cell axp221_cells[] = {
+	{
+		.name		= "axp221-pek",
+	}, {
+		.name		= "axp20x-regulator",
+	}, {
+		.name		= "axp22x-adc",
+		/* .of_compatible	= "x-powers,axp221-adc", */
+	}, {
+		.name		= "axp20x-ac-power-supply",
+		/* .of_compatible	= "x-powers,axp221-ac-power-supply", */
+	}, {
+		.name		= "axp20x-battery-power-supply",
+		/* .of_compatible	= "x-powers,axp221-battery-power-supply", */
+	}, {
+		.name		= "axp20x-usb-power-supply",
+		/* .of_compatible	= "x-powers,axp221-usb-power-supply", */
+	},
+};
+
+static const struct mfd_cell axp223_cells[] = {
+	{
+		.name		= "axp221-pek",
+	}, {
+		.name		= "axp22x-adc",
+		/* .of_compatible	= "x-powers,axp221-adc", */
+	}, {
+		.name		= "axp20x-battery-power-supply",
+		/* .of_compatible	= "x-powers,axp221-battery-power-supply", */
+	}, {
+		.name		= "axp20x-regulator",
+	}, {
+		.name		= "axp20x-ac-power-supply",
+		/* .of_compatible	= "x-powers,axp221-ac-power-supply", */
+	}, {
+		.name		= "axp20x-usb-power-supply",
+		/* .of_compatible	= "x-powers,axp223-usb-power-supply", */
+	},
+};
+
+static const struct mfd_cell axp152_cells[] = {
+	{
+		.name		= "axp20x-pek",
+	},
+};
+
+static const struct mfd_cell axp288_cells[] = {
+	{
+		.name		= "axp288_adc",
+	}, {
+		.name		= "axp288_extcon",
+	}, {
+		.name		= "axp288_charger",
+	}, {
+		.name		= "axp221-pek",
+	}, {
+		.name		= "axp288_pmic_acpi",
+	},
+};
+
+static const struct mfd_cell axp803_cells[] = {
+	{
+		.name		= "axp221-pek",
+	}, {
+		.name		= "axp20x-gpio",
+		/* .of_compatible	= "x-powers,axp813-gpio", */
+	}, {
+		.name		= "axp813-adc",
+		/* .of_compatible	= "x-powers,axp813-adc", */
+	}, {
+		.name		= "axp20x-battery-power-supply",
+		/* .of_compatible	= "x-powers,axp813-battery-power-supply", */
+	}, {
+		.name		= "axp20x-ac-power-supply",
+		/* .of_compatible	= "x-powers,axp813-ac-power-supply", */
+	}, {
+		.name		= "axp20x-usb-power-supply",
+		/* .of_compatible	= "x-powers,axp813-usb-power-supply", */
+	},
+	{	.name		= "axp20x-regulator" },
+};
+
+static const struct mfd_cell axp806_cells[] = {
+	{
+		.name		= "axp20x-regulator",
+	},
+};
+
+static const struct mfd_cell axp809_cells[] = {
+	{
+		.name		= "axp221-pek",
+	}, {
+		.name		= "axp20x-regulator",
+	},
+};
+
+static const struct mfd_cell axp813_cells[] = {
+	{
+		.name		= "axp221-pek",
+	}, {
+		.name		= "axp20x-regulator",
+	}, {
+		.name		= "axp20x-gpio",
+		/* .of_compatible	= "x-powers,axp813-gpio", */
+	}, {
+		.name		= "axp813-adc",
+		/* .of_compatible	= "x-powers,axp813-adc", */
+	}, {
+		.name		= "axp20x-battery-power-supply",
+		/* .of_compatible	= "x-powers,axp813-battery-power-supply", */
+	}, {
+		.name		= "axp20x-ac-power-supply",
+		/* .of_compatible	= "x-powers,axp813-ac-power-supply", */
+	}, {
+		.name		= "axp20x-usb-power-supply",
+		/* .of_compatible	= "x-powers,axp813-usb-power-supply", */
+	},
+};
+
+static void axp20x_power_off(struct poweroff_handler *handler)
+{
+	struct axp20x_dev *axp20x = container_of(handler, struct axp20x_dev, poweroff);
+
+	regmap_write(axp20x->regmap, AXP20X_OFF_CTRL, AXP20X_OFF);
+
+	shutdown_barebox();
+
+	/* Give capacitors etc. time to drain to avoid kernel panic msg. */
+	mdelay(500);
+	hang();
+}
+
+int axp20x_match_device(struct axp20x_dev *axp20x)
+{
+	struct device_d *dev = axp20x->dev;
+	const struct of_device_id *of_id;
+
+	of_id = of_match_device(dev->driver->of_compatible, dev);
+	if (!of_id) {
+		dev_err(dev, "Unable to match OF ID\n");
+		return -ENODEV;
+	}
+	axp20x->variant = (long)of_id->data;
+
+	switch (axp20x->variant) {
+	case AXP152_ID:
+		axp20x->nr_cells = ARRAY_SIZE(axp152_cells);
+		axp20x->cells = axp152_cells;
+		axp20x->regmap_cfg = &axp152_regmap_config;
+		break;
+	case AXP202_ID:
+	case AXP209_ID:
+		axp20x->nr_cells = ARRAY_SIZE(axp20x_cells);
+		axp20x->cells = axp20x_cells;
+		axp20x->regmap_cfg = &axp20x_regmap_config;
+		break;
+	case AXP221_ID:
+		axp20x->nr_cells = ARRAY_SIZE(axp221_cells);
+		axp20x->cells = axp221_cells;
+		axp20x->regmap_cfg = &axp22x_regmap_config;
+		break;
+	case AXP223_ID:
+		axp20x->nr_cells = ARRAY_SIZE(axp223_cells);
+		axp20x->cells = axp223_cells;
+		axp20x->regmap_cfg = &axp22x_regmap_config;
+		break;
+	case AXP288_ID:
+		axp20x->cells = axp288_cells;
+		axp20x->nr_cells = ARRAY_SIZE(axp288_cells);
+		axp20x->regmap_cfg = &axp288_regmap_config;
+		break;
+	case AXP803_ID:
+		axp20x->nr_cells = ARRAY_SIZE(axp803_cells);
+		axp20x->cells = axp803_cells;
+		axp20x->regmap_cfg = &axp288_regmap_config;
+		break;
+	case AXP806_ID:
+		/*
+		 * Don't register the power key part if in slave mode or
+		 * if there is no interrupt line.
+		 */
+		axp20x->nr_cells = ARRAY_SIZE(axp806_cells);
+		axp20x->cells = axp806_cells;
+		axp20x->regmap_cfg = &axp806_regmap_config;
+		break;
+	case AXP809_ID:
+		axp20x->nr_cells = ARRAY_SIZE(axp809_cells);
+		axp20x->cells = axp809_cells;
+		axp20x->regmap_cfg = &axp22x_regmap_config;
+		break;
+	case AXP813_ID:
+		axp20x->nr_cells = ARRAY_SIZE(axp813_cells);
+		axp20x->cells = axp813_cells;
+		axp20x->regmap_cfg = &axp288_regmap_config;
+		break;
+	default:
+		dev_err(dev, "unsupported AXP20X ID %lu\n", axp20x->variant);
+		return -EINVAL;
+	}
+	dev_info(dev, "AXP20x variant %s found\n",
+		 axp20x_model_names[axp20x->variant]);
+
+	return 0;
+}
+EXPORT_SYMBOL(axp20x_match_device);
+
+int axp20x_device_probe(struct axp20x_dev *axp20x)
+{
+	int ret;
+
+	/*
+	 * The AXP806 supports either master/standalone or slave mode.
+	 * Slave mode allows sharing the serial bus, even with multiple
+	 * AXP806 which all have the same hardware address.
+	 *
+	 * This is done with extra "serial interface address extension",
+	 * or AXP806_BUS_ADDR_EXT, and "register address extension", or
+	 * AXP806_REG_ADDR_EXT, registers. The former is read-only, with
+	 * 1 bit customizable at the factory, and 1 bit depending on the
+	 * state of an external pin. The latter is writable. The device
+	 * will only respond to operations to its other registers when
+	 * the these device addressing bits (in the upper 4 bits of the
+	 * registers) match.
+	 *
+	 * By default we support an AXP806 chained to an AXP809 in slave
+	 * mode. Boards which use an AXP806 in master mode can set the
+	 * property "x-powers,master-mode" to override the default.
+	 */
+	if (axp20x->variant == AXP806_ID) {
+		if (of_property_read_bool(axp20x->dev->device_node,
+					  "x-powers,master-mode") ||
+		    of_property_read_bool(axp20x->dev->device_node,
+					  "x-powers,self-working-mode"))
+			regmap_write(axp20x->regmap, AXP806_REG_ADDR_EXT,
+				     AXP806_REG_ADDR_EXT_ADDR_MASTER_MODE);
+		else
+			regmap_write(axp20x->regmap, AXP806_REG_ADDR_EXT,
+				     AXP806_REG_ADDR_EXT_ADDR_SLAVE_MODE);
+	}
+
+	ret = mfd_add_devices(axp20x->dev, axp20x->cells, axp20x->nr_cells);
+	if (ret)
+		return dev_err_probe(axp20x->dev, ret, "failed to add MFD devices\n");
+
+
+	axp20x->poweroff.name = "axp20x-poweroff";
+	axp20x->poweroff.poweroff = axp20x_power_off;
+	axp20x->poweroff.priority = 200;
+
+	if (axp20x->variant != AXP288_ID)
+		poweroff_handler_register(&axp20x->poweroff);
+
+	dev_info(axp20x->dev, "AXP20X driver loaded\n");
+
+	return 0;
+}
+EXPORT_SYMBOL(axp20x_device_probe);
+
+MODULE_DESCRIPTION("PMIC MFD core driver for AXP20X");
+MODULE_AUTHOR("Carlo Caione <carlo@caione.org>");
+MODULE_LICENSE("GPL");
diff --git a/include/linux/mfd/axp20x.h b/include/linux/mfd/axp20x.h
new file mode 100644
index 0000000000..5e068eb6ba
--- /dev/null
+++ b/include/linux/mfd/axp20x.h
@@ -0,0 +1,477 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Functions and registers to access AXP20X power management chip.
+ *
+ * Copyright (C) 2013, Carlo Caione <carlo@caione.org>
+ */
+
+#ifndef __LINUX_MFD_AXP20X_H
+#define __LINUX_MFD_AXP20X_H
+
+#include <regmap.h>
+#include <poweroff.h>
+
+enum axp20x_variants {
+	AXP152_ID = 0,
+	AXP202_ID,
+	AXP209_ID,
+	AXP221_ID,
+	AXP223_ID,
+	AXP288_ID,
+	AXP803_ID,
+	AXP806_ID,
+	AXP809_ID,
+	AXP813_ID,
+	NR_AXP20X_VARIANTS,
+};
+
+#define AXP20X_DATACACHE(m)		(0x04 + (m))
+
+/* Power supply */
+#define AXP152_PWR_OP_MODE		0x01
+#define AXP152_LDO3456_DC1234_CTRL	0x12
+#define AXP152_ALDO_OP_MODE		0x13
+#define AXP152_LDO0_CTRL		0x15
+#define AXP152_DCDC2_V_OUT		0x23
+#define AXP152_DCDC2_V_RAMP		0x25
+#define AXP152_DCDC1_V_OUT		0x26
+#define AXP152_DCDC3_V_OUT		0x27
+#define AXP152_ALDO12_V_OUT		0x28
+#define AXP152_DLDO1_V_OUT		0x29
+#define AXP152_DLDO2_V_OUT		0x2a
+#define AXP152_DCDC4_V_OUT		0x2b
+#define AXP152_V_OFF			0x31
+#define AXP152_OFF_CTRL			0x32
+#define AXP152_PEK_KEY			0x36
+#define AXP152_DCDC_FREQ		0x37
+#define AXP152_DCDC_MODE		0x80
+
+#define AXP20X_PWR_INPUT_STATUS		0x00
+#define AXP20X_PWR_OP_MODE		0x01
+#define AXP20X_USB_OTG_STATUS		0x02
+#define AXP20X_PWR_OUT_CTRL		0x12
+#define AXP20X_DCDC2_V_OUT		0x23
+#define AXP20X_DCDC2_LDO3_V_RAMP	0x25
+#define AXP20X_DCDC3_V_OUT		0x27
+#define AXP20X_LDO24_V_OUT		0x28
+#define AXP20X_LDO3_V_OUT		0x29
+#define AXP20X_VBUS_IPSOUT_MGMT		0x30
+#define AXP20X_V_OFF			0x31
+#define AXP20X_OFF_CTRL			0x32
+#define AXP20X_CHRG_CTRL1		0x33
+#define AXP20X_CHRG_CTRL2		0x34
+#define AXP20X_CHRG_BAK_CTRL		0x35
+#define AXP20X_PEK_KEY			0x36
+#define AXP20X_DCDC_FREQ		0x37
+#define AXP20X_V_LTF_CHRG		0x38
+#define AXP20X_V_HTF_CHRG		0x39
+#define AXP20X_APS_WARN_L1		0x3a
+#define AXP20X_APS_WARN_L2		0x3b
+#define AXP20X_V_LTF_DISCHRG		0x3c
+#define AXP20X_V_HTF_DISCHRG		0x3d
+
+#define AXP22X_PWR_OUT_CTRL1		0x10
+#define AXP22X_PWR_OUT_CTRL2		0x12
+#define AXP22X_PWR_OUT_CTRL3		0x13
+#define AXP22X_DLDO1_V_OUT		0x15
+#define AXP22X_DLDO2_V_OUT		0x16
+#define AXP22X_DLDO3_V_OUT		0x17
+#define AXP22X_DLDO4_V_OUT		0x18
+#define AXP22X_ELDO1_V_OUT		0x19
+#define AXP22X_ELDO2_V_OUT		0x1a
+#define AXP22X_ELDO3_V_OUT		0x1b
+#define AXP22X_DC5LDO_V_OUT		0x1c
+#define AXP22X_DCDC1_V_OUT		0x21
+#define AXP22X_DCDC2_V_OUT		0x22
+#define AXP22X_DCDC3_V_OUT		0x23
+#define AXP22X_DCDC4_V_OUT		0x24
+#define AXP22X_DCDC5_V_OUT		0x25
+#define AXP22X_DCDC23_V_RAMP_CTRL	0x27
+#define AXP22X_ALDO1_V_OUT		0x28
+#define AXP22X_ALDO2_V_OUT		0x29
+#define AXP22X_ALDO3_V_OUT		0x2a
+#define AXP22X_CHRG_CTRL3		0x35
+
+#define AXP806_STARTUP_SRC		0x00
+#define AXP806_CHIP_ID			0x03
+#define AXP806_PWR_OUT_CTRL1		0x10
+#define AXP806_PWR_OUT_CTRL2		0x11
+#define AXP806_DCDCA_V_CTRL		0x12
+#define AXP806_DCDCB_V_CTRL		0x13
+#define AXP806_DCDCC_V_CTRL		0x14
+#define AXP806_DCDCD_V_CTRL		0x15
+#define AXP806_DCDCE_V_CTRL		0x16
+#define AXP806_ALDO1_V_CTRL		0x17
+#define AXP806_ALDO2_V_CTRL		0x18
+#define AXP806_ALDO3_V_CTRL		0x19
+#define AXP806_DCDC_MODE_CTRL1		0x1a
+#define AXP806_DCDC_MODE_CTRL2		0x1b
+#define AXP806_DCDC_FREQ_CTRL		0x1c
+#define AXP806_BLDO1_V_CTRL		0x20
+#define AXP806_BLDO2_V_CTRL		0x21
+#define AXP806_BLDO3_V_CTRL		0x22
+#define AXP806_BLDO4_V_CTRL		0x23
+#define AXP806_CLDO1_V_CTRL		0x24
+#define AXP806_CLDO2_V_CTRL		0x25
+#define AXP806_CLDO3_V_CTRL		0x26
+#define AXP806_VREF_TEMP_WARN_L		0xf3
+#define AXP806_BUS_ADDR_EXT		0xfe
+#define AXP806_REG_ADDR_EXT		0xff
+
+#define AXP803_POLYPHASE_CTRL		0x14
+#define AXP803_FLDO1_V_OUT		0x1c
+#define AXP803_FLDO2_V_OUT		0x1d
+#define AXP803_DCDC1_V_OUT		0x20
+#define AXP803_DCDC2_V_OUT		0x21
+#define AXP803_DCDC3_V_OUT		0x22
+#define AXP803_DCDC4_V_OUT		0x23
+#define AXP803_DCDC5_V_OUT		0x24
+#define AXP803_DCDC6_V_OUT		0x25
+#define AXP803_DCDC_FREQ_CTRL		0x3b
+
+/* Other DCDC regulator control registers are the same as AXP803 */
+#define AXP813_DCDC7_V_OUT		0x26
+
+/* Interrupt */
+#define AXP152_IRQ1_EN			0x40
+#define AXP152_IRQ2_EN			0x41
+#define AXP152_IRQ3_EN			0x42
+#define AXP152_IRQ1_STATE		0x48
+#define AXP152_IRQ2_STATE		0x49
+#define AXP152_IRQ3_STATE		0x4a
+
+#define AXP20X_IRQ1_EN			0x40
+#define AXP20X_IRQ2_EN			0x41
+#define AXP20X_IRQ3_EN			0x42
+#define AXP20X_IRQ4_EN			0x43
+#define AXP20X_IRQ5_EN			0x44
+#define AXP20X_IRQ6_EN			0x45
+#define AXP20X_IRQ1_STATE		0x48
+#define AXP20X_IRQ2_STATE		0x49
+#define AXP20X_IRQ3_STATE		0x4a
+#define AXP20X_IRQ4_STATE		0x4b
+#define AXP20X_IRQ5_STATE		0x4c
+#define AXP20X_IRQ6_STATE		0x4d
+
+/* ADC */
+#define AXP20X_ACIN_V_ADC_H		0x56
+#define AXP20X_ACIN_V_ADC_L		0x57
+#define AXP20X_ACIN_I_ADC_H		0x58
+#define AXP20X_ACIN_I_ADC_L		0x59
+#define AXP20X_VBUS_V_ADC_H		0x5a
+#define AXP20X_VBUS_V_ADC_L		0x5b
+#define AXP20X_VBUS_I_ADC_H		0x5c
+#define AXP20X_VBUS_I_ADC_L		0x5d
+#define AXP20X_TEMP_ADC_H		0x5e
+#define AXP20X_TEMP_ADC_L		0x5f
+#define AXP20X_TS_IN_H			0x62
+#define AXP20X_TS_IN_L			0x63
+#define AXP20X_GPIO0_V_ADC_H		0x64
+#define AXP20X_GPIO0_V_ADC_L		0x65
+#define AXP20X_GPIO1_V_ADC_H		0x66
+#define AXP20X_GPIO1_V_ADC_L		0x67
+#define AXP20X_PWR_BATT_H		0x70
+#define AXP20X_PWR_BATT_M		0x71
+#define AXP20X_PWR_BATT_L		0x72
+#define AXP20X_BATT_V_H			0x78
+#define AXP20X_BATT_V_L			0x79
+#define AXP20X_BATT_CHRG_I_H		0x7a
+#define AXP20X_BATT_CHRG_I_L		0x7b
+#define AXP20X_BATT_DISCHRG_I_H		0x7c
+#define AXP20X_BATT_DISCHRG_I_L		0x7d
+#define AXP20X_IPSOUT_V_HIGH_H		0x7e
+#define AXP20X_IPSOUT_V_HIGH_L		0x7f
+
+/* Power supply */
+#define AXP20X_DCDC_MODE		0x80
+#define AXP20X_ADC_EN1			0x82
+#define AXP20X_ADC_EN2			0x83
+#define AXP20X_ADC_RATE			0x84
+#define AXP20X_GPIO10_IN_RANGE		0x85
+#define AXP20X_GPIO1_ADC_IRQ_RIS	0x86
+#define AXP20X_GPIO1_ADC_IRQ_FAL	0x87
+#define AXP20X_TIMER_CTRL		0x8a
+#define AXP20X_VBUS_MON			0x8b
+#define AXP20X_OVER_TMP			0x8f
+
+#define AXP22X_PWREN_CTRL1		0x8c
+#define AXP22X_PWREN_CTRL2		0x8d
+
+/* GPIO */
+#define AXP152_GPIO0_CTRL		0x90
+#define AXP152_GPIO1_CTRL		0x91
+#define AXP152_GPIO2_CTRL		0x92
+#define AXP152_GPIO3_CTRL		0x93
+#define AXP152_LDOGPIO2_V_OUT		0x96
+#define AXP152_GPIO_INPUT		0x97
+#define AXP152_PWM0_FREQ_X		0x98
+#define AXP152_PWM0_FREQ_Y		0x99
+#define AXP152_PWM0_DUTY_CYCLE		0x9a
+#define AXP152_PWM1_FREQ_X		0x9b
+#define AXP152_PWM1_FREQ_Y		0x9c
+#define AXP152_PWM1_DUTY_CYCLE		0x9d
+
+#define AXP20X_GPIO0_CTRL		0x90
+#define AXP20X_LDO5_V_OUT		0x91
+#define AXP20X_GPIO1_CTRL		0x92
+#define AXP20X_GPIO2_CTRL		0x93
+#define AXP20X_GPIO20_SS		0x94
+#define AXP20X_GPIO3_CTRL		0x95
+
+#define AXP22X_LDO_IO0_V_OUT		0x91
+#define AXP22X_LDO_IO1_V_OUT		0x93
+#define AXP22X_GPIO_STATE		0x94
+#define AXP22X_GPIO_PULL_DOWN		0x95
+
+/* Battery */
+#define AXP20X_CHRG_CC_31_24		0xb0
+#define AXP20X_CHRG_CC_23_16		0xb1
+#define AXP20X_CHRG_CC_15_8		0xb2
+#define AXP20X_CHRG_CC_7_0		0xb3
+#define AXP20X_DISCHRG_CC_31_24		0xb4
+#define AXP20X_DISCHRG_CC_23_16		0xb5
+#define AXP20X_DISCHRG_CC_15_8		0xb6
+#define AXP20X_DISCHRG_CC_7_0		0xb7
+#define AXP20X_CC_CTRL			0xb8
+#define AXP20X_FG_RES			0xb9
+
+/* OCV */
+#define AXP20X_RDC_H			0xba
+#define AXP20X_RDC_L			0xbb
+#define AXP20X_OCV(m)			(0xc0 + (m))
+#define AXP20X_OCV_MAX			0xf
+
+/* AXP22X specific registers */
+#define AXP22X_PMIC_TEMP_H		0x56
+#define AXP22X_PMIC_TEMP_L		0x57
+#define AXP22X_TS_ADC_H			0x58
+#define AXP22X_TS_ADC_L			0x59
+#define AXP22X_BATLOW_THRES1		0xe6
+
+/* AXP288/AXP803 specific registers */
+#define AXP288_POWER_REASON		0x02
+#define AXP288_BC_GLOBAL		0x2c
+#define AXP288_BC_VBUS_CNTL		0x2d
+#define AXP288_BC_USB_STAT		0x2e
+#define AXP288_BC_DET_STAT		0x2f
+#define AXP288_PMIC_ADC_H               0x56
+#define AXP288_PMIC_ADC_L               0x57
+#define AXP288_TS_ADC_H			0x58
+#define AXP288_TS_ADC_L			0x59
+#define AXP288_GP_ADC_H			0x5a
+#define AXP288_GP_ADC_L			0x5b
+#define AXP288_ADC_TS_PIN_CTRL          0x84
+#define AXP288_RT_BATT_V_H		0xa0
+#define AXP288_RT_BATT_V_L		0xa1
+
+#define AXP813_ACIN_PATH_CTRL		0x3a
+#define AXP813_ADC_RATE			0x85
+
+/* Fuel Gauge */
+#define AXP288_FG_RDC1_REG          0xba
+#define AXP288_FG_RDC0_REG          0xbb
+#define AXP288_FG_OCVH_REG          0xbc
+#define AXP288_FG_OCVL_REG          0xbd
+#define AXP288_FG_OCV_CURVE_REG     0xc0
+#define AXP288_FG_DES_CAP1_REG      0xe0
+#define AXP288_FG_DES_CAP0_REG      0xe1
+#define AXP288_FG_CC_MTR1_REG       0xe2
+#define AXP288_FG_CC_MTR0_REG       0xe3
+#define AXP288_FG_OCV_CAP_REG       0xe4
+#define AXP288_FG_CC_CAP_REG        0xe5
+#define AXP288_FG_LOW_CAP_REG       0xe6
+#define AXP288_FG_TUNE0             0xe8
+#define AXP288_FG_TUNE1             0xe9
+#define AXP288_FG_TUNE2             0xea
+#define AXP288_FG_TUNE3             0xeb
+#define AXP288_FG_TUNE4             0xec
+#define AXP288_FG_TUNE5             0xed
+
+/* Regulators IDs */
+enum {
+	AXP20X_LDO1 = 0,
+	AXP20X_LDO2,
+	AXP20X_LDO3,
+	AXP20X_LDO4,
+	AXP20X_LDO5,
+	AXP20X_DCDC2,
+	AXP20X_DCDC3,
+	AXP20X_REG_ID_MAX,
+};
+
+enum {
+	AXP22X_DCDC1 = 0,
+	AXP22X_DCDC2,
+	AXP22X_DCDC3,
+	AXP22X_DCDC4,
+	AXP22X_DCDC5,
+	AXP22X_DC1SW,
+	AXP22X_DC5LDO,
+	AXP22X_ALDO1,
+	AXP22X_ALDO2,
+	AXP22X_ALDO3,
+	AXP22X_ELDO1,
+	AXP22X_ELDO2,
+	AXP22X_ELDO3,
+	AXP22X_DLDO1,
+	AXP22X_DLDO2,
+	AXP22X_DLDO3,
+	AXP22X_DLDO4,
+	AXP22X_RTC_LDO,
+	AXP22X_LDO_IO0,
+	AXP22X_LDO_IO1,
+	AXP22X_REG_ID_MAX,
+};
+
+enum {
+	AXP806_DCDCA = 0,
+	AXP806_DCDCB,
+	AXP806_DCDCC,
+	AXP806_DCDCD,
+	AXP806_DCDCE,
+	AXP806_ALDO1,
+	AXP806_ALDO2,
+	AXP806_ALDO3,
+	AXP806_BLDO1,
+	AXP806_BLDO2,
+	AXP806_BLDO3,
+	AXP806_BLDO4,
+	AXP806_CLDO1,
+	AXP806_CLDO2,
+	AXP806_CLDO3,
+	AXP806_SW,
+	AXP806_REG_ID_MAX,
+};
+
+enum {
+	AXP809_DCDC1 = 0,
+	AXP809_DCDC2,
+	AXP809_DCDC3,
+	AXP809_DCDC4,
+	AXP809_DCDC5,
+	AXP809_DC1SW,
+	AXP809_DC5LDO,
+	AXP809_ALDO1,
+	AXP809_ALDO2,
+	AXP809_ALDO3,
+	AXP809_ELDO1,
+	AXP809_ELDO2,
+	AXP809_ELDO3,
+	AXP809_DLDO1,
+	AXP809_DLDO2,
+	AXP809_RTC_LDO,
+	AXP809_LDO_IO0,
+	AXP809_LDO_IO1,
+	AXP809_SW,
+	AXP809_REG_ID_MAX,
+};
+
+enum {
+	AXP803_DCDC1 = 0,
+	AXP803_DCDC2,
+	AXP803_DCDC3,
+	AXP803_DCDC4,
+	AXP803_DCDC5,
+	AXP803_DCDC6,
+	AXP803_DC1SW,
+	AXP803_ALDO1,
+	AXP803_ALDO2,
+	AXP803_ALDO3,
+	AXP803_DLDO1,
+	AXP803_DLDO2,
+	AXP803_DLDO3,
+	AXP803_DLDO4,
+	AXP803_ELDO1,
+	AXP803_ELDO2,
+	AXP803_ELDO3,
+	AXP803_FLDO1,
+	AXP803_FLDO2,
+	AXP803_RTC_LDO,
+	AXP803_LDO_IO0,
+	AXP803_LDO_IO1,
+	AXP803_REG_ID_MAX,
+};
+
+enum {
+	AXP813_DCDC1 = 0,
+	AXP813_DCDC2,
+	AXP813_DCDC3,
+	AXP813_DCDC4,
+	AXP813_DCDC5,
+	AXP813_DCDC6,
+	AXP813_DCDC7,
+	AXP813_ALDO1,
+	AXP813_ALDO2,
+	AXP813_ALDO3,
+	AXP813_DLDO1,
+	AXP813_DLDO2,
+	AXP813_DLDO3,
+	AXP813_DLDO4,
+	AXP813_ELDO1,
+	AXP813_ELDO2,
+	AXP813_ELDO3,
+	AXP813_FLDO1,
+	AXP813_FLDO2,
+	AXP813_FLDO3,
+	AXP813_RTC_LDO,
+	AXP813_LDO_IO0,
+	AXP813_LDO_IO1,
+	AXP813_SW,
+	AXP813_REG_ID_MAX,
+};
+
+struct axp20x_dev {
+	struct device_d			*dev;
+	struct regmap			*regmap;
+	long				variant;
+	int                             nr_cells;
+	const struct mfd_cell           *cells;
+	const struct regmap_config	*regmap_cfg;
+	struct poweroff_handler		poweroff;
+};
+
+/* generic helper function for reading 9-16 bit wide regs */
+static inline int axp20x_read_variable_width(struct regmap *regmap,
+	unsigned int reg, unsigned int width)
+{
+	unsigned int reg_val, result;
+	int err;
+
+	err = regmap_read(regmap, reg, &reg_val);
+	if (err)
+		return err;
+
+	result = reg_val << (width - 8);
+
+	err = regmap_read(regmap, reg + 1, &reg_val);
+	if (err)
+		return err;
+
+	result |= reg_val;
+
+	return result;
+}
+
+/**
+ * axp20x_match_device(): Setup axp20x variant related fields
+ *
+ * @axp20x: axp20x device to setup (.dev field must be set)
+ * @dev: device associated with this axp20x device
+ *
+ * This lets the axp20x core configure the mfd cells and register maps
+ * for later use.
+ */
+int axp20x_match_device(struct axp20x_dev *axp20x);
+
+/**
+ * axp20x_device_probe(): Probe a configured axp20x device
+ *
+ * @axp20x: axp20x device to probe (must be configured)
+ *
+ * This function lets the axp20x core register the axp20x mfd devices
+ * The axp20x device passed in must be fully configured
+ * with axp20x_match_device, and regmap created.
+ */
+int axp20x_device_probe(struct axp20x_dev *axp20x);
+
+#endif /* __LINUX_MFD_AXP20X_H */
-- 
2.30.2



