Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SUxjL-0002v0-Ec
 for barebox@lists.infradead.org; Thu, 17 May 2012 10:14:48 +0000
Date: Thu, 17 May 2012 12:14:45 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120517101445.GZ30400@pengutronix.de>
References: <1337243739-15980-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1337243739-15980-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH 1/2] i.MX51: Changed naming registers and procedures for
 SPI
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Thu, May 17, 2012 at 12:35:38PM +0400, Alexander Shiyan wrote:
> This patch reflects real naming of SPI by Freescale.
> We have two ECSPI channels and one CSPI.
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>

Applied, thanks

Sascha

> ---
>  arch/arm/mach-imx/include/mach/devices-imx51.h |    8 ++++----
>  arch/arm/mach-imx/include/mach/imx51-regs.h    |    6 +++---
>  2 files changed, 7 insertions(+), 7 deletions(-)
> 
> diff --git a/arch/arm/mach-imx/include/mach/devices-imx51.h b/arch/arm/mach-imx/include/mach/devices-imx51.h
> index 9ad6476..7ba49a4 100644
> --- a/arch/arm/mach-imx/include/mach/devices-imx51.h
> +++ b/arch/arm/mach-imx/include/mach/devices-imx51.h
> @@ -4,17 +4,17 @@
>  
>  static inline struct device_d *imx51_add_spi0(struct spi_imx_master *pdata)
>  {
> -	return imx_add_spi((void *)MX51_CSPI1_BASE_ADDR, 0, pdata);
> +	return imx_add_spi((void *)MX51_ECSPI1_BASE_ADDR, 0, pdata);
>  }
>  
>  static inline struct device_d *imx51_add_spi1(struct spi_imx_master *pdata)
>  {
> -	return imx_add_spi((void *)MX51_CSPI2_BASE_ADDR, 1, pdata);
> +	return imx_add_spi((void *)MX51_ECSPI2_BASE_ADDR, 1, pdata);
>  }
>  
> -static inline struct device_d *imx51_add_spi2(struct spi_imx_master *pdata)
> +static inline struct device_d *imx51_add_cspi(struct spi_imx_master *pdata)
>  {
> -	return imx_add_spi((void *)MX51_CSPI3_BASE_ADDR, 2, pdata);
> +	return imx_add_spi((void *)MX51_CSPI_BASE_ADDR, 2, pdata);
>  }
>  
>  static inline struct device_d *imx51_add_i2c0(struct i2c_platform_data *pdata)
> diff --git a/arch/arm/mach-imx/include/mach/imx51-regs.h b/arch/arm/mach-imx/include/mach/imx51-regs.h
> index 3eb0a1f..b51aa67 100644
> --- a/arch/arm/mach-imx/include/mach/imx51-regs.h
> +++ b/arch/arm/mach-imx/include/mach/imx51-regs.h
> @@ -76,12 +76,12 @@
>  #define MX51_ARM_BASE_ADDR	(MX51_AIPS2_BASE_ADDR + 0x000A0000)
>  #define MX51_OWIRE_BASE_ADDR (MX51_AIPS2_BASE_ADDR + 0x000A4000)
>  #define MX51_FIRI_BASE_ADDR	(MX51_AIPS2_BASE_ADDR + 0x000A8000)
> -#define MX51_CSPI2_BASE_ADDR	(MX51_AIPS2_BASE_ADDR + 0x000AC000)
> +#define MX51_ECSPI2_BASE_ADDR	(MX51_AIPS2_BASE_ADDR + 0x000AC000)
>  #define MX51_SDMA_BASE_ADDR	(MX51_AIPS2_BASE_ADDR + 0x000B0000)
>  #define MX51_SCC_BASE_ADDR	(MX51_AIPS2_BASE_ADDR + 0x000B4000)
>  #define MX51_ROMCP_BASE_ADDR	(MX51_AIPS2_BASE_ADDR + 0x000B8000)
>  #define MX51_RTIC_BASE_ADDR	(MX51_AIPS2_BASE_ADDR + 0x000BC000)
> -#define MX51_CSPI3_BASE_ADDR	(MX51_AIPS2_BASE_ADDR + 0x000C0000)
> +#define MX51_CSPI_BASE_ADDR	(MX51_AIPS2_BASE_ADDR + 0x000C0000)
>  #define MX51_I2C2_BASE_ADDR	(MX51_AIPS2_BASE_ADDR + 0x000C4000)
>  #define MX51_I2C1_BASE_ADDR	(MX51_AIPS2_BASE_ADDR + 0x000C8000)
>  #define MX51_SSI1_BASE_ADDR	(MX51_AIPS2_BASE_ADDR + 0x000CC000)
> @@ -104,7 +104,7 @@
>  #define MX51_MMC_SDHC1_BASE_ADDR	(MX51_SPBA0_BASE_ADDR + 0x00004000)
>  #define MX51_MMC_SDHC2_BASE_ADDR	(MX51_SPBA0_BASE_ADDR + 0x00008000)
>  #define MX51_UART3_BASE_ADDR 		(MX51_SPBA0_BASE_ADDR + 0x0000C000)
> -#define MX51_CSPI1_BASE_ADDR 		(MX51_SPBA0_BASE_ADDR + 0x00010000)
> +#define MX51_ECSPI1_BASE_ADDR 		(MX51_SPBA0_BASE_ADDR + 0x00010000)
>  #define MX51_SSI2_BASE_ADDR		(MX51_SPBA0_BASE_ADDR + 0x00014000)
>  #define MX51_MMC_SDHC3_BASE_ADDR	(MX51_SPBA0_BASE_ADDR + 0x00020000)
>  #define MX51_MMC_SDHC4_BASE_ADDR	(MX51_SPBA0_BASE_ADDR + 0x00024000)
> -- 
> 1.7.3.4
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
