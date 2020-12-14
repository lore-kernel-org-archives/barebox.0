Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kos24-0003th-EC
 for barebox@lists.infradead.org; Mon, 14 Dec 2020 17:53:13 +0000
References: <20200722080956.17454-1-a.fatoum@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <6f18c5e7-4826-276e-6860-9bd06bbbd908@pengutronix.de>
Date: Mon, 14 Dec 2020 18:53:08 +0100
MIME-Version: 1.0
In-Reply-To: <20200722080956.17454-1-a.fatoum@pengutronix.de>
Content-Language: en-US
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
Subject: Re: [PATCH 1/2] phy: stm32-usphyc: release resources to properly
 support EPROBE_DEFER
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>, Michael Grzeschik <mgr@pengutronix.de>

Hello Sascha,

On 22.07.20 10:09, Ahmad Fatoum wrote:
> Driver failed to release resources on failed probe so far, leading to
> deferred probe failing with -EBUSY. Fix this.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

As we still have EPROBE_DEFER, it would be nice if this could
be merged.

Cheers,
Ahmad

> ---
>  drivers/phy/phy-stm32-usbphyc.c | 9 +++++++--
>  1 file changed, 7 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/phy/phy-stm32-usbphyc.c b/drivers/phy/phy-stm32-usbphyc.c
> index 093842fe1460..d9eaa8a7544a 100644
> --- a/drivers/phy/phy-stm32-usbphyc.c
> +++ b/drivers/phy/phy-stm32-usbphyc.c
> @@ -328,13 +328,13 @@ static int stm32_usbphyc_probe(struct device_d *dev)
>  	if (IS_ERR(usbphyc->clk)) {
>  		ret = PTR_ERR(usbphyc->clk);
>  		dev_err(dev, "clk get failed: %d\n", ret);
> -		return ret;
> +		goto release_region;
>  	}
>  
>  	ret = clk_enable(usbphyc->clk);
>  	if (ret) {
>  		dev_err(dev, "clk enable failed: %d\n", ret);
> -		return ret;
> +		goto release_region;
>  	}
>  
>  	device_reset_us(dev, 2);
> @@ -405,6 +405,11 @@ static int stm32_usbphyc_probe(struct device_d *dev)
>  
>  clk_disable:
>  	clk_disable(usbphyc->clk);
> +release_region:
> +	release_region(iores);
> +
> +	free(usbphyc->phys);
> +	free(usbphyc);
>  
>  	return ret;
>  }
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
