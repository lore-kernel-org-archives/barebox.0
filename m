Delivery-date: Tue, 21 Mar 2023 10:00:20 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1peXqt-008yHd-Va
	for lore@lore.pengutronix.de; Tue, 21 Mar 2023 10:00:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1peXqt-000669-BX
	for lore@pengutronix.de; Tue, 21 Mar 2023 10:00:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rLerfKT1AYaPoq7nVd9Oq7WqJkYCEzZLKnBkS+sGZO4=; b=OR5W2Fqf/BLct3xeX9Nhmkrk4W
	H42iItjBdhN5m0tcJp7by/XesBuf7TYpiHXkzjtcTj368qmn2qjG+lGpCdI3vQRYaU4duK/Aa9NXt
	KrhgJEar/Em+YghU97j0cjVPdmeW8i3TRJDI69SjwWkpb/FlbV3XNAJ22tEWzVHlCW2Wofk6oaqHZ
	k/KNdf8PMLIw8GBiR7ENoJuKMbPe3mXXYTZxLi5358cfcMLR4Tg9qxW4CY02KVpmoeCFT1FFSMUQ5
	Hv2jhSDgL9PZWUsxDcwQzQnYx442nJ6eiEI+qHFPKNwM2Wi4osIGUHNRT7aLRY26unoNElMB/aRfv
	MJLClfrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1peXpd-00BoUk-21;
	Tue, 21 Mar 2023 08:59:01 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1peXpY-00BoTq-12
	for barebox@lists.infradead.org;
	Tue, 21 Mar 2023 08:58:59 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1peXpR-0005pr-UR; Tue, 21 Mar 2023 09:58:49 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1peXpQ-0006dc-ON; Tue, 21 Mar 2023 09:58:48 +0100
Date: Tue, 21 Mar 2023 09:58:48 +0100
To: Wolfram Sang <wsa@kernel.org>
Cc: Sam Ravnborg <sam@ravnborg.org>, barebox@lists.infradead.org
Message-ID: <20230321085848.GI7446@pengutronix.de>
References: <20230319154909.24047-1-wsa@kernel.org>
 <ZBdZxskg+JPzUY0t@ravnborg.org>
 <ZBd+Z+qn9rjuvp6S@sai.fritz.box>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZBd+Z+qn9rjuvp6S@sai.fritz.box>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230321_015856_695940_6EC61075 
X-CRM114-Status: GOOD (  37.42  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/3] mtd: nand: atmel: legacy: fix boot on USB-A9G20
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Wolfram,

Nice to hear from you here ;)

On Sun, Mar 19, 2023 at 10:28:07PM +0100, Wolfram Sang wrote:
> Hi Sam,
> 
> > It is only a few weeks ago I argued that there was no users of the older
> > at91sam* boards, and then you prove me wrong here.
> 
> At your service ;)
> 
> > I will try to remember that you may be able to test should someone
> > decide to move the barebox support for qil_a9g20 to DT and add PBL
> > support in the process.
> 
> I am still new to at91 and barebox, but AFAICS the PBL support is only
> for MCI currently?

As of 4e410f3e68280 PBL is always used on AT91.

I have no idea how the SDRAM setup is done on the USB-A9G20. There seems
to be SDRAM setup code for the USB-A9263, but not for the USB-A9G20. Is
there some AT91Bootstrap required?

Anyway, what's really missing is DT support. I scribbled a patch to get
you started in case you are motivated. Basically it's: Compile in the
device tree, throw away all the device registration from the board code,
see where it gets you and fix the fallout ;)

Regards,
 Sascha


---------------------------8<---------------------------

>From 9aa1026fd4a713e958e83fa3cad6875b8ce14474 Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 21 Mar 2023 09:45:41 +0100
Subject: [PATCH] usb-a9g20-dt-wip

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/usb-a926x/init.c              | 416 +-----------------
 .../arm/boards/usb-a926x/usb_a9260_lowlevel.c |   8 +-
 .../arm/boards/usb-a926x/usb_a9263_lowlevel.c |   4 +-
 arch/arm/configs/usb_a9g20_defconfig          |  11 +-
 arch/arm/dts/Makefile                         |   3 +
 arch/arm/dts/usb_a9260.dts                    |   1 +
 arch/arm/dts/usb_a9263.dts                    |   1 +
 arch/arm/dts/usb_a9g20.dts                    |   1 +
 8 files changed, 20 insertions(+), 425 deletions(-)
 create mode 100644 arch/arm/dts/usb_a9260.dts
 create mode 100644 arch/arm/dts/usb_a9263.dts
 create mode 100644 arch/arm/dts/usb_a9g20.dts

diff --git a/arch/arm/boards/usb-a926x/init.c b/arch/arm/boards/usb-a926x/init.c
index f91a6b1454..7735edf8aa 100644
--- a/arch/arm/boards/usb-a926x/init.c
+++ b/arch/arm/boards/usb-a926x/init.c
@@ -5,422 +5,8 @@
 #include <net.h>
 #include <init.h>
 #include <environment.h>
-#include <asm/armlinux.h>
-#include <generated/mach-types.h>
-#include <fs.h>
-#include <fcntl.h>
-#include <io.h>
-#include <envfs.h>
-#include <mach/at91/hardware.h>
-#include <mach/at91/at91sam926x.h>
-#include <nand.h>
-#include <linux/sizes.h>
-#include <linux/mtd/nand.h>
-#include <linux/mtd/rawnand.h>
-#include <linux/clk.h>
-#include <mach/at91/board.h>
-#include <mach/at91/at91sam9_smc.h>
-#include <mach/at91/at91sam9_sdramc.h>
-#include <gpio.h>
-#include <led.h>
-#include <mach/at91/iomux.h>
-#include <mach/at91/at91_pmc.h>
-#include <mach/at91/at91_rstc.h>
-#include <gpio_keys.h>
-#include <readkey.h>
-#include <spi/spi.h>
 #include <input/input.h>
-
-static void usb_a9260_set_board_type(void)
-{
-	if (machine_is_usb_a9g20())
-		armlinux_set_architecture(MACH_TYPE_USB_A9G20);
-	else if (machine_is_usb_a9263())
-		armlinux_set_architecture(MACH_TYPE_USB_A9263);
-	else
-		armlinux_set_architecture(MACH_TYPE_USB_A9260);
-}
-
-#if defined(CONFIG_NAND_ATMEL)
-static struct atmel_nand_data nand_pdata = {
-	.ale		= 21,
-	.cle		= 22,
-	.det_pin	= -EINVAL,
-	.rdy_pin	= AT91_PIN_PC13,
-	.enable_pin	= AT91_PIN_PC14,
-	.ecc_mode	= NAND_ECC_SOFT,
-	.on_flash_bbt	= 1,
-};
-
-static struct sam9_smc_config usb_a9260_nand_smc_config = {
-	.ncs_read_setup		= 0,
-	.nrd_setup		= 1,
-	.ncs_write_setup	= 0,
-	.nwe_setup		= 1,
-
-	.ncs_read_pulse		= 3,
-	.nrd_pulse		= 3,
-	.ncs_write_pulse	= 3,
-	.nwe_pulse		= 3,
-
-	.read_cycle		= 5,
-	.write_cycle		= 5,
-
-	.mode			= AT91_SMC_READMODE | AT91_SMC_WRITEMODE | AT91_SMC_EXNWMODE_DISABLE | AT91_SMC_DBW_8,
-	.tdf_cycles		= 2,
-};
-
-static struct sam9_smc_config usb_a9g20_nand_smc_config = {
-	.ncs_read_setup		= 0,
-	.nrd_setup		= 2,
-	.ncs_write_setup	= 0,
-	.nwe_setup		= 2,
-
-	.ncs_read_pulse		= 4,
-	.nrd_pulse		= 4,
-	.ncs_write_pulse	= 4,
-	.nwe_pulse		= 4,
-
-	.read_cycle		= 7,
-	.write_cycle		= 7,
-
-	.mode			= AT91_SMC_READMODE | AT91_SMC_WRITEMODE | AT91_SMC_EXNWMODE_DISABLE | AT91_SMC_DBW_8,
-	.tdf_cycles		= 3,
-};
-
-static void usb_a9260_add_device_nand(void)
-{
-	/* configure chip-select 3 (NAND) */
-	if (machine_is_usb_a9g20())
-		sam9_smc_configure(0, 3, &usb_a9g20_nand_smc_config);
-	else
-		sam9_smc_configure(0, 3, &usb_a9260_nand_smc_config);
-
-	if (machine_is_usb_a9263()) {
-		nand_pdata.rdy_pin	= AT91_PIN_PA22;
-		nand_pdata.enable_pin	= AT91_PIN_PD15;
-	}
-
-	at91_add_device_nand(&nand_pdata);
-}
-#else
-static void usb_a9260_add_device_nand(void) {}
-#endif
-
-#if defined(CONFIG_DRIVER_NET_MACB)
-static struct macb_platform_data macb_pdata = {
-	.phy_interface	= PHY_INTERFACE_MODE_RMII,
-	.phy_addr	= -1,
-};
-
-static void usb_a9260_phy_reset(void)
-{
-	at91_set_gpio_input(AT91_PIN_PA14, 0);
-	at91_set_gpio_input(AT91_PIN_PA15, 0);
-	at91_set_gpio_input(AT91_PIN_PA17, 0);
-	at91_set_gpio_input(AT91_PIN_PA25, 0);
-	at91_set_gpio_input(AT91_PIN_PA26, 0);
-	at91_set_gpio_input(AT91_PIN_PA28, 0);
-
-	/* same address for the different supported SoCs */
-	at91sam_phy_reset(IOMEM(AT91SAM926X_BASE_RSTC));
-}
-
-static void usb_a9260_add_device_eth(void)
-{
-	usb_a9260_phy_reset();
-	at91_add_device_eth(0, &macb_pdata);
-}
-#else
-static void usb_a9260_add_device_eth(void) {}
-#endif
-
-#if defined(CONFIG_DRIVER_SPI_ATMEL)
-static const struct spi_board_info usb_a9263_spi_devices[] = {
-	{
-		.name		= "mtd_dataflash",
-		.chip_select	= 0,
-		.max_speed_hz	= 15 * 1000 * 1000,
-		.bus_num	= 0,
-	}
-};
-
-static const struct spi_board_info usb_a9g20_spi_devices[] = {
-	{
-		.name		= "spi_mci",
-		.chip_select	= 0,
-		.max_speed_hz	= 25 * 1000 * 1000,
-		.bus_num	= 1,
-	}
-};
-
-static unsigned spi0_standard_cs_a9263[] = { AT91_PIN_PA5 };
-static struct at91_spi_platform_data spi_a9263_pdata = {
-	.chipselect = spi0_standard_cs_a9263,
-	.num_chipselect = ARRAY_SIZE(spi0_standard_cs_a9263),
-};
-
-static unsigned spi0_standard_cs_a9g20[] = { AT91_PIN_PB3 };
-static struct at91_spi_platform_data spi_a9g20_pdata = {
-	.chipselect = spi0_standard_cs_a9g20,
-	.num_chipselect = ARRAY_SIZE(spi0_standard_cs_a9g20),
-};
-
-static void usb_a9260_add_spi(void)
-{
-	if (machine_is_usb_a9263()) {
-		spi_register_board_info(usb_a9263_spi_devices,
-				ARRAY_SIZE(usb_a9263_spi_devices));
-		at91_add_device_spi(0, &spi_a9263_pdata);
-	} else if (machine_is_usb_a9g20() && at91sam9260_is_low_power_sdram()) {
-		spi_register_board_info(usb_a9g20_spi_devices,
-				ARRAY_SIZE(usb_a9g20_spi_devices));
-		at91_add_device_spi(1, &spi_a9g20_pdata);
-	}
-}
-#else
-static void usb_a9260_add_spi(void) {}
-#endif
-
-#if defined(CONFIG_MCI_ATMEL)
-static struct atmel_mci_platform_data __initdata usb_a9260_mci_data = {
-	.bus_width	= 4,
-	.detect_pin     = -EINVAL,
-	.wp_pin		= -EINVAL,
-};
-
-static void usb_a9260_add_device_mci(void)
-{
-	at91_add_device_mci(0, &usb_a9260_mci_data);
-}
-#else
-static void usb_a9260_add_device_mci(void) {}
-#endif
-
-#if defined(CONFIG_USB_OHCI)
-static struct at91_usbh_data ek_usbh_data = {
-	.ports		= 2,
-	.vbus_pin	= { -EINVAL, -EINVAL },
-};
-
-static void usb_a9260_add_device_usb(void)
-{
-	at91_add_device_usbh_ohci(&ek_usbh_data);
-}
-#else
-static void usb_a9260_add_device_usb(void) {}
-#endif
-
-#ifdef CONFIG_USB_GADGET_DRIVER_AT91
-/*
- * USB Device port
- */
-static struct at91_udc_data __initdata ek_udc_data = {
-	.vbus_pin	= AT91_PIN_PB11,
-	.pullup_pin	= -EINVAL,		/* pull-up driven by UDC */
-};
-
-static void __init ek_add_device_udc(void)
-{
-	if (machine_is_usb_a9260() || machine_is_usb_a9g20())
-		ek_udc_data.vbus_pin = AT91_PIN_PC5;
-
-	at91_add_device_udc(&ek_udc_data);
-}
-#else
-static void __init ek_add_device_udc(void) {}
-#endif
-
-#ifdef CONFIG_LED_GPIO
-struct gpio_led led = {
-	.gpio = AT91_PIN_PB21,
-	.led = {
-		.name = "user_led",
-	},
-};
-
-static void __init ek_add_led(void)
-{
-	if (machine_is_usb_a9263())
-		led.active_low = 1;
-
-	at91_set_gpio_output(led.gpio, led.active_low);
-	led_gpio_register(&led);
-}
-#else
-static void ek_add_led(void) {}
-#endif
-
-static int usb_a9260_mem_init(void)
-{
-	at91_add_device_sdram(0);
-
-	return 0;
-}
-mem_initcall(usb_a9260_mem_init);
-
-static void __init ek_add_device_button(void)
-{
-	at91_set_GPIO_periph(AT91_PIN_PB10, 1);	/* user push button, pull up enabled */
-	at91_set_deglitch(AT91_PIN_PB10, 1);
-
-	export_env_ull("dfu_button", AT91_PIN_PB10);
-}
-
-#ifdef CONFIG_CALAO_DAB_MMX
-struct gpio_led dab_mmx_leds[] = {
-	{
-		.gpio = AT91_PIN_PB20,
-		.led = {
-			.name = "user_led1",
-		},
-	}, {
-		.gpio = AT91_PIN_PB21,
-		.led = {
-			.name = "user_led2",
-		},
-	}, {
-		.gpio = AT91_PIN_PB22,
-		.led = {
-			.name = "user_led3",
-		},
-	}, {
-		.gpio = AT91_PIN_PB23,
-		.led = {
-			.name = "user_led4",
-		},
-	}, {
-		.gpio = AT91_PIN_PB24,
-		.led = {
-			.name = "red",
-		},
-	}, {
-		.gpio = AT91_PIN_PB30,
-		.led = {
-			.name = "orange",
-		},
-	}, {
-		.gpio = AT91_PIN_PB31,
-		.led = {
-			.name = "green",
-		},
-	},
-};
-
-#ifdef CONFIG_KEYBOARD_GPIO
-struct gpio_keys_button keys[] = {
-	{
-		.code = KEY_UP,
-		.gpio = AT91_PIN_PB25,
-	}, {
-		.code = KEY_HOME,
-		.gpio = AT91_PIN_PB13,
-	}, {
-		.code = KEY_DOWN,
-		.gpio = AT91_PIN_PA26,
-	}, {
-		.code = KEY_ENTER,
-		.gpio = AT91_PIN_PC9,
-	},
-};
-
-struct gpio_keys_platform_data gk_pdata = {
-	.buttons = keys,
-	.nbuttons = ARRAY_SIZE(keys),
-};
-
-static void usb_a9260_keyboard_device_dab_mmx(void)
-{
-	int i;
-
-	for (i = 0; i < gk_pdata.nbuttons; i++) {
-		/* user push button, pull up enabled */
-		keys[i].active_low = 1;
-		at91_set_GPIO_periph(keys[i].gpio, keys[i].active_low);
-		at91_set_deglitch(keys[i].gpio, 1);
-	}
-
-	add_gpio_keys_device(DEVICE_ID_DYNAMIC, &gk_pdata);
-}
-#else
-static void usb_a9260_keyboard_device_dab_mmx(void) {}
-#endif
-
-static void usb_a9260_device_dab_mmx(void)
-{
-	int i;
-
-	usb_a9260_keyboard_device_dab_mmx();
-
-	for (i = 0; i < ARRAY_SIZE(dab_mmx_leds); i++) {
-		dab_mmx_leds[i].active_low = 1;
-		at91_set_gpio_output(dab_mmx_leds[i].gpio, dab_mmx_leds[i].active_low);
-		led_gpio_register(&dab_mmx_leds[i]);
-	}
-}
-#else
-static void usb_a9260_device_dab_mmx(void) {}
-#endif
-
-static int usb_a9260_devices_init(void)
-{
-	usb_a9260_add_device_nand();
-	usb_a9260_add_device_mci();
-	usb_a9260_add_device_eth();
-	usb_a9260_add_spi();
-	usb_a9260_add_device_usb();
-	ek_add_device_udc();
-	ek_add_led();
-	ek_add_device_button();
-	usb_a9260_device_dab_mmx();
-
-	usb_a9260_set_board_type();
-
-	devfs_add_partition("nand0", 0x00000, SZ_128K, DEVFS_PARTITION_FIXED, "at91bootstrap_raw");
-	dev_add_bb_dev("at91bootstrap_raw", "at91bootstrap");
-	devfs_add_partition("nand0", SZ_128K, SZ_256K, DEVFS_PARTITION_FIXED, "self_raw");
-	dev_add_bb_dev("self_raw", "self0");
-	devfs_add_partition("nand0", SZ_256K + SZ_128K, SZ_128K, DEVFS_PARTITION_FIXED, "env_raw");
-	dev_add_bb_dev("env_raw", "env0");
-	devfs_add_partition("nand0", SZ_512K, SZ_128K, DEVFS_PARTITION_FIXED, "env_raw1");
-	dev_add_bb_dev("env_raw1", "env1");
-
-	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC))
-		defaultenv_append_directory(defaultenv_usb_a926x);
-
-	return 0;
-}
-device_initcall(usb_a9260_devices_init);
-
-#ifndef CONFIG_CONSOLE_NONE
-static int usb_a9260_console_init(void)
-{
-	struct device *dev;
-
-	if (machine_is_usb_a9260()) {
-		barebox_set_model("Calao USB-A9260");
-		barebox_set_hostname("usb-a9260");
-	} else if (machine_is_usb_a9g20()) {
-		barebox_set_model("Calao USB-A9G20");
-		barebox_set_hostname("usb-a9g20");
-	} else {
-		barebox_set_model("Calao USB-A9263");
-		barebox_set_hostname("usb-a9263");
-	}
-
-	at91_register_uart(0, 0);
-
-	if (IS_ENABLED(CONFIG_CALAO_DAB_MMX)) {
-		at91_register_uart(2, 0);
-
-		dev = at91_register_uart(4, 0);
-		dev_set_param(dev, "active", "");
-	}
-
-	return 0;
-}
-console_initcall(usb_a9260_console_init);
-#endif
+#include <mach/at91/board.h>
 
 static int usb_a9260_main_clock(void)
 {
diff --git a/arch/arm/boards/usb-a926x/usb_a9260_lowlevel.c b/arch/arm/boards/usb-a926x/usb_a9260_lowlevel.c
index 66753669d6..dd521f2131 100644
--- a/arch/arm/boards/usb-a926x/usb_a9260_lowlevel.c
+++ b/arch/arm/boards/usb-a926x/usb_a9260_lowlevel.c
@@ -12,6 +12,8 @@
 #include <mach/at91/at91sam9260.h>
 #include <mach/at91/hardware.h>
 
+extern char __dtb_usb_a9260_start[];
+
 AT91_ENTRY_FUNCTION(start_usb_a9260, r0, r1, r2)
 {
 	arm_cpu_lowlevel_init();
@@ -20,9 +22,11 @@ AT91_ENTRY_FUNCTION(start_usb_a9260, r0, r1, r2)
 
 	barebox_arm_entry(AT91_CHIPSELECT_1,
 			  at91_get_sdram_size(IOMEM(AT91SAM9260_BASE_SDRAMC)),
-			  NULL);
+			  __dtb_usb_a9260_start);
 }
 
+extern char __dtb_usb_a9g20_start[];
+
 AT91_ENTRY_FUNCTION(start_usb_a9g20, r0, r1, r2)
 {
 	arm_cpu_lowlevel_init();
@@ -31,5 +35,5 @@ AT91_ENTRY_FUNCTION(start_usb_a9g20, r0, r1, r2)
 
 	barebox_arm_entry(AT91_CHIPSELECT_1,
 			  at91_get_sdram_size(IOMEM(AT91SAM9260_BASE_SDRAMC)),
-			  NULL);
+			  __dtb_usb_a9g20_start);
 }
diff --git a/arch/arm/boards/usb-a926x/usb_a9263_lowlevel.c b/arch/arm/boards/usb-a926x/usb_a9263_lowlevel.c
index eda534c68e..2adf80dfb5 100644
--- a/arch/arm/boards/usb-a926x/usb_a9263_lowlevel.c
+++ b/arch/arm/boards/usb-a926x/usb_a9263_lowlevel.c
@@ -105,6 +105,8 @@ static void __bare_init usb_a9263_board_config(struct at91sam926x_board_cfg *cfg
 		AT91_RSTC_RSTTYP_WATCHDOG;
 }
 
+extern char __dtb_usb_a9263_start[];
+
 static void __bare_init usb_a9263_init(bool has_mem_128m)
 {
 	struct at91sam926x_board_cfg cfg;
@@ -118,7 +120,7 @@ static void __bare_init usb_a9263_init(bool has_mem_128m)
 	at91sam9263_board_init(&cfg);
 
 	barebox_arm_entry(AT91_CHIPSELECT_1, at91_get_sdram_size(cfg.sdramc),
-	                  NULL);
+	                  __dtb_usb_a9263_start);
 }
 
 AT91_ENTRY_FUNCTION(start_usb_a9263, r0, r1, r2)
diff --git a/arch/arm/configs/usb_a9g20_defconfig b/arch/arm/configs/usb_a9g20_defconfig
index cca8ee6097..93566bac15 100644
--- a/arch/arm/configs/usb_a9g20_defconfig
+++ b/arch/arm/configs/usb_a9g20_defconfig
@@ -1,15 +1,13 @@
 CONFIG_ARCH_AT91=y
 CONFIG_ARCH_AT91SAM9G20=y
 CONFIG_MACH_USB_A9G20=y
-CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_AEABI=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_PBL_IMAGE=y
 CONFIG_MMU=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_EXPERIMENTAL=y
 CONFIG_MALLOC_TLSF=y
 CONFIG_PROMPT="USB-9G20:"
-CONFIG_GLOB=y
 CONFIG_PROMPT_HUSH_PS2="y"
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
@@ -20,7 +18,7 @@ CONFIG_BOOTM_VERBOSE=y
 CONFIG_BOOTM_INITRD=y
 CONFIG_BOOTM_OFTREE=y
 CONFIG_BOOTM_OFTREE_UIMAGE=y
-CONFIG_CONSOLE_ACTIVATE_ALL=y
+CONFIG_CONSOLE_ACTIVATE_NONE=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
 # CONFIG_CMD_ARM_CPUINFO is not set
 CONFIG_LONGHELP=y
@@ -58,14 +56,13 @@ CONFIG_NET=y
 CONFIG_NET_NFS=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
+CONFIG_OFDEVICE=y
+CONFIG_OF_BAREBOX_DRIVERS=y
 CONFIG_DRIVER_NET_MACB=y
 CONFIG_DRIVER_SPI_ATMEL=y
 CONFIG_MTD=y
 # CONFIG_MTD_OOB_DEVICE is not set
 CONFIG_NAND=y
-# CONFIG_NAND_ECC_HW is not set
-# CONFIG_NAND_ECC_HW_SYNDROME is not set
-# CONFIG_NAND_ECC_HW_NONE is not set
 CONFIG_NAND_ATMEL=y
 CONFIG_USB_GADGET=y
 CONFIG_USB_GADGET_DFU=y
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 0a7cceb461..66432ec7ac 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -171,6 +171,9 @@ lwl-$(CONFIG_MACH_WARP7) += imx7s-warp.dtb.o
 lwl-$(CONFIG_MACH_VF610_TWR) += vf610-twr.dtb.o
 lwl-$(CONFIG_MACH_WEBASTO_CCBV2) += imx6ul-webasto-ccbv2.dtb.o
 lwl-$(CONFIG_MACH_WEBASTO_CCBV2) += imx6ul-webasto-marvel.dtb.o
+lwl-$(CONFIG_MACH_USB_A9G20) += usb_a9g20.dtb.o
+lwl-$(CONFIG_MACH_USB_A9260) += usb_a9260.dtb.o
+lwl-$(CONFIG_MACH_USB_A9263) += usb_a9263.dtb.o
 lwl-$(CONFIG_MACH_ZII_RDU1) +=	\
 	imx51-zii-rdu1.dtb.o		\
 	imx51-zii-scu2-mezz.dtb.o	\
diff --git a/arch/arm/dts/usb_a9260.dts b/arch/arm/dts/usb_a9260.dts
new file mode 100644
index 0000000000..c034bb6544
--- /dev/null
+++ b/arch/arm/dts/usb_a9260.dts
@@ -0,0 +1 @@
+#include <arm/usb_a9260.dts>
diff --git a/arch/arm/dts/usb_a9263.dts b/arch/arm/dts/usb_a9263.dts
new file mode 100644
index 0000000000..5455a6e916
--- /dev/null
+++ b/arch/arm/dts/usb_a9263.dts
@@ -0,0 +1 @@
+#include <arm/usb_a9263.dts>
diff --git a/arch/arm/dts/usb_a9g20.dts b/arch/arm/dts/usb_a9g20.dts
new file mode 100644
index 0000000000..2989f423d8
--- /dev/null
+++ b/arch/arm/dts/usb_a9g20.dts
@@ -0,0 +1 @@
+#include <arm/usb_a9g20.dts>
-- 
2.30.2


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


