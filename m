Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bL36W-0003JS-0Q
 for barebox@lists.infradead.org; Thu, 07 Jul 2016 06:48:11 +0000
Date: Thu, 7 Jul 2016 08:47:45 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160707064745.GV20657@pengutronix.de>
References: <alpine.DEB.2.00.1607052317340.25428@blala.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.00.1607052317340.25428@blala.de>
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
Subject: Re: [RFC / PATCH]: Add support for Kindle3
To: Alexander Kurz <akurz@blala.de>
Cc: barebox@lists.infradead.org

On Tue, Jul 05, 2016 at 11:28:08PM +0200, Alexander Kurz wrote:
> Hello List,
> this is an attempt to use barebox as bootloader for the Amazon Kindle 3 
> AKA Kindle Keyboard. It's a iMX35 device running linux, there is a serial 
> console and even a JTAG connector on this device, and it can be 
> 'de-bricked' at any time by use of the IMX-USB image download function.
> So, all in all it's a nice device.
> 
> The attached patch currently only applies to next, the produced 
> barebox.imximg may be used as drop-in replacement for the factory-shipped
> u-boot image.
> 
> Is this patch acceptable for barebox?

Generally yes, why not?

> Comments are welcome,
> thanks, Alexander

> From 2f87e68db076c045e14ae53829cf968f9b22efb7 Mon Sep 17 00:00:00 2001
> From: Alexander Kurz <akurz@blala.de>
> Date: Tue, 5 Jul 2016 22:52:28 +0200
> Subject: [PATCH] ARM i.MX35: Add support for the Amazon Kindle3
> 
> The Amazon Model No. D00901 Kindle3 is an E-Book reader based on the
> i.MX35 SOC. The device boots in internal boot mode from a build-in eMMC,
> alternatively the device may be set into USB-downloader mode when the
> Vol+ key is pressed on startup.
> 
> Add support for this device and make barebox a drop-in replacement for
> the factory shipped u-boot image.
> Constraints for the use as drop-in replacement:
> - imximg header (offset 0x400) has a maximum size of 2kB minus 16 byte
>   since the last 16 bytes are used to store a vendor specific hardware
>   desctription identifier
> - the bootloader space (application plus env) is limited to 256kB minus
>   16 bytes when installed with offset of 4kB (the u-boot offset was 3kB).
>   A vendor specific device identifier is stored in the gap between
>   application and kernel. The vendor specific identifiers should not
>   be overwritten.
> 
> Notable features:
> - Support for eMMC, USB, UART, I2C, SPI and Keys (except keyboard)
> - Full support for vendor specific ATAGs
> - usbserial barebox console access by pressing Select button at startup,
>   alternatively full console support on connector J14.
> 
> Signed-off-by: Alexander Kurz <akurz@blala.de>
> ---
>  arch/arm/Makefile                           |   1 +
>  arch/arm/boards/Makefile                    |   1 +
>  arch/arm/boards/kindle3/Makefile            |   2 +
>  arch/arm/boards/kindle3/env/bin/init        |  37 +++
>  arch/arm/boards/kindle3/env/bin/set_serials |  18 ++
>  arch/arm/boards/kindle3/env/boot/mmc_kernel |   7 +
>  arch/arm/boards/kindle3/env/config          |  15 ++
>  arch/arm/boards/kindle3/flash-header.imxcfg |  24 ++
>  arch/arm/boards/kindle3/kindle3.c           | 354 ++++++++++++++++++++++++++++
>  arch/arm/boards/kindle3/lowlevel.c          | 142 +++++++++++
>  arch/arm/configs/kindle3_defconfig          |  69 ++++++
>  arch/arm/mach-imx/Kconfig                   |   8 +
>  12 files changed, 678 insertions(+)
>  create mode 100644 arch/arm/boards/kindle3/Makefile
>  create mode 100644 arch/arm/boards/kindle3/env/bin/init
>  create mode 100644 arch/arm/boards/kindle3/env/bin/set_serials
>  create mode 100644 arch/arm/boards/kindle3/env/boot/mmc_kernel
>  create mode 100644 arch/arm/boards/kindle3/env/config
>  create mode 100644 arch/arm/boards/kindle3/flash-header.imxcfg
>  create mode 100644 arch/arm/boards/kindle3/kindle3.c
>  create mode 100644 arch/arm/boards/kindle3/lowlevel.c
>  create mode 100644 arch/arm/configs/kindle3_defconfig
> 
> diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> index 5ccdb83..4f596b6 100644
> --- a/arch/arm/Makefile
> +++ b/arch/arm/Makefile
> @@ -235,6 +235,7 @@ imxcfg-$(CONFIG_MACH_FREESCALE_MX35_3STACK) += $(boarddir)/freescale-mx35-3ds/fl
>  imxcfg-$(CONFIG_MACH_TQMA53) += $(boarddir)/tqma53/flash-header.imxcfg
>  imxcfg-$(CONFIG_MACH_EUKREA_CPUIMX25) += $(boarddir)/eukrea_cpuimx25/flash-header.imxcfg
>  imxcfg-$(CONFIG_MACH_EUKREA_CPUIMX35) += $(boarddir)/eukrea_cpuimx35/flash-header.imxcfg
> +imxcfg-$(CONFIG_MACH_KINDLE3) += $(boarddir)/kindle3/flash-header.imxcfg
>  imxcfg-$(CONFIG_TX53_REV_1011) += $(boarddir)/karo-tx53/flash-header-tx53-rev1011.imxcfg
>  imxcfg-$(CONFIG_TX53_REV_XX30) += $(boarddir)/karo-tx53/flash-header-tx53-revxx30.imxcfg
>  ifneq ($(imxcfg-y),)
> diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
> index 9241b66..480ae8b 100644
> --- a/arch/arm/boards/Makefile
> +++ b/arch/arm/boards/Makefile
> @@ -59,6 +59,7 @@ obj-$(CONFIG_MACH_HIGHBANK)			+= highbank/
>  obj-$(CONFIG_MACH_IMX21ADS)			+= freescale-mx21-ads/
>  obj-$(CONFIG_MACH_IMX233_OLINUXINO)		+= imx233-olinuxino/
>  obj-$(CONFIG_MACH_IMX27ADS)			+= freescale-mx27-ads/
> +obj-$(CONFIG_MACH_KINDLE3)			+= kindle3/
>  obj-$(CONFIG_MACH_LENOVO_IX4_300D)		+= lenovo-ix4-300d/
>  obj-$(CONFIG_MACH_LUBBOCK)			+= lubbock/
>  obj-$(CONFIG_MACH_MAINSTONE)			+= mainstone/
> diff --git a/arch/arm/boards/kindle3/Makefile b/arch/arm/boards/kindle3/Makefile
> new file mode 100644
> index 0000000..86c7462
> --- /dev/null
> +++ b/arch/arm/boards/kindle3/Makefile
> @@ -0,0 +1,2 @@
> +obj-y += kindle3.o
> +lwl-y += lowlevel.o
> diff --git a/arch/arm/boards/kindle3/env/bin/init b/arch/arm/boards/kindle3/env/bin/init

You should use defenv-2. I am trying to get rid of defenv-1 and I
already have a patch in my queue eliminating it. Well, you have copied
everything from defenv-1 to your board directory, so you won't be
affected by this elimination ;)

Anyway, here is the walk-through for defenv-2 conversion.

- select HAVE_DEFAULT_ENVIRONMENT_NEW in your board kconfig.

> new file mode 100644
> index 0000000..4e1c0e2
> --- /dev/null
> +++ b/arch/arm/boards/kindle3/env/bin/init
> @@ -0,0 +1,37 @@
> +#!/bin/sh
> +
> +export PATH=/env/bin
> +
> +global hostname
> +global autoboot_timeout
> +global boot.default
> +global linux.bootargs.base
> +global linux.bootargs.console
> +#linux.bootargs.dyn.* will be cleared at the beginning of boot
> +
> +[ -z "${global.hostname}" ] && global.hostname=kindle3
> +[ -z "${global.autoboot_timeout}" ] && global.autoboot_timeout=3
> +[ -z "${global.boot.default}" ] && global.boot.default=mmc_kernel
> +
> +[ -e /env/config-board ] && /env/config-board
> +/env/config
> +
> +global board.serial16
> +global board.revision16
> +set_serials
> +
> +echo
> +if gpio_get_value 63; then
> +    usbserial
> +    autoboot_timeout=60
> +fi

This part could be a script in /env/init/, then it will be automatically
executed.

> +
> +echo -n "Hit any key to stop autoboot: "
> +timeout -a $global.autoboot_timeout
> +if [ $? != 0 ]; then
> +	echo
> +	echo
> +	exit
> +fi
> +
> +boot
> diff --git a/arch/arm/boards/kindle3/env/bin/set_serials b/arch/arm/boards/kindle3/env/bin/set_serials

Move this to /env/init/set_serials to let it automatically execute.

> new file mode 100644
> index 0000000..e7e0881
> --- /dev/null
> +++ b/arch/arm/boards/kindle3/env/bin/set_serials
> @@ -0,0 +1,18 @@
> +#!/bin/sh
> +
> +# 16-byte alphanumeric containing the serial number
> +# SN is the first 16 bytes before the bootloader
> +if test -b /dev/disk0.serial; then
> +	if memcpy -s /dev/disk0.serial -d tmp_serial16 -b 0 0 16; then
> +		readf tmp_serial16 global.board.serial16
> +	fi
> +fi
> +[ -f tmp_serial16 ] && rm tmp_serial16
> +
> +# 16-byte alphanumeric containing the board revision
> +if test -b /dev/disk0.imx_header; then
> +	if memcpy -s /dev/disk0.imx_header -d tmp_revision16 -b 2032 0 16; then
> +		readf tmp_revision16 global.board.revision16
> +	fi
> +fi
> +[ -f tmp_revision16 ] && rm tmp_revision16
> diff --git a/arch/arm/boards/kindle3/env/boot/mmc_kernel b/arch/arm/boards/kindle3/env/boot/mmc_kernel
> new file mode 100644
> index 0000000..c6145b8
> --- /dev/null
> +++ b/arch/arm/boards/kindle3/env/boot/mmc_kernel
> @@ -0,0 +1,7 @@
> +#!/bin/sh
> +# Boot the Amazon factory-shipped kernel uimage stored on
> +# the eMMC at MOVINAND_OFFSET_KERNEL=266240.
> +
> +global linux.bootargs.dyn.root="root=/dev/mmcblk0p1 ro"
> +
> +bootm -c -a 0x80008000 /dev/disk0.kernel
> diff --git a/arch/arm/boards/kindle3/env/config b/arch/arm/boards/kindle3/env/config
> new file mode 100644
> index 0000000..9b95330
> --- /dev/null
> +++ b/arch/arm/boards/kindle3/env/config
> @@ -0,0 +1,15 @@
> +#!/bin/sh
> +
> +# timeout in seconds before the default boot entry is started
> +global.autoboot_timeout=3
> +
> +# list of boot entries. These are executed in order until one
> +# succeeds. An entry can be:
> +# - a filename in /env/boot/
> +# - a full path to a directory. All files in this directory are
> +#   treated as boot files and executed in alphabetical order
> +global.boot.default=mmc_kernel
> +
> +global.linux.bootargs.base="mem=256M ip=none lpj=2555904"
> +global.linux.bootargs.console="console=ttymxc0,115200"

Create files under /env/nv named after the variables with the content of
the variables:

/env/nv/boot.default should contain "mmc_kernel"
/env/nv/linux.bootargs.base should contain "mem=256M ip=none lpj=2555904"

and so on.

> +
> diff --git a/arch/arm/boards/kindle3/flash-header.imxcfg b/arch/arm/boards/kindle3/flash-header.imxcfg
> new file mode 100644
> index 0000000..cb56acf
> --- /dev/null
> +++ b/arch/arm/boards/kindle3/flash-header.imxcfg
> @@ -0,0 +1,24 @@
> +soc imx35
> +loadaddr 0x87eff400
> +dcdofs 0x400
> +
> +wm 32 0x53f80004 0x00821000
> +wm 32 0x53f80004 0x00821000
> +wm 32 0xb8001010 0x00000002
> +wm 32 0xb8001010 0x00000004
> +wm 32 0xb8001004 0x0019672f
> +wm 32 0xb8001000 0x93100000
> +wm 8 0x80000400 0xda
> +wm 32 0xb8001000 0xa3100000
> +wm 32 0x80000000 0x12344321
> +wm 32 0x80000000 0x12344321
> +wm 32 0xb8001000 0xb3100000
> +wm 8 0x80000033 0xda
> +wm 8 0x82000000 0xff
> +wm 32 0xb8001000 0x83226080
> +wm 32 0xb8001010 0x0000000c
> +wm 32 0x80000000 0xdeadbeef
> +wm 32 0xb8001030 0x00e78000
> +wm 32 0x43fac004 0x00000004
> +wm 32 0x43fac328 0x00002100
> +wm 32 0x43fac7d0 0x00000000
> diff --git a/arch/arm/boards/kindle3/kindle3.c b/arch/arm/boards/kindle3/kindle3.c
> new file mode 100644
> index 0000000..c819588
> --- /dev/null
> +++ b/arch/arm/boards/kindle3/kindle3.c
> @@ -0,0 +1,354 @@
> +/*
> + * (C) 2007 Pengutronix, Sascha Hauer <s.hauer@pengutronix.de>
> + * (C) 2016 Alexander Kurz <akurz@blala.de>
> + *
> + * See file CREDITS for list of people who contributed to this
> + * project.
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
> + *
> + * Board support for the Amazon Kindle 3rd generation
> + */
> +
> +#include <common.h>
> +#include <command.h>
> +#include <driver.h>
> +#include <init.h>
> +#include <bootsource.h>
> +#include <io.h>
> +#include <environment.h>
> +#include <generated/mach-types.h>
> +#include <asm/armlinux.h>
> +#include <asm/mmu.h>
> +#include <asm/setup.h>
> +#include <mach/imx35-regs.h>
> +#include <mach/imx-pll.h>
> +#include <mach/iomux-mx35.h>
> +#include <mach/devices-imx35.h>
> +#include <mach/generic.h>
> +#include <usb/fsl_usb2.h>
> +#include <mach/usb.h>
> +#include <mach/spi.h>
> +#include <spi/spi.h>
> +#include <magicvar.h>
> +
> +/* 16 byte id for serial number */
> +#define ATAG_SERIAL16   0x5441000a
> +/* 16 byte id for a board revision */
> +#define ATAG_REVISION16 0x5441000b
> +
> +struct char16_tag {
> +	char data[16];
> +};
> +
> +static struct tag *setup_16char_tag(struct tag *params, uint32_t tag,
> +				    const char *value)
> +{
> +	struct char16_tag *target;
> +	target = ((void *) params) + sizeof(struct tag_header);
> +	params->hdr.tag = tag;
> +	params->hdr.size = tag_size(char16_tag);
> +	memcpy(target->data, value, sizeof target->data);
> +	return tag_next(params);
> +}
> +
> +static const char *get_env_16char_tag(const char *tag)
> +{
> +	static const char *default16 = "0000000000000000";
> +	const char *value;
> +	value = getenv(tag);
> +	if (!value) {
> +		printf("env var %s not found, using default\n", tag);
> +		return default16;
> +	}
> +	if (strlen(value) != 16) {
> +		printf("env var %s: expecting 16 characters, using default\n",
> +			tag);
> +		return default16;
> +	}
> +	printf("%s: %s\n", tag, value);
> +	return value;
> +}
> +
> +BAREBOX_MAGICVAR_NAMED(global_atags_serial16, global.board.serial16,
> +	"Pass the kindle Serial as vendor-specific ATAG to linux");
> +BAREBOX_MAGICVAR_NAMED(global_atags_revision16, global.board.revision16,
> +	"Pass the kindle BoardId as vendor-specific ATAG to linux");
> +
> +/* The Kindle3 Kernel expects two custom ATAGs, ATAG_REVISION16 describing
> + * the board and ATAG_SERIAL16 to identify the individual device.
> + */
> +struct tag *kindle3_append_atags(struct tag *params)
> +{
> +	params = setup_16char_tag(params, ATAG_SERIAL16,
> +				get_env_16char_tag("global.board.serial16"));
> +	params = setup_16char_tag(params, ATAG_REVISION16,
> +				get_env_16char_tag("global.board.revision16"));
> +	return params;
> +}
> +
> +#ifdef CONFIG_USB_GADGET
> +static struct fsl_usb2_platform_data kindle3_usb_info = {
> +	.operating_mode = FSL_USB2_DR_DEVICE,
> +	.phy_mode = FSL_USB2_PHY_UTMI,
> +};
> +#endif
> +
> +/* SPI master devices. */
> +static int kindle3_spi0_internal_chipselect[] = {
> +	IMX_GPIO_NR(1, 18),
> +};
> +
> +static struct spi_imx_master kindle3_spi0_info = {
> +	.chipselect	= kindle3_spi0_internal_chipselect,
> +	.num_chipselect	= ARRAY_SIZE(kindle3_spi0_internal_chipselect),
> +};
> +
> +static const struct spi_board_info kindle3_spi_board_info[] = {
> +	{
> +		.name		= "mc13892",
> +		.bus_num	= 0,
> +		.chip_select	= 0,
> +		.mode		= SPI_CS_HIGH,
> +	},
> +};
> +
> +static int kindle3_mmu_init(void)
> +{
> +	l2x0_init((void __iomem *)0x30000000, 0x00030024, 0x00000000);
> +
> +	return 0;
> +}
> +postmmu_initcall(kindle3_mmu_init);
> +
> +static int kindle3_devices_init(void)
> +{
> +#ifdef CONFIG_USB_GADGET
> +	unsigned int tmp;
> +#endif
> +	imx35_add_mmc0(NULL);
> +
> +#ifdef CONFIG_USB_GADGET
> +	/* Workaround ENGcm09152 */
> +	tmp = readl(MX35_USB_OTG_BASE_ADDR + 0x608);
> +	writel(tmp | (1 << 23), MX35_USB_OTG_BASE_ADDR + 0x608);
> +	add_generic_device("fsl-udc", DEVICE_ID_DYNAMIC, NULL,
> +			   MX35_USB_OTG_BASE_ADDR, 0x200,
> +			   IORESOURCE_MEM, &kindle3_usb_info);
> +#endif

use if (IS_ENABLED(CONFIG_USB_GADGET)) here instead of an ifdef. This
also lets you get rid of the ifdef around variable declaration above.

> +
> +	/* The kindle3 related linux patch published by amazon bluntly
> +	 * renamed MACH_MX35_3DS to MACH_MX35_LUIGI
> +	 */
> +	armlinux_set_architecture(MACH_TYPE_MX35_3DS);

Hurgh, it would have been so easy to register a machine type :( Anyway,
I have seen this sooo often. I'm glad we are in device tree land most of
the time nowadays.

> +static int do_cpufreq(int argc, char *argv[])
> +{
> +	unsigned long freq;
> +
> +	if (argc != 2)
> +		return COMMAND_ERROR_USAGE;
> +
> +	freq = simple_strtoul(argv[1], NULL, 0);
> +
> +	switch (freq) {
> +	case 399:
> +		writel(MPCTL_PARAM_399, MX35_CCM_BASE_ADDR + MX35_CCM_MPCTL);
> +		break;
> +	case 532:
> +		writel(MPCTL_PARAM_532, MX35_CCM_BASE_ADDR + MX35_CCM_MPCTL);
> +		break;
> +	default:
> +		return COMMAND_ERROR_USAGE;
> +	}
> +
> +	printf("Switched CPU frequency to %luMHz\n", freq);
> +
> +	return 0;
> +}
> +
> +BAREBOX_CMD_START(cpufreq)
> +	.cmd = do_cpufreq,
> +	BAREBOX_CMD_DESC("adjust CPU frequency")
> +	BAREBOX_CMD_OPTS("399|532")
> +	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
> +BAREBOX_CMD_END

Do you need this command? If not please remove it.

Otherwise this looks good.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
