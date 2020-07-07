Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jsiv2-0001dt-5K
 for barebox@lists.infradead.org; Tue, 07 Jul 2020 08:25:37 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>) id 1jsiv0-0005EM-2B
 for barebox@lists.infradead.org; Tue, 07 Jul 2020 10:25:34 +0200
References: <20200707082243.5916-1-a.fatoum@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <d1dc22ae-9311-5ed5-7c35-776e4b1665e1@pengutronix.de>
Date: Tue, 7 Jul 2020 10:25:33 +0200
MIME-Version: 1.0
In-Reply-To: <20200707082243.5916-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH] mci: omap: add new am335x and am437x SDHCI specific
 compatibles
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>



On 7/7/20 10:22 AM, Ahmad Fatoum wrote:
> For a while now, Linux has had a sdhci-omap driver for TI's OMAP SoCs
> making use of the SDHCI core library. This was in addition to the
> older omap-hsmmc driver, which didn't.
> 
> Linux commit 0b4edf11187 ("ARM: dts: Move am33xx and am43xx mmc nodes to
> sdhci-omap driver") changes the device tree compatible of the mmc nodes
> on the am33xx and am43xx SoCs away from the omap-hsmmc to the SDHCI
> driver. Add the new compatibles, so we aren't broken by the change.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> Hello Sascha,
> 
> recent v5.8-rc3 sync breaks barebox SD/MMC use on OMAP3 and OMAP4 SoCs,

Correction: I don't really understand the naming scheme, but seems only
OMAP4 should be broken at the moment. (I tested on a beaglebone black) 

> like the beaglebone. Please rebase the sync on this patch, so we avoid
> intermittent breakage..
> 
> Cheers,
> Ahmad
> ---
>  drivers/mci/omap_hsmmc.c | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/mci/omap_hsmmc.c b/drivers/mci/omap_hsmmc.c
> index b14161032594..6623503cee06 100644
> --- a/drivers/mci/omap_hsmmc.c
> +++ b/drivers/mci/omap_hsmmc.c
> @@ -650,6 +650,12 @@ static __maybe_unused struct of_device_id omap_mmc_dt_ids[] = {
>  	}, {
>  		.compatible = "ti,omap4-hsmmc",
>  		.data = &omap4_data,
> +	}, {
> +		.compatible = "ti,am335-sdhci",
> +		.data = &omap4_data,
> +	}, {
> +		.compatible = "ti,am437-sdhci",
> +		.data = &omap4_data,
>  	}, {
>  		/* sentinel */
>  	}
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
