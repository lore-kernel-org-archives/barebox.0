Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l9m3I-0006gf-Fi
 for barebox@lists.infradead.org; Wed, 10 Feb 2021 09:44:53 +0000
Date: Wed, 10 Feb 2021 10:44:47 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20210210094447.GU19583@pengutronix.de>
References: <20210208163458.29143-1-jmaselbas@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210208163458.29143-1-jmaselbas@kalray.eu>
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
Subject: Re: [PATCH 1/3] usb: gadget: dfu: Use func_to_dfu
To: Jules Maselbas <jmaselbas@kalray.eu>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>

On Mon, Feb 08, 2021 at 05:34:56PM +0100, Jules Maselbas wrote:
> Replace the uses of container_of with func_to_dfu when available.
> 
> Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
> ---
>  drivers/usb/gadget/dfu.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/usb/gadget/dfu.c b/drivers/usb/gadget/dfu.c
> index 7e23fa315..9d6a9d252 100644
> --- a/drivers/usb/gadget/dfu.c
> +++ b/drivers/usb/gadget/dfu.c
> @@ -181,7 +181,7 @@ dfu_bind(struct usb_configuration *c, struct usb_function *f)
>  	struct usb_descriptor_header **header;
>  	struct usb_interface_descriptor *desc;
>  	struct file_list_entry *fentry;
> -	struct f_dfu *dfu = container_of(f, struct f_dfu, func);
> +	struct f_dfu *dfu = func_to_dfu(f);
>  	int i;
>  	int			status;
>  	struct usb_string	*us;
> @@ -863,7 +863,7 @@ out:
>  
>  static void dfu_free_func(struct usb_function *f)
>  {
> -	struct f_dfu *dfu = container_of(f, struct f_dfu, func);
> +	struct f_dfu *dfu = func_to_dfu(f);
>  
>  	free(dfu);
>  }
> -- 
> 2.17.1
> 
> 
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
