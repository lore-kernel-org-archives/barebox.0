Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QlHQv-0002rN-6j
	for barebox@lists.infradead.org; Mon, 25 Jul 2011 09:26:42 +0000
Date: Mon, 25 Jul 2011 11:26:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110725092628.GX20587@pengutronix.de>
References: <1311488305-29960-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1311488305-29960-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] DRIVER_SERIAL_LINUX_CONSOLE: fix misprint
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

It took me some time to see the actual change ;)

Applied to -next.

Sascha

On Sun, Jul 24, 2011 at 10:18:25AM +0400, Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  drivers/serial/Kconfig  |    2 +-
>  drivers/serial/Makefile |    2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/serial/Kconfig b/drivers/serial/Kconfig
> index b8ae475..c2bee79 100644
> --- a/drivers/serial/Kconfig
> +++ b/drivers/serial/Kconfig
> @@ -28,7 +28,7 @@ config DRIVER_SERIAL_NETX
>  	default y
>  	bool "Netx serial driver"
>  
> -config DRIVER_SERIAL_LINUX_COMSOLE
> +config DRIVER_SERIAL_LINUX_CONSOLE
>  	depends on LINUX
>  	default y
>  	bool "linux console driver"
> diff --git a/drivers/serial/Makefile b/drivers/serial/Makefile
> index 8b56d15..411b8c5 100644
> --- a/drivers/serial/Makefile
> +++ b/drivers/serial/Makefile
> @@ -10,7 +10,7 @@ obj-$(CONFIG_DRIVER_SERIAL_IMX)			+= serial_imx.o
>  obj-$(CONFIG_DRIVER_SERIAL_STM378X)		+= stm-serial.o
>  obj-$(CONFIG_DRIVER_SERIAL_ATMEL)		+= atmel.o
>  obj-$(CONFIG_DRIVER_SERIAL_NETX)		+= serial_netx.o
> -obj-$(CONFIG_DRIVER_SERIAL_LINUX_COMSOLE)	+= linux_console.o
> +obj-$(CONFIG_DRIVER_SERIAL_LINUX_CONSOLE)	+= linux_console.o
>  obj-$(CONFIG_DRIVER_SERIAL_MPC5XXX)		+= serial_mpc5xxx.o
>  obj-$(CONFIG_DRIVER_SERIAL_BLACKFIN)		+= serial_blackfin.o
>  obj-$(CONFIG_DRIVER_SERIAL_NS16550)		+= serial_ns16550.o
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
