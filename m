Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SxIyG-0007Ds-5m
 for barebox@lists.infradead.org; Fri, 03 Aug 2012 14:35:21 +0000
Date: Fri, 3 Aug 2012 16:35:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120803143514.GA1451@pengutronix.de>
References: <1343650188-17578-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1343650188-17578-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/1] gadget: fix Kconfig: move config under if
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Mon, Jul 30, 2012 at 02:09:48PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> so the submenu display correctly
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  drivers/usb/gadget/Kconfig |    4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/usb/gadget/Kconfig b/drivers/usb/gadget/Kconfig
> index 465121c..6935408 100644
> --- a/drivers/usb/gadget/Kconfig
> +++ b/drivers/usb/gadget/Kconfig
> @@ -2,12 +2,12 @@ menuconfig USB_GADGET
>  	depends on USB_HAVE_GADGET_DRIVER
>  	bool "USB gadget support            "
>  
> +if USB_GADGET
> +
>  config USB_HAVE_GADGET_DRIVER
>  	bool
>  	default y if ARCH_IMX || ARCH_MXS || ARCH_AT91 || ARCH_PXA
>  
> -if USB_GADGET
> -

USB_GADGET depends on USB_HAVE_GADGET_DRIVER. If you move
USB_HAVE_GADGET_DRIVER inside 'if USB_GADGET' the menu completely
disappears.

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
