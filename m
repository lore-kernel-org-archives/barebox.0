Delivery-date: Tue, 13 Sep 2022 10:42:17 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oY1Un-003RJJ-RF
	for lore@lore.pengutronix.de; Tue, 13 Sep 2022 10:42:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oY1Ul-00058n-AH
	for lore@pengutronix.de; Tue, 13 Sep 2022 10:42:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=l188Pdqb7ZrMtWOAyaQHTNyvc4oF53MYDqzLG9nRWN0=; b=uAR2WMK7aZZGSW4n2b2lM7s3BK
	zmGP3JeLXo+znTv1c9K744VXRw7tOiPngoZttdy52YYa47ihts5eWQBAK2QAzgpCuR9pijTSxMfHE
	1DXoIIWJf3h41klX0CwJAV7MG9O6T6v7yiwlrWbPscbFuuaNgMr6YJEhaZ5LrniXRBsgwWiX9uvYZ
	oFsb4pV39c4pvPAKTtxpta/rnSCwtgCFwYr2oPqy310n3JVPwvU+r2rn9xc7YqbuPzgUNYQMm0izk
	CA7bD3iWkZZjFoVcrOABjMC7nrZ0G+z0azAUf1VWY3/M/4WF4JKlMi1pYzTFFI4G4UHpe2kQrZbyb
	7Ea2Z+Tg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY1Sj-004VXc-3E; Tue, 13 Sep 2022 08:40:10 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY1S8-004VN2-By
	for barebox@lists.infradead.org; Tue, 13 Sep 2022 08:39:34 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oY1S4-0004Yn-Uc; Tue, 13 Sep 2022 10:39:28 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oY1S4-0004YI-Ln; Tue, 13 Sep 2022 10:39:28 +0200
Date: Tue, 13 Sep 2022 10:39:28 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220913083928.GM6477@pengutronix.de>
References: <20220901104136.171051-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220901104136.171051-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220913_013932_580131_EE148EC4 
X-CRM114-Status: GOOD (  26.49  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] ARM: sync_caches_for_execution: don't flush
 disabled data cache
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Sep 01, 2022 at 12:41:36PM +0200, Ahmad Fatoum wrote:
> We unconditionally clean and then invalidate D-cache entries in
> sync_caches_for_execution by calling arm_early_mmu_cache_flush().
> 
> The function afterwards takes care to invalidate the I-cache.
> 
> This misbehaves though when the D-Cache contains stale dirty
> entries for currently executing code. Most boards avoid this
> pitfall, because barebox_arm_entry calls
> arm_early_mmu_cache_invalidate() and sync_caches_for_execution()
> is only called afterwards. But for some boards,
> relocate_to_current_adr() is called before barebox_arm_entry and
> various board code works around this by calling
> arm_early_mmu_cache_invalidate() first.
> 
> Make this unnecessary by not flushing the data cache when it's disabled
> and instead only invalidate the I-Cache.
> 
> This fixes a hang observed on a serial-booted i.MX6Q rev 1.5
> executing relocate_to_current_adr() -> sync_caches_for_execution()
> from On-Chip SRAM.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/cpu/common.c | 6 ++++++
>  1 file changed, 6 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/cpu/common.c b/arch/arm/cpu/common.c
> index 8cfcc8f6ce7a..5ccacf204751 100644
> --- a/arch/arm/cpu/common.c
> +++ b/arch/arm/cpu/common.c
> @@ -23,6 +23,12 @@
>   */
>  void sync_caches_for_execution(void)
>  {
> +	/* if caches are disabled, don't do data cache maintenance */
> +	if (!(get_cr() & CR_C)) {
> +		icache_invalidate();
> +		return;
> +	}
> +
>  	/*
>  	 * Despite the name arm_early_mmu_cache_flush not only flushes the
>  	 * data cache, but also invalidates the instruction cache.
> -- 
> 2.30.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


