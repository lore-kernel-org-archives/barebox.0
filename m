Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Ws3cb-0000Ex-UM
 for barebox@lists.infradead.org; Wed, 04 Jun 2014 05:20:24 +0000
Date: Wed, 4 Jun 2014 07:19:57 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140604051957.GD15686@pengutronix.de>
References: <1401809405-5749-1-git-send-email-voice.shen@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1401809405-5749-1-git-send-email-voice.shen@gmail.com>
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
Subject: Re: [PATCH] ARM: atmel: add sama5d3_xplained support
To: Bo Shen <voice.shen@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Jun 03, 2014 at 11:30:05PM +0800, Bo Shen wrote:
> Signed-off-by: Bo Shen <voice.shen@gmail.com>

Applied, thanks

Sascha

> ---
>  arch/arm/boards/Makefile                    |    1 +
>  arch/arm/boards/sama5d3_xplained/Makefile   |    1 +
>  arch/arm/boards/sama5d3_xplained/env/config |   42 +++++
>  arch/arm/boards/sama5d3_xplained/init.c     |  238 +++++++++++++++++++++++++++
>  arch/arm/configs/sama5d3_xplained_defconfig |   82 +++++++++
>  arch/arm/mach-at91/Kconfig                  |    5 +
>  6 files changed, 369 insertions(+)
>  create mode 100644 arch/arm/boards/sama5d3_xplained/Makefile
>  create mode 100644 arch/arm/boards/sama5d3_xplained/env/config
>  create mode 100644 arch/arm/boards/sama5d3_xplained/init.c
>  create mode 100644 arch/arm/configs/sama5d3_xplained_defconfig
> 
> diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
> index ae01b29..15d20be 100644
> --- a/arch/arm/boards/Makefile
> +++ b/arch/arm/boards/Makefile
> @@ -82,6 +82,7 @@ obj-$(CONFIG_MACH_RPI)				+= raspberry-pi/
>  obj-$(CONFIG_MACH_SABRELITE)			+= freescale-mx6-sabrelite/
>  obj-$(CONFIG_MACH_SABRESD)			+= freescale-mx6-sabresd/
>  obj-$(CONFIG_MACH_SAMA5D3XEK)			+= sama5d3xek/
> +obj-$(CONFIG_MACH_SAMA5D3_XPLAINED)		+= sama5d3_xplained/
>  obj-$(CONFIG_MACH_SCB9328)			+= scb9328/
>  obj-$(CONFIG_MACH_SOCFPGA_EBV_SOCRATES)		+= ebv-socrates/
>  obj-$(CONFIG_MACH_SOCFPGA_TERASIC_SOCKIT)	+= terasic-sockit/
> diff --git a/arch/arm/boards/sama5d3_xplained/Makefile b/arch/arm/boards/sama5d3_xplained/Makefile
> new file mode 100644
> index 0000000..eb072c0
> --- /dev/null
> +++ b/arch/arm/boards/sama5d3_xplained/Makefile
> @@ -0,0 +1 @@
> +obj-y += init.o
> diff --git a/arch/arm/boards/sama5d3_xplained/env/config b/arch/arm/boards/sama5d3_xplained/env/config
> new file mode 100644
> index 0000000..5464f64
> --- /dev/null
> +++ b/arch/arm/boards/sama5d3_xplained/env/config
> @@ -0,0 +1,42 @@
> +#!/bin/sh
> +
> +# use 'dhcp' to do dhcp in barebox and in kernel
> +# use 'none' if you want to skip kernel ip autoconfiguration
> +ip=dhcp-barebox
> +
> +# or set your networking parameters here
> +#eth0.ipaddr=a.b.c.d
> +#eth0.netmask=a.b.c.d
> +#eth0.gateway=a.b.c.d
> +#eth0.serverip=a.b.c.d
> +
> +# can be either 'nfs', 'tftp', 'nor' or 'nand'
> +kernel_loc=nfs
> +# can be either 'net', 'nor', 'nand' or 'initrd'
> +rootfs_loc=net
> +# can be either 'nfs', 'tftp', 'nand' or empty
> +oftree_loc=nfs
> +
> +# can be either 'jffs2' or 'ubifs'
> +rootfs_type=ubifs
> +rootfsimage=root.$rootfs_type
> +ubiroot=rootfs
> +
> +# The image type of the kernel. Can be uimage, zimage, raw, or raw_lzo
> +kernelimage=zImage
> +#kernelimage=uImage
> +#kernelimage=Image
> +#kernelimage=Image.lzo
> +
> +nand_device=atmel_nand
> +nand_parts="256k(at91bootstrap),384k(barebox)ro,256k@768k(bareboxenv),256k(bareboxenv2),128k@1536k(oftree),5M@2M(kernel),-@8M(rootfs)"
> +rootfs_mtdblock_nand=6
> +
> +m25p80_parts="64k(bootstrap),384k(barebox),256k(bareboxenv),256k(bareboxenv2),128k(oftree),-(updater)"
> +
> +autoboot_timeout=3
> +
> +bootargs="console=ttyS0,115200"
> +
> +# set a fancy prompt (if support is compiled in)
> +PS1="\e[1;32mbarebox@\e[1;31m\h:\w\e[0m\n# "
> diff --git a/arch/arm/boards/sama5d3_xplained/init.c b/arch/arm/boards/sama5d3_xplained/init.c
> new file mode 100644
> index 0000000..ae18863
> --- /dev/null
> +++ b/arch/arm/boards/sama5d3_xplained/init.c
> @@ -0,0 +1,238 @@
> +/*
> + * Copyright (C) 2014 Bo Shen <voice.shen@gmail.com>
> + *
> + * This program is free software; you can redistribute it and/or
> + * modify it under the terms of the GNU General Public License as
> + * published by the Free Software Foundation; either version 2 of
> + * the License, or (at your option) any later version.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + */
> +
> +#include <common.h>
> +#include <net.h>
> +#include <init.h>
> +#include <environment.h>
> +#include <asm/armlinux.h>
> +#include <generated/mach-types.h>
> +#include <partition.h>
> +#include <fs.h>
> +#include <fcntl.h>
> +#include <io.h>
> +#include <mach/hardware.h>
> +#include <nand.h>
> +#include <sizes.h>
> +#include <linux/mtd/nand.h>
> +#include <mach/board.h>
> +#include <mach/at91sam9_smc.h>
> +#include <gpio.h>
> +#include <mach/io.h>
> +#include <mach/iomux.h>
> +#include <mach/at91_pmc.h>
> +#include <mach/at91_rstc.h>
> +#include <mach/at91sam9x5_matrix.h>
> +#include <readkey.h>
> +#include <poller.h>
> +#include <linux/clk.h>
> +#include <linux/phy.h>
> +#include <linux/micrel_phy.h>
> +
> +#if defined(CONFIG_NAND_ATMEL)
> +static struct atmel_nand_data nand_pdata = {
> +	.ale		= 21,
> +	.cle		= 22,
> +	.det_pin	= -EINVAL,
> +	.rdy_pin	= -EINVAL,
> +	.enable_pin	= -EINVAL,
> +	.ecc_mode	= NAND_ECC_HW,
> +	.pmecc_sector_size = 512,
> +	.pmecc_corr_cap = 4,
> +#if defined(CONFIG_MTD_NAND_ATMEL_BUSWIDTH_16)
> +	.bus_width_16	= 1,
> +#endif
> +	.on_flash_bbt	= 1,
> +};
> +
> +static struct sam9_smc_config sama5d3_xplained_nand_smc_config = {
> +	.ncs_read_setup		= 0,
> +	.nrd_setup		= 1,
> +	.ncs_write_setup	= 0,
> +	.nwe_setup		= 1,
> +
> +	.ncs_read_pulse		= 6,
> +	.nrd_pulse		= 4,
> +	.ncs_write_pulse	= 5,
> +	.nwe_pulse		= 3,
> +
> +	.read_cycle		= 6,
> +	.write_cycle		= 5,
> +
> +	.mode			= AT91_SMC_READMODE | AT91_SMC_WRITEMODE | AT91_SMC_EXNWMODE_DISABLE,
> +	.tdf_cycles		= 1,
> +};
> +
> +static void ek_add_device_nand(void)
> +{
> +	struct clk *clk = clk_get(NULL, "smc_clk");
> +
> +	clk_enable(clk);
> +
> +	/* setup bus-width (8 or 16) */
> +	if (nand_pdata.bus_width_16)
> +		sama5d3_xplained_nand_smc_config.mode |= AT91_SMC_DBW_16;
> +	else
> +		sama5d3_xplained_nand_smc_config.mode |= AT91_SMC_DBW_8;
> +
> +	/* configure chip-select 3 (NAND) */
> +	sam9_smc_configure(0, 3, &sama5d3_xplained_nand_smc_config);
> +
> +	at91_add_device_nand(&nand_pdata);
> +}
> +#else
> +static void ek_add_device_nand(void) {}
> +#endif
> +
> +#if defined(CONFIG_DRIVER_NET_MACB)
> +static struct macb_platform_data gmac_pdata = {
> +	.phy_interface = PHY_INTERFACE_MODE_RGMII,
> +	.phy_addr = 7,
> +};
> +
> +static struct macb_platform_data macb_pdata = {
> +	.phy_interface = PHY_INTERFACE_MODE_RMII,
> +	.phy_addr = 0,
> +};
> +
> +static void ek_add_device_eth(void)
> +{
> +	at91_add_device_eth(0, &gmac_pdata);
> +	at91_add_device_eth(1, &macb_pdata);
> +}
> +#else
> +static void ek_add_device_eth(void) {}
> +#endif
> +
> +#if defined(CONFIG_MCI_ATMEL)
> +/*
> + * MCI (SD/MMC)
> + */
> +static struct atmel_mci_platform_data mci0_data = {
> +	.bus_width	= 8,
> +	.detect_pin	= AT91_PIN_PE0,
> +	.wp_pin		= -EINVAL,
> +};
> +
> +static void ek_add_device_mci(void)
> +{
> +	/* MMC0 */
> +	at91_add_device_mci(0, &mci0_data);
> +}
> +#else
> +static void ek_add_device_mci(void) {}
> +#endif
> +
> +#ifdef CONFIG_LED_GPIO
> +struct gpio_led leds[] = {
> +	{
> +		.gpio	= AT91_PIN_PE23,
> +		.active_low	= 1,
> +		.led	= {
> +			.name = "d2",
> +		},
> +	}, {
> +		.gpio	= AT91_PIN_PE24,
> +		.active_low	= 1,
> +		.led	= {
> +			.name = "d3",
> +		},
> +	},
> +};
> +
> +static void ek_add_led(void)
> +{
> +	int i;
> +
> +	for (i = 0; i < ARRAY_SIZE(leds); i++) {
> +		at91_set_gpio_output(leds[i].gpio, leds[i].active_low);
> +		led_gpio_register(&leds[i]);
> +	}
> +	led_set_trigger(LED_TRIGGER_HEARTBEAT, &leds[0].led);
> +}
> +#else
> +static void ek_add_led(void) {}
> +#endif
> +
> +static int sama5d3_xplained_mem_init(void)
> +{
> +	at91_add_device_sdram(0);
> +
> +	return 0;
> +}
> +mem_initcall(sama5d3_xplained_mem_init);
> +
> +static const struct devfs_partition sama5d3_xplained_nand0_partitions[] = {
> +	{
> +		.offset = 0x00000,
> +		.size = SZ_256K,
> +		.flags = DEVFS_PARTITION_FIXED,
> +		.name = "at91bootstrap_raw",
> +		.bbname = "at91bootstrap",
> +	}, {
> +		.offset = DEVFS_PARTITION_APPEND, /* 256 KiB */
> +		.size = SZ_256K + SZ_128K,
> +		.flags = DEVFS_PARTITION_FIXED,
> +		.name = "self_raw",
> +		.bbname = "self0",
> +	},
> +	/* hole of 128 KiB */
> +	{
> +		.offset = SZ_512K + SZ_256K,
> +		.size = SZ_256K,
> +		.flags = DEVFS_PARTITION_FIXED,
> +		.name = "env_raw",
> +		.bbname = "env0",
> +	}, {
> +		.offset = DEVFS_PARTITION_APPEND, /* 1 MiB */
> +		.size = SZ_256K,
> +		.flags = DEVFS_PARTITION_FIXED,
> +		.name = "env_raw1",
> +		.bbname = "env1",
> +	}, {
> +		/* sentinel */
> +	}
> +};
> +
> +static int sama5d3_xplained_devices_init(void)
> +{
> +	ek_add_device_nand();
> +	ek_add_led();
> +	ek_add_device_eth();
> +	ek_add_device_mci();
> +
> +	devfs_create_partitions("nand0", sama5d3_xplained_nand0_partitions);
> +
> +	return 0;
> +}
> +device_initcall(sama5d3_xplained_devices_init);
> +
> +static int sama5d3_xplained_console_init(void)
> +{
> +	barebox_set_model("Atmel sama5d3_xplained");
> +	barebox_set_hostname("sama5d3_xplained");
> +
> +	at91_register_uart(0, 0);
> +
> +	return 0;
> +}
> +console_initcall(sama5d3_xplained_console_init);
> +
> +static int sama5d3_xplained_main_clock(void)
> +{
> +	at91_set_main_clock(12000000);
> +
> +	return 0;
> +}
> +pure_initcall(sama5d3_xplained_main_clock);
> diff --git a/arch/arm/configs/sama5d3_xplained_defconfig b/arch/arm/configs/sama5d3_xplained_defconfig
> new file mode 100644
> index 0000000..8b02147
> --- /dev/null
> +++ b/arch/arm/configs/sama5d3_xplained_defconfig
> @@ -0,0 +1,82 @@
> +CONFIG_ARCH_SAMA5D3=y
> +CONFIG_MACH_SAMA5D3_XPLAINED=y
> +CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x60000
> +CONFIG_AEABI=y
> +# CONFIG_CMD_ARM_CPUINFO is not set
> +CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
> +CONFIG_PBL_IMAGE=y
> +CONFIG_MMU=y
> +CONFIG_TEXT_BASE=0x26f00000
> +CONFIG_MALLOC_SIZE=0xA00000
> +CONFIG_EXPERIMENTAL=y
> +CONFIG_MALLOC_TLSF=y
> +CONFIG_PROMPT="A5D3_XPLD:"
> +CONFIG_LONGHELP=y
> +CONFIG_GLOB=y
> +CONFIG_PROMPT_HUSH_PS2="y"
> +CONFIG_HUSH_FANCY_PROMPT=y
> +CONFIG_CMDLINE_EDITING=y
> +CONFIG_AUTO_COMPLETE=y
> +CONFIG_CONSOLE_ACTIVATE_ALL=y
> +CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
> +CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/sama5d3_xplained/env"
> +CONFIG_CMD_EDIT=y
> +CONFIG_CMD_SLEEP=y
> +CONFIG_CMD_SAVEENV=y
> +CONFIG_CMD_EXPORT=y
> +CONFIG_CMD_PRINTENV=y
> +CONFIG_CMD_READLINE=y
> +CONFIG_CMD_TFTP=y
> +CONFIG_CMD_FILETYPE=y
> +CONFIG_CMD_ECHO_E=y
> +CONFIG_CMD_LOADB=y
> +CONFIG_CMD_MEMINFO=y
> +CONFIG_CMD_FLASH=y
> +CONFIG_CMD_BOOTM_SHOW_TYPE=y
> +CONFIG_CMD_BOOTM_VERBOSE=y
> +CONFIG_CMD_BOOTM_INITRD=y
> +CONFIG_CMD_BOOTM_OFTREE=y
> +CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
> +CONFIG_CMD_UIMAGE=y
> +# CONFIG_CMD_BOOTU is not set
> +CONFIG_CMD_RESET=y
> +CONFIG_CMD_GO=y
> +CONFIG_CMD_OFTREE=y
> +CONFIG_CMD_SPLASH=y
> +CONFIG_CMD_TIMEOUT=y
> +CONFIG_CMD_PARTITION=y
> +CONFIG_CMD_GPIO=y
> +CONFIG_CMD_I2C=y
> +CONFIG_CMD_LED=y
> +CONFIG_CMD_LED_TRIGGER=y
> +CONFIG_CMD_MIITOOL=y
> +CONFIG_NET=y
> +CONFIG_NET_DHCP=y
> +CONFIG_NET_NFS=y
> +CONFIG_NET_PING=y
> +CONFIG_NET_NETCONSOLE=y
> +CONFIG_DRIVER_NET_MACB=y
> +CONFIG_MICREL_PHY=y
> +# CONFIG_SPI is not set
> +CONFIG_I2C=y
> +CONFIG_MTD=y
> +# CONFIG_MTD_OOB_DEVICE is not set
> +CONFIG_NAND=y
> +# CONFIG_NAND_ECC_SOFT is not set
> +# CONFIG_NAND_ECC_HW_SYNDROME is not set
> +# CONFIG_NAND_ECC_HW_NONE is not set
> +CONFIG_NAND_ATMEL=y
> +CONFIG_NAND_ATMEL_PMECC=y
> +CONFIG_VIDEO=y
> +CONFIG_MCI=y
> +CONFIG_MCI_STARTUP=y
> +CONFIG_MCI_ATMEL=y
> +CONFIG_LED=y
> +CONFIG_LED_GPIO=y
> +CONFIG_LED_TRIGGERS=y
> +CONFIG_FS_EXT4=y
> +CONFIG_FS_TFTP=y
> +CONFIG_FS_FAT=y
> +CONFIG_FS_FAT_WRITE=y
> +CONFIG_FS_FAT_LFN=y
> +CONFIG_PNG=y
> diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
> index e3eeb2c..bb44cb5 100644
> --- a/arch/arm/mach-at91/Kconfig
> +++ b/arch/arm/mach-at91/Kconfig
> @@ -461,6 +461,11 @@ config MACH_SAMA5D3XEK
>  	help
>  	  Select this if you are using Atmel's SAMA5D3X-EK Evaluation Kit.
>  
> +config MACH_SAMA5D3_XPLAINED
> +	bool "Atmel SAMA5D3_XPLAINED Evaluation Kit"
> +	help
> +	  Select this if you are using Atmel's SAMA5D3_XPLAINED Evaluation Kit.
> +
>  endchoice
>  
>  endif
> -- 
> 1.7.10.4
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
