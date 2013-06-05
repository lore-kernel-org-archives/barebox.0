Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UkFWO-0006w3-8w
 for barebox@lists.infradead.org; Wed, 05 Jun 2013 15:21:09 +0000
Message-ID: <1370445529.4279.11.camel@weser.hi.pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed, 05 Jun 2013 17:18:49 +0200
In-Reply-To: <1369121895-11282-2-git-send-email-s.hauer@pengutronix.de>
References: <1369121895-11282-1-git-send-email-s.hauer@pengutronix.de>
 <1369121895-11282-2-git-send-email-s.hauer@pengutronix.de>
Mime-Version: 1.0
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
Subject: Re: [PATCH 1/5] pinctrl: imx-iomux-v3: only register pinctrl when
 device node is available
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

This commit isn't included in the 2013.06 release.

I hereby nominate it as a candidate for the v2013.06 stable branch.

Am Dienstag, den 21.05.2013, 09:38 +0200 schrieb Sascha Hauer:
> The pinctrl support is devicetree only, so only register it
> when we actually have a devicetree. Otherwise we crash boards
> using the iomux-v3 from platform code in pinctrl_register().
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/pinctrl/imx-iomux-v3.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/pinctrl/imx-iomux-v3.c b/drivers/pinctrl/imx-iomux-v3.c
> index 3ff3c15..c867a23 100644
> --- a/drivers/pinctrl/imx-iomux-v3.c
> +++ b/drivers/pinctrl/imx-iomux-v3.c
> @@ -177,7 +177,7 @@ static int imx_iomux_v3_probe(struct device_d *dev)
>  	iomuxv3_base = dev_request_mem_region(dev, 0);
>  	iomuxv3_dev = dev;
>  
> -	if (IS_ENABLED(CONFIG_PINCTRL))
> +	if (IS_ENABLED(CONFIG_PINCTRL) && dev->device_node)
>  		ret = imx_pinctrl_dt(dev, iomuxv3_base);
>  
>  	return ret;

-- 
Pengutronix e.K.                           | Lucas Stach                 |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-5076 |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
