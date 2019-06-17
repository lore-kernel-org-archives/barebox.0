Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcqho-0007XZ-C3
 for barebox@lists.infradead.org; Mon, 17 Jun 2019 12:25:49 +0000
Date: Mon, 17 Jun 2019 14:25:46 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190617122546.qsz4f3yfby6dujam@pengutronix.de>
References: <20190617095125.4190-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190617095125.4190-1-m.felsch@pengutronix.de>
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
Subject: Re: [PATCH] usb: usb251xb: fix optional reset gpio request
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org, mfe@pengutronix.de

On Mon, Jun 17, 2019 at 11:51:25AM +0200, Marco Felsch wrote:
> Linux requests the reset gpio optional by using devm_gpiod_get_optional().
> We need to do this here too because the reset can be a global shared
> reset line e.g. board por. We haven't such a helper so just drop the
> final else path.
> 
> Fixes: 937fa50d9c ("usb: Port Microchip USB251x USB hub driver from Linux")
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  drivers/usb/misc/usb251xb.c | 6 +-----
>  1 file changed, 1 insertion(+), 5 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/usb/misc/usb251xb.c b/drivers/usb/misc/usb251xb.c
> index 97f55efa82..006ee3b426 100644
> --- a/drivers/usb/misc/usb251xb.c
> +++ b/drivers/usb/misc/usb251xb.c
> @@ -339,7 +339,7 @@ static int usb251xb_get_ofdata(struct usb251xb *hub,
>  {
>  	struct device_d *dev = hub->dev;
>  	struct device_node *np = dev->device_node;
> -	int len, err, i;
> +	int len, i;
>  	u32 port, property_u32 = 0;
>  	const u32 *cproperty_u32;
>  	const char *cproperty_char;
> @@ -374,10 +374,6 @@ static int usb251xb_get_ofdata(struct usb251xb *hub,
>  			return ret;
>  	} else if (hub->gpio_reset == -EPROBE_DEFER) {
>  		return -EPROBE_DEFER;
> -	} else {
> -		err = hub->gpio_reset;
> -		dev_err(dev, "unable to request GPIO reset pin (%d)\n", err);
> -		return err;
>  	}
>  
>  	if (of_property_read_u16_array(np, "vendor-id", &hub->vendor_id, 1))
> -- 
> 2.20.1
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
