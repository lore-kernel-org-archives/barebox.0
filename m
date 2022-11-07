Delivery-date: Mon, 07 Nov 2022 16:02:38 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1os3e2-000W7A-Ad
	for lore@lore.pengutronix.de; Mon, 07 Nov 2022 16:02:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1os3dy-0007rK-J5
	for lore@pengutronix.de; Mon, 07 Nov 2022 16:02:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZhHKEGMjOwwiTMge9BCvXLNqJcuJbMn1JrRVphXmQf4=; b=fNa4TcGDZXM1asZL2OvoyIFm78
	ONYWZSIdR/cN08xIxgfAuj1vcfpCmH2oF6tvWBRR4UNpIgs2KAXeDUUH/L3bfqcreSgygQQ/QGI8F
	bM73Cu0zCsBtnqa2HvzQWp1Y47KrM0iyXNgERRxfowiZeGBk33dGwm9o4QsaVbBUWrfp7rC68Gz1C
	aJtZQ9QRvoB2M0aGOKHXD73rVEHRAlx55oem45F9KPsuMsp6lmtenmOnecpD2FzbAbSNchfHNxOPe
	UCS3Tti+YyoYApZwAEp+KXDn4uQEPiTGkVACaipKliNq2VmX+LigbdInQ21SV3cVAXZEpPEmT1DQs
	PMJX8TNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1os3cR-00FTae-5u; Mon, 07 Nov 2022 15:00:59 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1os3NT-00FKu0-N0
	for barebox@lists.infradead.org; Mon, 07 Nov 2022 14:45:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1os3NP-00037f-SN; Mon, 07 Nov 2022 15:45:27 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1os3NO-002sI9-A7; Mon, 07 Nov 2022 15:45:27 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1os3NO-0023fO-4A; Mon, 07 Nov 2022 15:45:26 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon,  7 Nov 2022 15:45:24 +0100
Message-Id: <20221107144524.489471-5-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221107144524.489471-1-s.hauer@pengutronix.de>
References: <20221107144524.489471-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221107_064531_966406_6F453966 
X-CRM114-Status: GOOD (  25.64  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/4] gpio: Add gpio latch driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This driver implements a GPIO multiplexer based on latches connected to
other GPIOs. A set of data GPIOs is connected to the data input of
multiple latches. The clock input of each latch is driven by another
set of GPIOs. With two 8-bit latches 10 GPIOs can be multiplexed into
16 GPIOs. GPOs might be a better term as in fact the multiplexed pins
are output only.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/gpio/Kconfig      |   6 ++
 drivers/gpio/Makefile     |   1 +
 drivers/gpio/gpio-latch.c | 195 ++++++++++++++++++++++++++++++++++++++
 3 files changed, 202 insertions(+)
 create mode 100644 drivers/gpio/gpio-latch.c

diff --git a/drivers/gpio/Kconfig b/drivers/gpio/Kconfig
index ab75fe4ed9..dd2b56d256 100644
--- a/drivers/gpio/Kconfig
+++ b/drivers/gpio/Kconfig
@@ -205,6 +205,12 @@ config GPIO_ZYNQ
 	help
 	  Say yes here to support Xilinx Zynq GPIO controller.
 
+config GPIO_LATCH
+	tristate "GPIO latch driver"
+	help
+	  Say yes here to enable a driver for GPIO multiplexers based on latches
+	  connected to other GPIOs.
+
 endmenu
 
 endif
diff --git a/drivers/gpio/Makefile b/drivers/gpio/Makefile
index fcb6a232e0..90ab0a8b28 100644
--- a/drivers/gpio/Makefile
+++ b/drivers/gpio/Makefile
@@ -28,3 +28,4 @@ obj-$(CONFIG_GPIO_RASPBERRYPI_EXP) += gpio-raspberrypi-exp.o
 obj-$(CONFIG_GPIO_SIFIVE)	+= gpio-sifive.o
 obj-$(CONFIG_GPIO_STARFIVE)	+= gpio-starfive-vic.o
 obj-$(CONFIG_GPIO_ZYNQ)		+= gpio-zynq.o
+obj-$(CONFIG_GPIO_LATCH)	+= gpio-latch.o
diff --git a/drivers/gpio/gpio-latch.c b/drivers/gpio/gpio-latch.c
new file mode 100644
index 0000000000..2a89f22401
--- /dev/null
+++ b/drivers/gpio/gpio-latch.c
@@ -0,0 +1,195 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * GPIO latch driver
+ *
+ *  Copyright (C) 2022 Sascha Hauer <s.hauer@pengutronix.de>
+ *
+ * This driver implements a GPIO (or better GPO as there is no input)
+ * multiplexer based on latches like this:
+ *
+ * CLK0 ----------------------.        ,--------.
+ * CLK1 -------------------.  `--------|>    #0 |
+ *                         |           |        |
+ * OUT0 ----------------+--|-----------|D0    Q0|-----|<
+ * OUT1 --------------+-|--|-----------|D1    Q1|-----|<
+ * OUT2 ------------+-|-|--|-----------|D2    Q2|-----|<
+ * OUT3 ----------+-|-|-|--|-----------|D3    Q3|-----|<
+ * OUT4 --------+-|-|-|-|--|-----------|D4    Q4|-----|<
+ * OUT5 ------+-|-|-|-|-|--|-----------|D5    Q5|-----|<
+ * OUT6 ----+-|-|-|-|-|-|--|-----------|D6    Q6|-----|<
+ * OUT7 --+-|-|-|-|-|-|-|--|-----------|D7    Q7|-----|<
+ *        | | | | | | | |  |           `--------'
+ *        | | | | | | | |  |
+ *        | | | | | | | |  |           ,--------.
+ *        | | | | | | | |  `-----------|>    #1 |
+ *        | | | | | | | |              |        |
+ *        | | | | | | | `--------------|D0    Q0|-----|<
+ *        | | | | | | `----------------|D1    Q1|-----|<
+ *        | | | | | `------------------|D2    Q2|-----|<
+ *        | | | | `--------------------|D3    Q3|-----|<
+ *        | | | `----------------------|D4    Q4|-----|<
+ *        | | `------------------------|D5    Q5|-----|<
+ *        | `--------------------------|D6    Q6|-----|<
+ *        `----------------------------|D7    Q7|-----|<
+ *                                     `--------'
+ *
+ * The above is just an example. The actual number of number of latches and
+ * the number of inputs per latch is derived from the number of GPIOs given
+ * in the corresponding device tree properties.
+ */
+
+#include <common.h>
+#include <errno.h>
+#include <io.h>
+#include <of.h>
+#include <gpio.h>
+#include <init.h>
+#include <of_gpio.h>
+#include <linux/bitmap.h>
+
+struct gpio_latch_priv {
+	struct gpio_chip gc;
+	int *clk_gpios;
+	int *latched_gpios;
+	int n_latched_gpios;
+	unsigned int setup_duration_ns;
+	unsigned int clock_duration_ns;
+	unsigned long *shadow;
+};
+
+static int gpio_latch_get_direction(struct gpio_chip *gc, unsigned int offset)
+{
+	return 0;
+}
+
+static void gpio_latch_set(struct gpio_chip *gc, unsigned int offset, int val)
+{
+	struct gpio_latch_priv *priv = container_of(gc, struct gpio_latch_priv, gc);
+	int latch = offset / priv->n_latched_gpios;
+	int i;
+
+	assign_bit(offset, priv->shadow, val);
+
+	for (i = 0; i < priv->n_latched_gpios; i++)
+		gpio_set_value(priv->latched_gpios[i],
+			       test_bit(latch * priv->n_latched_gpios + i, priv->shadow));
+
+	ndelay(priv->setup_duration_ns);
+	gpio_set_value(priv->clk_gpios[latch], 1);
+	ndelay(priv->clock_duration_ns);
+	gpio_set_value(priv->clk_gpios[latch], 0);
+}
+static int gpio_latch_direction_output(struct gpio_chip *gc, unsigned gpio, int val)
+{
+	gpio_latch_set(gc, gpio, val);
+
+	return 0;
+}
+
+#define DURATION_NS_MAX 5000
+
+static struct gpio_ops gpio_latch_gpio_ops = {
+	.direction_output = gpio_latch_direction_output,
+	.set = gpio_latch_set,
+	.get_direction = gpio_latch_get_direction,
+};
+
+static int gpio_latch_probe(struct device_d *dev)
+{
+	struct gpio_latch_priv *priv;
+	int n_latches, i, ret;
+	struct device_node *np = dev->device_node;
+	enum of_gpio_flags flags;
+
+	priv = xzalloc(sizeof(*priv));
+
+	n_latches = of_gpio_named_count(np, "clk-gpios");
+	if (n_latches < 0) {
+		dev_err(dev, "invalid or missing clk-gpios");
+		ret = -EINVAL;
+		goto err_gpio;
+	}
+
+	priv->n_latched_gpios = of_gpio_named_count(np, "latched-gpios");
+	if (priv->n_latched_gpios < 0) {
+		dev_err(dev, "invalid or missing latched-gpios");
+		ret = -EINVAL;
+		goto err_gpio;
+	}
+
+	priv->clk_gpios = xzalloc(sizeof(int) * n_latches);
+	priv->latched_gpios = xzalloc(sizeof(int) * priv->n_latched_gpios);
+
+	for (i = 0; i < n_latches; i++) {
+		priv->clk_gpios[i] = of_get_named_gpio_flags(np, "clk-gpios",
+								i, &flags);
+		ret = gpio_request_one(priv->clk_gpios[i],
+				       flags & OF_GPIO_ACTIVE_LOW ? GPIOF_ACTIVE_LOW : 0,
+				       dev_name(dev));
+		if (ret) {
+			dev_err(dev, "Cannot request gpio %d: %s\n", priv->clk_gpios[i],
+				strerror(-ret));
+			goto err_gpio;
+		}
+
+		gpio_direction_output(priv->clk_gpios[i], 0);
+	}
+
+	for (i = 0; i < priv->n_latched_gpios; i++) {
+		priv->latched_gpios[i] = of_get_named_gpio_flags(np, "latched-gpios",
+							      i, &flags);
+		ret = gpio_request_one(priv->latched_gpios[i],
+				       flags & OF_GPIO_ACTIVE_LOW ? GPIOF_ACTIVE_LOW : 0,
+				       dev_name(dev));
+		if (ret) {
+			dev_err(dev, "Cannot request gpio %d: %s\n", priv->latched_gpios[i],
+				strerror(-ret));
+			goto err_gpio;
+		}
+	}
+
+	priv->shadow = bitmap_zalloc(n_latches * priv->n_latched_gpios);
+
+	of_property_read_u32(np, "setup-duration-ns", &priv->setup_duration_ns);
+	if (priv->setup_duration_ns > DURATION_NS_MAX) {
+		dev_warn(dev, "setup-duration-ns too high, limit to %d\n",
+			 DURATION_NS_MAX);
+		priv->setup_duration_ns = DURATION_NS_MAX;
+	}
+
+	of_property_read_u32(np, "clock-duration-ns", &priv->clock_duration_ns);
+	if (priv->clock_duration_ns > DURATION_NS_MAX) {
+		dev_warn(dev, "clock-duration-ns too high, limit to %d\n",
+			 DURATION_NS_MAX);
+		priv->clock_duration_ns = DURATION_NS_MAX;
+	}
+
+	priv->gc.ops = &gpio_latch_gpio_ops;
+	priv->gc.ngpio = n_latches * priv->n_latched_gpios;
+	priv->gc.base = -1;
+	priv->gc.dev = dev;
+
+	return gpiochip_add(&priv->gc);
+
+err_gpio:
+	return ret;
+}
+
+static const struct of_device_id gpio_latch_ids[] = {
+	{
+		.compatible	= "gpio-latch",
+	}, {
+		/* sentinel */
+	}
+};
+
+static struct driver_d gpio_latch_driver = {
+	.name = "gpio-latch",
+	.probe = gpio_latch_probe,
+	.of_compatible = DRV_OF_COMPAT(gpio_latch_ids),
+};
+device_platform_driver(gpio_latch_driver);
+
+MODULE_LICENSE("GPL v2");
+MODULE_AUTHOR("Sascha Hauer <s.hauer@pengutronix.de>");
+MODULE_DESCRIPTION("GPIO latch driver");
-- 
2.30.2



