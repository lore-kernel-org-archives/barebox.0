Delivery-date: Mon, 13 Sep 2021 19:02:23 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mPpLb-0003Bc-Of
	for lore@lore.pengutronix.de; Mon, 13 Sep 2021 19:02:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mPpLZ-00061c-LB
	for lore@pengutronix.de; Mon, 13 Sep 2021 19:02:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3gVSXxo808Nm69q+5h3HOHdwHpdLX3vTlYhffxVy8a8=; b=uaViD8D4xa5VAA5CoANlVd6WYE
	czzIrlPidKBxk+1DxtcR1lj5y6YZJYU27DsTi7eeZDBxXWuFmQ778bU1d79cLwgRXrleRVzBQxddQ
	4VgNbiA4V9bmgGsEeEnpureyoEHOyAaNa/xAS3/kLfYOckBI5eOqSCGG4Omn2qngySvZPJs25tCo4
	KJ77bQL4tiJ9lousQ3WTTYWeDql6xRfIezat+cGrMQ3Ne3U2yx7R43jB3b4e1Qp21vjRWEpX6vX5i
	HU4zMESJquVDefgGPH2MEhUUEmA/H0PbSIQe4wYXqNQe/bOObctmMaXwrf4xdy/RvfxW4z8k2El/B
	4OFuiTlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mPpJb-002YzH-Dg; Mon, 13 Sep 2021 17:00:19 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mPp3P-002TT4-To
 for barebox@lists.infradead.org; Mon, 13 Sep 2021 16:43:39 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1mPp3O-0003Dc-ID; Mon, 13 Sep 2021 18:43:34 +0200
To: Michael Riesch <michael.riesch@wolfvision.net>, barebox@lists.infradead.org
Cc: Thomas Haemmerle <thomas.haemmerle@wolfvision.net>
References: <20210913152536.27073-1-michael.riesch@wolfvision.net>
 <20210913152536.27073-2-michael.riesch@wolfvision.net>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <99e26c81-6233-5708-e850-f2ee0779cca8@pengutronix.de>
Date: Mon, 13 Sep 2021 18:43:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210913152536.27073-2-michael.riesch@wolfvision.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210913_094336_434350_75DB1B94 
X-CRM114-Status: GOOD (  45.45  )
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
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] gpio: add driver for xilinx zynq and zynqmp
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 13.09.21 17:25, Michael Riesch wrote:
> From: Thomas Haemmerle <thomas.haemmerle@wolfvision.net>
> 
> Port the driver for the Xilinx Zynq/Zynq UltraScale+ MPSoC architecture
> to barebox (based on the Linux driver).
> 
> Signed-off-by: Thomas Haemmerle <thomas.haemmerle@wolfvision.net>
> [apply format fixes]
> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
> ---
>  arch/arm/Kconfig         |   2 +
>  drivers/gpio/Kconfig     |   6 +
>  drivers/gpio/Makefile    |   1 +
>  drivers/gpio/gpio-zynq.c | 453 +++++++++++++++++++++++++++++++++++++++
>  4 files changed, 462 insertions(+)
>  create mode 100644 drivers/gpio/gpio-zynq.c
> 
> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> index c7ab16688..a8b7bdeaa 100644
> --- a/arch/arm/Kconfig
> +++ b/arch/arm/Kconfig
> @@ -248,6 +248,7 @@ config ARCH_ZYNQ
>  	bool "Xilinx Zynq-based boards"
>  	select HAS_DEBUG_LL
>  	select PBL_IMAGE
> +	select GPIOLIB
>  
>  config ARCH_ZYNQMP
>  	bool "Xilinx ZynqMP-based boards"
> @@ -258,6 +259,7 @@ config ARCH_ZYNQMP
>  	select COMMON_CLK
>  	select COMMON_CLK_OF_PROVIDER
>  	select CLKDEV_LOOKUP
> +	select GPIOLIB
>  	select OFDEVICE
>  	select OFTREE
>  	select RELOCATABLE
> diff --git a/drivers/gpio/Kconfig b/drivers/gpio/Kconfig
> index 98a44fbbb..295426d4b 100644
> --- a/drivers/gpio/Kconfig
> +++ b/drivers/gpio/Kconfig
> @@ -183,6 +183,12 @@ config GPIO_LIBFTDI1
>  	bool "libftdi1 driver"
>  	depends on SANDBOX
>  
> +config GPIO_ZYNQ
> +	tristate "Xilinx Zynq GPIO support"
> +	depends on ARCH_ZYNQ || ARCH_ZYNQMP

|| COMPILE_TEST
depends on OFDEVICE

> +	help
> +	  Say yes here to support Xilinx Zynq GPIO controller.

Could you enable this in the defconfig or add
a default y if ARCH_ZYNQ || ARCH_ZYNQMP?

> +
>  endmenu
>  
>  endif
> diff --git a/drivers/gpio/Makefile b/drivers/gpio/Makefile
> index 638cbb19a..905950a85 100644
> --- a/drivers/gpio/Makefile
> +++ b/drivers/gpio/Makefile
> @@ -25,3 +25,4 @@ obj-$(CONFIG_GPIO_VF610)	+= gpio-vf610.o
>  obj-$(CONFIG_GPIO_RASPBERRYPI_EXP) += gpio-raspberrypi-exp.o
>  obj-$(CONFIG_GPIO_SIFIVE)	+= gpio-sifive.o
>  obj-$(CONFIG_GPIO_STARFIVE)	+= gpio-starfive-vic.o
> +obj-$(CONFIG_GPIO_ZYNQ)		+= gpio-zynq.o
> diff --git a/drivers/gpio/gpio-zynq.c b/drivers/gpio/gpio-zynq.c
> new file mode 100644
> index 000000000..156c2e83f
> --- /dev/null
> +++ b/drivers/gpio/gpio-zynq.c
> @@ -0,0 +1,453 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +/*
> + * Xilinx Zynq GPIO device driver
> + *
> + * Copyright (C) 2009 - 2014 Xilinx, Inc.
> + *
> + * Based on the Linux kernel driver (drivers/gpio/gpio-zynq.c).
> + */
> +
> +#include <common.h>
> +#include <errno.h>
> +#include <gpio.h>
> +#include <init.h>
> +#include <io.h>
> +#include <of.h>
> +
> +/* Maximum banks */
> +#define ZYNQ_GPIO_MAX_BANK	     4
> +#define ZYNQMP_GPIO_MAX_BANK	     6
> +
> +#define ZYNQ_GPIO_BANK0_NGPIO	     32
> +#define ZYNQ_GPIO_BANK1_NGPIO	     22
> +#define ZYNQ_GPIO_BANK2_NGPIO	     32
> +#define ZYNQ_GPIO_BANK3_NGPIO	     32
> +
> +#define ZYNQMP_GPIO_BANK0_NGPIO	     26
> +#define ZYNQMP_GPIO_BANK1_NGPIO	     26
> +#define ZYNQMP_GPIO_BANK2_NGPIO	     26
> +#define ZYNQMP_GPIO_BANK3_NGPIO	     32
> +#define ZYNQMP_GPIO_BANK4_NGPIO	     32
> +#define ZYNQMP_GPIO_BANK5_NGPIO	     32
> +
> +#define ZYNQ_GPIO_NR_GPIOS	     118
> +#define ZYNQMP_GPIO_NR_GPIOS	     174
> +
> +#define ZYNQ_GPIO_BANK0_PIN_MIN(str) 0
> +#define ZYNQ_GPIO_BANK0_PIN_MAX(str)                                           \
> +	(ZYNQ_GPIO_BANK0_PIN_MIN(str) + ZYNQ##str##_GPIO_BANK0_NGPIO - 1)
> +#define ZYNQ_GPIO_BANK1_PIN_MIN(str) (ZYNQ_GPIO_BANK0_PIN_MAX(str) + 1)
> +#define ZYNQ_GPIO_BANK1_PIN_MAX(str)                                           \
> +	(ZYNQ_GPIO_BANK1_PIN_MIN(str) + ZYNQ##str##_GPIO_BANK1_NGPIO - 1)
> +#define ZYNQ_GPIO_BANK2_PIN_MIN(str) (ZYNQ_GPIO_BANK1_PIN_MAX(str) + 1)
> +#define ZYNQ_GPIO_BANK2_PIN_MAX(str)                                           \
> +	(ZYNQ_GPIO_BANK2_PIN_MIN(str) + ZYNQ##str##_GPIO_BANK2_NGPIO - 1)
> +#define ZYNQ_GPIO_BANK3_PIN_MIN(str) (ZYNQ_GPIO_BANK2_PIN_MAX(str) + 1)
> +#define ZYNQ_GPIO_BANK3_PIN_MAX(str)                                           \
> +	(ZYNQ_GPIO_BANK3_PIN_MIN(str) + ZYNQ##str##_GPIO_BANK3_NGPIO - 1)
> +#define ZYNQ_GPIO_BANK4_PIN_MIN(str) (ZYNQ_GPIO_BANK3_PIN_MAX(str) + 1)
> +#define ZYNQ_GPIO_BANK4_PIN_MAX(str)                                           \
> +	(ZYNQ_GPIO_BANK4_PIN_MIN(str) + ZYNQ##str##_GPIO_BANK4_NGPIO - 1)
> +#define ZYNQ_GPIO_BANK5_PIN_MIN(str) (ZYNQ_GPIO_BANK4_PIN_MAX(str) + 1)
> +#define ZYNQ_GPIO_BANK5_PIN_MAX(str)                                           \
> +	(ZYNQ_GPIO_BANK5_PIN_MIN(str) + ZYNQ##str##_GPIO_BANK5_NGPIO - 1)
> +
> +/* Register offsets for the GPIO device */
> +/* LSW Mask & Data -WO */
> +#define ZYNQ_GPIO_DATA_LSW_OFFSET(BANK) (0x000 + (8 * BANK))
> +/* MSW Mask & Data -WO */
> +#define ZYNQ_GPIO_DATA_MSW_OFFSET(BANK) (0x004 + (8 * BANK))
> +/* Data Register-RW */
> +#define ZYNQ_GPIO_DATA_OFFSET(BANK)	(0x040 + (4 * BANK))
> +#define ZYNQ_GPIO_DATA_RO_OFFSET(BANK)	(0x060 + (4 * BANK))
> +/* Direction mode reg-RW */
> +#define ZYNQ_GPIO_DIRM_OFFSET(BANK)	(0x204 + (0x40 * BANK))
> +/* Output enable reg-RW */
> +#define ZYNQ_GPIO_OUTEN_OFFSET(BANK)	(0x208 + (0x40 * BANK))
> +/* Interrupt mask reg-RO */
> +#define ZYNQ_GPIO_INTMASK_OFFSET(BANK)	(0x20C + (0x40 * BANK))
> +/* Interrupt enable reg-WO */
> +#define ZYNQ_GPIO_INTEN_OFFSET(BANK)	(0x210 + (0x40 * BANK))
> +/* Interrupt disable reg-WO */
> +#define ZYNQ_GPIO_INTDIS_OFFSET(BANK)	(0x214 + (0x40 * BANK))
> +/* Interrupt status reg-RO */
> +#define ZYNQ_GPIO_INTSTS_OFFSET(BANK)	(0x218 + (0x40 * BANK))
> +/* Interrupt type reg-RW */
> +#define ZYNQ_GPIO_INTTYPE_OFFSET(BANK)	(0x21C + (0x40 * BANK))
> +/* Interrupt polarity reg-RW */
> +#define ZYNQ_GPIO_INTPOL_OFFSET(BANK)	(0x220 + (0x40 * BANK))
> +/* Interrupt on any, reg-RW */
> +#define ZYNQ_GPIO_INTANY_OFFSET(BANK)	(0x224 + (0x40 * BANK))
> +
> +/* Disable all interrupts mask */
> +#define ZYNQ_GPIO_IXR_DISABLE_ALL	0xFFFFFFFF
> +
> +/* Mid pin number of a bank */
> +#define ZYNQ_GPIO_MID_PIN_NUM		16
> +
> +/* GPIO upper 16 bit mask */
> +#define ZYNQ_GPIO_UPPER_MASK		0xFFFF0000
> +
> +/* set to differentiate zynq from zynqmp, 0=zynqmp, 1=zynq */
> +#define ZYNQ_GPIO_QUIRK_IS_ZYNQ		BIT(0)
> +#define GPIO_QUIRK_DATA_RO_BUG		BIT(1)
> +
> +/**
> + * struct zynq_gpio - GPIO device private data structure
> + * @chip:	instance of the gpio_chip
> + * @base_addr:	base address of the GPIO device
> + * @p_data:	pointer to platform data
> + */
> +struct zynq_gpio {
> +	struct gpio_chip chip;
> +	void __iomem *base_addr;
> +	const struct zynq_platform_data *p_data;
> +};
> +
> +/**
> + * struct zynq_platform_data - Zynq GPIO platform data structure
> + * @quirks:	Flags is used to identify the platform
> + * @ngpio:	max number of gpio pins
> + * @max_bank:	maximum number of gpio banks
> + * @bank_min:	this array represents bank's min pin
> + * @bank_max:	this array represents bank's max pin
> + */
> +struct zynq_platform_data {
> +	u32 quirks;
> +	u16 ngpio;
> +	int max_bank;
> +	int bank_min[ZYNQMP_GPIO_MAX_BANK];
> +	int bank_max[ZYNQMP_GPIO_MAX_BANK];
> +};
> +
> +/**
> + * zynq_gpio_is_zynq - Test if HW is Zynq or ZynqMP
> + * @gpio:	Pointer to driver data struct
> + *
> + * Return: 0 if ZynqMP, 1 if Zynq.
> + */
> +static int zynq_gpio_is_zynq(struct zynq_gpio *gpio)
> +{
> +	return !!(gpio->p_data->quirks & ZYNQ_GPIO_QUIRK_IS_ZYNQ);
> +}
> +
> +/**
> + * gpio_data_ro_bug - Test if HW bug exists or not
> + * @gpio:       Pointer to driver data struct
> + *
> + * Return: 0 if bug does not exist, 1 if bug exists.
> + */
> +static int gpio_data_ro_bug(struct zynq_gpio *gpio)
> +{
> +	return !!(gpio->p_data->quirks & GPIO_QUIRK_DATA_RO_BUG);
> +}
> +
> +/**
> + * zynq_gpio_get_bank_pin - Get the bank number and pin number within that bank
> + * for a given pin in the GPIO device
> + * @pin_num:	gpio pin number within the device
> + * @bank_num:	an output parameter used to return the bank number of the gpio
> + *		pin
> + * @bank_pin_num: an output parameter used to return pin number within a bank
> + *		  for the given gpio pin
> + * @gpio:	gpio device data structure
> + *
> + * Returns the bank number and pin offset within the bank.
> + */
> +static int zynq_gpio_get_bank_pin(unsigned int pin_num, unsigned int *bank_num,
> +				  unsigned int *bank_pin_num,
> +				  struct zynq_gpio *gpio)
> +{
> +	int bank;
> +
> +	for (bank = 0; bank < gpio->p_data->max_bank; bank++) {
> +		if ((pin_num >= gpio->p_data->bank_min[bank]) &&
> +		    (pin_num <= gpio->p_data->bank_max[bank])) {
> +			*bank_num = bank;
> +			*bank_pin_num = pin_num - gpio->p_data->bank_min[bank];
> +			return 0;
> +		}
> +	}
> +
> +	*bank_num = 0;
> +	*bank_pin_num = 0;
> +	return -ENODEV;
> +}
> +
> +/**
> + * zynq_gpio_get_value - Get the state of the specified pin of GPIO device
> + * @chip:	gpio_chip instance to be worked on
> + * @pin:	gpio pin number within the device
> + *
> + * This function reads the state of the specified pin of the GPIO device.
> + *
> + * Return: 0 if the pin is low, 1 if pin is high.
> + */
> +static int zynq_gpio_get_value(struct gpio_chip *chip, unsigned int pin)
> +{
> +	u32 data;
> +	unsigned int bank_num, bank_pin_num;
> +	struct zynq_gpio *gpio = container_of(chip, struct zynq_gpio, chip);
> +
> +	if (zynq_gpio_get_bank_pin(pin, &bank_num, &bank_pin_num, gpio) < 0)
> +		return -EINVAL;
> +
> +	if (gpio_data_ro_bug(gpio)) {
> +		if (zynq_gpio_is_zynq(gpio)) {
> +			if (bank_num <= 1) {
> +				data = readl_relaxed(
> +					gpio->base_addr +
> +					ZYNQ_GPIO_DATA_RO_OFFSET(bank_num));
> +			} else {
> +				data = readl_relaxed(
> +					gpio->base_addr +
> +					ZYNQ_GPIO_DATA_OFFSET(bank_num));
> +			}
> +		} else {
> +			if (bank_num <= 2) {
> +				data = readl_relaxed(
> +					gpio->base_addr +
> +					ZYNQ_GPIO_DATA_RO_OFFSET(bank_num));
> +			} else {
> +				data = readl_relaxed(
> +					gpio->base_addr +
> +					ZYNQ_GPIO_DATA_OFFSET(bank_num));
> +			}
> +		}
> +	} else {
> +		data = readl_relaxed(gpio->base_addr +
> +				     ZYNQ_GPIO_DATA_RO_OFFSET(bank_num));
> +	}
> +	return (data >> bank_pin_num) & 1;
> +}
> +
> +/**
> + * zynq_gpio_set_value - Modify the state of the pin with specified value
> + * @chip:	gpio_chip instance to be worked on
> + * @pin:	gpio pin number within the device
> + * @state:	value used to modify the state of the specified pin
> + *
> + * This function calculates the register offset (i.e to lower 16 bits or
> + * upper 16 bits) based on the given pin number and sets the state of a
> + * gpio pin to the specified value. The state is either 0 or non-zero.
> + */
> +static void zynq_gpio_set_value(struct gpio_chip *chip, unsigned int pin,
> +				int state)
> +{
> +	unsigned int reg_offset, bank_num, bank_pin_num;
> +	struct zynq_gpio *gpio = container_of(chip, struct zynq_gpio, chip);
> +
> +	if (zynq_gpio_get_bank_pin(pin, &bank_num, &bank_pin_num, gpio) < 0)
> +		return;
> +
> +	if (bank_pin_num >= ZYNQ_GPIO_MID_PIN_NUM) {
> +		bank_pin_num -= ZYNQ_GPIO_MID_PIN_NUM;
> +		reg_offset = ZYNQ_GPIO_DATA_MSW_OFFSET(bank_num);
> +	} else {
> +		reg_offset = ZYNQ_GPIO_DATA_LSW_OFFSET(bank_num);
> +	}
> +
> +	/*
> +	 * get the 32 bit value to be written to the mask/data register where
> +	 * the upper 16 bits is the mask and lower 16 bits is the data
> +	 */
> +	state = !!state;
> +	state = ~(1 << (bank_pin_num + ZYNQ_GPIO_MID_PIN_NUM)) &
> +		((state << bank_pin_num) | ZYNQ_GPIO_UPPER_MASK);
> +
> +	writel_relaxed(state, gpio->base_addr + reg_offset);
> +}
> +
> +/**
> + * zynq_gpio_dir_in - Set the direction of the specified GPIO pin as input
> + * @chip:	gpio_chip instance to be worked on
> + * @pin:	gpio pin number within the device
> + *
> + * This function uses the read-modify-write sequence to set the direction of
> + * the gpio pin as input.
> + *
> + * Return: 0 always
> + */
> +static int zynq_gpio_dir_in(struct gpio_chip *chip, unsigned int pin)
> +{
> +	u32 reg;
> +	unsigned int bank_num, bank_pin_num;
> +	struct zynq_gpio *gpio = container_of(chip, struct zynq_gpio, chip);
> +
> +	if (zynq_gpio_get_bank_pin(pin, &bank_num, &bank_pin_num, gpio) < 0)
> +		return -EINVAL;
> +	/*
> +	 * On zynq bank 0 pins 7 and 8 are special and cannot be used
> +	 * as inputs.
> +	 */
> +	if (zynq_gpio_is_zynq(gpio) && bank_num == 0 &&
> +	    (bank_pin_num == 7 || bank_pin_num == 8))
> +		return -EINVAL;
> +
> +	/* clear the bit in direction mode reg to set the pin as input */
> +	reg = readl_relaxed(gpio->base_addr + ZYNQ_GPIO_DIRM_OFFSET(bank_num));
> +	reg &= ~BIT(bank_pin_num);
> +	writel_relaxed(reg, gpio->base_addr + ZYNQ_GPIO_DIRM_OFFSET(bank_num));
> +
> +	return 0;
> +}
> +
> +/**
> + * zynq_gpio_dir_out - Set the direction of the specified GPIO pin as output
> + * @chip:	gpio_chip instance to be worked on
> + * @pin:	gpio pin number within the device
> + * @state:	value to be written to specified pin
> + *
> + * This function sets the direction of specified GPIO pin as output, configures
> + * the Output Enable register for the pin and uses zynq_gpio_set to set
> + * the state of the pin to the value specified.
> + *
> + * Return: 0 always
> + */
> +static int zynq_gpio_dir_out(struct gpio_chip *chip, unsigned int pin,
> +			     int state)
> +{
> +	u32 reg;
> +	unsigned int bank_num, bank_pin_num;
> +	struct zynq_gpio *gpio = container_of(chip, struct zynq_gpio, chip);
> +
> +	if (zynq_gpio_get_bank_pin(pin, &bank_num, &bank_pin_num, gpio) < 0)
> +		return -EINVAL;
> +
> +	/* set the GPIO pin as output */
> +	reg = readl_relaxed(gpio->base_addr + ZYNQ_GPIO_DIRM_OFFSET(bank_num));
> +	reg |= BIT(bank_pin_num);
> +	writel_relaxed(reg, gpio->base_addr + ZYNQ_GPIO_DIRM_OFFSET(bank_num));
> +
> +	/* configure the output enable reg for the pin */
> +	reg = readl_relaxed(gpio->base_addr + ZYNQ_GPIO_OUTEN_OFFSET(bank_num));
> +	reg |= BIT(bank_pin_num);
> +	writel_relaxed(reg, gpio->base_addr + ZYNQ_GPIO_OUTEN_OFFSET(bank_num));
> +
> +	/* set the state of the pin */
> +	zynq_gpio_set_value(chip, pin, state);
> +	return 0;
> +}
> +
> +/**
> + * zynq_gpio_get_direction - Read the direction of the specified GPIO pin
> + * @chip:	gpio_chip instance to be worked on
> + * @pin:	gpio pin number within the device
> + *
> + * This function returns the direction of the specified GPIO.
> + *
> + * Return: 0 for output, 1 for input
> + */
> +static int zynq_gpio_get_direction(struct gpio_chip *chip, unsigned int pin)
> +{
> +	u32 reg;
> +	unsigned int bank_num, bank_pin_num;
> +	struct zynq_gpio *gpio = container_of(chip, struct zynq_gpio, chip);
> +
> +	if (zynq_gpio_get_bank_pin(pin, &bank_num, &bank_pin_num, gpio) < 0)
> +		return -EINVAL;
> +
> +	reg = readl_relaxed(gpio->base_addr + ZYNQ_GPIO_DIRM_OFFSET(bank_num));
> +
> +	return !(reg & BIT(bank_pin_num));
> +}
> +
> +static struct gpio_ops zynq_gpio_ops = {
> +	.direction_input = zynq_gpio_dir_in,
> +	.direction_output = zynq_gpio_dir_out,
> +	.get = zynq_gpio_get_value,
> +	.set = zynq_gpio_set_value,
> +	.get_direction = zynq_gpio_get_direction,
> +};
> +
> +static int zynqmp_gpio_probe(struct device_d *dev)
> +{
> +	struct resource *iores;
> +	struct zynq_gpio *gpio;
> +	struct zynq_platform_data *p_data;
> +	int ret;
> +
> +	ret = dev_get_drvdata(dev, (const void **)&p_data);
> +	if (ret)
> +		return ret;

Please use device_get_match_data() instead. dev_get_drvdata is
error prone and will eventually be phased out.

> +
> +	gpio = xzalloc(sizeof(*gpio));
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores)) {
> +		printk("dev_request_mem_resource\n");

I'd drop this, an EBUSY is generally understood to mean memory couldn't be reserved.
If you want to keep it, make it a dev_warn and a proper sentence.

> +		return PTR_ERR(iores);
> +	}
> +
> +	if (dev->id < 0) {

This is always true for OF-probed devices, you can remove the check and drop
the other branch.

> +		gpio->chip.base = of_alias_get_id(dev->device_node, "gpio");
> +		if (gpio->chip.base < 0) {

base == -1 means allocating sequentially. That's what the Linux driver
does in absence of aliases.

Why not do it likewise and drop this if condition as well as the
second patch?

> +			ret = gpio->chip.base;
> +			printk("Failed to get GPIO alias\n");

Make it a dev_warn if you decide to keep it.

> +			goto free_gpio;
> +		}
> +	} else {
> +		gpio->chip.base = dev->id;
> +	}
> +
> +	gpio->base_addr = IOMEM(iores->start);
> +	gpio->chip.ops = &zynq_gpio_ops;
> +	gpio->chip.ngpio = p_data->ngpio;
> +	gpio->chip.dev = dev;
> +	gpio->p_data = p_data;
> +
> +	return gpiochip_add(&gpio->chip);
> +free_gpio:
> +	free(gpio);
> +	return ret;
> +}
> +
> +static const struct zynq_platform_data zynqmp_gpio_def = {
> +	.quirks = GPIO_QUIRK_DATA_RO_BUG,
> +	.ngpio = ZYNQMP_GPIO_NR_GPIOS,
> +	.max_bank = ZYNQMP_GPIO_MAX_BANK,
> +	.bank_min[0] = ZYNQ_GPIO_BANK0_PIN_MIN(MP),
> +	.bank_max[0] = ZYNQ_GPIO_BANK0_PIN_MAX(MP),
> +	.bank_min[1] = ZYNQ_GPIO_BANK1_PIN_MIN(MP),
> +	.bank_max[1] = ZYNQ_GPIO_BANK1_PIN_MAX(MP),
> +	.bank_min[2] = ZYNQ_GPIO_BANK2_PIN_MIN(MP),
> +	.bank_max[2] = ZYNQ_GPIO_BANK2_PIN_MAX(MP),
> +	.bank_min[3] = ZYNQ_GPIO_BANK3_PIN_MIN(MP),
> +	.bank_max[3] = ZYNQ_GPIO_BANK3_PIN_MAX(MP),
> +	.bank_min[4] = ZYNQ_GPIO_BANK4_PIN_MIN(MP),
> +	.bank_max[4] = ZYNQ_GPIO_BANK4_PIN_MAX(MP),
> +	.bank_min[5] = ZYNQ_GPIO_BANK5_PIN_MIN(MP),
> +	.bank_max[5] = ZYNQ_GPIO_BANK5_PIN_MAX(MP),
> +};
> +
> +static const struct zynq_platform_data zynq_gpio_def = {
> +	.quirks = ZYNQ_GPIO_QUIRK_IS_ZYNQ | GPIO_QUIRK_DATA_RO_BUG,
> +	.ngpio = ZYNQ_GPIO_NR_GPIOS,
> +	.max_bank = ZYNQ_GPIO_MAX_BANK,
> +	.bank_min[0] = ZYNQ_GPIO_BANK0_PIN_MIN(),
> +	.bank_max[0] = ZYNQ_GPIO_BANK0_PIN_MAX(),
> +	.bank_min[1] = ZYNQ_GPIO_BANK1_PIN_MIN(),
> +	.bank_max[1] = ZYNQ_GPIO_BANK1_PIN_MAX(),
> +	.bank_min[2] = ZYNQ_GPIO_BANK2_PIN_MIN(),
> +	.bank_max[2] = ZYNQ_GPIO_BANK2_PIN_MAX(),
> +	.bank_min[3] = ZYNQ_GPIO_BANK3_PIN_MIN(),
> +	.bank_max[3] = ZYNQ_GPIO_BANK3_PIN_MAX(),
> +};
> +
> +static const struct of_device_id zynq_gpio_of_match[] = {
> +	{ .compatible = "xlnx,zynq-gpio-1.0", .data = &zynq_gpio_def },
> +	{ .compatible = "xlnx,zynqmp-gpio-1.0", .data = &zynqmp_gpio_def },
> +	{ /* end of table */ }
> +};
> +
> +static struct driver_d zynqmp_gpio_driver = {
> +	.name = "zynqmp-gpio",
> +	.probe = zynqmp_gpio_probe,
> +	.of_compatible = DRV_OF_COMPAT(zynq_gpio_of_match),

DRV_OF_COMPAT is not needed for OF-only driver.

> +};
> +
> +static int gpio_zynqmp_init(void)
> +{
> +	platform_driver_register(&zynqmp_gpio_driver);
> +	return 0;
> +}
> +postcore_initcall(gpio_zynqmp_init);

postcore_platform_driver can be used here.

> 


Cheers,
Ahmad


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

