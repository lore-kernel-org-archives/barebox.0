Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dxuz2-0004fN-W6
 for barebox@lists.infradead.org; Fri, 29 Sep 2017 13:05:45 +0000
Date: Fri, 29 Sep 2017 15:05:14 +0200
From: Oleksij Rempel <ore@pengutronix.de>
Message-ID: <20170929130514.yh6ztgukyl3ws7je@pengutronix.de>
References: <20170927091245.9476-1-s.hauer@pengutronix.de>
 <20170927091245.9476-3-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170927091245.9476-3-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 2/4] usbgadget: do not register when no functions present
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Wed, Sep 27, 2017 at 11:12:43AM +0200, Sascha Hauer wrote:
> registering a multifunction device makes only sense when there's
> at least one function configured. Just return otherwise.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/usb/gadget/autostart.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/usb/gadget/autostart.c b/drivers/usb/gadget/autostart.c
> index 3fa43137fa..a27be899c3 100644
> --- a/drivers/usb/gadget/autostart.c
> +++ b/drivers/usb/gadget/autostart.c
> @@ -55,6 +55,10 @@ static int usbgadget_autostart(void)
>  
>  	opts->create_acm = acm;
>  
> +	if (!opts->fastboot_opts.files && !opts->create_acm) {
> +		pr_warn("No functions to register\n");
> +		return 0;
> +	}
>  
>  	ret = usb_multi_register(opts);
>  	if (ret)
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
