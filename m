Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XyyfT-0001un-0t
 for barebox@lists.infradead.org; Thu, 11 Dec 2014 08:00:11 +0000
Date: Thu, 11 Dec 2014 08:59:48 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20141211075948.GD30369@pengutronix.de>
References: <1418194168-11826-1-git-send-email-j.weitzel@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1418194168-11826-1-git-send-email-j.weitzel@phytec.de>
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
Subject: Re: [PATCH] i2c: omap: fix fclk_rate for ti,omap4-i2c
To: Jan Weitzel <j.weitzel@phytec.de>
Cc: barebox@lists.infradead.org

On Wed, Dec 10, 2014 at 07:49:28AM +0100, Jan Weitzel wrote:
> "ti,am33xx" and "ti,omap4" use "ti,omap4-i2c" with different fclk_rate.
> By now set it according to the used cpu compatible.
> 
> Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>
> ---
>  drivers/i2c/busses/i2c-omap.c | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/i2c/busses/i2c-omap.c b/drivers/i2c/busses/i2c-omap.c
> index 094f591..d2254d4 100644
> --- a/drivers/i2c/busses/i2c-omap.c
> +++ b/drivers/i2c/busses/i2c-omap.c
> @@ -1015,6 +1015,13 @@ i2c_omap_probe(struct device_d *pdev)
>  	i2c_omap->reg_shift = (i2c_data->flags >>
>  					OMAP_I2C_FLAG_BUS_SHIFT__SHIFT) & 3;
>  
> +	if (!i2c_data->fclk_rate) {
> +		if (of_machine_is_compatible("ti,am33xx"))
> +			i2c_data->fclk_rate = am33xx_data.fclk_rate;
> +		if (of_machine_is_compatible("ti,omap4"))
> +			i2c_data->fclk_rate = omap4_data.fclk_rate;
> +	}

Can't we just do a:

	if (of_machine_is_compatible("ti,am33xx"))
		i2c_omap->data = &am33xx_data;
	if (of_machine_is_compatible("ti,omap4"))
		i2c_omap->data = &omap4_data;

Instead?

With that we could also remove the nonworking omap4_of_data.

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
