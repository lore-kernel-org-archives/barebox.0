Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RkBlg-00033v-S1
 for barebox@lists.infradead.org; Mon, 09 Jan 2012 09:43:54 +0000
Date: Mon, 9 Jan 2012 10:43:42 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120109094342.GO5446@pengutronix.de>
References: <1325930293-11161-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1325930293-11161-1-git-send-email-plagnioj@jcrosoft.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/1] at91: add Calao TNY-A9260/TNY-A9263/TNY-A9G20
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sat, Jan 07, 2012 at 10:58:13AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  arch/arm/Makefile                            |    3 +
>  arch/arm/boards/tny-a926x/Makefile           |    1 +
>  arch/arm/boards/tny-a926x/config.h           |    6 +
>  arch/arm/boards/tny-a926x/env/bin/init_board |   11 ++
>  arch/arm/boards/tny-a926x/env/config         |   41 +++++
>  arch/arm/boards/tny-a926x/init.c             |  243 ++++++++++++++++++++++++++
>  arch/arm/configs/tny_a9260_defconfig         |   70 ++++++++
>  arch/arm/configs/tny_a9263_defconfig         |   70 ++++++++
>  arch/arm/configs/tny_a9g20_defconfig         |   70 ++++++++
>  arch/arm/mach-at91/Kconfig                   |   21 +++
>  10 files changed, 536 insertions(+), 0 deletions(-)
>  create mode 100644 arch/arm/boards/tny-a926x/Makefile
>  create mode 100644 arch/arm/boards/tny-a926x/config.h
>  create mode 100644 arch/arm/boards/tny-a926x/env/bin/init_board
>  create mode 100644 arch/arm/boards/tny-a926x/env/config
>  create mode 100644 arch/arm/boards/tny-a926x/init.c
>  create mode 100644 arch/arm/configs/tny_a9260_defconfig
>  create mode 100644 arch/arm/configs/tny_a9263_defconfig
>  create mode 100644 arch/arm/configs/tny_a9g20_defconfig
> 
> diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> index 9885634..6de6366 100644
> --- a/arch/arm/Makefile
> +++ b/arch/arm/Makefile
> @@ -111,6 +111,9 @@ board-$(CONFIG_MACH_FREESCALE_MX53_LOCO)	:= freescale-mx53-loco
>  board-$(CONFIG_MACH_FREESCALE_MX53_SMD)		:= freescale-mx53-smd
>  board-$(CONFIG_MACH_GUF_CUPID)			:= guf-cupid
>  board-$(CONFIG_MACH_MINI2440)			:= mini2440
> +board-$(CONFIG_MACH_TNY_A9260)			:= tny-a926x
> +board-$(CONFIG_MACH_TNY_A9263)			:= tny-a926x
> +board-$(CONFIG_MACH_TNY_A9G20)			:= tny-a926x
>  board-$(CONFIG_MACH_USB_A9260)			:= usb-a926x
>  board-$(CONFIG_MACH_USB_A9263)			:= usb-a926x
>  board-$(CONFIG_MACH_USB_A9G20)			:= usb-a926x
> diff --git a/arch/arm/boards/tny-a926x/Makefile b/arch/arm/boards/tny-a926x/Makefile
> new file mode 100644
> index 0000000..eb072c0
> --- /dev/null
> +++ b/arch/arm/boards/tny-a926x/Makefile
> @@ -0,0 +1 @@
> +obj-y += init.o
> diff --git a/arch/arm/boards/tny-a926x/config.h b/arch/arm/boards/tny-a926x/config.h
> new file mode 100644
> index 0000000..d971810
> --- /dev/null
> +++ b/arch/arm/boards/tny-a926x/config.h
> @@ -0,0 +1,6 @@
> +#ifndef __CONFIG_H
> +#define __CONFIG_H
> +
> +#define AT91_MAIN_CLOCK		12000000	/* 12 MHz crystal */
> +
> +#endif	/* __CONFIG_H */
> diff --git a/arch/arm/boards/tny-a926x/env/bin/init_board b/arch/arm/boards/tny-a926x/env/bin/init_board
> new file mode 100644
> index 0000000..0d40eb4
> --- /dev/null
> +++ b/arch/arm/boards/tny-a926x/env/bin/init_board
> @@ -0,0 +1,11 @@
> +#!/bin/sh
> +
> +if [ $at91_udc0.vbus != 1 ]
> +then
> +	echo "No USB Device cable plugged, normal boot"
> +	exit
> +fi
> +
> +autoboot_timeout=16
> +echo "enable tty over USB Device, increase the boot delay to ${autoboot_timeout}s"
> +usbserial
> diff --git a/arch/arm/boards/tny-a926x/env/config b/arch/arm/boards/tny-a926x/env/config
> new file mode 100644
> index 0000000..cabdae0
> --- /dev/null
> +++ b/arch/arm/boards/tny-a926x/env/config
> @@ -0,0 +1,41 @@
> +#!/bin/sh
> +
> +# use 'dhcp' to do dhcp in barebox and in kernel
> +# use 'none' if you want to skip kernel ip autoconfiguration
> +ip=none
> +
> +# or set your networking parameters here
> +#eth0.ipaddr=a.b.c.d
> +#eth0.netmask=a.b.c.d
> +#eth0.gateway=a.b.c.d
> +#eth0.serverip=a.b.c.d
> +
> +# can be either 'nfs', 'tftp', 'nor' or 'nand'
> +kernel_loc=nand
> +# can be either 'net', 'nor', 'nand' or 'initrd'
> +rootfs_loc=nand
> +
> +# can be either 'jffs2' or 'ubifs'
> +rootfs_type=ubifs
> +rootfsimage=root.$rootfs_type
> +
> +# The image type of the kernel. Can be uimage, zimage, raw, or raw_lzo
> +#kernelimage_type=zimage
> +#kernelimage=zImage
> +kernelimage_type=uimage
> +kernelimage=uImage
> +#kernelimage_type=raw
> +#kernelimage=Image
> +#kernelimage_type=raw_lzo
> +#kernelimage=Image.lzo

The kernelimage_type variabled are no longer used. Please remove.


[...]

> +
> +static struct sam9_smc_config tny_a9260_nand_smc_config = {
> +	.ncs_read_setup		= 0,
> +	.nrd_setup		= 1,
> +	.ncs_write_setup	= 0,
> +	.nwe_setup		= 1,
> +
> +	.ncs_read_pulse		= 3,
> +	.nrd_pulse		= 3,
> +	.ncs_write_pulse	= 3,
> +	.nwe_pulse		= 3,
> +
> +	.read_cycle		= 5,
> +	.write_cycle		= 5,
> +
> +	.mode			= AT91_SMC_READMODE | AT91_SMC_WRITEMODE | AT91_SMC_EXNWMODE_DISABLE | AT91_SMC_DBW_8,

Please shorten this line a bit.

> +	.tdf_cycles		= 2,
> +};
> +
> +static struct sam9_smc_config tny_a9g20_nand_smc_config = {
> +	.ncs_read_setup		= 0,
> +	.nrd_setup		= 2,
> +	.ncs_write_setup	= 0,
> +	.nwe_setup		= 2,
> +
> +	.ncs_read_pulse		= 4,
> +	.nrd_pulse		= 4,
> +	.ncs_write_pulse	= 4,
> +	.nwe_pulse		= 2,
> +
> +	.read_cycle		= 7,
> +	.write_cycle		= 7,
> +
> +	.mode			= AT91_SMC_READMODE | AT91_SMC_WRITEMODE | AT91_SMC_EXNWMODE_DISABLE | AT91_SMC_DBW_8,

ditto

> +	.tdf_cycles		= 3,
> +};
> +

[...]

> +
> +static void __init ek_add_device_macb(void)
> +{
> +	tny_a9260_phy_reset();
> +	at91_add_device_eth(&macb_pdata);
> +}
> +#else
> +static void __init ek_add_device_macb(void) {}
> +#endif
> +
> +/*
> + * USB Device port
> + */
> +static struct at91_udc_data __initdata ek_udc_data = {
> +	.vbus_pin	= AT91_PIN_PC5,

This is statically initialized to AT91_PIN_PC5...

> +	.pullup_pin	= 0,		/* pull-up driven by UDC */
> +};
> +

[...]

> +
> +static void __init ek_add_device_udc(void)
> +{
> +	if (machine_is_tny_a9260() || machine_is_tny_a9g20())
> +		ek_udc_data.vbus_pin = AT91_PIN_PC5;

...and for two out of three boards overwritten with the same value.

> +
> +	at91_add_device_udc(&ek_udc_data);
> +}
> +
> +static int tny_a9260_mem_init(void)
> +{
> +	at91_add_device_sdram(64 * 1024 * 1024);
> +
> +	return 0;
> +}
> +mem_initcall(tny_a9260_mem_init);
> +
> +static int tny_a9260_devices_init(void)
> +{
> +	tny_a9260_add_device_nand();
> +	ek_add_device_macb();
> +	ek_add_device_udc();
> +
> +	armlinux_set_bootparams((void *)(AT91_CHIPSELECT_1 + 0x100));
> +	tny_a9260_set_board_type();
> +
> +	if (machine_is_tny_a9260() || machine_is_tny_a9g20()) {
> +		spi_register_board_info(tny_a9g20_spi_devices,
> +			ARRAY_SIZE(tny_a9g20_spi_devices));
> +		at91_add_device_spi(0, &spi_pdata);
> +	}
> +
> +	devfs_add_partition("nand0", 0x00000, SZ_128K, PARTITION_FIXED, "at91bootstrap_raw");
> +	dev_add_bb_dev("at91bootstrap_raw", "at91bootstrap");
> +	devfs_add_partition("nand0", SZ_128K, SZ_256K, PARTITION_FIXED, "self_raw");
> +	dev_add_bb_dev("self_raw", "self0");
> +	devfs_add_partition("nand0", SZ_256K + SZ_128K, SZ_128K, PARTITION_FIXED, "env_raw");
> +	dev_add_bb_dev("env_raw", "env0");
> +	devfs_add_partition("nand0", SZ_512K, SZ_128K, PARTITION_FIXED, "env_raw1");
> +	dev_add_bb_dev("env_raw1", "env1");
> +
> +	return 0;
> +}
> +device_initcall(tny_a9260_devices_init);
> +
> +static int tny_a9260_console_init(void)
> +{
> +	at91_register_uart(0, 0);
> +	return 0;
> +}
> +console_initcall(tny_a9260_console_init);

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
