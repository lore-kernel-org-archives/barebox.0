Delivery-date: Wed, 17 May 2023 16:22:56 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzI3N-004O6g-Kc
	for lore@lore.pengutronix.de; Wed, 17 May 2023 16:22:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzI3L-0006QO-64
	for lore@pengutronix.de; Wed, 17 May 2023 16:22:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ohDpPrJCbd8dGVXwd83emQ1lUGHxJMslv+POYWfdZBA=; b=v0x54cCdyeVqNlE+L8yKYtyh14
	NLFT/0zWWyELEooshpHKxxneh4VUw40T28gSC9QOaXSBYq+uBrquttLGzPofaKnP3AfAc9B6pquJC
	RL4wXe+WeIyb4ydg/ZZMQHJCfg9Nx3NrG6K/1UUZnjLaWluNOvj6czJrZ+Q5vUAW6rW5yMxyLnpP2
	GHggAERREi73mG7zh0BAiGVHBU3I8j1jloZ/NbtUsnUuzOSyxgrALr6TvEDshOfJIW+e0kjZMVoC2
	7fBoNTUqmvFSbk2Jeu8aW1kVoZdIUnKIuw2GaokemPruwfXpSZmAn5XL8oMJPXU4Gy9uh+WnD2U8W
	MkVvckmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pzI2F-00A7Au-1M;
	Wed, 17 May 2023 14:21:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzI2C-00A79w-1r
	for barebox@lists.infradead.org;
	Wed, 17 May 2023 14:21:46 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1pzI27-0006Kk-7y; Wed, 17 May 2023 16:21:43 +0200
Message-ID: <b5cfdb55-6cfb-3b27-bd31-270c4afb9b3a@pengutronix.de>
Date: Wed, 17 May 2023 16:21:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20230517090340.3954615-1-s.hauer@pengutronix.de>
 <20230517090340.3954615-33-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230517090340.3954615-33-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230517_072144_611596_5134B4B9 
X-CRM114-Status: GOOD (  29.22  )
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
Subject: Re: [PATCH v2 32/34] ARM: mmu32: Use pages for early MMU setup
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 17.05.23 11:03, Sascha Hauer wrote:
> Up to now we use 1MiB sections to setup the page tables in PBL. There
> are two places where this leads to problems. First is OP-TEE, we have
> to map the OP-TEE area with PTE_EXT_XN to prevent the instruction
> prefetcher from speculating into that area. With the current section
> mapping we have to align OPTEE_SIZE to 1MiB boundaries. The second
> problem comes with SRAM where the PBL might be running. This SRAM has
> to be mapped executable, but at the same time we should map the
> surrounding areas non executable which is not always possible with
> 1MiB mapping granularity.
> 
> We now have everything in place to use two level page tables from PBL,
> so use arch_remap_range() for the problematic cases.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/cpu/mmu_32.c | 31 +++++++------------------------
>  1 file changed, 7 insertions(+), 24 deletions(-)
> 
> diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
> index 785b20c7fd..705d27a045 100644
> --- a/arch/arm/cpu/mmu_32.c
> +++ b/arch/arm/cpu/mmu_32.c
> @@ -111,8 +111,10 @@ void dma_flush_range(void *ptr, size_t size)
>  	unsigned long end = start + size;
>  
>  	__dma_flush_range(start, end);
> +#ifndef __PBL__
>  	if (outer_cache.flush_range)
>  		outer_cache.flush_range(start, end);
> +#endif

Meh. I see why this is ok (L2X0 currently initialized in initcall), but this
#ifdef looks a bit too fragile. Perhaps, we could do this in <asm/mmu.h> instead?

#ifdef __PBL__
/* Existing platforms with non-architected outer cache initialize it
 * outside PBL and new ones will likely only have architected caches,
 * so we provide a dummy here
 */
static __maybe_unused struct outer_cache_fns outer_cache;
#else
extern struct outer_cache_fns outer_cache;
#endif

>  }
>  
>  void dma_inv_range(void *ptr, size_t size)
> @@ -120,8 +122,10 @@ void dma_inv_range(void *ptr, size_t size)
>  	unsigned long start = (unsigned long)ptr;
>  	unsigned long end = start + size;
>  
> +#ifndef __PBL__
>  	if (outer_cache.inv_range)
>  		outer_cache.inv_range(start, end);
> +#endif
>  	__dma_inv_range(start, end);
>  }
>  
> @@ -542,16 +546,6 @@ void *dma_alloc_writecombine(size_t size, dma_addr_t *dma_handle)
>  	return dma_alloc_map(size, dma_handle, ARCH_MAP_WRITECOMBINE);
>  }
>  
> -static inline void map_region(unsigned long start, unsigned long size,
> -			      uint64_t flags)
> -
> -{
> -	start = ALIGN_DOWN(start, SZ_1M);
> -	size  = ALIGN(size, SZ_1M);
> -
> -	create_sections(start, start + size - 1, flags);
> -}
> -
>  void mmu_early_enable(unsigned long membase, unsigned long memsize)
>  {
>  	uint32_t *ttb = (uint32_t *)arm_mem_ttb(membase + memsize);
> @@ -572,21 +566,10 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize)
>  	 */
>  	create_flat_mapping();
>  
> -	/*
> -	 * There can be SoCs that have a section shared between device memory
> -	 * and the on-chip RAM hosting the PBL. Thus mark this section
> -	 * uncachable, but executable.
> -	 * On such SoCs, executing from OCRAM could cause the instruction
> -	 * prefetcher to speculatively access that device memory, triggering
> -	 * potential errant behavior.
> -	 *
> -	 * If your SoC has such a memory layout, you should rewrite the code
> -	 * here to map the OCRAM page-wise.
> -	 */
> -	map_region((unsigned long)_stext, _etext - _stext, PMD_SECT_DEF_UNCACHED);
> -
>  	/* maps main memory as cachable */
> -	map_region(membase, memsize - OPTEE_SIZE, PMD_SECT_DEF_CACHED);
> +	arch_remap_range((void *)membase, memsize - OPTEE_SIZE, MAP_CACHED);
> +	arch_remap_range((void *)membase + memsize - OPTEE_SIZE, OPTEE_SIZE, MAP_UNCACHED);
> +	arch_remap_range(_stext, PAGE_ALIGN(_etext - _stext), MAP_CACHED);

Rest looks fine. With above point addressed:

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

>  
>  	__mmu_cache_on();
>  }

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



