Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dAsI1-0004op-17
 for barebox@lists.infradead.org; Wed, 17 May 2017 06:18:31 +0000
Date: Wed, 17 May 2017 08:18:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170517061804.fxuilmdiyqdv7vxh@pengutronix.de>
References: <20170511094108.17088-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170511094108.17088-1-l.stach@pengutronix.de>
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
Subject: Re: [PATCH 1/3] ARM: socfpga: fix QSPI platform data init
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, May 11, 2017 at 11:41:06AM +0200, Lucas Stach wrote:
> The struct member has been renamed, fix it.
> 
> Fixes: fddf254b8b9a (mtd: spi-nor: cadence: change devicetree bindings to upstream)
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  arch/arm/mach-socfpga/cyclone5-generic.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/mach-socfpga/cyclone5-generic.c b/arch/arm/mach-socfpga/cyclone5-generic.c
> index 3f49a9a542eb..73a8ad03b738 100644
> --- a/arch/arm/mach-socfpga/cyclone5-generic.c
> +++ b/arch/arm/mach-socfpga/cyclone5-generic.c
> @@ -53,7 +53,7 @@ void socfpga_cyclone5_mmc_init(void)
>  
>  #if defined(CONFIG_SPI_CADENCE_QUADSPI)
>  static struct cadence_qspi_platform_data qspi_pdata = {
> -	.ext_decoder = 0,
> +	.is_decoded_cs = 0,
>  	.fifo_depth = 128,
>  };
>  
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
