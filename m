Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dpacD-0001Z8-Pf
 for barebox@lists.infradead.org; Wed, 06 Sep 2017 13:43:43 +0000
Date: Wed, 6 Sep 2017 15:43:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170906134315.i4udwav23puir6py@pengutronix.de>
References: <20170726155014.20014-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170726155014.20014-1-o.rempel@pengutronix.de>
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
Subject: Re: [PATCH v1] usb: gadget: autostart: properly release f_multi_opts
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Jul 26, 2017 at 05:50:14PM +0200, Oleksij Rempel wrote:
> the same as for usb gadget autostarter.
> 
> |commit 2b9bcff79a02f770fa730e2689ba35cc03c0da7d
> |Author: Sascha Hauer <s.hauer@pengutronix.de>
> |Date:   Fri Jan 20 10:03:45 2017 +0100
> |
> |    usb: gadget: properly release f_multi_opts
> |
> |    The usbgadget commands uses statically allocated f_multi_opts and passes
> |    this to usb_multi_register(). These f_multi_opts are of course no
> |    longer valid when we leave the usbgadget command. Luckily we do not use
> |    the data after we left the usbgadget command, so this never has been a
> |    problem. However, f_multi_opts has some allocated members which we can
> |    not free anymore on gadget unregistration because we no longer have the
> |    pointer to them.
> |
> |    Fix this by adding a release function to struct f_multi_opts. This way
> |    we can allocate all memory dynamically and properly free it when not
> |    used anymore.
> |
> |    Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  drivers/usb/gadget/autostart.c | 17 +++++++++++++----
>  1 file changed, 13 insertions(+), 4 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/usb/gadget/autostart.c b/drivers/usb/gadget/autostart.c
> index 4ad1dd6be1..465d8fd380 100644
> --- a/drivers/usb/gadget/autostart.c
> +++ b/drivers/usb/gadget/autostart.c
> @@ -31,19 +31,28 @@ static char *fastboot_function;
>  
>  static int usbgadget_autostart(void)
>  {
> -	struct f_multi_opts opts = {};
> +	struct f_multi_opts *opts;
> +	int ret;
>  
>  	if (!autostart)
>  		return 0;
>  
>  	setenv("otg.mode", "peripheral");
>  
> +	opts = xzalloc(sizeof(*opts));
> +	opts->release = usb_multi_opts_release;
> +
>  	if (fastboot_function)
> -		opts.fastboot_opts.files = file_list_parse(fastboot_function);
> +		opts->fastboot_opts.files = file_list_parse(fastboot_function);
> +
> +	opts->create_acm = acm;
> +
>  
> -	opts.create_acm = acm;
> +	ret = usb_multi_register(opts);
> +	if (ret)
> +		usb_multi_opts_release(opts);
>  
> -	return usb_multi_register(&opts);
> +	return ret;
>  }
>  postenvironment_initcall(usbgadget_autostart);
>  
> -- 
> 2.11.0
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
