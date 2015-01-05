Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycore.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Y86g0-00062X-PS
 for barebox@lists.infradead.org; Mon, 05 Jan 2015 12:22:30 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 85C0AA0030B
 for <barebox@lists.infradead.org>; Mon,  5 Jan 2015 13:22:35 +0100 (CET)
Date: Mon, 5 Jan 2015 13:22:04 +0100
From: Jan Weitzel <J.Weitzel@phytec.de>
Message-ID: <20150105122203.GA5603@lws-weitzel2@phytec.de>
References: <20141211075948.GD30369@pengutronix.de>
 <1418291279-3610-1-git-send-email-j.weitzel@phytec.de>
MIME-Version: 1.0
In-Reply-To: <1418291279-3610-1-git-send-email-j.weitzel@phytec.de>
Content-Disposition: inline
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Reply-To: Jan Weitzel <J.Weitzel@phytec.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2] i2c: omap: fix fclk_rate for ti,omap4-i2c
To: barebox@lists.infradead.org

On Thu, Dec 11, 2014 at 10:47:59AM +0100, Jan Weitzel wrote:
> The compatible "ti,omap4-i2c" don't help to get fclk_rate. So set it acording to
> cpu compatible: "ti,am33xx" and "ti,omap4"
> 
> Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>
> ---
> v2: set i2c_data directly
>-9.0.1.i586.deb  

ping

Jan

>  drivers/i2c/busses/i2c-omap.c | 11 +++++------
>  1 file changed, 5 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/i2c/busses/i2c-omap.c b/drivers/i2c/busses/i2c-omap.c
> index 094f591..96c3c2b 100644
> --- a/drivers/i2c/busses/i2c-omap.c
> +++ b/drivers/i2c/busses/i2c-omap.c
> @@ -271,11 +271,6 @@ static struct omap_i2c_driver_data am33xx_data = {
>  	.fclk_rate =	48000,
>  };
>  
> -static struct omap_i2c_driver_data omap4_of_data = {
> -	.flags =	OMAP_I2C_FLAG_BUS_SHIFT_NONE,
> -	.fclk_rate =	0,
> -};
> -
>  static inline void omap_i2c_write_reg(struct omap_i2c_struct *i2c_omap,
>  				      int reg, u16 val)
>  {
> @@ -1011,6 +1006,11 @@ i2c_omap_probe(struct device_d *pdev)
>  	if (r)
>  		return r;
>  
> +	if (of_machine_is_compatible("ti,am33xx"))
> +		i2c_data = &am33xx_data;
> +	if (of_machine_is_compatible("ti,omap4"))
> +		i2c_data = &omap4_data;
> +
>  	i2c_omap->data = i2c_data;
>  	i2c_omap->reg_shift = (i2c_data->flags >>
>  					OMAP_I2C_FLAG_BUS_SHIFT__SHIFT) & 3;
> @@ -1140,7 +1140,6 @@ static __maybe_unused struct of_device_id omap_i2c_dt_ids[] = {
>  		.data = (unsigned long)&omap3_data,
>  	}, {
>  		.compatible = "ti,omap4-i2c",
> -		.data = (unsigned long)&omap4_of_data,
>  	}, {
>  		/* sentinel */
>  	}
> -- 
> 1.9.1
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
