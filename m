Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UNI1g-0001lY-MM
 for barebox@lists.infradead.org; Wed, 03 Apr 2013 07:22:34 +0000
Date: Wed, 3 Apr 2013 09:22:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130403072230.GD20989@pengutronix.de>
References: <1364906887-21907-1-git-send-email-t.gamez@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1364906887-21907-1-git-send-email-t.gamez@phytec.de>
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
Subject: Re: [RFCv2 PATCH 1/2] OMAP: Move bootsource functions
To: Teresa =?iso-8859-15?Q?G=E1mez?= <t.gamez@phytec.de>
Cc: barebox@lists.infradead.org

On Tue, Apr 02, 2013 at 02:48:06PM +0200, Teresa G=E1mez wrote:
> The bootsource functions are not specific to the first stage
> bootloader. They may also be used for detecting the
> bootsource to decide where to load the environment from.
> =

> Also clean up includes in board files.
> =

> Signed-off-by: Teresa G=E1mez <t.gamez@phytec.de>

Applied, thanks

Sascha

> ---
>  arch/arm/boards/beagle/board.c            |    1 -
>  arch/arm/boards/beaglebone/board.c        |    1 -
>  arch/arm/boards/panda/board.c             |    2 +-
>  arch/arm/boards/pcm049/board.c            |    1 -
>  arch/arm/boards/phycard-a-l1/pca-a-l1.c   |    1 -
>  arch/arm/boards/phycard-a-xl2/pca-a-xl2.c |    1 -
>  arch/arm/mach-omap/Makefile               |    2 +-
>  arch/arm/mach-omap/am33xx_generic.c       |    2 +-
>  arch/arm/mach-omap/include/mach/generic.h |   16 ++++++++++++++
>  arch/arm/mach-omap/include/mach/xload.h   |   16 --------------
>  arch/arm/mach-omap/omap3_generic.c        |    2 +-
>  arch/arm/mach-omap/omap4_generic.c        |    2 +-
>  arch/arm/mach-omap/omap4_rom_usb.c        |    2 +-
>  arch/arm/mach-omap/omap_generic.c         |   32 +++++++++++++++++++++++=
++++++
>  arch/arm/mach-omap/xload.c                |   13 +----------
>  15 files changed, 55 insertions(+), 39 deletions(-)
>  delete mode 100644 arch/arm/mach-omap/include/mach/xload.h
>  create mode 100644 arch/arm/mach-omap/omap_generic.c
> =

> diff --git a/arch/arm/boards/beagle/board.c b/arch/arm/boards/beagle/boar=
d.c
> index bed4651..972c05e 100644
> --- a/arch/arm/boards/beagle/board.c
> +++ b/arch/arm/boards/beagle/board.c
> @@ -62,7 +62,6 @@
>  #include <i2c/i2c.h>
>  #include <linux/err.h>
>  #include <usb/ehci.h>
> -#include <mach/xload.h>
>  =

>  #ifdef CONFIG_DRIVER_SERIAL_NS16550
>  =

> diff --git a/arch/arm/boards/beaglebone/board.c b/arch/arm/boards/beagleb=
one/board.c
> index e4b8b0a..56e69a2 100644
> --- a/arch/arm/boards/beaglebone/board.c
> +++ b/arch/arm/boards/beaglebone/board.c
> @@ -45,7 +45,6 @@
>  #include <linux/err.h>
>  #include <linux/phy.h>
>  #include <usb/ehci.h>
> -#include <mach/xload.h>
>  #include <mach/am33xx-devices.h>
>  #include <mach/am33xx-mux.h>
>  #include <mach/wdt.h>
> diff --git a/arch/arm/boards/panda/board.c b/arch/arm/boards/panda/board.c
> index f1fbd5e..2518d3a 100644
> --- a/arch/arm/boards/panda/board.c
> +++ b/arch/arm/boards/panda/board.c
> @@ -20,7 +20,7 @@
>  #include <asm/mmu.h>
>  #include <mach/gpio.h>
>  #include <envfs.h>
> -#include <mach/xload.h>
> +#include <mach/generic.h>
>  #include <i2c/i2c.h>
>  #include <gpio.h>
>  #include <led.h>
> diff --git a/arch/arm/boards/pcm049/board.c b/arch/arm/boards/pcm049/boar=
d.c
> index 680539a..b0d689b 100644
> --- a/arch/arm/boards/pcm049/board.c
> +++ b/arch/arm/boards/pcm049/board.c
> @@ -36,7 +36,6 @@
>  #include <mach/gpio.h>
>  #include <mach/gpmc.h>
>  #include <mach/gpmc_nand.h>
> -#include <mach/xload.h>
>  #include <i2c/i2c.h>
>  =

>  static int pcm049_console_init(void)
> diff --git a/arch/arm/boards/phycard-a-l1/pca-a-l1.c b/arch/arm/boards/ph=
ycard-a-l1/pca-a-l1.c
> index 234d689..7cf6ae8 100644
> --- a/arch/arm/boards/phycard-a-l1/pca-a-l1.c
> +++ b/arch/arm/boards/phycard-a-l1/pca-a-l1.c
> @@ -54,7 +54,6 @@
>  #include <mach/gpmc.h>
>  #include <mach/gpmc_nand.h>
>  #include <mach/omap_hsmmc.h>
> -#include <mach/xload.h>
>  #include <mach/sdrc.h>
>  #include <mach/omap3-silicon.h>
>  #include <mach/sys_info.h>
> diff --git a/arch/arm/boards/phycard-a-xl2/pca-a-xl2.c b/arch/arm/boards/=
phycard-a-xl2/pca-a-xl2.c
> index be7060f..8f79d98 100644
> --- a/arch/arm/boards/phycard-a-xl2/pca-a-xl2.c
> +++ b/arch/arm/boards/phycard-a-xl2/pca-a-xl2.c
> @@ -35,7 +35,6 @@
>  #include <mach/gpio.h>
>  #include <mach/gpmc.h>
>  #include <mach/gpmc_nand.h>
> -#include <mach/xload.h>
>  #include <mach/omap_hsmmc.h>
>  #include <mach/omap4-devices.h>
>  #include <i2c/i2c.h>
> diff --git a/arch/arm/mach-omap/Makefile b/arch/arm/mach-omap/Makefile
> index 38786b2..d9e00f7 100644
> --- a/arch/arm/mach-omap/Makefile
> +++ b/arch/arm/mach-omap/Makefile
> @@ -15,7 +15,7 @@
>  # GNU General Public License for more details.
>  #
>  #
> -obj-$(CONFIG_ARCH_OMAP) +=3D syslib.o omap_devices.o
> +obj-$(CONFIG_ARCH_OMAP) +=3D syslib.o omap_devices.o omap_generic.o
>  pbl-$(CONFIG_ARCH_OMAP) +=3D syslib.o
>  obj-$(CONFIG_OMAP_CLOCK_SOURCE_S32K) +=3D s32k_clksource.o
>  obj-$(CONFIG_OMAP_CLOCK_SOURCE_DMTIMER0) +=3D dmtimer0.o
> diff --git a/arch/arm/mach-omap/am33xx_generic.c b/arch/arm/mach-omap/am3=
3xx_generic.c
> index d3014c2..059c55e 100644
> --- a/arch/arm/mach-omap/am33xx_generic.c
> +++ b/arch/arm/mach-omap/am33xx_generic.c
> @@ -24,7 +24,7 @@
>  #include <mach/am33xx-silicon.h>
>  #include <mach/am33xx-clock.h>
>  #include <mach/sys_info.h>
> -#include <mach/xload.h>
> +#include <mach/generic.h>
>  #include <mach/am33xx-generic.h>
>  =

>  void __noreturn reset_cpu(unsigned long addr)
> diff --git a/arch/arm/mach-omap/include/mach/generic.h b/arch/arm/mach-om=
ap/include/mach/generic.h
> index c801a06..edc4f1d 100644
> --- a/arch/arm/mach-omap/include/mach/generic.h
> +++ b/arch/arm/mach-omap/include/mach/generic.h
> @@ -1,3 +1,5 @@
> +#ifndef _MACH_GENERIC_H
> +#define _MACH_GENERIC_H
>  =

>  /* I2C controller revisions */
>  #define OMAP_I2C_REV_2			0x20
> @@ -24,3 +26,17 @@
>  #else
>  #define cpu_is_omap4xxx()	(0)
>  #endif
> +
> +enum omap_boot_src {
> +	OMAP_BOOTSRC_UNKNOWN,
> +	OMAP_BOOTSRC_MMC1,
> +	OMAP_BOOTSRC_NAND,
> +	OMAP_BOOTSRC_SPI1,
> +	OMAP_BOOTSRC_USB1,
> +};
> +
> +enum omap_boot_src am33xx_bootsrc(void);
> +enum omap_boot_src omap3_bootsrc(void);
> +enum omap_boot_src omap4_bootsrc(void);
> +
> +#endif
> diff --git a/arch/arm/mach-omap/include/mach/xload.h b/arch/arm/mach-omap=
/include/mach/xload.h
> deleted file mode 100644
> index d632735..0000000
> --- a/arch/arm/mach-omap/include/mach/xload.h
> +++ /dev/null
> @@ -1,16 +0,0 @@
> -#ifndef _MACH_XLOAD_H
> -#define _MACH_XLOAD_H
> -
> -enum omap_boot_src {
> -	OMAP_BOOTSRC_UNKNOWN,
> -	OMAP_BOOTSRC_MMC1,
> -	OMAP_BOOTSRC_NAND,
> -	OMAP_BOOTSRC_SPI1,
> -	OMAP_BOOTSRC_USB1,
> -};
> -
> -enum omap_boot_src am33xx_bootsrc(void);
> -enum omap_boot_src omap3_bootsrc(void);
> -enum omap_boot_src omap4_bootsrc(void);
> -
> -#endif /* _MACH_XLOAD_H */
> diff --git a/arch/arm/mach-omap/omap3_generic.c b/arch/arm/mach-omap/omap=
3_generic.c
> index a21a938..10e03ae 100644
> --- a/arch/arm/mach-omap/omap3_generic.c
> +++ b/arch/arm/mach-omap/omap3_generic.c
> @@ -40,7 +40,7 @@
>  #include <mach/wdt.h>
>  #include <mach/sys_info.h>
>  #include <mach/syslib.h>
> -#include <mach/xload.h>
> +#include <mach/generic.h>
>  =

>  /**
>   * @brief Reset the CPU
> diff --git a/arch/arm/mach-omap/omap4_generic.c b/arch/arm/mach-omap/omap=
4_generic.c
> index 2a09eb6..e1edffa 100644
> --- a/arch/arm/mach-omap/omap4_generic.c
> +++ b/arch/arm/mach-omap/omap4_generic.c
> @@ -5,7 +5,7 @@
>  #include <mach/omap4-silicon.h>
>  #include <mach/omap4-mux.h>
>  #include <mach/syslib.h>
> -#include <mach/xload.h>
> +#include <mach/generic.h>
>  #include <mach/gpmc.h>
>  #include <mach/gpio.h>
>  #include <mach/omap4_rom_usb.h>
> diff --git a/arch/arm/mach-omap/omap4_rom_usb.c b/arch/arm/mach-omap/omap=
4_rom_usb.c
> index 48d6433..7825be3 100644
> --- a/arch/arm/mach-omap/omap4_rom_usb.c
> +++ b/arch/arm/mach-omap/omap4_rom_usb.c
> @@ -33,7 +33,7 @@
>  #include <common.h>
>  #include <mach/omap4-silicon.h>
>  #include <mach/omap4_rom_usb.h>
> -#include <mach/xload.h>
> +#include <mach/generic.h>
>  #include <init.h>
>  =

>  static struct omap4_usbboot omap4_usbboot_pdata;
> diff --git a/arch/arm/mach-omap/omap_generic.c b/arch/arm/mach-omap/omap_=
generic.c
> new file mode 100644
> index 0000000..f2fd1d3
> --- /dev/null
> +++ b/arch/arm/mach-omap/omap_generic.c
> @@ -0,0 +1,32 @@
> +/*
> + * (C) Copyright 2013 Teresa G=E1mez, Phytec Messtechnik GmbH
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
> + */
> +#include <common.h>
> +#include <envfs.h>
> +#include <init.h>
> +#include <io.h>
> +#include <fs.h>
> +#include <linux/stat.h>
> +#include <mach/generic.h>
> +
> +enum omap_boot_src omap_bootsrc(void)
> +{
> +#if defined(CONFIG_ARCH_OMAP3)
> +	return omap3_bootsrc();
> +#elif defined(CONFIG_ARCH_OMAP4)
> +	return omap4_bootsrc();
> +#elif defined(CONFIG_ARCH_AM33XX)
> +	return am33xx_bootsrc();
> +#endif
> +}
> diff --git a/arch/arm/mach-omap/xload.c b/arch/arm/mach-omap/xload.c
> index 41533a9..72aa379 100644
> --- a/arch/arm/mach-omap/xload.c
> +++ b/arch/arm/mach-omap/xload.c
> @@ -6,7 +6,7 @@
>  #include <linux/mtd/mtd.h>
>  #include <fs.h>
>  #include <fcntl.h>
> -#include <mach/xload.h>
> +#include <mach/generic.h>
>  #include <sizes.h>
>  #include <filetype.h>
>  =

> @@ -158,17 +158,6 @@ static void *omap4_xload_boot_usb(void){
>  	return buf;
>  }
>  =

> -enum omap_boot_src omap_bootsrc(void)
> -{
> -#if defined(CONFIG_ARCH_OMAP3)
> -	return omap3_bootsrc();
> -#elif defined(CONFIG_ARCH_OMAP4)
> -	return omap4_bootsrc();
> -#elif defined(CONFIG_ARCH_AM33XX)
> -	return am33xx_bootsrc();
> -#endif
> -}
> -
>  /*
>   * Replaces the default shell in xload configuration
>   */
> -- =

> 1.7.0.4
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
