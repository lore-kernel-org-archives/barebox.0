Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XPAzw-0008Ic-Qm
 for barebox@lists.infradead.org; Wed, 03 Sep 2014 13:53:23 +0000
Date: Wed, 3 Sep 2014 15:52:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140903135256.GK5352@pengutronix.de>
References: <1409656080-19280-1-git-send-email-poggi.raph@gmail.com>
 <1409656080-19280-3-git-send-email-poggi.raph@gmail.com>
 <20140903065649.GD5352@pengutronix.de>
 <CACqcpZDjqOVD3NuRBj7910TWhEO2XVLsBPx9wecCuyDVgsHdTA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACqcpZDjqOVD3NuRBj7910TWhEO2XVLsBPx9wecCuyDVgsHdTA@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v3 2/3] pinctrl: at91: add pinctrl driver
To: =?iso-8859-15?Q?Rapha=EBl?= Poggi <poggi.raph@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Sep 03, 2014 at 01:23:14PM +0200, Rapha=EBl Poggi wrote:
> Sounds good, but files like at91samXXX_devices.c need gpio functions.
> I think the problem is that the mach-at91/gpio.c file include a gpio
> driver which not belong to be here, the right place is in the
> driver/pinctrl (like my patch). But all files like
> at91samXXX_devices.c are using the functions from this gpio driver.
> =

> So I think we have to:
> =

> 1. Rewrite mach-at91/gpio.c and populate it with basic gpio functions
> (cf. http://lxr.free-electrons.com/source/arch/arm/mach-at91/gpio.c
> from line 130 to 425).
> 2. Replace in at91samXXX_devices.c files, reference of functions from
> the gpio driver by these basic new functions.
> =

> By this way, when AT91 code are registering the gpio subsystem, we use
> the pinctrl/gpio driver and also we avoid duplicate code.
> =

> Let me know if I am on the right way or not.

Isn't it possible to move the functions into the pinctrl driver like
done in the following patch? It's not that nice to call from
architecture code directly into the driver code, but I think it should
work. We do the same for i.MX.

Sascha

---------------8<-------------------------

From a351ae7f3815d3e555290380c70d0cb35b04e7a3 Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 3 Sep 2014 15:51:05 +0200
Subject: [PATCH] ARM: AT91: move arch/arm/mach-at91/gpio.c functions to
 pinctrl driver

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Kconfig               |   1 +
 arch/arm/mach-at91/Makefile    |   2 +-
 arch/arm/mach-at91/gpio.c      | 670 -------------------------------------=
----
 drivers/pinctrl/Kconfig        |   2 +-
 drivers/pinctrl/pinctrl-at91.c | 246 ++++++++++++---
 5 files changed, 203 insertions(+), 718 deletions(-)
 delete mode 100644 arch/arm/mach-at91/gpio.c

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 9f34e10..13f0bd4 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -37,6 +37,7 @@ config ARCH_AT91
 	select HAS_DEBUG_LL
 	select HAVE_MACH_ARM_HEAD
 	select HAVE_CLK
+	select PINCTRL_AT91
 =

 config ARCH_BCM2835
 	bool "Broadcom BCM2835 boards"
diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
index ab80e5f..8599f50 100644
--- a/arch/arm/mach-at91/Makefile
+++ b/arch/arm/mach-at91/Makefile
@@ -1,4 +1,4 @@
-obj-y +=3D setup.o clock.o gpio.o irq_fixup.o
+obj-y +=3D setup.o clock.o irq_fixup.o
 obj-$(CONFIG_CMD_AT91_BOOT_TEST) +=3D boot_test_cmd.o
 =

 obj-$(CONFIG_AT91_BOOTSTRAP) +=3D bootstrap.o
diff --git a/arch/arm/mach-at91/gpio.c b/arch/arm/mach-at91/gpio.c
deleted file mode 100644
index 402634b..0000000
--- a/arch/arm/mach-at91/gpio.c
+++ /dev/null
@@ -1,670 +0,0 @@
-/*
- * Copyright (C) 2005 HP Labs
- * Copyright (C) 2011-2012 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcro=
soft.com>
- *
- * See file CREDITS for list of people who contributed to this
- * project.
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
- */
-
-#include <common.h>
-#include <command.h>
-#include <complete.h>
-#include <linux/clk.h>
-#include <linux/err.h>
-#include <errno.h>
-#include <io.h>
-#include <mach/iomux.h>
-#include <mach/io.h>
-#include <mach/cpu.h>
-#include <gpio.h>
-#include <init.h>
-#include <driver.h>
-#include <getopt.h>
-
-#include <mach/gpio.h>
-
-#define MAX_GPIO_BANKS		5
-
-static int gpio_banks =3D 0;
-
-/*
- * Functionnality can change with newer chips
- */
-struct at91_gpio_chip {
-	struct gpio_chip	chip;
-	void __iomem		*regbase;	/* PIO bank virtual address */
-	struct at91_pinctrl_mux_ops *ops;	/* ops */
-};
-
-#define to_at91_gpio_chip(c) container_of(c, struct at91_gpio_chip, chip)
-
-static struct at91_gpio_chip gpio_chip[MAX_GPIO_BANKS];
-
-static inline struct at91_gpio_chip *pin_to_controller(unsigned pin)
-{
-	pin /=3D MAX_NB_GPIO_PER_BANK;
-	if (likely(pin < gpio_banks))
-		return &gpio_chip[pin];
-
-	return NULL;
-}
-
-/**
- * struct at91_pinctrl_mux_ops - describes an At91 mux ops group
- * on new IP with support for periph C and D the way to mux in
- * periph A and B has changed
- * So provide the right call back
- * if not present means the IP does not support it
- * @get_periph: return the periph mode configured
- * @mux_A_periph: mux as periph A
- * @mux_B_periph: mux as periph B
- * @mux_C_periph: mux as periph C
- * @mux_D_periph: mux as periph D
- * @set_deglitch: enable/disable deglitch
- * @set_debounce: enable/disable debounce
- * @set_pulldown: enable/disable pulldown
- * @disable_schmitt_trig: disable schmitt trigger
- */
-struct at91_pinctrl_mux_ops {
-	enum at91_mux (*get_periph)(void __iomem *pio, unsigned mask);
-	void (*mux_A_periph)(void __iomem *pio, unsigned mask);
-	void (*mux_B_periph)(void __iomem *pio, unsigned mask);
-	void (*mux_C_periph)(void __iomem *pio, unsigned mask);
-	void (*mux_D_periph)(void __iomem *pio, unsigned mask);
-	bool (*get_deglitch)(void __iomem *pio, unsigned pin);
-	void (*set_deglitch)(void __iomem *pio, unsigned mask, bool in_on);
-	bool (*get_debounce)(void __iomem *pio, unsigned pin, u32 *div);
-	void (*set_debounce)(void __iomem *pio, unsigned mask, bool in_on, u32 di=
v);
-	bool (*get_pulldown)(void __iomem *pio, unsigned pin);
-	void (*set_pulldown)(void __iomem *pio, unsigned mask, bool in_on);
-	bool (*get_schmitt_trig)(void __iomem *pio, unsigned pin);
-	void (*disable_schmitt_trig)(void __iomem *pio, unsigned mask);
-};
-
-#ifdef CONFIG_CMD_AT91MUX
-static unsigned at91_mux_get_pullup(void __iomem *pio, unsigned pin)
-{
-	return (__raw_readl(pio + PIO_PUSR) >> pin) & 0x1;
-}
-
-static unsigned at91_mux_get_multidrive(void __iomem *pio, unsigned pin)
-{
-	return (__raw_readl(pio + PIO_MDSR) >> pin) & 0x1;
-}
-
-static enum at91_mux at91_mux_pio3_get_periph(void __iomem *pio, unsigned =
mask)
-{
-	unsigned select;
-
-	if (__raw_readl(pio + PIO_PSR) & mask)
-		return AT91_MUX_GPIO;
-
-	select =3D !!(__raw_readl(pio + PIO_ABCDSR1) & mask);
-	select |=3D (!!(__raw_readl(pio + PIO_ABCDSR2) & mask) << 1);
-
-	return select + 1;
-}
-
-static enum at91_mux at91_mux_get_periph(void __iomem *pio, unsigned mask)
-{
-	unsigned select;
-
-	if (__raw_readl(pio + PIO_PSR) & mask)
-		return AT91_MUX_GPIO;
-
-	select =3D __raw_readl(pio + PIO_ABSR) & mask;
-
-	return select + 1;
-}
-
-static bool at91_mux_get_deglitch(void __iomem *pio, unsigned pin)
-{
-	return (__raw_readl(pio + PIO_IFSR) >> pin) & 0x1;
-}
-
-static bool at91_mux_pio3_get_debounce(void __iomem *pio, unsigned pin, u3=
2 *div)
-{
-	*div =3D __raw_readl(pio + PIO_SCDR);
-
-	return (__raw_readl(pio + PIO_IFSCSR) >> pin) & 0x1;
-}
-
-static bool at91_mux_pio3_get_pulldown(void __iomem *pio, unsigned pin)
-{
-	return (__raw_readl(pio + PIO_PPDSR) >> pin) & 0x1;
-}
-
-static bool at91_mux_pio3_get_schmitt_trig(void __iomem *pio, unsigned pin)
-{
-	return (__raw_readl(pio + PIO_SCHMITT) >> pin) & 0x1;
-}
-#else
-#define at91_mux_get_periph		NULL
-#define at91_mux_pio3_get_periph	NULL
-#define at91_mux_get_deglitch		NULL
-#define at91_mux_pio3_get_debounce	NULL
-#define at91_mux_pio3_get_pulldown	NULL
-#define at91_mux_pio3_get_schmitt_trig	NULL
-#endif
-
-static struct at91_pinctrl_mux_ops at91rm9200_ops =3D {
-	.get_periph	=3D at91_mux_get_periph,
-	.mux_A_periph	=3D at91_mux_set_A_periph,
-	.mux_B_periph	=3D at91_mux_set_B_periph,
-	.get_deglitch	=3D at91_mux_get_deglitch,
-	.set_deglitch	=3D at91_mux_set_deglitch,
-};
-
-static struct at91_pinctrl_mux_ops at91sam9x5_ops =3D {
-	.get_periph	=3D at91_mux_pio3_get_periph,
-	.mux_A_periph	=3D at91_mux_pio3_set_A_periph,
-	.mux_B_periph	=3D at91_mux_pio3_set_B_periph,
-	.mux_C_periph	=3D at91_mux_pio3_set_C_periph,
-	.mux_D_periph	=3D at91_mux_pio3_set_D_periph,
-	.get_deglitch	=3D at91_mux_get_deglitch,
-	.set_deglitch	=3D at91_mux_pio3_set_deglitch,
-	.get_debounce	=3D at91_mux_pio3_get_debounce,
-	.set_debounce	=3D at91_mux_pio3_set_debounce,
-	.get_pulldown	=3D at91_mux_pio3_get_pulldown,
-	.set_pulldown	=3D at91_mux_pio3_set_pulldown,
-	.get_schmitt_trig =3D at91_mux_pio3_get_schmitt_trig,
-	.disable_schmitt_trig =3D at91_mux_pio3_disable_schmitt_trig,
-};
-
-int at91_mux_pin(unsigned pin, enum at91_mux mux, int use_pullup)
-{
-	struct at91_gpio_chip *at91_gpio =3D pin_to_controller(pin);
-	void __iomem *pio;
-	struct device_d *dev;
-	unsigned mask =3D pin_to_mask(pin);
-	int bank =3D pin_to_bank(pin);
-
-	if (!at91_gpio)
-		return -EINVAL;
-
-	pio =3D at91_gpio->regbase;
-	if (!pio)
-		return -EINVAL;
-
-	dev =3D at91_gpio->chip.dev;
-	at91_mux_disable_interrupt(pio, mask);
-
-	pin %=3D MAX_NB_GPIO_PER_BANK;
-	if (mux) {
-		dev_dbg(dev, "pio%c%d configured as periph%c with pullup =3D %d\n",
-			bank + 'A', pin, mux - 1 + 'A', use_pullup);
-	} else {
-		dev_dbg(dev, "pio%c%d configured as gpio with pullup =3D %d\n",
-			bank + 'A', pin, use_pullup);
-	}
-
-	switch(mux) {
-	case AT91_MUX_GPIO:
-		at91_mux_gpio_enable(pio, mask);
-		break;
-	case AT91_MUX_PERIPH_A:
-		at91_gpio->ops->mux_A_periph(pio, mask);
-		break;
-	case AT91_MUX_PERIPH_B:
-		at91_gpio->ops->mux_B_periph(pio, mask);
-		break;
-	case AT91_MUX_PERIPH_C:
-		if (!at91_gpio->ops->mux_C_periph)
-			return -EINVAL;
-		at91_gpio->ops->mux_C_periph(pio, mask);
-		break;
-	case AT91_MUX_PERIPH_D:
-		if (!at91_gpio->ops->mux_D_periph)
-			return -EINVAL;
-		at91_gpio->ops->mux_D_periph(pio, mask);
-		break;
-	}
-	if (mux)
-		at91_mux_gpio_disable(pio, mask);
-
-	if (use_pullup >=3D 0)
-		at91_mux_set_pullup(pio, mask, use_pullup);
-
-	return 0;
-}
-EXPORT_SYMBOL(at91_mux_pin);
-
-/*
- * mux the pin to the gpio controller (instead of "A" or "B" peripheral), =
and
- * configure it for an input.
- */
-int at91_set_gpio_input(unsigned pin, int use_pullup)
-{
-	struct at91_gpio_chip *at91_gpio =3D pin_to_controller(pin);
-	void __iomem	*pio =3D at91_gpio->regbase;
-	unsigned	mask =3D pin_to_mask(pin);
-	int ret;
-
-	ret =3D at91_mux_pin(pin, AT91_MUX_GPIO, use_pullup);
-	if (ret)
-		return ret;
-
-	dev_dbg(at91_gpio->chip.dev, "pio%c%d configured as input\n",
-		pin_to_bank(pin) + 'A', pin_to_bank_offset(pin));
-
-	at91_mux_gpio_input(pio, mask, true);
-
-	return 0;
-}
-
-/*
- * mux the pin to the gpio controller (instead of "A" or "B" peripheral),
- * and configure it for an output.
- */
-int at91_set_gpio_output(unsigned pin, int value)
-{
-	struct at91_gpio_chip *at91_gpio =3D pin_to_controller(pin);
-	void __iomem	*pio =3D at91_gpio->regbase;
-	unsigned	mask =3D pin_to_mask(pin);
-	int ret;
-
-	ret =3D at91_mux_pin(pin, AT91_MUX_GPIO, -1);
-	if (ret)
-		return ret;
-
-	dev_dbg(at91_gpio->chip.dev, "pio%c%d configured as output val =3D %d\n",
-		pin_to_bank(pin) + 'A', pin_to_bank_offset(pin), value);
-
-	at91_mux_gpio_input(pio, mask, false);
-	at91_mux_gpio_set(pio, mask, value);
-	return 0;
-}
-EXPORT_SYMBOL(at91_set_gpio_output);
-
-/*
- * enable/disable the glitch filter; mostly used with IRQ handling.
- */
-int at91_set_deglitch(unsigned pin, int is_on)
-{
-	struct at91_gpio_chip *at91_gpio =3D pin_to_controller(pin);
-	void __iomem	*pio =3D at91_gpio->regbase;
-	unsigned	mask =3D pin_to_mask(pin);
-
-	if (!pio)
-		return -EINVAL;
-
-	at91_gpio->ops->set_deglitch(pio, mask, is_on);
-	return 0;
-}
-EXPORT_SYMBOL(at91_set_deglitch);
-
-/*
- * enable/disable the debounce filter;
- */
-int at91_set_debounce(unsigned pin, int is_on, int div)
-{
-	struct at91_gpio_chip *at91_gpio =3D pin_to_controller(pin);
-	void __iomem	*pio =3D at91_gpio->regbase;
-	unsigned	mask =3D pin_to_mask(pin);
-
-	if (!pio || !at91_gpio->ops->set_debounce)
-		return -EINVAL;
-
-	at91_gpio->ops->set_debounce(pio, mask, is_on, div);
-	return 0;
-}
-EXPORT_SYMBOL(at91_set_debounce);
-
-/*
- * enable/disable the multi-driver; This is only valid for output and
- * allows the output pin to run as an open collector output.
- */
-int at91_set_multi_drive(unsigned pin, int is_on)
-{
-	struct at91_gpio_chip *at91_gpio =3D pin_to_controller(pin);
-	void __iomem	*pio =3D at91_gpio->regbase;
-	unsigned	mask =3D pin_to_mask(pin);
-
-	if (!pio)
-		return -EINVAL;
-
-	at91_mux_set_multidrive(pio, mask, is_on);
-	return 0;
-}
-EXPORT_SYMBOL(at91_set_multi_drive);
-
-/*
- * enable/disable the pull-down.
- * If pull-up already enabled while calling the function, we disable it.
- */
-int at91_set_pulldown(unsigned pin, int is_on)
-{
-	struct at91_gpio_chip *at91_gpio =3D pin_to_controller(pin);
-	void __iomem	*pio =3D at91_gpio->regbase;
-	unsigned	mask =3D pin_to_mask(pin);
-
-	if (!pio || !at91_gpio->ops->set_pulldown)
-		return -EINVAL;
-
-	/* Disable pull-up anyway */
-	at91_mux_set_pullup(pio, mask, 0);
-	at91_gpio->ops->set_pulldown(pio, mask, is_on);
-	return 0;
-}
-EXPORT_SYMBOL(at91_set_pulldown);
-
-/*
- * disable Schmitt trigger
- */
-int at91_disable_schmitt_trig(unsigned pin)
-{
-	struct at91_gpio_chip *at91_gpio =3D pin_to_controller(pin);
-	void __iomem	*pio =3D at91_gpio->regbase;
-	unsigned	mask =3D pin_to_mask(pin);
-
-	if (!pio || !at91_gpio->ops->disable_schmitt_trig)
-		return -EINVAL;
-
-	at91_gpio->ops->disable_schmitt_trig(pio, mask);
-	return 0;
-}
-EXPORT_SYMBOL(at91_disable_schmitt_trig);
-
-#ifdef CONFIG_CMD_AT91MUX
-static void at91mux_printf_mode(unsigned bank, unsigned pin)
-{
-	struct at91_gpio_chip *at91_gpio =3D &gpio_chip[bank];
-	void __iomem *pio =3D at91_gpio->regbase;
-	enum at91_mux mode;
-	u32 pdsr;
-
-	unsigned mask =3D pin_to_mask(pin);
-
-	mode =3D at91_gpio->ops->get_periph(pio, mask);
-
-	if (mode =3D=3D AT91_MUX_GPIO) {
-		pdsr =3D __raw_readl(pio + PIO_PDSR);
-
-		printf("[gpio] %s", pdsr & mask ? "set" : "clear");
-	} else {
-		printf("[periph %c]", mode + 'A' - 1);
-	}
-}
-
-static void at91mux_dump_config(void)
-{
-	int bank, j;
-
-	/* print heading */
-	printf("Pin\t");
-	for (bank =3D 0; bank < gpio_banks; bank++) {
-		printf("PIO%c\t\t", 'A' + bank);
-	};
-	printf("\n\n");
-
-	/* print pin status */
-	for (j =3D 0; j < 32; j++) {
-		printf("%i:\t", j);
-
-		for (bank =3D 0; bank < gpio_banks; bank++) {
-			at91mux_printf_mode(bank, j);
-
-			printf("\t");
-		}
-
-		printf("\n");
-	}
-}
-
-static void at91mux_print_en_disable(const char *str, bool is_on)
-{
-	printf("%s =3D ", str);
-
-	if (is_on)
-		printf("enable\n");
-	else
-		printf("disable\n");
-}
-
-static void at91mux_dump_pio_config(unsigned bank, unsigned pin)
-{
-	struct at91_gpio_chip *at91_gpio =3D &gpio_chip[bank];
-	void __iomem *pio =3D at91_gpio->regbase;
-	u32 div;
-
-	printf("pio%c%u configuration\n\n", bank + 'A', pin);
-
-	at91mux_printf_mode(bank, pin);
-	printf("\n");
-
-	at91mux_print_en_disable("multidrive",
-		at91_mux_get_multidrive(pio, pin));
-
-	at91mux_print_en_disable("pullup",
-		at91_mux_get_pullup(pio, pin));
-
-	if (at91_gpio->ops->get_deglitch)
-		at91mux_print_en_disable("degitch",
-			at91_gpio->ops->get_deglitch(pio, pin));
-
-	if (at91_gpio->ops->get_debounce) {
-		printf("debounce =3D ");
-		if (at91_gpio->ops->get_debounce(pio, pin, &div))
-			printf("enable at %d\n", div);
-		else
-			printf("disable\n");
-	}
-
-	if (at91_gpio->ops->get_pulldown)
-		at91mux_print_en_disable("pulldown",
-			at91_gpio->ops->get_pulldown(pio, pin));
-
-	if (at91_gpio->ops->get_schmitt_trig)
-		at91mux_print_en_disable("schmitt trigger",
-			!at91_gpio->ops->get_schmitt_trig(pio, pin));
-}
-
-static int do_at91mux(int argc, char *argv[])
-{
-	int opt;
-	unsigned bank =3D 0;
-	unsigned pin =3D 0;
-
-	if (argc < 2) {
-		at91mux_dump_config();
-		return 0;
-	}
-
-	while ((opt =3D getopt(argc, argv, "b:p:")) > 0) {
-		switch (opt) {
-		case 'b':
-			bank =3D simple_strtoul(optarg, NULL, 10);
-			break;
-		case 'p':
-			pin =3D simple_strtoul(optarg, NULL, 10);
-			break;
-		}
-	}
-
-	if (bank >=3D gpio_banks) {
-		printf("bank %c >=3D supported %c banks\n", bank + 'A',
-			gpio_banks + 'A');
-		return 1;
-	}
-
-	if (pin >=3D 32) {
-		printf("pin %u >=3D supported %d pins\n", pin, 32);
-		return 1;
-	}
-
-	at91mux_dump_pio_config(bank, pin);
-
-	return 0;
-}
-
-BAREBOX_CMD_HELP_START(at91mux)
-BAREBOX_CMD_HELP_TEXT("Dump current MUX configuration. If a BANK or PIN ha=
s been")
-BAREBOX_CMD_HELP_TEXT("specified dump pin details.")
-BAREBOX_CMD_HELP_TEXT("")
-BAREBOX_CMD_HELP_TEXT("Options:")
-BAREBOX_CMD_HELP_OPT ("-p PIN", "pin number")
-BAREBOX_CMD_HELP_OPT ("-b BANK", "bank number")
-BAREBOX_CMD_HELP_END
-
-BAREBOX_CMD_START(at91mux)
-	.cmd		=3D do_at91mux,
-	BAREBOX_CMD_DESC("list MUX configuration")
-	BAREBOX_CMD_OPTS("[-pb]")
-	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
-	BAREBOX_CMD_HELP(cmd_at91mux_help)
-	BAREBOX_CMD_COMPLETE(empty_complete)
-BAREBOX_CMD_END
-#endif
-/*------------------------------------------------------------------------=
--*/
-
-static int at91_gpio_get(struct gpio_chip *chip, unsigned offset)
-{
-	struct at91_gpio_chip *at91_gpio =3D to_at91_gpio_chip(chip);
-	void __iomem *pio =3D at91_gpio->regbase;
-	unsigned mask =3D 1 << offset;
-
-	return at91_mux_gpio_get(pio, mask);
-}
-
-static void at91_gpio_set(struct gpio_chip *chip, unsigned offset, int val=
ue)
-{
-	struct at91_gpio_chip *at91_gpio =3D to_at91_gpio_chip(chip);
-	void __iomem *pio =3D at91_gpio->regbase;
-	unsigned mask =3D 1 << offset;
-
-	at91_mux_gpio_set(pio, mask, value);
-}
-
-static int at91_gpio_direction_output(struct gpio_chip *chip, unsigned off=
set,
-		int value)
-{
-	struct at91_gpio_chip *at91_gpio =3D to_at91_gpio_chip(chip);
-	void __iomem *pio =3D at91_gpio->regbase;
-	unsigned mask =3D 1 << offset;
-
-	at91_mux_gpio_set(pio, mask, value);
-	__raw_writel(mask, pio + PIO_OER);
-
-	return 0;
-}
-
-static int at91_gpio_direction_input(struct gpio_chip *chip, unsigned offs=
et)
-{
-	struct at91_gpio_chip *at91_gpio =3D to_at91_gpio_chip(chip);
-	void __iomem *pio =3D at91_gpio->regbase;
-	unsigned mask =3D 1 << offset;
-
-	__raw_writel(mask, pio + PIO_ODR);
-
-	return 0;
-}
-
-static int at91_gpio_request(struct gpio_chip *chip, unsigned offset)
-{
-	struct at91_gpio_chip *at91_gpio =3D to_at91_gpio_chip(chip);
-	void __iomem *pio =3D at91_gpio->regbase;
-	unsigned mask =3D 1 << offset;
-
-	dev_dbg(chip->dev, "%s:%d pio%c%d(%d)\n", __func__, __LINE__,
-		 'A' + pin_to_bank(chip->base), offset, chip->base + offset);
-	at91_mux_gpio_enable(pio, mask);
-
-	return 0;
-}
-
-static void at91_gpio_free(struct gpio_chip *chip, unsigned offset)
-{
-	dev_dbg(chip->dev, "%s:%d pio%c%d(%d)\n", __func__, __LINE__,
-		 'A' + pin_to_bank(chip->base), offset, chip->base + offset);
-}
-
-static struct gpio_ops at91_gpio_ops =3D {
-	.request =3D at91_gpio_request,
-	.free =3D at91_gpio_free,
-	.direction_input =3D at91_gpio_direction_input,
-	.direction_output =3D at91_gpio_direction_output,
-	.get =3D at91_gpio_get,
-	.set =3D at91_gpio_set,
-};
-
-static int at91_gpio_probe(struct device_d *dev)
-{
-	struct at91_gpio_chip *at91_gpio;
-	struct clk *clk;
-	int ret;
-
-	BUG_ON(dev->id > MAX_GPIO_BANKS);
-
-	at91_gpio =3D &gpio_chip[dev->id];
-
-	ret =3D dev_get_drvdata(dev, (unsigned long *)&at91_gpio->ops);
-	if (ret) {
-		dev_err(dev, "dev_get_drvdata failed: %d\n", ret);
-		return ret;
-	}
-
-	clk =3D clk_get(dev, NULL);
-	if (IS_ERR(clk)) {
-		ret =3D PTR_ERR(clk);
-		dev_err(dev, "clock not found: %d\n", ret);
-		return ret;
-	}
-
-	ret =3D clk_enable(clk);
-	if (ret < 0) {
-		dev_err(dev, "clock failed to enable: %d\n", ret);
-		clk_put(clk);
-		return ret;
-	}
-
-	gpio_banks =3D max(gpio_banks, dev->id + 1);
-	at91_gpio->regbase =3D dev_request_mem_region(dev, 0);
-
-	at91_gpio->chip.ops =3D &at91_gpio_ops;
-	at91_gpio->chip.ngpio =3D MAX_NB_GPIO_PER_BANK;
-	at91_gpio->chip.dev =3D dev;
-	at91_gpio->chip.base =3D dev->id * MAX_NB_GPIO_PER_BANK;
-
-	ret =3D gpiochip_add(&at91_gpio->chip);
-	if (ret) {
-		dev_err(dev, "couldn't add gpiochip, ret =3D %d\n", ret);
-		return ret;
-	}
-
-	return 0;
-}
-
-static struct platform_device_id at91_gpio_ids[] =3D {
-	{
-		.name =3D "at91rm9200-gpio",
-		.driver_data =3D (unsigned long)&at91rm9200_ops,
-	}, {
-		.name =3D "at91sam9x5-gpio",
-		.driver_data =3D (unsigned long)&at91sam9x5_ops,
-	}, {
-		/* sentinel */
-	},
-};
-
-static struct driver_d at91_gpio_driver =3D {
-	.name =3D "at91-gpio",
-	.probe =3D at91_gpio_probe,
-	.id_table =3D at91_gpio_ids,
-};
-
-static int at91_gpio_init(void)
-{
-	return platform_driver_register(&at91_gpio_driver);
-}
-postcore_initcall(at91_gpio_init);
diff --git a/drivers/pinctrl/Kconfig b/drivers/pinctrl/Kconfig
index 57281a1..398b931 100644
--- a/drivers/pinctrl/Kconfig
+++ b/drivers/pinctrl/Kconfig
@@ -8,7 +8,7 @@ config PINCTRL
 	  support but instead provide their own SoC specific APIs
 =

 config PINCTRL_AT91
-	select PINCTRL
+	select PINCTRL if OFDEVICE
 	bool
 	help
 	    The pinmux controller found on AT91 SoCs.
diff --git a/drivers/pinctrl/pinctrl-at91.c b/drivers/pinctrl/pinctrl-at91.c
index 433862a..597deea 100644
--- a/drivers/pinctrl/pinctrl-at91.c
+++ b/drivers/pinctrl/pinctrl-at91.c
@@ -71,7 +71,7 @@ static int gpio_banks;
 =

 static struct at91_gpio_chip gpio_chip[MAX_GPIO_BANKS];
 =

-static inline void __iomem *pin_to_controller(struct at91_pinctrl *info, u=
nsigned pin)
+static inline void __iomem *pin_to_controller(unsigned pin)
 {
 	pin /=3D MAX_NB_GPIO_PER_BANK;
 	if (likely(pin < gpio_banks))
@@ -112,6 +112,200 @@ struct at91_pinctrl_mux_ops {
 	void (*disable_schmitt_trig)(void __iomem *pio, unsigned mask);
 };
 =

+int at91_mux_pin(unsigned pin, enum at91_mux mux, int use_pullup)
+{
+	struct at91_gpio_chip *at91_gpio =3D pin_to_controller(pin);
+	void __iomem *pio;
+	struct device_d *dev;
+	unsigned mask =3D pin_to_mask(pin);
+	int bank =3D pin_to_bank(pin);
+
+	if (!at91_gpio)
+		return -EINVAL;
+
+	pio =3D at91_gpio->regbase;
+	if (!pio)
+		return -EINVAL;
+
+	dev =3D at91_gpio->chip.dev;
+	at91_mux_disable_interrupt(pio, mask);
+
+	pin %=3D MAX_NB_GPIO_PER_BANK;
+	if (mux) {
+		dev_dbg(dev, "pio%c%d configured as periph%c with pullup =3D %d\n",
+			bank + 'A', pin, mux - 1 + 'A', use_pullup);
+	} else {
+		dev_dbg(dev, "pio%c%d configured as gpio with pullup =3D %d\n",
+			bank + 'A', pin, use_pullup);
+	}
+
+	switch(mux) {
+	case AT91_MUX_GPIO:
+		at91_mux_gpio_enable(pio, mask);
+		break;
+	case AT91_MUX_PERIPH_A:
+		at91_gpio->ops->mux_A_periph(pio, mask);
+		break;
+	case AT91_MUX_PERIPH_B:
+		at91_gpio->ops->mux_B_periph(pio, mask);
+		break;
+	case AT91_MUX_PERIPH_C:
+		if (!at91_gpio->ops->mux_C_periph)
+			return -EINVAL;
+		at91_gpio->ops->mux_C_periph(pio, mask);
+		break;
+	case AT91_MUX_PERIPH_D:
+		if (!at91_gpio->ops->mux_D_periph)
+			return -EINVAL;
+		at91_gpio->ops->mux_D_periph(pio, mask);
+		break;
+	}
+	if (mux)
+		at91_mux_gpio_disable(pio, mask);
+
+	if (use_pullup >=3D 0)
+		at91_mux_set_pullup(pio, mask, use_pullup);
+
+	return 0;
+}
+EXPORT_SYMBOL(at91_mux_pin);
+
+/*
+ * mux the pin to the gpio controller (instead of "A" or "B" peripheral), =
and
+ * configure it for an input.
+ */
+int at91_set_gpio_input(unsigned pin, int use_pullup)
+{
+	struct at91_gpio_chip *at91_gpio =3D pin_to_controller(pin);
+	void __iomem	*pio =3D at91_gpio->regbase;
+	unsigned	mask =3D pin_to_mask(pin);
+	int ret;
+
+	ret =3D at91_mux_pin(pin, AT91_MUX_GPIO, use_pullup);
+	if (ret)
+		return ret;
+
+	dev_dbg(at91_gpio->chip.dev, "pio%c%d configured as input\n",
+		pin_to_bank(pin) + 'A', pin_to_bank_offset(pin));
+
+	at91_mux_gpio_input(pio, mask, true);
+
+	return 0;
+}
+
+/*
+ * mux the pin to the gpio controller (instead of "A" or "B" peripheral),
+ * and configure it for an output.
+ */
+int at91_set_gpio_output(unsigned pin, int value)
+{
+	struct at91_gpio_chip *at91_gpio =3D pin_to_controller(pin);
+	void __iomem	*pio =3D at91_gpio->regbase;
+	unsigned	mask =3D pin_to_mask(pin);
+	int ret;
+
+	ret =3D at91_mux_pin(pin, AT91_MUX_GPIO, -1);
+	if (ret)
+		return ret;
+
+	dev_dbg(at91_gpio->chip.dev, "pio%c%d configured as output val =3D %d\n",
+		pin_to_bank(pin) + 'A', pin_to_bank_offset(pin), value);
+
+	at91_mux_gpio_input(pio, mask, false);
+	at91_mux_gpio_set(pio, mask, value);
+	return 0;
+}
+EXPORT_SYMBOL(at91_set_gpio_output);
+
+/*
+ * enable/disable the glitch filter; mostly used with IRQ handling.
+ */
+int at91_set_deglitch(unsigned pin, int is_on)
+{
+	struct at91_gpio_chip *at91_gpio =3D pin_to_controller(pin);
+	void __iomem	*pio =3D at91_gpio->regbase;
+	unsigned	mask =3D pin_to_mask(pin);
+
+	if (!pio)
+		return -EINVAL;
+
+	at91_gpio->ops->set_deglitch(pio, mask, is_on);
+	return 0;
+}
+EXPORT_SYMBOL(at91_set_deglitch);
+
+/*
+ * enable/disable the debounce filter;
+ */
+int at91_set_debounce(unsigned pin, int is_on, int div)
+{
+	struct at91_gpio_chip *at91_gpio =3D pin_to_controller(pin);
+	void __iomem	*pio =3D at91_gpio->regbase;
+	unsigned	mask =3D pin_to_mask(pin);
+
+	if (!pio || !at91_gpio->ops->set_debounce)
+		return -EINVAL;
+
+	at91_gpio->ops->set_debounce(pio, mask, is_on, div);
+	return 0;
+}
+EXPORT_SYMBOL(at91_set_debounce);
+
+/*
+ * enable/disable the multi-driver; This is only valid for output and
+ * allows the output pin to run as an open collector output.
+ */
+int at91_set_multi_drive(unsigned pin, int is_on)
+{
+	struct at91_gpio_chip *at91_gpio =3D pin_to_controller(pin);
+	void __iomem	*pio =3D at91_gpio->regbase;
+	unsigned	mask =3D pin_to_mask(pin);
+
+	if (!pio)
+		return -EINVAL;
+
+	at91_mux_set_multidrive(pio, mask, is_on);
+	return 0;
+}
+EXPORT_SYMBOL(at91_set_multi_drive);
+
+/*
+ * enable/disable the pull-down.
+ * If pull-up already enabled while calling the function, we disable it.
+ */
+int at91_set_pulldown(unsigned pin, int is_on)
+{
+	struct at91_gpio_chip *at91_gpio =3D pin_to_controller(pin);
+	void __iomem	*pio =3D at91_gpio->regbase;
+	unsigned	mask =3D pin_to_mask(pin);
+
+	if (!pio || !at91_gpio->ops->set_pulldown)
+		return -EINVAL;
+
+	/* Disable pull-up anyway */
+	at91_mux_set_pullup(pio, mask, 0);
+	at91_gpio->ops->set_pulldown(pio, mask, is_on);
+	return 0;
+}
+EXPORT_SYMBOL(at91_set_pulldown);
+
+/*
+ * disable Schmitt trigger
+ */
+int at91_disable_schmitt_trig(unsigned pin)
+{
+	struct at91_gpio_chip *at91_gpio =3D pin_to_controller(pin);
+	void __iomem	*pio =3D at91_gpio->regbase;
+	unsigned	mask =3D pin_to_mask(pin);
+
+	if (!pio || !at91_gpio->ops->disable_schmitt_trig)
+		return -EINVAL;
+
+	at91_gpio->ops->disable_schmitt_trig(pio, mask);
+	return 0;
+}
+EXPORT_SYMBOL(at91_disable_schmitt_trig);
+
 static enum at91_mux at91_mux_pio3_get_periph(void __iomem *pio, unsigned =
mask)
 {
 	unsigned select;
@@ -183,49 +377,6 @@ static struct at91_pinctrl_mux_ops at91sam9x5_ops =3D {
 	.disable_schmitt_trig =3D at91_mux_pio3_disable_schmitt_trig,
 };
 =

-static int at91_mux_pin(struct at91_pinctrl *info, unsigned pin, enum at91=
_mux mux, int use_pullup)
-{
-	void __iomem	*pio =3D pin_to_controller(info, pin);
-	unsigned mask =3D pin_to_mask(pin);
-
-	if (!info)
-		return -EINVAL;
-
-	if (!pio)
-		return -EINVAL;
-
-	at91_mux_disable_interrupt(pio, mask);
-
-	switch (mux) {
-	case AT91_MUX_GPIO:
-		at91_mux_gpio_enable(pio, mask);
-		break;
-	case AT91_MUX_PERIPH_A:
-		info->ops->mux_A_periph(pio, mask);
-		break;
-	case AT91_MUX_PERIPH_B:
-		info->ops->mux_B_periph(pio, mask);
-		break;
-	case AT91_MUX_PERIPH_C:
-		if (!info->ops->mux_C_periph)
-			return -EINVAL;
-		info->ops->mux_C_periph(pio, mask);
-		break;
-	case AT91_MUX_PERIPH_D:
-		if (!info->ops->mux_D_periph)
-			return -EINVAL;
-		info->ops->mux_D_periph(pio, mask);
-		break;
-	}
-	if (mux)
-		at91_mux_gpio_disable(pio, mask);
-
-	if (use_pullup >=3D 0)
-		at91_mux_set_pullup(pio, mask, use_pullup);
-
-	return 0;
-}
-
 static struct of_device_id at91_pinctrl_dt_ids[] =3D {
 	{
 		.compatible =3D "atmel,at91rm9200-pinctrl",
@@ -264,7 +415,7 @@ static int at91_pinctrl_set_conf(struct at91_pinctrl *i=
nfo, unsigned int pin_num
 	unsigned int mask;
 	void __iomem *pio;
 =

-	pio =3D pin_to_controller(info, pin_num);
+	pio =3D pin_to_controller(pin_num);
 	mask =3D pin_to_mask(pin_num);
 =

 	if (conf & PULL_UP && conf & PULL_DOWN)
@@ -309,7 +460,7 @@ static int at91_pinctrl_set_state(struct pinctrl_device=
 *pdev, struct device_nod
 		mux =3D be32_to_cpu(*list++);
 		conf =3D be32_to_cpu(*list++);
 =

-		ret =3D at91_mux_pin(info, pin_num, mux, conf & PULL_UP);
+		ret =3D at91_mux_pin(pin_num, mux, conf & PULL_UP);
 		if (ret) {
 			dev_err(pdev->dev, "failed to mux pin %d\n", pin_num);
 			return ret;
@@ -334,6 +485,9 @@ static int at91_pinctrl_probe(struct device_d *dev)
 	struct at91_pinctrl *info;
 	int ret;
 =

+	if (!IS_ENABLED(CONFIG_PINCTRL))
+		return 0;
+
 	info =3D xzalloc(sizeof(struct at91_pinctrl));
 =

 	info->ops =3D at91_pinctrl_get_driver_data(dev);
-- =

2.1.0



-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
