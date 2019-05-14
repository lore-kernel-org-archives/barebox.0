Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQVfb-0007LY-0u
 for barebox@lists.infradead.org; Tue, 14 May 2019 11:32:33 +0000
Date: Tue, 14 May 2019 13:32:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190514113226.eon3i5irb5btxtjm@pengutronix.de>
References: <20190513235944.19307-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190513235944.19307-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH] spi: Enable Freescale QSPI controller driver for VF610
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, May 13, 2019 at 04:59:44PM -0700, Andrey Smirnov wrote:
> VF610 is supported by this driver, so modify its Kconfig entry to
> reflect that.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  drivers/spi/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/spi/Kconfig b/drivers/spi/Kconfig
> index d687105ea..2e57457dc 100644
> --- a/drivers/spi/Kconfig
> +++ b/drivers/spi/Kconfig
> @@ -27,7 +27,7 @@ config DRIVER_SPI_ATMEL
>  
>  config DRIVER_SPI_FSL_QUADSPI
>  	bool "Freescale QSPI controller"
> -	depends on ARCH_IMX25 || ARCH_IMX31 || ARCH_IMX35 || ARCH_IMX50 || ARCH_IMX53 || ARCH_LAYERSCAPE
> +	depends on ARCH_IMX25 || ARCH_IMX31 || ARCH_IMX35 || ARCH_IMX50 || ARCH_IMX53 || ARCH_LAYERSCAPE || ARCH_VF610

Not your fault, but this list is bogus. None of the i.MX SoCs actually
has this hardware and the ones that have it are not in the list. We
should rather remove this line entirely.

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
