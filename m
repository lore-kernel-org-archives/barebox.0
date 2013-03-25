Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UK3pp-0007sl-9N
 for barebox@lists.infradead.org; Mon, 25 Mar 2013 09:36:58 +0000
Date: Mon, 25 Mar 2013 10:36:55 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130325093655.GX1906@pengutronix.de>
References: <1363474782-21973-1-git-send-email-vicencb@gmail.com>
 <1363474782-21973-5-git-send-email-vicencb@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1363474782-21973-5-git-send-email-vicencb@gmail.com>
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
Subject: Re: [PATCH 4/6] OMAP4: add command to select next boot device priority
To: Vicente Bergas <vicencb@gmail.com>
Cc: barebox@lists.infradead.org

On Sat, Mar 16, 2013 at 11:59:40PM +0100, Vicente Bergas wrote:
> On OMAP4 SoC there is a SAR memory region (Save & Rescue) where the ROM
> code reads the device to boot from.
> This patch adds a way to set this.
> 
> Signed-off-by: Vicente Bergas <vicencb@gmail.com>
> ---
>  arch/arm/mach-omap/include/mach/omap4-silicon.h | 20 +++++++
>  arch/arm/mach-omap/omap4_generic.c              | 20 +++++++
>  commands/Kconfig                                |  5 ++
>  commands/Makefile                               |  1 +
>  commands/boot_order.c                           | 75 +++++++++++++++++++++++++
>  5 files changed, 121 insertions(+)
>  create mode 100644 commands/boot_order.c
> 
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
> index 2a09eb6..e062332 100644
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
> index 0062758..524f00e 100644
> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -474,6 +474,11 @@ config CMD_POWEROFF
>  	depends on HAS_POWEROFF
>  	prompt "poweroff"
>  
> +config CMD_BOOT_ORDER
> +	tristate
> +	depends on ARCH_OMAP4
> +	prompt "boot_order"

As this is a non-obvious command, please add some help text here.

> +
>  config CMD_GO
>  	tristate
>  	prompt "go"
> diff --git a/commands/Makefile b/commands/Makefile
> index 0ae6b95..428da57 100644
> --- a/commands/Makefile
> +++ b/commands/Makefile
> @@ -14,6 +14,7 @@ obj-$(CONFIG_CMD_SLEEP)		+= sleep.o
>  obj-$(CONFIG_CMD_MSLEEP)	+= msleep.o
>  obj-$(CONFIG_CMD_RESET)		+= reset.o
>  obj-$(CONFIG_CMD_POWEROFF)	+= poweroff.o
> +obj-$(CONFIG_CMD_BOOT_ORDER)	+= boot_order.o
>  obj-$(CONFIG_CMD_GO)		+= go.o
>  obj-$(CONFIG_NET)		+= net.o
>  obj-$(CONFIG_CMD_PARTITION)	+= partition.o
> diff --git a/commands/boot_order.c b/commands/boot_order.c

I think this should rather go arch/arm/mach-omap as it's completely OMAP
specific.

> new file mode 100644
> index 0000000..66b87bc
> --- /dev/null
> +++ b/commands/boot_order.c
> @@ -0,0 +1,75 @@
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
> +static int cmd_boot_order(int argc, char *argv[])
> +{
> +	const struct bootsrc src_list[] = {
> +		{"xip"     , OMAP44XX_SAR_BOOT_XIP     },
> +		{"xipwait" , OMAP44XX_SAR_BOOT_XIPWAIT },
> +		{"nand"    , OMAP44XX_SAR_BOOT_NAND    },
> +		{"onenand" , OMAP44XX_SAR_BOOT_ONENAND },
> +		{"mmc1"    , OMAP44XX_SAR_BOOT_MMC1    },
> +		{"mmc2_1"  , OMAP44XX_SAR_BOOT_MMC2_1  },
> +		{"mmc2_2"  , OMAP44XX_SAR_BOOT_MMC2_2  },
> +		{"uart"    , OMAP44XX_SAR_BOOT_UART    },
> +		{"usb_1"   , OMAP44XX_SAR_BOOT_USB_1   },
> +		{"usb_ulpi", OMAP44XX_SAR_BOOT_USB_ULPI},
> +		{"usb_2"   , OMAP44XX_SAR_BOOT_USB_2   },
> +	};
> +	uint32_t device_list[] = {
> +		OMAP44XX_SAR_BOOT_VOID,
> +		OMAP44XX_SAR_BOOT_VOID,
> +		OMAP44XX_SAR_BOOT_VOID,
> +		OMAP44XX_SAR_BOOT_VOID,
> +	};
> +	int i, j;
> +
> +	for (i = 0; i + 1 < argc && i < ARRAY_SIZE(device_list); i++) {
> +		for (j = 0; j < ARRAY_SIZE(src_list); j++) {
> +			if (strcmp(argv[i + 1], src_list[j].name) == 0) {
> +				device_list[i] = src_list[j].sar;
> +				break;
> +			}
> +		}
> +	}

If there is a typo in the bootsource the setting will silently be the
default 'void' entry. Wouldn't an error message be useful in this case?
Also a small static function dispatching the string into the enum type
could improve the readability of this code.

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
