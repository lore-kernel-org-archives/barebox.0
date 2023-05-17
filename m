Delivery-date: Wed, 17 May 2023 15:18:43 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzH3E-004KJj-MI
	for lore@lore.pengutronix.de; Wed, 17 May 2023 15:18:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzH3B-0005OJ-UI
	for lore@pengutronix.de; Wed, 17 May 2023 15:18:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+ickp1kRLULZRIb4KtKyt0cWX106A90E5rZnhHtzWJ4=; b=B3OBG3DsfesRRQjOGPCwK+xsGm
	WaS1z2I0IwiFAYuSU14M4dlk5+MLsrqEGqRihFA7CmUdfzOARl21DDPXSYROQ6wASx01/4nWNv84H
	qIN/A1JrqftlE+7lmPTuU/t6TwsPH5UnuEsEsWkasUHOdb6oC3f5w9/NgBvwpaC6B3xW1rRCnuvrA
	COVzQUqAFnBDj3CBX8reKqR438A9cuO1ROL2W/4QQj7jV3oP3U8PBMq8Vs/3DMHJTyH3xZd0TNSDd
	cQhk9l2AsGRiL8GmO3KHveRK+yDn/tdWosaq0fdttJ43nAf4i7ZmtV5CAbe67W/pRc/YQcry4z52R
	ZfPTG67w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pzH2B-009wz8-1o;
	Wed, 17 May 2023 13:17:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzH28-009wyZ-2a
	for barebox@lists.infradead.org;
	Wed, 17 May 2023 13:17:38 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1pzH26-0005JR-UA; Wed, 17 May 2023 15:17:35 +0200
Message-ID: <0f8d0d67-5c1d-ebf3-70f2-9453523d63ba@pengutronix.de>
Date: Wed, 17 May 2023 15:17:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20230517090340.3954615-1-s.hauer@pengutronix.de>
 <20230517090340.3954615-24-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230517090340.3954615-24-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230517_061736_860138_ABC625DD 
X-CRM114-Status: GOOD (  26.08  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 23/34] ARM: mmu64: create alloc_pte()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 17.05.23 11:03, Sascha Hauer wrote:
> This is a preparation for using two level page tables in the PBL.
> To do that we need a way to allocate page tables in PBL. As malloc
> is not available in PBL, implement a function to allocate a page table
> from the area we also place the TTB.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/cpu/mmu_64.c | 20 +++++++++++++++++---
>  1 file changed, 17 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
> index 55ada960c5..3cc5b14a46 100644
> --- a/arch/arm/cpu/mmu_64.c
> +++ b/arch/arm/cpu/mmu_64.c
> @@ -32,7 +32,20 @@ static void set_table(uint64_t *pt, uint64_t *table_addr)
>  	*pt = val;
>  }
>  
> -static uint64_t *create_table(void)
> +#ifdef __PBL__
> +static uint64_t *alloc_pte(void)
> +{
> +	static unsigned int idx;
> +
> +	idx++;
> +
> +	if (idx * GRANULE_SIZE >= ARM_EARLY_PAGETABLE_SIZE)
> +		return NULL;
> +
> +	return (void *)ttb + idx * GRANULE_SIZE;
> +}
> +#else
> +static uint64_t *alloc_pte(void)
>  {
>  	uint64_t *new_table = xmemalign(GRANULE_SIZE, GRANULE_SIZE);
>  
> @@ -41,6 +54,7 @@ static uint64_t *create_table(void)

Nit: There's a memset(new_table, 0, GRANULE_SIZE); inside here, which doesn't
exist in the 32-bit MMU implementation and which can be skipped if
we opencode the memset in __mmu_init.

>  
>  	return new_table;
>  }
> +#endif
>  
>  static __maybe_unused uint64_t *find_pte(uint64_t addr)
>  {
> @@ -81,7 +95,7 @@ static void split_block(uint64_t *pte, int level)
>  	/* level describes the parent level, we need the child ones */
>  	levelshift = level2shift(level + 1);
>  
> -	new_table = create_table();
> +	new_table = alloc_pte();
>  
>  	for (i = 0; i < MAX_PTE_ENTRIES; i++) {
>  		new_table[i] = old_pte | (i << levelshift);
> @@ -183,7 +197,7 @@ void __mmu_init(bool mmu_on)
>  	if (mmu_on)
>  		mmu_disable();
>  
> -	ttb = create_table();
> +	ttb = alloc_pte();
>  	el = current_el();
>  	set_ttbr_tcr_mair(el, (uint64_t)ttb, calc_tcr(el, BITS_PER_VA),
>  			  MEMORY_ATTRIBUTES);

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



