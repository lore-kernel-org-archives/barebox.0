Delivery-date: Wed, 22 May 2024 10:08:47 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s9h1j-00DPVB-0n
	for lore@lore.pengutronix.de;
	Wed, 22 May 2024 10:08:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s9h1i-0004qI-KX
	for lore@pengutronix.de; Wed, 22 May 2024 10:08:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=u167dIG+3+GJrErfLlhoPxXRPmNeUa+EM0ing+qJ21Y=; b=UcTkjcLFFP+kQE6A4EMf4yDXpm
	0TmlVXPZ7PbQcN6C6U8wlNSCNrbxSpry+wjtEYnWNjkj9eQKXrFnVvV96/SF49ayuUUOTX5t9p3Ag
	xS6v117oqNpcj6OijEkE9Q20JcGQOa5HD69WAWe4IO+DTa4yr2nEKMdEfvZTuD99mPVtc1XrvXsra
	5HA93WY4bAo+OvTRfFNXpZEUkGSx/nQhTH0y5KSfzd3laor8DoxCd8MsrNqI/nL76XjX+F8JTOJhg
	foqbxShHjonbJtEYtRzxpos0AWY0nNSsPxpib6wfznItyX2ulfe9uZO0E8KiyTlDkFWIvIjMKeq1o
	qIkmBkPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9h1C-00000002JJz-394f;
	Wed, 22 May 2024 08:08:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9h19-00000002JIc-1SId
	for barebox@lists.infradead.org;
	Wed, 22 May 2024 08:08:13 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s9h18-0004U4-1C; Wed, 22 May 2024 10:08:10 +0200
Message-ID: <c0fcd1c2-f451-4df0-b16c-ae0e17cb43fe@pengutronix.de>
Date: Wed, 22 May 2024 10:08:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jonas Richardsen <jonasrichardsen@emlix.com>, barebox@lists.infradead.org
References: <20240522061819.6150-1-jonasrichardsen@emlix.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240522061819.6150-1-jonasrichardsen@emlix.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240522_010811_439330_F115F64F 
X-CRM114-Status: GOOD (  16.82  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] mci: bcm2835: Set mci host for sdhci
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 22.05.24 08:15, Jonas Richardsen wrote:
> The pointer `sdhci.mci` is currently not being set for the bcm2835. This
> leads to a null pointer dereference for example in `sdhci_wait_idle()`
> if the `sdhci_read` function fails or times out.
> 
> Set the pointer within the `bcm2835_mci_probe` function. This is
> analogous to the behaviour seen in `arasan_sdhci_probe`,
> `fsl_esdhc_probe`, `rk_sdhci_probe` and other, similar functions.
> 
> Signed-off-by: Jonas Richardsen <jonasrichardsen@emlix.com>

Good catch. I think this should go into master:

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

This unearths some further improvement opportunities. See the series
I just Cc'd you on.

Thanks,
Ahmad

> ---
>  drivers/mci/mci-bcm2835.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/mci/mci-bcm2835.c b/drivers/mci/mci-bcm2835.c
> index 3546cc3a32..7fcf4f905b 100644
> --- a/drivers/mci/mci-bcm2835.c
> +++ b/drivers/mci/mci-bcm2835.c
> @@ -382,6 +382,7 @@ static int bcm2835_mci_probe(struct device *hw_dev)
>  	host->hw_dev = hw_dev;
>  	host->max_clock = clk_get_rate(clk);
>  
> +	host->sdhci.mci = &host->mci;
>  	host->sdhci.read32 = bcm2835_sdhci_read32;
>  	host->sdhci.write32 = bcm2835_sdhci_write32;
>  

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



