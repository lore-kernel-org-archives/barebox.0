Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDQBV-0003vD-1N
 for barebox@lists.infradead.org; Thu, 26 Sep 2019 09:35:39 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 26 Sep 2019 11:35:25 +0200
Message-Id: <20190926093525.12371-2-a.fatoum@pengutronix.de>
In-Reply-To: <20190926093525.12371-1-a.fatoum@pengutronix.de>
References: <20190926093525.12371-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 2/2] pinctrl: add gpio and pinctrl driver for sama5d2 PIO4
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

The sama5d2 features a GPIO and pin controller different than the one
we support in barebox. The device tree bindings are different as well,
so it makes sense to have a separate driver for it.

Add the pin control and GPIO driver as well as some helpers usable
from PBL, should we want to do pinmuxing that early.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/Kconfig                           |   1 -
 arch/arm/mach-at91/Kconfig                 |  13 +
 arch/arm/mach-at91/include/mach/at91_pio.h |  33 +++
 arch/arm/mach-at91/include/mach/gpio.h     | 126 +++++++++
 drivers/pinctrl/Kconfig                    |  10 +
 drivers/pinctrl/Makefile                   |   1 +
 drivers/pinctrl/pinctrl-at91-pio4.c        | 313 +++++++++++++++++++++
 drivers/pinctrl/pinctrl-at91.c             |   2 +
 8 files changed, 498 insertions(+), 1 deletion(-)
 create mode 100644 drivers/pinctrl/pinctrl-at91-pio4.c

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 5a0f649be8a3..652ac24ce3fa 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -34,7 +34,6 @@ config ARCH_AT91
 	select CLKDEV_LOOKUP
 	select HAS_DEBUG_LL
 	select HAVE_CLK
-	select PINCTRL_AT91
 	select COMMON_CLK_AT91 if COMMON_CLK_OF_PROVIDER
 
 
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 8e1bf0629ab7..3f24892be78d 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -6,6 +6,9 @@ config HAVE_AT91_UTMI
 config HAVE_AT91_USB_CLK
 	bool
 
+config HAVE_AT91_PIO4
+	bool
+
 config COMMON_CLK_AT91
 	bool
 	select COMMON_CLK
@@ -47,6 +50,7 @@ config SOC_AT91SAM9
 	select HAVE_AT91_SMD
 	select HAVE_AT91_USB_CLK
 	select HAVE_AT91_UTMI
+	select PINCTRL_AT91
 
 config SOC_SAMA5
 	bool
@@ -66,6 +70,7 @@ config SOC_SAMA5D3
 	select HAVE_AT91_SMD
 	select HAVE_AT91_USB_CLK
 	select HAVE_AT91_UTMI
+	select PINCTRL_AT91
 
 config SOC_SAMA5D4
 	bool
@@ -76,6 +81,7 @@ config SOC_SAMA5D4
 	select HAVE_AT91_SMD
 	select HAVE_AT91_USB_CLK
 	select HAVE_AT91_UTMI
+	select PINCTRL_AT91
 
 config ARCH_TEXT_BASE
 	hex
@@ -102,11 +108,13 @@ config SOC_AT91RM9200
 	select HAS_AT91_ETHER
 	select HAVE_AT91_DBGU0
 	select HAVE_AT91_USB_CLK
+	select PINCTRL_AT91
 
 config SOC_AT91SAM9260
 	bool
 	select SOC_AT91SAM9
 	select HAS_MACB
+	select PINCTRL_AT91
 	help
 	  Select this if you are using one of Atmel's AT91SAM9260, AT91SAM9XE
 	  or AT91SAM9G20 SoC.
@@ -114,6 +122,7 @@ config SOC_AT91SAM9260
 config SOC_AT91SAM9261
 	bool
 	select SOC_AT91SAM9
+	select PINCTRL_AT91
 	help
 	  Select this if you are using one of Atmel's AT91SAM9261 or AT91SAM9G10 SoC.
 
@@ -122,11 +131,13 @@ config SOC_AT91SAM9263
 	select SOC_AT91SAM9
 	select HAS_MACB
 	select HAVE_AT91_LOAD_BAREBOX_SRAM
+	select PINCTRL_AT91
 
 config SOC_AT91SAM9G45
 	bool
 	select SOC_AT91SAM9
 	select HAS_MACB
+	select PINCTRL_AT91
 	help
 	  Select this if you are using one of Atmel's AT91SAM9G45 family SoC.
 	  This support covers AT91SAM9G45, AT91SAM9G46, AT91SAM9M10 and AT91SAM9M11.
@@ -136,6 +147,7 @@ config SOC_AT91SAM9X5
 	select SOC_AT91SAM9
 	select HAS_MACB
 	select COMMON_CLK_OF_PROVIDER
+	select PINCTRL_AT91
 	help
 	  Select this if you are using one of Atmel's AT91SAM9x5 family SoC.
 	  This means that your SAM9 name finishes with a '5' (except if it is
@@ -146,6 +158,7 @@ config SOC_AT91SAM9X5
 config SOC_AT91SAM9N12
 	bool
 	select SOC_AT91SAM9
+	select PINCTRL_AT91
 	help
 	  Select this if you are using Atmel's AT91SAM9N12 SoC.
 
diff --git a/arch/arm/mach-at91/include/mach/at91_pio.h b/arch/arm/mach-at91/include/mach/at91_pio.h
index 2d80dfc3c929..0f129c997553 100644
--- a/arch/arm/mach-at91/include/mach/at91_pio.h
+++ b/arch/arm/mach-at91/include/mach/at91_pio.h
@@ -3,6 +3,8 @@
  *
  * Copyright (C) 2005 Ivan Kokshaysky
  * Copyright (C) SAN People
+ * Copyright (C) 2015 Atmel,
+ *               2015 Ludovic Desroches <ludovic.desroches@atmel.com>
  *
  * Parallel I/O Controller (PIO) - System peripherals registers.
  * Based on AT91RM9200 datasheet revision E.
@@ -16,6 +18,8 @@
 #ifndef AT91_PIO_H
 #define AT91_PIO_H
 
+#include <linux/bitops.h>
+
 #define PIO_PER		0x00	/* Enable Register */
 #define PIO_PDR		0x04	/* Disable Register */
 #define PIO_PSR		0x08	/* Status Register */
@@ -71,4 +75,33 @@
 #define ABCDSR_PERIPH_C	0x2
 #define ABCDSR_PERIPH_D	0x3
 
+#define PIO4_MSKR	0x0000	/* Mask Register */
+#define PIO4_CFGR	0x0004	/* Configuration Register */
+#define		PIO4_CFGR_FUNC_MASK		GENMASK(2, 0)
+#define		PIO4_DIR_MASK			BIT(8)
+#define		PIO4_PUEN_MASK			BIT(9)
+#define		PIO4_PDEN_MASK			BIT(10)
+#define		PIO4_IFEN_MASK			BIT(12)
+#define		PIO4_IFSCEN_MASK		BIT(13)
+#define		PIO4_OPD_MASK			BIT(14)
+#define		PIO4_SCHMITT_MASK		BIT(15)
+#define		PIO4_DRVSTR_MASK		GENMASK(17, 16)
+#define		PIO4_DRVSTR_OFFSET		16
+#define		PIO4_CFGR_EVTSEL_MASK		GENMASK(26, 24)
+#define		PIO4_CFGR_EVTSEL_FALLING	(0 << 24)
+#define		PIO4_CFGR_EVTSEL_RISING		(1 << 24)
+#define		PIO4_CFGR_EVTSEL_BOTH		(2 << 24)
+#define		PIO4_CFGR_EVTSEL_LOW		(3 << 24)
+#define		PIO4_CFGR_EVTSEL_HIGH		(4 << 24)
+#define	PIO4_PDSR	0x0008	/* Data Status Register */
+#define	PIO4_LOCKSR	0x000C	/* Lock Status Register */
+#define	PIO4_SODR	0x0010	/* Set Output Data Register */
+#define	PIO4_CODR	0x0014	/* Clear Output Data Register */
+#define	PIO4_ODSR	0x0018	/* Output Data Status Register */
+#define	PIO4_IER	0x0020	/* Interrupt Enable Register */
+#define	PIO4_IDR	0x0024	/* Interrupt Disable Register */
+#define	PIO4_IMR	0x0028	/* Interrupt Mask Register */
+#define	PIO4_ISR	0x002C	/* Interrupt Status Register */
+#define	PIO4_IOFR	0x003C	/* I/O Freeze Configuration Register */
+
 #endif
diff --git a/arch/arm/mach-at91/include/mach/gpio.h b/arch/arm/mach-at91/include/mach/gpio.h
index b893dc220c94..34140a6e40b2 100644
--- a/arch/arm/mach-at91/include/mach/gpio.h
+++ b/arch/arm/mach-at91/include/mach/gpio.h
@@ -8,6 +8,8 @@
 #define __AT91_GPIO_H__
 
 #include <dt-bindings/gpio/gpio.h>
+#include <asm/io.h>
+#include <mach/at91_pio.h>
 
 #define MAX_NB_GPIO_PER_BANK	32
 
@@ -17,6 +19,9 @@ enum at91_mux {
 	AT91_MUX_PERIPH_B = 2,
 	AT91_MUX_PERIPH_C = 3,
 	AT91_MUX_PERIPH_D = 4,
+	AT91_MUX_PERIPH_E = 5,
+	AT91_MUX_PERIPH_F = 6,
+	AT91_MUX_PERIPH_G = 7,
 };
 
 static inline unsigned pin_to_bank(unsigned pin)
@@ -167,6 +172,9 @@ static inline void at91_mux_pio3_pin(void __iomem *pio, unsigned mask,
 	case AT91_MUX_PERIPH_D:
 		at91_mux_pio3_set_D_periph(pio, mask);
 		break;
+	default:
+		/* ignore everything else */
+		break;
 	}
 	if (mux != AT91_MUX_GPIO)
 		at91_mux_gpio_disable(pio, mask);
@@ -175,4 +183,122 @@ static inline void at91_mux_pio3_pin(void __iomem *pio, unsigned mask,
 	at91_mux_pio3_set_pulldown(pio, mask, gpio_state & GPIO_PULL_DOWN);
 }
 
+/* helpers for PIO4 pinctrl (>= sama5d2) */
+
+static inline void at91_mux_pio4_set_periph(void __iomem *pio, unsigned mask, u32 func)
+{
+	writel(mask, pio + PIO4_MSKR);
+	writel(func, pio + PIO4_CFGR);
+}
+
+static inline void at91_mux_pio4_set_A_periph(void __iomem *pio, unsigned mask)
+{
+	at91_mux_pio4_set_periph(pio, mask, AT91_MUX_PERIPH_A);
+}
+
+static inline void at91_mux_pio4_set_B_periph(void __iomem *pio, unsigned mask)
+{
+	at91_mux_pio4_set_periph(pio, mask, AT91_MUX_PERIPH_B);
+}
+
+static inline void at91_mux_pio4_set_C_periph(void __iomem *pio, unsigned mask)
+{
+	at91_mux_pio4_set_periph(pio, mask, AT91_MUX_PERIPH_C);
+}
+
+static inline void at91_mux_pio4_set_D_periph(void __iomem *pio, unsigned mask)
+{
+	at91_mux_pio4_set_periph(pio, mask, AT91_MUX_PERIPH_D);
+}
+
+static inline void at91_mux_pio4_set_E_periph(void __iomem *pio, unsigned mask)
+{
+	at91_mux_pio4_set_periph(pio, mask, AT91_MUX_PERIPH_E);
+}
+
+static inline void at91_mux_pio4_set_F_periph(void __iomem *pio, unsigned mask)
+{
+	at91_mux_pio4_set_periph(pio, mask, AT91_MUX_PERIPH_F);
+}
+
+static inline void at91_mux_pio4_set_G_periph(void __iomem *pio, unsigned mask)
+{
+	at91_mux_pio4_set_periph(pio, mask, AT91_MUX_PERIPH_G);
+}
+
+static inline void at91_mux_pio4_set_func(void __iomem *pio,
+					  unsigned pin_mask,
+					  unsigned cfgr_and_mask,
+					  unsigned cfgr_or_mask)
+{
+	u32 reg;
+	writel(pin_mask, pio + PIO4_MSKR);
+	reg = readl(pio + PIO4_CFGR);
+	reg &= cfgr_and_mask;
+	reg |= cfgr_or_mask;
+	writel(reg, pio + PIO4_CFGR);
+}
+
+static inline void at91_mux_pio4_set_bistate(void __iomem *pio,
+					     unsigned pin_mask,
+					     unsigned func_mask,
+					     bool is_on)
+{
+	at91_mux_pio4_set_func(pio, pin_mask, ~func_mask,
+			       is_on ? func_mask : 0);
+}
+
+static inline void at91_mux_pio4_set_deglitch(void __iomem *pio, unsigned mask, bool is_on)
+{
+	at91_mux_pio4_set_bistate(pio, mask, PIO4_IFEN_MASK, is_on);
+}
+
+static inline void at91_mux_pio4_set_debounce(void __iomem *pio, unsigned mask,
+					      bool is_on, u32 div)
+{
+	at91_mux_pio4_set_bistate(pio, mask, PIO4_IFEN_MASK, is_on);
+	at91_mux_pio4_set_bistate(pio, mask, PIO4_IFSCEN_MASK, is_on);
+}
+
+static inline void at91_mux_pio4_set_pulldown(void __iomem *pio, unsigned mask, bool is_on)
+{
+	at91_mux_pio4_set_bistate(pio, mask, PIO4_PDEN_MASK, is_on);
+}
+
+static inline void at91_mux_pio4_disable_schmitt_trig(void __iomem *pio, unsigned mask)
+{
+	at91_mux_pio4_set_bistate(pio, mask, PIO4_SCHMITT_MASK, false);
+}
+
+static inline void at91_mux_gpio4_enable(void __iomem *pio, unsigned mask)
+{
+	at91_mux_pio4_set_func(pio, mask, ~PIO4_CFGR_FUNC_MASK, AT91_MUX_GPIO);
+}
+
+static inline void at91_mux_gpio4_input(void __iomem *pio, unsigned mask, bool input)
+{
+	u32 cfgr;
+        writel(mask, pio + PIO4_MSKR);
+	cfgr = readl(pio + PIO4_CFGR);
+	if (input)
+		cfgr &= ~PIO4_DIR_MASK;
+	else
+		cfgr |= PIO4_DIR_MASK;
+	writel(cfgr, pio + PIO4_CFGR);
+}
+
+static inline void at91_mux_gpio4_set(void __iomem *pio, unsigned mask,
+				      int value)
+{
+	writel(mask, pio + (value ? PIO4_SODR : PIO4_CODR));
+}
+
+static inline int at91_mux_gpio4_get(void __iomem *pio, unsigned mask)
+{
+       u32 pdsr;
+
+       pdsr = readl(pio + PIO4_PDSR);
+       return (pdsr & mask) != 0;
+}
+
 #endif /* __AT91_GPIO_H__ */
diff --git a/drivers/pinctrl/Kconfig b/drivers/pinctrl/Kconfig
index e2fb0af7562a..95c6708f4a98 100644
--- a/drivers/pinctrl/Kconfig
+++ b/drivers/pinctrl/Kconfig
@@ -17,6 +17,16 @@ config PINCTRL_AT91
 	help
 	    The pinmux controller found on AT91 SoCs.
 
+config PINCTRL_AT91PIO4
+        bool "AT91 PIO4 pinctrl driver"
+        depends on OFDEVICE
+        depends on ARCH_AT91
+        select GPIOLIB
+        select OF_GPIO
+        help
+          Say Y here to enable the at91 pinctrl/gpio driver for Atmel PIO4
+          controller available on sama5d2 SoC.
+
 config PINCTRL_BCM283X
 	bool "GPIO and pinmux support for BCM283X"
 	depends on ARCH_BCM283X
diff --git a/drivers/pinctrl/Makefile b/drivers/pinctrl/Makefile
index e311df710328..e7d8ad8f4b45 100644
--- a/drivers/pinctrl/Makefile
+++ b/drivers/pinctrl/Makefile
@@ -1,5 +1,6 @@
 obj-$(CONFIG_PINCTRL)	+= pinctrl.o
 obj-$(CONFIG_PINCTRL_AT91) += pinctrl-at91.o
+obj-$(CONFIG_PINCTRL_AT91PIO4) += pinctrl-at91-pio4.o
 obj-$(CONFIG_PINCTRL_BCM283X)	+= pinctrl-bcm2835.o
 obj-pbl-$(CONFIG_PINCTRL_IMX_IOMUX_V1) += imx-iomux-v1.o
 obj-$(CONFIG_PINCTRL_IMX_IOMUX_V2) += imx-iomux-v2.o
diff --git a/drivers/pinctrl/pinctrl-at91-pio4.c b/drivers/pinctrl/pinctrl-at91-pio4.c
new file mode 100644
index 000000000000..5874fc71cbcc
--- /dev/null
+++ b/drivers/pinctrl/pinctrl-at91-pio4.c
@@ -0,0 +1,313 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * sama5d2 pin control and GPIO chip driver
+ * Copyright (c) 2019 Ahmad Fatoum, Pengutronix
+ */
+
+#include <common.h>
+#include <init.h>
+#include <io.h>
+#include <of.h>
+#include <pinctrl.h>
+#include <malloc.h>
+#include <gpio.h>
+#include <mach/gpio.h>
+#include <linux/clk.h>
+
+#include <dt-bindings/pinctrl/at91.h>
+
+#define ATMEL_GET_PIN_NO(pinfunc)	((pinfunc) & 0xff)
+#define ATMEL_GET_PIN_FUNC(pinfunc)	((pinfunc >> 16) & 0xf)
+#define ATMEL_GET_PIN_IOSET(pinfunc)	((pinfunc >> 20) & 0xf)
+
+struct pinctrl_at91_pio4 {
+	void __iomem *base;
+	struct pinctrl_device pinctrl;
+	struct gpio_chip gpiochip;
+};
+
+struct at91_pinctrl_data {
+        unsigned nbanks;
+};
+
+static inline void __iomem *pin_to_pio4(struct pinctrl_device *pdev,
+					unsigned int *pin)
+{
+	void __iomem *pio;
+	struct pinctrl_at91_pio4 *pinctrl =
+		container_of(pdev, struct pinctrl_at91_pio4, pinctrl);
+
+	pio = pinctrl->base + (*pin / 32) * 0x40;
+	*pin %= 32;
+
+	return pio;
+}
+
+static int __pinctrl_at91_pio4_set_state(struct pinctrl_device *pdev,
+					 struct device_node *np)
+{
+	u32 drive_strength, enable = 0, disable = ~0;
+	int output = -1;
+
+	int npins, i;
+	int ret;
+
+	ret = of_property_read_u32(np, "drive-strength", &drive_strength);
+	if (!ret && ATMEL_PIO_DRVSTR_LO <= drive_strength
+	    && drive_strength <= ATMEL_PIO_DRVSTR_HI) {
+		disable &= ~PIO4_DRVSTR_MASK;
+		enable |= drive_strength << PIO4_DRVSTR_OFFSET;
+	}
+
+	if (of_get_property(np, "bias-disable", NULL)) {
+		disable &= ~PIO4_PUEN_MASK;
+		disable &= ~PIO4_PDEN_MASK;
+	}
+
+	if (of_get_property(np, "bias-pull-up", NULL)) {
+		enable |= PIO4_PUEN_MASK;
+		disable &= ~PIO4_PDEN_MASK;
+	}
+
+	if (of_get_property(np, "bias-pull-down", NULL)) {
+		enable |= PIO4_PDEN_MASK;
+		disable &= ~PIO4_PUEN_MASK;
+	}
+
+	if (of_get_property(np, "drive-open-drain", NULL))
+		enable |= PIO4_OPD_MASK;
+
+	if (of_get_property(np, "input-schmitt-enable", NULL))
+		enable |= PIO4_SCHMITT_MASK;
+
+	if (of_get_property(np, "input-enable", NULL))
+		disable &= ~PIO4_DIR_MASK;
+
+	if (of_get_property(np, "output-enable", NULL))
+		enable |= PIO4_DIR_MASK;
+
+	if (of_get_property(np, "output-low", NULL))
+		output = GPIOF_OUT_INIT_LOW;
+
+	if (of_get_property(np, "output-high", NULL))
+		output = GPIOF_OUT_INIT_HIGH;
+
+	of_get_property(np, "pinmux", &npins);
+	npins /= sizeof(__be32);
+
+	if (!npins) {
+		dev_err(pdev->dev, "Invalid pinmux property in %s\n",
+			np->full_name);
+		return -EINVAL;
+	}
+
+	for (i = 0; i < npins; i++) {
+		void __iomem *pio;
+		u32 conf, no, func, cfgr;
+
+		ret = of_property_read_u32_index(np, "pinmux", i, &conf);
+		if (ret)
+			return ret;
+
+		no    = ATMEL_GET_PIN_NO(conf);
+		func  = ATMEL_GET_PIN_FUNC(conf);
+
+		pio = pin_to_pio4(pdev, &no);
+
+		if (output == GPIOF_OUT_INIT_HIGH)
+			at91_mux_gpio4_set(pio, BIT(no), true);
+
+		if (output == GPIOF_OUT_INIT_LOW)
+			at91_mux_gpio4_set(pio, BIT(no), false);
+
+		writel(BIT(no), pio + PIO4_MSKR);
+		cfgr = readl(pio + PIO4_CFGR);
+		cfgr &= disable;
+		cfgr |= enable;
+		writel(func | cfgr, pio + PIO4_CFGR);
+	}
+
+	return 0;
+}
+
+static int pinctrl_at91_pio4_set_state(struct pinctrl_device *pdev,
+				       struct device_node *np)
+{
+	struct device_node *child;
+	void *prop;
+	int ret;
+
+	prop = of_find_property(np, "pinmux", NULL);
+	if (prop)
+		return __pinctrl_at91_pio4_set_state(pdev, np);
+
+	for_each_child_of_node(np, child) {
+		ret = __pinctrl_at91_pio4_set_state(pdev, child);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+
+static inline void __iomem *pin_to_gpio4(struct gpio_chip *chip, unsigned int *pin)
+{
+	void __iomem *gpio;
+	struct pinctrl_at91_pio4 *pinctrl =
+		container_of(chip, struct pinctrl_at91_pio4, gpiochip);
+
+	gpio = pinctrl->base + (*pin / 32) * 0x40;
+	*pin %= 32;
+
+	return gpio;
+}
+
+static int at91_gpio4_direction_input(struct gpio_chip *chip, unsigned offset)
+{
+        void __iomem *gpio = pin_to_gpio4(chip, &offset);
+	at91_mux_gpio4_input(gpio, BIT(offset), true);
+	return 0;
+}
+
+static int at91_gpio4_direction_output(struct gpio_chip *chip, unsigned offset,
+				      int value)
+{
+        void __iomem *gpio = pin_to_gpio4(chip, &offset);
+
+	at91_mux_gpio4_set(gpio, BIT(offset), value);
+	at91_mux_gpio4_input(gpio, BIT(offset), false);
+	return 0;
+}
+
+static int at91_gpio4_request(struct gpio_chip *chip, unsigned offset)
+{
+        void __iomem *gpio = pin_to_gpio4(chip, &offset);
+	at91_mux_gpio4_enable(gpio, BIT(offset));
+	return 0;
+}
+
+static int at91_gpio4_get_direction(struct gpio_chip *chip,
+				   unsigned int offset)
+{
+        u32 cfgr;
+        void __iomem *gpio = pin_to_gpio4(chip, &offset);
+
+        writel(BIT(offset), gpio + PIO4_MSKR);
+        cfgr = readl(gpio + PIO4_CFGR);
+
+        return cfgr & PIO4_DIR_MASK ? GPIOF_DIR_OUT : GPIOF_DIR_IN;
+}
+
+static void at91_gpio4_set(struct gpio_chip *chip, unsigned offset, int value)
+{
+        void __iomem *gpio = pin_to_gpio4(chip, &offset);
+	at91_mux_gpio4_set(gpio, BIT(offset), value);
+}
+
+static int at91_gpio4_get(struct gpio_chip *chip, unsigned offset)
+{
+        void __iomem *gpio = pin_to_gpio4(chip, &offset);
+	return at91_mux_gpio4_get(gpio, BIT(offset));
+}
+
+static struct gpio_ops at91_gpio4_ops = {
+	.request = at91_gpio4_request,
+	.direction_input = at91_gpio4_direction_input,
+	.direction_output = at91_gpio4_direction_output,
+	.get_direction = at91_gpio4_get_direction,
+	.get = at91_gpio4_get,
+	.set = at91_gpio4_set,
+};
+
+static int pinctrl_at91_pio4_gpiochip_add(struct device_d *dev,
+					  struct pinctrl_at91_pio4 *pinctrl)
+{
+	struct at91_pinctrl_data *drvdata;
+	struct clk *clk;
+	int ret;
+
+	clk = clk_get(dev, NULL);
+	if (IS_ERR(clk)) {
+		ret = PTR_ERR(clk);
+		dev_err(dev, "clock not found: %d\n", ret);
+		return ret;
+	}
+
+	ret = clk_enable(clk);
+	if (ret < 0) {
+		dev_err(dev, "clock failed to enable: %d\n", ret);
+		clk_put(clk);
+		return ret;
+	}
+
+	dev_get_drvdata(dev, (const void **)&drvdata);
+
+	pinctrl->gpiochip.ops = &at91_gpio4_ops;
+	pinctrl->gpiochip.base = 0;
+	pinctrl->gpiochip.ngpio = drvdata->nbanks * MAX_NB_GPIO_PER_BANK;
+	pinctrl->gpiochip.dev = dev;
+
+	ret = gpiochip_add(&pinctrl->gpiochip);
+	if (ret) {
+		dev_err(dev, "couldn't add gpiochip, ret = %d\n", ret);
+		return ret;
+	}
+
+	dev_info(dev, "gpio driver registered\n");
+
+	return 0;
+}
+
+static struct pinctrl_ops pinctrl_at91_pio4_ops = {
+	.set_state = pinctrl_at91_pio4_set_state,
+};
+
+static int pinctrl_at91_pio4_probe(struct device_d *dev)
+{
+	struct device_node *np = dev->device_node;
+	struct pinctrl_at91_pio4 *pinctrl;
+	struct resource *io;
+	int ret;
+
+	pinctrl = xzalloc(sizeof(*pinctrl));
+
+	io = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(io))
+		return PTR_ERR(io);
+
+	pinctrl->base = IOMEM(io->start);
+	pinctrl->pinctrl.dev = dev;
+	pinctrl->pinctrl.ops = &pinctrl_at91_pio4_ops;
+
+	ret = pinctrl_register(&pinctrl->pinctrl);
+	if (ret)
+		return ret;
+
+	dev_info(dev, "pinctrl driver registered\n");
+
+	if (of_get_property(np, "gpio-controller", NULL))
+		return pinctrl_at91_pio4_gpiochip_add(dev, pinctrl);
+
+	return 0;
+}
+
+static const struct at91_pinctrl_data sama5d2_pinctrl_data = {
+        .nbanks		= 4,
+};
+
+static __maybe_unused struct of_device_id pinctrl_at91_pio4_dt_ids[] = {
+	{ .compatible = "atmel,sama5d2-pinctrl", .data = &sama5d2_pinctrl_data },
+	{ /* sentinel */ }
+};
+
+static struct driver_d pinctrl_at91_pio4_driver = {
+	.name		= "pinctrl-at91-pio4",
+	.probe		= pinctrl_at91_pio4_probe,
+	.of_compatible	= DRV_OF_COMPAT(pinctrl_at91_pio4_dt_ids),
+};
+
+static int pinctrl_at91_pio4_init(void)
+{
+	return platform_driver_register(&pinctrl_at91_pio4_driver);
+}
+core_initcall(pinctrl_at91_pio4_init);
diff --git a/drivers/pinctrl/pinctrl-at91.c b/drivers/pinctrl/pinctrl-at91.c
index 9b366e48120f..0da6332720b9 100644
--- a/drivers/pinctrl/pinctrl-at91.c
+++ b/drivers/pinctrl/pinctrl-at91.c
@@ -152,6 +152,8 @@ int at91_mux_pin(unsigned pin, enum at91_mux mux, int use_pullup)
 			return -EINVAL;
 		at91_gpio->ops->mux_D_periph(pio, mask);
 		break;
+	default:
+		return -EINVAL;
 	}
 	if (mux)
 		at91_mux_gpio_disable(pio, mask);
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
