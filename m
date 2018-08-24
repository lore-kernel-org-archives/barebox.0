Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ftEw8-0002ya-IB
 for barebox@lists.infradead.org; Fri, 24 Aug 2018 16:27:50 +0000
Date: Fri, 24 Aug 2018 18:27:33 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20180824162733.GA16451@ravnborg.org>
References: <20180824151739.8883-1-m.grzeschik@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180824151739.8883-1-m.grzeschik@pengutronix.de>
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
Subject: Re: [PATCH] imx{5,6}: reset otg port after usb-serial boot
To: Michael Grzeschik <m.grzeschik@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Michael.

On Fri, Aug 24, 2018 at 05:17:39PM +0200, Michael Grzeschik wrote:
> The ROM loader leaves the otg port in peripheral mode which confuses the
> host controller. After the handover to barebox we ensure to bring in the
> port into the otg state by resetting it.
> 
> Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
> ---
> This was tested with mx53 and mx6 for now. I suppose we should
> adopt this to the mx2 and mx3 models.
> 
>  arch/arm/mach-imx/imx50.c | 3 +++
>  arch/arm/mach-imx/imx51.c | 3 +++
>  arch/arm/mach-imx/imx53.c | 3 +++
>  arch/arm/mach-imx/imx6.c  | 3 +++
>  4 files changed, 12 insertions(+)
> 
> diff --git a/arch/arm/mach-imx/imx50.c b/arch/arm/mach-imx/imx50.c
> index f7cbc9d4ba..ac326cf3c0 100644
> --- a/arch/arm/mach-imx/imx50.c
> +++ b/arch/arm/mach-imx/imx50.c
> @@ -92,6 +92,9 @@ void imx50_init_lowlevel_early(unsigned int cpufreq_mhz)
>  
>  	imx5_init_lowlevel();
>  
> +	/* reset otg: in case we started via usb-serial */
> +	writel((readl(0x53F80140) | 2), 0x53F80140);
> +

This looks like constants you just pulled out of the air.
Can you hide it behind a descriptive name?


>  	/*
>  	 * AIPS setup - Only setup MPROTx registers.
>  	 * The PACR default values are good.
> diff --git a/arch/arm/mach-imx/imx51.c b/arch/arm/mach-imx/imx51.c
> index ec8cdd868b..91f6df1cfa 100644
> --- a/arch/arm/mach-imx/imx51.c
> +++ b/arch/arm/mach-imx/imx51.c
> @@ -142,6 +142,9 @@ void imx51_init_lowlevel(unsigned int cpufreq_mhz)
>  
>  	imx5_init_lowlevel();
>  
> +	/* reset otg: in case we started via usb-serial */
> +	writel((readl(0x73F80140) | 2), 0x73F80140);
Likewise.

> +
>  	/* disable write combine for TO 2 and lower revs */
>  	if (rev < IMX_CHIP_REV_3_0) {
>  		__asm__ __volatile__("mrc 15, 1, %0, c9, c0, 1":"=r"(r));
> diff --git a/arch/arm/mach-imx/imx53.c b/arch/arm/mach-imx/imx53.c
> index b22929f749..99e942ed52 100644
> --- a/arch/arm/mach-imx/imx53.c
> +++ b/arch/arm/mach-imx/imx53.c
> @@ -90,6 +90,9 @@ void imx53_init_lowlevel_early(unsigned int cpufreq_mhz)
>  
>  	imx5_init_lowlevel();
>  
> +	/* reset otg: in case we started via usb-serial */
> +	writel((readl(0x53F80140) | 2), 0x53F80140);
And then you did not have to hardcode the same value here again.

> +
>  	/*
>  	 * AIPS setup - Only setup MPROTx registers.
>  	 * The PACR default values are good.
> diff --git a/arch/arm/mach-imx/imx6.c b/arch/arm/mach-imx/imx6.c
> index 3d95c9e374..8af051c34a 100644
> --- a/arch/arm/mach-imx/imx6.c
> +++ b/arch/arm/mach-imx/imx6.c
> @@ -193,6 +193,9 @@ int imx6_init(void)
>  
>  	imx6_init_lowlevel();
>  
> +	/* reset otg: in case we started via usb-serial */
> +	writel((readl(0x21840140) | 2), 0x21840140);
Likewise.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
