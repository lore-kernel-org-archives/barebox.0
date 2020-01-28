Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwMVL-0003Bm-UK
 for barebox@lists.infradead.org; Tue, 28 Jan 2020 08:45:53 +0000
Date: Tue, 28 Jan 2020 09:45:50 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200128084550.uxe7hn2qlvcik5tz@pengutronix.de>
References: <20200127155013.4388-1-m.grzeschik@pengutronix.de>
 <20200127155013.4388-2-m.grzeschik@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200127155013.4388-2-m.grzeschik@pengutronix.de>
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
Subject: Re: [PATCH 2/4] regulator: pfuze: add support to other architectures
To: Michael Grzeschik <m.grzeschik@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Michael,

On Mon, Jan 27, 2020 at 04:50:11PM +0100, Michael Grzeschik wrote:
> Currently the pfuze driver is build dependent to ARCH_IMX6. To make it
> possible to work with ARCH_IMX8 we move the imx6_poweroff call to an own
> poweroff handler.
> 
> Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
> ---
>  arch/arm/mach-imx/imx6.c  | 8 ++++++++
>  drivers/regulator/Kconfig | 2 +-
>  drivers/regulator/pfuze.c | 2 --
>  3 files changed, 9 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm/mach-imx/imx6.c b/arch/arm/mach-imx/imx6.c
> index 41e0066add..8f1638c1ea 100644
> --- a/arch/arm/mach-imx/imx6.c
> +++ b/arch/arm/mach-imx/imx6.c
> @@ -401,3 +401,11 @@ void __noreturn imx6_pm_stby_poweroff(void)
>  
>  	while(1);
>  }
> +
> +static int imx6_init(void)
> +{
> +	poweroff_handler_register_fn(imx6_pm_stby_poweroff);
> +
> +	return 0;
> +}

imx6_pm_stby_poweroff() only works when a pfuze is present and is
configured correctly. Calling this on every i.MX board is not nice.

What you can do is to call pfuze_register_init_callback() from here.
You'll have to add a static inline wrapper for this in case pfuze
support is not compiled in.

I wonder how this compiles as my version of this file already has a
function named imx6_init(). Using this is preferred btw as it's already
made sure that it will run only on i.MX6.

> +coredevice_initcall(imx6_init);

Note that this doesn't necessarily means that we are running an i.MX6.
It could be whatever else is compiled in.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
