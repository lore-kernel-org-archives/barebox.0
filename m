Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TKo1H-0003d4-Nq
 for barebox@lists.infradead.org; Sun, 07 Oct 2012 10:23:37 +0000
Date: Sun, 7 Oct 2012 12:23:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121007102333.GD1322@pengutronix.de>
References: <1349476393-25520-1-git-send-email-vicencb@gmail.com>
 <1349476393-25520-7-git-send-email-vicencb@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1349476393-25520-7-git-send-email-vicencb@gmail.com>
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
Subject: Re: [PATCH 06/11] omap4: add support for booting an omap4 from usb.
To: vj <vicencb@gmail.com>
Cc: barebox@lists.infradead.org

On Sat, Oct 06, 2012 at 12:33:08AM +0200, vj wrote:
> 
> Signed-off-by: vj <vicencb@gmail.com>

[...]

>  
>  /*
>   *  The following several lines are taken from U-Boot to support
> @@ -457,6 +458,21 @@ static int watchdog_init(void)
>  }
>  late_initcall(watchdog_init);
>  
> +#ifdef CONFIG_OMAP4_USBBOOT
> +static int omap4_usbboot_init(void)
> +{
> +	omap4_usbboot_open();
> +	omap4_usbboot_puts("USB communications initialized\n");
> +	return 0;
> +}
> +core_initcall(omap4_usbboot_init);
> +#else

I remember a hunk in a previous patch which detects whether we actually
are booting from USB. We could protect the code above with a
if (booting_from_usb) instead of deciding it at compile time.


> +/*
> + * omap4 usbboot interfaces with the omap4 ROM to reuse the USB port
> + * used for booting.
> + * The ROM code uses interrupts for the transfers, so do not modify the
> + * interrupt vectors.
> + */
>  static int omap_vector_init(void)
>  {

same here.

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
