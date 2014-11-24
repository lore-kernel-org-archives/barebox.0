Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Xst6O-0002MJ-Pa
 for barebox@lists.infradead.org; Mon, 24 Nov 2014 12:50:49 +0000
Date: Mon, 24 Nov 2014 13:50:27 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20141124125027.GE30369@pengutronix.de>
References: <1416827220-3103-1-git-send-email-l.stach@pengutronix.de>
 <1416827220-3103-11-git-send-email-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1416827220-3103-11-git-send-email-l.stach@pengutronix.de>
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
Subject: Re: [PATCH 10/20] arm: imx: properly stub out NAND bbu handler
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Nov 24, 2014 at 12:06:50PM +0100, Lucas Stach wrote:
> The nand handler is only built in if config
> BAREBOX_UPDATE_IMX6_NAND is selected.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>

We already have this fix in next from Andrey Smirnov. Will skip this.

Sascha

> ---
>  arch/arm/mach-imx/include/mach/bbu.h | 12 +++++++-----
>  1 file changed, 7 insertions(+), 5 deletions(-)
> 
> diff --git a/arch/arm/mach-imx/include/mach/bbu.h b/arch/arm/mach-imx/include/mach/bbu.h
> index 74c334a075a7..5eb9a47363af 100644
> --- a/arch/arm/mach-imx/include/mach/bbu.h
> +++ b/arch/arm/mach-imx/include/mach/bbu.h
> @@ -27,8 +27,6 @@ int imx6_bbu_internal_mmc_register_handler(const char *name, char *devicefile,
>  int imx6_bbu_internal_spi_i2c_register_handler(const char *name, char *devicefile,
>  		unsigned long flags);
>  
> -int imx6_bbu_nand_register_handler(const char *name, unsigned long flags);
> -
>  int imx_bbu_external_nor_register_handler(const char *name, char *devicefile,
>  		unsigned long flags);
>  
> @@ -70,13 +68,17 @@ static inline int imx6_bbu_internal_spi_i2c_register_handler(const char *name, c
>  	return -ENOSYS;
>  }
>  
> -static inline int imx6_bbu_nand_register_handler(const char *name, unsigned long flags)
> +static inline int imx_bbu_external_nor_register_handler(const char *name, char *devicefile,
> +		unsigned long flags)
>  {
>  	return -ENOSYS;
>  }
> +#endif
>  
> -static inline int imx_bbu_external_nor_register_handler(const char *name, char *devicefile,
> -		unsigned long flags)
> +#if defined(CONFIG_BAREBOX_UPDATE_IMX6_NAND)
> +int imx6_bbu_nand_register_handler(const char *name, unsigned long flags);
> +#else
> +static inline int imx6_bbu_nand_register_handler(const char *name, unsigned long flags)
>  {
>  	return -ENOSYS;
>  }
> -- 
> 2.1.1
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
