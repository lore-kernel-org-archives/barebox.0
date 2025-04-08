Delivery-date: Tue, 08 Apr 2025 09:54:22 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u23mo-009tir-13
	for lore@lore.pengutronix.de;
	Tue, 08 Apr 2025 09:54:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u23mn-0006aR-P1
	for lore@pengutronix.de; Tue, 08 Apr 2025 09:54:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GMexwJUK/GpoZSy7tquxTZTVtj9o7e4RE+SzgD0PBAA=; b=GaCnMilw/SwqG8zsQ66QD3SqWF
	qMTmBoTt4iudLUfQUY3QdKtCWpn1EmLyfvH3F0HQaKxUMu86SiAmICyHqXv4NekoYSdruLb+Jshpd
	eDXLyINRRfdCyLcFc8/GqrR651pdm9E0ixGbliTksbRr2r0EnH4tcECpunpzp9lT4hzEP9DTKrMkd
	h8sI6SvOERXMYYf/dQiypBhFJa5iHmnFMHKCQC7jznmXYVOj2jqksNKTRbGqNAsPnSPneqJrxWiL3
	01TTx7A8GVU1yGQkc4JSeZhZ17+pzzytIkbcOlvlOHoO8RpYlmvrds2UCefvPrWZpT2J7ELou5Kx5
	+FjamFfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u23mH-000000039ts-3EdU;
	Tue, 08 Apr 2025 07:53:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u23ig-000000039JV-00hZ
	for barebox@lists.infradead.org;
	Tue, 08 Apr 2025 07:50:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1u23ie-0005QE-9s; Tue, 08 Apr 2025 09:50:04 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1u23ie-003tPt-0M;
	Tue, 08 Apr 2025 09:50:04 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1u23ie-006TAV-02;
	Tue, 08 Apr 2025 09:50:04 +0200
Date: Tue, 8 Apr 2025 09:50:03 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <Z_TVK5M8QOBcv424@pengutronix.de>
References: <20250408070339.53470-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250408070339.53470-1-eagle.alexander923@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250408_005006_120606_8EC04D98 
X-CRM114-Status: GOOD (  21.24  )
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
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] mci: mci-core: Compile fix
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Apr 08, 2025 at 10:03:39AM +0300, Alexander Shiyan wrote:
> Fix compilation error:
> drivers/mci/mci-core.c: In function 'mci_part_add':
> drivers/mci/mci-core.c:693:32: error: invalid storage class for function 'mmc_extract_gpp_units'
>   693 | static __maybe_unused unsigned mmc_extract_gpp_units(const char *ecsd_info, unsigned idx)
>       |                                ^~~~~~~~~~~~~~~~~~~~~
> drivers/mci/mci-core.c:693:1: warning: ISO C90 forbids mixed declarations and code [-Wdeclaration-after-statement]
>   693 | static __maybe_unused unsigned mmc_extract_gpp_units(const char *ecsd_info, unsigned idx)
> ...
> 
> Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
> ---
>  drivers/mci/mci-core.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
> index 76d679ed2e..2c82379b0d 100644
> --- a/drivers/mci/mci-core.c
> +++ b/drivers/mci/mci-core.c
> @@ -676,7 +676,7 @@ static void mci_part_add(struct mci *mci, uint64_t size,
>  
>  	if (area_type == MMC_BLK_DATA_AREA_RPMB)
>  		mci->rpmb_part = part;
> -	else if (area_type == MMC_BLK_DATA_AREA_MAIN) {
> +	else if (area_type == MMC_BLK_DATA_AREA_MAIN)

That was a mismerge on the -next branch. I just fixed it up, thanks for
noting.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


