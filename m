Delivery-date: Fri, 25 Jul 2025 08:52:23 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ufCI3-003VF3-2u
	for lore@lore.pengutronix.de;
	Fri, 25 Jul 2025 08:52:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ufCI3-0000SR-AR
	for lore@pengutronix.de; Fri, 25 Jul 2025 08:52:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VTUw2YRQY0iOaqzt7sykmBgYIuKgcdS+otIrSVCn3MU=; b=XjtAlkOBGCwlUCrHfgSJe5YGY3
	tFRDa5cAx/BNGS6PQ1cNF1/SWAyU9SBSdqag5RD1hCIMLaoxbEzjykO85c1rdybzpZqvnr82oKh9j
	MWWk9L2XsE1C1pqQFFhaFnllQD0R8wtuZrsy+fwCNDfUPSCPE0ODPQojrzgRt2DWFVFBAIpsx9ALw
	y5Hz+fPG2FhGMgSnXrjMRrYMMfv12nEvcZ7CdtDZiGcqce9P/Owhh9kne2th4l1DDD7eo7MXNbVPW
	DdfnRohlquMaic4XE7az/a/GgNpM0KKnVFCj5y2JSk/+b9ReeDw6Kt9JlA3Q+7Mi5BSnBNpyELDDG
	t3/zVG6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ufCHO-00000009C7E-04Go;
	Fri, 25 Jul 2025 06:51:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ufC36-00000009Axl-2InT
	for barebox@lists.infradead.org;
	Fri, 25 Jul 2025 06:36:58 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ufC34-0007XV-PT; Fri, 25 Jul 2025 08:36:54 +0200
Message-ID: <5c662c55-1ae5-4f8b-93a7-4e444f355f09@pengutronix.de>
Date: Fri, 25 Jul 2025 08:36:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: chalianis1@gmail.com, s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org
References: <20250725043158.184327-1-chalianis1@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20250725043158.184327-1-chalianis1@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250724_233656_592941_148990C6 
X-CRM114-Status: GOOD (  14.75  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] pinctrl: tegra30: fix typo with variables to control the
 drive state on nvidia pins.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Chali,

Thanks for your patch.

On 7/25/25 06:31, chalianis1@gmail.com wrote:
> From: Chali Anis <chalianis1@gmail.com>
> 
> Fixes: fd940ff6512b ("pinctrl: tegra30: parse drive groups")
> Signed-off-by: Chali Anis <chalianis1@gmail.com>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Cheers,
Ahmad

> ---
>  drivers/pinctrl/pinctrl-tegra30.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/pinctrl/pinctrl-tegra30.c b/drivers/pinctrl/pinctrl-tegra30.c
> index f706ae6bfdfd..c542dee96ff2 100644
> --- a/drivers/pinctrl/pinctrl-tegra30.c
> +++ b/drivers/pinctrl/pinctrl-tegra30.c
> @@ -669,31 +669,31 @@ static int pinctrl_tegra30_set_drvstate(struct pinctrl_tegra30 *ctrl,
>  	if (schmitt >= 0) {
>  		val = readl(regaddr);
>  		val &= ~(0x1 << group->schmitt_bit);
> -		val |= hsm << group->schmitt_bit;
> +		val |= schmitt << group->schmitt_bit;
>  		writel(val, regaddr);
>  	}
>  	if (pds >= 0) {
>  		val = readl(regaddr);
>  		val &= ~(((1 << group->drvdn_width) - 1) << group->drvdn_bit);
> -		val |= hsm << group->drvdn_bit;
> +		val |= pds << group->drvdn_bit;
>  		writel(val, regaddr);
>  	}
>  	if (pus >= 0) {
>  		val = readl(regaddr);
>  		val &= ~(((1 << group->drvup_width) - 1) << group->drvup_bit);
> -		val |= hsm << group->drvup_bit;
> +		val |= pus << group->drvup_bit;
>  		writel(val, regaddr);
>  	}
>  	if (srr >= 0) {
>  		val = readl(regaddr);
>  		val &= ~(((1 << group->slwr_width) - 1) << group->slwr_bit);
> -		val |= hsm << group->slwr_bit;
> +		val |= srr << group->slwr_bit;
>  		writel(val, regaddr);
>  	}
>  	if (srf >= 0) {
>  		val = readl(regaddr);
>  		val &= ~(((1 << group->slwf_width) - 1) << group->slwf_bit);
> -		val |= hsm << group->slwf_bit;
> +		val |= srf << group->slwf_bit;
>  		writel(val, regaddr);
>  	}
>  

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



