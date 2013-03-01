Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UBTjJ-0008FX-KN
 for barebox@lists.infradead.org; Fri, 01 Mar 2013 17:26:46 +0000
Date: Fri, 1 Mar 2013 18:26:44 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130301172644.GU1906@pengutronix.de>
References: <1362129773-4579-1-git-send-email-dev@lynxeye.de>
 <1362129773-4579-6-git-send-email-dev@lynxeye.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1362129773-4579-6-git-send-email-dev@lynxeye.de>
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
Subject: Re: [PATCH 5/7] tegra: add driver for the clock and reset module
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

On Fri, Mar 01, 2013 at 10:22:51AM +0100, Lucas Stach wrote:
> Only a basic set of clocks is supported as of now.
> 
> Signed-off-by: Lucas Stach <dev@lynxeye.de>
> ---
>  arch/arm/Kconfig                          |   2 +
>  arch/arm/mach-tegra/Makefile              |   1 +
>  arch/arm/mach-tegra/include/mach/clkdev.h |   7 ++
>  arch/arm/mach-tegra/tegra20-car.c         | 117 ++++++++++++++++++++++++++++++
>  arch/arm/mach-tegra/tegra20.c             |   4 +
>  5 files changed, 131 insertions(+)
>  create mode 100644 arch/arm/mach-tegra/include/mach/clkdev.h
>  create mode 100644 arch/arm/mach-tegra/tegra20-car.c
> 
> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> index 1c41e44..a3828e1 100644
> --- a/arch/arm/Kconfig
> +++ b/arch/arm/Kconfig
> @@ -108,6 +108,8 @@ config ARCH_VERSATILE
>  config ARCH_TEGRA
>  	bool "Nvidia Tegra-based boards"
>  	select CPU_V7
> +	select COMMON_CLK
> +	select CLKDEV_LOOKUP
>  
>  endchoice
>  
> diff --git a/arch/arm/mach-tegra/Makefile b/arch/arm/mach-tegra/Makefile
> index 7777d0a..3391528 100644
> --- a/arch/arm/mach-tegra/Makefile
> +++ b/arch/arm/mach-tegra/Makefile
> @@ -1,3 +1,4 @@
>  obj-y += clock.o
>  obj-y += reset.o
>  obj-y += tegra20.o
> +obj-y += tegra20-car.o
> diff --git a/arch/arm/mach-tegra/include/mach/clkdev.h b/arch/arm/mach-tegra/include/mach/clkdev.h
> new file mode 100644
> index 0000000..04b37a8
> --- /dev/null
> +++ b/arch/arm/mach-tegra/include/mach/clkdev.h
> @@ -0,0 +1,7 @@
> +#ifndef __ASM_MACH_CLKDEV_H
> +#define __ASM_MACH_CLKDEV_H
> +
> +#define __clk_get(clk) ({ 1; })
> +#define __clk_put(clk) do { } while (0)
> +
> +#endif
> diff --git a/arch/arm/mach-tegra/tegra20-car.c b/arch/arm/mach-tegra/tegra20-car.c
> new file mode 100644
> index 0000000..95b3051
> --- /dev/null
> +++ b/arch/arm/mach-tegra/tegra20-car.c
> @@ -0,0 +1,117 @@
> +/*
> + * Copyright (C) 2012 NVIDIA CORPORATION. All rights reserved.
> + * Copyright (C) 2013 Lucas Stach <l.stach@pengutronix.de>
> + *
> + * This program is free software; you can redistribute it and/or modify it
> + * under the terms and conditions of the GNU General Public License,
> + * version 2, as published by the Free Software Foundation.
> + *
> + * This program is distributed in the hope it will be useful, but WITHOUT
> + * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
> + * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
> + * more details.
> + *
> + * You should have received a copy of the GNU General Public License
> + * along with this program.  If not, see <http://www.gnu.org/licenses/>.
> + */
> +
> +/**
> + * @file
> + * @brief Device driver for the Tegra 20 clock and reset (CAR) controller
> + */
> +
> +#include <common.h>
> +#include <init.h>
> +#include <io.h>
> +#include <linux/clk.h>
> +#include <linux/err.h>
> +
> +/* Register definitions */
> +#define OSC_CTRL 0x50
> +#define OSC_CTRL_OSC_FREQ_MASK		(3 << 30)
> +#define OSC_CTRL_PLL_REF_DIV_MASK	(3 << 28)
> +
> +static void __iomem *car_base;
> +
> +enum tegra20_clks {
> +	cpu, ac97 = 3, rtc, timer, uarta, gpio = 8, sdmmc2, i2s1 = 11, i2c1,
> +	ndflash, sdmmc1, sdmmc4, twc, pwm, i2s2, epp, gr2d = 21, usbd, isp,
> +	gr3d, ide, disp2, disp1, host1x, vcp, cache2 = 31, mem, ahbdma, apbdma,
> +	kbc = 36, stat_mon, pmc, fuse, kfuse, sbc1, nor, spi, sbc2, xio, sbc3,
> +	dvc, dsi, mipi = 50, hdmi, csi, tvdac, i2c2, uartc, emc = 57, usb2,
> +	usb3, mpe, vde, bsea, bsev, speedo, uartd, uarte, i2c3, sbc4, sdmmc3,
> +	pex, owr, afi, csite, pcie_xclk, avpucq = 75, la, irama = 84, iramb,
> +	iramc, iramd, cram2, audio_2x, clk_d, csus = 92, cdev1, cdev2,
> +	uartb = 96, vfir, spdif_in, spdif_out, vi, vi_sensor, tvo, cve,
> +	osc, clk_32k, clk_m, sclk, cclk, hclk, pclk, blink, pll_a, pll_a_out0,
> +	pll_c, pll_c_out1, pll_d, pll_d_out0, pll_e, pll_m, pll_m_out1,
> +	pll_p, pll_p_out1, pll_p_out2, pll_p_out3, pll_p_out4, pll_u,
> +	pll_x, audio, pll_ref, twd, clk_max,
> +};
> +
> +static struct clk *clks[clk_max];
> +
> +static unsigned long get_osc_frequency(void)
> +{
> +	u32 osc_ctrl = readl(car_base + OSC_CTRL);
> +
> +	switch (osc_ctrl & OSC_CTRL_OSC_FREQ_MASK) {

OSC_CTRL_OSC_FREQ_MASK is defined as 3 << 30, The result will never be
one of the values below.

> +	case 0:
> +		return 13000000;
> +	case 1:
> +		return 19200000;
> +	case 2:
> +		return 12000000;
> +	case 3:
> +		return 26000000;
> +	default:
> +		return 0;
> +	}
> +}
> +

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
