Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([88.190.12.23])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SmOho-0005iR-Ff
 for barebox@lists.infradead.org; Wed, 04 Jul 2012 12:29:18 +0000
Message-ID: <4FF43709.8000400@free-electrons.com>
Date: Wed, 04 Jul 2012 14:28:57 +0200
From: Maxime Ripard <maxime.ripard@free-electrons.com>
MIME-Version: 1.0
References: <1341238494-30914-1-git-send-email-maxime.ripard@free-electrons.com>
 <1341238494-30914-2-git-send-email-maxime.ripard@free-electrons.com>
 <20120703181204.GX2698@pengutronix.de>
In-Reply-To: <20120703181204.GX2698@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/2] Add support for the Crystalfontz CFA-10036 board
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Brian Lilly <brian@crystalfontz.com>

Hi Sascha,

Le 03/07/2012 20:12, Sascha Hauer a =E9crit :
> Hi Maxime,
> =

> The patch looks good. I can apply it as is if you wish to or wait until
> you had a look at the new defenv.

I began to work on the new defenv. It definitely looks more flexible :)
I'll resend a new version of this patch using it once I'll be done, so I
guess you'll have to wait a little :)

Thanks,
Maxime

> On Mon, Jul 02, 2012 at 04:14:54PM +0200, Maxime Ripard wrote:
>> This patch adds initial support for the CFA-10036 module.
>>
>> The module basically has a iMX28 SoC, plus a micro-SD slot, 3 pins to
>> access the DUART, a USB OTG port, a OLED screen using the Solomon
>> SSD1307 controller over I2C and a 200-pins SODIMM port to plug an
>> expansion board.
>>
>> Support for this board and the additional devices will come
>> eventually.
>>
>> For now, only the DUART and the MMC controller are used.
>>
>> Signed-off-by: Maxime Ripard <maxime.ripard@free-electrons.com>
>> Cc: Brian Lilly <brian@crystalfontz.com>
>> ---
>>  arch/arm/Makefile                                |    1 +
>>  arch/arm/boards/crystalfontz-cfa10036/Makefile   |    1 +
>>  arch/arm/boards/crystalfontz-cfa10036/cfa10036.c |  106 +++++++++++++++=
+++++++
>>  arch/arm/boards/crystalfontz-cfa10036/config.h   |   16 ++++
>>  arch/arm/boards/crystalfontz-cfa10036/env/config |   47 ++++++++++
>>  arch/arm/configs/cfa10036_defconfig              |   40 ++++++++
>>  arch/arm/mach-mxs/Kconfig                        |    7 ++
>>  7 files changed, 218 insertions(+)
>>  create mode 100644 arch/arm/boards/crystalfontz-cfa10036/Makefile
>>  create mode 100644 arch/arm/boards/crystalfontz-cfa10036/cfa10036.c
>>  create mode 100644 arch/arm/boards/crystalfontz-cfa10036/config.h
>>  create mode 100644 arch/arm/boards/crystalfontz-cfa10036/env/config
>>  create mode 100644 arch/arm/configs/cfa10036_defconfig
>>
>> diff --git a/arch/arm/Makefile b/arch/arm/Makefile
>> index bd684dc..b8280fe 100644
>> --- a/arch/arm/Makefile
>> +++ b/arch/arm/Makefile
>> @@ -118,6 +118,7 @@ board-$(CONFIG_MACH_MX23EVK)			:=3D freescale-mx23-e=
vk
>>  board-$(CONFIG_MACH_CHUMBY)			:=3D chumby_falconwing
>>  board-$(CONFIG_MACH_TX28)			:=3D karo-tx28
>>  board-$(CONFIG_MACH_MX28EVK)			:=3D freescale-mx28-evk
>> +board-$(CONFIG_MACH_CFA10036)			:=3D crystalfontz-cfa10036
>>  board-$(CONFIG_MACH_FREESCALE_MX51_PDK)		:=3D freescale-mx51-pdk
>>  board-$(CONFIG_MACH_FREESCALE_MX53_LOCO)	:=3D freescale-mx53-loco
>>  board-$(CONFIG_MACH_FREESCALE_MX53_SMD)		:=3D freescale-mx53-smd
>> diff --git a/arch/arm/boards/crystalfontz-cfa10036/Makefile b/arch/arm/b=
oards/crystalfontz-cfa10036/Makefile
>> new file mode 100644
>> index 0000000..75f0020
>> --- /dev/null
>> +++ b/arch/arm/boards/crystalfontz-cfa10036/Makefile
>> @@ -0,0 +1 @@
>> +obj-y +=3D cfa10036.o
>> diff --git a/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c b/arch/arm=
/boards/crystalfontz-cfa10036/cfa10036.c
>> new file mode 100644
>> index 0000000..e454afd
>> --- /dev/null
>> +++ b/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c
>> @@ -0,0 +1,106 @@
>> +/*
>> + * Copyright (C) 2010 Juergen Beisert, Pengutronix <kernel@pengutronix.=
de>
>> + * Copyright (C) 2011 Marc Kleine-Budde, Pengutronix <mkl@pengutronix.d=
e>
>> + * Copyright (C) 2011 Wolfram Sang, Pengutronix <w.sang@pengutronix.de>
>> + * Copyright (C) 2012 Maxime Ripard, Free Electrons <maxime.ripard@free=
-electrons.com>
>> + *
>> + * This program is free software; you can redistribute it and/or
>> + * modify it under the terms of the GNU General Public License as
>> + * published by the Free Software Foundation; either version 2 of
>> + * the License, or (at your option) any later version.
>> + *
>> + * This program is distributed in the hope that it will be useful,
>> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
>> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>> + * GNU General Public License for more details.
>> + */
>> +
>> +#include <common.h>
>> +#include <environment.h>
>> +#include <errno.h>
>> +#include <fec.h>
>> +#include <gpio.h>
>> +#include <init.h>
>> +#include <mci.h>
>> +#include <io.h>
>> +
>> +#include <mach/clock.h>
>> +#include <mach/imx-regs.h>
>> +#include <mach/iomux-imx28.h>
>> +#include <mach/mci.h>
>> +
>> +#include <asm/armlinux.h>
>> +#include <asm/mmu.h>
>> +
>> +#include <mach/fb.h>
>> +
>> +#include <generated/mach-types.h>
>> +
>> +/* setup the CPU card internal signals */
>> +static const uint32_t cfa10036_pads[] =3D {
>> +	/* duart */
>> +	FUNC(2) | PORTF(3, 2) | VE_3_3V,
>> +	FUNC(2) | PORTF(3, 3) | VE_3_3V,
>> +
>> +	/* mmc0 */
>> +	SSP0_D0 | VE_3_3V | PULLUP(1),
>> +	SSP0_D1 | VE_3_3V | PULLUP(1),
>> +	SSP0_D2 | VE_3_3V | PULLUP(1),
>> +	SSP0_D3 | VE_3_3V | PULLUP(1),
>> +	SSP0_D4 | VE_3_3V | PULLUP(1),
>> +	SSP0_D5 | VE_3_3V | PULLUP(1),
>> +	SSP0_D6 | VE_3_3V | PULLUP(1),
>> +	SSP0_D7 | VE_3_3V | PULLUP(1),
>> +	SSP0_CMD | VE_3_3V | PULLUP(1),
>> +	SSP0_CD | VE_3_3V | PULLUP(1),
>> +	SSP0_SCK | VE_3_3V | BITKEEPER(0),
>> +	/* MCI slot power control 1 =3D off */
>> +	PWM3_GPIO | VE_3_3V | GPIO_OUT | GPIO_VALUE(0),
>> +};
>> +
>> +static struct mxs_mci_platform_data mci_pdata =3D {
>> +	.caps =3D MMC_MODE_8BIT,
>> +	.voltages =3D MMC_VDD_32_33 | MMC_VDD_33_34,	/* fixed to 3.3 V */
>> +	.f_min =3D 400 * 1000,
>> +	.f_max =3D 25000000,
>> +};
>> +
>> +static int cfa10036_mem_init(void)
>> +{
>> +	arm_add_mem_device("ram0", IMX_MEMORY_BASE, 128 * 1024 * 1024);
>> +
>> +	return 0;
>> +}
>> +mem_initcall(cfa10036_mem_init);
>> +
>> +static int cfa10036_devices_init(void)
>> +{
>> +	int i;
>> +
>> +	/* initizalize muxing */
>> +	for (i =3D 0; i < ARRAY_SIZE(cfa10036_pads); i++)
>> +		imx_gpio_mode(cfa10036_pads[i]);
>> +
>> +	/* enable IOCLK0 to run at the PLL frequency */
>> +	imx_set_ioclk(0, 480000000);
>> +	/* run the SSP unit clock at 100 MHz */
>> +	imx_set_sspclk(0, 100000000, 1);
>> +
>> +	armlinux_set_bootparams((void *)IMX_MEMORY_BASE + 0x100);
>> +	armlinux_set_architecture(MACH_TYPE_CFA10036);
>> +
>> +	add_generic_device("mxs_mci", 0, NULL, IMX_SSP0_BASE, 0,
>> +			   IORESOURCE_MEM, &mci_pdata);
>> +
>> +	return 0;
>> +}
>> +device_initcall(cfa10036_devices_init);
>> +
>> +static int cfa10036_console_init(void)
>> +{
>> +	add_generic_device("stm_serial", 0, NULL, IMX_DBGUART_BASE, 8192,
>> +			   IORESOURCE_MEM, NULL);
>> +
>> +	return 0;
>> +}
>> +console_initcall(cfa10036_console_init);
>> diff --git a/arch/arm/boards/crystalfontz-cfa10036/config.h b/arch/arm/b=
oards/crystalfontz-cfa10036/config.h
>> new file mode 100644
>> index 0000000..8f18fda
>> --- /dev/null
>> +++ b/arch/arm/boards/crystalfontz-cfa10036/config.h
>> @@ -0,0 +1,16 @@
>> +/*
>> + * This program is free software; you can redistribute it and/or
>> + * modify it under the terms of the GNU General Public License as
>> + * published by the Free Software Foundation; either version 2 of
>> + * the License, or (at your option) any later version.
>> + *
>> + * This program is distributed in the hope that it will be useful,
>> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
>> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>> + * GNU General Public License for more details.
>> + */
>> +
>> +#ifndef _CONFIG_H_
>> +# define _CONFIG_H_
>> +
>> +#endif /* _CONFIG_H_ */
>> diff --git a/arch/arm/boards/crystalfontz-cfa10036/env/config b/arch/arm=
/boards/crystalfontz-cfa10036/env/config
>> new file mode 100644
>> index 0000000..5d1bd48
>> --- /dev/null
>> +++ b/arch/arm/boards/crystalfontz-cfa10036/env/config
>> @@ -0,0 +1,47 @@
>> +#!/bin/sh
>> +
>> +hostname=3Dcfa10036
>> +#user=3D
>> +
>> +# use 'dhcp' to do dhcp in barebox and in kernel
>> +# use 'none' if you want to skip kernel ip autoconfiguration
>> +ip=3Dnone
>> +
>> +# or set your networking parameters here
>> +#eth0.ipaddr=3Da.b.c.d
>> +#eth0.netmask=3Da.b.c.d
>> +#eth0.serverip=3Da.b.c.d
>> +#eth0.gateway=3Da.b.c.d
>> +#eth0.ethaddr=3Dde:ad:be:ef:00:00
>> +
>> +# can be either 'tftp', 'nfs', 'nand', 'nor', 'file' or 'disk'
>> +kernel_loc=3Dfile
>> +# can be either 'net', 'nand', 'nor', 'file', 'disk' or 'initrd'
>> +rootfs_loc=3Ddisk
>> +# can be either 'nand', 'nor', 'nfs', 'tftp', 'disk', 'file' or 'empty'
>> +oftree_loc=3Dfile
>> +
>> +# for flash based rootfs: 'jffs2' or 'ubifs'
>> +# in case of disk any regular filesystem like 'ext2', 'ext3', 'reiserfs'
>> +rootfs_type=3Dext3
>> +# where is the rootfs in case of 'rootfs_loc=3Ddisk' (linux name)
>> +rootfs_part_linux_dev=3Dmmcblk0p3
>> +rootfsimage=3Drootfs-${hostname}.$rootfs_type
>> +
>> +# where is the kernel image in case of 'kernel_loc=3Ddisk'
>> +kernel_part=3Ddisk0.1
>> +oftree_part=3Ddisk0.1
>> +kernel_part_type=3Dfat
>> +kernel_part_type=3Dfat
>> +
>> +kernelimage=3DzImage-$hostname
>> +oftreeimage=3Doftree-$hostname
>> +
>> +bareboxenvimage=3Dbarebox-${hostname}.bin
>> +
>> +autoboot_timeout=3D3
>> +
>> +bootargs=3D"console=3DttyAMA0,115200"
>> +
>> +# set a fancy prompt (if support is compiled in)
>> +PS1=3D"\e[1;32mbarebox@\e[1;31m\h:\w\e[0m "
>> diff --git a/arch/arm/configs/cfa10036_defconfig b/arch/arm/configs/cfa1=
0036_defconfig
>> new file mode 100644
>> index 0000000..4c35c6b
>> --- /dev/null
>> +++ b/arch/arm/configs/cfa10036_defconfig
>> @@ -0,0 +1,40 @@
>> +CONFIG_ARCH_MXS=3Dy
>> +CONFIG_ARCH_IMX28=3Dy
>> +CONFIG_MACH_CFA10036=3Dy
>> +CONFIG_AEABI=3Dy
>> +CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=3Dy
>> +CONFIG_MMU=3Dy
>> +CONFIG_TEXT_BASE=3D0x43000000
>> +CONFIG_MALLOC_SIZE=3D0x800000
>> +CONFIG_BROKEN=3Dy
>> +CONFIG_LONGHELP=3Dy
>> +CONFIG_GLOB=3Dy
>> +CONFIG_HUSH_FANCY_PROMPT=3Dy
>> +CONFIG_CMDLINE_EDITING=3Dy
>> +CONFIG_AUTO_COMPLETE=3Dy
>> +CONFIG_DEFAULT_ENVIRONMENT_GENERIC=3Dy
>> +CONFIG_DEFAULT_ENVIRONMENT_PATH=3D"arch/arm/boards/crystalfontz-cfa1003=
6/env"
>> +CONFIG_DEBUG_INFO=3Dy
>> +CONFIG_CMD_EDIT=3Dy
>> +CONFIG_CMD_SLEEP=3Dy
>> +CONFIG_CMD_SAVEENV=3Dy
>> +CONFIG_CMD_EXPORT=3Dy
>> +CONFIG_CMD_PRINTENV=3Dy
>> +CONFIG_CMD_READLINE=3Dy
>> +CONFIG_CMD_ECHO_E=3Dy
>> +CONFIG_CMD_MTEST=3Dy
>> +CONFIG_CMD_MTEST_ALTERNATIVE=3Dy
>> +CONFIG_CMD_BOOTM_SHOW_TYPE=3Dy
>> +CONFIG_CMD_BOOTM_OFTREE=3Dy
>> +CONFIG_CMD_RESET=3Dy
>> +CONFIG_CMD_GO=3Dy
>> +CONFIG_CMD_OFTREE=3Dy
>> +CONFIG_CMD_TIMEOUT=3Dy
>> +CONFIG_CMD_PARTITION=3Dy
>> +CONFIG_CMD_GPIO=3Dy
>> +# CONFIG_SPI is not set
>> +CONFIG_MCI=3Dy
>> +CONFIG_MCI_STARTUP=3Dy
>> +CONFIG_MCI_MXS=3Dy
>> +CONFIG_FS_FAT=3Dy
>> +CONFIG_FS_FAT_LFN=3Dy
>> diff --git a/arch/arm/mach-mxs/Kconfig b/arch/arm/mach-mxs/Kconfig
>> index 3348a3c..7502a01 100644
>> --- a/arch/arm/mach-mxs/Kconfig
>> +++ b/arch/arm/mach-mxs/Kconfig
>> @@ -6,12 +6,14 @@ config ARCH_TEXT_BASE
>>  	default 0x42000000 if MACH_CHUMBY
>>  	default 0x47000000 if MACH_TX28
>>  	default 0x47000000 if MACH_MX28EVK
>> +	default 0x47000000 if MACH_CFA10036
>>  =

>>  config BOARDINFO
>>  	default "Freescale i.MX23-EVK" if MACH_MX23EVK
>>  	default "Chumby Falconwing" if MACH_CHUMBY
>>  	default "Karo TX28" if MACH_TX28
>>  	default "Freescale i.MX28-EVK" if MACH_MX28EVK
>> +	default "Crystalfontz CFA-10036" if MACH_CFA10036
>>  =

>>  comment "Freescale i.MX System-on-Chip"
>>  =

>> @@ -64,6 +66,11 @@ config MACH_MX28EVK
>>  	help
>>  	  Say Y here if you are using the Freescale i.MX28-EVK board
>>  =

>> +config MACH_CFA10036
>> +	bool "cfa-10036"
>> +	help
>> +	  Say Y here if you are using the Crystalfontz CFA-10036 module
>> +
>>  endchoice
>>  =

>>  endif
>> -- =

>> 1.7.9.5
>>
>>
>> _______________________________________________
>> barebox mailing list
>> barebox@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/barebox
>>
> =



-- =

Maxime Ripard, Free Electrons
Kernel, drivers, real-time and embedded Linux
development, consulting, training and support.
http://free-electrons.com



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
