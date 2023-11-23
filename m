Delivery-date: Thu, 23 Nov 2023 15:56:05 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r6B7d-005wvc-00
	for lore@lore.pengutronix.de;
	Thu, 23 Nov 2023 15:56:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r6B7b-0002uy-Fv
	for lore@pengutronix.de; Thu, 23 Nov 2023 15:56:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oIntPsoP5EDjowXfmf+cXJ+x78kiECK736xWBd9yvn8=; b=mnYoKl1qB+TsYs5Fryk3sq5t1O
	TYP8pw19Tkj7QMB9ZMxShQPV+AHB3lASEU/O9fvxKyq75MxabXCg2gWN6I6D6V/VVFgz0o6ic8jSf
	dpYyOgT2t/3L90RAHkNpsyJlq3YaKLMlwogFnfl9lcKNnJIe3CcFh2xfah+hjai7xwlEaWL9KMYk7
	a0No+Ji8iEcSBhJ0A/gog337glIXkV9ovi0vovcAT3iGlj2hcuJl+LroMH2gRYhIx6EF22WVRID62
	XfNiHIupL0lhaolh3viLnmqxpaKouAo6lpx0xmpFp6XHF8nyMGurQK6ctW3KmH1D/hsFW0opyGIWz
	ttet0UGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r6B6O-00555T-0h;
	Thu, 23 Nov 2023 14:54:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r6B6K-00554m-12
	for barebox@lists.infradead.org;
	Thu, 23 Nov 2023 14:54:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r6B6J-0002a8-5c; Thu, 23 Nov 2023 15:54:43 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r6B6I-00B3v8-PO; Thu, 23 Nov 2023 15:54:42 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r6B6I-003Tws-Mx; Thu, 23 Nov 2023 15:54:42 +0100
Date: Thu, 23 Nov 2023 15:54:42 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20231123145442.GO3359458@pengutronix.de>
References: <20231123103808.432548-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231123103808.432548-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231123_065444_360363_8DA2F74E 
X-CRM114-Status: GOOD (  26.24  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/2] mci: core: check for both 3.3v and 1.8v DDR support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Nov 23, 2023 at 11:38:07AM +0100, Ahmad Fatoum wrote:
> We don't yet support the higher speed modes that require voltage
> switching, so regulator interaction in barebox was so far limited to
> enabling the supply. barebox also doesn't keep track what voltage the
> eMMC is running on, so it doesn't know whether MMC_CAP_MMC_1_8V_DDR
> or MMC_CAP_MMC_3_3V_DDR is the correct bit to check. Let's just accept
> either until we add support for higher speed modes. barebox will
> fallback to the non-DDR speed mode anyway if it fails to read the
> ext_csd using it.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/mci/mci-core.c | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
> index 175753cca5d7..07eca96a9d61 100644
> --- a/drivers/mci/mci-core.c
> +++ b/drivers/mci/mci-core.c
> @@ -1289,7 +1289,13 @@ static int mci_mmc_select_hs_ddr(struct mci *mci)
>  	struct mci_host *host = mci->host;
>  	int ret;
>  
> -	if (!(mci_caps(mci) & MMC_CAP_MMC_1_8V_DDR))
> +	/*
> +	 * barebox MCI core does not change voltage, so we don't know here
> +	 * if we should check for the 1.8v or 3.3v mode. Until we support
> +	 * higher speed modes that require voltage switching like HS200/HS400,
> +	 * let's just check for either bit.
> +	 */
> +	if (!(mci_caps(mci) & (MMC_CAP_MMC_1_8V_DDR | MMC_CAP_MMC_3_3V_DDR)))
>  		return 0;
>  
>  	ret = mci_mmc_try_bus_width(mci, host->bus_width, MMC_TIMING_MMC_DDR52);
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


