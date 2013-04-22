Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UUK4b-0005qH-MH
 for barebox@lists.infradead.org; Mon, 22 Apr 2013 16:58:38 +0000
Date: Mon, 22 Apr 2013 18:58:35 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130422165835.GL32299@pengutronix.de>
References: <1366431532-29121-1-git-send-email-shc_work@mail.ru>
 <1366431532-29121-5-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1366431532-29121-5-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH 4/5] GPIO: i.MX: Cleanup driver code
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Sat, Apr 20, 2013 at 08:18:51AM +0400, Alexander Shiyan wrote:
> This patch provides only cleanup for i.MX GPIO driver.
> Indentation, reduced licence text etc.
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> ---
>  drivers/gpio/gpio-imx.c | 34 ++++++++++++----------------------
>  1 file changed, 12 insertions(+), 22 deletions(-)
> 
> diff --git a/drivers/gpio/gpio-imx.c b/drivers/gpio/gpio-imx.c
> index 9dcabfc..f56346b 100644
> --- a/drivers/gpio/gpio-imx.c
> +++ b/drivers/gpio/gpio-imx.c
> @@ -1,23 +1,14 @@
>  /*
> - *  arch/arm/mach-imx/gpio.c
> + *  GPIO driver for i.MX machines

This hunk is good.

>   *
>   *  author: Sascha Hauer
>   *  Created: april 20th, 2004
>   *  Copyright: Synertronixx GmbH
>   *
> - *  Common code for i.MX machines
> - *

Ok aswell.

>  static int imx_gpio_add(void)
>  {
> -	platform_driver_register(&imx_gpio_driver);
> -	return 0;
> +	return platform_driver_register(&imx_gpio_driver);

Also fine. Drop the remaining hunks please.

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
