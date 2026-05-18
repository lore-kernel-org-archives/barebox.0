Delivery-date: Mon, 18 May 2026 12:10:42 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wOuvq-0015zq-06
	for lore@lore.pengutronix.de;
	Mon, 18 May 2026 12:10:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wOuvp-0003SW-7c
	for lore@pengutronix.de; Mon, 18 May 2026 12:10:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rvC5NB22aEHCouAeBpFtUhMGCdAWrR4aw5vVhVf9mbg=; b=lPxM6zx/WkUVrgMeD75fluCSzK
	alyCS3i/voROEMA0XQzDaIaNGAFENIQdqeCJiG99rwGO4yDKsqFnMrnr0I50R4SJ/XpW8JZb8vrh+
	FL5P4/vz8L1yQ377Uw7FlsmxPi9ALBVRM7pm8puxwNViQcLAc1pJ2fKSy11JuxYASpmmeeeFa3Z0/
	6IoaMJ/LfEiJIFFVEZ1e/1opGAaefUeNizEWaja5xfCGMzHMoLcW19VawU3CP4C3MNkJhmTSGI3Jg
	chT75MZh5jzbtCZ62vpC9tuiWGmxehm/NMocpfpKQoSLLD/0nMip3QxcHKtZ29aVkk7MbQFwH8PhB
	x5ZuX3bw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOuui-0000000F9na-1X6v;
	Mon, 18 May 2026 10:09:32 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOuug-0000000F9nE-2078
	for barebox@bombadil.infradead.org;
	Mon, 18 May 2026 10:09:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
	In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=rvC5NB22aEHCouAeBpFtUhMGCdAWrR4aw5vVhVf9mbg=; b=T8FbOTffiR4V0BOjQ76YCs+kL4
	DCp3chPk+iXt1P9DMx0ZKbgWhpJQYJX7bvc1v9MhUDZsST/+bTiRsveL01Ut3F//Z8xIPiPkCTkNu
	5UGmm2vkEXr2n+L5KkY0+oj8md6BQJwJlf1V5j8lujD8O5N/OCYmcUwmOSlxKeEAYNPEZSCc2h/1n
	EifJRWPH4MA2pwQ2Pae/CM+2sZbL3j0XZ2otNARJwjo0euOnC3dxlrRyU8OONESxF846XpCZ1VLRS
	J7Qis6E41OnXMtD4O6naQT05iiPChCa4qNav8ZLcHQelcufJC4xHP7ID6IlRpLz8kCKqBzu280ZCc
	B0xccgbQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOuud-00000004eHo-1B6X
	for barebox@lists.infradead.org;
	Mon, 18 May 2026 10:09:29 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wOuuc-0003IE-ES; Mon, 18 May 2026 12:09:26 +0200
Message-ID: <3b3cd41d-a71c-434f-9438-8637bbdc0496@pengutronix.de>
Date: Mon, 18 May 2026 12:09:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
Cc: "Claude Opus 4.7" <noreply@anthropic.com>
References: <20260511-rockchip-emmc-hs400-v1-0-515fb6d20e12@pengutronix.de>
 <20260511-rockchip-emmc-hs400-v1-9-515fb6d20e12@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260511-rockchip-emmc-hs400-v1-9-515fb6d20e12@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_110927_428893_ACBC28BA 
X-CRM114-Status: GOOD (  17.10  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH 09/10] mci: sdhci: rockchip: support HS400
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 5/11/26 2:08 PM, Sascha Hauer wrote:
> After sdhci_set_clock() runs sdhci_set_uhs_signaling() (which writes
> the standard SDHCI_CTRL_HS400 = 0x5 to HOST_CONTROL2's UHS field) and
> the SDCLK is gated for the high-speed DLL config, fix up two things
> that the dwcmshc controller needs in HS400:
> 
> - HOST_CONTROL2's UHS field needs DWCMSHC_CTRL_HS400 (0x7) instead of
>   the standard SDHCI_CTRL_HS400 (0x5).
> - EMMC_CONTROL.CARD_IS_EMMC (BIT 0 at offset 0x52c) must be set to
>   enable the data-strobe sampling path that HS400 uses.
> 
> The high-speed DLL branch (>52 MHz) already programs DLL_TXCLK,
> DLL_STRBIN and locks the DLL the same way HS200 does, which is what
> HS400 needs as well. Together with the core HS200 -> HS -> HS400
> transition, this lets HS400 run on rk3568 / rk3588.
> 
> Tested on a K3588 Radxa Rock5T board.
> 
> Assisted-by: Claude Opus 4.7 <noreply@anthropic.com>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

But see comment below

> ---
>  drivers/mci/rockchip-dwcmshc-sdhci.c | 20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)
> 
> diff --git a/drivers/mci/rockchip-dwcmshc-sdhci.c b/drivers/mci/rockchip-dwcmshc-sdhci.c
> index 4b2ee03e9a..3aa3f12930 100644
> --- a/drivers/mci/rockchip-dwcmshc-sdhci.c
> +++ b/drivers/mci/rockchip-dwcmshc-sdhci.c
> @@ -18,6 +18,7 @@
>  #define DWCMSHC_VER_TYPE		0x504
>  #define DWCMSHC_HOST_CTRL3		0x508
>  #define DWCMSHC_EMMC_CONTROL		0x52c
> +#define  DWCMSHC_CARD_IS_EMMC		BIT(0)
>  #define DWCMSHC_EMMC_ATCTRL		0x540
>  
>  /* Rockchip specific Registers */
> @@ -183,6 +184,25 @@ static void rk_sdhci_set_clock(struct rk_sdhci_host *host, unsigned int clock)
>  	/* Disable clock while config DLL */
>  	sdhci_write16(&host->sdhci, SDHCI_CLOCK_CONTROL, 0);
>  
> +	/*
> +	 * HS400 needs the dwcmshc-specific value (0x7) in HOST_CONTROL2's UHS
> +	 * field rather than the standard SDHCI_CTRL_HS400 (0x5) the generic
> +	 * sdhci_set_uhs_signaling() wrote. It also requires CARD_IS_EMMC in
> +	 * EMMC_CONTROL to enable the data strobe sampling path.
> +	 */
> +	if (host->mci.ios.timing == MMC_TIMING_MMC_HS400) {
> +		u16 ctrl_2;
> +
> +		ctrl_2 = sdhci_read16(&host->sdhci, SDHCI_HOST_CONTROL2);
> +		ctrl_2 &= ~SDHCI_CTRL_UHS_MASK;
> +		ctrl_2 |= DWCMSHC_CTRL_HS400;
> +		sdhci_write16(&host->sdhci, SDHCI_HOST_CONTROL2, ctrl_2);
> +
> +		extra = sdhci_read32(&host->sdhci, DWCMSHC_EMMC_CONTROL);
> +		extra |= DWCMSHC_CARD_IS_EMMC;
> +		sdhci_write32(&host->sdhci, DWCMSHC_EMMC_CONTROL, extra);

Linux does 16-bit write here (register is 4-byte aligned and bit 0 is
written). Should we do the same in barebox?

Cheers,
Ahmad

> +	}
> +
>  	if (clock <= 52000000) {
>  		/*
>  		 * Disable DLL and reset both of sample and drive clock.
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



