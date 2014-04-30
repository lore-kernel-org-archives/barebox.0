Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WfUeA-00085B-Ut
 for barebox@lists.infradead.org; Wed, 30 Apr 2014 13:34:03 +0000
Date: Wed, 30 Apr 2014 15:33:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140430133338.GN5858@pengutronix.de>
References: <1398810264-3891-1-git-send-email-dev@lynxeye.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1398810264-3891-1-git-send-email-dev@lynxeye.de>
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
Subject: Re: [PATCH] ARM: boards: Makefile: fix whitespace
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

On Wed, Apr 30, 2014 at 12:24:24AM +0200, Lucas Stach wrote:
> From: Lucas Stach <l.stach@pengutronix.de>
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>

Applied, thanks

Sascha

> ---
>  arch/arm/boards/Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
> index 16742d91389d..bdde1a4e2d60 100644
> --- a/arch/arm/boards/Makefile
> +++ b/arch/arm/boards/Makefile
> @@ -93,7 +93,7 @@ obj-$(CONFIG_MACH_TX25)				+= karo-tx25/
>  obj-$(CONFIG_MACH_TX28)				+= karo-tx28/
>  obj-$(CONFIG_MACH_TX51)				+= karo-tx51/
>  obj-$(CONFIG_MACH_TX53)				+= karo-tx53/
> -obj-$(CONFIG_MACH_UDOO)             += udoo/
> +obj-$(CONFIG_MACH_UDOO)				+= udoo/
>  obj-$(CONFIG_MACH_USB_A9260)			+= usb-a926x/
>  obj-$(CONFIG_MACH_USB_A9263)			+= usb-a926x/
>  obj-$(CONFIG_MACH_USB_A9G20)			+= usb-a926x/
> -- 
> 1.9.0
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
