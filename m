Delivery-date: Mon, 14 Apr 2025 09:06:33 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4Dtp-000XZ5-1m
	for lore@lore.pengutronix.de;
	Mon, 14 Apr 2025 09:06:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4Dto-00033E-S1
	for lore@pengutronix.de; Mon, 14 Apr 2025 09:06:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sHY3R75QwHClPF2NFixNzaVUCzF5l2ytbeseDrxe/78=; b=ggRWmQ1OPUYfQ9ehs756dmAKOh
	YgybgomcPDJg00IYKL8y2EVsqRJY3PTySYJv0SY6SF4TN6pu+dwwmbUjPLo2WlXzQI0Hxm9UNOsFZ
	adiPFp1QLvVgz3ZKh4FdNhqkdr7nF3lYCgAhHqgsII2DDn3+nFKtLgfQJcGIEMtw5oCrbabFkqFaF
	HCBmA1qII8uB62OXUv0ZZ4izFMzgR8kf4o5aHIzpk372kTV46ACiWk1GoCsuACyRPPIFx5uNhV1OZ
	CpcUdFcRc9FIiOlb3h3zbg5pHkX+tId0V4tAtG9VsEBGSjPs6kjj2JVOSipu3xJOVkxH4UAz5gyyP
	qVtRPjNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4DtO-00000000ssD-2aHr;
	Mon, 14 Apr 2025 07:06:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4Dsk-00000000sjD-1jHi
	for barebox@lists.infradead.org;
	Mon, 14 Apr 2025 07:05:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4Dsj-0002UF-37; Mon, 14 Apr 2025 09:05:25 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4Dsi-000D6B-2t;
	Mon, 14 Apr 2025 09:05:24 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4Dsi-00BgNz-2b;
	Mon, 14 Apr 2025 09:05:24 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Apr 2025 09:05:24 +0200
Message-Id: <20250414070524.2784496-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250414070524.2784496-1-a.fatoum@pengutronix.de>
References: <20250414070524.2784496-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250414_000526_453540_F777CA16 
X-CRM114-Status: GOOD (  19.52  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] drivers: port Linux gpio-mux driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The driver builds a single multiplexer controller using a number
of gpio pins. For N pins, there will be 2^N possible multiplexer
states.

The GPIO pins can be connected (by the hardware) to several
multiplexers. Consumer drivers in turn can reference the mux in
the device tree to control it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mux/Kconfig  |  16 +++++++
 drivers/mux/Makefile |   2 +
 drivers/mux/gpio.c   | 103 +++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 121 insertions(+)
 create mode 100644 drivers/mux/gpio.c

diff --git a/drivers/mux/Kconfig b/drivers/mux/Kconfig
index 280e5527efbe..c68f1d4130ee 100644
--- a/drivers/mux/Kconfig
+++ b/drivers/mux/Kconfig
@@ -10,4 +10,20 @@ config MULTIPLEXER
 menu "Multiplexer drivers"
 	depends on MULTIPLEXER
 
+config MUX_GPIO
+	tristate "GPIO-controlled Multiplexer"
+	depends on GPIOLIB || COMPILE_TEST
+	help
+	  GPIO-controlled Multiplexer controller.
+
+	  The driver builds a single multiplexer controller using a number
+	  of gpio pins. For N pins, there will be 2^N possible multiplexer
+	  states. The GPIO pins can be connected (by the hardware) to several
+	  multiplexers.
+
+	  The barebox driver doesn't implement Linux' fastpath, which enables
+	  atomically switching GPIOs in the same bank where possible.
+	  This means that board code authors need to ensure that intermediate
+	  states when switching some of the GPIOs don't break anything.
+
 endmenu
diff --git a/drivers/mux/Makefile b/drivers/mux/Makefile
index 3dfaf766fea7..22d285ed9d4b 100644
--- a/drivers/mux/Makefile
+++ b/drivers/mux/Makefile
@@ -4,5 +4,7 @@
 #
 
 mux-core-objs			:= core.o
+mux-gpio-objs			:= gpio.o
 
 obj-$(CONFIG_MULTIPLEXER)	+= mux-core.o
+obj-$(CONFIG_MUX_GPIO)		+= mux-gpio.o
diff --git a/drivers/mux/gpio.c b/drivers/mux/gpio.c
new file mode 100644
index 000000000000..4b8a744c2501
--- /dev/null
+++ b/drivers/mux/gpio.c
@@ -0,0 +1,103 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * GPIO-controlled multiplexer driver
+ *
+ * Copyright (C) 2017 Axentia Technologies AB
+ *
+ * Author: Peter Rosin <peda@axentia.se>
+ */
+
+#include <linux/bitmap.h>
+#include <linux/err.h>
+#include <linux/gpio/consumer.h>
+#include <linux/mod_devicetable.h>
+#include <module.h>
+#include <linux/mux/driver.h>
+#include <driver.h>
+#include <of.h>
+
+struct mux_gpio {
+	struct gpio_descs *gpios;
+};
+
+static int mux_gpio_set(struct mux_control *mux, int state)
+{
+	struct mux_gpio *mux_gpio = mux_chip_priv(mux->chip);
+	DECLARE_BITMAP(values, BITS_PER_TYPE(state));
+	u32 value = state;
+
+	bitmap_from_arr32(values, &value, BITS_PER_TYPE(value));
+
+	gpiod_set_array_value(mux_gpio->gpios->ndescs,
+			      mux_gpio->gpios->desc,
+			      mux_gpio->gpios->info, values);
+
+	return 0;
+}
+
+static const struct mux_control_ops mux_gpio_ops = {
+	.set = mux_gpio_set,
+};
+
+static const struct of_device_id mux_gpio_dt_ids[] = {
+	{ .compatible = "gpio-mux", },
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, mux_gpio_dt_ids);
+
+static int mux_gpio_probe(struct device *dev)
+{
+	struct mux_chip *mux_chip;
+	struct mux_gpio *mux_gpio;
+	int pins;
+	s32 idle_state;
+	int ret;
+
+	pins = gpiod_count(dev, "mux");
+	if (pins < 0)
+		return pins;
+
+	mux_chip = mux_chip_alloc(dev, 1, sizeof(*mux_gpio));
+	if (IS_ERR(mux_chip))
+		return PTR_ERR(mux_chip);
+
+	mux_gpio = mux_chip_priv(mux_chip);
+	mux_chip->ops = &mux_gpio_ops;
+
+	mux_gpio->gpios = gpiod_get_array(dev, "mux", GPIOD_OUT_LOW);
+	if (IS_ERR(mux_gpio->gpios))
+		return dev_err_probe(dev, PTR_ERR(mux_gpio->gpios),
+				     "failed to get gpios\n");
+	WARN_ON(pins != mux_gpio->gpios->ndescs);
+	mux_chip->mux->states = BIT(pins);
+
+	ret = of_property_read_u32(dev->of_node, "idle-state", (u32 *)&idle_state);
+	if (ret >= 0 && idle_state != MUX_IDLE_AS_IS) {
+		if (idle_state < 0 || idle_state >= mux_chip->mux->states) {
+			dev_err(dev, "invalid idle-state %u\n", idle_state);
+			return -EINVAL;
+		}
+
+		mux_chip->mux->idle_state = idle_state;
+	}
+
+	ret = mux_chip_register(mux_chip);
+	if (ret < 0)
+		return ret;
+
+	dev_info(dev, "%u-way mux-controller registered\n",
+		 mux_chip->mux->states);
+
+	return 0;
+}
+
+static struct driver mux_gpio_driver = {
+	.name = "gpio-mux",
+	.of_match_table	= mux_gpio_dt_ids,
+	.probe = mux_gpio_probe,
+};
+coredevice_platform_driver(mux_gpio_driver);
+
+MODULE_DESCRIPTION("GPIO-controlled multiplexer driver");
+MODULE_AUTHOR("Peter Rosin <peda@axentia.se>");
+MODULE_LICENSE("GPL v2");
-- 
2.39.5



