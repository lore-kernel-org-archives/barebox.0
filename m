Delivery-date: Mon, 18 May 2026 12:00:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wOulz-0015gE-0v
	for lore@lore.pengutronix.de;
	Mon, 18 May 2026 12:00:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wOuly-00015s-GW
	for lore@pengutronix.de; Mon, 18 May 2026 12:00:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5k1GMDJTerH+PiwJsX/pBTKl+eTrRj3ZYG/1HkVRyuw=; b=2bE6+xLbPvMAh3NFDVMHowsMyk
	GhPK3KMeUGmI7yjJX2RY+9WJQTZaF6AC1LTqaRNOT+/GCdloxcnXBU6w5/E9Jef4QF2gjzJqt0r8i
	6m1kCxGiMtWv4Er9ms7YFIwMri344BYkdoYFPIV5rks/qDE7459/0oJ04GLJmwhhVATEUJEO9/hk3
	alfPW3y9gbHXD4KJ3Qbih7hiqKCjDmvR2XFpUoUAEx4XpCPtzWlCBO9ol/JKgnnWRdaVnCY5Zjxye
	FU3xbnXloCE9eXCKvLZntBEKDSk0THP70tdkcuesTFSDKwM/NLRfFot+xj1QEeGpLnb4jIowzTy+c
	h9tBsZfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOuku-0000000F7u8-3emW;
	Mon, 18 May 2026 09:59:24 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOukt-0000000F7tb-3UAC
	for barebox@bombadil.infradead.org;
	Mon, 18 May 2026 09:59:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
	In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=5k1GMDJTerH+PiwJsX/pBTKl+eTrRj3ZYG/1HkVRyuw=; b=RQD9DVKqEFNwfNhJGp5FA4ZHVm
	HgP3XhPMCBm7dGKp/LydRnVvRu2dAkZj0CojtPA+ao1wpjWoTebH4QxTaCaSVAyVwRA79Pj/JboP7
	wNi/dayf3i79whs/l8oOPYiZXt4SHJpjjwJDDmS2Z35I39etRCZJ3doYWv1Lp0M8nd5b64X9WESks
	OrOQOD/uSdNjerZx+OzAwarUxj0/D2ALiayjtGUN141wsuGpVYy/CigMMwBZgr1Dc9On4PxcGBA01
	vDhouXi7tZxHfzHEQSU3FFajmtPn149EaldLTOAavPO6YdlqjB5XtB0sTG0gg2ahZwn1kxnHovdh+
	NOsipauQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOukq-00000004dRW-27kO
	for barebox@lists.infradead.org;
	Mon, 18 May 2026 09:59:22 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wOukq-0000sH-3u; Mon, 18 May 2026 11:59:20 +0200
Message-ID: <88c88a04-9511-4317-9e6a-f38d532a02d5@pengutronix.de>
Date: Mon, 18 May 2026 11:59:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
Cc: "Claude Opus 4.7" <noreply@anthropic.com>
References: <20260511-rockchip-emmc-hs400-v1-0-515fb6d20e12@pengutronix.de>
 <20260511-rockchip-emmc-hs400-v1-8-515fb6d20e12@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260511-rockchip-emmc-hs400-v1-8-515fb6d20e12@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_105920_902193_CB7E6C78 
X-CRM114-Status: GOOD (  19.32  )
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
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 08/10] mci: sdhci: rockchip: distinguish IP revision 0
 (rk3568) from 1 (rk3576/rk3588)
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 5/11/26 2:08 PM, Sascha Hauer wrote:
> The dwcmshc IP comes in two revisions with subtly different DLL needs.
> Upstream Linux (sdhci-of-dwcmshc.c) tracks this via a per-SoC
> revision field; mirror that here so HS400 works robustly on rk3588
> and we can add rk3576 with the right behaviour.
> 
> Revision 0 (rk3566, rk3568):
>   - DLL_RXCLK source-select needs DLL_RXCLK_NO_INVERTER.
>   - HS400 uses the default 0x10 TX clock tap and leaves
>     DECMSHC_EMMC_DLL_CMDOUT untouched.
> 
> Revision 1 (rk3576, rk3588, ...):
>   - DLL_RXCLK source-select must be 0 (inverted), not NO_INVERTER.
>   - HS400 needs a 90-degree TX clock tap together with a matching
>     CMDOUT tap programmed into DECMSHC_EMMC_DLL_CMDOUT (with
>     DLL_CMDOUT_SRC_CLK_NEG | DLL_CMDOUT_EN_SRC_CLK_NEG |
>     DWCMSHC_EMMC_DLL_DLYENA | DLL_CMDOUT_TAPNUM_90_DEGREES |
>     DLL_CMDOUT_TAPNUM_FROM_SW).
> 
> Assisted-by: Claude Opus 4.7 <noreply@anthropic.com>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  drivers/mci/rockchip-dwcmshc-sdhci.c | 60 +++++++++++++++++++++++++++++++-----
>  1 file changed, 52 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/mci/rockchip-dwcmshc-sdhci.c b/drivers/mci/rockchip-dwcmshc-sdhci.c
> index fa2d9964a5..4b2ee03e9a 100644
> --- a/drivers/mci/rockchip-dwcmshc-sdhci.c
> +++ b/drivers/mci/rockchip-dwcmshc-sdhci.c
> @@ -78,10 +78,23 @@ enum {
>  	CLK_MAX,
>  };
>  
> +struct rk_sdhci_soc_data {
> +	u8 revision;
> +};
> +
> +static const struct rk_sdhci_soc_data rk_sdhci_rk3568_data = {
> +	.revision = 0,
> +};
> +
> +static const struct rk_sdhci_soc_data rk_sdhci_rk35xx_data = {
> +	.revision = 1,
> +};
> +
>  struct rk_sdhci_host {
>  	struct mci_host		mci;
>  	struct sdhci		sdhci;
>  	struct clk_bulk_data	clks[CLK_MAX];
> +	const struct rk_sdhci_soc_data *soc;
>  };
>  
>  
> @@ -132,9 +145,14 @@ static void rk_sdhci_set_clock(struct rk_sdhci_host *host, unsigned int clock)
>  
>  	host->mci.ios.clock = 0;
>  
> -	/* DO NOT TOUCH THIS SETTING */
> -	extra = DWCMSHC_EMMC_DLL_DLYENA |
> -		DLL_RXCLK_NO_INVERTER << DWCMSHC_EMMC_DLL_RXCLK_SRCSEL;
> +	/*
> +	 * Revision 0 IPs (rk3568) need DLL_RXCLK_NO_INVERTER; revision 1
> +	 * (rk3576, rk3588 and later) must leave the source-select field at
> +	 * 0 (inverted).
> +	 */
> +	extra = DWCMSHC_EMMC_DLL_DLYENA;
> +	if (host->soc->revision == 0)
> +		extra |= DLL_RXCLK_NO_INVERTER << DWCMSHC_EMMC_DLL_RXCLK_SRCSEL;
>  	sdhci_write32(&host->sdhci, DWCMSHC_EMMC_DLL_RXCLK, extra);
>  
>  	if (clock == 0)
> @@ -210,6 +228,23 @@ static void rk_sdhci_set_clock(struct rk_sdhci_host *host, unsigned int clock)
>  		0x3 << 19;  /* post-change delay */
>  	sdhci_write32(&host->sdhci, DWCMSHC_EMMC_ATCTRL, extra);
>  
> +	/*
> +	 * On revision 1 IPs, HS400 needs a 90-degree TX clock tap together
> +	 * with a matching CMDOUT-tap programmed via DECMSHC_EMMC_DLL_CMDOUT.
> +	 * Revision 0 keeps the default 0x10 TX tap and leaves CMDOUT alone.
> +	 */
> +	if (host->soc->revision == 1 &&
> +	    host->mci.ios.timing == MMC_TIMING_MMC_HS400) {
> +		txclk_tapnum = DLL_TXCLK_TAPNUM_90_DEGREES;
> +
> +		extra = DLL_CMDOUT_SRC_CLK_NEG |
> +			DLL_CMDOUT_EN_SRC_CLK_NEG |
> +			DWCMSHC_EMMC_DLL_DLYENA |
> +			DLL_CMDOUT_TAPNUM_90_DEGREES |
> +			DLL_CMDOUT_TAPNUM_FROM_SW;
> +		sdhci_write32(&host->sdhci, DECMSHC_EMMC_DLL_CMDOUT, extra);
> +	}
> +
>  	extra = DWCMSHC_EMMC_DLL_DLYENA |
>  		DLL_TXCLK_TAPNUM_FROM_SW |
>  		DLL_RXCLK_NO_INVERTER << DWCMSHC_EMMC_DLL_RXCLK_SRCSEL |
> @@ -327,6 +362,10 @@ static int rk_sdhci_probe(struct device *dev)
>  
>  	mci = &host->mci;
>  
> +	host->soc = device_get_match_data(dev);
> +	if (!host->soc)
> +		return -ENODEV;
> +
>  	iores = dev_request_mem_resource(dev, 0);
>  	if (IS_ERR(iores))
>  		return PTR_ERR(iores);
> @@ -374,12 +413,17 @@ static int rk_sdhci_probe(struct device *dev)
>  
>  static __maybe_unused struct of_device_id rk_sdhci_compatible[] = {
>  	{
> -		.compatible = "rockchip,rk3562-dwcmshc"
> -	},
> -	{
> -		.compatible = "rockchip,rk3568-dwcmshc"
> +		.compatible = "rockchip,rk3562-dwcmshc",
> +		.data = &rk_sdhci_rk3568_data,
> +	}, {
> +		.compatible = "rockchip,rk3568-dwcmshc",
> +		.data = &rk_sdhci_rk3568_data,
> +	}, {
> +		.compatible = "rockchip,rk3576-dwcmshc",
> +		.data = &rk_sdhci_rk35xx_data,
>  	}, {
> -		.compatible = "rockchip,rk3588-dwcmshc"
> +		.compatible = "rockchip,rk3588-dwcmshc",
> +		.data = &rk_sdhci_rk35xx_data,
>  	}, {
>  		/* sentinel */
>  	}
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



