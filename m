Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UoUfO-0008Nf-26
 for barebox@lists.infradead.org; Mon, 17 Jun 2013 08:19:59 +0000
Date: Mon, 17 Jun 2013 10:19:35 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130617081935.GO32299@pengutronix.de>
References: <1371303724-27020-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1371303724-27020-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH] ARM: pcm038: Add setup for MC13783 IRQ pin
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Sat, Jun 15, 2013 at 05:42:04PM +0400, Alexander Shiyan wrote:
> Kernel does not have pinctrl driver for i.MX27 yet. When we using DT,
> this cause to unable setup pins to desired function. This patch adds
> a setup for MC13783 IRQ pin to avoid this issue.
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>

Applied, thanks

Sascha

> ---
>  arch/arm/boards/pcm038/pcm038.c | 15 +++++++++------
>  1 file changed, 9 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm/boards/pcm038/pcm038.c b/arch/arm/boards/pcm038/pcm038.c
> index dec5164..f6a3e17 100644
> --- a/arch/arm/boards/pcm038/pcm038.c
> +++ b/arch/arm/boards/pcm038/pcm038.c
> @@ -46,9 +46,10 @@
>  
>  #include "pll.h"
>  
> +#define PCM038_GPIO_PMIC_IRQ	(GPIO_PORTB + 23)
>  #define PCM038_GPIO_FEC_RST	(GPIO_PORTC + 30)
> -#define PCM038_GPIO_SPI_CS0	(GPIO_PORTD + 28)
>  #define PCM970_GPIO_SPI_CS1	(GPIO_PORTD + 27)
> +#define PCM038_GPIO_SPI_CS0	(GPIO_PORTD + 28)
>  #define PCM038_GPIO_OTG_STP	(GPIO_PORTE + 1)
>  
>  static struct fec_platform_data fec_info = {
> @@ -225,7 +226,6 @@ static int pcm038_devices_init(void)
>  		PD15_AOUT_FEC_COL,
>  		PD16_AIN_FEC_TX_ER,
>  		PF23_AIN_FEC_TX_EN,
> -		PCM038_GPIO_FEC_RST | GPIO_GPIO | GPIO_OUT,
>  		/* UART1 */
>  		PE12_PF_UART1_TXD,
>  		PE13_PF_UART1_RXD,
> @@ -236,10 +236,6 @@ static int pcm038_devices_init(void)
>  		PD29_PF_CSPI1_SCLK,
>  		PD30_PF_CSPI1_MISO,
>  		PD31_PF_CSPI1_MOSI,
> -		PCM038_GPIO_SPI_CS0 | GPIO_GPIO | GPIO_OUT,
> -#ifdef CONFIG_MACH_PCM970_BASEBOARD
> -		PCM970_GPIO_SPI_CS1 | GPIO_GPIO | GPIO_OUT,
> -#endif
>  		/* Display */
>  		PA5_PF_LSCLK,
>  		PA6_PF_LD0,
> @@ -287,6 +283,13 @@ static int pcm038_devices_init(void)
>  		/* I2C2 */
>  		PC5_PF_I2C2_SDA,
>  		PC6_PF_I2C2_SCL,
> +		/* Misc */
> +		PCM038_GPIO_FEC_RST | GPIO_GPIO | GPIO_OUT,
> +		PCM038_GPIO_SPI_CS0 | GPIO_GPIO | GPIO_OUT,
> +#ifdef CONFIG_MACH_PCM970_BASEBOARD
> +		PCM970_GPIO_SPI_CS1 | GPIO_GPIO | GPIO_OUT,
> +#endif
> +		PCM038_GPIO_PMIC_IRQ | GPIO_GPIO | GPIO_IN,
>  	};
>  
>  	/* configure 16 bit nor flash on cs0 */
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
