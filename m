Delivery-date: Thu, 07 May 2026 10:06:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKtkd-001tQ4-31
	for lore@lore.pengutronix.de;
	Thu, 07 May 2026 10:06:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKtkc-0007Kh-Hp
	for lore@pengutronix.de; Thu, 07 May 2026 10:06:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+sSZOS9auRdp1U7o8uMrkIr9FSBtJtye+BdQ7KPmN3I=; b=uocu1VBIomtSMipiBis4th1O8D
	BjEtRjLdE3tAMG+DYYAc4JStcUXss4fSp/tRMn4ThPXH2WMFbmN69mbQjVlMo1gpyIbGiRiqN4eoQ
	FHD12n38Sp1+7NatevqHS22KgK0WO+8w4Ii8BFGVfDgEruudB5Fi4baihB+86bNCGQSACPXOqJLJi
	byd/ynrFEZDeFjkDOoNR0/OQtomEs7n21lqVJHEthVpRnpSJ5W8wO26BPjhmDw8rwgAhk2UWsLpk4
	u9Md89m+afTDo9HS2gKmWdq7U3K0wh5yGTcpQnW1k1aWcxblwqk8bNbEhfgeJZmHTfnviyCo+QdOS
	+XavJ2jw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKtjS-00000003611-1Gw2;
	Thu, 07 May 2026 08:05:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKtjP-00000003605-3Iq9
	for barebox@lists.infradead.org;
	Thu, 07 May 2026 08:05:17 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wKtjO-0006cb-A1; Thu, 07 May 2026 10:05:14 +0200
Message-ID: <ef6babb6-3ba4-4917-99ee-4aab3f2d979d@pengutronix.de>
Date: Thu, 7 May 2026 10:05:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20260507-rockchip-emmc-v1-0-5e8109e8059d@pengutronix.de>
 <20260507-rockchip-emmc-v1-1-5e8109e8059d@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260507-rockchip-emmc-v1-1-5e8109e8059d@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260507_010515_830258_AB2945AB 
X-CRM114-Status: GOOD (  18.48  )
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
Subject: Re: [PATCH 1/6] mci: sdhci: rockchip: set hidspd before re-enabling
 the clock
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 5/7/26 9:02 AM, Sascha Hauer wrote:
> Linux changes the SDHCI_CTRL_HISPD bit while the clock is disabled. While
> I haven't observed any failures because of this, do the same as Linux to be
> on the safe side.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  drivers/mci/rockchip-dwcmshc-sdhci.c | 19 +++++++++----------
>  1 file changed, 9 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/mci/rockchip-dwcmshc-sdhci.c b/drivers/mci/rockchip-dwcmshc-sdhci.c
> index 8e55190eb8..981f90af63 100644
> --- a/drivers/mci/rockchip-dwcmshc-sdhci.c
> +++ b/drivers/mci/rockchip-dwcmshc-sdhci.c
> @@ -146,6 +146,15 @@ static void rk_sdhci_set_clock(struct rk_sdhci_host *host, unsigned int clock)
>  
>  	clk_set_rate(host->clks[CLK_CORE].clk, clock);
>  
> +	extra = sdhci_read8(&host->sdhci, SDHCI_HOST_CONTROL);
> +
> +	if (clock > 26000000)
> +		extra |= SDHCI_CTRL_HISPD;
> +	else
> +		extra &= ~SDHCI_CTRL_HISPD;
> +
> +	sdhci_write8(&host->sdhci, SDHCI_HOST_CONTROL, extra);
> +
>  	sdhci_set_clock(&host->sdhci, clock, clk_get_rate(host->clks[CLK_CORE].clk));
>  
>  	/* Disable cmd conflict check */
> @@ -212,7 +221,6 @@ static void rk_sdhci_set_clock(struct rk_sdhci_host *host, unsigned int clock)
>  static void rk_sdhci_set_ios(struct mci_host *mci, struct mci_ios *ios)
>  {
>  	struct rk_sdhci_host *host = to_rk_sdhci_host(mci);
> -	u16 val;
>  
>  	/* stop clock */
>  	sdhci_write16(&host->sdhci, SDHCI_CLOCK_CONTROL, 0);
> @@ -221,15 +229,6 @@ static void rk_sdhci_set_ios(struct mci_host *mci, struct mci_ios *ios)
>  		rk_sdhci_set_clock(host, ios->clock);
>  
>  	sdhci_set_bus_width(&host->sdhci, ios->bus_width);
> -
> -	val = sdhci_read8(&host->sdhci, SDHCI_HOST_CONTROL);
> -
> -	if (ios->clock > 26000000)
> -		val |= SDHCI_CTRL_HISPD;
> -	else
> -		val &= ~SDHCI_CTRL_HISPD;
> -
> -	sdhci_write8(&host->sdhci, SDHCI_HOST_CONTROL, val);
>  }
>  
>  static void print_error(struct rk_sdhci_host *host, int cmdidx)
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



