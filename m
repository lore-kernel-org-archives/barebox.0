Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Xu1kI-0008GZ-F2
 for barebox@lists.infradead.org; Thu, 27 Nov 2014 16:16:43 +0000
Date: Thu, 27 Nov 2014 17:13:09 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20141127161309.GW30369@pengutronix.de>
References: <1417103660-32348-1-git-send-email-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1417103660-32348-1-git-send-email-l.stach@pengutronix.de>
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
Subject: Re: [PATCH 1/4] usb: musb: only build musb_barebox if host is enabled
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Nov 27, 2014 at 04:54:17PM +0100, Lucas Stach wrote:
> musb_barebox.c contains code that is only ever used if CONFIG_MUSB_HOST
> is set. Building it uncoditionally breaks the build depending on the link
> order.
> 
> Fixes:
> drivers/usb/musb/musb_barebox.c:64: undefined reference to `musb_urb_enqueue'
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>

Applied all, thanks

Sascha

> ---
>  drivers/usb/musb/Makefile | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/usb/musb/Makefile b/drivers/usb/musb/Makefile
> index 364a43fecb62..9f9c21030047 100644
> --- a/drivers/usb/musb/Makefile
> +++ b/drivers/usb/musb/Makefile
> @@ -2,9 +2,9 @@
>  # for USB OTG silicon based on Mentor Graphics INVENTRA designs
>  #
>  
> -obj-y += musb_core.o musb_barebox.o
> +obj-y += musb_core.o
>  
> -obj-$(CONFIG_USB_MUSB_HOST) += musb_host.o
> +obj-$(CONFIG_USB_MUSB_HOST) += musb_host.o musb_barebox.o
>  obj-$(CONFIG_USB_MUSB_GADGET) += musb_gadget.o musb_gadget_ep0.o
>  
>  obj-$(CONFIG_USB_MUSB_DSPS)	+= musb_dsps.o
> -- 
> 2.1.3
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
