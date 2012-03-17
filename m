Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1S8wKs-0004Im-9e
 for barebox@lists.infradead.org; Sat, 17 Mar 2012 16:18:32 +0000
Date: Sat, 17 Mar 2012 17:18:22 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120317161822.GK3852@pengutronix.de>
References: <1331895146-8176-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1331895146-8176-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH 2/2] PCM038: add support for MMC
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Fri, Mar 16, 2012 at 02:52:26PM +0400, Alexander Shiyan wrote:
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>

Does this work without turning on the mc13783 regulator for MMC?

Sascha

> ---
>  arch/arm/boards/pcm038/pcm038.c |    9 +++++++++
>  1 files changed, 9 insertions(+), 0 deletions(-)
> 
> diff --git a/arch/arm/boards/pcm038/pcm038.c b/arch/arm/boards/pcm038/pcm038.c
> index 8dd6521..0d925cc 100644
> --- a/arch/arm/boards/pcm038/pcm038.c
> +++ b/arch/arm/boards/pcm038/pcm038.c
> @@ -221,6 +221,13 @@ static int pcm038_devices_init(void)
>  		/* I2C2 */
>  		PC5_PF_I2C2_SDA,
>  		PC6_PF_I2C2_SCL,
> +		/* SD1 */
> +		PE18_PF_SD1_D0,
> +		PE19_PF_SD1_D1,
> +		PE20_PF_SD1_D2,
> +		PE21_PF_SD1_D3,
> +		PE22_PF_SD1_CMD,
> +		PE23_PF_SD1_CLK,
>  	};
>  
>  	/* configure 16 bit nor flash on cs0 */
> @@ -264,6 +271,8 @@ static int pcm038_devices_init(void)
>  	add_generic_usb_ehci_device(-1, IMX_OTG_BASE + 0x400, NULL);
>  #endif
>  
> +	imx27_add_mmc0(NULL);
> +
>  	/* Register the fec device after the PLL re-initialisation
>  	 * as the fec depends on the (now higher) ipg clock
>  	 */
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
