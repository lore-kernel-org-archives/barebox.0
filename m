Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VorO7-0007jR-PW
 for barebox@lists.infradead.org; Fri, 06 Dec 2013 09:07:56 +0000
Date: Fri, 6 Dec 2013 10:07:32 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Message-ID: <20131206090732.GA28174@pengutronix.de>
References: <1386199691-12032-1-git-send-email-alex.aring@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1386199691-12032-1-git-send-email-alex.aring@gmail.com>
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
Subject: Re: [PATCH] serial: add missing depends on ARCH_ZYNQ
To: Alexander Aring <alex.aring@gmail.com>
Cc: barebox@lists.infradead.org

Hi!

On Thu, Dec 05, 2013 at 12:28:11AM +0100, Alexander Aring wrote:
> The cadence serial driver is some ARCH_ZYNQ specific driver.
> Add a depends on ARCH_ZYNQ for this driver.
> 
> Signed-off-by: Alexander Aring <alex.aring@gmail.com>
> ---
>  drivers/serial/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/serial/Kconfig b/drivers/serial/Kconfig
> index 11fc155..d520dda 100644
> --- a/drivers/serial/Kconfig
> +++ b/drivers/serial/Kconfig
> @@ -119,6 +119,7 @@ config DRIVER_SERIAL_OMAP4_USBBOOT
>  
>  config DRIVER_SERIAL_CADENCE
>  	bool "Cadence UART driver"
> +	depends on ARCH_ZYNQ
>  	help
>  	  Say Y here if you have a Cadence serial IP core.
>  
> -- 
> 1.8.4.2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

Does is not compile with other archs?
This is intended to be a generic driver; Zynq just happens to be the only user.
-> It should not depend on ARCH_ZYNQ.

Regards,
Steffen

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
