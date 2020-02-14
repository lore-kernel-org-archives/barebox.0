Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2Vha-0003TE-Py
 for barebox@lists.infradead.org; Fri, 14 Feb 2020 07:47:56 +0000
Date: Fri, 14 Feb 2020 08:47:53 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200214074753.nb2pj7e7k76llynp@pengutronix.de>
References: <20200212141430.8800-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200212141430.8800-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH 1/2] mci: stm32_sdmmc2: add High-Speed (26 & 52 MHz)
 support
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Feb 12, 2020 at 03:14:29PM +0100, Ahmad Fatoum wrote:
> The SDMMC2 doesn't need any special setup for High-Speed modes, except
> for the clock changes. Thus set the cap flags if the max clock would
> allow for the higher speed mode.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/mci/stm32_sdmmc2.c | 5 +++++
>  1 file changed, 5 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/drivers/mci/stm32_sdmmc2.c b/drivers/mci/stm32_sdmmc2.c
> index 695e61d1ccd7..0c26869b0378 100644
> --- a/drivers/mci/stm32_sdmmc2.c
> +++ b/drivers/mci/stm32_sdmmc2.c
> @@ -631,6 +631,11 @@ static int stm32_sdmmc2_probe(struct amba_device *adev,
>  
>  	mci_of_parse(&priv->mci);
>  
> +	if (mci->f_max >= 26000000)
> +		mci->host_caps |= MMC_CAP_MMC_HIGHSPEED;
> +	if (mci->f_max >= 52000000)
> +		mci->host_caps |= MMC_CAP_MMC_HIGHSPEED_52MHZ;
> +
>  	return mci_register(&priv->mci);
>  
>  priv_free:
> -- 
> 2.25.0
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
