Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lCecQ-0006pw-VW
 for barebox@lists.infradead.org; Thu, 18 Feb 2021 08:25:04 +0000
Date: Thu, 18 Feb 2021 09:25:01 +0100
Message-ID: <20210218082501.GB10569@pengutronix.de>
References: <20210216185737.10621-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210216185737.10621-1-a.fatoum@pengutronix.de>
From: Sascha Hauer <sha@pengutronix.de>
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
Subject: Re: [PATCH 1/4] treewide: include <linux/math64.h> wrapper instead
 of <asm-generic/div64.h>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Feb 16, 2021 at 07:57:34PM +0100, Ahmad Fatoum wrote:
> <asm-generic/div64.h> isn't meant for direct usage as <asm/div64.h> may
> override this on a per-architecture basis. We don't do that currently,
> but in the future we might. Include the <linux/math64.h> instead.
> 
> No functional change.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---

Applied, thanks

Sascha

>  arch/arm/mach-omap/am33xx_clock.c      | 2 +-
>  arch/arm/mach-samsung/clocks-s3c64xx.c | 2 +-
>  arch/powerpc/ddr-8xxx/util.c           | 2 +-
>  commands/dhrystone.c                   | 2 +-
>  commands/time.c                        | 2 +-
>  common/clock.c                         | 2 +-
>  common/console_common.c                | 2 +-
>  drivers/clk/clk-divider.c              | 2 +-
>  drivers/clk/clk-qoric.c                | 2 +-
>  drivers/clk/clk-stm32mp1.c             | 2 +-
>  drivers/clk/imx/clk-frac-pll.c         | 2 +-
>  drivers/clk/imx/clk-pfd.c              | 2 +-
>  drivers/clk/imx/clk-pll14xx.c          | 2 +-
>  drivers/clk/imx/clk-pllv1.c            | 2 +-
>  drivers/clk/imx/clk-pllv2.c            | 2 +-
>  drivers/clk/imx/clk-pllv3.c            | 2 +-
>  drivers/clk/imx/clk-sccg-pll.c         | 2 +-
>  drivers/clk/mxs/clk-frac.c             | 2 +-
>  drivers/clk/mxs/clk-ref.c              | 2 +-
>  drivers/clk/rockchip/clk-pll.c         | 2 +-
>  drivers/clk/socfpga/clk-pll-a10.c      | 2 +-
>  drivers/clk/tegra/clk-divider.c        | 2 +-
>  drivers/clk/tegra/clk-pll.c            | 2 +-
>  drivers/ddr/fsl/util.c                 | 2 +-
>  drivers/led/led-pwm.c                  | 2 +-
>  drivers/mci/mci-core.c                 | 2 +-
>  drivers/mtd/mtdconcat.c                | 2 +-
>  drivers/mtd/ubi/kapi.c                 | 2 +-
>  drivers/mtd/ubi/ubi-barebox.h          | 2 +-
>  drivers/phy/phy-stm32-usbphyc.c        | 2 +-
>  drivers/pwm/pwm-imx.c                  | 2 +-
>  drivers/pwm/pwm-mxs.c                  | 2 +-
>  drivers/pwm/pxa_pwm.c                  | 2 +-
>  drivers/serial/serial_ar933x.c         | 2 +-
>  drivers/video/backlight-pwm.c          | 2 +-
>  drivers/video/imx-ipu-fb.c             | 2 +-
>  drivers/video/imx-ipu-v3/imx-hdmi.c    | 2 +-
>  drivers/video/imx-ipu-v3/imx-ldb.c     | 2 +-
>  drivers/video/imx-ipu-v3/ipu-di.c      | 2 +-
>  drivers/video/imx-ipu-v3/ipufb.c       | 2 +-
>  drivers/video/imx.c                    | 2 +-
>  drivers/video/pxa.c                    | 2 +-
>  drivers/video/tc358767.c               | 2 +-
>  include/linux/kernel.h                 | 2 +-
>  include/linux/mtd/mtd-abi.h            | 2 +-
>  include/linux/mtd/mtd.h                | 2 +-
>  lib/libscan.c                          | 2 +-
>  lib/show_progress.c                    | 2 +-
>  lib/vsprintf.c                         | 2 +-
>  net/sntp.c                             | 2 +-
>  50 files changed, 50 insertions(+), 50 deletions(-)
> 
> diff --git a/arch/arm/mach-omap/am33xx_clock.c b/arch/arm/mach-omap/am33xx_clock.c
> index 8fa2c70aa259..a5ac6f68c0a1 100644
> --- a/arch/arm/mach-omap/am33xx_clock.c
> +++ b/arch/arm/mach-omap/am33xx_clock.c
> @@ -16,7 +16,7 @@
>  #include <asm/io.h>
>  #include <mach/am33xx-clock.h>
>  #include <mach/am33xx-generic.h>
> -#include <asm-generic/div64.h>
> +#include <linux/math64.h>
>  
>  #define PRCM_MOD_EN		0x2
>  #define	PRCM_FORCE_WAKEUP	0x2
> diff --git a/arch/arm/mach-samsung/clocks-s3c64xx.c b/arch/arm/mach-samsung/clocks-s3c64xx.c
> index 3c13f52d2eec..2229ed0529cc 100644
> --- a/arch/arm/mach-samsung/clocks-s3c64xx.c
> +++ b/arch/arm/mach-samsung/clocks-s3c64xx.c
> @@ -17,7 +17,7 @@
>  #include <init.h>
>  #include <clock.h>
>  #include <io.h>
> -#include <asm-generic/div64.h>
> +#include <linux/math64.h>
>  #include <mach/s3c-iomap.h>
>  #include <mach/s3c-generic.h>
>  #include <mach/s3c-clocks.h>
> diff --git a/arch/powerpc/ddr-8xxx/util.c b/arch/powerpc/ddr-8xxx/util.c
> index 626b5f3f9b36..4525524926cc 100644
> --- a/arch/powerpc/ddr-8xxx/util.c
> +++ b/arch/powerpc/ddr-8xxx/util.c
> @@ -8,7 +8,7 @@
>  
>  #include <common.h>
>  #include <asm/fsl_law.h>
> -#include <asm-generic/div64.h>
> +#include <linux/math64.h>
>  #include <mach/clock.h>
>  #include "ddr.h"
>  
> diff --git a/commands/dhrystone.c b/commands/dhrystone.c
> index 154910e5d079..17efa9c099ae 100644
> --- a/commands/dhrystone.c
> +++ b/commands/dhrystone.c
> @@ -15,7 +15,7 @@
>  #include <command.h>
>  #include <errno.h>
>  #include <clock.h>
> -#include <asm-generic/div64.h>
> +#include <linux/math64.h>
>  #include <malloc.h>
>  #include <stdio.h> /* for strcpy, strcmp */
>  
> diff --git a/commands/time.c b/commands/time.c
> index 29000d96d8f6..25ba2da15ed5 100644
> --- a/commands/time.c
> +++ b/commands/time.c
> @@ -1,7 +1,7 @@
>  #include <common.h>
>  #include <command.h>
>  #include <clock.h>
> -#include <asm-generic/div64.h>
> +#include <linux/math64.h>
>  #include <malloc.h>
>  
>  static int do_time(int argc, char *argv[])
> diff --git a/common/clock.c b/common/clock.c
> index 58c2964b1391..7eeba88317ac 100644
> --- a/common/clock.c
> +++ b/common/clock.c
> @@ -11,7 +11,7 @@
>  
>  #include <common.h>
>  #include <init.h>
> -#include <asm-generic/div64.h>
> +#include <linux/math64.h>
>  #include <clock.h>
>  #include <poller.h>
>  
> diff --git a/common/console_common.c b/common/console_common.c
> index 48590c522cc2..3e0741572398 100644
> --- a/common/console_common.c
> +++ b/common/console_common.c
> @@ -18,7 +18,7 @@
>  #include <clock.h>
>  #include <malloc.h>
>  #include <linux/pstore.h>
> -#include <asm-generic/div64.h>
> +#include <linux/math64.h>
>  
>  #ifndef CONFIG_CONSOLE_NONE
>  
> diff --git a/drivers/clk/clk-divider.c b/drivers/clk/clk-divider.c
> index cad902fd324b..9c2e50e4a58b 100644
> --- a/drivers/clk/clk-divider.c
> +++ b/drivers/clk/clk-divider.c
> @@ -10,7 +10,7 @@
>  #include <linux/clk.h>
>  #include <linux/err.h>
>  #include <linux/log2.h>
> -#include <asm-generic/div64.h>
> +#include <linux/math64.h>
>  
>  static unsigned int _get_table_maxdiv(const struct clk_div_table *table)
>  {
> diff --git a/drivers/clk/clk-qoric.c b/drivers/clk/clk-qoric.c
> index b3e0780bc816..5bf677d94e5f 100644
> --- a/drivers/clk/clk-qoric.c
> +++ b/drivers/clk/clk-qoric.c
> @@ -13,7 +13,7 @@
>  #include <linux/kernel.h>
>  #include <of_address.h>
>  #include <of.h>
> -#include <asm-generic/div64.h>
> +#include <linux/math64.h>
>  
>  #define PLL_DIV1	0
>  #define PLL_DIV2	1
> diff --git a/drivers/clk/clk-stm32mp1.c b/drivers/clk/clk-stm32mp1.c
> index 6016c5bfd0a3..2380bd0c21fe 100644
> --- a/drivers/clk/clk-stm32mp1.c
> +++ b/drivers/clk/clk-stm32mp1.c
> @@ -10,7 +10,7 @@
>  #include <io.h>
>  #include <of.h>
>  #include <of_address.h>
> -#include <asm-generic/div64.h>
> +#include <linux/math64.h>
>  
>  #include <dt-bindings/clock/stm32mp1-clks.h>
>  
> diff --git a/drivers/clk/imx/clk-frac-pll.c b/drivers/clk/imx/clk-frac-pll.c
> index 2195762c8b70..48866eadf048 100644
> --- a/drivers/clk/imx/clk-frac-pll.c
> +++ b/drivers/clk/imx/clk-frac-pll.c
> @@ -8,7 +8,7 @@
>  #include <malloc.h>
>  #include <linux/clk.h>
>  #include <linux/err.h>
> -#include <asm-generic/div64.h>
> +#include <linux/math64.h>
>  
>  #include "clk.h"
>  
> diff --git a/drivers/clk/imx/clk-pfd.c b/drivers/clk/imx/clk-pfd.c
> index eb2b1700ae93..a7ca664524cc 100644
> --- a/drivers/clk/imx/clk-pfd.c
> +++ b/drivers/clk/imx/clk-pfd.c
> @@ -12,7 +12,7 @@
>  #include <linux/clkdev.h>
>  #include <linux/err.h>
>  #include <malloc.h>
> -#include <asm-generic/div64.h>
> +#include <linux/math64.h>
>  
>  #include "clk.h"
>  
> diff --git a/drivers/clk/imx/clk-pll14xx.c b/drivers/clk/imx/clk-pll14xx.c
> index 6ba519516b9f..3fd5a49ee756 100644
> --- a/drivers/clk/imx/clk-pll14xx.c
> +++ b/drivers/clk/imx/clk-pll14xx.c
> @@ -14,7 +14,7 @@
>  #include <malloc.h>
>  #include <clock.h>
>  #include <soc/imx8m/clk-early.h>
> -#include <asm-generic/div64.h>
> +#include <linux/math64.h>
>  
>  #include "clk.h"
>  
> diff --git a/drivers/clk/imx/clk-pllv1.c b/drivers/clk/imx/clk-pllv1.c
> index 9b5d28f22fbe..283ae843a75d 100644
> --- a/drivers/clk/imx/clk-pllv1.c
> +++ b/drivers/clk/imx/clk-pllv1.c
> @@ -8,7 +8,7 @@
>  #include <linux/clkdev.h>
>  #include <linux/err.h>
>  #include <malloc.h>
> -#include <asm-generic/div64.h>
> +#include <linux/math64.h>
>  
>  #include "clk.h"
>  
> diff --git a/drivers/clk/imx/clk-pllv2.c b/drivers/clk/imx/clk-pllv2.c
> index 56005ca725e2..6af2d71352fd 100644
> --- a/drivers/clk/imx/clk-pllv2.c
> +++ b/drivers/clk/imx/clk-pllv2.c
> @@ -8,7 +8,7 @@
>  #include <linux/clkdev.h>
>  #include <linux/err.h>
>  #include <malloc.h>
> -#include <asm-generic/div64.h>
> +#include <linux/math64.h>
>  
>  #include "clk.h"
>  
> diff --git a/drivers/clk/imx/clk-pllv3.c b/drivers/clk/imx/clk-pllv3.c
> index e10b61b04055..51e620a040e0 100644
> --- a/drivers/clk/imx/clk-pllv3.c
> +++ b/drivers/clk/imx/clk-pllv3.c
> @@ -9,7 +9,7 @@
>  #include <linux/err.h>
>  #include <malloc.h>
>  #include <clock.h>
> -#include <asm-generic/div64.h>
> +#include <linux/math64.h>
>  
>  #include "clk.h"
>  
> diff --git a/drivers/clk/imx/clk-sccg-pll.c b/drivers/clk/imx/clk-sccg-pll.c
> index aabab27a22a9..755ece0e12ba 100644
> --- a/drivers/clk/imx/clk-sccg-pll.c
> +++ b/drivers/clk/imx/clk-sccg-pll.c
> @@ -12,7 +12,7 @@
>  #include <linux/err.h>
>  #include <malloc.h>
>  #include <clock.h>
> -#include <asm-generic/div64.h>
> +#include <linux/math64.h>
>  
>  #include "clk.h"
>  
> diff --git a/drivers/clk/mxs/clk-frac.c b/drivers/clk/mxs/clk-frac.c
> index 21e572ff6f3a..a9d390121ebd 100644
> --- a/drivers/clk/mxs/clk-frac.c
> +++ b/drivers/clk/mxs/clk-frac.c
> @@ -7,7 +7,7 @@
>  #include <linux/clk.h>
>  #include <linux/err.h>
>  #include <io.h>
> -#include <asm-generic/div64.h>
> +#include <linux/math64.h>
>  
>  #include "clk.h"
>  
> diff --git a/drivers/clk/mxs/clk-ref.c b/drivers/clk/mxs/clk-ref.c
> index 16a2fc299122..69361f9ac315 100644
> --- a/drivers/clk/mxs/clk-ref.c
> +++ b/drivers/clk/mxs/clk-ref.c
> @@ -7,7 +7,7 @@
>  #include <linux/clk.h>
>  #include <linux/err.h>
>  #include <io.h>
> -#include <asm-generic/div64.h>
> +#include <linux/math64.h>
>  
>  #include "clk.h"
>  
> diff --git a/drivers/clk/rockchip/clk-pll.c b/drivers/clk/rockchip/clk-pll.c
> index 8d3fd6cf1c1d..6bb8156f8cb3 100644
> --- a/drivers/clk/rockchip/clk-pll.c
> +++ b/drivers/clk/rockchip/clk-pll.c
> @@ -4,7 +4,7 @@
>   * Author: Heiko Stuebner <heiko@sntech.de>
>   */
>  
> -#include <asm-generic/div64.h>
> +#include <linux/math64.h>
>  #include <common.h>
>  #include <io.h>
>  #include <linux/list.h>
> diff --git a/drivers/clk/socfpga/clk-pll-a10.c b/drivers/clk/socfpga/clk-pll-a10.c
> index 12d6ef6fc327..fcf31e9ea19f 100644
> --- a/drivers/clk/socfpga/clk-pll-a10.c
> +++ b/drivers/clk/socfpga/clk-pll-a10.c
> @@ -7,7 +7,7 @@
>  #include <malloc.h>
>  #include <linux/clk.h>
>  #include <linux/clkdev.h>
> -#include <asm-generic/div64.h>
> +#include <linux/math64.h>
>  
>  #include "clk.h"
>  
> diff --git a/drivers/clk/tegra/clk-divider.c b/drivers/clk/tegra/clk-divider.c
> index 28a1342bbf2c..cc8b85520c0c 100644
> --- a/drivers/clk/tegra/clk-divider.c
> +++ b/drivers/clk/tegra/clk-divider.c
> @@ -8,7 +8,7 @@
>  #include <common.h>
>  #include <io.h>
>  #include <malloc.h>
> -#include <asm-generic/div64.h>
> +#include <linux/math64.h>
>  #include <linux/clk.h>
>  #include <linux/err.h>
>  
> diff --git a/drivers/clk/tegra/clk-pll.c b/drivers/clk/tegra/clk-pll.c
> index 3ac49cae4753..832b3c5ea1ef 100644
> --- a/drivers/clk/tegra/clk-pll.c
> +++ b/drivers/clk/tegra/clk-pll.c
> @@ -9,7 +9,7 @@
>  #include <clock.h>
>  #include <io.h>
>  #include <malloc.h>
> -#include <asm-generic/div64.h>
> +#include <linux/math64.h>
>  #include <linux/clk.h>
>  #include <linux/err.h>
>  
> diff --git a/drivers/ddr/fsl/util.c b/drivers/ddr/fsl/util.c
> index 977d22dcaae4..1775b08be389 100644
> --- a/drivers/ddr/fsl/util.c
> +++ b/drivers/ddr/fsl/util.c
> @@ -8,7 +8,7 @@
>  #include <soc/fsl/fsl_immap.h>
>  #include <io.h>
>  #include <soc/fsl/immap_lsch2.h>
> -#include <asm-generic/div64.h>
> +#include <linux/math64.h>
>  #include "fsl_ddr.h"
>  
>  /* To avoid 64-bit full-divides, we factor this here */
> diff --git a/drivers/led/led-pwm.c b/drivers/led/led-pwm.c
> index d8866bf7578d..90c2ca929a2b 100644
> --- a/drivers/led/led-pwm.c
> +++ b/drivers/led/led-pwm.c
> @@ -20,7 +20,7 @@
>  #include <led.h>
>  #include <pwm.h>
>  #include <of.h>
> -#include <asm-generic/div64.h>
> +#include <linux/math64.h>
>  
>  struct pwmled {
>  	bool active_low;
> diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
> index f9066e3a1ea8..002bfeb1cfc2 100644
> --- a/drivers/mci/mci-core.c
> +++ b/drivers/mci/mci-core.c
> @@ -14,7 +14,7 @@
>  #include <mci.h>
>  #include <malloc.h>
>  #include <errno.h>
> -#include <asm-generic/div64.h>
> +#include <linux/math64.h>
>  #include <asm/byteorder.h>
>  #include <block.h>
>  #include <disks.h>
> diff --git a/drivers/mtd/mtdconcat.c b/drivers/mtd/mtdconcat.c
> index 3032c5a16d9f..8cd82327ba76 100644
> --- a/drivers/mtd/mtdconcat.c
> +++ b/drivers/mtd/mtdconcat.c
> @@ -27,7 +27,7 @@
>  #include <linux/mtd/mtd.h>
>  #include <linux/mtd/concat.h>
>  
> -#include <asm-generic/div64.h>
> +#include <linux/math64.h>
>  
>  /*
>   * Our storage structure:
> diff --git a/drivers/mtd/ubi/kapi.c b/drivers/mtd/ubi/kapi.c
> index e1cab763ebd2..e1781f3f2073 100644
> --- a/drivers/mtd/ubi/kapi.c
> +++ b/drivers/mtd/ubi/kapi.c
> @@ -17,7 +17,7 @@
>  /* This file mostly implements UBI kernel API functions */
>  
>  #include <linux/err.h>
> -#include <asm-generic/div64.h>
> +#include <linux/math64.h>
>  #include "ubi.h"
>  
>  /**
> diff --git a/drivers/mtd/ubi/ubi-barebox.h b/drivers/mtd/ubi/ubi-barebox.h
> index 01b84890f01e..157787563f64 100644
> --- a/drivers/mtd/ubi/ubi-barebox.h
> +++ b/drivers/mtd/ubi/ubi-barebox.h
> @@ -17,7 +17,7 @@
>  #include <common.h>
>  #include <malloc.h>
>  #include <crc.h>
> -#include <asm-generic/div64.h>
> +#include <linux/math64.h>
>  #include <errno.h>
>  #include <linux/err.h>
>  #include <linux/types.h>
> diff --git a/drivers/phy/phy-stm32-usbphyc.c b/drivers/phy/phy-stm32-usbphyc.c
> index d9eaa8a7544a..d1e064440e73 100644
> --- a/drivers/phy/phy-stm32-usbphyc.c
> +++ b/drivers/phy/phy-stm32-usbphyc.c
> @@ -12,7 +12,7 @@
>  #include <io.h>
>  #include <linux/phy/phy.h>
>  #include <linux/reset.h>
> -#include <asm-generic/div64.h>
> +#include <linux/math64.h>
>  #include <usb/phy.h>
>  
>  #define STM32_USBPHYC_PLL	0x0
> diff --git a/drivers/pwm/pwm-imx.c b/drivers/pwm/pwm-imx.c
> index 8407b2f5e1bd..6dd6e3eb9541 100644
> --- a/drivers/pwm/pwm-imx.c
> +++ b/drivers/pwm/pwm-imx.c
> @@ -15,7 +15,7 @@
>  #include <pwm.h>
>  #include <linux/clk.h>
>  #include <linux/err.h>
> -#include <asm-generic/div64.h>
> +#include <linux/math64.h>
>  
>  /* i.MX1 and i.MX21 share the same PWM function block: */
>  
> diff --git a/drivers/pwm/pwm-mxs.c b/drivers/pwm/pwm-mxs.c
> index 08819b43bc1d..8f77ca07a6fe 100644
> --- a/drivers/pwm/pwm-mxs.c
> +++ b/drivers/pwm/pwm-mxs.c
> @@ -9,7 +9,7 @@
>  #include <stmp-device.h>
>  #include <linux/clk.h>
>  #include <linux/err.h>
> -#include <asm-generic/div64.h>
> +#include <linux/math64.h>
>  
>  #define SET	0x4
>  #define CLR	0x8
> diff --git a/drivers/pwm/pxa_pwm.c b/drivers/pwm/pxa_pwm.c
> index dc8e41464b01..61c4b8da43d5 100644
> --- a/drivers/pwm/pxa_pwm.c
> +++ b/drivers/pwm/pxa_pwm.c
> @@ -17,7 +17,7 @@
>  #include <mach/clock.h>
>  #include <mach/pxa-regs.h>
>  #include <mach/regs-pwm.h>
> -#include <asm-generic/div64.h>
> +#include <linux/math64.h>
>  #include <linux/compiler.h>
>  
>  /* PWM registers and bits definitions */
> diff --git a/drivers/serial/serial_ar933x.c b/drivers/serial/serial_ar933x.c
> index 2fe1b4f923b1..32ad1ba463ef 100644
> --- a/drivers/serial/serial_ar933x.c
> +++ b/drivers/serial/serial_ar933x.c
> @@ -18,7 +18,7 @@
>  #include <init.h>
>  #include <malloc.h>
>  #include <io.h>
> -#include <asm-generic/div64.h>
> +#include <linux/math64.h>
>  #include <linux/clk.h>
>  #include <linux/err.h>
>  
> diff --git a/drivers/video/backlight-pwm.c b/drivers/video/backlight-pwm.c
> index cae016be8f3d..4410c7d0473a 100644
> --- a/drivers/video/backlight-pwm.c
> +++ b/drivers/video/backlight-pwm.c
> @@ -24,7 +24,7 @@
>  #include <regulator.h>
>  #include <gpio.h>
>  #include <of_gpio.h>
> -#include <asm-generic/div64.h>
> +#include <linux/math64.h>
>  
>  struct pwm_backlight {
>  	struct backlight_device backlight;
> diff --git a/drivers/video/imx-ipu-fb.c b/drivers/video/imx-ipu-fb.c
> index 18171bdd810b..a3f195373b4e 100644
> --- a/drivers/video/imx-ipu-fb.c
> +++ b/drivers/video/imx-ipu-fb.c
> @@ -23,7 +23,7 @@
>  #include <mach/imxfb.h>
>  #include <malloc.h>
>  #include <errno.h>
> -#include <asm-generic/div64.h>
> +#include <linux/math64.h>
>  #include <mmu.h>
>  #include <mach/imx-ipu-fb.h>
>  #include <linux/clk.h>
> diff --git a/drivers/video/imx-ipu-v3/imx-hdmi.c b/drivers/video/imx-ipu-v3/imx-hdmi.c
> index 1e55c97d2426..589ef5e32da8 100644
> --- a/drivers/video/imx-ipu-v3/imx-hdmi.c
> +++ b/drivers/video/imx-ipu-v3/imx-hdmi.c
> @@ -19,7 +19,7 @@
>  #include <init.h>
>  #include <linux/clk.h>
>  #include <linux/err.h>
> -#include <asm-generic/div64.h>
> +#include <linux/math64.h>
>  #include <linux/clk.h>
>  #include <i2c/i2c.h>
>  #include <video/media-bus-format.h>
> diff --git a/drivers/video/imx-ipu-v3/imx-ldb.c b/drivers/video/imx-ipu-v3/imx-ldb.c
> index d7793bdc0e3f..13162371617f 100644
> --- a/drivers/video/imx-ipu-v3/imx-ldb.c
> +++ b/drivers/video/imx-ipu-v3/imx-ldb.c
> @@ -31,7 +31,7 @@
>  #include <mfd/imx6q-iomuxc-gpr.h>
>  #include <linux/clk.h>
>  #include <linux/err.h>
> -#include <asm-generic/div64.h>
> +#include <linux/math64.h>
>  #include <linux/clk.h>
>  #include <mach/imx6-regs.h>
>  #include <mach/imx53-regs.h>
> diff --git a/drivers/video/imx-ipu-v3/ipu-di.c b/drivers/video/imx-ipu-v3/ipu-di.c
> index b4302412e0a0..97613207c945 100644
> --- a/drivers/video/imx-ipu-v3/ipu-di.c
> +++ b/drivers/video/imx-ipu-v3/ipu-di.c
> @@ -15,7 +15,7 @@
>  #include <common.h>
>  #include <linux/err.h>
>  #include <linux/clk.h>
> -#include <asm-generic/div64.h>
> +#include <linux/math64.h>
>  #include <malloc.h>
>  
>  #include "imx-ipu-v3.h"
> diff --git a/drivers/video/imx-ipu-v3/ipufb.c b/drivers/video/imx-ipu-v3/ipufb.c
> index dd54d9df3167..0b5391643450 100644
> --- a/drivers/video/imx-ipu-v3/ipufb.c
> +++ b/drivers/video/imx-ipu-v3/ipufb.c
> @@ -22,7 +22,7 @@
>  #include <of_graph.h>
>  #include <linux/clk.h>
>  #include <linux/err.h>
> -#include <asm-generic/div64.h>
> +#include <linux/math64.h>
>  #include <video/media-bus-format.h>
>  
>  #include "imx-ipu-v3.h"
> diff --git a/drivers/video/imx.c b/drivers/video/imx.c
> index d15c2d88fb91..e93859775a60 100644
> --- a/drivers/video/imx.c
> +++ b/drivers/video/imx.c
> @@ -25,7 +25,7 @@
>  #include <linux/clk.h>
>  #include <linux/err.h>
>  #include <linux/sizes.h>
> -#include <asm-generic/div64.h>
> +#include <linux/math64.h>
>  
>  #define LCDC_SSA	0x00
>  
> diff --git a/drivers/video/pxa.c b/drivers/video/pxa.c
> index d444e0981fa9..a2ff4bce2a38 100644
> --- a/drivers/video/pxa.c
> +++ b/drivers/video/pxa.c
> @@ -38,7 +38,7 @@
>  #include <mach/pxafb.h>
>  
>  #include <asm/io.h>
> -#include <asm-generic/div64.h>
> +#include <linux/math64.h>
>  
>  /* PXA LCD DMA descriptor */
>  struct pxafb_dma_descriptor {
> diff --git a/drivers/video/tc358767.c b/drivers/video/tc358767.c
> index 7d14aca9115b..2a0fa8b36879 100644
> --- a/drivers/video/tc358767.c
> +++ b/drivers/video/tc358767.c
> @@ -31,7 +31,7 @@
>  #include <of_gpio.h>
>  #include <video/media-bus-format.h>
>  #include <video/vpl.h>
> -#include <asm-generic/div64.h>
> +#include <linux/math64.h>
>  
>  #define DP_LINK_BW_SET			0x100
>  #define DP_ENHANCED_FRAME_EN		(1 << 7)
> diff --git a/include/linux/kernel.h b/include/linux/kernel.h
> index 787571a5a084..9ccdd60224dd 100644
> --- a/include/linux/kernel.h
> +++ b/include/linux/kernel.h
> @@ -6,7 +6,7 @@
>  #include <linux/bug.h>
>  #include <linux/barebox-wrapper.h>
>  #include <linux/limits.h>
> -#include <asm-generic/div64.h>
> +#include <linux/math64.h>
>  
>  #define ALIGN(x, a)		__ALIGN_MASK(x, (typeof(x))(a) - 1)
>  #define ALIGN_DOWN(x, a)	ALIGN((x) - ((a) - 1), (a))
> diff --git a/include/linux/mtd/mtd-abi.h b/include/linux/mtd/mtd-abi.h
> index 6ad34c891290..b7a8955880fe 100644
> --- a/include/linux/mtd/mtd-abi.h
> +++ b/include/linux/mtd/mtd-abi.h
> @@ -7,7 +7,7 @@
>  #ifndef __MTD_ABI_H__
>  #define __MTD_ABI_H__
>  
> -#include <asm-generic/div64.h>
> +#include <linux/math64.h>
>  
>  struct erase_info_user {
>  	uint64_t start;
> diff --git a/include/linux/mtd/mtd.h b/include/linux/mtd/mtd.h
> index 0d977fea2534..b17e590f5e91 100644
> --- a/include/linux/mtd/mtd.h
> +++ b/include/linux/mtd/mtd.h
> @@ -15,7 +15,7 @@
>  #include <linux/types.h>
>  #include <linux/list.h>
>  #include <linux/mtd/mtd-abi.h>
> -#include <asm-generic/div64.h>
> +#include <linux/math64.h>
>  
>  #define MTD_CHAR_MAJOR 90
>  #define MTD_BLOCK_MAJOR 31
> diff --git a/lib/libscan.c b/lib/libscan.c
> index c4139e69d150..ad2e3df34128 100644
> --- a/lib/libscan.c
> +++ b/lib/libscan.c
> @@ -31,7 +31,7 @@
>  #include <mtd/ubi-user.h>
>  #include <mtd/utils.h>
>  #include <mtd/ubi-media.h>
> -#include <asm-generic/div64.h>
> +#include <linux/math64.h>
>  
>  int libscan_ubi_scan(struct mtd_info *mtd, struct ubi_scan_info **info,
>  	     int verbose)
> diff --git a/lib/show_progress.c b/lib/show_progress.c
> index 85085790f68b..259fb7ab190c 100644
> --- a/lib/show_progress.c
> +++ b/lib/show_progress.c
> @@ -17,7 +17,7 @@
>  #include <common.h>
>  #include <fs.h>
>  #include <progress.h>
> -#include <asm-generic/div64.h>
> +#include <linux/math64.h>
>  
>  #define HASHES_PER_LINE	65
>  
> diff --git a/lib/vsprintf.c b/lib/vsprintf.c
> index 4834501ff124..1d82adc73368 100644
> --- a/lib/vsprintf.c
> +++ b/lib/vsprintf.c
> @@ -13,7 +13,7 @@
>  #include <linux/types.h>
>  #include <linux/string.h>
>  #include <linux/ctype.h>
> -#include <asm-generic/div64.h>
> +#include <linux/math64.h>
>  #include <malloc.h>
>  #include <kallsyms.h>
>  
> diff --git a/net/sntp.c b/net/sntp.c
> index 45449fd95b1e..08da012f36a3 100644
> --- a/net/sntp.c
> +++ b/net/sntp.c
> @@ -3,7 +3,7 @@
>  #include <common.h>
>  #include <asm/byteorder.h>
>  #include <asm/unaligned.h>
> -#include <asm-generic/div64.h>
> +#include <linux/math64.h>
>  #include <command.h>
>  #include <clock.h>
>  #include <net.h>
> -- 
> 2.29.2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
