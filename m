Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hctEg-0000S4-M6
 for barebox@lists.infradead.org; Mon, 17 Jun 2019 15:08:03 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1hctEf-0000j3-1B
 for barebox@lists.infradead.org; Mon, 17 Jun 2019 17:07:53 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1hctEe-0002GF-G3
 for barebox@lists.infradead.org; Mon, 17 Jun 2019 17:07:52 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 17 Jun 2019 17:07:44 +0200
Message-Id: <20190617150751.3421-6-a.fatoum@pengutronix.de>
In-Reply-To: <20190617150751.3421-1-a.fatoum@pengutronix.de>
References: <20190617150751.3421-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v1 05/12] pinctrl: add driver for STM32 GPIO and pin
 multiplexer
To: barebox@lists.infradead.org

This adds driver support for the 12 GPIO banks on the STM32MP157.
As they are accessible to both the Cortex-A cores as well as the Cortex-M
core, modifications to these are protected by a hardware spinlock
and clocks are enabled/disabled as required.

All register fiddling done by the driver is collected in <soc/stm32/gpio.h>,
so future PBL code may make use of it as well to chainload barebox proper.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/Kconfig                |   1 +
 arch/arm/dts/stm32mp157c.dtsi   |  15 ++
 drivers/pinctrl/Kconfig         |   6 +
 drivers/pinctrl/Makefile        |   1 +
 drivers/pinctrl/pinctrl-stm32.c | 425 ++++++++++++++++++++++++++++++++
 include/soc/stm32/gpio.h        | 120 +++++++++
 6 files changed, 568 insertions(+)
 create mode 100644 drivers/pinctrl/pinctrl-stm32.c
 create mode 100644 include/soc/stm32/gpio.h

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 1d4b6e09ce79..0f5190b417ff 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -216,6 +216,7 @@ config ARCH_STM32MP
 	select COMMON_CLK_OF_PROVIDER
 	select HAS_DEBUG_LL
 	select HAVE_CLK
+	select GPIOLIB
 
 config ARCH_VERSATILE
 	bool "ARM Versatile boards (ARM926EJ-S)"
diff --git a/arch/arm/dts/stm32mp157c.dtsi b/arch/arm/dts/stm32mp157c.dtsi
index fa0d00ff02fe..b97622c8d4cb 100644
--- a/arch/arm/dts/stm32mp157c.dtsi
+++ b/arch/arm/dts/stm32mp157c.dtsi
@@ -4,4 +4,19 @@
 		/* Needed to let barebox find the clock nodes */
 		compatible = "simple-bus";
 	};
+
+	aliases {
+		gpio0 = &gpioa;
+		gpio1 = &gpiob;
+		gpio2 = &gpioc;
+		gpio3 = &gpiod;
+		gpio4 = &gpioe;
+		gpio5 = &gpiof;
+		gpio6 = &gpiog;
+		gpio7 = &gpioh;
+		gpio8 = &gpioi;
+		gpio9 = &gpioj;
+		gpio10 = &gpiok;
+		gpio11 = &gpioz;
+	};
 };
diff --git a/drivers/pinctrl/Kconfig b/drivers/pinctrl/Kconfig
index 46badeee0693..e2fb0af7562a 100644
--- a/drivers/pinctrl/Kconfig
+++ b/drivers/pinctrl/Kconfig
@@ -90,6 +90,12 @@ config PINCTRL_VF610
 	default y if ARCH_VF610
 	help
 	  Pinmux controller found on Vybrid VF610 family of SoCs
+
+config PINCTRL_STM32
+	bool
+	default y if ARCH_STM32MP
+	help
+	  Pinmux and GPIO controller found on STM32 family
 endif
 
 endmenu
diff --git a/drivers/pinctrl/Makefile b/drivers/pinctrl/Makefile
index 35b2d4707c39..9cb5e994777a 100644
--- a/drivers/pinctrl/Makefile
+++ b/drivers/pinctrl/Makefile
@@ -11,5 +11,6 @@ obj-$(CONFIG_PINCTRL_TEGRA20) += pinctrl-tegra20.o
 obj-$(CONFIG_PINCTRL_TEGRA30) += pinctrl-tegra30.o
 obj-$(CONFIG_PINCTRL_TEGRA_XUSB) += pinctrl-tegra-xusb.o
 obj-$(CONFIG_PINCTRL_VF610) += pinctrl-vf610.o
+obj-$(CONFIG_PINCTRL_STM32) += pinctrl-stm32.o
 
 obj-$(CONFIG_ARCH_MVEBU) += mvebu/
diff --git a/drivers/pinctrl/pinctrl-stm32.c b/drivers/pinctrl/pinctrl-stm32.c
new file mode 100644
index 000000000000..8e392eac5099
--- /dev/null
+++ b/drivers/pinctrl/pinctrl-stm32.c
@@ -0,0 +1,425 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2015 Maxime Coquelin
+ * Copyright (C) 2017 STMicroelectronics
+ * Copyright (C) 2019 Ahmad Fatoum, Pengutronix
+ */
+
+#include <common.h>
+#include <init.h>
+#include <io.h>
+#include <of.h>
+#include <of_address.h>
+#include <pinctrl.h>
+#include <gpio.h>
+#include <hwspinlock.h>
+#include <malloc.h>
+#include <linux/clk.h>
+#include <soc/stm32/gpio.h>
+
+#define STM32_PIN_NO(x) ((x) << 8)
+#define STM32_GET_PIN_NO(x) ((x) >> 8)
+#define STM32_GET_PIN_FUNC(x) ((x) & 0xff)
+
+struct stm32_gpio_bank {
+	void __iomem *base;
+	struct gpio_chip chip;
+	struct clk *clk;
+	const char *name;
+};
+
+struct stm32_pinctrl {
+	struct pinctrl_device pdev;
+	struct hwspinlock hws;
+	struct stm32_gpio_bank gpio_banks[];
+};
+
+static inline struct stm32_pinctrl *to_stm32_pinctrl(struct pinctrl_device *pdev)
+{
+	return container_of(pdev, struct stm32_pinctrl, pdev);
+}
+
+static inline struct stm32_gpio_bank *to_stm32_gpio_bank(struct gpio_chip *chip)
+{
+	return container_of(chip, struct stm32_gpio_bank, chip);
+}
+
+static inline int stm32_gpio_pin(int gpio, struct stm32_gpio_bank **bank)
+{
+	if (bank) {
+		struct gpio_chip *chip;
+
+		chip = gpio_get_chip(gpio);
+		if (!chip)
+			return PTR_ERR(chip);
+
+		*bank = to_stm32_gpio_bank(chip);
+	}
+
+	return gpio % STM32_GPIO_PINS_PER_BANK;
+}
+
+static inline u32 stm32_gpio_get_mode(u32 function)
+{
+	switch (function) {
+	case STM32_PIN_GPIO:
+		return 0;
+	case STM32_PIN_AF(0) ... STM32_PIN_AF(15):
+		return 2;
+	case STM32_PIN_ANALOG:
+		return 3;
+	}
+
+	return 0;
+}
+
+static inline u32 stm32_gpio_get_alt(u32 function)
+{
+	switch (function) {
+	case STM32_PIN_GPIO:
+		return 0;
+	case STM32_PIN_AF(0) ... STM32_PIN_AF(15):
+		return function - 1;
+	case STM32_PIN_ANALOG:
+		return 0;
+	}
+
+	return 0;
+}
+
+static int stm32_pinctrl_set_state(struct pinctrl_device *pdev, struct device_node *group)
+{
+	struct stm32_pinctrl *pinctrl = to_stm32_pinctrl(pdev);
+	struct device_node *pins;
+	int ret;
+
+	ret = hwspinlock_lock_timeout(&pinctrl->hws, 10);
+	if (ret == -ETIMEDOUT) {
+		dev_err(pdev->dev, "hw spinlock timeout\n");
+		return ret;
+	}
+
+	for_each_child_of_node(group, pins) {
+		int num_pins = 0, i;
+		u32 slew_rate;
+		bool adjust_slew_rate = false;
+		enum stm32_pin_bias bias = -1;
+		enum stm32_pin_out_type out_type = -1;
+		enum { PIN_INPUT, PIN_OUTPUT_LOW, PIN_OUTPUT_HIGH } dir = -1;
+
+		of_get_property(pins, "pinmux", &num_pins);
+		num_pins /= sizeof(__be32);
+		if (!num_pins) {
+			dev_err(pdev->dev, "Invalid pinmux property in %s\n",
+				pins->full_name);
+			return -EINVAL;
+		}
+
+		ret = of_property_read_u32(pins, "slew-rate", &slew_rate);
+		if (!ret)
+			adjust_slew_rate = true;
+
+		if (of_get_property(pins, "bias-disable", NULL))
+			bias = STM32_PIN_NO_BIAS;
+		else if (of_get_property(pins, "bias-pull-up", NULL))
+			bias = STM32_PIN_PULL_UP;
+		else if (of_get_property(pins, "bias-pull-down", NULL))
+			bias = STM32_PIN_PULL_DOWN;
+
+		if (of_get_property(pins, "drive-push-pull", NULL))
+			out_type = STM32_PIN_OUT_PUSHPULL;
+		else if (of_get_property(pins, "drive-open-drain", NULL))
+			out_type = STM32_PIN_OUT_OPENDRAIN;
+
+		if (of_get_property(pins, "input-enable", NULL))
+			dir = PIN_INPUT;
+		else if (of_get_property(pins, "output-low", NULL))
+			dir = PIN_OUTPUT_LOW;
+		else if (of_get_property(pins, "output-high", NULL))
+			dir = PIN_OUTPUT_HIGH;
+
+		for (i = 0; i < num_pins; i++) {
+			struct stm32_gpio_bank *bank = NULL;
+			u32 pinfunc, mode, alt;
+			unsigned offset, func;
+
+			ret = of_property_read_u32_index(pins, "pinmux",
+					i, &pinfunc);
+			if (ret)
+				return ret;
+
+			func = STM32_GET_PIN_FUNC(pinfunc);
+			offset = stm32_gpio_pin(STM32_GET_PIN_NO(pinfunc), &bank);
+			if (offset < 0)
+				return -ENODEV;
+
+			dev_dbg(pdev->dev, "configuring port %s pin %u with:\n\t"
+				"fn %u, mode %u, alt %u\n",
+				bank->name, offset, func, mode, alt);
+
+			mode = stm32_gpio_get_mode(func);
+			alt = stm32_gpio_get_alt(func);
+
+			clk_enable(bank->clk);
+
+			__stm32_pmx_set_mode(bank->base, offset, mode, alt);
+
+			if (adjust_slew_rate)
+				__stm32_pmx_set_speed(bank->base, offset, slew_rate);
+
+			if (bias != -1)
+				__stm32_pmx_set_bias(bank->base, offset, bias);
+
+			if (out_type != -1)
+				__stm32_pmx_set_output_type(bank->base, offset, out_type);
+
+			if (dir == PIN_INPUT)
+				__stm32_pmx_gpio_input(bank->base, offset);
+			else if (dir == PIN_OUTPUT_LOW)
+				__stm32_pmx_gpio_output(bank->base, offset, 0);
+			else if (dir == PIN_OUTPUT_HIGH)
+				__stm32_pmx_gpio_output(bank->base, offset, 1);
+
+			clk_disable(bank->clk);
+		}
+	}
+
+	hwspinlock_unlock(&pinctrl->hws);
+
+	return 0;
+}
+
+/* GPIO functions */
+
+static int stm32_gpio_get_direction(struct gpio_chip *chip, unsigned int gpio)
+{
+	struct stm32_gpio_bank *bank = to_stm32_gpio_bank(chip);
+	int ret;
+	u32 mode, alt;
+
+	clk_enable(bank->clk);
+
+	__stm32_pmx_get_mode(bank->base, stm32_gpio_pin(gpio, NULL), &mode, &alt);
+	if ((alt == 0) && (mode == 0))
+		ret = 1;
+	else if ((alt == 0) && (mode == 1))
+		ret = 0;
+	else
+		ret = -EINVAL;
+
+	clk_disable(bank->clk);
+
+	return ret;
+}
+
+static void stm32_gpio_set(struct gpio_chip *chip, unsigned gpio, int value)
+{
+	struct stm32_gpio_bank *bank = to_stm32_gpio_bank(chip);
+
+	clk_enable(bank->clk);
+
+	__stm32_pmx_gpio_set(bank->base, stm32_gpio_pin(gpio, NULL), value);
+
+	clk_disable(bank->clk);
+}
+
+static int stm32_gpio_get(struct gpio_chip *chip, unsigned gpio)
+{
+	struct stm32_gpio_bank *bank = to_stm32_gpio_bank(chip);
+	int ret;
+
+	clk_enable(bank->clk);
+
+	ret = __stm32_pmx_gpio_get(bank->base, stm32_gpio_pin(gpio, NULL));
+
+	clk_disable(bank->clk);
+
+	return ret;
+}
+
+static int stm32_gpio_direction_input(struct gpio_chip *chip, unsigned gpio)
+{
+	struct stm32_gpio_bank *bank = to_stm32_gpio_bank(chip);
+
+	clk_enable(bank->clk);
+
+	__stm32_pmx_gpio_input(bank->base, stm32_gpio_pin(gpio, NULL));
+
+	clk_disable(bank->clk);
+
+	return 0;
+}
+
+static int stm32_gpio_direction_output(struct gpio_chip *chip,
+				       unsigned gpio, int value)
+{
+	struct stm32_gpio_bank *bank = to_stm32_gpio_bank(chip);
+
+	clk_enable(bank->clk);
+
+	__stm32_pmx_gpio_output(bank->base, stm32_gpio_pin(gpio, NULL), value);
+
+	clk_disable(bank->clk);
+
+	return 0;
+}
+
+static struct gpio_ops stm32_gpio_ops = {
+	.direction_input = stm32_gpio_direction_input,
+	.direction_output = stm32_gpio_direction_output,
+	.get_direction = stm32_gpio_get_direction,
+	.get = stm32_gpio_get,
+	.set = stm32_gpio_set,
+};
+
+static int stm32_gpiochip_add(struct stm32_gpio_bank *bank,
+			      struct device_node *np,
+			      struct device_d *parent)
+{
+	struct device_d *dev;
+	struct resource *iores;
+	enum { PINCTRL_PHANDLE, GPIOCTRL_OFFSET, PINCTRL_OFFSET, PINCOUNT, GPIO_RANGE_NCELLS };
+	const __be32 *gpio_ranges;
+	u32 ngpios;
+	int id, ret, size;
+
+	dev = of_platform_device_create(np, parent);
+	if (!dev)
+		return -ENODEV;
+
+	gpio_ranges = of_get_property(np, "gpio-ranges", &size);
+	size /= sizeof(__be32);
+	if (!gpio_ranges || size < GPIO_RANGE_NCELLS) {
+		dev_err(dev, "Couldn't read 'gpio-ranges' property in %s\n",
+			np->full_name);
+		return -EINVAL;
+	}
+
+	ret = of_property_read_u32(np, "ngpios", &ngpios);
+	if (ret)
+		ngpios = be32_to_cpu(gpio_ranges[PINCOUNT]);
+
+	bank->chip.ngpio = ngpios;
+
+	if (size > GPIO_RANGE_NCELLS) {
+		dev_err(dev, "Unsupported disjunct 'gpio-ranges' in %s\n",
+			np->full_name);
+		return -EINVAL;
+	}
+
+	if (ngpios > STM32_GPIO_PINS_PER_BANK) {
+		dev_err(dev, "ngpios property expected to be %u at most in %s\n",
+			ngpios, np->full_name);
+		return -EINVAL;
+	}
+
+	ret = of_property_read_string(np, "st,bank-name", &bank->name);
+	if (ret)
+		bank->name = np->name;
+
+	iores = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(iores)) {
+		dev_err(dev, "Failed to request GPIO memory resource\n");
+		return PTR_ERR(iores);
+	}
+
+	bank->base = IOMEM(iores->start);
+
+	if (dev->id >= 0) {
+		id = dev->id;
+	} else {
+		id = of_alias_get_id(np, "gpio");
+		if (id < 0) {
+			dev_err(dev, "Failed to get GPIO alias\n");
+			return id;
+		}
+	}
+
+	bank->chip.base = id * STM32_GPIO_PINS_PER_BANK;
+	bank->chip.ops  = &stm32_gpio_ops;
+	bank->chip.dev  = dev;
+	bank->clk = clk_get(dev, NULL);
+	if (IS_ERR(bank->clk)) {
+		dev_err(dev, "failed to get clk (%ld)\n", PTR_ERR(bank->clk));
+		return PTR_ERR(bank->clk);
+	}
+
+	return gpiochip_add(&bank->chip);
+}
+
+static struct pinctrl_ops stm32_pinctrl_ops = {
+	.set_state = stm32_pinctrl_set_state,
+};
+
+static int stm32_pinctrl_probe(struct device_d *dev)
+{
+	struct stm32_pinctrl *pinctrl;
+	unsigned nbanks = 0;
+	struct stm32_gpio_bank *gpio_bank;
+	struct device_node *np = dev->device_node, *child;
+	int ret;
+
+	if (!of_find_property(np, "pins-are-numbered", NULL)) {
+		dev_err(dev, "only pins-are-numbered format supported\n");
+		return -EINVAL;
+	}
+
+	for_each_available_child_of_node(np, child)
+		if (of_property_read_bool(child, "gpio-controller"))
+			nbanks++;
+
+	pinctrl = xzalloc(sizeof(*pinctrl) + nbanks * sizeof(struct stm32_gpio_bank));
+
+	pinctrl->pdev.dev = dev;
+	pinctrl->pdev.ops = &stm32_pinctrl_ops;
+
+	/* hwspinlock property is optional, just log the error */
+	ret = hwspinlock_get_by_index(dev, 0, &pinctrl->hws);
+	if (ret)
+		dev_dbg(dev, "proceeding without hw spinlock support: (%d)\n",
+			ret);
+
+	ret = pinctrl_register(&pinctrl->pdev);
+	if (ret) {
+		dev_dbg(dev, "pinctrl_register failed: (%d)\n", ret);
+		return ret;
+	}
+
+	gpio_bank = pinctrl->gpio_banks;
+	for_each_available_child_of_node(np, child) {
+		if (!of_property_read_bool(child, "gpio-controller"))
+			continue;
+
+		ret = stm32_gpiochip_add(gpio_bank++, child, dev);
+		if (ret) {
+			dev_err(dev, "couldn't add gpiochip %s, ret = %d\n", child->name, ret);
+			return ret;
+		}
+	}
+
+	dev_info(dev, "pinctrl/gpio driver registered\n");
+
+	return 0;
+}
+
+static __maybe_unused struct of_device_id stm32_pinctrl_dt_ids[] = {
+	{ .compatible = "st,stm32f429-pinctrl" },
+	{ .compatible = "st,stm32f469-pinctrl" },
+	{ .compatible = "st,stm32f746-pinctrl" },
+	{ .compatible = "st,stm32h743-pinctrl" },
+	{ .compatible = "st,stm32mp157-pinctrl" },
+	{ .compatible = "st,stm32mp157-z-pinctrl" },
+	{ /* sentinel */ }
+};
+
+static struct driver_d stm32_pinctrl_driver = {
+	.name		= "stm32-pinctrl",
+	.probe		= stm32_pinctrl_probe,
+	.of_compatible	= DRV_OF_COMPAT(stm32_pinctrl_dt_ids),
+};
+
+static int stm32_pinctrl_init(void)
+{
+	return platform_driver_register(&stm32_pinctrl_driver);
+}
+core_initcall(stm32_pinctrl_init);
diff --git a/include/soc/stm32/gpio.h b/include/soc/stm32/gpio.h
new file mode 100644
index 000000000000..13b492a6937c
--- /dev/null
+++ b/include/soc/stm32/gpio.h
@@ -0,0 +1,120 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2015 Maxime Coquelin
+ * Copyright (C) 2017 STMicroelectronics
+ * Copyright (C) 2019 Ahmad Fatoum, Pengutronix
+ */
+
+#ifndef __STM32_GPIO_H__
+#define __STM32_GPIO_H__
+
+#include <io.h>
+
+#define STM32_GPIO_MODER	0x00
+#define STM32_GPIO_TYPER	0x04
+#define STM32_GPIO_SPEEDR	0x08
+#define STM32_GPIO_PUPDR	0x0c
+#define STM32_GPIO_IDR		0x10
+#define STM32_GPIO_ODR		0x14
+#define STM32_GPIO_BSRR		0x18
+#define STM32_GPIO_LCKR		0x1c
+#define STM32_GPIO_AFRL		0x20
+#define STM32_GPIO_AFRH		0x24
+
+#define STM32_PIN_GPIO		0
+#define STM32_PIN_AF(x)		((x) + 1)
+#define STM32_PIN_ANALOG	(STM32_PIN_AF(15) + 1)
+
+#define STM32_GPIO_PINS_PER_BANK	16
+
+enum stm32_pin_bias { STM32_PIN_NO_BIAS, STM32_PIN_PULL_UP, STM32_PIN_PULL_DOWN };
+enum stm32_pin_out_type { STM32_PIN_OUT_PUSHPULL, STM32_PIN_OUT_OPENDRAIN };
+
+static inline void __stm32_pmx_set_speed(void __iomem  *base,
+					 unsigned offset, u32 speed)
+{
+	u32 val = readl(base + STM32_GPIO_SPEEDR);
+	val &= ~GENMASK(offset * 2 + 1, offset * 2);
+	val |= speed << (offset * 2);
+	writel(val, base + STM32_GPIO_SPEEDR);
+}
+
+static inline void __stm32_pmx_set_bias(void __iomem *base, unsigned offset,
+					enum stm32_pin_bias bias)
+{
+	u32 val = readl(base + STM32_GPIO_PUPDR);
+	val &= ~GENMASK(offset * 2 + 1, offset * 2);
+	val |= bias << (offset * 2);
+	writel(val, base + STM32_GPIO_PUPDR);
+}
+
+static inline void __stm32_pmx_set_mode(void __iomem *base,
+					int pin, u32 mode, u32 alt)
+{
+	u32 val;
+	int alt_shift = (pin % 8) * 4;
+	int alt_offset = STM32_GPIO_AFRL + (pin / 8) * 4;
+
+	val = readl(base + alt_offset);
+	val &= ~GENMASK(alt_shift + 3, alt_shift);
+	val |= (alt << alt_shift);
+	writel(val, base + alt_offset);
+
+	val = readl(base + STM32_GPIO_MODER);
+	val &= ~GENMASK(pin * 2 + 1, pin * 2);
+	val |= mode << (pin * 2);
+	writel(val, base + STM32_GPIO_MODER);
+}
+
+static inline void __stm32_pmx_get_mode(void __iomem *base, int pin,
+					u32 *mode, u32 *alt)
+{
+	u32 val;
+	int alt_shift = (pin % 8) * 4;
+	int alt_offset = STM32_GPIO_AFRL + (pin / 8) * 4;
+
+	val = readl(base + alt_offset);
+	val &= GENMASK(alt_shift + 3, alt_shift);
+	*alt = val >> alt_shift;
+
+	val = readl(base + STM32_GPIO_MODER);
+	val &= GENMASK(pin * 2 + 1, pin * 2);
+	*mode = val >> (pin * 2);
+}
+
+static inline int __stm32_pmx_gpio_get(void __iomem *base, unsigned offset)
+{
+	return !!(readl(base + STM32_GPIO_IDR) & BIT(offset));
+}
+
+static inline void __stm32_pmx_gpio_set(void __iomem *base, unsigned offset,
+					unsigned value)
+{
+	if (!value)
+		offset += STM32_GPIO_PINS_PER_BANK;
+
+	writel(BIT(offset), base + STM32_GPIO_BSRR);
+}
+
+static inline void __stm32_pmx_gpio_input(void __iomem *base, unsigned offset)
+{
+	__stm32_pmx_set_mode(base, offset, 0, 0);
+}
+
+static inline void __stm32_pmx_gpio_output(void __iomem *base, unsigned offset,
+					   unsigned value)
+{
+	__stm32_pmx_gpio_set(base, offset, value);
+	__stm32_pmx_set_mode(base, offset, 1, 0);
+}
+
+static inline void __stm32_pmx_set_output_type(void __iomem *base, unsigned offset,
+					       enum stm32_pin_out_type type)
+{
+	u32 val = readl(base + STM32_GPIO_TYPER);
+	val &= ~BIT(offset);
+	val |= type << offset;
+	writel(val, base + STM32_GPIO_TYPER);
+}
+
+#endif /* __STM32_GPIO_H__ */
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
