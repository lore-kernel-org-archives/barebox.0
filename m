Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QiTUS-0007kb-IB
	for barebox@lists.infradead.org; Sun, 17 Jul 2011 15:42:45 +0000
Date: Sun, 17 Jul 2011 17:42:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110717154241.GR6069@pengutronix.de>
References: <1310821471-16907-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1310821471-16907-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] serial_ns16550: remove legacy code copied from U-Boot v1
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Sat, Jul 16, 2011 at 05:04:31PM +0400, Antony Pavlov wrote:
> ---
>  drivers/serial/serial_ns16550.c |   19 -------------------
>  drivers/serial/serial_ns16550.h |    4 ----
>  2 files changed, 0 insertions(+), 23 deletions(-)

Applied to master.

Sascha

> 
> diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
> index ab172e7..9a4b4dc 100644
> --- a/drivers/serial/serial_ns16550.c
> +++ b/drivers/serial/serial_ns16550.c
> @@ -62,26 +62,7 @@ static unsigned int ns16550_calc_divisor(struct console_device *cdev,
>  	struct NS16550_plat *plat = (struct NS16550_plat *)
>  	    cdev->dev->platform_data;
>  	unsigned int clk = plat->clock;
> -#ifdef CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS
> -	/* FIXME: Legacy Code copied from U-Boot V1 implementation
> -	 */
> -#ifdef CONFIG_ARCH_OMAP1510
> -	unsigned long base = cdev->dev->map_base;
> -	/* If can't cleanly clock 115200 set div to 1 */
> -	if ((clk == 12000000) && (baudrate == 115200)) {
> -		/* enable 6.5 * divisor */
> -		plat->reg_write(OSC_12M_SEL, base, osc_12m_sel);
> -		return 1;	/* return 1 for base divisor */
> -	}
> -	/* clear if previously set */
> -	plat->reg_write(0, base, osc_12m_sel);
> -#elif defined(CONFIG_ARCH_OMAP1610)
> -	/* If can't cleanly clock 115200 set div to 1 */
> -	if ((clk == 48000000) && (baudrate == 115200))
> -		return 26;	/* return 26 for base divisor */
> -#endif
>  
> -#endif				/* End of OMAP specific handling */
>  	return (clk / MODE_X_DIV / baudrate);
>  
>  }
> diff --git a/drivers/serial/serial_ns16550.h b/drivers/serial/serial_ns16550.h
> index eb2fd10..db8fe64 100644
> --- a/drivers/serial/serial_ns16550.h
> +++ b/drivers/serial/serial_ns16550.h
> @@ -81,10 +81,6 @@
>  #define LSR_TEMT	0x40	/* Xmitter empty */
>  #define LSR_ERR		0x80	/* Error */
>  
> -#ifdef CONFIG_ARCH_OMAP1510
> -#define OSC_12M_SEL	0x01	/* selects 6.5 * current clk div */
> -#endif
> -
>  /* useful defaults for LCR */
>  #define LCR_8N1		0x03
>  
> -- 
> 1.7.5.4
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
