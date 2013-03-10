Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pb0-f49.google.com ([209.85.160.49])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UEaQe-0008Mc-Rh
 for barebox@lists.infradead.org; Sun, 10 Mar 2013 07:12:23 +0000
Received: by mail-pb0-f49.google.com with SMTP id xa12so2666055pbc.36
 for <barebox@lists.infradead.org>; Sat, 09 Mar 2013 23:12:19 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <1362652402-2985-5-git-send-email-dev@lynxeye.de>
References: <1362129773-4579-1-git-send-email-dev@lynxeye.de>
 <1362652402-2985-1-git-send-email-dev@lynxeye.de>
 <1362652402-2985-5-git-send-email-dev@lynxeye.de>
Date: Sun, 10 Mar 2013 11:12:19 +0400
Message-ID: <CAA4bVAFkGyYjnTSvhXqpyqv8NdfC4urW5dOVwR9hxUun-SarkA@mail.gmail.com>
From: Antony Pavlov <antonynpavlov@gmail.com>
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
Subject: Re: [PATCH v2 4/5] tegra: add proper timer driver
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

On 7 March 2013 14:33, Lucas Stach <dev@lynxeye.de> wrote:
> Replace the ad-hoc clocksource implementation with a proper driver for
> the Tegra 20 timer. This driver is able to do the required hardware
> initialisation itself.
>
> Signed-off-by: Lucas Stach <dev@lynxeye.de>
> ---
>  arch/arm/mach-tegra/Makefile        |   2 +-
>  arch/arm/mach-tegra/clock.c         |  56 -----------------
>  arch/arm/mach-tegra/tegra20-car.c   |   5 ++
>  arch/arm/mach-tegra/tegra20-timer.c | 120 ++++++++++++++++++++++++++++++++++++
>  arch/arm/mach-tegra/tegra20.c       |   4 ++
>  5 files changed, 130 insertions(+), 57 deletions(-)
>  delete mode 100644 arch/arm/mach-tegra/clock.c
>  create mode 100644 arch/arm/mach-tegra/tegra20-timer.c
>
> diff --git a/arch/arm/mach-tegra/Makefile b/arch/arm/mach-tegra/Makefile
> index 3391528..6aa219c 100644
> --- a/arch/arm/mach-tegra/Makefile
> +++ b/arch/arm/mach-tegra/Makefile
> @@ -1,4 +1,4 @@
> -obj-y += clock.o
>  obj-y += reset.o
>  obj-y += tegra20.o
>  obj-y += tegra20-car.o
> +obj-y += tegra20-timer.o
> diff --git a/arch/arm/mach-tegra/clock.c b/arch/arm/mach-tegra/clock.c
> deleted file mode 100644
> index 82065ee..0000000
> --- a/arch/arm/mach-tegra/clock.c
> +++ /dev/null
> @@ -1,56 +0,0 @@
> -/*
> - * Copyright (C) 2011 Antony Pavlov <antonynpavlov@gmail.com>
> - *
> - * This file is part of barebox.
> - * See file CREDITS for list of people who contributed to this project.
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License version 2
> - * as published by the Free Software Foundation.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - * GNU General Public License for more details.
> - *
> - */
> -
> -/**
> - * @file
> - * @brief Clocksource based on Tegra internal timer
> - */
> -
> -#include <common.h>
> -#include <clock.h>
> -#include <linux/list.h>
> -#include <linux/clk.h>
> -#include <init.h>
> -#include <asm/io.h>
> -#include <mach/iomap.h>
> -
> -static void __iomem *timer_reg_base = (void __iomem *) (TEGRA_TMR1_BASE);
> -
> -#define timer_writel(value, reg) \
> -       __raw_writel(value, (u32)timer_reg_base + (reg))
> -#define timer_readl(reg) \
> -       __raw_readl((u32)timer_reg_base + (reg))
> -
> -static uint64_t tegra_clocksource_read(void)
> -{
> -       return timer_readl(0x10);
> -}
> -
> -static struct clocksource cs = {
> -       .read   = tegra_clocksource_read,
> -       .mask   = 0xffffffff,
> -};
> -
> -/* FIXME: here we have no initialization. All initialization made by U-Boot */
> -static int clocksource_init(void)
> -{
> -       cs.mult = clocksource_hz2mult(1000000, cs.shift);
> -       init_clock(&cs);
> -
> -       return 0;
> -}
> -core_initcall(clocksource_init);
> diff --git a/arch/arm/mach-tegra/tegra20-car.c b/arch/arm/mach-tegra/tegra20-car.c
> index eec3cc3..3ac389f 100644
> --- a/arch/arm/mach-tegra/tegra20-car.c
> +++ b/arch/arm/mach-tegra/tegra20-car.c
> @@ -23,6 +23,7 @@
>  #include <init.h>
>  #include <io.h>
>  #include <linux/clk.h>
> +#include <linux/clkdev.h>
>  #include <linux/err.h>
>  #include <mach/iomap.h>
>
> @@ -97,6 +98,10 @@ static int tegra20_car_probe(struct device_d *dev)
>         /* timer is a gate, but as it's enabled by BOOTROM we needn't worry */
>         clks[timer] = clk_fixed_factor("timer", "clk_m", 1, 1);
>
> +

Please no extra empty line here.

> +       /* device to clock links */
> +       clkdev_add_physbase(clks[timer], TEGRA_TMR1_BASE, NULL);
> +
>         return 0;
>  }
>
> diff --git a/arch/arm/mach-tegra/tegra20-timer.c b/arch/arm/mach-tegra/tegra20-timer.c
> new file mode 100644
> index 0000000..6c1d302
> --- /dev/null
> +++ b/arch/arm/mach-tegra/tegra20-timer.c
> @@ -0,0 +1,120 @@
> +/*
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
> + * @brief Device driver for the Tegra 20 timer, which exposes a clocksource.
> + */
> +
> +#include <common.h>
> +#include <clock.h>
> +#include <init.h>
> +#include <io.h>
> +#include <linux/clk.h>
> +
> +/* register definitions */
> +#define TIMERUS_CNTR_1US       0x10
> +#define TIMERUS_USEC_CFG       0x14
> +
> +static void __iomem *timer_base;
> +
> +static uint64_t tegra20_timer_cs_read(void)
> +{
> +       return readl(timer_base + TIMERUS_CNTR_1US);
> +}
> +
> +static struct clocksource cs = {
> +       .read   = tegra20_timer_cs_read,
> +       .mask   = CLOCKSOURCE_MASK(32),
> +};
> +
> +static int tegra20_timer_probe(struct device_d *dev)
> +{
> +       struct clk *timer_clk;
> +       unsigned long rate;
> +       u32 reg;
> +
> +       /* use only one timer */
> +       if (timer_base)
> +               return -EBUSY;
> +
> +       timer_base = dev_request_mem_region(dev, 0);
> +       if (!timer_base) {
> +               dev_err(dev, "could not get memory region\n");
> +               return -ENODEV;
> +       }
> +
> +       timer_clk = clk_get(dev, NULL);
> +       if (!timer_clk) {
> +               dev_err(dev, "could not get clock\n");
> +               return -ENODEV;
> +       }
> +
> +       clk_enable(timer_clk);
> +
> +       /*
> +        * calibrate timer to run at 1MHz
> +        * TIMERUS_USEC_CFG selects the scale down factor with bits [0:7]
> +        * representing the divisor and bits [8:15] representing the dividend
> +        * each in n+1 form.
> +        */
> +       rate = clk_get_rate(timer_clk);
> +       switch (rate) {
> +       case 12000000:
> +               reg = 0x000b;
> +               break;
> +       case 13000000:
> +               reg = 0x000c;
> +               break;
> +       case 19200000:
> +               reg = 0x045f;
> +               break;
> +       case 26000000:
> +               reg = 0x0019;
> +               break;
> +       default:
> +               reg = 0;
> +               dev_warn(dev, "unknown timer clock rate\n");
> +               break;
> +       }
> +       writel(reg, timer_base + TIMERUS_USEC_CFG);
> +
> +       cs.mult = clocksource_hz2mult(1000000, cs.shift);
> +       init_clock(&cs);
> +
> +       return 0;
> +}
> +
> +static __maybe_unused struct of_device_id tegra20_timer_dt_ids[] = {
> +       {
> +               .compatible = "nvidia,tegra20-timer",
> +       }, {
> +               /* sentinel */
> +       }
> +};
> +
> +static struct driver_d tegra20_timer_driver = {
> +       .probe  = tegra20_timer_probe,
> +       .name   = "tegra20-timer",
> +       .of_compatible = DRV_OF_COMPAT(tegra20_timer_dt_ids),
> +};
> +
> +static int tegra20_timer_init(void)
> +{
> +       return platform_driver_register(&tegra20_timer_driver);
> +}
> +

In barebox there is a tradition to skip emty line before *_initcall.
Try
grep -B1 -RHn "coredevice_initcall" arch/

> +coredevice_initcall(tegra20_timer_init);
> diff --git a/arch/arm/mach-tegra/tegra20.c b/arch/arm/mach-tegra/tegra20.c
> index 3831f1b..c1b3f78 100644
> --- a/arch/arm/mach-tegra/tegra20.c
> +++ b/arch/arm/mach-tegra/tegra20.c
> @@ -24,6 +24,10 @@ static int tegra20_init(void)
>                            TEGRA_CLK_RESET_BASE, TEGRA_CLK_RESET_SIZE,
>                            IORESOURCE_MEM, NULL);
>
> +       add_generic_device("tegra20-timer", DEVICE_ID_SINGLE, NULL,
> +                          TEGRA_TMR1_BASE, TEGRA_TMR1_SIZE,
> +                          IORESOURCE_MEM, NULL);
> +
>         return 0;
>  }
>
> --
> 1.8.1.2
>
>
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox



-- 
Best regards,
  Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
