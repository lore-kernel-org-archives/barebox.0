Delivery-date: Mon, 11 May 2026 14:56:43 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wMQBf-000YeO-1j
	for lore@lore.pengutronix.de;
	Mon, 11 May 2026 14:56:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wMQBe-0001s9-Db
	for lore@pengutronix.de; Mon, 11 May 2026 14:56:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xkXBif6ig/ArB/V5N0e2k65JptuxuGrdOF9/wI2+aKw=; b=hVcKisakMuMupKX7J0ONS84M4g
	Zs4uLo6XbA4Nw6gO7CpbfGzX4XCmAT49tYV+d9HqBtgTSyx6oMjJ13m6lJLbhOUSNAG9XHabFWQX7
	BYz7k3Hp82IwXtwEEIicnrSpAjT65jRh9/ac4s983bBkuGz2RTc4gPQYc7Y8lGe8y4mC1K0tDJ5P6
	fCOnGbGGyRKS92zaCXq2oHI+i7Zgm3gg+JZqx/Men55jhSR/MCjmgDJJFXTmLneYU6CNexE81WLuA
	iz6/T3Jrl+ebyIZVfRHy1YwYwRcoj+XcQQVedu6wV9n57fvTgy53LTkZNauGH4eIwqP6SIs5506Hz
	A5euTHSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMQA6-0000000Ddn8-3iPV;
	Mon, 11 May 2026 12:55:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMQA2-0000000DdlU-1lex
	for barebox@lists.infradead.org;
	Mon, 11 May 2026 12:55:05 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wMQA0-0001Vu-Ph; Mon, 11 May 2026 14:55:00 +0200
Message-ID: <5be49069-569b-4867-a901-04a34c01932b@pengutronix.de>
Date: Mon, 11 May 2026 14:55:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
Cc: "Claude Opus 4.7" <noreply@anthropic.com>
References: <20260511-rockchip-emmc-hs400-v1-0-515fb6d20e12@pengutronix.de>
 <20260511-rockchip-emmc-hs400-v1-6-515fb6d20e12@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260511-rockchip-emmc-hs400-v1-6-515fb6d20e12@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260511_055504_343311_3BA80E00 
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 06/10] mci: rockchip-dwcmshc-sdhci: use ADMA2
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 5/11/26 2:08 PM, Sascha Hauer wrote:
> The SDMA engine doesn't seem to be fast enough to keep up with HS400
> support. In preparation to add HS400 support to the driver switch to
> ADMA when available.
> 
> Assisted-by: Claude Opus 4.7 <noreply@anthropic.com>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/mci/rockchip-dwcmshc-sdhci.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/drivers/mci/rockchip-dwcmshc-sdhci.c b/drivers/mci/rockchip-dwcmshc-sdhci.c
> index 04ee528f07..23c887e906 100644
> --- a/drivers/mci/rockchip-dwcmshc-sdhci.c
> +++ b/drivers/mci/rockchip-dwcmshc-sdhci.c
> @@ -361,6 +361,11 @@ static int rk_sdhci_probe(struct device *dev)
>  
>  	sdhci_setup_host(&host->sdhci);
>  
> +	ret = sdhci_setup_adma(&host->sdhci);
> +	if (ret && ret != -ENOTSUPP)
> +		dev_warn(dev, "ADMA setup failed (%pe), falling back to SDMA\n",
> +			 ERR_PTR(ret));

As transparent fallback is implemented, could this be folded into
sdhci_setup_host, so it's opt-out instead of opt-in?

Opt-out could be setting SDHCI_QUIRK_BROKEN_ADMA.

Cheers,
Ahmad

> +
>  	dev->priv = host;
>  
>  	return mci_register(&host->mci);
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



