Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo4.mail-out.ovh.net ([46.105.57.129]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TTrMk-0006Ze-QU
 for barebox@lists.infradead.org; Thu, 01 Nov 2012 09:47:12 +0000
Received: from mail192.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 0B255104FCEE
 for <barebox@lists.infradead.org>; Thu,  1 Nov 2012 10:54:14 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu,  1 Nov 2012 10:44:52 +0100
Message-Id: <1351763092-5781-4-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1351763092-5781-1-git-send-email-plagnioj@jcrosoft.com>
References: <20121101094216.GI29599@game.jcrosoft.org>
 <1351763092-5781-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 4/4] i2c: add versatile support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/i2c/busses/Kconfig         |    8 +++
 drivers/i2c/busses/Makefile        |    1 +
 drivers/i2c/busses/i2c-versatile.c |  112 ++++++++++++++++++++++++++++++++++++
 3 files changed, 121 insertions(+)
 create mode 100644 drivers/i2c/busses/i2c-versatile.c

diff --git a/drivers/i2c/busses/Kconfig b/drivers/i2c/busses/Kconfig
index 17e33cb..68d9b46 100644
--- a/drivers/i2c/busses/Kconfig
+++ b/drivers/i2c/busses/Kconfig
@@ -20,4 +20,12 @@ config I2C_OMAP
 	bool "OMAP I2C Master driver"
 	depends on ARCH_OMAP
 
+config I2C_VERSATILE
+	tristate "ARM Versatile/Realview I2C bus support"
+	depends on ARCH_VERSATILE
+	select I2C_ALGOBIT
+	help
+	  Say yes if you want to support the I2C serial bus on ARMs Versatile
+	  range of platforms.
+
 endmenu
diff --git a/drivers/i2c/busses/Makefile b/drivers/i2c/busses/Makefile
index 18c7c46..a30f9b8 100644
--- a/drivers/i2c/busses/Makefile
+++ b/drivers/i2c/busses/Makefile
@@ -1,3 +1,4 @@
 obj-$(CONFIG_I2C_GPIO)		+= i2c-gpio.o
 obj-$(CONFIG_I2C_IMX) += i2c-imx.o
 obj-$(CONFIG_I2C_OMAP) += i2c-omap.o
+obj-$(CONFIG_I2C_VERSATILE)	+= i2c-versatile.o
diff --git a/drivers/i2c/busses/i2c-versatile.c b/drivers/i2c/busses/i2c-versatile.c
new file mode 100644
index 0000000..7c99322
--- /dev/null
+++ b/drivers/i2c/busses/i2c-versatile.c
@@ -0,0 +1,112 @@
+/*
+ *  i2c-versatile.c
+ *
+ *  Copyright (C) 2006 ARM Ltd.
+ *  written by Russell King, Deep Blue Solutions Ltd.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ */
+#include <common.h>
+#include <driver.h>
+#include <i2c/i2c.h>
+#include <i2c/i2c-algo-bit.h>
+#include <init.h>
+#include <malloc.h>
+#include <io.h>
+
+#define I2C_CONTROL	0x00
+#define I2C_CONTROLS	0x00
+#define I2C_CONTROLC	0x04
+#define SCL		(1 << 0)
+#define SDA		(1 << 1)
+
+struct i2c_versatile {
+	struct i2c_adapter	 adap;
+	struct i2c_algo_bit_data algo;
+	void __iomem		 *base;
+};
+
+static void i2c_versatile_setsda(void *data, int state)
+{
+	struct i2c_versatile *i2c = data;
+
+	writel(SDA, i2c->base + (state ? I2C_CONTROLS : I2C_CONTROLC));
+}
+
+static void i2c_versatile_setscl(void *data, int state)
+{
+	struct i2c_versatile *i2c = data;
+
+	writel(SCL, i2c->base + (state ? I2C_CONTROLS : I2C_CONTROLC));
+}
+
+static int i2c_versatile_getsda(void *data)
+{
+	struct i2c_versatile *i2c = data;
+	return !!(readl(i2c->base + I2C_CONTROL) & SDA);
+}
+
+static int i2c_versatile_getscl(void *data)
+{
+	struct i2c_versatile *i2c = data;
+	return !!(readl(i2c->base + I2C_CONTROL) & SCL);
+}
+
+static struct i2c_algo_bit_data i2c_versatile_algo = {
+	.setsda	= i2c_versatile_setsda,
+	.setscl = i2c_versatile_setscl,
+	.getsda	= i2c_versatile_getsda,
+	.getscl = i2c_versatile_getscl,
+	.udelay	= 30,
+	.timeout_ms = 100,
+};
+
+static int i2c_versatile_probe(struct device_d *dev)
+{
+	struct i2c_versatile *i2c;
+	int ret;
+
+	i2c = kzalloc(sizeof(struct i2c_versatile), GFP_KERNEL);
+	if (!i2c) {
+		ret = -ENOMEM;
+		goto err_release;
+	}
+
+	i2c->base = dev_request_mem_region(dev, 0);
+	if (!i2c->base) {
+		ret = -ENOMEM;
+		goto err_free;
+	}
+
+	writel(SCL | SDA, i2c->base + I2C_CONTROLS);
+
+	i2c->adap.algo_data = &i2c->algo;
+	i2c->adap.dev.parent = dev;
+	i2c->algo = i2c_versatile_algo;
+	i2c->algo.data = i2c;
+
+	i2c->adap.nr = dev->id;
+	ret = i2c_bit_add_numbered_bus(&i2c->adap);
+	if (ret >= 0) {
+		return 0;
+	}
+
+ err_free:
+	kfree(i2c);
+ err_release:
+	return ret;
+}
+
+static struct driver_d i2c_versatile_driver = {
+	.name	= "versatile-i2c",
+	.probe	= i2c_versatile_probe,
+};
+
+static int __init i2c_versatile_init(void)
+{
+	return platform_driver_register(&i2c_versatile_driver);
+}
+
+device_initcall(i2c_versatile_init);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
