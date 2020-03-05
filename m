Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9x9i-0007IG-0F
 for barebox@lists.infradead.org; Thu, 05 Mar 2020 20:31:45 +0000
Date: Thu, 5 Mar 2020 21:29:29 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20200305202929.GA20581@ravnborg.org>
References: <20200305080225.19103-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200305080225.19103-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH 1/2] ARM: at91: add support for SAM9 SoC reset
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Ahmad.

On Thu, Mar 05, 2020 at 09:02:24AM +0100, Ahmad Fatoum wrote:
> System reset wasn't supported on the sama5 so far.
> Add a driver to remedy this.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Looked through the patch - everything looked good.
One question below.

With the question considered:
Reviewed-by: Sam Ravnborg <sam@ravnborg.org>


	Sam

> ---
>  arch/arm/mach-at91/Kconfig        |  5 +++
>  arch/arm/mach-at91/Makefile       |  1 +
>  arch/arm/mach-at91/at91sam9_rst.c | 74 +++++++++++++++++++++++++++++++
>  3 files changed, 80 insertions(+)
>  create mode 100644 arch/arm/mach-at91/at91sam9_rst.c
> 
> diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
> index 5267102bf94e..0eb5410664bb 100644
> --- a/arch/arm/mach-at91/Kconfig
> +++ b/arch/arm/mach-at91/Kconfig
> @@ -41,12 +41,16 @@ config AT91SAM926X_BOARD_INIT
>  config AT91SAM9_SMC
>  	bool
>  
> +config HAVE_AT91SAM9_RST
> +	bool
> +
>  config SOC_AT91SAM9
>  	bool
>  	select CPU_ARM926T
>  	select AT91SAM9_SMC
>  	select CLOCKSOURCE_ATMEL_PIT
>  	select PINCTRL
> +	select HAVE_AT91SAM9_RST
>  	select HAVE_AT91_SMD
>  	select HAVE_AT91_USB_CLK
>  	select HAVE_AT91_UTMI
> @@ -54,6 +58,7 @@ config SOC_AT91SAM9
>  
>  config SOC_SAMA5
>  	bool
> +	select HAVE_AT91SAM9_RST
>  	select CPU_V7
>  
>  config SOC_SAMA5D2
> diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
> index 66d0b700f61e..89aff54b8af7 100644
> --- a/arch/arm/mach-at91/Makefile
> +++ b/arch/arm/mach-at91/Makefile
> @@ -13,6 +13,7 @@ obj-y += at91sam9_reset.o
>  obj-y += at91sam9g45_reset.o
>  
>  obj-$(CONFIG_AT91SAM9_SMC) += sam9_smc.o
> +obj-$(CONFIG_HAVE_AT91SAM9_RST) += at91sam9_rst.o
>  
>  # CPU-specific support
>  obj-$(CONFIG_SOC_AT91RM9200)	+= at91rm9200.o at91rm9200_time.o at91rm9200_devices.o
> diff --git a/arch/arm/mach-at91/at91sam9_rst.c b/arch/arm/mach-at91/at91sam9_rst.c
> new file mode 100644
> index 000000000000..cd266052c98d
> --- /dev/null
> +++ b/arch/arm/mach-at91/at91sam9_rst.c
> @@ -0,0 +1,74 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (C) 2019 Pengutronix, Ahmad Fatoum <a.fatoum@pengutronix.de>
> + */
> +
> +#include <common.h>
> +#include <init.h>
> +#include <io.h>
> +#include <restart.h>
> +#include <linux/clk.h>
> +#include <mach/at91_rstc.h>
> +
> +struct at91sam9x_rst {
> +	struct restart_handler restart;
> +	void __iomem *base;
> +};
> +
> +static void __noreturn at91sam9x_restart_soc(struct restart_handler *rst)
> +{
> +	struct at91sam9x_rst *priv = container_of(rst, struct at91sam9x_rst, restart);
> +
> +	writel(AT91_RSTC_PROCRST
> +	       | AT91_RSTC_PERRST
> +	       | AT91_RSTC_EXTRST
> +	       | AT91_RSTC_KEY,
> +	       priv->base + AT91_RSTC_CR);
> +
> +	hang();
> +}
> +
> +static int at91sam9x_rst_probe(struct device_d *dev)
> +{
> +	struct at91sam9x_rst *priv;
> +	struct resource *iores;
> +	struct clk *clk;
> +
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores)) {
> +		dev_err(dev, "could not get reset memory region\n");
> +		return PTR_ERR(iores);
> +	}
> +
> +	priv = xzalloc(sizeof(*priv));
> +	priv->base = IOMEM(iores->start);
> +
> +	clk = clk_get(dev, NULL);
> +	if (IS_ERR(clk)) {
> +		release_region(iores);
> +		free(priv);
> +		return PTR_ERR(clk);
> +	}
> +
> +	clk_enable(clk);
> +
> +	priv->restart.name = "at91sam9x_rst";
Or the driver name:
at91sam9x-rst?


> +	priv->restart.restart = at91sam9x_restart_soc;
> +
> +	restart_handler_register(&priv->restart);
> +
> +	return 0;
> +}
> +
> +static const __maybe_unused struct of_device_id at91sam9x_rst_dt_ids[] = {
> +	{ .compatible = "atmel,at91sam9g45-rstc", },
> +	{ .compatible = "atmel,sama5d3-rstc", },
> +	{ /* sentinel */ },
> +};
> +
> +static struct driver_d at91sam9x_rst_driver = {
> +	.name		= "at91sam9x-rst",
> +	.of_compatible	= DRV_OF_COMPAT(at91sam9x_rst_dt_ids),
> +	.probe		= at91sam9x_rst_probe,
> +};
> +device_platform_driver(at91sam9x_rst_driver);
> -- 
> 2.25.1
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
