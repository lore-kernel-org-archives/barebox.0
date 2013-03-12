Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UFTCa-0007it-05
 for barebox@lists.infradead.org; Tue, 12 Mar 2013 17:41:29 +0000
Date: Tue, 12 Mar 2013 18:41:24 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130312174124.GR1906@pengutronix.de>
References: <1363033995-2895-1-git-send-email-eric@eukrea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1363033995-2895-1-git-send-email-eric@eukrea.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] usb/gadget/Kconfig: fix menu
To: Eric =?iso-8859-15?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

On Mon, Mar 11, 2013 at 09:33:15PM +0100, Eric B=E9nard wrote:
> by reordering the entry, USB gadget support is now a menu and the
> USB gadget choices are under this menu and not directly in the
> driver menu.
> =

> Signed-off-by: Eric B=E9nard <eric@eukrea.com>

Applied, thanks

Sascha

> ---
>  drivers/usb/gadget/Kconfig | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> =

> diff --git a/drivers/usb/gadget/Kconfig b/drivers/usb/gadget/Kconfig
> index 5f65cea..97a7d21 100644
> --- a/drivers/usb/gadget/Kconfig
> +++ b/drivers/usb/gadget/Kconfig
> @@ -1,11 +1,11 @@
> -menuconfig USB_GADGET
> -	depends on USB_HAVE_GADGET_DRIVER
> -	bool "USB gadget support"
> -
>  config USB_HAVE_GADGET_DRIVER
>  	bool
>  	default y if ARCH_IMX || ARCH_MXS || ARCH_AT91 || ARCH_PXA
>  =

> +menuconfig USB_GADGET
> +	depends on USB_HAVE_GADGET_DRIVER
> +	bool "USB gadget support"
> +
>  if USB_GADGET
>  =

>  config USB_GADGET_DUALSPEED
> -- =

> 1.7.11.7
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
