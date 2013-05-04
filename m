Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UYYSH-0005tl-Gh
 for barebox@lists.infradead.org; Sat, 04 May 2013 09:08:34 +0000
Date: Sat, 4 May 2013 11:08:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130504090807.GW32299@pengutronix.de>
References: <1367586709-29238-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1367586709-29238-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH 1/3] ARM: pcm038: Add descriptions for pin-groups
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Fri, May 03, 2013 at 05:11:47PM +0400, Alexander Shiyan wrote:
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>

Applied this series.

Thanks
 Sascha

> ---
>  arch/arm/boards/pcm038/pcm038.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boards/pcm038/pcm038.c b/arch/arm/boards/pcm038/pcm038.c
> index df8b1f9..1b0c54b 100644
> --- a/arch/arm/boards/pcm038/pcm038.c
> +++ b/arch/arm/boards/pcm038/pcm038.c
> @@ -191,6 +191,7 @@ static int pcm038_devices_init(void)
>  	long sram_size;
>  
>  	unsigned int mode[] = {
> +		/* FEC */
>  		PD0_AIN_FEC_TXD0,
>  		PD1_AIN_FEC_TXD1,
>  		PD2_AIN_FEC_TXD2,
> @@ -209,16 +210,18 @@ static int pcm038_devices_init(void)
>  		PD15_AOUT_FEC_COL,
>  		PD16_AIN_FEC_TX_ER,
>  		PF23_AIN_FEC_TX_EN,
> +		/* UART1 */
>  		PE12_PF_UART1_TXD,
>  		PE13_PF_UART1_RXD,
>  		PE14_PF_UART1_CTS,
>  		PE15_PF_UART1_RTS,
> +		/* CSPI1 */
>  		PD25_PF_CSPI1_RDY,
>  		GPIO_PORTD | 28 | GPIO_GPIO | GPIO_OUT,
>  		PD29_PF_CSPI1_SCLK,
>  		PD30_PF_CSPI1_MISO,
>  		PD31_PF_CSPI1_MOSI,
> -		/* display */
> +		/* Display */
>  		PA5_PF_LSCLK,
>  		PA6_PF_LD0,
>  		PA7_PF_LD1,
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
