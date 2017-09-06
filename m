Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dpZbl-0006ze-4f
 for barebox@lists.infradead.org; Wed, 06 Sep 2017 12:39:07 +0000
Date: Wed, 6 Sep 2017 14:38:43 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170906123843.h6hwlrnurgxa4d44@pengutronix.de>
References: <20170802122512.GA16652@ravnborg.org>
 <20170804131045.29427-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170804131045.29427-1-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH v2] gpio: clps711x: clps711x_gpio_dt_ids: add missing
 sentinel entry
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org, Sam Ravnborg <sam@ravnborg.org>

On Fri, Aug 04, 2017 at 04:10:45PM +0300, Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> Cc: Alexander Shiyan <shc_work@mail.ru>
> ---
> 
> Changes since v1:
> 
>   * change formatting
> 
>  drivers/gpio/gpio-clps711x.c | 1 +
>  1 file changed, 1 insertion(+)

Applied, thanks

Sascha

> 
> diff --git a/drivers/gpio/gpio-clps711x.c b/drivers/gpio/gpio-clps711x.c
> index d71c606690..769e6ca4f7 100644
> --- a/drivers/gpio/gpio-clps711x.c
> +++ b/drivers/gpio/gpio-clps711x.c
> @@ -74,6 +74,7 @@ out_err:
>  
>  static struct of_device_id __maybe_unused clps711x_gpio_dt_ids[] = {
>  	{ .compatible = "cirrus,clps711x-gpio", },
> +	{ /* sentinel */ }
>  };
>  
>  static struct driver_d clps711x_gpio_driver = {
> -- 
> 2.13.3
> 
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
