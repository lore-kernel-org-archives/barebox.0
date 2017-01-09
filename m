Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cQXLV-00072O-Ob
 for barebox@lists.infradead.org; Mon, 09 Jan 2017 10:38:36 +0000
Date: Mon, 9 Jan 2017 11:38:12 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170109103812.wqh7uaai4dbqzrnd@pengutronix.de>
References: <20161214125227.30923-1-m.grzeschik@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20161214125227.30923-1-m.grzeschik@pengutronix.de>
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
Subject: Re: [PATCH] da9053: add dt_ids to be probed by devicetree
To: Michael Grzeschik <m.grzeschik@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Dec 14, 2016 at 01:52:27PM +0100, Michael Grzeschik wrote:
> We add the da9052 compatible to get this driver probed by devicetree
> users.
> 
> Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
> ---
>  drivers/mfd/da9053.c | 9 +++++++++
>  1 file changed, 9 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/drivers/mfd/da9053.c b/drivers/mfd/da9053.c
> index 250c055..0de8c66 100644
> --- a/drivers/mfd/da9053.c
> +++ b/drivers/mfd/da9053.c
> @@ -293,9 +293,18 @@ static int da9053_probe(struct device_d *dev)
>  	return 0;
>  }
>  
> +static __maybe_unused struct of_device_id da9053_dt_ids[] = {
> +	{
> +		.compatible = "dlg,da9052",
> +	}, {
> +		/* sentinel */
> +	}
> +};
> +
>  static struct driver_d da9053_driver = {
>  	.name  = DRIVERNAME,
>  	.probe = da9053_probe,
> +	.of_compatible = DRV_OF_COMPAT(da9053_dt_ids),
>  };
>  
>  static int da9053_init(void)
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
