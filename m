Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yw0-x242.google.com ([2607:f8b0:4002:c05::242])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1brPsB-0001tC-Ed
 for barebox@lists.infradead.org; Tue, 04 Oct 2016 13:35:11 +0000
Received: by mail-yw0-x242.google.com with SMTP id t193so1190376ywc.2
 for <barebox@lists.infradead.org>; Tue, 04 Oct 2016 06:34:46 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20161004063214.2rguzsvtq4aste5x@pengutronix.de>
References: <1475505657-898-1-git-send-email-andrew.smirnov@gmail.com>
 <1475505657-898-5-git-send-email-andrew.smirnov@gmail.com>
 <20161004063214.2rguzsvtq4aste5x@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 4 Oct 2016 06:34:45 -0700
Message-ID: <CAHQ1cqFpyRK7EGq112s8+jGf=km15EobPQ3yR3HPK38QdCsQCw@mail.gmail.com>
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
Subject: Re: [PATCH 04/20] i.MX: Add support for VF610 Tower board
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Mon, Oct 3, 2016 at 11:32 PM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> On Mon, Oct 03, 2016 at 07:40:41AM -0700, Andrey Smirnov wrote:
>> Add support for VF610 Tower board.
>>
>> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
>> ---
>>  arch/arm/boards/Makefile                           |   3 +-
>>  arch/arm/boards/freescale-vf610-twr/Makefile       |   4 +
>>  arch/arm/boards/freescale-vf610-twr/board.c        |  61 +++++
>>  .../flash-header-vf610-twr.imxcfg                  | 277 +++++++++++++++++++++
>>  arch/arm/boards/freescale-vf610-twr/lowlevel.c     |  45 ++++
>>  arch/arm/dts/Makefile                              |   1 +
>>  arch/arm/dts/vf610-twr.dts                         |  14 ++
>>  arch/arm/mach-imx/Kconfig                          |   4 +
>>  arch/arm/mach-imx/include/mach/clock-vf610.h       | 215 ++++++++++++++++
>>  arch/arm/mach-imx/include/mach/iomux-vf610.h       | 258 +++++++++++++++++++
>>  images/Makefile.imx                                |   5 +
>>  11 files changed, 886 insertions(+), 1 deletion(-)
>>  create mode 100644 arch/arm/boards/freescale-vf610-twr/Makefile
>>  create mode 100644 arch/arm/boards/freescale-vf610-twr/board.c
>>  create mode 100644 arch/arm/boards/freescale-vf610-twr/flash-header-vf610-twr.imxcfg
>>  create mode 100644 arch/arm/boards/freescale-vf610-twr/lowlevel.c
>>  create mode 100644 arch/arm/dts/vf610-twr.dts
>>  create mode 100644 arch/arm/mach-imx/include/mach/clock-vf610.h
>>  create mode 100644 arch/arm/mach-imx/include/mach/iomux-vf610.h
>>
>> diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
>> index 23a8dbd..c8bc565 100644
>> --- a/arch/arm/boards/Makefile
>> +++ b/arch/arm/boards/Makefile
>> @@ -10,7 +10,7 @@ obj-$(CONFIG_MACH_AT91SAM9G20EK)            += at91sam9260ek/
>>  obj-$(CONFIG_MACH_AT91SAM9M10G45EK)          += at91sam9m10g45ek/
>>  obj-$(CONFIG_MACH_AT91SAM9M10IHD)            += at91sam9m10ihd/
>>  obj-$(CONFIG_MACH_AT91SAM9N12EK)             += at91sam9n12ek/
>> -obj-$(CONFIG_MACH_AT91SAM9X5EK)                      += at91sam9x5ek/
>> +nobj-$(CONFIG_MACH_AT91SAM9X5EK)                     += at91sam9x5ek/
>>  obj-$(CONFIG_MACH_BEAGLE)                    += beagle/
>>  obj-$(CONFIG_MACH_BEAGLEBONE)                        += beaglebone/
>>  obj-$(CONFIG_MACH_CANON_A1100)                       += canon-a1100/
>> @@ -138,3 +138,4 @@ obj-$(CONFIG_MACH_ZEDBOARD)                       += avnet-zedboard/
>>  obj-$(CONFIG_MACH_ZYLONITE)                  += zylonite/
>>  obj-$(CONFIG_MACH_VARISCITE_MX6)             += variscite-mx6/
>>  obj-$(CONFIG_MACH_QEMU_VIRT64)                       += qemu-virt64/
>> +obj-$(CONFIG_MACH_VF610_TWR)                 += freescale-vf610-twr/
>> diff --git a/arch/arm/boards/freescale-vf610-twr/Makefile b/arch/arm/boards/freescale-vf610-twr/Makefile
>> new file mode 100644
>> index 0000000..32a7da5
>> --- /dev/null
>> +++ b/arch/arm/boards/freescale-vf610-twr/Makefile
>> @@ -0,0 +1,4 @@
>> +obj-y += board.o
>> +obj-y += flash-header-vf610-twr.dcd.o
>> +extra-y += flash-header-vf610-twr.dcd.S flash-header-vf610-twr.dcd
>> +lwl-y += lowlevel.o
>> diff --git a/arch/arm/boards/freescale-vf610-twr/board.c b/arch/arm/boards/freescale-vf610-twr/board.c
>> new file mode 100644
>> index 0000000..0879f74
>> --- /dev/null
>> +++ b/arch/arm/boards/freescale-vf610-twr/board.c
>> @@ -0,0 +1,61 @@
>> +/*
>> + * Copyright (c) 2016 Zodiac Inflight Innovation
>> + * Author: Andrey Smirnov <andrew.smirnov@gmail.com>
>> + *
>> + * See file CREDITS for list of people who contributed to this
>> + * project.
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
>> +#include <config.h>
>> +#include <common.h>
>> +#include <dma.h>
>> +#include <driver.h>
>> +#include <init.h>
>> +#include <of.h>
>> +#include <malloc.h>
>> +#include <mci.h>
>> +#include <clock.h>
>> +#include <io.h>
>> +#include <linux/clk.h>
>> +#include <linux/err.h>
>> +
>> +/*
>> + * Make sure that esdhc1's clock divider is 1
>> + */
>> +static int vf610_twr_sdhc1_clock_init(void)
>> +{
>> +     int err;
>> +     struct clk *esdhc1_div, *esdhc1_div_parent;
>> +
>> +     if (!of_machine_is_compatible("fsl,vf610-twr"))
>> +             return 0;
>> +
>> +     esdhc1_div = clk_lookup("esdhc1_div");
>> +
>> +     if (IS_ERR(esdhc1_div))
>> +             return PTR_ERR(esdhc1_div);
>> +
>> +     esdhc1_div_parent = clk_get_parent(esdhc1_div);
>> +     if (IS_ERR(esdhc1_div_parent))
>> +             return PTR_ERR(esdhc1_div_parent);
>> +
>> +     err = clk_set_rate(esdhc1_div,
>> +                        clk_get_rate(esdhc1_div_parent));
>> +     if (err)
>> +             return err;
>> +
>> +     clk_put(esdhc1_div);
>> +
>> +     return 0;
>> +}
>> +coredevice_initcall(vf610_twr_sdhc1_clock_init);
>
> What's the background for this? Should it be made SoC specific?

The divider that peripheral bus clock is connected to before that
clock goes to SDHC controller is not set to one, so if this is not set
the parent clock ends up being something around 12Mhz.


>
>> diff --git a/arch/arm/boards/freescale-vf610-twr/flash-header-vf610-twr.imxcfg b/arch/arm/boards/freescale-vf610-twr/flash-header-vf610-twr.imxcfg
>> new file mode 100644
>> index 0000000..18138d2
>> --- /dev/null
>> +++ b/arch/arm/boards/freescale-vf610-twr/flash-header-vf610-twr.imxcfg
>> @@ -0,0 +1,277 @@
>> +soc vf610
>> +loadaddr 0x80000000
>> +dcdofs 0x400
>> +
>> +#define VF610_DDR_PAD_CTRL   0x00000180 /* 25 Ohm drive strength */
>> +#define VF610_DDR_PAD_CTRL_1 0x00010180 /* 25 Ohm drive strength + differential input */
>> +
>> +#define DDRMC_PHY_DQ_TIMING  0x00002613
>> +#define DDRMC_PHY_DQS_TIMING 0x00002615
>> +#define DDRMC_PHY_CTRL               0x00210000
>> +#define DDRMC_PHY_MASTER_CTRL        0x0001012a
>> +#define DDRMC_PHY_SLAVE_CTRL 0x00002000
>> +#define DDRMC_PHY_OFF                0x00000000
>> +#define DDRMC_PHY_PROC_PAD_ODT       0x00010101
>> +
>> +#ifdef DEBUG
>> +#define CHECKPOINT(n) wm 32 0x3f000000 n
>> +#else
>> +#define CHECKPOINT(n)
>> +#endif
>> +
>> +CHECKPOINT(1)
>> +
>> +/* ======================= Clock initialization =======================*/
>> +
>> +/*
>> + * Ungate all IP block clocks
>> + */
>> +wm 32 0x4006b040 0xffffffff
>> +wm 32 0x4006b044 0xffffffff
>> +wm 32 0x4006b048 0xffffffff
>> +wm 32 0x4006b04c 0xffffffff
>> +wm 32 0x4006b050 0xffffffff
>> +wm 32 0x4006b058 0xffffffff
>> +wm 32 0x4006b05c 0xffffffff
>> +wm 32 0x4006b060 0xffffffff
>> +wm 32 0x4006b064 0xffffffff
>> +wm 32 0x4006b068 0xffffffff
>> +wm 32 0x4006b06c 0xffffffff
>> +
>> +
>> +/*
>> + * We have to options to clock DDR controller:
>> + *
>> + *  - Use Core-A5 clock
>> + *  - Use PLL2 PFD2 clock
>> + *
>> +
>> + * Using first option without changing PLL settings doesn't seem to be
>> + * possible given that DDRMC requires minimum of 300Mhz and MaskROM
>> + * configures it to be clocked at 264Mhz. Changing PLL1 settings
>> + * proved to be challenging becuase MaskROM code executing this DCD
>> + * will also be fetching the rest of the bootloader via some
>> + * peripheral interface whose clock is derived from Cortex-A5 clock.
>> + *
>> + * As a result this DCD configuration code uses the second option of
>> + * clocking DDR wiht PLL2 PFD2 clock output
>> + *
>> + * Turn PLL2 on
>> + */
>> +wm 32 0x40050030 0x00002001 /* Fout = Fin * 22 */
>> +
>> +CHECKPOINT(2)
>> +
>> +/*
>> + * Wait for PLLs to lock
>> + */
>> +check 32 while_any_bit_clear 0x40050030 0x80000000
>> +
>> +
>> +CHECKPOINT(3)
>> +
>> +/*
>> + * Switch DDRMC to be clocked with PLL2 PFD2 and enable PFD2 output
>> + */
>> +clear_bits 32 0x4006b008 0x00000040
>> +set_bits   32 0x4006b008 0x00002000
>> +
>> +
>> +
>> +/* ======================= DDR IOMUX ======================= */
>> +
>> +CHECKPOINT(4)
>> +
>> +wm 32 0x40048220 VF610_DDR_PAD_CTRL
>> +wm 32 0x40048224 VF610_DDR_PAD_CTRL
>> +wm 32 0x40048228 VF610_DDR_PAD_CTRL
>> +wm 32 0x4004822c VF610_DDR_PAD_CTRL
>> +wm 32 0x40048230 VF610_DDR_PAD_CTRL
>> +wm 32 0x40048234 VF610_DDR_PAD_CTRL
>> +wm 32 0x40048238 VF610_DDR_PAD_CTRL
>> +wm 32 0x4004823c VF610_DDR_PAD_CTRL
>> +wm 32 0x40048240 VF610_DDR_PAD_CTRL
>> +wm 32 0x40048244 VF610_DDR_PAD_CTRL
>> +wm 32 0x40048248 VF610_DDR_PAD_CTRL
>> +wm 32 0x4004824c VF610_DDR_PAD_CTRL
>> +wm 32 0x40048250 VF610_DDR_PAD_CTRL
>> +wm 32 0x40048254 VF610_DDR_PAD_CTRL
>> +wm 32 0x40048258 VF610_DDR_PAD_CTRL
>> +wm 32 0x4004825c VF610_DDR_PAD_CTRL
>> +wm 32 0x40048260 VF610_DDR_PAD_CTRL
>> +wm 32 0x40048264 VF610_DDR_PAD_CTRL
>> +wm 32 0x40048268 VF610_DDR_PAD_CTRL
>> +wm 32 0x4004826c VF610_DDR_PAD_CTRL
>> +wm 32 0x40048270 VF610_DDR_PAD_CTRL
>> +wm 32 0x40048274 VF610_DDR_PAD_CTRL
>> +wm 32 0x40048278 VF610_DDR_PAD_CTRL
>> +wm 32 0x4004827c VF610_DDR_PAD_CTRL_1
>> +wm 32 0x40048280 VF610_DDR_PAD_CTRL_1
>> +wm 32 0x40048284 VF610_DDR_PAD_CTRL_1
>> +wm 32 0x40048288 VF610_DDR_PAD_CTRL_1
>> +wm 32 0x4004828c VF610_DDR_PAD_CTRL_1
>> +wm 32 0x40048290 VF610_DDR_PAD_CTRL_1
>> +wm 32 0x40048294 VF610_DDR_PAD_CTRL_1
>> +wm 32 0x40048298 VF610_DDR_PAD_CTRL_1
>> +wm 32 0x4004829c VF610_DDR_PAD_CTRL_1
>> +wm 32 0x400482a0 VF610_DDR_PAD_CTRL_1
>> +wm 32 0x400482a4 VF610_DDR_PAD_CTRL_1
>> +wm 32 0x400482a8 VF610_DDR_PAD_CTRL_1
>> +wm 32 0x400482ac VF610_DDR_PAD_CTRL_1
>> +wm 32 0x400482b0 VF610_DDR_PAD_CTRL_1
>> +wm 32 0x400482b4 VF610_DDR_PAD_CTRL_1
>> +wm 32 0x400482b8 VF610_DDR_PAD_CTRL_1
>> +wm 32 0x400482bc VF610_DDR_PAD_CTRL_1
>> +wm 32 0x400482c0 VF610_DDR_PAD_CTRL_1
>> +wm 32 0x400482c4 VF610_DDR_PAD_CTRL_1
>> +wm 32 0x400482c8 VF610_DDR_PAD_CTRL_1
>> +wm 32 0x400482cc VF610_DDR_PAD_CTRL
>> +wm 32 0x400482d0 VF610_DDR_PAD_CTRL
>> +wm 32 0x400482d4 VF610_DDR_PAD_CTRL
>> +wm 32 0x400482d8 VF610_DDR_PAD_CTRL
>> +wm 32 0x4004821c VF610_DDR_PAD_CTRL
>> +
>> +/* ======================= DDR Controller =======================*/
>> +
>> +CHECKPOINT(5)
>> +
>> +wm 32 0x400ae000 0x00000600
>> +wm 32 0x400ae008 0x00000020
>> +wm 32 0x400ae028 0x00013880
>> +wm 32 0x400ae02c 0x00030d40
>> +wm 32 0x400ae030 0x0000050c
>> +wm 32 0x400ae034 0x15040400
>> +wm 32 0x400ae038 0x1406040f
>> +wm 32 0x400ae040 0x04040000
>> +wm 32 0x400ae044 0x006db00c
>> +wm 32 0x400ae048 0x00000403
>> +wm 32 0x400ae050 0x01000000
>> +wm 32 0x400ae054 0x00060001
>> +wm 32 0x400ae058 0x000c0000
>> +wm 32 0x400ae05c 0x03000200
>> +wm 32 0x400ae060 0x00000006
>> +wm 32 0x400ae064 0x00010000
>> +wm 32 0x400ae068 0x0c30002c
>> +wm 32 0x400ae070 0x00000000
>> +wm 32 0x400ae074 0x00000003
>> +wm 32 0x400ae078 0x0000000a
>> +wm 32 0x400ae07c 0x003001d4
>> +wm 32 0x400ae084 0x00010000
>> +wm 32 0x400ae088 0x00050500
>> +wm 32 0x400ae098 0x00000000
>> +wm 32 0x400ae09c 0x04001002
>> +wm 32 0x400ae0a4 0x00000001
>> +wm 32 0x400ae0c0 0x00460420
>> +wm 32 0x400ae108 0x01000200
>> +wm 32 0x400ae10c 0x00000040
>> +wm 32 0x400ae114 0x00000200
>> +wm 32 0x400ae118 0x00000040
>> +wm 32 0x400ae120 0x00000000
>> +wm 32 0x400ae124 0x0a010300
>> +wm 32 0x400ae128 0x01014040
>> +wm 32 0x400ae12c 0x01010101
>> +wm 32 0x400ae130 0x03030100
>> +wm 32 0x400ae134 0x01000101
>> +wm 32 0x400ae138 0x0700000c
>> +wm 32 0x400ae13c 0x00000000
>> +wm 32 0x400ae148 0x10000000
>> +wm 32 0x400ae15c 0x01000000
>> +wm 32 0x400ae160 0x00040000
>> +wm 32 0x400ae164 0x00000002
>> +wm 32 0x400ae16c 0x00020000
>> +wm 32 0x400ae180 0x00002819
>> +wm 32 0x400ae184 0x01000000
>> +wm 32 0x400ae188 0x00000000
>> +wm 32 0x400ae18c 0x00000000
>> +wm 32 0x400ae198 0x00010100
>> +wm 32 0x400ae1a4 0x00000000
>> +wm 32 0x400ae1a8 0x00000004
>> +wm 32 0x400ae1b8 0x00040000
>> +wm 32 0x400ae1c8 0x00000000
>> +wm 32 0x400ae1cc 0x00000000
>> +wm 32 0x400ae1d4 0x00000000
>> +wm 32 0x400ae1d8 0x01010000
>> +wm 32 0x400ae1e0 0x02020000
>> +wm 32 0x400ae1e4 0x00000202
>> +wm 32 0x400ae1e8 0x01010064
>> +wm 32 0x400ae1ec 0x00010101
>> +wm 32 0x400ae1f0 0x00000064
>> +wm 32 0x400ae1f8 0x00000800
>> +wm 32 0x400ae210 0x00000506
>> +wm 32 0x400ae224 0x00020000
>> +wm 32 0x400ae228 0x01000000
>> +wm 32 0x400ae22c 0x04070303
>> +wm 32 0x400ae230 0x00000040
>> +wm 32 0x400ae23c 0x06000080
>> +wm 32 0x400ae240 0x04070303
>> +wm 32 0x400ae244 0x00000040
>> +wm 32 0x400ae248 0x00000040
>> +wm 32 0x400ae24c 0x000f0000
>> +wm 32 0x400ae250 0x000f0000
>> +wm 32 0x400ae25c 0x00000101
>> +wm 32 0x400ae268 0x682c4000
>> +wm 32 0x400ae26c 0x00000012
>> +wm 32 0x400ae278 0x00000006
>> +wm 32 0x400ae284 0x00010202
>> +
>> +/* ======================= DDR PHY =======================*/
>> +
>> +CHECKPOINT(6)
>> +
>> +wm 32 0x400ae400 DDRMC_PHY_DQ_TIMING
>> +wm 32 0x400ae440 DDRMC_PHY_DQ_TIMING
>> +wm 32 0x400ae480 DDRMC_PHY_DQ_TIMING
>> +wm 32 0x400ae404 DDRMC_PHY_DQS_TIMING
>> +wm 32 0x400ae444 DDRMC_PHY_DQS_TIMING
>> +wm 32 0x400ae408 DDRMC_PHY_CTRL
>> +wm 32 0x400ae448 DDRMC_PHY_CTRL
>> +wm 32 0x400ae488 DDRMC_PHY_CTRL
>> +wm 32 0x400ae40c DDRMC_PHY_CTRL
>> +wm 32 0x400ae44c DDRMC_PHY_CTRL
>> +wm 32 0x400ae48c DDRMC_PHY_CTRL
>> +wm 32 0x400ae410 DDRMC_PHY_SLAVE_CTRL
>> +wm 32 0x400ae450 DDRMC_PHY_SLAVE_CTRL
>> +wm 32 0x400ae490 DDRMC_PHY_SLAVE_CTRL
>> +wm 32 0x400ae4c4 DDRMC_PHY_OFF
>> +wm 32 0x400ae4c8 0x00001100
>> +wm 32 0x400ae4d0 DDRMC_PHY_PROC_PAD_ODT
>> +wm 32 0x400ae000 0x00000601
>> +
>> +CHECKPOINT(7)
>> +
>> +check 32 while_any_bit_clear 0x400ae140 0x100
>> +
>> +CHECKPOINT(8)
>> +
>> +/*
>> + * Cargo cult DDR controller initialization here we come!
>> + *
>> + * Experemintation with VF610 Tower Board shows that without the
>
> s/Experemintation/Experimentation/

Will fix in v2.

>
>> + * following code the board would not boot off of SD card when
>> + * power-cycled. It will however happily boot when reset via SW3/Reset
>> + * button. For whatever reason the following actions appear to be
>> + * necessary:
>> + *
>> + *          - Initialize DDRMC as usual
>> + *       - Issue a read to location in DDR address space
>> + *       - Disable DDRMC
>> + *       - Enable DDRMC and wait for it to finish initializing
>> + *
>> + * I am sure this is all going to be extrememly embarrassing to read
>> + * if/when the real problem and real solution is found.
>> + */
>> +
>> +/*
>> + * Because there's no standalone read command what we do here instead
>> + * is write a pattern to memory and then checking that memory address
>> + * against that pattern
>> + */
>> +wm 32 0x80000000 0xa5a5a5a5
>> +check 32 while_any_bit_clear 0x80000000 0xa5a5a5a5
>> +
>> +wm 32 0x400ae000 0x00000600
>> +wm 32 0x400ae000 0x00000601
>> +
>> +check 32 while_any_bit_clear 0x400ae140 0x100
>> +
>> +CHECKPOINT(9)
>> \ No newline at end of file
>> diff --git a/arch/arm/boards/freescale-vf610-twr/lowlevel.c b/arch/arm/boards/freescale-vf610-twr/lowlevel.c
>> new file mode 100644
>> index 0000000..6504273
>> --- /dev/null
>> +++ b/arch/arm/boards/freescale-vf610-twr/lowlevel.c
>> @@ -0,0 +1,45 @@
>> +#include <common.h>
>> +#include <linux/sizes.h>
>> +#include <mach/generic.h>
>> +#include <asm/barebox-arm-head.h>
>> +#include <asm/barebox-arm.h>
>> +#include <mach/vf610-regs.h>
>> +#include <mach/clock-vf610.h>
>> +#include <mach/iomux-vf610.h>
>> +#include <debug_ll.h>
>> +
>> +static inline void setup_uart(void)
>> +{
>> +     void __iomem *iomuxbase = IOMEM(VF610_IOMUXC_BASE_ADDR);
>> +
>> +     vf610_ungate_all_peripherals();
>> +
>> +     /*
>> +      * VF610_PAD_PTB4__UART1_TX
>> +      */
>> +     writel(VF610_UART_PAD_CTRL | (2 << 20), iomuxbase + 0x0068);
>> +     writel(0, iomuxbase + 0x0380);
>> +
>> +     vf610_uart_setup_ll();
>> +}
>> +
>> +extern char __dtb_vf610_twr_start[];
>> +
>> +ENTRY_FUNCTION(start_vf610_twr, r0, r1, r2)
>> +{
>> +     int i;
>> +     void *fdt;
>> +     void __iomem *mscm = IOMEM(VF610_MSCM_BASE_ADDR);
>> +
>> +     vf610_cpu_lowlevel_init();
>> +
>> +     for (i = 0; i < VF610_MSCM_IRSPRC_NUM; i++)
>> +             writew(VF610_MSCM_IRSPRC_CP0_EN,
>> +                    mscm + VF610_MSCM_IRSPRC(i));
>> +
>> +     if (IS_ENABLED(CONFIG_DEBUG_LL))
>> +             setup_uart();
>> +
>> +     fdt = __dtb_vf610_twr_start - get_runtime_offset();
>> +     barebox_arm_entry(0x80000000, SZ_128M, fdt);
>> +}
>> diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
>> index d1a3fe8..f93152c 100644
>> --- a/arch/arm/dts/Makefile
>> +++ b/arch/arm/dts/Makefile
>> @@ -76,5 +76,6 @@ pbl-dtb-$(CONFIG_MACH_TX6X) += imx6q-tx6q.dtb.o
>>  pbl-dtb-$(CONFIG_MACH_UDOO) += imx6q-udoo.dtb.o
>>  pbl-dtb-$(CONFIG_MACH_USI_TOPKICK) += kirkwood-topkick-bb.dtb.o
>>  pbl-dtb-$(CONFIG_MACH_VARISCITE_MX6) += imx6q-var-custom.dtb.o
>> +pbl-dtb-$(CONFIG_MACH_VF610_TWR) += vf610-twr.dtb.o
>>
>>  clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts *.dtb.lzo
>> diff --git a/arch/arm/dts/vf610-twr.dts b/arch/arm/dts/vf610-twr.dts
>> new file mode 100644
>> index 0000000..54b4435
>> --- /dev/null
>> +++ b/arch/arm/dts/vf610-twr.dts
>> @@ -0,0 +1,14 @@
>> +/*
>> + * Copyright 2013 Freescale Semiconductor, Inc.
>> + *
>> + * This program is free software; you can redistribute it and/or modify
>> + * it under the terms of the GNU General Public License as published by
>> + * the Free Software Foundation; either version 2 of the License, or
>> + * (at your option) any later version.
>> + */
>> +
>> +#include <arm/vf610-twr.dts>
>> +
>> +&usbdev0 {
>> +     status = "disabled";
>> +};
>> diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
>> index 71862ef..0284a8f 100644
>> --- a/arch/arm/mach-imx/Kconfig
>> +++ b/arch/arm/mach-imx/Kconfig
>> @@ -332,6 +332,10 @@ config MACH_CM_FX6
>>       bool "CM FX6"
>>       select ARCH_IMX6
>>
>> +config MACH_VF610_TWR
>> +     bool "Freescale VF610 Tower Board"
>> +     select ARCH_VF610
>> +
>>  endif
>>
>>  # ----------------------------------------------------------
>> diff --git a/arch/arm/mach-imx/include/mach/clock-vf610.h b/arch/arm/mach-imx/include/mach/clock-vf610.h
>
> Should be added in a SoC specific patch.

OK, unless you object I'll move this file to commit introducing other regs in v2

>
>> +#define CCM_CCR_FIRC_EN                              (1 << 16)
>> +#define CCM_CCR_OSCNT_MASK                   0xff
>> +#define CCM_CCR_OSCNT(v)                     ((v) & 0xff)
>> +
>
> [...]
>
>> +#define ENET_EXTERNAL_CLK    50000000
>> +#define AUDIO_EXTERNAL_CLK   24576000
>
> VF610_ prefix?

I don't think any of that is use, so I'll remove it in v2

>
>> diff --git a/arch/arm/mach-imx/include/mach/iomux-vf610.h b/arch/arm/mach-imx/include/mach/iomux-vf610.h
>
> Should also be added in a SoC specific patch.

Will move to patch with registers in v2.

Thanks,
Andrey

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
