Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UPShO-0001gf-GF
 for barebox@lists.infradead.org; Tue, 09 Apr 2013 07:10:35 +0000
Date: Tue, 9 Apr 2013 09:10:32 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130409071032.GC1906@pengutronix.de>
References: <1365200755-8102-1-git-send-email-vicencb@gmail.com>
 <1365200755-8102-2-git-send-email-vicencb@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1365200755-8102-2-git-send-email-vicencb@gmail.com>
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
Subject: Re: [PATCH] OMAP4: add command to select next boot device priority
To: Vicente Bergas <vicencb@gmail.com>
Cc: barebox@lists.infradead.org

On Sat, Apr 06, 2013 at 12:25:55AM +0200, Vicente Bergas wrote:
> On OMAP4 SoC there is a SAR memory region (Save & Rescue)
> where the ROM code reads the device to boot from.
> This patch adds a way to set this.
> 
> Signed-off-by: Vicente Bergas <vicencb@gmail.com>
> ---
>  arch/arm/mach-omap/Makefile                     |  1 +
>  arch/arm/mach-omap/boot_order.c                 | 83 +++++++++++++++++++++++++
>  arch/arm/mach-omap/include/mach/omap4-silicon.h | 20 ++++++
>  arch/arm/mach-omap/omap4_generic.c              | 20 ++++++
>  commands/Kconfig                                |  7 +++
>  5 files changed, 131 insertions(+)
>  create mode 100644 arch/arm/mach-omap/boot_order.c
> 
> diff --git a/arch/arm/mach-omap/Makefile b/arch/arm/mach-omap/Makefile
> index d9e00f7..973068d 100644
> --- a/arch/arm/mach-omap/Makefile
> +++ b/arch/arm/mach-omap/Makefile
> @@ -30,4 +30,5 @@ obj-$(CONFIG_OMAP_GPMC) += gpmc.o devices-gpmc-nand.o
>  obj-$(CONFIG_SHELL_NONE) += xload.o
>  obj-$(CONFIG_MFD_TWL6030) += omap4_twl6030_mmc.o
>  obj-$(CONFIG_OMAP4_USBBOOT) += omap4_rom_usb.o
> +obj-$(CONFIG_CMD_BOOT_ORDER) += boot_order.o
>  obj-y += gpio.o
> diff --git a/arch/arm/mach-omap/boot_order.c b/arch/arm/mach-omap/boot_order.c
> new file mode 100644
> index 0000000..2f2846d
> --- /dev/null
> +++ b/arch/arm/mach-omap/boot_order.c
> @@ -0,0 +1,83 @@
> +/*
> + * boot_order.c - configure omap warm boot
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2
> + * as published by the Free Software Foundation.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + */
> +
> +#include <common.h>
> +#include <command.h>
> +#include <complete.h>
> +#include <mach/omap4-silicon.h>
> +
> +struct bootsrc {
> +	const char *name;
> +	uint32_t sar;
> +};
> +
> +const struct bootsrc src_list[] = {
> +	{"xip"     , OMAP44XX_SAR_BOOT_XIP     },
> +	{"xipwait" , OMAP44XX_SAR_BOOT_XIPWAIT },
> +	{"nand"    , OMAP44XX_SAR_BOOT_NAND    },
> +	{"onenand" , OMAP44XX_SAR_BOOT_ONENAND },
> +	{"mmc1"    , OMAP44XX_SAR_BOOT_MMC1    },
> +	{"mmc2_1"  , OMAP44XX_SAR_BOOT_MMC2_1  },
> +	{"mmc2_2"  , OMAP44XX_SAR_BOOT_MMC2_2  },
> +	{"uart"    , OMAP44XX_SAR_BOOT_UART    },
> +	{"usb_1"   , OMAP44XX_SAR_BOOT_USB_1   },
> +	{"usb_ulpi", OMAP44XX_SAR_BOOT_USB_ULPI},
> +	{"usb_2"   , OMAP44XX_SAR_BOOT_USB_2   },
> +};
> +
> +static uint32_t parse_device(char *str)
> +{
> +	int i;
> +
> +	for (i = 0; i < ARRAY_SIZE(src_list); i++) {
> +		if (strcmp(str, src_list[i].name) == 0)
> +			return src_list[i].sar;
> +	}
> +	printf("Unknown device '%s'\n", str);
> +	return OMAP44XX_SAR_BOOT_VOID;
> +}
> +
> +static int cmd_boot_order(int argc, char *argv[])
> +{
> +	uint32_t device_list[] = {
> +		OMAP44XX_SAR_BOOT_VOID,
> +		OMAP44XX_SAR_BOOT_VOID,
> +		OMAP44XX_SAR_BOOT_VOID,
> +		OMAP44XX_SAR_BOOT_VOID,
> +	};
> +	int i;
> +
> +	if (argc < 2)
> +		return COMMAND_ERROR_USAGE;
> +	for (i = 0; i + 1 < argc && i < ARRAY_SIZE(device_list); i++) {
> +		device_list[i] = parse_device(argv[i + 1]);
> +		if (device_list[i] == OMAP44XX_SAR_BOOT_VOID)
> +			return COMMAND_ERROR_USAGE;
> +	}
> +	omap4_set_warmboot_order(device_list);
> +	return 0;
> +}
> +
> +static const __maybe_unused char cmd_boot_order_help[] =
> +"Usage: boot_order <device 1> [<device n>]\n"
> +"Set warm boot order of up to four devices.\n"
> +"Each device can be one of:\n"
> +"xip xipwait nand onenand mmc1 mmc2_1 mmc2_2 uart usb_1 usb_ulpi usb_2\n";
> +
> +BAREBOX_CMD_START(boot_order)
> +	.cmd		= cmd_boot_order,
> +	.usage		= "boot_order <device 1> [<device n>]",
> +	BAREBOX_CMD_HELP(cmd_boot_order_help)
> +	BAREBOX_CMD_COMPLETE(empty_complete)
> +BAREBOX_CMD_END
> diff --git a/arch/arm/mach-omap/include/mach/omap4-silicon.h b/arch/arm/mach-omap/include/mach/omap4-silicon.h
> index 9e82435..666e721 100644
> --- a/arch/arm/mach-omap/include/mach/omap4-silicon.h
> +++ b/arch/arm/mach-omap/include/mach/omap4-silicon.h
> @@ -161,6 +161,25 @@
>  #define OMAP44XX_PRM_RSTCTRL_RESET	0x01
>  
>  /*
> + * SAR (Save & Rescue) memory region
> + */
> +#define OMAP44XX_SAR_RAM_BASE      0x4a326000
> +#define OMAP44XX_SAR_CH_ADDRESS    (OMAP44XX_SAR_RAM_BASE + 0xA00)
> +#define OMAP44XX_SAR_CH_START      (OMAP44XX_SAR_RAM_BASE + 0xA0C)
> +#define OMAP44XX_SAR_BOOT_VOID     0x00
> +#define OMAP44XX_SAR_BOOT_XIP      0x01
> +#define OMAP44XX_SAR_BOOT_XIPWAIT  0x02
> +#define OMAP44XX_SAR_BOOT_NAND     0x03
> +#define OMAP44XX_SAR_BOOT_ONENAND  0x04
> +#define OMAP44XX_SAR_BOOT_MMC1     0x05
> +#define OMAP44XX_SAR_BOOT_MMC2_1   0x06
> +#define OMAP44XX_SAR_BOOT_MMC2_2   0x07
> +#define OMAP44XX_SAR_BOOT_UART     0x43
> +#define OMAP44XX_SAR_BOOT_USB_1    0x45
> +#define OMAP44XX_SAR_BOOT_USB_ULPI 0x46
> +#define OMAP44XX_SAR_BOOT_USB_2    0x47
> +
> +/*
>   * Non-secure SRAM Addresses
>   * Non-secure RAM starts at 0x40300000 for GP devices. But we keep SRAM_BASE
>   * at 0x40304000(EMU base) so that our code works for both EMU and GP
> @@ -212,6 +231,7 @@ void omap4_ddr_init(const struct ddr_regs *, const struct dpll_param *);
>  void omap4_power_i2c_send(u32);
>  unsigned int omap4_revision(void);
>  noinline int omap4_scale_vcores(unsigned vsel0_pin);
> +void omap4_set_warmboot_order(u32 *device_list);
>  
>  #endif
>  
> diff --git a/arch/arm/mach-omap/omap4_generic.c b/arch/arm/mach-omap/omap4_generic.c
> index e1edffa..790746b 100644
> --- a/arch/arm/mach-omap/omap4_generic.c
> +++ b/arch/arm/mach-omap/omap4_generic.c
> @@ -41,6 +41,26 @@ void __noreturn reset_cpu(unsigned long addr)
>  	while (1);
>  }
>  
> +void omap4_set_warmboot_order(u32 *device_list)
> +{
> +	const u32 CH[] = {
> +		0xCF00AA01,
> +		0x0000000C,
> +		(device_list[0] << 16) | 0x0000,
> +		(device_list[2] << 16) | device_list[1],
> +		0x0000 | device_list[3],
> +		0x00000000,
> +		0x00000000,
> +		0x00000000,
> +		0x00000000
> +	};
> +	int i;
> +
> +	for (i = 0; i < ARRAY_SIZE(CH); i++)
> +		writel(CH[i], OMAP44XX_SAR_CH_START + i*sizeof(CH[0]));
> +	writel(OMAP44XX_SAR_CH_START, OMAP44XX_SAR_CH_ADDRESS);
> +}
> +
>  #define WATCHDOG_WSPR	0x48
>  #define WATCHDOG_WWPS	0x34
>  
> diff --git a/commands/Kconfig b/commands/Kconfig
> index 0062758..bef83e0 100644
> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -474,6 +474,13 @@ config CMD_POWEROFF
>  	depends on HAS_POWEROFF
>  	prompt "poweroff"
>  
> +config CMD_BOOT_ORDER
> +	tristate
> +	depends on ARCH_OMAP4
> +	prompt "boot_order"
> +	help
> +	  A command to choose the next boot device on a warm reset.
> +

Please move the config option to arch/arm/mach-omap/ also.

Otherwise looks good.

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
