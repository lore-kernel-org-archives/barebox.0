Delivery-date: Tue, 06 May 2025 08:38:27 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCBwh-002i4v-00
	for lore@lore.pengutronix.de;
	Tue, 06 May 2025 08:38:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCBwf-0001z4-Re
	for lore@pengutronix.de; Tue, 06 May 2025 08:38:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7L/AcQgYz1tYOdBpoqm0n25YBu5a4tfKqSeCbTfdnPk=; b=EeyEnqawQkjAxu2ioNFLw+Aubp
	udlAkWL+W/YGcJuAPUPnznL39OGXoFdDeysZs+lr6g2a41QLB40KbGqK+KBHk6htvHTK0/QhttzDY
	zpk4GywAbg2YIQS/ApDGjrxPK2tmRJZAfbGsZnfbtlpisyNjb7YUKTAxyc52cuKGpxiN2aDdMy0c+
	R3mV8yBSeSUCO5OZXBiVfxFRGpJQ1MMSsHmOFhhJnBKEKq7hQsNDetBFS4HfLluzaEuZaknck5tB9
	8Fgd+HfRBs+Ca+yn6MBLf7UDUPZe/ZS9+azV/dwdRUoqwKWOi2VUMmqSJXFHbiyQvIYo9IZgfhfiK
	1MldcGOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCBwE-0000000AjWf-10jt;
	Tue, 06 May 2025 06:37:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCBvQ-0000000AjE6-1kjI
	for barebox@lists.infradead.org;
	Tue, 06 May 2025 06:37:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1uCBvP-0001Lr-4V; Tue, 06 May 2025 08:37:07 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uCBvO-001Lpv-35;
	Tue, 06 May 2025 08:37:06 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uCBvO-006RtI-2n;
	Tue, 06 May 2025 08:37:06 +0200
Date: Tue, 6 May 2025 08:37:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <aBmuEkJMRx69PGJT@pengutronix.de>
References: <20250505120633.3717186-1-a.fatoum@pengutronix.de>
 <20250505120633.3717186-19-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250505120633.3717186-19-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250505_233708_455252_AA49ADE6 
X-CRM114-Status: GOOD (  33.12  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 18/30] mci: imx-esdhc: add support for delay/tuning
 properties in DT
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, May 05, 2025 at 02:06:21PM +0200, Ahmad Fatoum wrote:
> With higher data rates, we will need to fine tune delay settings, which
> can be supplied via the device tree. Add support for the binding to
> barebox.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/mci/imx-esdhc.c | 70 ++++++++++++++++++++++++++++++++++++++++-
>  drivers/mci/imx-esdhc.h | 14 +++++++++
>  2 files changed, 83 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
> index 86dc6daba845..9d82c886cdcf 100644
> --- a/drivers/mci/imx-esdhc.c
> +++ b/drivers/mci/imx-esdhc.c
> @@ -145,6 +145,15 @@ static void usdhc_set_timing(struct fsl_esdhc_host *host, enum mci_timing timing
>  	case MMC_TIMING_MMC_DDR52:
>  		mixctrl |= MIX_CTRL_DDREN;
>  		sdhci_write32(&host->sdhci, IMX_SDHCI_MIXCTRL, mixctrl);
> +		if (host->boarddata.delay_line) {
> +			u32 v;
> +			v = host->boarddata.delay_line <<
> +				IMX_SDHCI_DLL_CTRL_OVERRIDE_VAL_SHIFT |
> +				(1 << IMX_SDHCI_DLL_CTRL_OVERRIDE_EN_SHIFT);
> +			if (cpu_is_mx53())
> +				v <<= 1;
> +			sdhci_write32(&host->sdhci, IMX_SDHCI_DLL_CTRL, v);
> +		}
>  		break;
>  	default:
>  		sdhci_write32(&host->sdhci, IMX_SDHCI_MIXCTRL, mixctrl);
> @@ -290,7 +299,49 @@ static int esdhc_init(struct mci_host *mci, struct device *dev)
>  	esdhc_clrsetbits32(host, SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET,
>  			SYSCTL_TIMEOUT_MASK, 14 << 16);
>  
> -	return ret;
> +	if (IS_ENABLED(CONFIG_MCI_TUNING) && esdhc_is_usdhc(host) &&
> +	    (host->socdata->flags & ESDHC_FLAG_STD_TUNING)) {
> +		u32 tmp;
> +
> +		/* disable DLL_CTRL delay line settings */
> +		sdhci_write32(&host->sdhci, ESDHC_DLL_CTRL, 0x0);
> +
> +		tmp = sdhci_read32(&host->sdhci, ESDHC_TUNING_CTRL);
> +		tmp |= ESDHC_STD_TUNING_EN;
> +
> +		/*
> +		 * ROM code or bootloader may config the start tap
> +		 * and step, unmask them first.
> +		 */

This comment is rather pointless. It's just good style to mask out
the current values before setting them.

> +		tmp &= ~(ESDHC_TUNING_START_TAP_MASK | ESDHC_TUNING_STEP_MASK);
> +		if (host->boarddata.tuning_start_tap)
> +			tmp |= host->boarddata.tuning_start_tap;
> +		else
> +			tmp |= ESDHC_TUNING_START_TAP_DEFAULT;

You could initialize boarddata.tuning_start_tap with ESDHC_TUNING_START_TAP_DEFAULT
in fsl_esdhc_probe_dt().

> +
> +		if (host->boarddata.tuning_step) {

Same here.

Sascha

> +			tmp |= host->boarddata.tuning_step
> +				<< ESDHC_TUNING_STEP_SHIFT;
> +		} else {
> +			tmp |= ESDHC_TUNING_STEP_DEFAULT
> +				<< ESDHC_TUNING_STEP_SHIFT;
> +		}
> +
> +		/* Disable the CMD CRC check for tuning, if not, need to
> +		 * add some delay after every tuning command, because
> +		 * hardware standard tuning logic will directly go to next
> +		 * step once it detect the CMD CRC error, will not wait for
> +		 * the card side to finally send out the tuning data, trigger
> +		 * the buffer read ready interrupt immediately. If usdhc send
> +		 * the next tuning command some eMMC card will stuck, can't
> +		 * response, block the tuning procedure or the first command
> +		 * after the whole tuning procedure always can't get any response.
> +		 */
> +		tmp |= ESDHC_TUNING_CMD_CRC_CHECK_DISABLE;
> +		sdhci_write32(&host->sdhci, ESDHC_TUNING_CTRL, tmp);
> +	}
> +
> +	return 0;
>  }
>  
>  static const struct mci_ops fsl_esdhc_ops = {
> @@ -300,6 +351,21 @@ static const struct mci_ops fsl_esdhc_ops = {
>  	.card_present = esdhc_card_present,
>  };
>  
> +static void fsl_esdhc_probe_dt(struct device *dev, struct fsl_esdhc_host *host)
> +{
> +	struct device_node *np = dev->of_node;
> +	struct esdhc_platform_data *boarddata = &host->boarddata;
> +
> +	if (!IS_ENABLED(CONFIG_MCI_TUNING))
> +		return;
> +
> +	of_property_read_u32(np, "fsl,tuning-step", &boarddata->tuning_step);
> +	of_property_read_u32(np, "fsl,tuning-start-tap",
> +			     &boarddata->tuning_start_tap);
> +	if (of_property_read_u32(np, "fsl,delay-line", &boarddata->delay_line))
> +		boarddata->delay_line = 0;
> +}
> +

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


