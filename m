Delivery-date: Mon, 31 May 2021 09:40:40 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lncXQ-0003CA-Np
	for lore@lore.pengutronix.de; Mon, 31 May 2021 09:40:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lncXN-0000ja-Ef
	for lore@pengutronix.de; Mon, 31 May 2021 09:40:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l/Van0mCu5qAynuW+YJaJWt5gQb7nnmkJHI+9CpeEuc=; b=Qvymnp35oCn/6n
	0IF9nuKrY0RCKsJhSjdWcG1XFiLX/pD2yZFVtWdyqHf36s4J2s5rjFeOK01+1aBY3EX8LyNh2McxB
	Zdbf6Y3iWCTOHIQbXTli71l7hNEXnmNfgqmQiHl2AbYiHO2vm1M1lV3dWtOm3OudhGei8MWUVQ4T6
	7LGt29oL972yk7jlTV1kTPVJFKz7ksM8YXiAu7i3YAO7RPnTayj/w/XZgKTlC9WdBik11/G50eLG3
	UQErSMFFuf6f7USpI42Epm9AT7fRo1OBv2aIeRZbZNOdpsW4yrAXpWqn7ayurXooWrGbLKsgAnUkv
	Njfr8v7/uexoMUdXPCAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lncVw-00BD1L-TR; Mon, 31 May 2021 07:39:09 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lncVF-00BCcj-Oz
 for barebox@lists.infradead.org; Mon, 31 May 2021 07:38:32 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lncVE-00080E-9P; Mon, 31 May 2021 09:38:24 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lncVC-00045h-UU; Mon, 31 May 2021 09:38:22 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 31 May 2021 09:38:04 +0200
Message-Id: <20210531073821.15257-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210531073821.15257-1-a.fatoum@pengutronix.de>
References: <20210531073821.15257-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210531_003826_161358_BACF49C7 
X-CRM114-Status: GOOD (  26.61  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 03/20] mfd: add TI TPS65086 PMIC restart driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The PMIC offers regulators, GPIOs and system restart. Add restart only
for now.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mfd/Kconfig                    | 10 +++
 drivers/mfd/Makefile                   |  2 +
 drivers/mfd/core.c                     | 25 +++++++
 drivers/mfd/tps65086.c                 | 76 ++++++++++++++++++++
 drivers/power/reset/Kconfig            |  6 ++
 drivers/power/reset/Makefile           |  1 +
 drivers/power/reset/tps65086-restart.c | 55 +++++++++++++++
 include/linux/mfd/core.h               | 26 +++++++
 include/linux/mfd/tps65086.h           | 98 ++++++++++++++++++++++++++
 9 files changed, 299 insertions(+)
 create mode 100644 drivers/mfd/core.c
 create mode 100644 drivers/mfd/tps65086.c
 create mode 100644 drivers/power/reset/tps65086-restart.c
 create mode 100644 include/linux/mfd/core.h
 create mode 100644 include/linux/mfd/tps65086.h

diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
index d7a8949bafc8..6c76c86fa0cc 100644
--- a/drivers/mfd/Kconfig
+++ b/drivers/mfd/Kconfig
@@ -40,6 +40,16 @@ config MFD_SYSCON
 	help
 	  Select this option to enable accessing system control registers
 
+config MFD_TPS65086
+	bool "TI TPS65086 Power Management Integrated Chips (PMICs)"
+	depends on I2C
+	help
+	  If you say yes here you get support for the TPS65086 series of
+	  Power Management chips.
+	  This driver provides common support for accessing the device,
+	  additional drivers must be enabled in order to use the
+	  functionality of the device.
+
 config MFD_TWLCORE
 	bool
 
diff --git a/drivers/mfd/Makefile b/drivers/mfd/Makefile
index 690e53693ebc..45037e06d62b 100644
--- a/drivers/mfd/Makefile
+++ b/drivers/mfd/Makefile
@@ -7,6 +7,7 @@ obj-$(CONFIG_MFD_MC34704)	+= mc34704.o
 obj-$(CONFIG_MFD_MC9SDZ60)	+= mc9sdz60.o
 obj-$(CONFIG_MFD_STMPE)		+= stmpe-i2c.o
 obj-$(CONFIG_MFD_SYSCON)	+= syscon.o
+obj-$(CONFIG_MFD_TPS65086)	+= tps65086.o
 obj-$(CONFIG_MFD_TWLCORE)	+= twl-core.o
 obj-$(CONFIG_MFD_TWL4030)	+= twl4030.o
 obj-$(CONFIG_MFD_TWL6030)	+= twl6030.o
@@ -17,3 +18,4 @@ obj-$(CONFIG_FINTEK_SUPERIO)	+= fintek-superio.o
 obj-$(CONFIG_SMSC_SUPERIO)	+= smsc-superio.o
 obj-$(CONFIG_MFD_STM32_TIMERS)	+= stm32-timers.o
 obj-$(CONFIG_MFD_ATMEL_FLEXCOM)	+= atmel-flexcom.o
+obj-y				+= core.o
diff --git a/drivers/mfd/core.c b/drivers/mfd/core.c
new file mode 100644
index 000000000000..ee600d4baafd
--- /dev/null
+++ b/drivers/mfd/core.c
@@ -0,0 +1,25 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#include <linux/mfd/core.h>
+#include <driver.h>
+
+int mfd_add_devices(struct device_d *parent, const struct mfd_cell *cells, int n_devs)
+{
+	struct device_d *dev;
+	int ret, i;
+
+	for (i = 0; i < n_devs; i++) {
+		dev = device_alloc(cells[i].name, DEVICE_ID_DYNAMIC);
+		dev->parent = parent;
+
+		ret = platform_device_register(dev);
+		if (ret)
+			return ret;
+
+		ret = device_add_data(dev, (void *)&cells[i], sizeof(cells[i]));
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
diff --git a/drivers/mfd/tps65086.c b/drivers/mfd/tps65086.c
new file mode 100644
index 000000000000..12127922ad2b
--- /dev/null
+++ b/drivers/mfd/tps65086.c
@@ -0,0 +1,76 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2015 Texas Instruments Incorporated - https://www.ti.com/
+ *	Andrew F. Davis <afd@ti.com>
+ */
+
+#include <common.h>
+#include <driver.h>
+#include <errno.h>
+#include <i2c/i2c.h>
+#include <linux/mfd/core.h>
+#include <init.h>
+#include <malloc.h>
+#include <of.h>
+#include <regmap.h>
+#include <xfuncs.h>
+
+#include <linux/mfd/tps65086.h>
+
+static const struct mfd_cell tps65086_cells[] = {
+	{ .name = "tps65086-regulator", },
+	{ .name = "tps65086-gpio", },
+};
+
+static const struct regmap_config tps65086_regmap_config = {
+	.reg_bits = 8,
+	.val_bits = 8,
+	.max_register = 0xB6,
+};
+
+static const struct of_device_id tps65086_of_match_table[] = {
+	{ .compatible = "ti,tps65086", },
+	{ /* sentinel */ }
+};
+
+static int tps65086_probe(struct device_d *dev)
+{
+	struct tps65086 *tps;
+	unsigned int version;
+	int ret;
+
+	tps = xzalloc(sizeof(*tps));
+	tps->dev = dev;
+
+	tps->regmap = regmap_init_i2c(to_i2c_client(dev), &tps65086_regmap_config);
+	if (IS_ERR(tps->regmap)) {
+		dev_err(tps->dev, "Failed to initialize register map\n");
+		return PTR_ERR(tps->regmap);
+	}
+
+	ret = regmap_read(tps->regmap, TPS65086_DEVICEID, &version);
+	if (ret) {
+		dev_err(tps->dev, "Failed to read revision register\n");
+		return ret;
+	}
+
+	dev_info(tps->dev, "Device: TPS65086%01lX, OTP: %c, Rev: %ld\n",
+		 (version & TPS65086_DEVICEID_PART_MASK),
+		 (char)((version & TPS65086_DEVICEID_OTP_MASK) >> 4) + 'A',
+		 (version & TPS65086_DEVICEID_REV_MASK) >> 6);
+
+	dev->priv = tps;
+
+	return mfd_add_devices(tps->dev, tps65086_cells, ARRAY_SIZE(tps65086_cells));
+}
+
+static struct driver_d tps65086_driver = {
+	.name	= "tps65086",
+	.of_compatible = tps65086_of_match_table,
+	.probe		= tps65086_probe,
+};
+device_i2c_driver(tps65086_driver);
+
+MODULE_AUTHOR("Andrew F. Davis <afd@ti.com>");
+MODULE_DESCRIPTION("TPS65086 PMIC Driver");
+MODULE_LICENSE("GPL v2");
diff --git a/drivers/power/reset/Kconfig b/drivers/power/reset/Kconfig
index dec1482ccd0c..09d6ba0d9031 100644
--- a/drivers/power/reset/Kconfig
+++ b/drivers/power/reset/Kconfig
@@ -44,3 +44,9 @@ config POWER_RESET_GPIO_RESTART
 	  This driver supports restarting your board via a GPIO line.
 	  If your board needs a GPIO high/low to restart, say Y and
 	  create a binding in your devicetree.
+
+config POWER_RESET_TPS65086
+	bool "TPS65086 restart driver"
+	depends on MFD_TPS65086
+	help
+	  Reset TPS65086 PMIC on restart.
diff --git a/drivers/power/reset/Makefile b/drivers/power/reset/Makefile
index 33d29d2d9546..b362400ba5ef 100644
--- a/drivers/power/reset/Makefile
+++ b/drivers/power/reset/Makefile
@@ -5,3 +5,4 @@ obj-$(CONFIG_POWER_RESET_SYSCON) += syscon-reboot.o
 obj-$(CONFIG_POWER_RESET_SYSCON_POWEROFF) += syscon-poweroff.o
 obj-$(CONFIG_POWER_RESET_GPIO) += gpio-poweroff.o
 obj-$(CONFIG_POWER_RESET_GPIO_RESTART) += gpio-restart.o
+obj-$(CONFIG_POWER_RESET_TPS65086) += tps65086-restart.o
diff --git a/drivers/power/reset/tps65086-restart.c b/drivers/power/reset/tps65086-restart.c
new file mode 100644
index 000000000000..686f215a7781
--- /dev/null
+++ b/drivers/power/reset/tps65086-restart.c
@@ -0,0 +1,55 @@
+
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2021 Emil Renner Berthing
+ */
+
+#include <common.h>
+#include <init.h>
+#include <regmap.h>
+#include <restart.h>
+
+#include <linux/mfd/tps65086.h>
+
+struct tps65086_restart {
+	struct restart_handler handler;
+	struct tps65086 *tps;
+};
+
+static void __noreturn tps65086_restart_handle(struct restart_handler *this)
+{
+	struct tps65086_restart *tps65086_restart =
+		container_of(this, struct tps65086_restart, handler);
+	int ret;
+
+	ret = regmap_write(tps65086_restart->tps->regmap, TPS65086_FORCESHUTDN, 1);
+	WARN_ON(ret);
+
+	/* give it a little time */
+	mdelay(200);
+
+	panic("Unable to restart system\n");
+}
+
+static int tps65086_restart_probe(struct device_d *dev)
+{
+	struct tps65086_restart *tps65086_restart;
+
+	tps65086_restart = xzalloc(sizeof(*tps65086_restart));
+	tps65086_restart->tps = dev->parent->priv;
+
+	tps65086_restart->handler.name = "tps65086-restart";
+	tps65086_restart->handler.restart = tps65086_restart_handle;
+	tps65086_restart->handler.priority = 192;
+
+	return restart_handler_register(&tps65086_restart->handler);
+}
+
+static struct driver_d tps65086_restart_driver = {
+	.name = "tps65086-restart",
+	.probe = tps65086_restart_probe,
+};
+device_platform_driver(tps65086_restart_driver);
+
+MODULE_AUTHOR("Emil Renner Berthing <kernel@esmil.dk>");
+MODULE_DESCRIPTION("TPS65086 restart driver");
diff --git a/include/linux/mfd/core.h b/include/linux/mfd/core.h
new file mode 100644
index 000000000000..b67ed25b1de8
--- /dev/null
+++ b/include/linux/mfd/core.h
@@ -0,0 +1,26 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * drivers/mfd/mfd-core.h
+ *
+ * core MFD support
+ * Copyright (c) 2006 Ian Molton
+ * Copyright (c) 2007 Dmitry Baryshkov
+ */
+
+#ifndef MFD_CORE_H
+#define MFD_CORE_H
+
+#include <driver.h>
+
+/*
+ * This struct describes the MFD part ("cell").
+ * After registration the copy of this structure will become the platform data
+ * of the resulting device_d
+ */
+struct mfd_cell {
+	const char		*name;
+};
+
+int mfd_add_devices(struct device_d *parent, const struct mfd_cell *cells, int n_devs);
+
+#endif
diff --git a/include/linux/mfd/tps65086.h b/include/linux/mfd/tps65086.h
new file mode 100644
index 000000000000..70ecde153ff2
--- /dev/null
+++ b/include/linux/mfd/tps65086.h
@@ -0,0 +1,98 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (C) 2015 Texas Instruments Incorporated - https://www.ti.com/
+ *	Andrew F. Davis <afd@ti.com>
+ *
+ * Based on the TPS65912 driver
+ */
+
+#ifndef __LINUX_MFD_TPS65086_H
+#define __LINUX_MFD_TPS65086_H
+
+#include <driver.h>
+#include <regmap.h>
+
+/* List of registers for TPS65086 */
+#define TPS65086_DEVICEID		0x01
+#define TPS65086_IRQ			0x02
+#define TPS65086_IRQ_MASK		0x03
+#define TPS65086_PMICSTAT		0x04
+#define TPS65086_SHUTDNSRC		0x05
+#define TPS65086_BUCK1CTRL		0x20
+#define TPS65086_BUCK2CTRL		0x21
+#define TPS65086_BUCK3DECAY		0x22
+#define TPS65086_BUCK3VID		0x23
+#define TPS65086_BUCK3SLPCTRL		0x24
+#define TPS65086_BUCK4CTRL		0x25
+#define TPS65086_BUCK5CTRL		0x26
+#define TPS65086_BUCK6CTRL		0x27
+#define TPS65086_LDOA2CTRL		0x28
+#define TPS65086_LDOA3CTRL		0x29
+#define TPS65086_DISCHCTRL1		0x40
+#define TPS65086_DISCHCTRL2		0x41
+#define TPS65086_DISCHCTRL3		0x42
+#define TPS65086_PG_DELAY1		0x43
+#define TPS65086_FORCESHUTDN		0x91
+#define TPS65086_BUCK1SLPCTRL		0x92
+#define TPS65086_BUCK2SLPCTRL		0x93
+#define TPS65086_BUCK4VID		0x94
+#define TPS65086_BUCK4SLPVID		0x95
+#define TPS65086_BUCK5VID		0x96
+#define TPS65086_BUCK5SLPVID		0x97
+#define TPS65086_BUCK6VID		0x98
+#define TPS65086_BUCK6SLPVID		0x99
+#define TPS65086_LDOA2VID		0x9A
+#define TPS65086_LDOA3VID		0x9B
+#define TPS65086_BUCK123CTRL		0x9C
+#define TPS65086_PG_DELAY2		0x9D
+#define TPS65086_PIN_EN_MASK1		0x9E
+#define TPS65086_PIN_EN_MASK2		0x9F
+#define TPS65086_SWVTT_EN		0x9F
+#define TPS65086_PIN_EN_OVR1		0xA0
+#define TPS65086_PIN_EN_OVR2		0xA1
+#define TPS65086_GPOCTRL		0xA1
+#define TPS65086_PWR_FAULT_MASK1	0xA2
+#define TPS65086_PWR_FAULT_MASK2	0xA3
+#define TPS65086_GPO1PG_CTRL1		0xA4
+#define TPS65086_GPO1PG_CTRL2		0xA5
+#define TPS65086_GPO4PG_CTRL1		0xA6
+#define TPS65086_GPO4PG_CTRL2		0xA7
+#define TPS65086_GPO2PG_CTRL1		0xA8
+#define TPS65086_GPO2PG_CTRL2		0xA9
+#define TPS65086_GPO3PG_CTRL1		0xAA
+#define TPS65086_GPO3PG_CTRL2		0xAB
+#define TPS65086_LDOA1CTRL		0xAE
+#define TPS65086_PG_STATUS1		0xB0
+#define TPS65086_PG_STATUS2		0xB1
+#define TPS65086_PWR_FAULT_STATUS1	0xB2
+#define TPS65086_PWR_FAULT_STATUS2	0xB3
+#define TPS65086_TEMPCRIT		0xB4
+#define TPS65086_TEMPHOT		0xB5
+#define TPS65086_OC_STATUS		0xB6
+
+/* IRQ Register field definitions */
+#define TPS65086_IRQ_DIETEMP_MASK	BIT(0)
+#define TPS65086_IRQ_SHUTDN_MASK	BIT(3)
+#define TPS65086_IRQ_FAULT_MASK		BIT(7)
+
+/* DEVICEID Register field definitions */
+#define TPS65086_DEVICEID_PART_MASK	GENMASK(3, 0)
+#define TPS65086_DEVICEID_OTP_MASK	GENMASK(5, 4)
+#define TPS65086_DEVICEID_REV_MASK	GENMASK(7, 6)
+
+/* VID Masks */
+#define BUCK_VID_MASK			GENMASK(7, 1)
+#define VDOA1_VID_MASK			GENMASK(4, 1)
+#define VDOA23_VID_MASK			GENMASK(3, 0)
+
+/**
+ * struct tps65086 - state holder for the tps65086 driver
+ *
+ * Device data may be used to access the TPS65086 chip
+ */
+struct tps65086 {
+	struct device_d *dev;
+	struct regmap *regmap;
+};
+
+#endif /* __LINUX_MFD_TPS65086_H */
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

