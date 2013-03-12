Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-da0-x229.google.com ([2607:f8b0:400e:c00::229])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UFVgD-0001sq-6N
 for barebox@lists.infradead.org; Tue, 12 Mar 2013 20:20:15 +0000
Received: by mail-da0-f41.google.com with SMTP id j17so89262dan.0
 for <barebox@lists.infradead.org>; Tue, 12 Mar 2013 13:20:11 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20130312175136.GT1906@pengutronix.de>
References: <1363046484-24946-1-git-send-email-vicencb@gmail.com>
 <1363046484-24946-2-git-send-email-vicencb@gmail.com>
 <20130312175136.GT1906@pengutronix.de>
Date: Tue, 12 Mar 2013 21:20:11 +0100
Message-ID: <CAAMcf8CpOKvaWpsqTSiJf8PvBy17y-n1G5JcovhBBimv5T=7UQ@mail.gmail.com>
From: vj <vicencb@gmail.com>
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
Subject: Re: [PATCH 3/4] OMAP4: add command to select next boot device priority
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Mar 12, 2013 at 6:51 PM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> On Tue, Mar 12, 2013 at 01:01:24AM +0100, Vicente Bergas wrote:
>> getopt: done as suggested
>> bootsrc: done as suggested
>>
>> IMO this command will be used 99% of the times followed by a reset.
>> The -r option will avoid the burden of executing always the same two commands.
>>
>> Signed-off-by: Vicente Bergas <vicencb@gmail.com>
>> ---
>>  arch/arm/mach-omap/include/mach/omap4-silicon.h | 20 ++++++
>>  arch/arm/mach-omap/omap4_generic.c              | 20 ++++++
>>  commands/Kconfig                                |  5 ++
>>  commands/Makefile                               |  1 +
>>  commands/boot_order.c                           | 88 +++++++++++++++++++++++++
>>  5 files changed, 134 insertions(+)
>>  create mode 100644 commands/boot_order.c
>>
>> diff --git a/arch/arm/mach-omap/include/mach/omap4-silicon.h b/arch/arm/mach-omap/include/mach/omap4-silicon.h
>> index 9e82435..7e67abc 100644
>> --- a/arch/arm/mach-omap/include/mach/omap4-silicon.h
>> +++ b/arch/arm/mach-omap/include/mach/omap4-silicon.h
>> @@ -161,6 +161,25 @@
>>  #define OMAP44XX_PRM_RSTCTRL_RESET   0x01
>>
>>  /*
>> + * SAR (Save & Rescue) memory region
>> + */
>> +#define OMAP44XX_SAR_RAM_BASE      0x4a326000
>> +#define OMAP44XX_SAR_CH_ADDRESS    (OMAP44XX_SAR_RAM_BASE + 0xA00)
>> +#define OMAP44XX_SAR_CH_START      (OMAP44XX_SAR_RAM_BASE + 0xA0C)
>> +#define OMAP44XX_SAR_BOOT_VOID     0x00
>> +#define OMAP44XX_SAR_BOOT_XIP      0x01
>> +#define OMAP44XX_SAR_BOOT_XIPWAIT  0x02
>> +#define OMAP44XX_SAR_BOOT_NAND     0x03
>> +#define OMAP44XX_SAR_BOOT_ONENAND  0x04
>> +#define OMAP44XX_SAR_BOOT_MMC1     0x05
>> +#define OMAP44XX_SAR_BOOT_MMC2_1   0x06
>> +#define OMAP44XX_SAR_BOOT_MMC2_2   0x07
>> +#define OMAP44XX_SAR_BOOT_UART     0x43
>> +#define OMAP44XX_SAR_BOOT_USB_1    0x45
>> +#define OMAP44XX_SAR_BOOT_USB_ULPI 0x46
>> +#define OMAP44XX_SAR_BOOT_USB_2    0x47
>> +
>> +/*
>>   * Non-secure SRAM Addresses
>>   * Non-secure RAM starts at 0x40300000 for GP devices. But we keep SRAM_BASE
>>   * at 0x40304000(EMU base) so that our code works for both EMU and GP
>> @@ -212,6 +231,7 @@ void omap4_ddr_init(const struct ddr_regs *, const struct dpll_param *);
>>  void omap4_power_i2c_send(u32);
>>  unsigned int omap4_revision(void);
>>  noinline int omap4_scale_vcores(unsigned vsel0_pin);
>> +void omap4_set_warmboot_order(u32 *device_list);
>>
>>  #endif
>>
>> diff --git a/arch/arm/mach-omap/omap4_generic.c b/arch/arm/mach-omap/omap4_generic.c
>> index 2a09eb6..e062332 100644
>> --- a/arch/arm/mach-omap/omap4_generic.c
>> +++ b/arch/arm/mach-omap/omap4_generic.c
>> @@ -41,6 +41,26 @@ void __noreturn reset_cpu(unsigned long addr)
>>       while (1);
>>  }
>>
>> +void omap4_set_warmboot_order(u32 *device_list)
>> +{
>> +     const u32 CH[] = {
>> +             0xCF00AA01,
>> +             0x0000000C,
>> +             (device_list[0] << 16) | 0x0000,
>> +             (device_list[2] << 16) | device_list[1],
>> +             0x0000 | device_list[3],
>> +             0x00000000,
>> +             0x00000000,
>> +             0x00000000,
>> +             0x00000000
>> +     };
>> +     int i;
>> +
>> +     for (i = 0; i < ARRAY_SIZE(CH); i++)
>> +             writel(CH[i], OMAP44XX_SAR_CH_START + i*sizeof(CH[0]));
>> +     writel(OMAP44XX_SAR_CH_START, OMAP44XX_SAR_CH_ADDRESS);
>> +}
>> +
>>  #define WATCHDOG_WSPR        0x48
>>  #define WATCHDOG_WWPS        0x34
>>
>> diff --git a/commands/Kconfig b/commands/Kconfig
>> index 0062758..524f00e 100644
>> --- a/commands/Kconfig
>> +++ b/commands/Kconfig
>> @@ -474,6 +474,11 @@ config CMD_POWEROFF
>>       depends on HAS_POWEROFF
>>       prompt "poweroff"
>>
>> +config CMD_BOOT_ORDER
>> +     tristate
>> +     depends on ARCH_OMAP4
>> +     prompt "boot_order"
>> +
>>  config CMD_GO
>>       tristate
>>       prompt "go"
>> diff --git a/commands/Makefile b/commands/Makefile
>> index 0ae6b95..428da57 100644
>> --- a/commands/Makefile
>> +++ b/commands/Makefile
>> @@ -14,6 +14,7 @@ obj-$(CONFIG_CMD_SLEEP)             += sleep.o
>>  obj-$(CONFIG_CMD_MSLEEP)     += msleep.o
>>  obj-$(CONFIG_CMD_RESET)              += reset.o
>>  obj-$(CONFIG_CMD_POWEROFF)   += poweroff.o
>> +obj-$(CONFIG_CMD_BOOT_ORDER) += boot_order.o
>>  obj-$(CONFIG_CMD_GO)         += go.o
>>  obj-$(CONFIG_NET)            += net.o
>>  obj-$(CONFIG_CMD_PARTITION)  += partition.o
>> diff --git a/commands/boot_order.c b/commands/boot_order.c
>> new file mode 100644
>> index 0000000..1c31c16
>> --- /dev/null
>> +++ b/commands/boot_order.c
>> @@ -0,0 +1,88 @@
>> +/*
>> + * boot_order.c - configure omap warm boot
>> + *
>> + * This program is free software; you can redistribute it and/or modify
>> + * it under the terms of the GNU General Public License version 2
>> + * as published by the Free Software Foundation.
>> + *
>> + * This program is distributed in the hope that it will be useful,
>> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
>> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>> + * GNU General Public License for more details.
>> + *
>> + */
>> +
>> +#include <common.h>
>> +#include <command.h>
>> +#include <complete.h>
>> +#include <getopt.h>
>> +#include <mach/omap4-silicon.h>
>> +
>> +struct bootsrc {
>> +     const char *name;
>> +     uint32_t sar;
>> +};
>> +
>> +static int cmd_boot_order(int argc, char *argv[])
>> +{
>> +     const struct bootsrc src_list[] = {
>> +             {"xip"     , OMAP44XX_SAR_BOOT_XIP     },
>> +             {"xipwait" , OMAP44XX_SAR_BOOT_XIPWAIT },
>> +             {"nand"    , OMAP44XX_SAR_BOOT_NAND    },
>> +             {"onenand" , OMAP44XX_SAR_BOOT_ONENAND },
>> +             {"mmc1"    , OMAP44XX_SAR_BOOT_MMC1    },
>> +             {"mmc2_1"  , OMAP44XX_SAR_BOOT_MMC2_1  },
>> +             {"mmc2_2"  , OMAP44XX_SAR_BOOT_MMC2_2  },
>> +             {"uart"    , OMAP44XX_SAR_BOOT_UART    },
>> +             {"usb_1"   , OMAP44XX_SAR_BOOT_USB_1   },
>> +             {"usb_ulpi", OMAP44XX_SAR_BOOT_USB_ULPI},
>> +             {"usb_2"   , OMAP44XX_SAR_BOOT_USB_2   },
>> +     };
>> +     uint32_t device_list[] = {
>> +             OMAP44XX_SAR_BOOT_VOID,
>> +             OMAP44XX_SAR_BOOT_VOID,
>> +             OMAP44XX_SAR_BOOT_VOID,
>> +             OMAP44XX_SAR_BOOT_VOID,
>> +     };
>> +     int i, j, opt, do_reset = 0;
>> +
>> +     while ((opt = getopt(argc, argv, "r")) > 0) {
>> +             switch (opt) {
>> +             case 'r':
>> +                     do_reset = 1;
>> +                     break;
>> +             }
>> +     }
>> +     for (i = 0; i + optind < argc && i < ARRAY_SIZE(device_list); i++) {
>> +             for (j = 0; j < ARRAY_SIZE(src_list); j++) {
>> +                     if (strcmp(argv[i + optind], src_list[j].name) == 0) {
>> +                             device_list[i] = src_list[j].sar;
>> +                             break;
>> +                     }
>> +             }
>> +     }
>> +     if (device_list[0] == OMAP44XX_SAR_BOOT_VOID) {
>> +             printf("First boot device can't be void\n");
>> +             return COMMAND_ERROR_USAGE;
>> +     }
>> +     omap4_set_warmboot_order(device_list);
>> +     if (do_reset) {
>> +             shutdown_barebox();
>> +             reset_cpu(0);
>> +     }
>
> Same question again: Do you really need to resemble the same
> functionality what the reset command does here? Why not simply
> call reset after this command?
>
> Sascha
>
> --
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

What do you mean? calling the reset command from this function or from
the prompt?

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
