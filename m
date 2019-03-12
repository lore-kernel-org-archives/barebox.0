Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h3WQm-0001ym-S2
 for barebox@lists.infradead.org; Tue, 12 Mar 2019 01:42:14 +0000
Received: by mail-wr1-x443.google.com with SMTP id w2so853391wrt.11
 for <barebox@lists.infradead.org>; Mon, 11 Mar 2019 18:42:12 -0700 (PDT)
MIME-Version: 1.0
References: <20190311093123.7956-1-s.hauer@pengutronix.de>
 <20190311093123.7956-15-s.hauer@pengutronix.de>
In-Reply-To: <20190311093123.7956-15-s.hauer@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 11 Mar 2019 18:41:59 -0700
Message-ID: <CAHQ1cqHvx-9vv=WP2+B0tG=npnLVaENOXw_4dOh_WNe=+R=y9Q@mail.gmail.com>
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
Subject: Re: [PATCH 14/14] ARM: Add initial STM32MP1 support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, Mar 11, 2019 at 2:48 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
> This adds initial STMicroelectronics MP1 support along with support
> for the DK2 devel board. Only very basic support:
>
> - UART
> - SDRAM memory base/size
> - No 1st stage support
>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/Kconfig                              | 11 +++
>  arch/arm/Makefile                             |  1 +
>  arch/arm/boards/Makefile                      |  1 +
>  arch/arm/boards/stm32mp157c-dk2/Makefile      |  2 +
>  arch/arm/boards/stm32mp157c-dk2/board.c       | 16 +++
>  arch/arm/boards/stm32mp157c-dk2/lowlevel.c    | 18 ++++
>  arch/arm/configs/stm32mp1_defconfig           | 98 +++++++++++++++++++
>  arch/arm/dts/Makefile                         |  1 +
>  arch/arm/dts/stm32mp157a-dk1.dts              | 62 ++++++++++++
>  arch/arm/dts/stm32mp157c-dk2.dts              | 14 +++
>  arch/arm/dts/stm32mp157c.dtsi                 |  7 ++
>  arch/arm/mach-stm32mp1/Kconfig                | 10 ++
>  arch/arm/mach-stm32mp1/Makefile               |  1 +
>  .../arm/mach-stm32mp1/include/mach/debug_ll.h | 28 ++++++
>  arch/arm/mach-stm32mp1/include/mach/stm32.h   | 35 +++++++
>  images/Makefile                               |  1 +
>  images/Makefile.stm32mp1                      |  8 ++
>  17 files changed, 314 insertions(+)
>  create mode 100644 arch/arm/boards/stm32mp157c-dk2/Makefile
>  create mode 100644 arch/arm/boards/stm32mp157c-dk2/board.c
>  create mode 100644 arch/arm/boards/stm32mp157c-dk2/lowlevel.c
>  create mode 100644 arch/arm/configs/stm32mp1_defconfig
>  create mode 100644 arch/arm/dts/stm32mp157a-dk1.dts
>  create mode 100644 arch/arm/dts/stm32mp157c-dk2.dts
>  create mode 100644 arch/arm/dts/stm32mp157c.dtsi
>  create mode 100644 arch/arm/mach-stm32mp1/Kconfig
>  create mode 100644 arch/arm/mach-stm32mp1/Makefile
>  create mode 100644 arch/arm/mach-stm32mp1/include/mach/debug_ll.h
>  create mode 100644 arch/arm/mach-stm32mp1/include/mach/stm32.h
>  create mode 100644 images/Makefile.stm32mp1
>
> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> index 9d3f5b2ca7..6e5f431e29 100644
> --- a/arch/arm/Kconfig
> +++ b/arch/arm/Kconfig
> @@ -198,6 +198,16 @@ config ARCH_S3C64xx
>         select CPU_V6
>         select GENERIC_GPIO
>
> +config ARCH_STM32MP1
> +       bool "ST stm32mp1xx"
> +       select CPU_V7
> +       select HAVE_PBL_MULTI_IMAGES
> +       select CLKDEV_LOOKUP
> +       select COMMON_CLK
> +       select COMMON_CLK_OF_PROVIDER
> +       select HAS_DEBUG_LL
> +       select HAVE_CLK
> +
>  config ARCH_VERSATILE
>         bool "ARM Versatile boards (ARM926EJ-S)"
>         select GPIOLIB
> @@ -284,6 +294,7 @@ source arch/arm/mach-pxa/Kconfig
>  source arch/arm/mach-rockchip/Kconfig
>  source arch/arm/mach-samsung/Kconfig
>  source arch/arm/mach-socfpga/Kconfig
> +source arch/arm/mach-stm32mp1/Kconfig
>  source arch/arm/mach-versatile/Kconfig
>  source arch/arm/mach-vexpress/Kconfig
>  source arch/arm/mach-tegra/Kconfig
> diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> index 6b5f21a7a9..9b0e34f50b 100644
> --- a/arch/arm/Makefile
> +++ b/arch/arm/Makefile
> @@ -96,6 +96,7 @@ machine-$(CONFIG_ARCH_PXA)            := pxa
>  machine-$(CONFIG_ARCH_ROCKCHIP)                := rockchip
>  machine-$(CONFIG_ARCH_SAMSUNG)         := samsung
>  machine-$(CONFIG_ARCH_SOCFPGA)         := socfpga
> +machine-$(CONFIG_ARCH_STM32MP1)                := stm32mp1
>  machine-$(CONFIG_ARCH_VERSATILE)       := versatile
>  machine-$(CONFIG_ARCH_VEXPRESS)                := vexpress
>  machine-$(CONFIG_ARCH_TEGRA)           := tegra
> diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
> index c5dc41526b..5193edff9f 100644
> --- a/arch/arm/boards/Makefile
> +++ b/arch/arm/boards/Makefile
> @@ -123,6 +123,7 @@ obj-$(CONFIG_MACH_SOCFPGA_TERASIC_DE0_NANO_SOC)     += terasic-de0-nano-soc/
>  obj-$(CONFIG_MACH_SOCFPGA_TERASIC_SOCKIT)      += terasic-sockit/
>  obj-$(CONFIG_MACH_SOLIDRUN_CUBOX)              += solidrun-cubox/
>  obj-$(CONFIG_MACH_SOLIDRUN_MICROSOM)           += solidrun-microsom/
> +obj-$(CONFIG_MACH_STM32MP157C_DK2)             += stm32mp157c-dk2/
>  obj-$(CONFIG_MACH_TECHNEXION_PICO_HOBBIT)      += technexion-pico-hobbit/
>  obj-$(CONFIG_MACH_TECHNEXION_WANDBOARD)                += technexion-wandboard/
>  obj-$(CONFIG_MACH_TNY_A9260)                   += tny-a926x/
> diff --git a/arch/arm/boards/stm32mp157c-dk2/Makefile b/arch/arm/boards/stm32mp157c-dk2/Makefile
> new file mode 100644
> index 0000000000..092c31d6b2
> --- /dev/null
> +++ b/arch/arm/boards/stm32mp157c-dk2/Makefile
> @@ -0,0 +1,2 @@
> +lwl-y += lowlevel.o
> +obj-y += board.o
> diff --git a/arch/arm/boards/stm32mp157c-dk2/board.c b/arch/arm/boards/stm32mp157c-dk2/board.c
> new file mode 100644
> index 0000000000..278a0c0126
> --- /dev/null
> +++ b/arch/arm/boards/stm32mp157c-dk2/board.c
> @@ -0,0 +1,16 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +#include <common.h>
> +#include <linux/sizes.h>
> +#include <init.h>
> +#include <asm/memory.h>
> +
> +static int dk2_postcore_init(void)
> +{
> +       if (!of_machine_is_compatible("st,stm32mp157c-dk2"))
> +               return 0;
> +
> +       arm_add_mem_device("ram0", 0xc0000000, SZ_512M);
> +

Minor nit: I think you can replace 0xc0000000 with STM32_DDR_BASE.

> +       return 0;
> +}
> +mem_initcall(dk2_postcore_init);
> diff --git a/arch/arm/boards/stm32mp157c-dk2/lowlevel.c b/arch/arm/boards/stm32mp157c-dk2/lowlevel.c
> new file mode 100644
> index 0000000000..be12160a0b
> --- /dev/null
> +++ b/arch/arm/boards/stm32mp157c-dk2/lowlevel.c
> @@ -0,0 +1,18 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +#include <common.h>
> +#include <asm/barebox-arm-head.h>
> +#include <asm/barebox-arm.h>
> +#include <debug_ll.h>
> +
> +extern char __dtb_stm32mp157c_dk2_start[];
> +
> +ENTRY_FUNCTION(start_stm32mp157c_dk2, r0, r1, r2)
> +{
> +       void *fdt;
> +
> +       arm_cpu_lowlevel_init();
> +
> +       fdt = __dtb_stm32mp157c_dk2_start + get_runtime_offset();
> +
> +       barebox_arm_entry(0xc0000000, SZ_512M, fdt);

Ditto.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
