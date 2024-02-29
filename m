Delivery-date: Thu, 29 Feb 2024 17:20:25 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfj8z-00GEUi-0z
	for lore@lore.pengutronix.de;
	Thu, 29 Feb 2024 17:20:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfj8y-0007mJ-NR
	for lore@pengutronix.de; Thu, 29 Feb 2024 17:20:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2+8Cn0O9FcfHn9S6i56Xm7DQe1pbZRmemeO3+8EA7i8=; b=Dzktq7fC828h40Eh2gAEEKIBRi
	SWl7tED/S8toj6DPYVWRfJWF9nLt1FJfCVEAC1t18BrQn6UdeLR3OgOMeLPtm/h1fUoP9ispk/l0j
	TGWOD4+6K8X9tPcp1pPDwWPFnfdP5iUfQRjnF+iNc+3ZJE3gR8d36dK5diQBTgsVAWgFsDr2n6onA
	CmFnnjU/17wY27HeC7le7baSCh/dfZM7vHdjk+jsKkHHcb6YuRQT281/EZOr6lGIpnZEskaf0pMim
	QiwkNu6XTQqM9zbwih3+o57Zj2AjR2afhcwlrDiPfNiauOspw2lmnxYY0cOluT/lTARtfkVlJ1/MO
	m+UWuROw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfj8Z-0000000EFz3-3DnX;
	Thu, 29 Feb 2024 16:19:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfj8R-0000000EFwX-173g
	for barebox@lists.infradead.org;
	Thu, 29 Feb 2024 16:19:53 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rfj8P-0007Ja-JR; Thu, 29 Feb 2024 17:19:49 +0100
Message-ID: <c3ac5463-5582-4928-a87b-d9f0156e9133@pengutronix.de>
Date: Thu, 29 Feb 2024 17:19:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Yann Sionneau <ysionneau@kalrayinc.com>, barebox@lists.infradead.org
Cc: Jonathan Borne <jborne@kalrayinc.com>,
 Julian Vetter <jvetter@kalrayinc.com>, Jules Maselbas <jmaselbas@zdiv.net>
References: <20240229155700.17443-1-ysionneau@kalrayinc.com>
 <20240229155700.17443-2-ysionneau@kalrayinc.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240229155700.17443-2-ysionneau@kalrayinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240229_081951_824332_464B68F7 
X-CRM114-Status: GOOD (  17.69  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 2/4] mci: dwcmshc-sdhci: Fix f_max computation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 29.02.24 16:56, Yann Sionneau wrote:
> f_max was possibly set from max-frequency DT property
> by mci_of_parse() and then overwritten few lines later
> with the clock frequency, making it impossible to
> reduce the clock frequency from DT.
> 
> Move the call to mci_of_parse() after the first assignment
> to f_max.
> 
> Signed-off-by: Yann Sionneau <ysionneau@kalrayinc.com>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> 
> ---
>  drivers/mci/dwcmshc-sdhci.c | 9 +++++++--
>  1 file changed, 7 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/mci/dwcmshc-sdhci.c b/drivers/mci/dwcmshc-sdhci.c
> index 7cc6fe3f18..d9c51752db 100644
> --- a/drivers/mci/dwcmshc-sdhci.c
> +++ b/drivers/mci/dwcmshc-sdhci.c
> @@ -316,12 +316,17 @@ static int dwcmshc_probe(struct device *dev)
>  	mci->send_cmd = dwcmshc_mci_send_cmd;
>  	mci->card_present = dwcmshc_mci_card_present;
>  
> -	mci_of_parse(&host->mci);
> -
>  	sdhci_setup_host(&host->sdhci);
>  
>  	mci->max_req_size = 0x8000;
> +	/*
> +	 * Let's first initialize f_max to the DT clock freq
> +	 * Then mci_of_parse can override if with the content
> +	 * of the 'max-frequency' DT property if it is present.
> +	 * Then we can finish by computing the f_min.
> +	 */
>  	mci->f_max = clk_get_rate(clk);
> +	mci_of_parse(&host->mci);
>  	mci->f_min = mci->f_max / SDHCI_MAX_DIV_SPEC_300;
>  
>  	dev->priv = host;

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



