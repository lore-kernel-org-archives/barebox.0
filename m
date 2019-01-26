Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gnD6Y-0002XX-6w
 for barebox@lists.infradead.org; Sat, 26 Jan 2019 01:49:59 +0000
Received: by mail-wm1-x344.google.com with SMTP id n190so8495432wmd.0
 for <barebox@lists.infradead.org>; Fri, 25 Jan 2019 17:49:52 -0800 (PST)
MIME-Version: 1.0
References: <20190126012926.9236-1-andrew.smirnov@gmail.com>
 <20190126012926.9236-2-andrew.smirnov@gmail.com>
In-Reply-To: <20190126012926.9236-2-andrew.smirnov@gmail.com>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 25 Jan 2019 17:49:37 -0800
Message-ID: <CAHQ1cqExqL7hnB4brahy-_DRi=8EKk4gZr8e9OY7=mb11aoS2w@mail.gmail.com>
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
Subject: Re: [PATCH 2/2] ARM: i.MX: Add support for ZII i.MX8MQ based devices
To: Barebox List <barebox@lists.infradead.org>

On Fri, Jan 25, 2019 at 5:29 PM Andrey Smirnov <andrew.smirnov@gmail.com> wrote:
>
> Add support for the following ZII i.MX8MQ based boards:
>
>    - ZII i.MX8MQ RMB3
>    - ZII i.MX8MQ Zest
>
> Most of the basic peripherals are supported by this patch. More
> advanced features such as PCIe, display support, etc, are planned to
> be added later.
>
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  arch/arm/boards/Makefile                      |   1 +
>  arch/arm/boards/zii-imx8mq-dev/Makefile       |   2 +
>  arch/arm/boards/zii-imx8mq-dev/board.c        |  24 +
>  arch/arm/boards/zii-imx8mq-dev/ddr.h          |  29 +
>  arch/arm/boards/zii-imx8mq-dev/ddr_init.c     | 225 +++++
>  arch/arm/boards/zii-imx8mq-dev/ddrphy_train.c | 935 ++++++++++++++++++
>  .../flash-header-zii-imx8mq-dev.imxcfg        |   5 +
>  arch/arm/boards/zii-imx8mq-dev/lowlevel.c     | 211 ++++
>  arch/arm/dts/Makefile                         |   3 +
>  arch/arm/dts/imx8mq-zii-ultra-rmb3.dts        |  39 +
>  arch/arm/dts/imx8mq-zii-ultra-zest.dts        |  13 +
>  arch/arm/dts/imx8mq-zii-ultra.dtsi            | 453 +++++++++
>  arch/arm/mach-imx/Kconfig                     |   7 +
>  images/Makefile.imx                           |   5 +
>  14 files changed, 1952 insertions(+)
>  create mode 100644 arch/arm/boards/zii-imx8mq-dev/Makefile
>  create mode 100644 arch/arm/boards/zii-imx8mq-dev/board.c
>  create mode 100644 arch/arm/boards/zii-imx8mq-dev/ddr.h
>  create mode 100644 arch/arm/boards/zii-imx8mq-dev/ddr_init.c
>  create mode 100644 arch/arm/boards/zii-imx8mq-dev/ddrphy_train.c
>  create mode 100644 arch/arm/boards/zii-imx8mq-dev/flash-header-zii-imx8mq-dev.imxcfg
>  create mode 100644 arch/arm/boards/zii-imx8mq-dev/lowlevel.c
>  create mode 100644 arch/arm/dts/imx8mq-zii-ultra-rmb3.dts
>  create mode 100644 arch/arm/dts/imx8mq-zii-ultra-zest.dts
>  create mode 100644 arch/arm/dts/imx8mq-zii-ultra.dtsi
>

Ugh, forgot to include OpenOCD script and a bit of documentation in
this patch. Will send out corrected v2 shortly.

Thanks,
Andrey Smirnov

> diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
> index b806f58bc..3cea2e0e5 100644
> --- a/arch/arm/boards/Makefile
> +++ b/arch/arm/boards/Makefile
> @@ -157,6 +157,7 @@ obj-$(CONFIG_MACH_VF610_TWR)                        += freescale-vf610-twr/
>  obj-$(CONFIG_MACH_XILINX_ZCU104)               += xilinx-zcu104/
>  obj-$(CONFIG_MACH_ZII_RDU1)                    += zii-imx51-rdu1/
>  obj-$(CONFIG_MACH_ZII_RDU2)                    += zii-imx6q-rdu2/
> +obj-$(CONFIG_MACH_ZII_IMX8MQ_DEV)              += zii-imx8mq-dev/
>  obj-$(CONFIG_MACH_ZII_VF610_DEV)               += zii-vf610-dev/
>  obj-$(CONFIG_MACH_ZII_IMX7D_RPU2)              += zii-imx7d-rpu2/
>  obj-$(CONFIG_MACH_WAGO_PFC_AM35XX)             += wago-pfc-am35xx/
> diff --git a/arch/arm/boards/zii-imx8mq-dev/Makefile b/arch/arm/boards/zii-imx8mq-dev/Makefile
> new file mode 100644
> index 000000000..2995f06f0
> --- /dev/null
> +++ b/arch/arm/boards/zii-imx8mq-dev/Makefile
> @@ -0,0 +1,2 @@
> +obj-y += board.o
> +lwl-y += lowlevel.o ddr_init.o ddrphy_train.o
> diff --git a/arch/arm/boards/zii-imx8mq-dev/board.c b/arch/arm/boards/zii-imx8mq-dev/board.c
> new file mode 100644
> index 000000000..94e71f58c
> --- /dev/null
> +++ b/arch/arm/boards/zii-imx8mq-dev/board.c
> @@ -0,0 +1,24 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Copyright (C) 2019 Zodiac Inflight Innovation
> + * Author: Andrey Smirnov <andrew.smirnov@gmail.com>
> + */
> +
> +#include <common.h>
> +#include <init.h>
> +#include <asm/memory.h>
> +#include <linux/sizes.h>
> +#include <mach/bbu.h>
> +
> +static int zii_imx8mq_dev_init(void)
> +{
> +       if (!of_machine_is_compatible("zii,imx8mq-ultra"))
> +               return 0;
> +
> +       barebox_set_hostname("imx8mq-zii-rdu3");
> +
> +       imx8mq_bbu_internal_mmcboot_register_handler("eMMC", "/dev/mmc0", 0);
> +
> +       return 0;
> +}
> +device_initcall(zii_imx8mq_dev_init);
> diff --git a/arch/arm/boards/zii-imx8mq-dev/ddr.h b/arch/arm/boards/zii-imx8mq-dev/ddr.h
> new file mode 100644
> index 000000000..e41dd49da
> --- /dev/null
> +++ b/arch/arm/boards/zii-imx8mq-dev/ddr.h
> @@ -0,0 +1,29 @@
> +/* SPDX-License-Identifier: GPL-2.0+ */
> +/*
> + * Copyright (c) 2018 Zodiac Inflight Innovation
> + * Author: Andrey Smirnov <andrew.smirnov@gmail.com>
> + *
> + * Varios wrappers and macros needed to intgrate code generated by
> + * i.MX8M DDR Tool into rest of Barebox
> + */
> +#include <common.h>
> +#include <io.h>
> +#include <mach/imx8-ddrc.h>
> +
> +/*
> + * Code generated by i.MX8 M DDR Tool doesn't have any prefixes in the
> + * global identifiers below, so in order to avoid symbol name
> + * collisions with other boards we re-name them via a #define
> + */
> +#define ddr_init       zii_imx8mq_rdu3_ddr_init
> +#define ddr_cfg_phy    zii_imx8mq_rdu3_ddr_cfg_phy
> +
> +void zii_imx8mq_rdu3_ddr_init(void);
> +void zii_imx8mq_rdu3_ddr_cfg_phy(void);
> +
> +#define FW_1D_IMAGE    imx_lpddr4_pmu_train_1d_imem_bin, \
> +                       imx_lpddr4_pmu_train_1d_dmem_bin
> +#define FW_2D_IMAGE    imx_lpddr4_pmu_train_2d_imem_bin, \
> +                       imx_lpddr4_pmu_train_2d_dmem_bin
> +
> +
> diff --git a/arch/arm/boards/zii-imx8mq-dev/ddr_init.c b/arch/arm/boards/zii-imx8mq-dev/ddr_init.c
> new file mode 100644
> index 000000000..7a955193f
> --- /dev/null
> +++ b/arch/arm/boards/zii-imx8mq-dev/ddr_init.c
> @@ -0,0 +1,225 @@
> +/*
> + * Copyright 2017 NXP
> + *
> + * SPDX-License-Identifier:    GPL-2.0+
> + *
> + * Generated code from MX8M_DDR_tool
> + */
> +
> +#include "ddr.h"
> +
> +void ddr_cfg_phy(void);
> +void ddr_init(void)
> +{
> +       volatile unsigned int tmp, tmp_t;
> +
> +       /** Initialize DDR clock and DDRC registers **/
> +       reg32_write(0x3038a088,0x7070000);
> +       reg32_write(0x3038a084,0x4030000);
> +       reg32_write(0x303a00ec,0xffff);
> +       tmp=reg32_read(0x303a00f8);
> +       tmp |= 0x20;
> +       reg32_write(0x303a00f8,tmp);
> +       reg32_write(0x30391000,0x8f000000);
> +       reg32_write(0x30391004,0x8f000000);
> +       reg32_write(0x30360068,0xece580);
> +       tmp=reg32_read(0x30360060);
> +       tmp &= ~0x80;
> +       reg32_write(0x30360060,tmp);
> +       tmp=reg32_read(0x30360060);
> +       tmp |= 0x200;
> +       reg32_write(0x30360060,tmp);
> +       tmp=reg32_read(0x30360060);
> +       tmp &= ~0x20;
> +       reg32_write(0x30360060,tmp);
> +       tmp=reg32_read(0x30360060);
> +       tmp &= ~0x10;
> +       reg32_write(0x30360060,tmp);
> +       do{
> +               tmp=reg32_read(0x30360060);
> +               if(tmp&0x80000000) break;
> +       }while(1);
> +       reg32_write(0x30391000,0x8f000006);
> +       reg32_write(0x3d400304,0x1);
> +       reg32_write(0x3d400030,0x1);
> +       reg32_write(0x3d400000,0xa3080020);
> +       reg32_write(0x3d400028,0x0);
> +       reg32_write(0x3d400020,0x203);
> +       reg32_write(0x3d400024,0x186a000);
> +       reg32_write(0x3d400064,0x6100e0);
> +       reg32_write(0x3d4000d0,0xc003061c);
> +       reg32_write(0x3d4000d4,0x9e0000);
> +       reg32_write(0x3d4000dc,0xd4002d);
> +       reg32_write(0x3d4000e0,0x310008);
> +       reg32_write(0x3d4000e8,0x66004a);
> +       reg32_write(0x3d4000ec,0x16004a);
> +       reg32_write(0x3d400100,0x1a201b22);
> +       reg32_write(0x3d400104,0x60633);
> +       reg32_write(0x3d40010c,0xc0c000);
> +       reg32_write(0x3d400110,0xf04080f);
> +       reg32_write(0x3d400114,0x2040c0c);
> +       reg32_write(0x3d400118,0x1010007);
> +       reg32_write(0x3d40011c,0x401);
> +       reg32_write(0x3d400130,0x20600);
> +       reg32_write(0x3d400134,0xc100002);
> +       reg32_write(0x3d400138,0xe6);
> +       reg32_write(0x3d400144,0xa00050);
> +       reg32_write(0x3d400180,0x3200018);
> +       reg32_write(0x3d400184,0x28061a8);
> +       reg32_write(0x3d400188,0x0);
> +       reg32_write(0x3d400190,0x497820a);
> +       reg32_write(0x3d400194,0x80303);
> +       reg32_write(0x3d4001a0,0xe0400018);
> +       reg32_write(0x3d4001a4,0xdf00e4);
> +       reg32_write(0x3d4001a8,0x80000000);
> +       reg32_write(0x3d4001b0,0x11);
> +       reg32_write(0x3d4001b4,0x170a);
> +       reg32_write(0x3d4001c0,0x1);
> +       reg32_write(0x3d4001c4,0x1);
> +       reg32_write(0x3d4000f4,0x639);
> +       reg32_write(0x3d400108,0x70e1214);
> +       reg32_write(0x3d400200,0x17);
> +       reg32_write(0x3d40020c,0x0);
> +       reg32_write(0x3d400210,0x1f1f);
> +       reg32_write(0x3d400204,0x80808);
> +       reg32_write(0x3d400214,0x7070707);
> +       reg32_write(0x3d400218,0x7070707);
> +       reg32_write(0x3d402020,0x1);
> +       reg32_write(0x3d402024,0x518b00);
> +       reg32_write(0x3d402050,0x20d040);
> +       reg32_write(0x3d402064,0x14002f);
> +       reg32_write(0x3d4020dc,0x940009);
> +       reg32_write(0x3d4020e0,0x310000);
> +       reg32_write(0x3d4020e8,0x66004a);
> +       reg32_write(0x3d4020ec,0x16004a);
> +       reg32_write(0x3d402100,0xb070508);
> +       reg32_write(0x3d402104,0x3040b);
> +       reg32_write(0x3d402108,0x305090c);
> +       reg32_write(0x3d40210c,0x505000);
> +       reg32_write(0x3d402110,0x4040204);
> +       reg32_write(0x3d402114,0x2030303);
> +       reg32_write(0x3d402118,0x1010004);
> +       reg32_write(0x3d40211c,0x301);
> +       reg32_write(0x3d402130,0x20300);
> +       reg32_write(0x3d402134,0xa100002);
> +       reg32_write(0x3d402138,0x31);
> +       reg32_write(0x3d402144,0x220011);
> +       reg32_write(0x3d402180,0xa70006);
> +       reg32_write(0x3d402190,0x3858202);
> +       reg32_write(0x3d402194,0x80303);
> +       reg32_write(0x3d4021b4,0x502);
> +       reg32_write(0x3d400244,0x0);
> +       reg32_write(0x3d400250,0x29001505);
> +       reg32_write(0x3d400254,0x2c);
> +       reg32_write(0x3d40025c,0x5900575b);
> +       reg32_write(0x3d400264,0x9);
> +       reg32_write(0x3d40026c,0x2005574);
> +       reg32_write(0x3d400300,0x16);
> +       reg32_write(0x3d400304,0x0);
> +       reg32_write(0x3d40030c,0x0);
> +       reg32_write(0x3d400320,0x1);
> +       reg32_write(0x3d40036c,0x11);
> +       reg32_write(0x3d400400,0x111);
> +       reg32_write(0x3d400404,0x10f3);
> +       reg32_write(0x3d400408,0x72ff);
> +       reg32_write(0x3d400490,0x1);
> +       reg32_write(0x3d400494,0x1110d00);
> +       reg32_write(0x3d400498,0x620790);
> +       reg32_write(0x3d40049c,0x100001);
> +       reg32_write(0x3d4004a0,0x41f);
> +       reg32_write(0x30391000,0x8f000004);
> +       reg32_write(0x30391000,0x8f000000);
> +       reg32_write(0x3d400030,0xa8);
> +       do{
> +               tmp=reg32_read(0x3d400004);
> +               if(tmp&0x223) break;
> +       }while(1);
> +       reg32_write(0x3d400320,0x0);
> +       reg32_write(0x3d000000,0x1);
> +       reg32_write(0x3d4001b0,0x10);
> +       reg32_write(0x3c040280,0x0);
> +       reg32_write(0x3c040284,0x1);
> +       reg32_write(0x3c040288,0x2);
> +       reg32_write(0x3c04028c,0x3);
> +       reg32_write(0x3c040290,0x4);
> +       reg32_write(0x3c040294,0x5);
> +       reg32_write(0x3c040298,0x6);
> +       reg32_write(0x3c04029c,0x7);
> +       reg32_write(0x3c044280,0x0);
> +       reg32_write(0x3c044284,0x1);
> +       reg32_write(0x3c044288,0x2);
> +       reg32_write(0x3c04428c,0x3);
> +       reg32_write(0x3c044290,0x4);
> +       reg32_write(0x3c044294,0x5);
> +       reg32_write(0x3c044298,0x6);
> +       reg32_write(0x3c04429c,0x7);
> +       reg32_write(0x3c048280,0x0);
> +       reg32_write(0x3c048284,0x1);
> +       reg32_write(0x3c048288,0x2);
> +       reg32_write(0x3c04828c,0x3);
> +       reg32_write(0x3c048290,0x4);
> +       reg32_write(0x3c048294,0x5);
> +       reg32_write(0x3c048298,0x6);
> +       reg32_write(0x3c04829c,0x7);
> +       reg32_write(0x3c04c280,0x0);
> +       reg32_write(0x3c04c284,0x1);
> +       reg32_write(0x3c04c288,0x2);
> +       reg32_write(0x3c04c28c,0x3);
> +       reg32_write(0x3c04c290,0x4);
> +       reg32_write(0x3c04c294,0x5);
> +       reg32_write(0x3c04c298,0x6);
> +       reg32_write(0x3c04c29c,0x7);
> +
> +       /* Configure DDR PHY's registers */
> +       ddr_cfg_phy();
> +
> +       reg32_write(DDRC_RFSHCTL3(0), 0x00000000);
> +       reg32_write(DDRC_SWCTL(0), 0x0000);
> +       /*
> +        * ------------------- 9 -------------------
> +        * Set DFIMISC.dfi_init_start to 1
> +        *  -----------------------------------------
> +        */
> +       reg32_write(DDRC_DFIMISC(0), 0x00000030);
> +       reg32_write(DDRC_SWCTL(0), 0x0001);
> +
> +       /* wait DFISTAT.dfi_init_complete to 1 */
> +       tmp_t = 0;
> +       while(tmp_t==0){
> +               tmp  = reg32_read(DDRC_DFISTAT(0));
> +               tmp_t = tmp & 0x01;
> +               tmp  = reg32_read(DDRC_MRSTAT(0));
> +       }
> +
> +       reg32_write(DDRC_SWCTL(0), 0x0000);
> +
> +       /* clear DFIMISC.dfi_init_complete_en */
> +       reg32_write(DDRC_DFIMISC(0), 0x00000010);
> +       reg32_write(DDRC_DFIMISC(0), 0x00000011);
> +       reg32_write(DDRC_PWRCTL(0), 0x00000088);
> +
> +       tmp = reg32_read(DDRC_CRCPARSTAT(0));
> +       /*
> +        * set SWCTL.sw_done to enable quasi-dynamic register
> +        * programming outside reset.
> +        */
> +       reg32_write(DDRC_SWCTL(0), 0x00000001);
> +
> +       /* wait SWSTAT.sw_done_ack to 1 */
> +       while((reg32_read(DDRC_SWSTAT(0)) & 0x1) == 0)
> +               ;
> +
> +       /* wait STAT.operating_mode([1:0] for ddr3) to normal state */
> +       while ((reg32_read(DDRC_STAT(0)) & 0x3) != 0x1)
> +               ;
> +
> +       reg32_write(DDRC_PWRCTL(0), 0x00000088);
> +       /* reg32_write(DDRC_PWRCTL(0), 0x018a); */
> +       tmp = reg32_read(DDRC_CRCPARSTAT(0));
> +
> +       /* enable port 0 */
> +       reg32_write(DDRC_PCTRL_0(0), 0x00000001);
> +       /* enable DDR auto-refresh mode */
> +       tmp = reg32_read(DDRC_RFSHCTL3(0)) & ~0x1;
> +       reg32_write(DDRC_RFSHCTL3(0), tmp);
> +}
> \ No newline at end of file
> diff --git a/arch/arm/boards/zii-imx8mq-dev/ddrphy_train.c b/arch/arm/boards/zii-imx8mq-dev/ddrphy_train.c
> new file mode 100644
> index 000000000..1b30ff725
> --- /dev/null
> +++ b/arch/arm/boards/zii-imx8mq-dev/ddrphy_train.c
> @@ -0,0 +1,935 @@
> +/*
> + * Copyright 2017 NXP
> + *
> + * SPDX-License-Identifier:    GPL-2.0+
> + *
> + * Generated code from MX8M_DDR_tool
> + */
> +
> +#include "ddr.h"
> +
> +void ddr_cfg_phy(void) {
> +       unsigned int tmp, tmp_t;
> +
> +       //Init DDRPHY register...
> +       reg32_write(0x3c080440,0x2);
> +       reg32_write(0x3c080444,0x3);
> +       reg32_write(0x3c080448,0x4);
> +       reg32_write(0x3c08044c,0x5);
> +       reg32_write(0x3c080450,0x0);
> +       reg32_write(0x3c080454,0x1);
> +       reg32_write(0x3c04017c,0x1ff);
> +       reg32_write(0x3c04057c,0x1ff);
> +       reg32_write(0x3c04417c,0x1ff);
> +       reg32_write(0x3c04457c,0x1ff);
> +       reg32_write(0x3c04817c,0x1ff);
> +       reg32_write(0x3c04857c,0x1ff);
> +       reg32_write(0x3c04c17c,0x1ff);
> +       reg32_write(0x3c04c57c,0x1ff);
> +       reg32_write(0x3c44017c,0x1ff);
> +       reg32_write(0x3c44057c,0x1ff);
> +       reg32_write(0x3c44417c,0x1ff);
> +       reg32_write(0x3c44457c,0x1ff);
> +       reg32_write(0x3c44817c,0x1ff);
> +       reg32_write(0x3c44857c,0x1ff);
> +       reg32_write(0x3c44c17c,0x1ff);
> +       reg32_write(0x3c44c57c,0x1ff);
> +       reg32_write(0x3c000154,0x1ff);
> +       reg32_write(0x3c004154,0x1ff);
> +       reg32_write(0x3c008154,0x1ff);
> +       reg32_write(0x3c00c154,0x1ff);
> +       reg32_write(0x3c010154,0x1ff);
> +       reg32_write(0x3c014154,0x1ff);
> +       reg32_write(0x3c018154,0x1ff);
> +       reg32_write(0x3c01c154,0x1ff);
> +       reg32_write(0x3c020154,0x1ff);
> +       reg32_write(0x3c024154,0x1ff);
> +       reg32_write(0x3c080314,0x19);
> +       reg32_write(0x3c480314,0x7);
> +       reg32_write(0x3c0800b8,0x2);
> +       reg32_write(0x3c4800b8,0x1);
> +       reg32_write(0x3c240810,0x0);
> +       reg32_write(0x3c640810,0x0);
> +       reg32_write(0x3c080090,0xab);
> +       reg32_write(0x3c0800e8,0x0);
> +       reg32_write(0x3c480090,0xab);
> +       reg32_write(0x3c0800e8,0x0);
> +       reg32_write(0x3c080158,0x3);
> +       reg32_write(0x3c480158,0xa);
> +       reg32_write(0x3c040134,0xe00);
> +       reg32_write(0x3c040534,0xe00);
> +       reg32_write(0x3c044134,0xe00);
> +       reg32_write(0x3c044534,0xe00);
> +       reg32_write(0x3c048134,0xe00);
> +       reg32_write(0x3c048534,0xe00);
> +       reg32_write(0x3c04c134,0xe00);
> +       reg32_write(0x3c04c534,0xe00);
> +       reg32_write(0x3c440134,0xe00);
> +       reg32_write(0x3c440534,0xe00);
> +       reg32_write(0x3c444134,0xe00);
> +       reg32_write(0x3c444534,0xe00);
> +       reg32_write(0x3c448134,0xe00);
> +       reg32_write(0x3c448534,0xe00);
> +       reg32_write(0x3c44c134,0xe00);
> +       reg32_write(0x3c44c534,0xe00);
> +       reg32_write(0x3c040124,0xfbe);
> +       reg32_write(0x3c040524,0xfbe);
> +       reg32_write(0x3c044124,0xfbe);
> +       reg32_write(0x3c044524,0xfbe);
> +       reg32_write(0x3c048124,0xfbe);
> +       reg32_write(0x3c048524,0xfbe);
> +       reg32_write(0x3c04c124,0xfbe);
> +       reg32_write(0x3c04c524,0xfbe);
> +       reg32_write(0x3c440124,0xfbe);
> +       reg32_write(0x3c440524,0xfbe);
> +       reg32_write(0x3c444124,0xfbe);
> +       reg32_write(0x3c444524,0xfbe);
> +       reg32_write(0x3c448124,0xfbe);
> +       reg32_write(0x3c448524,0xfbe);
> +       reg32_write(0x3c44c124,0xfbe);
> +       reg32_write(0x3c44c524,0xfbe);
> +       reg32_write(0x3c00010c,0x63);
> +       reg32_write(0x3c00410c,0x63);
> +       reg32_write(0x3c00810c,0x63);
> +       reg32_write(0x3c00c10c,0x63);
> +       reg32_write(0x3c01010c,0x63);
> +       reg32_write(0x3c01410c,0x63);
> +       reg32_write(0x3c01810c,0x63);
> +       reg32_write(0x3c01c10c,0x63);
> +       reg32_write(0x3c02010c,0x63);
> +       reg32_write(0x3c02410c,0x63);
> +       reg32_write(0x3c080060,0x3);
> +       reg32_write(0x3c0801d4,0x4);
> +       reg32_write(0x3c080140,0x0);
> +       reg32_write(0x3c080020,0x320);
> +       reg32_write(0x3c480020,0xa7);
> +       reg32_write(0x3c080220,0x9);
> +       reg32_write(0x3c0802c8,0xdc);
> +       reg32_write(0x3c04010c,0x5a1);
> +       reg32_write(0x3c04050c,0x5a1);
> +       reg32_write(0x3c04410c,0x5a1);
> +       reg32_write(0x3c04450c,0x5a1);
> +       reg32_write(0x3c04810c,0x5a1);
> +       reg32_write(0x3c04850c,0x5a1);
> +       reg32_write(0x3c04c10c,0x5a1);
> +       reg32_write(0x3c04c50c,0x5a1);
> +       reg32_write(0x3c4802c8,0xdc);
> +       reg32_write(0x3c44010c,0x5a1);
> +       reg32_write(0x3c44050c,0x5a1);
> +       reg32_write(0x3c44410c,0x5a1);
> +       reg32_write(0x3c44450c,0x5a1);
> +       reg32_write(0x3c44810c,0x5a1);
> +       reg32_write(0x3c44850c,0x5a1);
> +       reg32_write(0x3c44c10c,0x5a1);
> +       reg32_write(0x3c44c50c,0x5a1);
> +       reg32_write(0x3c0803e8,0x1);
> +       reg32_write(0x3c4803e8,0x1);
> +       reg32_write(0x3c080064,0x1);
> +       reg32_write(0x3c480064,0x1);
> +       reg32_write(0x3c0803c0,0x0);
> +       reg32_write(0x3c0803c4,0x0);
> +       reg32_write(0x3c0803c8,0x4444);
> +       reg32_write(0x3c0803cc,0x8888);
> +       reg32_write(0x3c0803d0,0x5555);
> +       reg32_write(0x3c0803d4,0x0);
> +       reg32_write(0x3c0803d8,0x0);
> +       reg32_write(0x3c0803dc,0xf000);
> +       reg32_write(0x3c080094,0x0);
> +       reg32_write(0x3c0800b4,0x0);
> +       reg32_write(0x3c4800b4,0x0);
> +       reg32_write(0x3c080180,0x2);
> +
> +       //enable APB bus to access DDRPHY RAM
> +       reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0000, 0x0);
> +       //load the 1D training image
> +       ddr_load_train_code(FW_1D_IMAGE);
> +
> +       //configure DDRPHY-FW DMEM structure @clock0...
> +       reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0099, 0x1);
> +
> +       //set the PHY input clock to the desired frequency for pstate 0
> +       reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54003,0xc80);
> +       reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54004,0x2);
> +       reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54006,0x11);
> +       reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54008,0x131f);
> +       reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54009,0xc8);
> +       reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x5400b,0x2);
> +       reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x5400d,0x100);
> +       reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54012,0x310);
> +       reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54019,0x2dd4);
> +       reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x5401a,0x31);
> +       reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x5401b,0x4a66);
> +       reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x5401c,0x4a08);
> +       reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x5401e,0x16);
> +       reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x5401f,0x2dd4);
> +       reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54020,0x31);
> +       reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54021,0x4a66);
> +       reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54022,0x4a08);
> +       reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54024,0x16);
> +       reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x5402b,0x1000);
> +       reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x5402c,0x3);
> +       reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54032,0xd400);
> +       reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54033,0x312d);
> +       reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54034,0x6600);
> +       reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54035,0x84a);
> +       reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54036,0x4a);
> +       reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54037,0x1600);
> +       reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54038,0xd400);
> +       reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54039,0x312d);
> +       reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x5403a,0x6600);
> +       reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x5403b,0x84a);
> +       reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x5403c,0x4a);
> +       reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x5403d,0x1600);
> +
> +       //disable APB bus to access DDRPHY RAM
> +       reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0000, 0x1);
> +       //Reset MPU and run
> +       reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0099, 0x9);
> +       reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0099, 0x1);
> +       reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0099, 0x0);
> +       wait_ddrphy_training_complete();
> +
> +       //configure DDRPHY-FW DMEM structure @clock1...
> +       reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0099, 0x1);
> +
> +       //set the PHY input clock to the desired frequency for pstate 1
> +       reg32_write(0x3038a088,0x7070000);
> +       reg32_write(0x3038a084,0x4030000);
> +       reg32_write(0x303a00ec,0xffff);
> +       tmp=reg32_read(0x303a00f8);
> +       tmp |= 0x20;
> +       reg32_write(0x303a00f8,tmp);
> +       reg32_write(0x30360068,0xf5a406);
> +       tmp=reg32_read(0x30360060);
> +       tmp &= ~0x80;
> +       reg32_write(0x30360060,tmp);
> +       tmp=reg32_read(0x30360060);
> +       tmp |= 0x200;
> +       reg32_write(0x30360060,tmp);
> +       tmp=reg32_read(0x30360060);
> +       tmp &= ~0x20;
> +       reg32_write(0x30360060,tmp);
> +       tmp=reg32_read(0x30360060);
> +       tmp &= ~0x10;
> +       reg32_write(0x30360060,tmp);
> +       do{
> +               tmp=reg32_read(0x30360060);
> +               if(tmp&0x80000000) break;
> +       }while(1);
> +       reg32_write(0x30389808,0x1000000);
> +
> +       //enable APB bus to access DDRPHY RAM
> +       reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0000, 0x0);
> +
> +       reg32_write(0x3c150008,0x1);
> +       reg32_write(0x3c15000c,0x29c);
> +       reg32_write(0x3c150020,0x121f);
> +       reg32_write(0x3c150064,0x994);
> +       reg32_write(0x3c150068,0x31);
> +       reg32_write(0x3c15006c,0x4d46);
> +       reg32_write(0x3c150070,0x4d08);
> +       reg32_write(0x3c150074,0x0);
> +       reg32_write(0x3c150078,0x15);
> +       reg32_write(0x3c15007c,0x994);
> +       reg32_write(0x3c150080,0x31);
> +       reg32_write(0x3c150084,0x4d46);
> +       reg32_write(0x3c150088,0x4d08);
> +       reg32_write(0x3c15008c,0x0);
> +       reg32_write(0x3c150090,0x15);
> +       reg32_write(0x3c1500c8,0x9400);
> +       reg32_write(0x3c1500cc,0x3109);
> +       reg32_write(0x3c1500d0,0x4600);
> +       reg32_write(0x3c1500d4,0x84d);
> +       reg32_write(0x3c1500d8,0x4d);
> +       reg32_write(0x3c1500dc,0x1500);
> +       reg32_write(0x3c1500e0,0x9400);
> +       reg32_write(0x3c1500e4,0x3109);
> +       reg32_write(0x3c1500e8,0x4600);
> +       reg32_write(0x3c1500ec,0x84d);
> +       reg32_write(0x3c1500f0,0x4d);
> +       reg32_write(0x3c1500f4,0x1500);
> +       reg32_write(0x3c1500f8,0x0);
> +
> +       //disable APB bus to access DDRPHY RAM
> +       reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0000, 0x1);
> +       //Reset MPU and run
> +       reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0099, 0x9);
> +       reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0099, 0x1);
> +       reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0099, 0x0);
> +       wait_ddrphy_training_complete();
> +
> +       //set the PHY input clock to the desired frequency for pstate 0
> +       reg32_write(0x3038a088,0x7070000);
> +       reg32_write(0x3038a084,0x4030000);
> +       reg32_write(0x303a00ec,0xffff);
> +       tmp=reg32_read(0x303a00f8);
> +       tmp |= 0x20;
> +       reg32_write(0x303a00f8,tmp);
> +       reg32_write(0x30360068,0xece580);
> +       tmp=reg32_read(0x30360060);
> +       tmp &= ~0x80;
> +       reg32_write(0x30360060,tmp);
> +       tmp=reg32_read(0x30360060);
> +       tmp |= 0x200;
> +       reg32_write(0x30360060,tmp);
> +       tmp=reg32_read(0x30360060);
> +       tmp &= ~0x20;
> +       reg32_write(0x30360060,tmp);
> +       tmp=reg32_read(0x30360060);
> +       tmp &= ~0x10;
> +       reg32_write(0x30360060,tmp);
> +       do{
> +               tmp=reg32_read(0x30360060);
> +               if(tmp&0x80000000) break;
> +       }while(1);
> +       reg32_write(0x30389808,0x1000000);
> +       reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0099, 0x1);
> +
> +
> +       //enable APB bus to access DDRPHY RAM
> +       reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0000, 0x0);
> +       //load the 2D training image
> +       ddr_load_train_code(FW_2D_IMAGE);
> +
> +       reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54003,0xc80);
> +       reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54006,0x11);
> +       reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54008,0x61);
> +       reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54009,0xc8);
> +       reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x5400b,0x2);
> +       reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x5400f,0x100);
> +       reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54010,0x1f7f);
> +       reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54012,0x310);
> +       reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54019,0x2dd4);
> +       reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x5401a,0x31);
> +       reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x5401b,0x4a66);
> +       reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x5401c,0x4a08);
> +       reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x5401e,0x16);
> +       reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x5401f,0x2dd4);
> +       reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54020,0x31);
> +       reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54021,0x4a66);
> +       reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54022,0x4a08);
> +       reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54024,0x16);
> +       reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x5402b,0x1000);
> +       reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x5402c,0x3);
> +       reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54032,0xd400);
> +       reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54033,0x312d);
> +       reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54034,0x6600);
> +       reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54035,0x84a);
> +       reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54036,0x4a);
> +       reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54037,0x1600);
> +       reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54038,0xd400);
> +       reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54039,0x312d);
> +       reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x5403a,0x6600);
> +       reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x5403b,0x84a);
> +       reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x5403c,0x4a);
> +       reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x5403d,0x1600);
> +
> +       //disable APB bus to access DDRPHY RAM
> +       reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0000, 0x1);
> +       //Reset MPU and run
> +       reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0099, 0x9);
> +       reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0099, 0x1);
> +       reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0099, 0x0);
> +       wait_ddrphy_training_complete();
> +
> +       //Halt MPU
> +       reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0099, 0x1);
> +       //enable APB bus to access DDRPHY RAM
> +       reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0000, 0x0);
> +
> +       //Load firmware PIE image
> +       reg32_write(0x3c240000,0x10);
> +       reg32_write(0x3c240004,0x400);
> +       reg32_write(0x3c240008,0x10e);
> +       reg32_write(0x3c24000c,0x0);
> +       reg32_write(0x3c240010,0x0);
> +       reg32_write(0x3c240014,0x8);
> +       reg32_write(0x3c2400a4,0xb);
> +       reg32_write(0x3c2400a8,0x480);
> +       reg32_write(0x3c2400ac,0x109);
> +       reg32_write(0x3c2400b0,0x8);
> +       reg32_write(0x3c2400b4,0x448);
> +       reg32_write(0x3c2400b8,0x139);
> +       reg32_write(0x3c2400bc,0x8);
> +       reg32_write(0x3c2400c0,0x478);
> +       reg32_write(0x3c2400c4,0x109);
> +       reg32_write(0x3c2400c8,0x0);
> +       reg32_write(0x3c2400cc,0xe8);
> +       reg32_write(0x3c2400d0,0x109);
> +       reg32_write(0x3c2400d4,0x2);
> +       reg32_write(0x3c2400d8,0x10);
> +       reg32_write(0x3c2400dc,0x139);
> +       reg32_write(0x3c2400e0,0xf);
> +       reg32_write(0x3c2400e4,0x7c0);
> +       reg32_write(0x3c2400e8,0x139);
> +       reg32_write(0x3c2400ec,0x44);
> +       reg32_write(0x3c2400f0,0x630);
> +       reg32_write(0x3c2400f4,0x159);
> +       reg32_write(0x3c2400f8,0x14f);
> +       reg32_write(0x3c2400fc,0x630);
> +       reg32_write(0x3c240100,0x159);
> +       reg32_write(0x3c240104,0x47);
> +       reg32_write(0x3c240108,0x630);
> +       reg32_write(0x3c24010c,0x149);
> +       reg32_write(0x3c240110,0x4f);
> +       reg32_write(0x3c240114,0x630);
> +       reg32_write(0x3c240118,0x179);
> +       reg32_write(0x3c24011c,0x8);
> +       reg32_write(0x3c240120,0xe0);
> +       reg32_write(0x3c240124,0x109);
> +       reg32_write(0x3c240128,0x0);
> +       reg32_write(0x3c24012c,0x7c8);
> +       reg32_write(0x3c240130,0x109);
> +       reg32_write(0x3c240134,0x0);
> +       reg32_write(0x3c240138,0x1);
> +       reg32_write(0x3c24013c,0x8);
> +       reg32_write(0x3c240140,0x0);
> +       reg32_write(0x3c240144,0x45a);
> +       reg32_write(0x3c240148,0x9);
> +       reg32_write(0x3c24014c,0x0);
> +       reg32_write(0x3c240150,0x448);
> +       reg32_write(0x3c240154,0x109);
> +       reg32_write(0x3c240158,0x40);
> +       reg32_write(0x3c24015c,0x630);
> +       reg32_write(0x3c240160,0x179);
> +       reg32_write(0x3c240164,0x1);
> +       reg32_write(0x3c240168,0x618);
> +       reg32_write(0x3c24016c,0x109);
> +       reg32_write(0x3c240170,0x40c0);
> +       reg32_write(0x3c240174,0x630);
> +       reg32_write(0x3c240178,0x149);
> +       reg32_write(0x3c24017c,0x8);
> +       reg32_write(0x3c240180,0x4);
> +       reg32_write(0x3c240184,0x48);
> +       reg32_write(0x3c240188,0x4040);
> +       reg32_write(0x3c24018c,0x630);
> +       reg32_write(0x3c240190,0x149);
> +       reg32_write(0x3c240194,0x0);
> +       reg32_write(0x3c240198,0x4);
> +       reg32_write(0x3c24019c,0x48);
> +       reg32_write(0x3c2401a0,0x40);
> +       reg32_write(0x3c2401a4,0x630);
> +       reg32_write(0x3c2401a8,0x149);
> +       reg32_write(0x3c2401ac,0x10);
> +       reg32_write(0x3c2401b0,0x4);
> +       reg32_write(0x3c2401b4,0x18);
> +       reg32_write(0x3c2401b8,0x0);
> +       reg32_write(0x3c2401bc,0x4);
> +       reg32_write(0x3c2401c0,0x78);
> +       reg32_write(0x3c2401c4,0x549);
> +       reg32_write(0x3c2401c8,0x630);
> +       reg32_write(0x3c2401cc,0x159);
> +       reg32_write(0x3c2401d0,0xd49);
> +       reg32_write(0x3c2401d4,0x630);
> +       reg32_write(0x3c2401d8,0x159);
> +       reg32_write(0x3c2401dc,0x94a);
> +       reg32_write(0x3c2401e0,0x630);
> +       reg32_write(0x3c2401e4,0x159);
> +       reg32_write(0x3c2401e8,0x441);
> +       reg32_write(0x3c2401ec,0x630);
> +       reg32_write(0x3c2401f0,0x149);
> +       reg32_write(0x3c2401f4,0x42);
> +       reg32_write(0x3c2401f8,0x630);
> +       reg32_write(0x3c2401fc,0x149);
> +       reg32_write(0x3c240200,0x1);
> +       reg32_write(0x3c240204,0x630);
> +       reg32_write(0x3c240208,0x149);
> +       reg32_write(0x3c24020c,0x0);
> +       reg32_write(0x3c240210,0xe0);
> +       reg32_write(0x3c240214,0x109);
> +       reg32_write(0x3c240218,0xa);
> +       reg32_write(0x3c24021c,0x10);
> +       reg32_write(0x3c240220,0x109);
> +       reg32_write(0x3c240224,0x9);
> +       reg32_write(0x3c240228,0x3c0);
> +       reg32_write(0x3c24022c,0x149);
> +       reg32_write(0x3c240230,0x9);
> +       reg32_write(0x3c240234,0x3c0);
> +       reg32_write(0x3c240238,0x159);
> +       reg32_write(0x3c24023c,0x18);
> +       reg32_write(0x3c240240,0x10);
> +       reg32_write(0x3c240244,0x109);
> +       reg32_write(0x3c240248,0x0);
> +       reg32_write(0x3c24024c,0x3c0);
> +       reg32_write(0x3c240250,0x109);
> +       reg32_write(0x3c240254,0x18);
> +       reg32_write(0x3c240258,0x4);
> +       reg32_write(0x3c24025c,0x48);
> +       reg32_write(0x3c240260,0x18);
> +       reg32_write(0x3c240264,0x4);
> +       reg32_write(0x3c240268,0x58);
> +       reg32_write(0x3c24026c,0xa);
> +       reg32_write(0x3c240270,0x10);
> +       reg32_write(0x3c240274,0x109);
> +       reg32_write(0x3c240278,0x2);
> +       reg32_write(0x3c24027c,0x10);
> +       reg32_write(0x3c240280,0x109);
> +       reg32_write(0x3c240284,0x5);
> +       reg32_write(0x3c240288,0x7c0);
> +       reg32_write(0x3c24028c,0x109);
> +       reg32_write(0x3c240290,0x10);
> +       reg32_write(0x3c240294,0x10);
> +       reg32_write(0x3c240298,0x109);
> +       reg32_write(0x3c100000,0x811);
> +       reg32_write(0x3c100080,0x880);
> +       reg32_write(0x3c100100,0x0);
> +       reg32_write(0x3c100180,0x0);
> +       reg32_write(0x3c100004,0x4008);
> +       reg32_write(0x3c100084,0x83);
> +       reg32_write(0x3c100104,0x4f);
> +       reg32_write(0x3c100184,0x0);
> +       reg32_write(0x3c100008,0x4040);
> +       reg32_write(0x3c100088,0x83);
> +       reg32_write(0x3c100108,0x51);
> +       reg32_write(0x3c100188,0x0);
> +       reg32_write(0x3c10000c,0x811);
> +       reg32_write(0x3c10008c,0x880);
> +       reg32_write(0x3c10010c,0x0);
> +       reg32_write(0x3c10018c,0x0);
> +       reg32_write(0x3c100010,0x720);
> +       reg32_write(0x3c100090,0xf);
> +       reg32_write(0x3c100110,0x1740);
> +       reg32_write(0x3c100190,0x0);
> +       reg32_write(0x3c100014,0x16);
> +       reg32_write(0x3c100094,0x83);
> +       reg32_write(0x3c100114,0x4b);
> +       reg32_write(0x3c100194,0x0);
> +       reg32_write(0x3c100018,0x716);
> +       reg32_write(0x3c100098,0xf);
> +       reg32_write(0x3c100118,0x2001);
> +       reg32_write(0x3c100198,0x0);
> +       reg32_write(0x3c10001c,0x716);
> +       reg32_write(0x3c10009c,0xf);
> +       reg32_write(0x3c10011c,0x2800);
> +       reg32_write(0x3c10019c,0x0);
> +       reg32_write(0x3c100020,0x716);
> +       reg32_write(0x3c1000a0,0xf);
> +       reg32_write(0x3c100120,0xf00);
> +       reg32_write(0x3c1001a0,0x0);
> +       reg32_write(0x3c100024,0x720);
> +       reg32_write(0x3c1000a4,0xf);
> +       reg32_write(0x3c100124,0x1400);
> +       reg32_write(0x3c1001a4,0x0);
> +       reg32_write(0x3c100028,0xe08);
> +       reg32_write(0x3c1000a8,0xc15);
> +       reg32_write(0x3c100128,0x0);
> +       reg32_write(0x3c1001a8,0x0);
> +       reg32_write(0x3c10002c,0x623);
> +       reg32_write(0x3c1000ac,0x15);
> +       reg32_write(0x3c10012c,0x0);
> +       reg32_write(0x3c1001ac,0x0);
> +       reg32_write(0x3c100030,0x4028);
> +       reg32_write(0x3c1000b0,0x80);
> +       reg32_write(0x3c100130,0x0);
> +       reg32_write(0x3c1001b0,0x0);
> +       reg32_write(0x3c100034,0xe08);
> +       reg32_write(0x3c1000b4,0xc1a);
> +       reg32_write(0x3c100134,0x0);
> +       reg32_write(0x3c1001b4,0x0);
> +       reg32_write(0x3c100038,0x623);
> +       reg32_write(0x3c1000b8,0x1a);
> +       reg32_write(0x3c100138,0x0);
> +       reg32_write(0x3c1001b8,0x0);
> +       reg32_write(0x3c10003c,0x4040);
> +       reg32_write(0x3c1000bc,0x80);
> +       reg32_write(0x3c10013c,0x0);
> +       reg32_write(0x3c1001bc,0x0);
> +       reg32_write(0x3c100040,0x2604);
> +       reg32_write(0x3c1000c0,0x15);
> +       reg32_write(0x3c100140,0x0);
> +       reg32_write(0x3c1001c0,0x0);
> +       reg32_write(0x3c100044,0x708);
> +       reg32_write(0x3c1000c4,0x5);
> +       reg32_write(0x3c100144,0x0);
> +       reg32_write(0x3c1001c4,0x2002);
> +       reg32_write(0x3c100048,0x8);
> +       reg32_write(0x3c1000c8,0x80);
> +       reg32_write(0x3c100148,0x0);
> +       reg32_write(0x3c1001c8,0x0);
> +       reg32_write(0x3c10004c,0x2604);
> +       reg32_write(0x3c1000cc,0x1a);
> +       reg32_write(0x3c10014c,0x0);
> +       reg32_write(0x3c1001cc,0x0);
> +       reg32_write(0x3c100050,0x708);
> +       reg32_write(0x3c1000d0,0xa);
> +       reg32_write(0x3c100150,0x0);
> +       reg32_write(0x3c1001d0,0x2002);
> +       reg32_write(0x3c100054,0x4040);
> +       reg32_write(0x3c1000d4,0x80);
> +       reg32_write(0x3c100154,0x0);
> +       reg32_write(0x3c1001d4,0x0);
> +       reg32_write(0x3c100058,0x60a);
> +       reg32_write(0x3c1000d8,0x15);
> +       reg32_write(0x3c100158,0x1200);
> +       reg32_write(0x3c1001d8,0x0);
> +       reg32_write(0x3c10005c,0x61a);
> +       reg32_write(0x3c1000dc,0x15);
> +       reg32_write(0x3c10015c,0x1300);
> +       reg32_write(0x3c1001dc,0x0);
> +       reg32_write(0x3c100060,0x60a);
> +       reg32_write(0x3c1000e0,0x1a);
> +       reg32_write(0x3c100160,0x1200);
> +       reg32_write(0x3c1001e0,0x0);
> +       reg32_write(0x3c100064,0x642);
> +       reg32_write(0x3c1000e4,0x1a);
> +       reg32_write(0x3c100164,0x1300);
> +       reg32_write(0x3c1001e4,0x0);
> +       reg32_write(0x3c100068,0x4808);
> +       reg32_write(0x3c1000e8,0x880);
> +       reg32_write(0x3c100168,0x0);
> +       reg32_write(0x3c1001e8,0x0);
> +       reg32_write(0x3c24029c,0x0);
> +       reg32_write(0x3c2402a0,0x790);
> +       reg32_write(0x3c2402a4,0x11a);
> +       reg32_write(0x3c2402a8,0x8);
> +       reg32_write(0x3c2402ac,0x7aa);
> +       reg32_write(0x3c2402b0,0x2a);
> +       reg32_write(0x3c2402b4,0x10);
> +       reg32_write(0x3c2402b8,0x7b2);
> +       reg32_write(0x3c2402bc,0x2a);
> +       reg32_write(0x3c2402c0,0x0);
> +       reg32_write(0x3c2402c4,0x7c8);
> +       reg32_write(0x3c2402c8,0x109);
> +       reg32_write(0x3c2402cc,0x10);
> +       reg32_write(0x3c2402d0,0x2a8);
> +       reg32_write(0x3c2402d4,0x129);
> +       reg32_write(0x3c2402d8,0x8);
> +       reg32_write(0x3c2402dc,0x370);
> +       reg32_write(0x3c2402e0,0x129);
> +       reg32_write(0x3c2402e4,0xa);
> +       reg32_write(0x3c2402e8,0x3c8);
> +       reg32_write(0x3c2402ec,0x1a9);
> +       reg32_write(0x3c2402f0,0xc);
> +       reg32_write(0x3c2402f4,0x408);
> +       reg32_write(0x3c2402f8,0x199);
> +       reg32_write(0x3c2402fc,0x14);
> +       reg32_write(0x3c240300,0x790);
> +       reg32_write(0x3c240304,0x11a);
> +       reg32_write(0x3c240308,0x8);
> +       reg32_write(0x3c24030c,0x4);
> +       reg32_write(0x3c240310,0x18);
> +       reg32_write(0x3c240314,0xe);
> +       reg32_write(0x3c240318,0x408);
> +       reg32_write(0x3c24031c,0x199);
> +       reg32_write(0x3c240320,0x8);
> +       reg32_write(0x3c240324,0x8568);
> +       reg32_write(0x3c240328,0x108);
> +       reg32_write(0x3c24032c,0x18);
> +       reg32_write(0x3c240330,0x790);
> +       reg32_write(0x3c240334,0x16a);
> +       reg32_write(0x3c240338,0x8);
> +       reg32_write(0x3c24033c,0x1d8);
> +       reg32_write(0x3c240340,0x169);
> +       reg32_write(0x3c240344,0x10);
> +       reg32_write(0x3c240348,0x8558);
> +       reg32_write(0x3c24034c,0x168);
> +       reg32_write(0x3c240350,0x70);
> +       reg32_write(0x3c240354,0x788);
> +       reg32_write(0x3c240358,0x16a);
> +       reg32_write(0x3c24035c,0x1ff8);
> +       reg32_write(0x3c240360,0x85a8);
> +       reg32_write(0x3c240364,0x1e8);
> +       reg32_write(0x3c240368,0x50);
> +       reg32_write(0x3c24036c,0x798);
> +       reg32_write(0x3c240370,0x16a);
> +       reg32_write(0x3c240374,0x60);
> +       reg32_write(0x3c240378,0x7a0);
> +       reg32_write(0x3c24037c,0x16a);
> +       reg32_write(0x3c240380,0x8);
> +       reg32_write(0x3c240384,0x8310);
> +       reg32_write(0x3c240388,0x168);
> +       reg32_write(0x3c24038c,0x8);
> +       reg32_write(0x3c240390,0xa310);
> +       reg32_write(0x3c240394,0x168);
> +       reg32_write(0x3c240398,0xa);
> +       reg32_write(0x3c24039c,0x408);
> +       reg32_write(0x3c2403a0,0x169);
> +       reg32_write(0x3c2403a4,0x6e);
> +       reg32_write(0x3c2403a8,0x0);
> +       reg32_write(0x3c2403ac,0x68);
> +       reg32_write(0x3c2403b0,0x0);
> +       reg32_write(0x3c2403b4,0x408);
> +       reg32_write(0x3c2403b8,0x169);
> +       reg32_write(0x3c2403bc,0x0);
> +       reg32_write(0x3c2403c0,0x8310);
> +       reg32_write(0x3c2403c4,0x168);
> +       reg32_write(0x3c2403c8,0x0);
> +       reg32_write(0x3c2403cc,0xa310);
> +       reg32_write(0x3c2403d0,0x168);
> +       reg32_write(0x3c2403d4,0x1ff8);
> +       reg32_write(0x3c2403d8,0x85a8);
> +       reg32_write(0x3c2403dc,0x1e8);
> +       reg32_write(0x3c2403e0,0x68);
> +       reg32_write(0x3c2403e4,0x798);
> +       reg32_write(0x3c2403e8,0x16a);
> +       reg32_write(0x3c2403ec,0x78);
> +       reg32_write(0x3c2403f0,0x7a0);
> +       reg32_write(0x3c2403f4,0x16a);
> +       reg32_write(0x3c2403f8,0x68);
> +       reg32_write(0x3c2403fc,0x790);
> +       reg32_write(0x3c240400,0x16a);
> +       reg32_write(0x3c240404,0x8);
> +       reg32_write(0x3c240408,0x8b10);
> +       reg32_write(0x3c24040c,0x168);
> +       reg32_write(0x3c240410,0x8);
> +       reg32_write(0x3c240414,0xab10);
> +       reg32_write(0x3c240418,0x168);
> +       reg32_write(0x3c24041c,0xa);
> +       reg32_write(0x3c240420,0x408);
> +       reg32_write(0x3c240424,0x169);
> +       reg32_write(0x3c240428,0x58);
> +       reg32_write(0x3c24042c,0x0);
> +       reg32_write(0x3c240430,0x68);
> +       reg32_write(0x3c240434,0x0);
> +       reg32_write(0x3c240438,0x408);
> +       reg32_write(0x3c24043c,0x169);
> +       reg32_write(0x3c240440,0x0);
> +       reg32_write(0x3c240444,0x8b10);
> +       reg32_write(0x3c240448,0x168);
> +       reg32_write(0x3c24044c,0x0);
> +       reg32_write(0x3c240450,0xab10);
> +       reg32_write(0x3c240454,0x168);
> +       reg32_write(0x3c240458,0x0);
> +       reg32_write(0x3c24045c,0x1d8);
> +       reg32_write(0x3c240460,0x169);
> +       reg32_write(0x3c240464,0x80);
> +       reg32_write(0x3c240468,0x790);
> +       reg32_write(0x3c24046c,0x16a);
> +       reg32_write(0x3c240470,0x18);
> +       reg32_write(0x3c240474,0x7aa);
> +       reg32_write(0x3c240478,0x6a);
> +       reg32_write(0x3c24047c,0xa);
> +       reg32_write(0x3c240480,0x0);
> +       reg32_write(0x3c240484,0x1e9);
> +       reg32_write(0x3c240488,0x8);
> +       reg32_write(0x3c24048c,0x8080);
> +       reg32_write(0x3c240490,0x108);
> +       reg32_write(0x3c240494,0xf);
> +       reg32_write(0x3c240498,0x408);
> +       reg32_write(0x3c24049c,0x169);
> +       reg32_write(0x3c2404a0,0xc);
> +       reg32_write(0x3c2404a4,0x0);
> +       reg32_write(0x3c2404a8,0x68);
> +       reg32_write(0x3c2404ac,0x9);
> +       reg32_write(0x3c2404b0,0x0);
> +       reg32_write(0x3c2404b4,0x1a9);
> +       reg32_write(0x3c2404b8,0x0);
> +       reg32_write(0x3c2404bc,0x408);
> +       reg32_write(0x3c2404c0,0x169);
> +       reg32_write(0x3c2404c4,0x0);
> +       reg32_write(0x3c2404c8,0x8080);
> +       reg32_write(0x3c2404cc,0x108);
> +       reg32_write(0x3c2404d0,0x8);
> +       reg32_write(0x3c2404d4,0x7aa);
> +       reg32_write(0x3c2404d8,0x6a);
> +       reg32_write(0x3c2404dc,0x0);
> +       reg32_write(0x3c2404e0,0x8568);
> +       reg32_write(0x3c2404e4,0x108);
> +       reg32_write(0x3c2404e8,0xb7);
> +       reg32_write(0x3c2404ec,0x790);
> +       reg32_write(0x3c2404f0,0x16a);
> +       reg32_write(0x3c2404f4,0x1f);
> +       reg32_write(0x3c2404f8,0x0);
> +       reg32_write(0x3c2404fc,0x68);
> +       reg32_write(0x3c240500,0x8);
> +       reg32_write(0x3c240504,0x8558);
> +       reg32_write(0x3c240508,0x168);
> +       reg32_write(0x3c24050c,0xf);
> +       reg32_write(0x3c240510,0x408);
> +       reg32_write(0x3c240514,0x169);
> +       reg32_write(0x3c240518,0xc);
> +       reg32_write(0x3c24051c,0x0);
> +       reg32_write(0x3c240520,0x68);
> +       reg32_write(0x3c240524,0x0);
> +       reg32_write(0x3c240528,0x408);
> +       reg32_write(0x3c24052c,0x169);
> +       reg32_write(0x3c240530,0x0);
> +       reg32_write(0x3c240534,0x8558);
> +       reg32_write(0x3c240538,0x168);
> +       reg32_write(0x3c24053c,0x8);
> +       reg32_write(0x3c240540,0x3c8);
> +       reg32_write(0x3c240544,0x1a9);
> +       reg32_write(0x3c240548,0x3);
> +       reg32_write(0x3c24054c,0x370);
> +       reg32_write(0x3c240550,0x129);
> +       reg32_write(0x3c240554,0x20);
> +       reg32_write(0x3c240558,0x2aa);
> +       reg32_write(0x3c24055c,0x9);
> +       reg32_write(0x3c240560,0x0);
> +       reg32_write(0x3c240564,0x400);
> +       reg32_write(0x3c240568,0x10e);
> +       reg32_write(0x3c24056c,0x8);
> +       reg32_write(0x3c240570,0xe8);
> +       reg32_write(0x3c240574,0x109);
> +       reg32_write(0x3c240578,0x0);
> +       reg32_write(0x3c24057c,0x8140);
> +       reg32_write(0x3c240580,0x10c);
> +       reg32_write(0x3c240584,0x10);
> +       reg32_write(0x3c240588,0x8138);
> +       reg32_write(0x3c24058c,0x10c);
> +       reg32_write(0x3c240590,0x8);
> +       reg32_write(0x3c240594,0x7c8);
> +       reg32_write(0x3c240598,0x101);
> +       reg32_write(0x3c24059c,0x8);
> +       reg32_write(0x3c2405a0,0x0);
> +       reg32_write(0x3c2405a4,0x8);
> +       reg32_write(0x3c2405a8,0x8);
> +       reg32_write(0x3c2405ac,0x448);
> +       reg32_write(0x3c2405b0,0x109);
> +       reg32_write(0x3c2405b4,0xf);
> +       reg32_write(0x3c2405b8,0x7c0);
> +       reg32_write(0x3c2405bc,0x109);
> +       reg32_write(0x3c2405c0,0x0);
> +       reg32_write(0x3c2405c4,0xe8);
> +       reg32_write(0x3c2405c8,0x109);
> +       reg32_write(0x3c2405cc,0x47);
> +       reg32_write(0x3c2405d0,0x630);
> +       reg32_write(0x3c2405d4,0x109);
> +       reg32_write(0x3c2405d8,0x8);
> +       reg32_write(0x3c2405dc,0x618);
> +       reg32_write(0x3c2405e0,0x109);
> +       reg32_write(0x3c2405e4,0x8);
> +       reg32_write(0x3c2405e8,0xe0);
> +       reg32_write(0x3c2405ec,0x109);
> +       reg32_write(0x3c2405f0,0x0);
> +       reg32_write(0x3c2405f4,0x7c8);
> +       reg32_write(0x3c2405f8,0x109);
> +       reg32_write(0x3c2405fc,0x8);
> +       reg32_write(0x3c240600,0x8140);
> +       reg32_write(0x3c240604,0x10c);
> +       reg32_write(0x3c240608,0x0);
> +       reg32_write(0x3c24060c,0x1);
> +       reg32_write(0x3c240610,0x8);
> +       reg32_write(0x3c240614,0x8);
> +       reg32_write(0x3c240618,0x4);
> +       reg32_write(0x3c24061c,0x8);
> +       reg32_write(0x3c240620,0x8);
> +       reg32_write(0x3c240624,0x7c8);
> +       reg32_write(0x3c240628,0x101);
> +       reg32_write(0x3c240018,0x0);
> +       reg32_write(0x3c24001c,0x0);
> +       reg32_write(0x3c240020,0x8);
> +       reg32_write(0x3c240024,0x0);
> +       reg32_write(0x3c240028,0x0);
> +       reg32_write(0x3c24002c,0x0);
> +       reg32_write(0x3c34039c,0x400);
> +       reg32_write(0x3c24005c,0x0);
> +       reg32_write(0x3c24007c,0x2a);
> +       reg32_write(0x3c240098,0x6a);
> +       reg32_write(0x3c100340,0x0);
> +       reg32_write(0x3c100344,0x101);
> +       reg32_write(0x3c100348,0x105);
> +       reg32_write(0x3c10034c,0x107);
> +       reg32_write(0x3c100350,0x10f);
> +       reg32_write(0x3c100354,0x202);
> +       reg32_write(0x3c100358,0x20a);
> +       reg32_write(0x3c10035c,0x20b);
> +       reg32_write(0x3c0800e8,0x2);
> +       reg32_write(0x3c08002c,0x65);
> +       reg32_write(0x3c080030,0xc9);
> +       reg32_write(0x3c080034,0x7d1);
> +       reg32_write(0x3c080038,0x2c);
> +       reg32_write(0x3c48002c,0x65);
> +       reg32_write(0x3c480030,0xc9);
> +       reg32_write(0x3c480034,0x7d1);
> +       reg32_write(0x3c480038,0x2c);
> +       reg32_write(0x3c240030,0x0);
> +       reg32_write(0x3c240034,0x173);
> +       reg32_write(0x3c240038,0x60);
> +       reg32_write(0x3c24003c,0x6110);
> +       reg32_write(0x3c240040,0x2152);
> +       reg32_write(0x3c240044,0xdfbd);
> +       reg32_write(0x3c240048,0x60);
> +       reg32_write(0x3c24004c,0x6152);
> +       reg32_write(0x3c080040,0x5a);
> +       reg32_write(0x3c080044,0x3);
> +       reg32_write(0x3c480040,0x5a);
> +       reg32_write(0x3c480044,0x3);
> +       reg32_write(0x3c100200,0xe0);
> +       reg32_write(0x3c100204,0x12);
> +       reg32_write(0x3c100208,0xe0);
> +       reg32_write(0x3c10020c,0x12);
> +       reg32_write(0x3c100210,0xe0);
> +       reg32_write(0x3c100214,0x12);
> +       reg32_write(0x3c500200,0xe0);
> +       reg32_write(0x3c500204,0x12);
> +       reg32_write(0x3c500208,0xe0);
> +       reg32_write(0x3c50020c,0x12);
> +       reg32_write(0x3c500210,0xe0);
> +       reg32_write(0x3c500214,0x12);
> +       reg32_write(0x3c1003f4,0xf);
> +       reg32_write(0x3c040044,0x1);
> +       reg32_write(0x3c040048,0x1);
> +       reg32_write(0x3c04004c,0x180);
> +       reg32_write(0x3c040060,0x1);
> +       reg32_write(0x3c040008,0x6209);
> +       reg32_write(0x3c0402c8,0x1);
> +       reg32_write(0x3c0406d0,0x1);
> +       reg32_write(0x3c040ad0,0x1);
> +       reg32_write(0x3c040ed0,0x1);
> +       reg32_write(0x3c0412d0,0x1);
> +       reg32_write(0x3c0416d0,0x1);
> +       reg32_write(0x3c041ad0,0x1);
> +       reg32_write(0x3c041ed0,0x1);
> +       reg32_write(0x3c0422d0,0x1);
> +       reg32_write(0x3c044044,0x1);
> +       reg32_write(0x3c044048,0x1);
> +       reg32_write(0x3c04404c,0x180);
> +       reg32_write(0x3c044060,0x1);
> +       reg32_write(0x3c044008,0x6209);
> +       reg32_write(0x3c0442c8,0x1);
> +       reg32_write(0x3c0446d0,0x1);
> +       reg32_write(0x3c044ad0,0x1);
> +       reg32_write(0x3c044ed0,0x1);
> +       reg32_write(0x3c0452d0,0x1);
> +       reg32_write(0x3c0456d0,0x1);
> +       reg32_write(0x3c045ad0,0x1);
> +       reg32_write(0x3c045ed0,0x1);
> +       reg32_write(0x3c0462d0,0x1);
> +       reg32_write(0x3c048044,0x1);
> +       reg32_write(0x3c048048,0x1);
> +       reg32_write(0x3c04804c,0x180);
> +       reg32_write(0x3c048060,0x1);
> +       reg32_write(0x3c048008,0x6209);
> +       reg32_write(0x3c0482c8,0x1);
> +       reg32_write(0x3c0486d0,0x1);
> +       reg32_write(0x3c048ad0,0x1);
> +       reg32_write(0x3c048ed0,0x1);
> +       reg32_write(0x3c0492d0,0x1);
> +       reg32_write(0x3c0496d0,0x1);
> +       reg32_write(0x3c049ad0,0x1);
> +       reg32_write(0x3c049ed0,0x1);
> +       reg32_write(0x3c04a2d0,0x1);
> +       reg32_write(0x3c04c044,0x1);
> +       reg32_write(0x3c04c048,0x1);
> +       reg32_write(0x3c04c04c,0x180);
> +       reg32_write(0x3c04c060,0x1);
> +       reg32_write(0x3c04c008,0x6209);
> +       reg32_write(0x3c04c2c8,0x1);
> +       reg32_write(0x3c04c6d0,0x1);
> +       reg32_write(0x3c04cad0,0x1);
> +       reg32_write(0x3c04ced0,0x1);
> +       reg32_write(0x3c04d2d0,0x1);
> +       reg32_write(0x3c04d6d0,0x1);
> +       reg32_write(0x3c04dad0,0x1);
> +       reg32_write(0x3c04ded0,0x1);
> +       reg32_write(0x3c04e2d0,0x1);
> +       reg32_write(0x3c0800e8,0x2);
> +       reg32_write(0x3c300200,0x2);
> +       //customer Post Train
> +       reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x00020010, 0x0000006a);
> +       reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x0002001d, 0x00000001);
> +       /*
> +        * CalBusy.0 =1, indicates the calibrator is actively calibrating.
> +        * Wait Calibrating done.
> +        */
> +       tmp_t = 1;
> +       while(tmp_t) {
> +               tmp = reg32_read(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x20097);
> +               tmp_t = tmp & 0x01;
> +       }
> +       reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0000, 0x0);
> +       reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x2006e, 0x0);
> +       //disable APB bus to access DDRPHY RAM
> +       reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0000, 0x1);
> +}
> \ No newline at end of file
> diff --git a/arch/arm/boards/zii-imx8mq-dev/flash-header-zii-imx8mq-dev.imxcfg b/arch/arm/boards/zii-imx8mq-dev/flash-header-zii-imx8mq-dev.imxcfg
> new file mode 100644
> index 000000000..aff8321b9
> --- /dev/null
> +++ b/arch/arm/boards/zii-imx8mq-dev/flash-header-zii-imx8mq-dev.imxcfg
> @@ -0,0 +1,5 @@
> +soc imx8mq
> +
> +loadaddr 0x007E1000
> +max_load_size 0x3F000
> +dcdofs 0x400
> diff --git a/arch/arm/boards/zii-imx8mq-dev/lowlevel.c b/arch/arm/boards/zii-imx8mq-dev/lowlevel.c
> new file mode 100644
> index 000000000..a39069d1b
> --- /dev/null
> +++ b/arch/arm/boards/zii-imx8mq-dev/lowlevel.c
> @@ -0,0 +1,211 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Copyright (C) 2019 Zodiac Inflight Innovation
> + * Author: Andrey Smirnov <andrew.smirnov@gmail.com>
> + */
> +
> +#include <common.h>
> +#include <linux/sizes.h>
> +#include <mach/generic.h>
> +#include <asm/barebox-arm-head.h>
> +#include <asm/barebox-arm.h>
> +#include <mach/imx8-ccm-regs.h>
> +#include <mach/iomux-mx8.h>
> +#include <mach/imx8-ddrc.h>
> +#include <mach/xload.h>
> +#include <io.h>
> +#include <debug_ll.h>
> +#include <asm/cache.h>
> +#include <asm/sections.h>
> +#include <asm/mmu.h>
> +#include <mach/atf.h>
> +#include <mach/esdctl.h>
> +
> +#include "ddr.h"
> +
> +#define UART_PAD_CTRL  MUX_PAD_CTRL(PAD_CTL_DSE_3P3V_45_OHM)
> +
> +static void setup_uart(void)
> +{
> +       void __iomem *iomux = IOMEM(MX8MQ_IOMUXC_BASE_ADDR);
> +       void __iomem *ccm   = IOMEM(MX8MQ_CCM_BASE_ADDR);
> +
> +       writel(CCM_CCGR_SETTINGn_NEEDED(0),
> +              ccm + CCM_CCGRn_CLR(CCM_CCGR_UART1));
> +       writel(CCM_TARGET_ROOTn_ENABLE | UART1_CLK_ROOT__25M_REF_CLK,
> +              ccm + CCM_TARGET_ROOTn(UART1_CLK_ROOT));
> +       writel(CCM_CCGR_SETTINGn_NEEDED(0),
> +              ccm + CCM_CCGRn_SET(CCM_CCGR_UART1));
> +
> +       imx_setup_pad(iomux, IMX8MQ_PAD_UART1_TXD__UART1_TX | UART_PAD_CTRL);
> +
> +       imx8_uart_setup_ll();
> +
> +       putc_ll('>');
> +}
> +
> +/*
> + * Two functions below are used when Barebox is used as a DDR
> + * initializing payload for OpenOCD
> + */
> +#define RDU3_TCM_MAGIC_LOCATION        0x007e1028
> +#define RDU3_TCM_MAGIC_REQUEST 0xdeadbeef
> +#define RDU3_TCM_MAGIC_REPLY   0xbaadf00d
> +
> +static bool running_as_ddr_helper(void)
> +{
> +       return readl(RDU3_TCM_MAGIC_LOCATION) == RDU3_TCM_MAGIC_REQUEST;
> +}
> +
> +static __noreturn void ddr_helper_halt(void)
> +{
> +       writel(RDU3_TCM_MAGIC_REPLY, RDU3_TCM_MAGIC_LOCATION);
> +       asm volatile("hlt 0");
> +       BUG();  /* To prevent noreturn warnings */
> +}
> +
> +static void zii_imx8mq_dev_sram_setup(void)
> +{
> +       enum bootsource src = BOOTSOURCE_UNKNOWN;
> +       int instance = BOOTSOURCE_INSTANCE_UNKNOWN;
> +       int ret = -ENOTSUPP;
> +
> +       ddr_init();
> +
> +       if (running_as_ddr_helper())
> +               ddr_helper_halt();
> +
> +       imx8_get_boot_source(&src, &instance);
> +
> +       if (src == BOOTSOURCE_MMC)
> +               ret = imx8_esdhc_start_image(instance);
> +
> +       BUG_ON(ret);
> +}
> +
> +enum zii_platform_imx8mq_type {
> +       ZII_PLATFORM_IMX8MQ_ULTRA_RMB3 = 0b0000,
> +       ZII_PLATFORM_IMX8MQ_ULTRA_ZEST = 0b1000,
> +};
> +
> +static unsigned int get_system_type(void)
> +{
> +#define GPIO_DR                0x000
> +#define GPIO_GDIR      0x004
> +#define SYSTEM_TYPE    GENMASK(24, 21)
> +
> +       u32 gdir, dr;
> +       void __iomem *gpio3 = IOMEM(MX8MQ_GPIO3_BASE_ADDR);
> +       void __iomem *iomuxbase = IOMEM(MX8MQ_IOMUXC_BASE_ADDR);
> +
> +       /*
> +        * System type is encoded as a 4-bit number specified by the
> +        * following pins (pulled up or down with resistors on the
> +        * board).
> +       */
> +       imx_setup_pad(iomuxbase, IMX8MQ_PAD_SAI5_RXD0__GPIO3_IO21);
> +       imx_setup_pad(iomuxbase, IMX8MQ_PAD_SAI5_RXD1__GPIO3_IO22);
> +       imx_setup_pad(iomuxbase, IMX8MQ_PAD_SAI5_RXD2__GPIO3_IO23);
> +       imx_setup_pad(iomuxbase, IMX8MQ_PAD_SAI5_RXD3__GPIO3_IO24);
> +
> +       gdir = readl(gpio3 + GPIO_GDIR);
> +       gdir &= ~SYSTEM_TYPE;
> +       writel(gdir, gpio3 + GPIO_GDIR);
> +
> +       dr = readl(gpio3 + GPIO_DR);
> +
> +       return FIELD_GET(SYSTEM_TYPE, dr);
> +}
> +
> +extern char __dtb_imx8mq_zii_ultra_rmb3_start[];
> +extern char __dtb_imx8mq_zii_ultra_zest_start[];
> +
> +/*
> + * Power-on execution flow of start_zii_imx8mq_dev() might not be
> + * obvious for a very frist read, so here's, hopefully helpful,
> + * summary:
> + *
> + * 1. MaskROM uploads PBL into OCRAM and that's where this function is
> + *    executed for the first time
> + *
> + * 2. DDR is initialized and full i.MX image is loaded to the
> + *    beginning of RAM
> + *
> + * 3. start_nxp_imx8mq_evk, now in RAM, is executed again
> + *
> + * 4. BL31 blob is uploaded to OCRAM and the control is transfer to it
> + *
> + * 5. BL31 exits EL3 into EL2 at address MX8MQ_ATF_BL33_BASE_ADDR,
> + *    executing start_nxp_imx8mq_evk() the third time
> + *
> + * 6. Standard barebox boot flow continues
> + */
> +ENTRY_FUNCTION(start_zii_imx8mq_dev, r0, r1, r2)
> +{
> +       unsigned int system_type;
> +       void *fdt;
> +
> +       arm_cpu_lowlevel_init();
> +
> +       if (IS_ENABLED(CONFIG_DEBUG_LL))
> +               setup_uart();
> +
> +       if (get_pc() < MX8MQ_DDR_CSD1_BASE_ADDR) {
> +               /*
> +                * We assume that we were just loaded by MaskROM into
> +                * SRAM if we are not running from DDR. We also assume
> +                * that means DDR needs to be initialized for the
> +                * first time.
> +                */
> +               zii_imx8mq_dev_sram_setup();
> +       }
> +       /*
> +        * Straight from the power-on we are at EL3, so the following
> +        * code _will_ load and jump to ATF.
> +        *
> +        * However when we are re-executed upon exit from ATF's
> +        * initialization routine, it is EL2 which means we'll skip
> +        * loadting ATF blob again
> +        */
> +       if (current_el() == 3) {
> +               const u8 *bl31;
> +               size_t bl31_size;
> +
> +               get_builtin_firmware(imx_imx8m_bl31_bin, &bl31, &bl31_size);
> +               imx8mq_atf_load_bl31(bl31, bl31_size);
> +       }
> +
> +       system_type = get_system_type();
> +
> +       switch (system_type) {
> +       default:
> +               /*
> +                * see similar code in
> +                * arch/arm/boards/zii-vf610-dev/lowlevel.c for
> +                * reasoning for placing barrier() below.
> +                */
> +               barrier();
> +
> +               if (IS_ENABLED(CONFIG_DEBUG_LL)) {
> +                       relocate_to_current_adr();
> +                       setup_c();
> +                       puts_ll("\n*********************************\n");
> +                       puts_ll("* Unknown system type: ");
> +                       puthex_ll(system_type);
> +                       puts_ll("\n* Assuming Ultra RMB3\n");
> +                       puts_ll("*********************************\n");
> +               }
> +               /* FALLTHROUGH */
> +       case ZII_PLATFORM_IMX8MQ_ULTRA_RMB3:
> +               fdt = __dtb_imx8mq_zii_ultra_rmb3_start;
> +               break;
> +       case ZII_PLATFORM_IMX8MQ_ULTRA_ZEST:
> +               fdt = __dtb_imx8mq_zii_ultra_zest_start;
> +               break;
> +       }
> +
> +       /*
> +        * Standard entry we hit once we initialized both DDR and ATF
> +        */
> +       imx8mq_barebox_entry(fdt);
> +}
> diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
> index 20606c3c7..3cdee1ffb 100644
> --- a/arch/arm/dts/Makefile
> +++ b/arch/arm/dts/Makefile
> @@ -113,6 +113,9 @@ pbl-dtb-$(CONFIG_MACH_ZII_RDU1) +=  \
>         imx51-zii-scu2-mezz.dtb.o       \
>         imx51-zii-scu3-esb.dtb.o
>  pbl-dtb-$(CONFIG_MACH_ZII_RDU2) += imx6q-zii-rdu2.dtb.o imx6qp-zii-rdu2.dtb.o
> +pbl-dtb-$(CONFIG_MACH_ZII_IMX8MQ_DEV) +=       \
> +       imx8mq-zii-ultra-rmb3.dtb.o             \
> +       imx8mq-zii-ultra-zest.dtb.o
>  pbl-dtb-$(CONFIG_MACH_ZII_VF610_DEV) += \
>         vf610-zii-dev-rev-b.dtb.o       \
>         vf610-zii-dev-rev-c.dtb.o       \
> diff --git a/arch/arm/dts/imx8mq-zii-ultra-rmb3.dts b/arch/arm/dts/imx8mq-zii-ultra-rmb3.dts
> new file mode 100644
> index 000000000..b2b3a560b
> --- /dev/null
> +++ b/arch/arm/dts/imx8mq-zii-ultra-rmb3.dts
> @@ -0,0 +1,39 @@
> +// SPDX-License-Identifier: (GPL-2.0 OR MIT)
> +/*
> + * Copyright (C) 2019 Zodiac Inflight Innovations
> + */
> +
> +/dts-v1/;
> +
> +#include "imx8mq-zii-ultra.dtsi"
> +
> +/ {
> +       model = "ZII i.MX8MQ Ultra RMB3 Board";
> +       compatible = "zii,imx8mq-ultra-rmb3", "zii,imx8mq-ultra", "fsl,imx8mq";
> +};
> +
> +&ecspi1 {
> +       pinctrl-names = "default";
> +       pinctrl-0 = <&pinctrl_ecspi1>;
> +       cs-gpios = <&gpio5 9 GPIO_ACTIVE_HIGH>;
> +       status = "okay";
> +       #address-cells = <1>;
> +       #size-cells = <0>;
> +
> +       nor_flash: flash@0 {
> +               compatible = "st,m25p128", "jedec,spi-nor";
> +               spi-max-frequency = <20000000>;
> +               reg = <0>;
> +       };
> +};
> +
> +&iomuxc {
> +       pinctrl_ecspi1: ecspi1grp {
> +               fsl,pins = <
> +                       MX8MQ_IOMUXC_ECSPI1_SS0_GPIO5_IO9       0x19
> +                       MX8MQ_IOMUXC_ECSPI1_SCLK_ECSPI1_SCLK    0x82
> +                       MX8MQ_IOMUXC_ECSPI1_MISO_ECSPI1_MISO    0x82
> +                       MX8MQ_IOMUXC_ECSPI1_MOSI_ECSPI1_MOSI    0x82
> +               >;
> +       };
> +};
> diff --git a/arch/arm/dts/imx8mq-zii-ultra-zest.dts b/arch/arm/dts/imx8mq-zii-ultra-zest.dts
> new file mode 100644
> index 000000000..c2ac05d8e
> --- /dev/null
> +++ b/arch/arm/dts/imx8mq-zii-ultra-zest.dts
> @@ -0,0 +1,13 @@
> +// SPDX-License-Identifier: (GPL-2.0 OR MIT)
> +/*
> + * Copyright (C) 2019 Zodiac Inflight Innovations
> + */
> +
> +/dts-v1/;
> +
> +#include "imx8mq-zii-ultra.dtsi"
> +
> +/ {
> +       model = "ZII i.MX8MQ Ultra Zest Board";
> +       compatible = "zii,imx8mq-ultra-zest", "zii,imx8mq-ultra", "fsl,imx8mq";
> +};
> diff --git a/arch/arm/dts/imx8mq-zii-ultra.dtsi b/arch/arm/dts/imx8mq-zii-ultra.dtsi
> new file mode 100644
> index 000000000..a6b2b8966
> --- /dev/null
> +++ b/arch/arm/dts/imx8mq-zii-ultra.dtsi
> @@ -0,0 +1,453 @@
> +// SPDX-License-Identifier: (GPL-2.0 OR MIT)
> +/*
> + * Copyright (C) 2019 Zodiac Inflight Innovations
> + */
> +
> +#include <arm64/freescale/imx8mq.dtsi>
> +#include "imx8mq.dtsi"
> +#include "imx8mq-ddrc.dtsi"
> +
> +/ {
> +       chosen {
> +               stdout-path = &uart1;
> +       };
> +
> +       mdio0: bitbang-mdio {
> +               compatible = "virtual,mdio-gpio";
> +               pinctrl-names = "default";
> +               pinctrl-0 = <&pinctrl_mdio_bitbang>, <&pinctrl_fec1_phy_reset>;
> +               gpios = <&gpio1 13 GPIO_ACTIVE_HIGH>, /* MDC */
> +                       <&gpio1 14 GPIO_ACTIVE_HIGH>; /* MDIO */
> +               #address-cells = <1>;
> +               #size-cells = <0>;
> +
> +               phy0: ethernet-phy@0 {
> +                       reg = <0>;
> +                       reset-gpios = <&gpio1 29 GPIO_ACTIVE_LOW>;
> +               };
> +       };
> +
> +       reg_usdhc2_vmmc: regulator-vsd-3v3 {
> +               pinctrl-names = "default";
> +               pinctrl-0 = <&pinctrl_reg_usdhc2>;
> +               compatible = "regulator-fixed";
> +               regulator-name = "VSD_3V3";
> +               regulator-min-microvolt = <3300000>;
> +               regulator-max-microvolt = <3300000>;
> +               gpio = <&gpio2 19 GPIO_ACTIVE_HIGH>;
> +               enable-active-high;
> +       };
> +};
> +
> +&fec1 {
> +       pinctrl-names = "default";
> +       pinctrl-0 = <&pinctrl_fec1>;
> +
> +       phy-handle = <&phy0>;
> +       phy-mode = "rmii";
> +       status = "okay";
> +
> +       mdio {
> +               #address-cells = <1>;
> +               #size-cells = <0>;
> +               status = "okay";
> +
> +               switch: switch@0 {
> +                       compatible = "marvell,mv88e6085";
> +                       reg = <0>;
> +                       dsa,member = <0 0>;
> +                       eeprom-length = <512>;
> +
> +                       ports {
> +                               #address-cells = <1>;
> +                               #size-cells = <0>;
> +
> +                               port@0 {
> +                                       reg = <0>;
> +                                       label = "gigabit_proc";
> +                               };
> +
> +                               port@1 {
> +                                       reg = <1>;
> +                                       label = "netaux";
> +                               };
> +
> +                               port@2 {
> +                                       reg = <2>;
> +                                       label = "cpu";
> +
> +                                       fixed-link {
> +                                               speed = <100>;
> +                                               full-duplex;
> +                                       };
> +                               };
> +
> +                               port@3 {
> +                                       reg = <3>;
> +                                       label = "netright";
> +                               };
> +
> +                               port@4 {
> +                                       reg = <4>;
> +                                       label = "netleft";
> +                               };
> +                       };
> +               };
> +       };
> +};
> +
> +&i2c1 {
> +       clock-frequency = <100000>;
> +       pinctrl-names = "default";
> +       pinctrl-0 = <&pinctrl_i2c1>;
> +       status = "okay";
> +};
> +
> +&i2c2 {
> +       clock-frequency = <100000>;
> +       pinctrl-names = "default";
> +       pinctrl-0 = <&pinctrl_i2c2>;
> +       status = "okay";
> +
> +       pmic@8 {
> +               compatible = "fsl,pfuze100";
> +               reg = <0x8>;
> +
> +               regulators {
> +                       sw1a_reg: sw1ab {
> +                               regulator-min-microvolt = <825000>;
> +                               regulator-max-microvolt = <1100000>;
> +                       };
> +
> +                       sw1c_reg: sw1c {
> +                               regulator-min-microvolt = <825000>;
> +                               regulator-max-microvolt = <1100000>;
> +                       };
> +
> +                       sw2_reg: sw2 {
> +                               regulator-min-microvolt = <1100000>;
> +                               regulator-max-microvolt = <1100000>;
> +                               regulator-always-on;
> +                       };
> +
> +                       sw3a_reg: sw3ab {
> +                               regulator-min-microvolt = <825000>;
> +                               regulator-max-microvolt = <1100000>;
> +                               regulator-always-on;
> +                       };
> +
> +                       sw4_reg: sw4 {
> +                               regulator-min-microvolt = <1800000>;
> +                               regulator-max-microvolt = <1800000>;
> +                               regulator-always-on;
> +                       };
> +
> +                       swbst_reg: swbst {
> +                               regulator-min-microvolt = <5000000>;
> +                               regulator-max-microvolt = <5150000>;
> +                       };
> +
> +                       snvs_reg: vsnvs {
> +                               regulator-min-microvolt = <1000000>;
> +                               regulator-max-microvolt = <3000000>;
> +                               regulator-always-on;
> +                       };
> +
> +                       vref_reg: vrefddr {
> +                               regulator-always-on;
> +                       };
> +
> +                       vgen1_reg: vgen1 {
> +                               regulator-min-microvolt = <800000>;
> +                               regulator-max-microvolt = <1550000>;
> +                       };
> +
> +                       vgen2_reg: vgen2 {
> +                               regulator-min-microvolt = <850000>;
> +                               regulator-max-microvolt = <975000>;
> +                               regulator-always-on;
> +                       };
> +
> +                       vgen3_reg: vgen3 {
> +                               regulator-min-microvolt = <1675000>;
> +                               regulator-max-microvolt = <1975000>;
> +                               regulator-always-on;
> +                       };
> +
> +                       vgen4_reg: vgen4 {
> +                               regulator-min-microvolt = <1625000>;
> +                               regulator-max-microvolt = <1875000>;
> +                               regulator-always-on;
> +                       };
> +
> +                       vgen5_reg: vgen5 {
> +                               regulator-min-microvolt = <3075000>;
> +                               regulator-max-microvolt = <3625000>;
> +                               regulator-always-on;
> +                       };
> +
> +                       vgen6_reg: vgen6 {
> +                               regulator-min-microvolt = <1800000>;
> +                               regulator-max-microvolt = <3300000>;
> +                       };
> +               };
> +       };
> +
> +       temp-sense@48 {
> +               compatible = "national,lm75";
> +               reg = <0x48>;
> +       };
> +
> +       eeprom@54 {
> +               compatible = "atmel,24c128";
> +               reg = <0x54>;
> +       };
> +
> +       ds1341: rtc@68 {
> +               compatible = "dallas,ds1341";
> +               reg = <0x68>;
> +       };
> +};
> +
> +&i2c3 {
> +       clock-frequency = <100000>;
> +       pinctrl-names = "default";
> +       pinctrl-0 = <&pinctrl_i2c3>;
> +       status = "okay";
> +};
> +
> +&i2c4 {
> +       clock-frequency = <400000>;
> +       pinctrl-names = "default";
> +       pinctrl-0 = <&pinctrl_i2c4>;
> +       status = "okay";
> +};
> +
> +&ocotp {
> +       barebox,provide-mac-address = <&fec1 0x640>;
> +};
> +
> +&uart1 {
> +       pinctrl-names = "default";
> +       pinctrl-0 = <&pinctrl_uart1>;
> +       status = "okay";
> +};
> +
> +&uart2 {
> +       pinctrl-names = "default";
> +       pinctrl-0 = <&pinctrl_uart2>;
> +       status = "okay";
> +
> +       rave-sp {
> +               compatible = "zii,rave-sp-rdu2";
> +               current-speed = <1000000>;
> +               #address-cells = <1>;
> +               #size-cells = <1>;
> +
> +               watchdog {
> +                       compatible = "zii,rave-sp-watchdog";
> +               };
> +
> +               main_eeprom: eeprom@a4 {
> +                       compatible = "zii,rave-sp-eeprom";
> +                       reg = <0xa4 0x4000>;
> +                       #address-cells = <1>;
> +                       #size-cells = <1>;
> +                       zii,eeprom-name = "main-eeprom";
> +               };
> +
> +               eeprom@a3 {
> +                       compatible = "zii,rave-sp-eeprom";
> +                       reg = <0xa3 0x4000>;
> +                       zii,eeprom-name = "dds-eeprom";
> +               };
> +       };
> +};
> +
> +&usdhc1 {
> +       pinctrl-names = "default", "state_100mhz", "state_200mhz";
> +       pinctrl-0 = <&pinctrl_usdhc1>;
> +       pinctrl-1 = <&pinctrl_usdhc1_100mhz>;
> +       pinctrl-2 = <&pinctrl_usdhc1_200mhz>;
> +       vqmmc-supply = <&sw4_reg>;
> +       bus-width = <8>;
> +       non-removable;
> +       no-sd;
> +       no-sdio;
> +       status = "okay";
> +};
> +
> +&usdhc2 {
> +       pinctrl-names = "default", "state_100mhz", "state_200mhz";
> +       pinctrl-0 = <&pinctrl_usdhc2>;
> +       pinctrl-1 = <&pinctrl_usdhc2_100mhz>;
> +       pinctrl-2 = <&pinctrl_usdhc2_200mhz>;
> +       cd-gpios = <&gpio2 12 GPIO_ACTIVE_LOW>;
> +       vmmc-supply = <&reg_usdhc2_vmmc>;
> +       status = "okay";
> +};
> +
> +&iomuxc {
> +       pinctrl_mdio_bitbang: bitbangmdiogrp {
> +               fsl,pins = <
> +                       MX8MQ_IOMUXC_GPIO1_IO13_GPIO1_IO13      0x44
> +                       MX8MQ_IOMUXC_GPIO1_IO14_GPIO1_IO14      0x64
> +               >;
> +       };
> +
> +       pinctrl_fec1: fec1grp {
> +               fsl,pins = <
> +                       MX8MQ_IOMUXC_ENET_MDC_ENET1_MDC                 0x3
> +                       MX8MQ_IOMUXC_ENET_MDIO_ENET1_MDIO               0x23
> +                       MX8MQ_IOMUXC_ENET_TD1_ENET1_RGMII_TD1           0x1f
> +                       MX8MQ_IOMUXC_ENET_TD0_ENET1_RGMII_TD0           0x1f
> +                       MX8MQ_IOMUXC_ENET_RD1_ENET1_RGMII_RD1           0x91
> +                       MX8MQ_IOMUXC_ENET_RD0_ENET1_RGMII_RD0           0x91
> +                       MX8MQ_IOMUXC_ENET_TD2_ENET1_TX_CLK              0x1f
> +                       MX8MQ_IOMUXC_ENET_RXC_ENET1_RX_ER               0x91
> +                       MX8MQ_IOMUXC_ENET_RX_CTL_ENET1_RGMII_RX_CTL     0x91
> +                       MX8MQ_IOMUXC_ENET_TX_CTL_ENET1_RGMII_TX_CTL     0x1f
> +               >;
> +       };
> +
> +       pinctrl_fec1_phy_reset: fec1phyresetgrp {
> +               fsl,pins = <
> +                       MX8MQ_IOMUXC_ENET_RD3_GPIO1_IO29                0x11
> +               >;
> +       };
> +
> +       pinctrl_i2c1: i2c1grp {
> +               fsl,pins = <
> +                       MX8MQ_IOMUXC_I2C1_SCL_I2C1_SCL                  0x4000007f
> +                       MX8MQ_IOMUXC_I2C1_SDA_I2C1_SDA                  0x4000007f
> +               >;
> +       };
> +
> +       pinctrl_i2c2: i2c2grp {
> +               fsl,pins = <
> +                       MX8MQ_IOMUXC_I2C2_SCL_I2C2_SCL                  0x4000007f
> +                       MX8MQ_IOMUXC_I2C2_SDA_I2C2_SDA                  0x4000007f
> +               >;
> +       };
> +
> +       pinctrl_i2c3: i2c3grp {
> +               fsl,pins = <
> +                       MX8MQ_IOMUXC_I2C3_SCL_I2C3_SCL                  0x4000007f
> +                       MX8MQ_IOMUXC_I2C3_SDA_I2C3_SDA                  0x4000007f
> +               >;
> +       };
> +
> +       pinctrl_i2c4: i2c4grp {
> +               fsl,pins = <
> +                       MX8MQ_IOMUXC_I2C4_SCL_I2C4_SCL                  0x4000007f
> +                       MX8MQ_IOMUXC_I2C4_SDA_I2C4_SDA                  0x4000007f
> +               >;
> +       };
> +
> +       pinctrl_reg_usdhc2: regusdhc2grpgpio {
> +               fsl,pins = <
> +                       MX8MQ_IOMUXC_SD2_RESET_B_GPIO2_IO19             0x41
> +               >;
> +       };
> +
> +       pinctrl_uart1: uart1grp {
> +               fsl,pins = <
> +                       MX8MQ_IOMUXC_UART1_RXD_UART1_DCE_RX             0x49
> +                       MX8MQ_IOMUXC_UART1_TXD_UART1_DCE_TX             0x49
> +               >;
> +       };
> +
> +       pinctrl_uart2: uart2grp {
> +               fsl,pins = <
> +                       MX8MQ_IOMUXC_UART2_RXD_UART2_DCE_RX             0x49
> +                       MX8MQ_IOMUXC_UART2_TXD_UART2_DCE_TX             0x49
> +               >;
> +       };
> +
> +       pinctrl_usdhc1: usdhc1grp {
> +               fsl,pins = <
> +                       MX8MQ_IOMUXC_SD1_CLK_USDHC1_CLK                 0x83
> +                       MX8MQ_IOMUXC_SD1_CMD_USDHC1_CMD                 0xc3
> +                       MX8MQ_IOMUXC_SD1_DATA0_USDHC1_DATA0             0xc3
> +                       MX8MQ_IOMUXC_SD1_DATA1_USDHC1_DATA1             0xc3
> +                       MX8MQ_IOMUXC_SD1_DATA2_USDHC1_DATA2             0xc3
> +                       MX8MQ_IOMUXC_SD1_DATA3_USDHC1_DATA3             0xc3
> +                       MX8MQ_IOMUXC_SD1_DATA4_USDHC1_DATA4             0xc3
> +                       MX8MQ_IOMUXC_SD1_DATA5_USDHC1_DATA5             0xc3
> +                       MX8MQ_IOMUXC_SD1_DATA6_USDHC1_DATA6             0xc3
> +                       MX8MQ_IOMUXC_SD1_DATA7_USDHC1_DATA7             0xc3
> +                       MX8MQ_IOMUXC_SD1_STROBE_USDHC1_STROBE           0x83
> +                       MX8MQ_IOMUXC_SD1_RESET_B_USDHC1_RESET_B         0xc1
> +               >;
> +       };
> +
> +       pinctrl_usdhc1_100mhz: usdhc1-100grp {
> +               fsl,pins = <
> +                       MX8MQ_IOMUXC_SD1_CLK_USDHC1_CLK                 0x85
> +                       MX8MQ_IOMUXC_SD1_CMD_USDHC1_CMD                 0xc5
> +                       MX8MQ_IOMUXC_SD1_DATA0_USDHC1_DATA0             0xc5
> +                       MX8MQ_IOMUXC_SD1_DATA1_USDHC1_DATA1             0xc5
> +                       MX8MQ_IOMUXC_SD1_DATA2_USDHC1_DATA2             0xc5
> +                       MX8MQ_IOMUXC_SD1_DATA3_USDHC1_DATA3             0xc5
> +                       MX8MQ_IOMUXC_SD1_DATA4_USDHC1_DATA4             0xc5
> +                       MX8MQ_IOMUXC_SD1_DATA5_USDHC1_DATA5             0xc5
> +                       MX8MQ_IOMUXC_SD1_DATA6_USDHC1_DATA6             0xc5
> +                       MX8MQ_IOMUXC_SD1_DATA7_USDHC1_DATA7             0xc5
> +                       MX8MQ_IOMUXC_SD1_STROBE_USDHC1_STROBE           0x85
> +                       MX8MQ_IOMUXC_SD1_RESET_B_USDHC1_RESET_B         0xc1
> +               >;
> +       };
> +
> +       pinctrl_usdhc1_200mhz: usdhc1-200grp {
> +               fsl,pins = <
> +                       MX8MQ_IOMUXC_SD1_CLK_USDHC1_CLK                 0x87
> +                       MX8MQ_IOMUXC_SD1_CMD_USDHC1_CMD                 0xc7
> +                       MX8MQ_IOMUXC_SD1_DATA0_USDHC1_DATA0             0xc7
> +                       MX8MQ_IOMUXC_SD1_DATA1_USDHC1_DATA1             0xc7
> +                       MX8MQ_IOMUXC_SD1_DATA2_USDHC1_DATA2             0xc7
> +                       MX8MQ_IOMUXC_SD1_DATA3_USDHC1_DATA3             0xc7
> +                       MX8MQ_IOMUXC_SD1_DATA4_USDHC1_DATA4             0xc7
> +                       MX8MQ_IOMUXC_SD1_DATA5_USDHC1_DATA5             0xc7
> +                       MX8MQ_IOMUXC_SD1_DATA6_USDHC1_DATA6             0xc7
> +                       MX8MQ_IOMUXC_SD1_DATA7_USDHC1_DATA7             0xc7
> +                       MX8MQ_IOMUXC_SD1_STROBE_USDHC1_STROBE           0x87
> +                       MX8MQ_IOMUXC_SD1_RESET_B_USDHC1_RESET_B         0xc1
> +               >;
> +       };
> +
> +       pinctrl_usdhc2: usdhc2grp {
> +               fsl,pins = <
> +                       MX8MQ_IOMUXC_SD2_CLK_USDHC2_CLK                 0x83
> +                       MX8MQ_IOMUXC_SD2_CMD_USDHC2_CMD                 0xc3
> +                       MX8MQ_IOMUXC_SD2_DATA0_USDHC2_DATA0             0xc3
> +                       MX8MQ_IOMUXC_SD2_DATA1_USDHC2_DATA1             0xc3
> +                       MX8MQ_IOMUXC_SD2_DATA2_USDHC2_DATA2             0xc3
> +                       MX8MQ_IOMUXC_SD2_DATA3_USDHC2_DATA3             0xc3
> +                       MX8MQ_IOMUXC_GPIO1_IO04_USDHC2_VSELECT          0xc1
> +               >;
> +       };
> +
> +       pinctrl_usdhc2_100mhz: usdhc2-100grp {
> +               fsl,pins = <
> +                       MX8MQ_IOMUXC_SD2_CLK_USDHC2_CLK                 0x85
> +                       MX8MQ_IOMUXC_SD2_CMD_USDHC2_CMD                 0xc5
> +                       MX8MQ_IOMUXC_SD2_DATA0_USDHC2_DATA0             0xc5
> +                       MX8MQ_IOMUXC_SD2_DATA1_USDHC2_DATA1             0xc5
> +                       MX8MQ_IOMUXC_SD2_DATA2_USDHC2_DATA2             0xc5
> +                       MX8MQ_IOMUXC_SD2_DATA3_USDHC2_DATA3             0xc5
> +                       MX8MQ_IOMUXC_GPIO1_IO04_USDHC2_VSELECT          0xc1
> +               >;
> +       };
> +
> +       pinctrl_usdhc2_200mhz: usdhc2-200grp {
> +               fsl,pins = <
> +                       MX8MQ_IOMUXC_SD2_CLK_USDHC2_CLK                 0x87
> +                       MX8MQ_IOMUXC_SD2_CMD_USDHC2_CMD                 0xc7
> +                       MX8MQ_IOMUXC_SD2_DATA0_USDHC2_DATA0             0xc7
> +                       MX8MQ_IOMUXC_SD2_DATA1_USDHC2_DATA1             0xc7
> +                       MX8MQ_IOMUXC_SD2_DATA2_USDHC2_DATA2             0xc7
> +                       MX8MQ_IOMUXC_SD2_DATA3_USDHC2_DATA3             0xc7
> +                       MX8MQ_IOMUXC_GPIO1_IO04_USDHC2_VSELECT          0xc1
> +               >;
> +       };
> +};
> \ No newline at end of file
> diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
> index e26a3a3da..587f0383d 100644
> --- a/arch/arm/mach-imx/Kconfig
> +++ b/arch/arm/mach-imx/Kconfig
> @@ -443,6 +443,13 @@ config MACH_ZII_RDU2
>         select ZII_PN_FIXUP
>         select ARCH_IMX6
>
> +config MACH_ZII_IMX8MQ_DEV
> +       bool "ZII i.MX8MQ based devices"
> +       select ARCH_IMX8MQ
> +       select FIRMWARE_IMX_LPDDR4_PMU_TRAIN
> +       select FIRMWARE_IMX8MQ_ATF
> +       select ARM_SMCCC
> +
>  config MACH_ZII_VF610_DEV
>         bool "ZII VF610 Dev Family"
>         select ARCH_VF610
> diff --git a/images/Makefile.imx b/images/Makefile.imx
> index dcbf3fbff..f9432015d 100644
> --- a/images/Makefile.imx
> +++ b/images/Makefile.imx
> @@ -554,3 +554,8 @@ pblb-$(CONFIG_MACH_NXP_IMX8MQ_EVK) += start_nxp_imx8mq_evk
>  CFG_start_nxp_imx8mq_evk.pblb.imximg = $(board)/nxp-imx8mq-evk/flash-header-imx8mq-evk.imxcfg
>  FILE_barebox-nxp-imx8mq-evk.img = start_nxp_imx8mq_evk.pblb.imximg
>  image-$(CONFIG_MACH_NXP_IMX8MQ_EVK) += barebox-nxp-imx8mq-evk.img
> +
> +pblb-$(CONFIG_MACH_ZII_IMX8MQ_DEV) += start_zii_imx8mq_dev
> +CFG_start_zii_imx8mq_dev.pblb.imximg = $(board)/zii-imx8mq-dev/flash-header-zii-imx8mq-dev.imxcfg
> +FILE_barebox-zii-imx8mq-dev.img = start_zii_imx8mq_dev.pblb.imximg
> +image-$(CONFIG_MACH_ZII_IMX8MQ_DEV) += barebox-zii-imx8mq-dev.img
> --
> 2.20.1
>

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
