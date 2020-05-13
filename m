Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYwGq-0002SI-38
 for barebox@lists.infradead.org; Wed, 13 May 2020 18:38:22 +0000
References: <20200513120847.7894-1-l.stach@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <aabfc4bf-e50a-e4f3-47d5-0401907dd8f9@pengutronix.de>
Date: Wed, 13 May 2020 20:38:11 +0200
MIME-Version: 1.0
In-Reply-To: <20200513120847.7894-1-l.stach@pengutronix.de>
Content-Language: en-US
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
Subject: Re: [PATCH] mci: stm32_sdmmc2: add detect function
To: Lucas Stach <l.stach@pengutronix.de>, barebox@lists.infradead.org

Hello Lucas,

On 5/13/20 2:08 PM, Lucas Stach wrote:
> This way we can avoid probing for the SD/MMC devices at startup
> and just detect them when actually needed.

Is there a reason we can't have mci_register do it for every MCI.hw_dev
at registration time?

Out of 17 MCI drivers, 8 already have the same wrapper around mci_detect_card.

> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  drivers/mci/stm32_sdmmc2.c | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/drivers/mci/stm32_sdmmc2.c b/drivers/mci/stm32_sdmmc2.c
> index 3ce3bb0f89d2..ac52b62fa0b7 100644
> --- a/drivers/mci/stm32_sdmmc2.c
> +++ b/drivers/mci/stm32_sdmmc2.c
> @@ -571,6 +571,13 @@ static void stm32_sdmmc2_set_ios(struct mci_host *mci, struct mci_ios *ios)
>  	       priv->base + SDMMC_CLKCR);
>  }
>  
> +static int stm32_sdmmc2_detect(struct device_d *dev)
> +{
> +	struct stm32_sdmmc2_priv *priv = dev->priv;
> +
> +	return mci_detect_card(&priv->mci);
> +}
> +
>  static int stm32_sdmmc2_probe(struct amba_device *adev,
>  			      const struct amba_id *id)
>  {
> @@ -591,6 +598,9 @@ static int stm32_sdmmc2_probe(struct amba_device *adev,
>  	mci->init = stm32_sdmmc2_reset;
>  	mci->hw_dev = dev;
>  
> +	dev->priv = priv;
> +	dev->detect = stm32_sdmmc2_detect;
> +
>  	priv->clk = clk_get(dev, NULL);
>  	if (IS_ERR(priv->clk)) {
>  		ret = PTR_ERR(priv->clk);
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
