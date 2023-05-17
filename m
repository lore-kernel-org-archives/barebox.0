Delivery-date: Wed, 17 May 2023 15:25:11 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzH9U-004KeT-HX
	for lore@lore.pengutronix.de; Wed, 17 May 2023 15:25:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzH9R-0006Gd-O3
	for lore@pengutronix.de; Wed, 17 May 2023 15:25:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6fA8rzMve4jiM3DaFAotBOuPrG/6BsmWgnRzMcHwbFo=; b=jiKcPr1+u0L/SfCRO26Bh/+9lS
	Zt7Td5jNetBSUbWY6WCiq7xIZMd2dj37QCYaKIguMZwQRxzoRX4ArUKBhJa/+lGXtWjYGUDwtHXBo
	z+zFvfU51gkABX8Lp1s5semnZ2670tTsHZ7fPNNYvJgsuYOvlZoLEYgcUhLcT8VbhF8Ef/vKeDBGm
	2FaepUJA45J9uZO1UuXxLS9Dri9zvIz2TCXnB6Ttcu3kfy8pJFTDTV8YO9DXn4W0Njta09pglqnkE
	qJWe8gXm5FMl/3M3AQFzU4iCcycEtAI3V4WrfpLJFUHWC7KuW0eexVJmKsOGAWhMHR81zXKrY5Mf9
	XYl/aa6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pzH8K-009yBL-1y;
	Wed, 17 May 2023 13:24:00 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzH8H-009y9H-2V
	for barebox@lists.infradead.org;
	Wed, 17 May 2023 13:23:59 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1pzH8A-00061b-7g; Wed, 17 May 2023 15:23:55 +0200
Message-ID: <cc807833-9ab0-ae79-c6c5-928ae379ebaf@pengutronix.de>
Date: Wed, 17 May 2023 15:23:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20230517090340.3954615-1-s.hauer@pengutronix.de>
 <20230517090340.3954615-25-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230517090340.3954615-25-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230517_062357_812640_E854D45B 
X-CRM114-Status: GOOD (  22.21  )
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
Subject: Re: [PATCH v2 24/34] ARM: mmu: drop ttb argument
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 17.05.23 11:03, Sascha Hauer wrote:
> No need to pass ttb to the MMU code, the MMU code can itself call
> arm_mem_ttb() to get the desired base.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/cpu/mmu_32.c      |  9 +++++----
>  arch/arm/cpu/mmu_64.c      |  8 +++++---
>  arch/arm/cpu/start.c       | 11 +++--------
>  arch/arm/cpu/uncompress.c  |  7 ++-----
>  arch/arm/include/asm/mmu.h |  3 +--
>  5 files changed, 16 insertions(+), 22 deletions(-)
> 
> diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
> index a82382ad1e..bef4a01670 100644
> --- a/arch/arm/cpu/mmu_32.c
> +++ b/arch/arm/cpu/mmu_32.c
> @@ -533,10 +533,11 @@ static inline void map_region(unsigned long start, unsigned long size,
>  	create_sections(ttb, start, start + size - 1, flags);
>  }
>  
> -void mmu_early_enable(unsigned long membase, unsigned long memsize,
> -		      unsigned long _ttb)
> +void mmu_early_enable(unsigned long membase, unsigned long memsize)
>  {
> -	ttb = (uint32_t *)_ttb;
> +	ttb = (uint32_t *)arm_mem_ttb(membase, membase + memsize);

This commit breaks bisection, because v2 changes arm_mem_ttb prototype.
> +	pr_debug("enabling MMU, ttb @ 0x%p\n", ttb);
>  
>  	set_ttbr(ttb);
>  
> @@ -566,7 +567,7 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize,
>  	map_region((unsigned long)_stext, _etext - _stext, PMD_SECT_DEF_UNCACHED);
>  
>  	/* maps main memory as cachable */
> -	map_region(membase, memsize, PMD_SECT_DEF_CACHED);
> +	map_region(membase, memsize - OPTEE_SIZE, PMD_SECT_DEF_CACHED);

(y)

>  
>  	__mmu_cache_on();
>  }
> diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
> index 3cc5b14a46..d32eecf144 100644
> --- a/arch/arm/cpu/mmu_64.c
> +++ b/arch/arm/cpu/mmu_64.c
> @@ -292,10 +292,12 @@ static void early_create_sections(void *ttb, uint64_t virt, uint64_t phys,
>  
>  #define EARLY_BITS_PER_VA 39
>  
> -void mmu_early_enable(unsigned long membase, unsigned long memsize,
> -		      unsigned long ttb)
> +void mmu_early_enable(unsigned long membase, unsigned long memsize)
>  {
>  	int el;
> +	unsigned long ttb = arm_mem_ttb(membase + memsize);
> +
> +	pr_debug("enabling MMU, ttb @ 0x%08lx\n", ttb);
>  
>  	/*
>  	 * For the early code we only create level 1 pagetables which only
> @@ -311,7 +313,7 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize,
>  	set_ttbr_tcr_mair(el, ttb, calc_tcr(el, EARLY_BITS_PER_VA), MEMORY_ATTRIBUTES);
>  	early_create_sections((void *)ttb, 0, 0, 1UL << (EARLY_BITS_PER_VA - 1),
>  			attrs_uncached_mem());
> -	early_create_sections((void *)ttb, membase, membase, memsize, CACHED_MEM);
> +	early_create_sections((void *)ttb, membase, membase, memsize - OPTEE_SIZE, CACHED_MEM);
>  	tlb_invalidate();
>  	isb();
>  	set_cr(get_cr() | CR_M);
> diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
> index 87207822a0..165d2d94e6 100644
> --- a/arch/arm/cpu/start.c
> +++ b/arch/arm/cpu/start.c
> @@ -216,14 +216,9 @@ __noreturn __no_sanitize_address void barebox_non_pbl_start(unsigned long membas
>  
>  	mem_malloc_init((void *)malloc_start, (void *)malloc_end - 1);
>  
> -	if (IS_ENABLED(CONFIG_MMU_EARLY)) {
> -		unsigned long ttb = arm_mem_ttb(endmem);
> -
> -		if (!IS_ENABLED(CONFIG_PBL_IMAGE)) {
> -			pr_debug("enabling MMU, ttb @ 0x%08lx\n", ttb);
> -			arm_early_mmu_cache_invalidate();
> -			mmu_early_enable(membase, memsize - OPTEE_SIZE, ttb);
> -		}
> +	if (IS_ENABLED(CONFIG_MMU_EARLY) && !IS_ENABLED(CONFIG_PBL_IMAGE)) {
> +		arm_early_mmu_cache_invalidate();
> +		mmu_early_enable(membase, memsize);
>  	}
>  
>  	if (IS_ENABLED(CONFIG_BOOTM_OPTEE))
> diff --git a/arch/arm/cpu/uncompress.c b/arch/arm/cpu/uncompress.c
> index abaf36b68c..e471dd87f9 100644
> --- a/arch/arm/cpu/uncompress.c
> +++ b/arch/arm/cpu/uncompress.c
> @@ -81,11 +81,8 @@ void __noreturn barebox_pbl_start(unsigned long membase, unsigned long memsize,
>  
>  	pr_debug("memory at 0x%08lx, size 0x%08lx\n", membase, memsize);
>  
> -	if (IS_ENABLED(CONFIG_MMU_EARLY)) {
> -		unsigned long ttb = arm_mem_ttb(endmem);
> -		pr_debug("enabling MMU, ttb @ 0x%08lx\n", ttb);
> -		mmu_early_enable(membase, memsize - OPTEE_SIZE, ttb);
> -	}
> +	if (IS_ENABLED(CONFIG_MMU_EARLY))
> +		mmu_early_enable(membase, memsize);
>  
>  	free_mem_ptr = arm_mem_early_malloc(endmem);
>  	free_mem_end_ptr = arm_mem_early_malloc_end(endmem);
> diff --git a/arch/arm/include/asm/mmu.h b/arch/arm/include/asm/mmu.h
> index fd8e93f7a3..9d2fdcf365 100644
> --- a/arch/arm/include/asm/mmu.h
> +++ b/arch/arm/include/asm/mmu.h
> @@ -56,8 +56,7 @@ void __dma_clean_range(unsigned long, unsigned long);
>  void __dma_flush_range(unsigned long, unsigned long);
>  void __dma_inv_range(unsigned long, unsigned long);
>  
> -void mmu_early_enable(unsigned long membase, unsigned long memsize,
> -		      unsigned long ttb);
> +void mmu_early_enable(unsigned long membase, unsigned long memsize);
>  void mmu_early_disable(void);
>  
>  #endif /* __ASM_MMU_H */

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



