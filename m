Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z9RWZ-00019K-5K
 for barebox@lists.infradead.org; Mon, 29 Jun 2015 05:22:31 +0000
Date: Mon, 29 Jun 2015 07:22:08 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150629052208.GQ18611@pengutronix.de>
References: <1435345163-16565-1-git-send-email-dev@lynxeye.de>
 <1435345163-16565-4-git-send-email-dev@lynxeye.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1435345163-16565-4-git-send-email-dev@lynxeye.de>
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
Subject: Re: [PATCH 4/4] mtd: spi-nor: depend on SPI
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

On Fri, Jun 26, 2015 at 08:59:23PM +0200, Lucas Stach wrote:
> Signed-off-by: Lucas Stach <dev@lynxeye.de>
> ---
>  drivers/mtd/spi-nor/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/mtd/spi-nor/Kconfig b/drivers/mtd/spi-nor/Kconfig
> index a84591f..7594c1c 100644
> --- a/drivers/mtd/spi-nor/Kconfig
> +++ b/drivers/mtd/spi-nor/Kconfig
> @@ -1,6 +1,7 @@
>  menuconfig MTD_SPI_NOR
>  	tristate "SPI-NOR device support"
>  	depends on MTD
> +	depends on SPI

Nope. MTD_SPI_NOR is library code only which can be used without SPI,
see the cadence-quadspi driver. It's the m25p80 driver which needs SPI.

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
