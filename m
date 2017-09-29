Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dxuzm-000584-Ey
 for barebox@lists.infradead.org; Fri, 29 Sep 2017 13:06:24 +0000
Date: Fri, 29 Sep 2017 15:06:00 +0200
From: Oleksij Rempel <ore@pengutronix.de>
Message-ID: <20170929130600.2k7xiezcog5kqaqd@pengutronix.de>
References: <20170927091245.9476-1-s.hauer@pengutronix.de>
 <20170927091245.9476-4-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170927091245.9476-4-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 3/4] usbgadget: only set to peripheral mode when error
 checking is done
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Wed, Sep 27, 2017 at 11:12:44AM +0200, Sascha Hauer wrote:
> Only begin to modify the hardware when the obious errors have been
> checked.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/usb/gadget/autostart.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/usb/gadget/autostart.c b/drivers/usb/gadget/autostart.c
> index a27be899c3..2ca979057e 100644
> --- a/drivers/usb/gadget/autostart.c
> +++ b/drivers/usb/gadget/autostart.c
> @@ -39,8 +39,6 @@ static int usbgadget_autostart(void)
>  	if (!autostart)
>  		return 0;
>  
> -	setenv("otg.mode", "peripheral");
> -
>  	opts = xzalloc(sizeof(*opts));
>  	opts->release = usb_multi_opts_release;
>  
> @@ -60,6 +58,8 @@ static int usbgadget_autostart(void)
>  		return 0;
>  	}
>  
> +	setenv("otg.mode", "peripheral");
> +
>  	ret = usb_multi_register(opts);
>  	if (ret)
>  		usb_multi_opts_release(opts);
> -- 
> 2.11.0
> 
> 

Reviewed-by: Oleksij Rempel <o.rempel@pengutronix.de>

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
