Delivery-date: Mon, 21 Aug 2023 08:01:36 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qXxyp-0033j4-LV
	for lore@lore.pengutronix.de; Mon, 21 Aug 2023 08:01:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qXxyn-0000WN-Ji
	for lore@pengutronix.de; Mon, 21 Aug 2023 08:01:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DDA8k96VLR/2QjtbkLFhPo/c/tAOr143LcjHoe6hY2I=; b=Zb3HPJA0dT/8RnkpMNlbg9DG+e
	aCm2LJ3VJ/QwekXYQhfWz7bfgTOojARRHEYTX+vlS44hIyMhF8bKwqOyhT9kggEoLAJLO2GFNLQ7I
	dppZvhlH63bwr2HV3fQOKHb5Oo5wapCLbXzldd7YJeVMj4bGOI6Vb1W+tfLTpPL3ErCkPNPQWPJpb
	16KaCdc9y6xwrWV7kkJbAHJl95WEE+BDcj1aFcQvhxzqC1moGGlxNtmF4SKMu6DCO1wF8wGGgq9J0
	SrDCdhSKV3VoraGMG4LvVJoHaARpUPhskhisyUuJWbk5Zj261pAgLavQNHWwwxGrGdX8ewqT7+znk
	9AzA+7vA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qXxxK-00DDIT-1G;
	Mon, 21 Aug 2023 06:00:02 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qXxxG-00DDGz-1w
	for barebox@lists.infradead.org;
	Mon, 21 Aug 2023 06:00:00 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qXxxB-0008OU-Sj; Mon, 21 Aug 2023 07:59:53 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qXxxB-0005qM-9c; Mon, 21 Aug 2023 07:59:53 +0200
Date: Mon, 21 Aug 2023 07:59:53 +0200
To: Jules Maselbas <jmaselbas@kalray.eu>
Cc: barebox@lists.infradead.org
Message-ID: <20230821055953.GP5650@pengutronix.de>
References: <20230818142244.17157-1-jmaselbas@kalray.eu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230818142244.17157-1-jmaselbas@kalray.eu>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230820_225958_641991_A547866B 
X-CRM114-Status: GOOD (  19.29  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v3 1/7] mci: sdhci: Set 8-bit host caps
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Aug 18, 2023 at 04:22:38PM +0200, Jules Maselbas wrote:
> Set the mci::host_cap MMC_CAP_8_BIT_DATA if supported by the hardware.
> 
> Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
> ---
>  drivers/mci/sdhci.c | 3 +++
>  1 file changed, 3 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/drivers/mci/sdhci.c b/drivers/mci/sdhci.c
> index 635884e2a2..f6deea4020 100644
> --- a/drivers/mci/sdhci.c
> +++ b/drivers/mci/sdhci.c
> @@ -568,6 +568,9 @@ int sdhci_setup_host(struct sdhci *host)
>  	if (host->caps & SDHCI_CAN_DO_HISPD)
>  		mci->host_caps |= MMC_CAP_MMC_HIGHSPEED | MMC_CAP_SD_HIGHSPEED;
>  
> +	if (host->caps & SDHCI_CAN_DO_8BIT)
> +		mci->host_caps |= MMC_CAP_8_BIT_DATA;
> +
>  	host->sdma_boundary = SDHCI_DMA_BOUNDARY_512K;
>  
>  	return 0;
> -- 
> 2.41.0
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


