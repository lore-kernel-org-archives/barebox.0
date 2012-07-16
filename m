Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SqskV-00064F-Ix
 for barebox@lists.infradead.org; Mon, 16 Jul 2012 21:22:36 +0000
Date: Mon, 16 Jul 2012 23:22:33 +0200
From: Sascha Hauer <sha@pengutronix.de>
Message-ID: <20120716212233.GU30009@pengutronix.de>
References: <1342426531-14831-1-git-send-email-mkl@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1342426531-14831-1-git-send-email-mkl@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2] usb: gadget: enable for MXS
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Jul 16, 2012 at 10:15:31AM +0200, Marc Kleine-Budde wrote:
> Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
> ---
> Changes since v1:
> - enable Arc OTG Driver, too (tnx Sascha)

Applied, thanks

Sascha

> 
> Marc
> 
>  drivers/usb/gadget/Kconfig |    4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/usb/gadget/Kconfig b/drivers/usb/gadget/Kconfig
> index f7f2697..465121c 100644
> --- a/drivers/usb/gadget/Kconfig
> +++ b/drivers/usb/gadget/Kconfig
> @@ -4,7 +4,7 @@ menuconfig USB_GADGET
>  
>  config USB_HAVE_GADGET_DRIVER
>  	bool
> -	default y if ARCH_IMX || ARCH_AT91 || ARCH_PXA
> +	default y if ARCH_IMX || ARCH_MXS || ARCH_AT91 || ARCH_PXA
>  
>  if USB_GADGET
>  
> @@ -17,7 +17,7 @@ choice
>  config USB_GADGET_DRIVER_ARC
>  	bool
>  	prompt "Arc OTG device core"
> -	depends on ARCH_IMX
> +	depends on ARCH_IMX || ARCH_MXS
>  	select USB_GADGET_DUALSPEED
>  	select POLLER
>  
> -- 
> 1.7.10.4
> 
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
