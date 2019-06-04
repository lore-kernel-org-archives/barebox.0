Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY4jz-0006KX-ML
 for barebox@lists.infradead.org; Tue, 04 Jun 2019 08:24:22 +0000
Date: Tue, 4 Jun 2019 10:24:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190604082417.w6hldzwxosstbibw@pengutronix.de>
References: <20190603190559.16715-1-a.fatoum@pengutronix.de>
 <20190603190559.16715-3-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190603190559.16715-3-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH 3/7] watchdog: add stm32 watchdog and reset driver
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Jun 03, 2019 at 09:05:55PM +0200, Ahmad Fatoum wrote:
> The driver supports setting watchdog timeout, system reset
> and querying reset reason. Disabling watchdog isn't possible
> in hardware, thus users should either enable it before boot
> or have the poller take care of feeding it.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  .../mach-stm32mp/include/mach/reset-reason.h  |  28 ++
>  drivers/watchdog/Kconfig                      |   8 +
>  drivers/watchdog/Makefile                     |   1 +
>  drivers/watchdog/stm32_wdt.c                  | 288 ++++++++++++++++++
>  4 files changed, 325 insertions(+)
>  create mode 100644 arch/arm/mach-stm32mp/include/mach/reset-reason.h
>  create mode 100644 drivers/watchdog/stm32_wdt.c
> 
> diff --git a/arch/arm/mach-stm32mp/include/mach/reset-reason.h b/arch/arm/mach-stm32mp/include/mach/reset-reason.h
> new file mode 100644
> index 000000000000..1165b347c31f
> --- /dev/null
> +++ b/arch/arm/mach-stm32mp/include/mach/reset-reason.h
> @@ -0,0 +1,28 @@
> +#ifndef __MACH_RESET_REASON_H__
> +#define __MACH_RESET_REASON_H__
> +
> +#include <reset_source.h>
> +
> +#define RCC_RSTF_POR		BIT(0)
> +#define RCC_RSTF_BOR		BIT(1)
> +#define RCC_RSTF_PAD		BIT(2)
> +#define RCC_RSTF_HCSS		BIT(3)
> +#define RCC_RSTF_VCORE		BIT(4)
> +
> +#define RCC_RSTF_MPSYS		BIT(6)
> +#define RCC_RSTF_MCSYS		BIT(7)
> +#define RCC_RSTF_IWDG1		BIT(8)
> +#define RCC_RSTF_IWDG2		BIT(9)
> +
> +#define RCC_RSTF_STDBY		BIT(11)
> +#define RCC_RSTF_CSTDBY		BIT(12)
> +#define RCC_RSTF_MPUP0		BIT(13)
> +#define RCC_RSTF_MPUP1		BIT(14)
> +
> +struct stm32_reset_reason {
> +	uint32_t mask;
> +	enum reset_src_type type;
> +	int instance;
> +};

This is used in the driver only. Why is this in a header file?

> +
> +#endif
> diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
> index 04efb1a3c866..5a28b530099d 100644
> --- a/drivers/watchdog/Kconfig
> +++ b/drivers/watchdog/Kconfig
> @@ -81,4 +81,12 @@ config RAVE_SP_WATCHDOG
>  	depends on RAVE_SP_CORE
>  	help
>  	  Support for the watchdog on RAVE SP device.
> +
> +config STM32_IWDG_WATCHDOG
> +        bool "Enable IWDG watchdog driver for STM32 processors"

spaces instead of tabs here.

> +	depends on ARCH_STM32MP
> +	select MFD_SYSCON
> +        help
> +                Enable the STM32 watchdog (IWDG) driver. Enable support to
> +                configure STM32's on-SoC watchdog.
>  endif
> +
> +static int stm32_iwdg_probe(struct device_d *dev)
> +{
> +	struct stm32_iwdg_data *data;
> +	struct stm32_iwdg *wd;
> +	struct resource *res;
> +	struct watchdog *wdd;
> +	struct clk *clk;
> +	int ret;
> +
> +	wd = xzalloc(sizeof(*wd));
> +
> +	ret = dev_get_drvdata(dev, (const void **)&data);
> +	if (ret)
> +		return -ENODEV;
> +
> +	res = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(res)) {
> +		dev_err(dev, "could not get timer memory region\n");
> +		return PTR_ERR(res);
> +	}
> +	wd->iwdg_base = IOMEM(res->start);
> +
> +	clk = of_clk_get_by_name(dev->device_node, "lsi");

This function is only to be used when there's no struct device_d *
available. clk_get() is what you want to use here.

> +	if (IS_ERR(clk))
> +		return PTR_ERR(clk);
> +
> +	ret = clk_enable(clk);
> +	if (ret)
> +		return ret;
> +
> +	wd->rate = clk_get_rate(clk);
> +
> +	if (data->has_pclk) {
> +		clk = of_clk_get_by_name(dev->device_node, "pclk");
> +		if (IS_ERR(clk))
> +			return PTR_ERR(clk);
> +
> +		ret = clk_enable(clk);
> +		if (ret)
> +			return ret;
> +	}
> +
> +	wdd              = &wd->wdd;
> +	wdd->hwdev       = dev;
> +	wdd->set_timeout = stm32_iwdg_set_timeout;
> +	wdd->timeout_max = (RLR_MAX + 1) * data->max_prescaler * 1000;
> +	wdd->timeout_max /= wd->rate * 1000;
> +	wdd->timeout_cur = wdd->timeout_max;

Please don't do such alignment things. When somebody has to change
something here he only has the choice of breaking the alignment or
changing unrelated lines.

> +
> +	ret = stm32_iwdg_set_timeout(wdd, wdd->timeout_max);
> +	if (ret) {
> +		dev_err(dev, "Failed to set initial watchdog timeout\n");
> +		return ret;
> +	}
> +
> +	ret = watchdog_register(wdd);
> +	if (ret) {
> +		dev_err(dev, "Failed to register watchdog device\n");
> +		return ret;
> +	}
> +
> +	wd->restart.name = "stm32-iwdg";
> +	wd->restart.restart = stm32_iwdg_restart_handler;
> +	wd->restart.priority = 200;
> +
> +	wd->rcc_regmap = syscon_regmap_lookup_by_compatible("st,stm32mp1-rcc");
> +	if (IS_ERR(wd->rcc_regmap)) {
> +		dev_warn(dev, "Cannot register restart handler\n");
> +		goto end;
> +	}
> +
> +	ret = restart_handler_register(&wd->restart);
> +	if (ret) {
> +		dev_warn(dev, "Cannot register restart handler\n");
> +		goto end;
> +	}
> +
> +	ret = stm32_set_reset_reason(wd->rcc_regmap);
> +	if (ret) {
> +		dev_warn(dev, "Cannot determine reset reason\n");
> +		goto end;
> +	}

Are the last three failures really failures? You skip the remaining
steps but still you return with success which looks inconsistent.

> +end:
> +	dev_info(dev, "probed\n");
> +	return 0;
> +}

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
