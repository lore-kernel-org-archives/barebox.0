Delivery-date: Wed, 08 Feb 2023 10:22:02 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pPgeS-000PvH-6I
	for lore@lore.pengutronix.de; Wed, 08 Feb 2023 10:22:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pPgeO-0008IT-1c
	for lore@pengutronix.de; Wed, 08 Feb 2023 10:22:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=i8ET6mNc6B9yvIu/V3Hl0NG8I3l/NyoY/gqIFUUP9VM=; b=G6/NGsR8XCN8IZIolZjgiZbfK8
	ctEzbilWSRjkuWxGi81FryEy29t9aAC8E8LldCRc/9f3M8BkA0H/cGlKuyUJAa2tGyYZexD3X+PgA
	QoNO5zwYC9YFEwfug7tjT5+7+BSmIhc5vbIqFcpkq5cx0Uq5SmpRRH6vQqU7u/nS2EmI5Qr2NkiO2
	8YzPpC2DnddD7bgc3icISqCQCC7e96HUXaFJwcLkyjCKShmhvMwat1x8FeJzrYkvXM1ARjif6aU9b
	uHUl/B6Ub1gSgXgOI1OWLL7K0kBpiGdK4ixF+5oMxipsG5B+AIqRD3KaPr70oxjJnceM+5xs2GuyL
	0qRqWSmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPgcu-00Emlu-2a; Wed, 08 Feb 2023 09:20:29 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPgax-00Em25-5h
	for barebox@lists.infradead.org; Wed, 08 Feb 2023 09:18:30 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1pPgav-0007c8-VA; Wed, 08 Feb 2023 10:18:25 +0100
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1pPgav-0007hU-Nc; Wed, 08 Feb 2023 10:18:25 +0100
Date: Wed, 8 Feb 2023 10:18:25 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Daniel =?utf-8?B?QnLDoXQ=?= <danek.brat@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20230208091825.twj76lekfnctrour@pengutronix.de>
References: <20230207010525.2693-1-danek.brat@gmail.com>
 <20230207010525.2693-4-danek.brat@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230207010525.2693-4-danek.brat@gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230208_011827_578819_527AB149 
X-CRM114-Status: GOOD (  34.72  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/5] ARM: rpi: rework rpi board init code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Daniel,

thanks for your patch.

On 23-02-07, Daniel Brát wrote:
> Rework of init for various rpi board variants. Primarily, ethernet and
> usb init have been generalized to better cover different variations and
> handling of board leds changed from adding and registering 'gpio_led'
> structures to fixing them in the device tree. This change also required
> moving the board init code from 'late_platform_driver' to
> 'coredevice_platform_driver' which in turn ment calling 'rpi_env_init'
> from separate late_initcall.

Is it possible to split that patch into smaller ones?

Regards,
  Marco


> 
> Signed-off-by: Daniel Brát <danek.brat@gmail.com>
> ---
>  arch/arm/boards/raspberry-pi/rpi-common.c | 414 ++++++++++------------
>  arch/arm/dts/bcm2711-rpi-4.dts            |   5 +
>  arch/arm/dts/bcm2835-rpi.dts              |   1 +
>  arch/arm/dts/bcm2836-rpi-2.dts            |   4 +
>  arch/arm/dts/bcm2837-rpi-3.dts            |   5 +
>  5 files changed, 199 insertions(+), 230 deletions(-)
> 
> diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c b/arch/arm/boards/raspberry-pi/rpi-common.c
> index a8f180ae92..9bf6e0334d 100644
> --- a/arch/arm/boards/raspberry-pi/rpi-common.c
> +++ b/arch/arm/boards/raspberry-pi/rpi-common.c
> @@ -24,6 +24,7 @@
>  #include <globalvar.h>
>  #include <asm/system_info.h>
>  #include <reset_source.h>
> +#include <dt-bindings/gpio/gpio.h>
>  
>  #include <mach/core.h>
>  #include <mach/mbox.h>
> @@ -45,19 +46,21 @@ static const char * const boot_mode_names[] = {
>  	[0x7] = "http",
>  };
>  
> -struct rpi_priv;
>  struct rpi_machine_data {
> -	int (*init)(struct rpi_priv *priv);
>  	u8 hw_id;
>  #define RPI_OLD_SCHEMA			BIT(0)
> +#define RPI_SET_ETHADDR			BIT(1)
> +#define RPI_SET_USB_OTG			BIT(2)
> +#define RPI_LED_PWR_INV			BIT(3)
> +#define RPI_LED_PWR_EXP			BIT(4)
> +#define RPI_LED_ACT_INV			BIT(5)
> +#define RPI_LED_ACT_EXP			BIT(6)
> +#define RPI_LED_ANY_EXP			(RPI_LED_PWR_EXP | RPI_LED_ACT_EXP)
> +#define RPI_LED_PWR_EXP_INV		(RPI_LED_PWR_EXP | RPI_LED_PWR_INV)
> +#define RPI_LED_ACT_EXP_INV		(RPI_LED_ACT_EXP | RPI_LED_ACT_INV)
>  	u8 flags;
> -};
> -
> -struct rpi_priv {
> -	struct device *dev;
> -	const struct rpi_machine_data *dcfg;
> -	unsigned int hw_id;
> -	const char *name;
> +	int pwr_led_gpio;
> +	int act_led_gpio;
>  };
>  
>  static void rpi_set_serial_number(void)
> @@ -83,91 +86,74 @@ static void rpi_set_ethaddr(void)
>  	eth_register_ethaddr(0, mac);
>  }
>  
> -static void rpi_set_usbotg(const char *alias)
> +static void rpi_set_usbotg(void)
>  {
>  	struct device_node *usb;
>  
> -	usb = of_find_node_by_alias(NULL, alias);
> +	usb = of_find_node_by_alias(NULL, "usb0");
>  	if (usb)
>  		of_property_write_string(usb, "dr_mode", "otg");
>  }
>  
> -static struct gpio_led rpi_leds[] = {
> -	{
> -		.gpio	= -EINVAL,
> -		.led	= {
> -			.name = "ACT",
> -		},
> -	}, {
> -		.gpio	= -EINVAL,
> -		.led	= {
> -			.name = "PWR",
> -		},
> -	},
> -};
> -
> -static void rpi_add_led(void)
> +static int of_rpi_led_set_gpio(struct device_node *led, u32 pin,
> +				bool exp, bool inv)
>  {
> -	int i;
> -	struct gpio_led *l;
> -
> -	for (i = 0; i < ARRAY_SIZE(rpi_leds); i++) {
> -		l = &rpi_leds[i];
> -
> -		if (gpio_is_valid(l->gpio))
> -			led_gpio_register(l);
> -	}
> -
> -	l = &rpi_leds[0];
> -	if (gpio_is_valid(l->gpio))
> -		led_set_trigger(LED_TRIGGER_HEARTBEAT, &l->led);
> -}
> +	u32 gpios_prop[3];
> +	struct device_node *gpio;
>  
> -static int rpi_b_init(struct rpi_priv *priv)
> -{
> -	rpi_leds[0].gpio = 16;
> -	rpi_leds[0].active_low = 1;
> -	rpi_set_ethaddr();
> -
> -	return 0;
> -}
> -
> -static int rpi_b_plus_init(struct rpi_priv *priv)
> -{
> -	rpi_leds[0].gpio = 47;
> -	rpi_leds[1].gpio = 35;
> -	rpi_set_ethaddr();
> +	if (!led)
> +		return -ENODEV;
>  
> -	return 0;
> -}
> +	gpio = of_find_node_by_alias(NULL, exp ? "expgpio0" : "gpio0");
> +	if (!gpio)
> +		return -ENODEV;
>  
> -static int rpi_0_init(struct rpi_priv *priv)
> -{
> -	rpi_leds[0].gpio = 47;
> -	rpi_set_usbotg("usb0");
> +	gpios_prop[0] = gpio->phandle;
> +	gpios_prop[1] = pin;
> +	gpios_prop[2] = inv ? GPIO_ACTIVE_LOW : GPIO_ACTIVE_HIGH;
>  
> -	return 0;
> +	return of_property_write_u32_array(led, "gpios", gpios_prop, 3);
>  }
>  
> -static int rpi_0_w_init(struct rpi_priv *priv)
> +static void rpi_add_leds(const struct rpi_machine_data *dcfg)
>  {
> -	struct device_node *np;
> -	int ret;
> +	int flags, led_pwr, led_act, led_cnt;
> +	struct device_node *leds, *l;
>  
> -	rpi_0_init(priv);
> +	if (!IS_ENABLED(CONFIG_OFDEVICE) || !IS_ENABLED(CONFIG_LED_GPIO_OF))
> +		return;
>  
> -	np = of_find_node_by_path("/chosen");
> -	if (!np)
> -		return -ENODEV;
> +	leds = of_find_node_by_path("/leds");
> +	if (!leds)
> +		return;
>  
> -	if (!of_device_enable_and_register_by_alias("serial1"))
> -		return -ENODEV;
> +	led_cnt = 0;
> +	flags = dcfg->flags;
> +	led_pwr = dcfg->pwr_led_gpio;
> +	led_act = dcfg->act_led_gpio;
> +
> +	l = of_get_child_by_name(leds, "led-pwr");
> +	if (l) {
> +		if (led_pwr >= 0 && !of_rpi_led_set_gpio(l, led_pwr,
> +						flags & RPI_LED_PWR_EXP,
> +						flags & RPI_LED_PWR_INV))
> +			led_cnt++;
> +		else
> +			of_delete_node(l);
> +	}
>  
> -	ret = of_property_write_string(np, "stdout-path", "serial1:115200n8");
> -	if (ret)
> -		return ret;
> +	l = of_get_child_by_name(leds, "led-act");
> +	if (l) {
> +		if (led_act >= 0 && !of_rpi_led_set_gpio(l, led_act,
> +						flags & RPI_LED_ACT_EXP,
> +						flags & RPI_LED_ACT_INV))
> +			led_cnt++;
> +		else
> +			of_delete_node(l);
> +	}
>  
> -	return of_device_disable_by_alias("serial0");
> +	if (led_cnt)
> +		of_device_enable_and_register(leds);
>  }
>  
>  static int rpi_mem_init(void)
> @@ -213,6 +199,7 @@ static int rpi_env_init(void)
>  
>  	return 0;
>  }
> +late_initcall(rpi_env_init);
>  
>  /* Some string properties in fdt passed to us from vc may be
>   * malformed by not being null terminated, so just create and
> @@ -390,15 +377,22 @@ static void rpi_set_kernel_name(void) {
>  	}
>  }
>  
> -static const struct rpi_machine_data *rpi_get_dcfg(struct rpi_priv *priv)
> +static void rpi_set_hostname(struct device_d *dev)
>  {
> -	const struct rpi_machine_data *dcfg;
> +	const char *name, *ptr;
> +	char *hostname;
>  
> -	dcfg = of_device_get_match_data(priv->dev);
> -	if (!dcfg) {
> -		dev_err(priv->dev, "Unknown board. Not applying fixups\n");
> -		return NULL;
> -	}
> +	name = of_device_get_match_compatible(dev);
> +	ptr = strchr(name, ',');
> +	hostname = basprintf("rpi-%s", ptr ? ptr + 1 : name);
> +	barebox_set_hostname(hostname);
> +	free(hostname);
> +}
> +
> +static const struct rpi_machine_data *rpi_get_dcfg(const struct rpi_machine_data *dcfg)
> +{
> +	int ret;
> +	u32 board_rev;
>  
>  	/* Comments from u-boot:
>  	 * For details of old-vs-new scheme, see:
> @@ -412,22 +406,26 @@ static const struct rpi_machine_data *rpi_get_dcfg(struct rpi_priv *priv)
>  	 * http://www.raspberrypi.org/forums/viewtopic.php?f=31&t=20594
>  	 */
>  
> +	ret = rpi_get_board_rev();
> +	if (ret < 0)
> +		return ERR_PTR(ret);
> +	board_rev = ret;
> +
>  	for (; dcfg->hw_id != U8_MAX; dcfg++) {
> -		if (priv->hw_id & 0x800000) {
> -			if (dcfg->hw_id != ((priv->hw_id >> 4) & 0xff))
> +		if (board_rev & BIT(23)) {
> +			if (dcfg->hw_id != ((board_rev >> 4) & 0xff))
>  				continue;
>  		} else {
>  			if (!(dcfg->flags & RPI_OLD_SCHEMA))
>  				continue;
> -			if (dcfg->hw_id != (priv->hw_id & 0xff))
> +			if (dcfg->hw_id != (board_rev & 0xff))
>  				continue;
>  		}
>  
>  		return dcfg;
>  	}
>  
> -	dev_err(priv->dev, "dcfg 0x%x for board_id doesn't match DT compatible\n",
> -		priv->hw_id);
> +	pr_err("dcfg 0x%x for board_id doesn't match DT compatible\n", board_rev);
>  	return ERR_PTR(-ENODEV);
>  }
>  
> @@ -435,42 +433,32 @@ static int rpi_devices_probe(struct device *dev)
>  {
>  	const struct rpi_machine_data *dcfg;
>  	struct regulator *reg;
> -	struct rpi_priv *priv;
> -	const char *name, *ptr;
> -	char *hostname;
> -	int ret;
>  
> -	priv = xzalloc(sizeof(*priv));
> -	priv->dev = dev;
> +	dcfg = of_device_get_match_data(dev);
> +	if (!dcfg)
> +		dev_err(dev, "Unknown board, not applying fixups\n");
> +	else {
> +		dcfg = rpi_get_dcfg(dcfg);
> +		if (IS_ERR(dcfg))
> +			return PTR_ERR(dcfg);
>  
> -	ret = rpi_get_board_rev();
> -	if (ret < 0)
> -		goto free_priv;
> +		rpi_add_leds(dcfg);
>  
> -	priv->hw_id = ret;
> +		if (dcfg->flags & RPI_SET_ETHADDR)
> +			rpi_set_ethaddr();
>  
> -	dcfg = rpi_get_dcfg(priv);
> -	if (IS_ERR(dcfg))
> -		goto free_priv;
> +		if (dcfg->flags & RPI_SET_USB_OTG)
> +			rpi_set_usbotg();
> +	}
>  
> -	rpi_set_serial_number();
>  
> -	/* construct short recognizable host name */
> -	name = of_device_get_match_compatible(priv->dev);
> -	ptr = strchr(name, ',');
> -	hostname = basprintf("rpi-%s", ptr ? ptr + 1 : name);
> -	barebox_set_hostname(hostname);
> -	free(hostname);
> +	rpi_set_serial_number();
> +	rpi_set_hostname(dev);
> +	rpi_set_kernel_name();
>  
> -	rpi_add_led();
>  	bcm2835_register_fb();
>  	armlinux_set_architecture(MACH_TYPE_BCM2708);
> -	rpi_env_init();
>  	rpi_vc_fdt();
> -	rpi_set_kernel_name();
> -
> -	if (dcfg && dcfg->init)
> -		dcfg->init(priv);
>  
>  	reg = regulator_get_name("bcm2835_usb");
>  	if (IS_ERR(reg))
> @@ -479,134 +467,95 @@ static int rpi_devices_probe(struct device *dev)
>  	regulator_enable(reg);
>  
>  	return 0;
> -
> -free_priv:
> -	kfree(priv);
> -	return ret;
>  }
>  
> +#define RPI_ENTRY(_id, _pwr, _act, _flags)	\
> +	{					\
> +		.hw_id = _id,			\
> +		.pwr_led_gpio = _pwr,		\
> +		.act_led_gpio = _act,		\
> +		.flags = _flags,		\
> +	}
> +
> +#define RPI_ENTRY_OLD(_id, _pwr, _act, _flags)	\
> +	RPI_ENTRY(_id, _pwr, _act, (_flags) | RPI_OLD_SCHEMA)
> +
> +#if IS_ENABLED(CONFIG_MACH_RPI)
>  static const struct rpi_machine_data rpi_1_ids[] = {
> -	{
> -		.hw_id = BCM2835_BOARD_REV_A_7,
> -		.flags = RPI_OLD_SCHEMA,
> -	}, {
> -		.hw_id = BCM2835_BOARD_REV_A_8,
> -		.flags = RPI_OLD_SCHEMA,
> -	}, {
> -		.hw_id = BCM2835_BOARD_REV_A_9,
> -		.flags = RPI_OLD_SCHEMA,
> -	}, {
> -		.hw_id = BCM2835_BOARD_REV_A,
> -	}, {
> -		.hw_id = BCM2835_BOARD_REV_A_PLUS_12,
> -		.flags = RPI_OLD_SCHEMA,
> -	}, {
> -		.hw_id = BCM2835_BOARD_REV_A_PLUS_15,
> -		.flags = RPI_OLD_SCHEMA,
> -	}, {
> -		.hw_id = BCM2835_BOARD_REV_A_PLUS,
> -	}, {
> -		.hw_id = BCM2835_BOARD_REV_B_I2C1_4,
> -		.flags = RPI_OLD_SCHEMA,
> -	}, {
> -		.hw_id = BCM2835_BOARD_REV_B_I2C1_5,
> -		.flags = RPI_OLD_SCHEMA,
> -	}, {
> -		.hw_id = BCM2835_BOARD_REV_B_I2C1_6,
> -		.flags = RPI_OLD_SCHEMA,
> -	}, {
> -		.hw_id = BCM2835_BOARD_REV_B,
> -	}, {
> -		.hw_id = BCM2835_BOARD_REV_B_I2C0_2,
> -		.flags = RPI_OLD_SCHEMA,
> -	}, {
> -		.hw_id = BCM2835_BOARD_REV_B_I2C0_3,
> -		.flags = RPI_OLD_SCHEMA,
> -	}, {
> -		.hw_id = BCM2835_BOARD_REV_B_REV2_d,
> -		.flags = RPI_OLD_SCHEMA,
> -		.init = rpi_b_init,
> -	}, {
> -		.hw_id = BCM2835_BOARD_REV_B_REV2_e,
> -		.flags = RPI_OLD_SCHEMA,
> -		.init = rpi_b_init,
> -	}, {
> -		.hw_id = BCM2835_BOARD_REV_B_REV2_f,
> -		.flags = RPI_OLD_SCHEMA,
> -		.init = rpi_b_init,
> -	}, {
> -		.hw_id = BCM2835_BOARD_REV_B_PLUS_10,
> -		.flags = RPI_OLD_SCHEMA,
> -		.init = rpi_b_plus_init,
> -	}, {
> -		.hw_id = BCM2835_BOARD_REV_B_PLUS_13,
> -		.flags = RPI_OLD_SCHEMA,
> -		.init = rpi_b_plus_init,
> -	}, {
> -		.hw_id = BCM2835_BOARD_REV_B_PLUS,
> -		.init = rpi_b_plus_init,
> -	}, {
> -		.hw_id = BCM2835_BOARD_REV_CM_11,
> -		.flags = RPI_OLD_SCHEMA,
> -	}, {
> -		.hw_id = BCM2835_BOARD_REV_CM_14,
> -		.flags = RPI_OLD_SCHEMA,
> -	}, {
> -		.hw_id = BCM2835_BOARD_REV_CM1,
> -	}, {
> -		.hw_id = BCM2835_BOARD_REV_ZERO,
> -		.init = rpi_0_init,
> -	}, {
> -		.hw_id = BCM2835_BOARD_REV_ZERO_W,
> -		.init = rpi_0_w_init,
> -	}, {
> -		.hw_id = U8_MAX
> -	},
> +	/*
> +	 * New style of revision codes schemas
> +	 * Let's keep those first since they are probably more common
> +	 */
> +	RPI_ENTRY(BCM2835_BOARD_REV_A,      -1, 16, RPI_LED_ACT_INV),
> +	RPI_ENTRY(BCM2835_BOARD_REV_A_PLUS, 35, 47, RPI_LED_ACT_INV),
> +	RPI_ENTRY(BCM2835_BOARD_REV_B,      -1, 16, RPI_LED_ACT_INV | RPI_SET_ETHADDR),
> +	RPI_ENTRY(BCM2835_BOARD_REV_B_PLUS, 35, 47, RPI_SET_ETHADDR),
> +	RPI_ENTRY(BCM2835_BOARD_REV_CM1,    -1, 47, RPI_LED_ACT_INV),
> +	RPI_ENTRY(BCM2835_BOARD_REV_ZERO,   -1, 47, RPI_SET_USB_OTG),
> +	RPI_ENTRY(BCM2835_BOARD_REV_ZERO_W, -1, 47, RPI_SET_USB_OTG | RPI_LED_ACT_INV),
> +	/*
> +	 * Old style of revision codes
> +	 */
> +	/* Raspberry Pi A */
> +	RPI_ENTRY_OLD(BCM2835_BOARD_REV_A_7, -1, 16, RPI_LED_ACT_INV),
> +	RPI_ENTRY_OLD(BCM2835_BOARD_REV_A_8, -1, 16, RPI_LED_ACT_INV),
> +	RPI_ENTRY_OLD(BCM2835_BOARD_REV_A_9, -1, 16, RPI_LED_ACT_INV),
> +	/* Raspberry Pi A+ */
> +	RPI_ENTRY_OLD(BCM2835_BOARD_REV_A_PLUS_12, 35, 47, RPI_LED_ACT_INV),
> +	RPI_ENTRY_OLD(BCM2835_BOARD_REV_A_PLUS_15, 35, 47, RPI_LED_ACT_INV),
> +	/* Raspberry Pi B */
> +	RPI_ENTRY_OLD(BCM2835_BOARD_REV_B_I2C1_4, -1, 16, RPI_LED_ACT_INV | RPI_SET_ETHADDR),
> +	RPI_ENTRY_OLD(BCM2835_BOARD_REV_B_I2C1_5, -1, 16, RPI_LED_ACT_INV | RPI_SET_ETHADDR),
> +	RPI_ENTRY_OLD(BCM2835_BOARD_REV_B_I2C1_6, -1, 16, RPI_LED_ACT_INV | RPI_SET_ETHADDR),
> +	RPI_ENTRY_OLD(BCM2835_BOARD_REV_B_I2C0_2, -1, 16, RPI_LED_ACT_INV | RPI_SET_ETHADDR),
> +	RPI_ENTRY_OLD(BCM2835_BOARD_REV_B_I2C0_3, -1, 16, RPI_LED_ACT_INV | RPI_SET_ETHADDR),
> +	RPI_ENTRY_OLD(BCM2835_BOARD_REV_B_REV2_d, -1, 16, RPI_LED_ACT_INV | RPI_SET_ETHADDR),
> +	RPI_ENTRY_OLD(BCM2835_BOARD_REV_B_REV2_e, -1, 16, RPI_LED_ACT_INV | RPI_SET_ETHADDR),
> +	RPI_ENTRY_OLD(BCM2835_BOARD_REV_B_REV2_f, -1, 16, RPI_LED_ACT_INV | RPI_SET_ETHADDR),
> +	/* Raspberry Pi B+ */
> +	RPI_ENTRY_OLD(BCM2835_BOARD_REV_B_PLUS_10, 35, 47, RPI_SET_ETHADDR),
> +	RPI_ENTRY_OLD(BCM2835_BOARD_REV_B_PLUS_13, 35, 47, RPI_SET_ETHADDR),
> +	/* Raspberry Pi CM1 */
> +	RPI_ENTRY_OLD(BCM2835_BOARD_REV_CM_11, -1, 47, RPI_LED_ACT_INV),
> +	RPI_ENTRY_OLD(BCM2835_BOARD_REV_CM_14, -1, 47, RPI_LED_ACT_INV),
> +	/* sentinel */
> +	{ .hw_id = U8_MAX }
>  };
> +#endif
>  
> +#if IS_ENABLED(CONFIG_MACH_RPI2)
>  static const struct rpi_machine_data rpi_2_ids[] = {
> -	{
> -		.hw_id = BCM2836_BOARD_REV_2_B,
> -		.init = rpi_b_plus_init,
> -	}, {
> -		.hw_id = U8_MAX
> -	},
> +	RPI_ENTRY(BCM2836_BOARD_REV_2_B, 35, 47, RPI_SET_ETHADDR),
> +	/* sentinel */
> +	{ .hw_id = U8_MAX }
>  };
> +#endif
>  
> +#if IS_ENABLED(CONFIG_MACH_RPI3) | IS_ENABLED(CONFIG_MACH_RPI_CM3)
>  static const struct rpi_machine_data rpi_3_ids[] = {
> -	{
> -		.hw_id = BCM2837B0_BOARD_REV_3A_PLUS,
> -		.init = rpi_b_plus_init,
> -	}, {
> -		.hw_id = BCM2837_BOARD_REV_3_B,
> -		.init = rpi_b_init,
> -	}, {
> -		.hw_id = BCM2837B0_BOARD_REV_3B_PLUS,
> -		.init = rpi_b_plus_init,
> -	}, {
> -		.hw_id = BCM2837_BOARD_REV_CM3,
> -	}, {
> -		.hw_id = BCM2837B0_BOARD_REV_CM3_PLUS,
> -	}, {
> -		.hw_id = BCM2837B0_BOARD_REV_ZERO_2,
> -	}, {
> -		.hw_id = U8_MAX
> -	},
> +	RPI_ENTRY(BCM2837B0_BOARD_REV_3A_PLUS,   2, 29, RPI_LED_PWR_EXP_INV),
> +	RPI_ENTRY(BCM2837_BOARD_REV_3_B,        -1,  2, RPI_SET_ETHADDR | RPI_LED_ACT_EXP),
> +	RPI_ENTRY(BCM2837B0_BOARD_REV_3B_PLUS,   2, 29, RPI_SET_ETHADDR | RPI_LED_PWR_EXP_INV),
> +	RPI_ENTRY(BCM2837_BOARD_REV_CM3,        -1, -1, 0),
> +	RPI_ENTRY(BCM2837B0_BOARD_REV_CM3_PLUS, -1, -1, 0),
> +	RPI_ENTRY(BCM2837B0_BOARD_REV_ZERO_2,   -1, 29, RPI_LED_ACT_INV | RPI_SET_USB_OTG),
> +	/* sentinel */
> +	{ .hw_id = U8_MAX }
>  };
> +#endif
>  
> +#if IS_ENABLED(CONFIG_MACH_RPI4)
>  static const struct rpi_machine_data rpi_4_ids[] = {
> -	{
> -		.hw_id = BCM2711_BOARD_REV_4_B,
> -	}, {
> -		.hw_id = BCM2711_BOARD_REV_400,
> -	}, {
> -		.hw_id = BCM2711_BOARD_REV_CM4,
> -	}, {
> -		.hw_id = U8_MAX
> -	},
> +	RPI_ENTRY(BCM2711_BOARD_REV_4_B,  2, 42, RPI_LED_PWR_EXP_INV | RPI_SET_ETHADDR),
> +	RPI_ENTRY(BCM2711_BOARD_REV_400, 42, -1, RPI_SET_ETHADDR),
> +	RPI_ENTRY(BCM2711_BOARD_REV_CM4,  2, 42, RPI_LED_PWR_EXP_INV | RPI_SET_ETHADDR),
> +	/* sentinel */
> +	{ .hw_id = U8_MAX }
>  };
> +#endif
>  
>  static const struct of_device_id rpi_of_match[] = {
> +#if IS_ENABLED(CONFIG_MACH_RPI)
>  	/* BCM2835 based Boards */
>  	{ .compatible = "raspberrypi,model-a", .data = rpi_1_ids },
>  	{ .compatible = "raspberrypi,model-a-plus", .data = rpi_1_ids },
> @@ -618,23 +567,28 @@ static const struct of_device_id rpi_of_match[] = {
>  	{ .compatible = "raspberrypi,compute-module", .data = rpi_1_ids },
>  	{ .compatible = "raspberrypi,model-zero", .data = rpi_1_ids },
>  	{ .compatible = "raspberrypi,model-zero-w", .data = rpi_1_ids },
> -
> +#endif
> +#if IS_ENABLED(CONFIG_MACH_RPI2)
>  	/* BCM2836 based Boards */
>  	{ .compatible = "raspberrypi,2-model-b", .data = rpi_2_ids },
> -
> +#endif
> +#if IS_ENABLED(CONFIG_MACH_RPI3)
>  	/* BCM2837 based Boards */
>  	{ .compatible = "raspberrypi,3-model-a-plus", .data = rpi_3_ids },
>  	{ .compatible = "raspberrypi,3-model-b", .data = rpi_3_ids },
>  	{ .compatible = "raspberrypi,3-model-b-plus", .data = rpi_3_ids },
>  	{ .compatible = "raspberrypi,model-zero-2-w", .data = rpi_3_ids },
> +#endif
> +#if IS_ENABLED(CONFIG_MACH_RPI_CM3)
>  	{ .compatible = "raspberrypi,3-compute-module", .data = rpi_3_ids },
>  	{ .compatible = "raspberrypi,3-compute-module-lite", .data = rpi_3_ids },
> -
> +#endif
> +#if IS_ENABLED(CONFIG_MACH_RPI4)
>  	/* BCM2711 based Boards */
>  	{ .compatible = "raspberrypi,4-model-b", .data = rpi_4_ids },
>  	{ .compatible = "raspberrypi,4-compute-module", .data = rpi_4_ids },
>  	{ .compatible = "raspberrypi,400", .data = rpi_4_ids },
> -
> +#endif
>  	{ /* sentinel */ },
>  };
>  BAREBOX_DEEP_PROBE_ENABLE(rpi_of_match);
> @@ -644,4 +598,4 @@ static struct driver rpi_board_driver = {
>  	.probe = rpi_devices_probe,
>  	.of_compatible = DRV_OF_COMPAT(rpi_of_match),
>  };
> -late_platform_driver(rpi_board_driver);
> +coredevice_platform_driver(rpi_board_driver);
> diff --git a/arch/arm/dts/bcm2711-rpi-4.dts b/arch/arm/dts/bcm2711-rpi-4.dts
> index 3c0caa73f8..e61514b236 100644
> --- a/arch/arm/dts/bcm2711-rpi-4.dts
> +++ b/arch/arm/dts/bcm2711-rpi-4.dts
> @@ -1,5 +1,10 @@
>  #include <arm64/broadcom/bcm2711-rpi-4-b.dts>
>  
> +&{/aliases} {
> +	gpio0 = &gpio;
> +	expgpio0 = &expgpio;
> +};
> +
>  &{/memory@0} {
>  	reg = <0x0 0x0 0x0>;
>  };
> diff --git a/arch/arm/dts/bcm2835-rpi.dts b/arch/arm/dts/bcm2835-rpi.dts
> index 8d352a457d..f403b5485c 100644
> --- a/arch/arm/dts/bcm2835-rpi.dts
> +++ b/arch/arm/dts/bcm2835-rpi.dts
> @@ -2,6 +2,7 @@
>  
>  &{/aliases} {
>  	usb0 = &usb;
> +	gpio0 = &gpio;
>  };
>  
>  &{/memory@0} {
> diff --git a/arch/arm/dts/bcm2836-rpi-2.dts b/arch/arm/dts/bcm2836-rpi-2.dts
> index c9106515ee..f211445e3b 100644
> --- a/arch/arm/dts/bcm2836-rpi-2.dts
> +++ b/arch/arm/dts/bcm2836-rpi-2.dts
> @@ -1,5 +1,9 @@
>  #include <arm/bcm2836-rpi-2-b.dts>
>  
> +&{/aliases} {
> +	gpio0 = &gpio;
> +};
> +
>  &{/memory@0} {
>  	reg = <0x0 0x0>;
>  };
> diff --git a/arch/arm/dts/bcm2837-rpi-3.dts b/arch/arm/dts/bcm2837-rpi-3.dts
> index 38d673aec4..588b77cd78 100644
> --- a/arch/arm/dts/bcm2837-rpi-3.dts
> +++ b/arch/arm/dts/bcm2837-rpi-3.dts
> @@ -1,5 +1,10 @@
>  #include <arm64/broadcom/bcm2837-rpi-3-b.dts>
>  
> +&{/aliases} {
> +	gpio0 = &gpio;
> +	expgpio0 = &expgpio;
> +};
> +
>  &{/memory@0} {
>  	reg = <0x0 0x0>;
>  };
> -- 
> 2.34.1
> 
> 
> 


