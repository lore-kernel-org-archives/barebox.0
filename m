Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 16.mo4.mail-out.ovh.net ([188.165.55.104]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TUDiS-00020j-IQ
 for barebox@lists.infradead.org; Fri, 02 Nov 2012 09:39:07 +0000
Received: from mail247.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 59CAE104F175
 for <barebox@lists.infradead.org>; Fri,  2 Nov 2012 10:46:14 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri,  2 Nov 2012 10:36:51 +0100
Message-Id: <1351849012-26236-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1351849012-26236-1-git-send-email-plagnioj@jcrosoft.com>
References: <20121102092718.GO29599@game.jcrosoft.org>
 <1351849012-26236-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/4] i2c: add i2c-gpio support
To: barebox@lists.infradead.org

Based on linux 3.7-rc2

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/i2c/busses/Kconfig    |    8 ++
 drivers/i2c/busses/Makefile   |    1 +
 drivers/i2c/busses/i2c-gpio.c |  177 +++++++++++++++++++++++++++++++++++++++++
 include/i2c/i2c-gpio.h        |   38 +++++++++
 4 files changed, 224 insertions(+)
 create mode 100644 drivers/i2c/busses/i2c-gpio.c
 create mode 100644 include/i2c/i2c-gpio.h

diff --git a/drivers/i2c/busses/Kconfig b/drivers/i2c/busses/Kconfig
index 3f998ea..17e33cb 100644
--- a/drivers/i2c/busses/Kconfig
+++ b/drivers/i2c/busses/Kconfig
@@ -4,6 +4,14 @@
 
 menu "I2C Hardware Bus support"
 
+config I2C_GPIO
+	tristate "GPIO-based bitbanging I2C"
+	depends on GENERIC_GPIO
+	select I2C_ALGOBIT
+	help
+	  This is a very simple bitbanging I2C driver utilizing the
+	  arch-neutral GPIO API to control the SCL and SDA lines.
+
 config I2C_IMX
 	bool "MPC85xx/i.MX I2C Master driver"
 	depends on (ARCH_IMX && !ARCH_IMX1) || ARCH_MPC85XX
diff --git a/drivers/i2c/busses/Makefile b/drivers/i2c/busses/Makefile
index e4c5125..18c7c46 100644
--- a/drivers/i2c/busses/Makefile
+++ b/drivers/i2c/busses/Makefile
@@ -1,2 +1,3 @@
+obj-$(CONFIG_I2C_GPIO)		+= i2c-gpio.o
 obj-$(CONFIG_I2C_IMX) += i2c-imx.o
 obj-$(CONFIG_I2C_OMAP) += i2c-omap.o
diff --git a/drivers/i2c/busses/i2c-gpio.c b/drivers/i2c/busses/i2c-gpio.c
new file mode 100644
index 0000000..98ce2d5
--- /dev/null
+++ b/drivers/i2c/busses/i2c-gpio.c
@@ -0,0 +1,177 @@
+/*
+ * Bitbanging I2C bus driver using the GPIO API
+ *
+ * Copyright (C) 2007 Atmel Corporation
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ */
+
+#include <common.h>
+#include <driver.h>
+#include <i2c/i2c.h>
+#include <i2c/i2c-algo-bit.h>
+#include <i2c/i2c-gpio.h>
+#include <init.h>
+#include <gpio.h>
+
+struct i2c_gpio_private_data {
+	struct i2c_adapter adap;
+	struct i2c_algo_bit_data bit_data;
+	struct i2c_gpio_platform_data pdata;
+};
+
+/* Toggle SDA by changing the direction of the pin */
+static void i2c_gpio_setsda_dir(void *data, int state)
+{
+	struct i2c_gpio_platform_data *pdata = data;
+
+	if (state)
+		gpio_direction_input(pdata->sda_pin);
+	else
+		gpio_direction_output(pdata->sda_pin, 0);
+}
+
+/*
+ * Toggle SDA by changing the output value of the pin. This is only
+ * valid for pins configured as open drain (i.e. setting the value
+ * high effectively turns off the output driver.)
+ */
+static void i2c_gpio_setsda_val(void *data, int state)
+{
+	struct i2c_gpio_platform_data *pdata = data;
+
+	gpio_set_value(pdata->sda_pin, state);
+}
+
+/* Toggle SCL by changing the direction of the pin. */
+static void i2c_gpio_setscl_dir(void *data, int state)
+{
+	struct i2c_gpio_platform_data *pdata = data;
+
+	if (state)
+		gpio_direction_input(pdata->scl_pin);
+	else
+		gpio_direction_output(pdata->scl_pin, 0);
+}
+
+/*
+ * Toggle SCL by changing the output value of the pin. This is used
+ * for pins that are configured as open drain and for output-only
+ * pins. The latter case will break the i2c protocol, but it will
+ * often work in practice.
+ */
+static void i2c_gpio_setscl_val(void *data, int state)
+{
+	struct i2c_gpio_platform_data *pdata = data;
+
+	gpio_set_value(pdata->scl_pin, state);
+}
+
+static int i2c_gpio_getsda(void *data)
+{
+	struct i2c_gpio_platform_data *pdata = data;
+
+	return gpio_get_value(pdata->sda_pin);
+}
+
+static int i2c_gpio_getscl(void *data)
+{
+	struct i2c_gpio_platform_data *pdata = data;
+
+	return gpio_get_value(pdata->scl_pin);
+}
+
+static int i2c_gpio_probe(struct device_d *dev)
+{
+	struct i2c_gpio_private_data *priv;
+	struct i2c_gpio_platform_data *pdata;
+	struct i2c_algo_bit_data *bit_data;
+	struct i2c_adapter *adap;
+	int ret;
+
+	priv = xzalloc(sizeof(*priv));
+
+	adap = &priv->adap;
+	bit_data = &priv->bit_data;
+	pdata = &priv->pdata;
+
+	if (!dev->platform_data)
+		return -ENXIO;
+	memcpy(pdata, dev->platform_data, sizeof(*pdata));
+
+	ret = gpio_request(pdata->sda_pin, "sda");
+	if (ret)
+		goto err_request_sda;
+	ret = gpio_request(pdata->scl_pin, "scl");
+	if (ret)
+		goto err_request_scl;
+
+	if (pdata->sda_is_open_drain) {
+		gpio_direction_output(pdata->sda_pin, 1);
+		bit_data->setsda = i2c_gpio_setsda_val;
+	} else {
+		gpio_direction_input(pdata->sda_pin);
+		bit_data->setsda = i2c_gpio_setsda_dir;
+	}
+
+	if (pdata->scl_is_open_drain || pdata->scl_is_output_only) {
+		gpio_direction_output(pdata->scl_pin, 1);
+		bit_data->setscl = i2c_gpio_setscl_val;
+	} else {
+		gpio_direction_input(pdata->scl_pin);
+		bit_data->setscl = i2c_gpio_setscl_dir;
+	}
+
+	if (!pdata->scl_is_output_only)
+		bit_data->getscl = i2c_gpio_getscl;
+	bit_data->getsda = i2c_gpio_getsda;
+
+	if (pdata->udelay)
+		bit_data->udelay = pdata->udelay;
+	else if (pdata->scl_is_output_only)
+		bit_data->udelay = 50;			/* 10 kHz */
+	else
+		bit_data->udelay = 5;			/* 100 kHz */
+
+	if (pdata->timeout_ms)
+		bit_data->timeout_ms = pdata->timeout_ms;
+	else
+		bit_data->timeout_ms = 100;		/* 100 ms */
+
+	bit_data->data = pdata;
+
+	adap->algo_data = bit_data;
+	adap->dev.parent = dev;
+
+	adap->nr = dev->id;
+	ret = i2c_bit_add_numbered_bus(adap);
+	if (ret)
+		goto err_add_bus;
+
+	dev_info(dev, "using pins %u (SDA) and %u (SCL%s)\n",
+		 pdata->sda_pin, pdata->scl_pin,
+		 pdata->scl_is_output_only
+		 ? ", no clock stretching" : "");
+
+	return 0;
+
+err_add_bus:
+	gpio_free(pdata->scl_pin);
+err_request_scl:
+	gpio_free(pdata->sda_pin);
+err_request_sda:
+	return ret;
+}
+
+static struct driver_d i2c_gpio_driver = {
+	.name	= "i2c-gpio",
+	.probe	= i2c_gpio_probe,
+};
+
+static int __init i2c_gpio_init(void)
+{
+	return platform_driver_register(&i2c_gpio_driver);
+}
+device_initcall(i2c_gpio_init);
diff --git a/include/i2c/i2c-gpio.h b/include/i2c/i2c-gpio.h
new file mode 100644
index 0000000..55feb82
--- /dev/null
+++ b/include/i2c/i2c-gpio.h
@@ -0,0 +1,38 @@
+/*
+ * i2c-gpio interface to platform code
+ *
+ * Copyright (C) 2007 Atmel Corporation
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ */
+#ifndef _LINUX_I2C_GPIO_H
+#define _LINUX_I2C_GPIO_H
+
+/**
+ * struct i2c_gpio_platform_data - Platform-dependent data for i2c-gpio
+ * @sda_pin: GPIO pin ID to use for SDA
+ * @scl_pin: GPIO pin ID to use for SCL
+ * @udelay: signal toggle delay. SCL frequency is (500 / udelay) kHz
+ * @timeout_ms: clock stretching timeout in ms. If the slave keeps
+ *	SCL low for longer than this, the transfer will time out.
+ * @sda_is_open_drain: SDA is configured as open drain, i.e. the pin
+ *	isn't actively driven high when setting the output value high.
+ *	gpio_get_value() must return the actual pin state even if the
+ *	pin is configured as an output.
+ * @scl_is_open_drain: SCL is set up as open drain. Same requirements
+ *	as for sda_is_open_drain apply.
+ * @scl_is_output_only: SCL output drivers cannot be turned off.
+ */
+struct i2c_gpio_platform_data {
+	unsigned int	sda_pin;
+	unsigned int	scl_pin;
+	int		udelay;
+	int		timeout_ms;
+	unsigned int	sda_is_open_drain:1;
+	unsigned int	scl_is_open_drain:1;
+	unsigned int	scl_is_output_only:1;
+};
+
+#endif /* _LINUX_I2C_GPIO_H */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
