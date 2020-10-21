Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kVAuj-0002SC-4C
 for barebox@lists.infradead.org; Wed, 21 Oct 2020 10:00:14 +0000
Date: Wed, 21 Oct 2020 12:00:11 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20201021100011.GX13710@pengutronix.de>
References: <20201020165214.2232-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201020165214.2232-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH] mci: stm32_sdmmc2: add support for SDMMC v2.0 as well
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Oct 20, 2020 at 06:52:14PM +0200, Ahmad Fatoum wrote:
> According to kernel commit 7a2a98be672b ("mmc: mmci: Add support for
> sdmmc variant revision 2.0")[0], v2.0 is completely backwards compatible
> with v1.1. Add the v2.0's periphid to have the driver work with both.
> 
> [0]: https://lore.kernel.org/linux-arm-kernel/20200128090636.13689-10-ludovic.barre@st.com/T/#u
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/mci/stm32_sdmmc2.c | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/mci/stm32_sdmmc2.c b/drivers/mci/stm32_sdmmc2.c
> index da2dc592adb3..0c620427ee44 100644
> --- a/drivers/mci/stm32_sdmmc2.c
> +++ b/drivers/mci/stm32_sdmmc2.c
> @@ -633,11 +633,16 @@ priv_free:
>  }
>  
>  static struct amba_id stm32_sdmmc2_ids[] = {
> -	/* ST Micro STM32MP157C */
> +	/* ST Micro STM32MP15 v1.1 */
>  	{
>  		.id     = 0x10153180,
>  		.mask	= 0xf0ffffff,
>  	},
> +	/* ST Micro STM32MP15 v2.0 */
> +	{
> +		.id     = 0x00253180,
> +		.mask	= 0xf0ffffff,
> +	},
>  	{ 0, 0 },
>  };
>  
> -- 
> 2.28.0
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
