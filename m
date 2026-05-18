Delivery-date: Mon, 18 May 2026 11:58:07 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wOujf-0015eC-1e
	for lore@lore.pengutronix.de;
	Mon, 18 May 2026 11:58:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wOuje-0000jk-RT
	for lore@pengutronix.de; Mon, 18 May 2026 11:58:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aOK7l2RAIJBpYkOlRN1z04NCwlsMSfytx1XS/JiLfi8=; b=25kOmBsdRLaqPFeIx+4ZM/CDGz
	uYmOXPoLpw2+YJvPbLfMO6Dk54aFvSpGoTx3vyS8MycPdF1dlEz2yty4EfKfdQiUGTOkuTDO7hQqH
	mGKD7mx/LZgZ2BzEctfcVhSzsC/JRfaZcHw45W06+Airugsa4bhBZvGS3KQLuzLqFWSJs0NKJpV7S
	e8+l2YxGWPkYyWrG2zbjgjhowvLThgVb+36x01Mrk/wc/glf/jCUluiq631pvdwfKfdsDMQkkiUIW
	3YgBfF38cPobWt8bDx9yVFzS8/L5Vz9CH2GUPd/YGeystSKj4LlTX96S4I5srlQ/bq7HQgD268reU
	2UgkPJlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOuig-0000000F7AJ-3M55;
	Mon, 18 May 2026 09:57:06 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOuif-0000000F79w-13gN
	for barebox@bombadil.infradead.org;
	Mon, 18 May 2026 09:57:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
	In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=aOK7l2RAIJBpYkOlRN1z04NCwlsMSfytx1XS/JiLfi8=; b=nJ3LydiSLIKmA0pUaPpIOOZqIl
	R6hE2SIqvyG9xs6qe+EE4eBJRiZmND0Zp1AIiVdq6XAP/+Re/SvPartz+pyU8Sdnnf6CxcqB5H28t
	cE4WP5ybtdolg4rzeRKlxdO1AkMYadhj97GXZrZLay8Utg3+7r/JL0Tgp3NHMFvx3LlPMo4htzuDE
	kmj45hj3u8ca/TujwaJvDlzQv5sodUNY8tyGkZ72BH7M1iKxS+BhaSPGX/wSQ0qOZV/n4rdgGMTZy
	fgVI6p5j0qz9T6/byMosVjk5Ehy4uT9LRsFkpq44o4dSqxLiktvxyvmDQRhjCDJAkYjDS+rWeKTli
	TbngGtfg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOuic-00000004dIQ-0DqZ
	for barebox@lists.infradead.org;
	Mon, 18 May 2026 09:57:04 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wOuib-0000c6-C7; Mon, 18 May 2026 11:57:01 +0200
Message-ID: <e6e1f40b-7199-4e9b-b85d-5faa4b716bd0@pengutronix.de>
Date: Mon, 18 May 2026 11:57:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
Cc: "Claude Opus 4.7" <noreply@anthropic.com>
References: <20260511-rockchip-emmc-hs400-v1-0-515fb6d20e12@pengutronix.de>
 <20260511-rockchip-emmc-hs400-v1-7-515fb6d20e12@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260511-rockchip-emmc-hs400-v1-7-515fb6d20e12@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_105702_315182_01E254FF 
X-CRM114-Status: GOOD (  15.31  )
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
Subject: Re: [PATCH 07/10] mci: sdhci: rockchip: set TX-path source-select bit
 in DWCMSHC_EMMC_DLL_TXCLK
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 5/11/26 2:08 PM, Sascha Hauer wrote:
> Linux's sdhci-of-dwcmshc has, since rk3588 support was added in 2022,
> unconditionally OR'd DLL_RXCLK_NO_INVERTER << DWCMSHC_EMMC_DLL_RXCLK_SRCSEL
> (bit 29) into the DWCMSHC_EMMC_DLL_TXCLK write that follows DLL lock
> in the high-speed path. Despite its name, position 29 in this
> register controls a TX-path source-select; the constant just happens
> to share the SRCSEL shift with the RX path register.
> 
> Barebox was never writing this bit. The omission was harmless on
> controllers where the RX path's matching write (a few lines earlier
> in this function) already sets the same bit position 29 - because on
> those parts both clock paths end up with a working source-select.
> The bit is needed for the TX path to have a working source-select in
> its own right, however; the next commit's revision split, which
> correctly stops setting the RX-path bit on rk3588 silicon, would
> otherwise leave the TX path with no source-select at all and break
> eMMC writes.
> 
> Match Linux's behaviour: set the bit unconditionally in the TXCLK
> write.
> 
> Assisted-by: Claude Opus 4.7 <noreply@anthropic.com>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Acked-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  drivers/mci/rockchip-dwcmshc-sdhci.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/mci/rockchip-dwcmshc-sdhci.c b/drivers/mci/rockchip-dwcmshc-sdhci.c
> index 23c887e906..fa2d9964a5 100644
> --- a/drivers/mci/rockchip-dwcmshc-sdhci.c
> +++ b/drivers/mci/rockchip-dwcmshc-sdhci.c
> @@ -212,6 +212,7 @@ static void rk_sdhci_set_clock(struct rk_sdhci_host *host, unsigned int clock)
>  
>  	extra = DWCMSHC_EMMC_DLL_DLYENA |
>  		DLL_TXCLK_TAPNUM_FROM_SW |
> +		DLL_RXCLK_NO_INVERTER << DWCMSHC_EMMC_DLL_RXCLK_SRCSEL |
>  		txclk_tapnum;
>  	sdhci_write32(&host->sdhci, DWCMSHC_EMMC_DLL_TXCLK, extra);
>  
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



