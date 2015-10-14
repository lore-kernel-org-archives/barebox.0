Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZmMBg-0006ft-7N
 for barebox@lists.infradead.org; Wed, 14 Oct 2015 13:33:48 +0000
Date: Wed, 14 Oct 2015 15:33:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151014133324.GR7858@pengutronix.de>
References: <1444812807-2331-1-git-send-email-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1444812807-2331-1-git-send-email-l.stach@pengutronix.de>
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
Subject: Re: [PATCH 1/3] input: usb-kbd: depend on CONSOLE_FULL
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Oct 14, 2015 at 10:53:25AM +0200, Lucas Stach wrote:
> Fixes:
> In function `usb_kbd_probe':
> (usb_kbd_probe): undefined reference to `console_set_active'
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  drivers/input/Kconfig | 1 +
>  1 file changed, 1 insertion(+)

Applied, thanks

Sascha

> 
> diff --git a/drivers/input/Kconfig b/drivers/input/Kconfig
> index 24a5d10f89bc..336b9f581406 100644
> --- a/drivers/input/Kconfig
> +++ b/drivers/input/Kconfig
> @@ -49,6 +49,7 @@ config KEYBOARD_TWL6030
>  config KEYBOARD_USB
>  	bool "USB keyboard"
>  	depends on USB_HOST
> +	depends on CONSOLE_FULL
>  	select POLLER
>  	help
>  	  This driver implements support for usb keyboard.
> -- 
> 2.6.1
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
