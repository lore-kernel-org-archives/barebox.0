Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fvcmR-0004mC-Kf
 for barebox@lists.infradead.org; Fri, 31 Aug 2018 06:19:41 +0000
Date: Fri, 31 Aug 2018 08:19:27 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180831061927.n7d5q3tbjlvfivdn@pengutronix.de>
References: <20180829100652.13529-1-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180829100652.13529-1-s.trumtrar@pengutronix.de>
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
Subject: Re: [PATCH] drivers: net: designware: select reset controller
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Wed, Aug 29, 2018 at 12:06:52PM +0200, Steffen Trumtrar wrote:
> The socfpga-specific designware driver uses reset_control_get().
> Select the socfpga-reset driver to actually use this function instead of
> a stub.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
>  drivers/net/Kconfig | 1 +
>  1 file changed, 1 insertion(+)

Applied, thanks

Sascha

> 
> diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
> index b633a3ac4d7b..1aa096f005e3 100644
> --- a/drivers/net/Kconfig
> +++ b/drivers/net/Kconfig
> @@ -83,6 +83,7 @@ config DRIVER_NET_DESIGNWARE_SOCFPGA
>  	bool "Designware Universal MAC ethernet driver for SoCFPGA platforms"
>  	depends on ARCH_SOCFPGA
>  	select MFD_SYSCON
> +	select RESET_CONTROLLER
>  	help
>  	  This option enables support for the Synopsys
>  	  Designware Core Univesal MAC 10M/100M/1G ethernet IP on SoCFPGA.
> -- 
> 2.11.0
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
