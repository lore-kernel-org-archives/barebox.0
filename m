Delivery-date: Mon, 24 Aug 2026 09:01:26 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wyOgP-006c8j-2F
	for lore@lore.pengutronix.de;
	Mon, 24 Aug 2026 09:01:26 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 4EB942010D6
	for <lore@pengutronix.de>; Mon, 24 Aug 2026 09:01:26 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=LLiyp9aY;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Y+KdgpNLI3+rqhFwTzYZHFfasr6ezUj2wGyNH32YhYA=; b=LLiyp9aYXPWBhZingKgMNXePz4
	btyDJ5s1e2osZK10E3+VtoNt6wsZklqMedZNwt6iRYwxSAUWR6GZ3zjpIJjVZmlMkamo62L/hdGun
	wB46XxnHL/X6XrgBzkU5XmHa2a5voCT0A3SBcGayzQbVzJIW/dXa0ciXdNMV5YBmJfMyvMuiPi5wJ
	uB+nkE65bBkX5Zu+X/RVQL7120GKyCTBAA4yewyhStqb/KjvJJympcFMUr3ph28wil94gBYEfoFqa
	/vQ4ng2DKxqwLohUrc+rKoE6ttTeAlScr3AuWLK8fMwXppM64pxwp1bi/8TWDvMot0RExN/Xu4wvL
	Ttz4Olbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyOg2-0000000G1p8-37ga;
	Mon, 24 Aug 2026 07:01:02 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyOfz-0000000G1o8-2PlT
	for barebox@lists.infradead.org;
	Mon, 24 Aug 2026 07:01:01 +0000
Received: from [0.0.0.0] (ptz.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::77])
	(Authenticated sender: afa@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id B013B2010D6;
	Mon, 24 Aug 2026 09:00:57 +0200 (CEST)
Message-ID: <4262a543-29bc-4e25-bb77-f431a42152d2@pengutronix.de>
Date: Mon, 24 Aug 2026 09:01:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ARM: mmu64: fix arch_remap_range permission-strip order
To: Stephano Cetola <stephano@cetola.net>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "open list:BAREBOX" <barebox@lists.infradead.org>
References: <20260822-send-mmu-remap-order-v1-1-4ec8375941c5@cetola.net>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260822-send-mmu-remap-order-v1-1-4ec8375941c5@cetola.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260824_000059_795802_60B4E491 
X-CRM114-Status: GOOD (  20.95  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi, On 8/22/26 4:07 PM, Stephano Cetola wrote: > arch_remap_range()
    reassigned map_type via > arm_mmu_maybe_skip_permissions() before checking
    > maptype_is_compatible(map_type, MAP_CACHED) to decide wheth [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: wf1ejjbke8eipstgi7kqs1gunqn9tj1b
X-Spamd-Result: default: False [-7.51 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:900:1d::77:received];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	TO_DN_ALL(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_SENDER(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 4EB942010D6

Hi,

On 8/22/26 4:07 PM, Stephano Cetola wrote:
> arch_remap_range() reassigned map_type via
> arm_mmu_maybe_skip_permissions() before checking
> maptype_is_compatible(map_type, MAP_CACHED) to decide whether to
> flush. arm_mmu_maybe_skip_permissions() can turn MAP_CACHED into
> MAP_CACHED_RWX, so the compatibility check ran against the
> already-stripped value instead of the caller's original request. A
> plain cached remap could silently skip the cache flush whenever
> permission-skipping is active, because MAP_CACHED_RWX no longer
> compares equal to MAP_CACHED.
> 
> Fix: evaluate the flush gate against the original map_type first,
> then strip permissions afterward, right before the actual remap
> call.
> 
> Found by code inspection while auditing map_type handling in this
> area. No incorrect behavior has been observed in practice. This is
> a correctness fix. It is not a report of an observed failure.
> 
> Fixes: 317aff483607 ("ARM: mmu: introduce new maptype_t type")
> Signed-off-by: Stephano Cetola <stephano@cetola.net>

This now aligns mmu_64.c with what mmu_32.c was doing:

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Cheers,
Ahmad

> ---
>  arch/arm/cpu/mmu_64.c | 9 +++++++--
>  1 file changed, 7 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
> index 7f38473079..bf44cc7bcc 100644
> --- a/arch/arm/cpu/mmu_64.c
> +++ b/arch/arm/cpu/mmu_64.c
> @@ -286,11 +286,16 @@ static void early_remap_range(uint64_t addr, size_t size, maptype_t map_type)
>  
>  int arch_remap_range(void *virt_addr, phys_addr_t phys_addr, size_t size, maptype_t map_type)
>  {
> -	map_type = arm_mmu_maybe_skip_permissions(map_type);
> -
> +	/*
> +	 * Check against the original map_type: permission-stripping below
> +	 * can turn MAP_CACHED into MAP_CACHED_RWX, which would look
> +	 * incompatible.
> +	 */
>  	if (!maptype_is_compatible(map_type, MAP_CACHED))
>  		flush_cacheable_pages(virt_addr, size);
>  
> +	map_type = arm_mmu_maybe_skip_permissions(map_type);
> +
>  	return __arch_remap_range((uint64_t)virt_addr, phys_addr, (uint64_t)size, map_type, true);
>  }
>  
> 
> ---
> base-commit: 9bc1a26592a59919d2ee8c60c273d87d3d9f2e81
> change-id: 20260821-send-mmu-remap-order-ffa79f8f3847
> 
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



