Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cQXKw-0006gT-3Z
 for barebox@lists.infradead.org; Mon, 09 Jan 2017 10:38:00 +0000
Date: Mon, 9 Jan 2017 11:37:36 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170109103736.njoclp2snlxh3wch@pengutronix.de>
References: <20161214125252.2039-1-m.grzeschik@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20161214125252.2039-1-m.grzeschik@pengutronix.de>
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
Subject: Re: [PATCH] da9053: reset FAULTLOG after read
To: Michael Grzeschik <m.grzeschik@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Dec 14, 2016 at 01:52:52PM +0100, Michael Grzeschik wrote:
> The driver has to reset the FAULTLOG register after every read by
> writing the value back. In the current case the FALUTLOG register keep
> its value over every software reset and will only reset on power-off.
> This drives the reset-source value unreliable.
> 
> Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
> ---
>  drivers/mfd/da9053.c | 4 ++++
>  1 file changed, 4 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/drivers/mfd/da9053.c b/drivers/mfd/da9053.c
> index 0de8c66..9adab8c 100644
> --- a/drivers/mfd/da9053.c
> +++ b/drivers/mfd/da9053.c
> @@ -240,6 +240,10 @@ static void da9053_detect_reset_source(struct da9053_priv *da9053)
>  	priority = of_get_reset_source_priority(da9053->dev->device_node);
>  
>  	reset_source_set_priority(type, priority);
> +
> +	ret = da9053_reg_write(da9053, DA9053_FAULTLOG_REG, val);
> +	if (ret < 0)
> +		return;
>  }
>  
>  static void __noreturn da9053_force_system_reset(struct restart_handler *rst)
> -- 
> 2.10.2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
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
