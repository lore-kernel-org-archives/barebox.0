Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XoRRj-0002b7-Rb
 for barebox@lists.infradead.org; Wed, 12 Nov 2014 06:30:29 +0000
Date: Wed, 12 Nov 2014 07:30:04 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20141112063003.GC30369@pengutronix.de>
References: <1415742184-21334-1-git-send-email-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1415742184-21334-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH] ARM: i.MX6 Phytec phyFLEX: Fix
 imx6_bbu_nand_register_handler prototype
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Nov 11, 2014 at 01:43:04PM -0800, Andrey Smirnov wrote:
> imx6_bbu_nand_register_handler is dependent on
> CONFIG_BAREBOX_UPDATE_IMX6_NAND. Change the protoype definition such
> that said function is stubbed-out when CONFIG_BAREBOX_UPDATE_IMX6_NAND
> is not defined.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>

Applied, thanks

Sascha

> ---
>  arch/arm/mach-imx/include/mach/bbu.h | 12 +++++++-----
>  1 file changed, 7 insertions(+), 5 deletions(-)
> 
> diff --git a/arch/arm/mach-imx/include/mach/bbu.h b/arch/arm/mach-imx/include/mach/bbu.h
> index 74c334a..5eb9a47 100644
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
> 1.9.3
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
