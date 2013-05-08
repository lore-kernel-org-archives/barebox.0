Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UaBv6-0002jq-KQ
 for barebox@lists.infradead.org; Wed, 08 May 2013 21:29:05 +0000
Date: Wed, 8 May 2013 23:28:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130508212842.GK32299@pengutronix.de>
References: <1367998478-9314-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1367998478-9314-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH] ARM: PCM970: Add definition for SPI CS1
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Wed, May 08, 2013 at 11:34:38AM +0400, Alexander Shiyan wrote:
> This chipselect is used on RDK Zigbee connector. Since we cannot
> define additional chipselect after SPI is initialized, define this one
> in main SPI initialization in PCM038 SOM.
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>

Applied, thanks

Sascha

> ---
>  arch/arm/boards/pcm038/pcm038.c | 13 +++++++++++--
>  1 file changed, 11 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/boards/pcm038/pcm038.c b/arch/arm/boards/pcm038/pcm038.c
> index 4b2fa6c..cfc1e5e 100644
> --- a/arch/arm/boards/pcm038/pcm038.c
> +++ b/arch/arm/boards/pcm038/pcm038.c
> @@ -48,13 +48,19 @@
>  
>  #define PCM038_GPIO_FEC_RST	(GPIO_PORTC + 30)
>  #define PCM038_GPIO_SPI_CS0	(GPIO_PORTD + 28)
> +#define PCM970_GPIO_SPI_CS1	(GPIO_PORTD + 27)
>  
>  static struct fec_platform_data fec_info = {
>  	.xcv_type = PHY_INTERFACE_MODE_MII,
>  	.phy_addr = 1,
>  };
>  
> -static int pcm038_spi_cs[] = { PCM038_GPIO_SPI_CS0 };
> +static int pcm038_spi_cs[] = {
> +	PCM038_GPIO_SPI_CS0,
> +#ifdef CONFIG_MACH_PCM970_BASEBOARD
> +	PCM970_GPIO_SPI_CS1,
> +#endif
> +};
>  
>  static struct spi_imx_master pcm038_spi_0_data = {
>  	.chipselect = pcm038_spi_cs,
> @@ -221,10 +227,13 @@ static int pcm038_devices_init(void)
>  		PE15_PF_UART1_RTS,
>  		/* CSPI1 */
>  		PD25_PF_CSPI1_RDY,
> -		PCM038_GPIO_SPI_CS0 | GPIO_GPIO | GPIO_OUT,
>  		PD29_PF_CSPI1_SCLK,
>  		PD30_PF_CSPI1_MISO,
>  		PD31_PF_CSPI1_MOSI,
> +		PCM038_GPIO_SPI_CS0 | GPIO_GPIO | GPIO_OUT,
> +#ifdef CONFIG_MACH_PCM970_BASEBOARD
> +		PCM970_GPIO_SPI_CS1 | GPIO_GPIO | GPIO_OUT,
> +#endif
>  		/* Display */
>  		PA5_PF_LSCLK,
>  		PA6_PF_LD0,
> -- 
> 1.8.1.5
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
