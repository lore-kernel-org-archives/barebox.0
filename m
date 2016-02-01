Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-io0-x243.google.com ([2607:f8b0:4001:c06::243])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aQJpw-0006ti-Bw
 for barebox@lists.infradead.org; Mon, 01 Feb 2016 19:08:36 +0000
Received: by mail-io0-x243.google.com with SMTP id m139so11277268ioe.2
 for <barebox@lists.infradead.org>; Mon, 01 Feb 2016 11:08:11 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <2936535.PfmXjTYsqy@dabox>
References: <2936535.PfmXjTYsqy@dabox>
Date: Mon, 1 Feb 2016 11:08:10 -0800
Message-ID: <CAHQ1cqEBXBziKFGPaDQBK3zMw0+D4cnjvB2KXHBF906UG8Ahwg@mail.gmail.com>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH v4] Terasic DE0-Nano-SoC: add support
To: Tim Sander <tim@krieglstein.org>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>, Steffen Trumtrar <s.trumtrar@pengutronix.de>

On Mon, Feb 1, 2016 at 8:09 AM, Tim Sander <tim@krieglstein.org> wrote:
> v4: use the amended patch not the old one, doh. Sorry for the noise.
>
> A Patch for supporting the Terasic DE0 NANO-SoC with barebox.
> The pretty similar Socrates Board was taken as a starting point with pulling
> in the memory timings/pinmux from
> http://rocketboards.org/foswiki/view/Documentation/AtlasSoCCompileHardwareDesign
> Its only tested at room temperatures and i am not 100% sure about the device tree:
>  One known problem is the fact that the board identifier is pretty generic but
>  its the same in the linux kernel so i resorted to that.
>
> Signed-off-by: Tim Sander <tim@krieglstein.org>
> ---
>  arch/arm/boards/Makefile                           |   1 +
>  arch/arm/boards/terasic-de0-nano-soc/Makefile      |   2 +
>  arch/arm/boards/terasic-de0-nano-soc/board.c       |  37 ++
>  arch/arm/boards/terasic-de0-nano-soc/config.h      |   1 +
>  .../terasic-de0-nano-soc/iocsr_config_cyclone5.c   | 675 +++++++++++++++++++++
>  arch/arm/boards/terasic-de0-nano-soc/lowlevel.c    | 102 ++++
>  .../boards/terasic-de0-nano-soc/pinmux_config.c    | 240 ++++++++
>  arch/arm/boards/terasic-de0-nano-soc/pll_config.h  | 107 ++++
>  .../arm/boards/terasic-de0-nano-soc/sdram_config.h | 108 ++++
>  .../boards/terasic-de0-nano-soc/sequencer_auto.h   | 228 +++++++
>  .../terasic-de0-nano-soc/sequencer_auto_ac_init.c  |  69 +++
>  .../sequencer_auto_inst_init.c                     | 161 +++++
>  .../terasic-de0-nano-soc/sequencer_defines.h       | 160 +++++
>  arch/arm/configs/socfpga-xload_defconfig           |   1 +
>  arch/arm/configs/socfpga_defconfig                 |   1 +
>  arch/arm/dts/Makefile                              |   1 +
>  arch/arm/dts/socfpga_cyclone5_de0_nano_soc.dts     |  34 ++
>  arch/arm/mach-socfpga/Kconfig                      |   4 +
>  images/Makefile.socfpga                            |   8 +
>  19 files changed, 1940 insertions(+)
>  create mode 100644 arch/arm/boards/terasic-de0-nano-soc/Makefile
>  create mode 100644 arch/arm/boards/terasic-de0-nano-soc/board.c
>  create mode 100644 arch/arm/boards/terasic-de0-nano-soc/config.h
>  create mode 100644 arch/arm/boards/terasic-de0-nano-soc/iocsr_config_cyclone5.c
>  create mode 100644 arch/arm/boards/terasic-de0-nano-soc/lowlevel.c
>  create mode 100644 arch/arm/boards/terasic-de0-nano-soc/pinmux_config.c
>  create mode 100644 arch/arm/boards/terasic-de0-nano-soc/pll_config.h
>  create mode 100644 arch/arm/boards/terasic-de0-nano-soc/sdram_config.h
>  create mode 100644 arch/arm/boards/terasic-de0-nano-soc/sequencer_auto.h
>  create mode 100644 arch/arm/boards/terasic-de0-nano-soc/sequencer_auto_ac_init.c
>  create mode 100644 arch/arm/boards/terasic-de0-nano-soc/sequencer_auto_inst_init.c
>  create mode 100644 arch/arm/boards/terasic-de0-nano-soc/sequencer_defines.h
>  create mode 100644 arch/arm/dts/socfpga_cyclone5_de0_nano_soc.dts
>
> diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
> index 1029e8f..4d572a6 100644
> --- a/arch/arm/boards/Makefile
> +++ b/arch/arm/boards/Makefile
> @@ -106,6 +106,7 @@ obj-$(CONFIG_MACH_SAMA5D4EK)                        += sama5d4ek/
>  obj-$(CONFIG_MACH_SCB9328)                     += scb9328/
>  obj-$(CONFIG_MACH_SOCFPGA_ALTERA_SOCDK)                += altera-socdk/
>  obj-$(CONFIG_MACH_SOCFPGA_EBV_SOCRATES)                += ebv-socrates/
> +obj-$(CONFIG_MACH_SOCFPGA_TERASIC_DE0_NANO_SOC)        += terasic-de0-nano-soc/
>  obj-$(CONFIG_MACH_SOCFPGA_TERASIC_SOCKIT)      += terasic-sockit/
>  obj-$(CONFIG_MACH_SOLIDRUN_CUBOX)              += solidrun-cubox/
>  obj-$(CONFIG_MACH_SOLIDRUN_MICROSOM)           += solidrun-microsom/
> diff --git a/arch/arm/boards/terasic-de0-nano-soc/Makefile b/arch/arm/boards/terasic-de0-nano-soc/Makefile
> new file mode 100644
> index 0000000..8c927fe
> --- /dev/null
> +++ b/arch/arm/boards/terasic-de0-nano-soc/Makefile
> @@ -0,0 +1,2 @@
> +obj-y += lowlevel.o board.o
> +pbl-y += lowlevel.o
> diff --git a/arch/arm/boards/terasic-de0-nano-soc/board.c b/arch/arm/boards/terasic-de0-nano-soc/board.c
> new file mode 100644
> index 0000000..22f8291
> --- /dev/null
> +++ b/arch/arm/boards/terasic-de0-nano-soc/board.c
> @@ -0,0 +1,37 @@
> +#include <common.h>
> +#include <types.h>
> +#include <driver.h>
> +#include <init.h>
> +#include <asm/armlinux.h>
> +#include <linux/micrel_phy.h>
> +#include <linux/phy.h>
> +#include <linux/sizes.h>
> +#include <fcntl.h>
> +#include <fs.h>
> +#include <mach/socfpga-regs.h>
> +
> +static int phy_fixup(struct phy_device *dev)
> +{
> +       /* min rx data delay */
> +       phy_write(dev, 0x0b, 0x8105);
> +       phy_write(dev, 0x0c, 0x0000);
> +
> +       /* max rx/tx clock delay, min rx/tx control delay */
> +       phy_write(dev, 0x0b, 0x8104);
> +       phy_write(dev, 0x0c, 0xa0d0);
> +       phy_write(dev, 0x0b, 0x104);
> +
> +       return 0;
> +}
> +
> +static int socfpga_console_init(void)

I know that this names comes from the source code for SoCKit, but I'd
argue that the name of this function should be changed to something
more descriptive. This function doesn't really initialize console in
any way and just happen to be executed on "console_initcall" level of
execution.

> +{
> +       if (!of_machine_is_compatible("altr,socfpga-cyclone5"))
> +               return 0;

Since Altera is not really a vendor of this board and, I'd suggest the
compatibility string be renamed to "terrasic,de0-nano-soc"

> +
> +       if (IS_ENABLED(CONFIG_PHYLIB))
> +               phy_register_fixup_for_uid(PHY_ID_KSZ9021, MICREL_PHY_ID_MASK, phy_fixup);

I don't think this code is correct. To the best of my knowledge, both
Atlas and DE0-Nano version of the board come with KSZ9031 as a PHY,
which requires different fixup. See arm/boards/tqma6x/board.c for
example.

> +
> diff --git a/arch/arm/boards/terasic-de0-nano-soc/lowlevel.c b/arch/arm/boards/terasic-de0-nano-soc/lowlevel.c
> new file mode 100644
> index 0000000..a799a81
> --- /dev/null
> +++ b/arch/arm/boards/terasic-de0-nano-soc/lowlevel.c
> @@ -0,0 +1,102 @@
> +#include <common.h>
> +#include <linux/sizes.h>
> +#include <io.h>
> +#include <asm/barebox-arm-head.h>
> +#include <asm/barebox-arm.h>
> +#include <mach/generic.h>
> +#include <debug_ll.h>
> +#include <asm/cache.h>
> +#include "sdram_config.h"
> +#include <mach/sdram_config.h>
> +#include "pinmux_config.c"
> +#include "pll_config.h"
> +#include <mach/pll_config.h>
> +#include "sequencer_defines.h"
> +#include "sequencer_auto.h"
> +#include <mach/sequencer.c>
> +#include "sequencer_auto_inst_init.c"
> +#include "sequencer_auto_ac_init.c"
> +#include "iocsr_config_cyclone5.c"
> +
> +static inline void ledon(int led)
> +{
> +       u32 val;
> +
> +       val = readl(0xFF709000);
> +       val |= 1 << (led + 24);
> +       writel(val, 0xFF709000);
> +
> +       val = readl(0xFF709004);
> +       val |= 1 << (led + 24);
> +       writel(val, 0xFF709004);
> +}
> +
> +static inline void ledoff(int led)
> +{
> +       u32 val;
> +
> +       val = readl(0xFF709000);
> +       val &= ~(1 << (led + 24));
> +       writel(val, 0xFF709000);
> +
> +       val = readl(0xFF709004);
> +       val &= ~(1 << (led + 24));
> +       writel(val, 0xFF709004);
> +}

Where are those "ledoff" and "ledon" functions used?

> +
> +extern char __dtb_socfpga_cyclone5_de0_nano_soc_start[];
> +
> +ENTRY_FUNCTION(start_socfpga_de0_nano_soc, r0, r1, r2)
> +{
> +       void *fdt;
> +
> +       arm_cpu_lowlevel_init();
> +
> +       fdt = __dtb_socfpga_cyclone5_de0_nano_soc_start - get_runtime_offset();
> +
> +       barebox_arm_entry(0x0, SZ_1G, fdt);
> +}
> +
> +static noinline void de0_nano_soc_entry(void)
> +{
> +       struct socfpga_io_config io_config;
> +       int ret;
> +
> +       arm_early_mmu_cache_invalidate();
> +
> +       relocate_to_current_adr();
> +       setup_c();
> +
> +       io_config.pinmux = sys_mgr_init_table;
> +       io_config.num_pin = ARRAY_SIZE(sys_mgr_init_table);
> +       io_config.iocsr_emac_mixed2 = iocsr_scan_chain0_table;
> +       io_config.iocsr_mixed1_flash = iocsr_scan_chain1_table;
> +       io_config.iocsr_general = iocsr_scan_chain2_table;
> +       io_config.iocsr_ddr = iocsr_scan_chain3_table;
> +
> +       socfpga_lowlevel_init(&cm_default_cfg, &io_config);
> +
> +       puts_ll("lowlevel init done\n");
> +       puts_ll("SDRAM setup...\n");
> +
> +       socfpga_sdram_mmr_init();
> +
> +       puts_ll("SDRAM calibration...\n");
> +
> +       ret = socfpga_mem_calibration();
> +       if (!ret)
> +               hang();
> +
> +       puts_ll("done\n");
> +
> +       barebox_arm_entry(0x0, SZ_1G, NULL);
> +}
> +
> +ENTRY_FUNCTION(start_socfpga_de0_nano_soc_xload, r0, r1, r2)
> +{
> +       arm_cpu_lowlevel_init();
> +
> +       arm_setup_stack(0xffff0000 + SZ_64K - SZ_4K - 16);
> +
> +       de0_nano_soc_entry();
> +}

...

> diff --git a/arch/arm/dts/socfpga_cyclone5_de0_nano_soc.dts b/arch/arm/dts/socfpga_cyclone5_de0_nano_soc.dts
> new file mode 100644
> index 0000000..2f5ffa9
> --- /dev/null
> +++ b/arch/arm/dts/socfpga_cyclone5_de0_nano_soc.dts
> @@ -0,0 +1,34 @@
> +/*
> + *  Copyright (C) 2013 Steffen Trumtrar <s.trumtrar@pengutronix.de>
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License as published by
> + * the Free Software Foundation; either version 2 of the License, or
> + * (at your option) any later version.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + * You should have received a copy of the GNU General Public License
> + * along with this program.  If not, see <http://www.gnu.org/licenses/>.
> + */
> +
> +#include <arm/socfpga_cyclone5_de0_sockit.dts>
> +#include "socfpga.dtsi"
> +
> +/ {
> +       model = "Terasic DE0-Nano-SoC/Atlas-SoC Kit";
> +       compatible = "altr,socfpga-cyclone5", "altr,socfpga";
> +
> +       chosen {
> +               stdout-path = &uart0;
> +       };
> +
> +       leds: gpio-leds {
> +       };
> +
> +       buttons: gpio-keys {
> +       };

Since you don't define any GPIO LEDs or keys those two nodes above
("leds" and "buttons") are unnecessary

Thanks,
Andrey

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
