Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XyyIe-0003wA-8n
 for barebox@lists.infradead.org; Thu, 11 Dec 2014 07:36:36 +0000
Date: Thu, 11 Dec 2014 08:36:14 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20141211073614.GB30369@pengutronix.de>
References: <1418123146-13235-1-git-send-email-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1418123146-13235-1-git-send-email-l.stach@pengutronix.de>
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
Subject: Re: [PATCH 1/5] usb: gadget: fastboot: allow to build without BOOTM
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Dec 09, 2014 at 12:05:42PM +0100, Lucas Stach wrote:
> This will disable the capability to boot an uploaded image directly,
> but keeps other fastboot functionality. This seems like a valid config.
> 
> Fixes:
> In function `do_bootm_on_complete': undefined reference to `bootm_boot'
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  drivers/usb/gadget/f_fastboot.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/usb/gadget/f_fastboot.c b/drivers/usb/gadget/f_fastboot.c
> index 92a1a218c643..76879db1f15d 100644
> --- a/drivers/usb/gadget/f_fastboot.c
> +++ b/drivers/usb/gadget/f_fastboot.c
> @@ -653,7 +653,8 @@ static void do_bootm_on_complete(struct usb_ep *ep, struct usb_request *req)
>  		pr_err("Booting failed\n");
>  }
>  
> -static void cb_boot(struct usb_ep *ep, struct usb_request *req, const char *opt)
> +static void __maybe_unused cb_boot(struct usb_ep *ep, struct usb_request *req,
> +				   const char *opt)
>  {
>  	struct f_fastboot *f_fb = req->context;
>  
> @@ -857,9 +858,11 @@ static const struct cmd_dispatch_info cmd_dispatch_info[] = {
>  	}, {
>  		.cmd = "download:",
>  		.cb = cb_download,
> +#if defined(CONFIG_BOOTM)
>  	}, {
>  		.cmd = "boot",
>  		.cb = cb_boot,
> +#endif

Instead of the #ifdef can we do a:

	if (!IS_ENABLED(CONFIG_BOOTM)) {
		fastboot_tx_print(f_fb, "FAILCommand not supported");
		return;
	}

in cb_boot?

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
