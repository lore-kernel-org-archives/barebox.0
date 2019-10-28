Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP3Ff-0006qE-3z
 for barebox@lists.infradead.org; Mon, 28 Oct 2019 11:32:00 +0000
Date: Mon, 28 Oct 2019 12:31:57 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191028113157.oem65ah2fkaoh42s@pengutronix.de>
References: <20191027231832.10247-1-a.fatoum@pengutronix.de>
 <20191027231832.10247-7-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191027231832.10247-7-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH v2 7/8] ARM: stm32mp: dk2: add barebox SD-Card update
 handler
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Oct 28, 2019 at 12:18:31AM +0100, Ahmad Fatoum wrote:
> Now with the SD/MMC controller supported, lets add a bbu handler, so we
> can use it to update the second stage boot loader partition.
> 
> While doing this, I noticed that making use of the bus-width = <4>
> property in the device tree now makes mmc usage fail when reading the
> environment:
> 
>   ERROR: error SDMMC_STA_DCRCFAIL (0x81042) for cmd 18
>   ERROR: stm32_sdmmc2_end_cmd: error SDMMC_STA_CTIMEOUT (0x4) for cmd 12
>   WARNING: stm32_sdmmc2_send_cmd: cmd 12 failed, retrying ...
>   ERROR: stm32_sdmmc2_end_cmd: error SDMMC_STA_CTIMEOUT (0x4) for cmd 12
>   WARNING: stm32_sdmmc2_send_cmd: cmd 12 failed, retrying ...
>   ERROR: stm32_sdmmc2_end_cmd: error SDMMC_STA_CTIMEOUT (0x4) for cmd 12
>   WARNING: stm32_sdmmc2_send_cmd: cmd 12 failed, retrying ...
>   ERROR: stm32_sdmmc2_end_cmd: error SDMMC_STA_CTIMEOUT (0x4) for cmd 12

Could you make this an extra patch?

> 
> We'll want to fix this eventually, but for now force the bus width to 1
> and print a notice to the console that we've done so. This is not
> enough, however because it then fails at loading the kernel from MMC:
> 
>   ERROR: Time out on waiting for SDMMC_STA. cmd 18
>   ERROR: stm32_sdmmc2_end_cmd: error SDMMC_STA_CTIMEOUT (0x804) for cmd 12
>   WARNING: stm32_sdmmc2_send_cmd: cmd 18 failed, retrying ...
> 
> Fixing the max frequency at 208 MHz fixes this. So do that and print a
> notice for it as well.
> 
> @@ -627,11 +627,22 @@ static int stm32_sdmmc2_probe(struct amba_device *adev,
>  	if (IS_ERR(priv->reset_ctl))
>  		priv->reset_ctl = NULL;
>  
> +	mci_of_parse(&priv->mci);
> +
>  	mci->f_min = 400000;
> -	/* f_max is taken from kernel v5.3 variant_stm32_sdmmc */
> -	mci->f_max = 208000000;
>  	mci->voltages = MMC_VDD_32_33 | MMC_VDD_33_34 | MMC_VDD_165_195;
>  
> +	if (mci->f_max != 208000000) {
> +		/* f_max is taken from kernel v5.3 variant_stm32_sdmmc */
> +		dev_notice(dev, "Fixing max-frequency to 208 MHz due to driver limitation\n");
> +		mci->f_max = 208000000;
> +	}

f_max previously was hardcoded to 208MHz. It still is now, so this can't
fix anything.
Looking at the device tree we have max-frequency = <120000000>, so you
probably mean that it doesn't work with the 120MHz specified here,
right? If it doesn't work with a lower frequency it really looks fishy.

Could you have another look what is going on here?

Sascha


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
