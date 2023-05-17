Delivery-date: Wed, 17 May 2023 15:59:40 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzHgr-004MTu-9Y
	for lore@lore.pengutronix.de; Wed, 17 May 2023 15:59:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzHgo-0002Fd-NX
	for lore@pengutronix.de; Wed, 17 May 2023 15:59:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lUepgJ2wwSAQYHVeTpvYAZsFToa41XfhhXBKVLVJcrg=; b=0ZXh+Pc3EdW3ztRd6noRJtJnQM
	qGvDH3x8Jg9i9/pfJkB/I+Me5HM+io/hg+JlvTHKJ4RzZj4/G9nS4tXtnMKNAk4SlijotpyDL54yc
	wCIKDuZ+/Un97ry93yb0RVyyukpc3261dws5laM01nLOkM0j2UDvGqTbkJW+qs/OYsT85QbCfxsYO
	rZRoRaciYtKlWEuFq0Wo903SNaElrG0xiF3Kh0LRYyyjNGME47UHHKMTzhZKrnEDvAE7JjnWTs2sU
	fNNsNOR1xLKXKf20LSpbeHD5bDODKUq/2rNPPi0hsqpGqvIE8JmtK0Kqw1+2XMt6RupEzFuiwpBZX
	2VKMfDTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pzHff-00A3Hh-0O;
	Wed, 17 May 2023 13:58:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzHfb-00A3H6-1J
	for barebox@lists.infradead.org;
	Wed, 17 May 2023 13:58:25 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1pzHfW-00027W-E7; Wed, 17 May 2023 15:58:21 +0200
Message-ID: <aa3708dc-e7eb-ec08-8607-2eaf0780a5ee@pengutronix.de>
Date: Wed, 17 May 2023 15:58:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20230517090340.3954615-1-s.hauer@pengutronix.de>
 <20230517090340.3954615-32-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230517090340.3954615-32-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230517_065823_444582_3DB249FF 
X-CRM114-Status: GOOD (  28.48  )
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
Subject: Re: [PATCH v2 31/34] ARM: mmu32: read TTB value from register
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 17.05.23 11:03, Sascha Hauer wrote:
> Instead of relying on a variable for the location of the TTB which we
> have to initialize in both PBL and barebox proper, just read the value
> back from the hardware register.

Why not initialize on first call to get_ttb()? 

> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/cpu/mmu_32.c | 41 ++++++++++++++++++++---------------------
>  1 file changed, 20 insertions(+), 21 deletions(-)
> 
> diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
> index 0762bd55a3..785b20c7fd 100644
> --- a/arch/arm/cpu/mmu_32.c
> +++ b/arch/arm/cpu/mmu_32.c
> @@ -24,7 +24,11 @@
>  #define PTRS_PER_PTE		(PGDIR_SIZE / PAGE_SIZE)
>  #define ARCH_MAP_WRITECOMBINE	((unsigned)-1)
>  
> -static uint32_t *ttb;
> +static inline uint32_t *get_ttb(void)
> +{
> +	/* Clear unpredictable bits [13:0] */
> +	return (uint32_t *)(get_ttbr() & ~0x3fff);
> +}
>  
>  /*
>   * Do it the simple way for now and invalidate the entire
> @@ -77,7 +81,7 @@ static uint32_t *alloc_pte(void)
>  	if (idx * PTE_SIZE >= ARM_EARLY_PAGETABLE_SIZE)
>  		return NULL;
>  
> -	return (void *)ttb + idx * PTE_SIZE;
> +	return get_ttb() + idx * PTE_SIZE;
>  }
>  #else
>  static uint32_t *alloc_pte(void)
> @@ -89,9 +93,7 @@ static uint32_t *alloc_pte(void)
>  static u32 *find_pte(unsigned long adr)
>  {
>  	u32 *table;
> -
> -	if (!ttb)
> -		arm_mmu_not_initialized_error();
> +	uint32_t *ttb = get_ttb();
>  
>  	if (!pgd_type_table(ttb[pgd_index(adr)]))
>  		return NULL;
> @@ -130,6 +132,7 @@ void dma_inv_range(void *ptr, size_t size)
>   */
>  static u32 *arm_create_pte(unsigned long virt, uint32_t flags)
>  {
> +	uint32_t *ttb = get_ttb();
>  	u32 *table;
>  	int i, ttb_idx;
>  
> @@ -137,9 +140,6 @@ static u32 *arm_create_pte(unsigned long virt, uint32_t flags)
>  
>  	table = alloc_pte();
>  
> -	if (!ttb)
> -		arm_mmu_not_initialized_error();
> -
>  	ttb_idx = pgd_index(virt);
>  
>  	for (i = 0; i < PTRS_PER_PTE; i++) {
> @@ -247,6 +247,7 @@ int arch_remap_range(void *start, size_t size, unsigned map_type)
>  {
>  	u32 addr = (u32)start;
>  	u32 pte_flags, pmd_flags;
> +	uint32_t *ttb = get_ttb();
>  
>  	BUG_ON(!IS_ALIGNED(addr, PAGE_SIZE));
>  
> @@ -318,9 +319,10 @@ int arch_remap_range(void *start, size_t size, unsigned map_type)
>  	return 0;
>  }
>  
> -static void create_sections(uint32_t *ttb, unsigned long first,
> -			    unsigned long last, unsigned int flags)
> +static void create_sections(unsigned long first, unsigned long last,
> +			    unsigned int flags)
>  {
> +	uint32_t *ttb = get_ttb();
>  	unsigned long ttb_start = pgd_index(first);
>  	unsigned long ttb_end = pgd_index(last) + 1;
>  	unsigned int i, addr = first;
> @@ -331,15 +333,16 @@ static void create_sections(uint32_t *ttb, unsigned long first,
>  	}
>  }
>  
> -static void create_flat_mapping(uint32_t *ttb)
> +static inline void create_flat_mapping(void)
>  {
>  	/* create a flat mapping using 1MiB sections */
> -	create_sections(ttb, 0, 0xffffffff, attrs_uncached_mem());
> +	create_sections(0, 0xffffffff, attrs_uncached_mem());
>  }
>  
>  void *map_io_sections(unsigned long phys, void *_start, size_t size)
>  {
>  	unsigned long start = (unsigned long)_start, sec;
> +	uint32_t *ttb = get_ttb();
>  
>  	for (sec = start; sec < start + size; sec += PGDIR_SIZE, phys += PGDIR_SIZE)
>  		ttb[pgd_index(sec)] = phys | get_pmd_flags(MAP_UNCACHED);
> @@ -497,9 +500,7 @@ static void vectors_init(void)
>  void __mmu_init(bool mmu_on)
>  {
>  	struct memory_bank *bank;
> -
> -	/* Clear unpredictable bits [13:0] */
> -	ttb = (uint32_t *)(get_ttbr() & ~0x3fff);
> +	uint32_t *ttb = get_ttb();
>  
>  	if (!request_sdram_region("ttb", (unsigned long)ttb, SZ_16K))
>  		/*
> @@ -517,7 +518,7 @@ void __mmu_init(bool mmu_on)
>  	vectors_init();
>  
>  	for_each_memory_bank(bank) {
> -		create_sections(ttb, bank->start, bank->start + bank->size - 1,
> +		create_sections(bank->start, bank->start + bank->size - 1,
>  				PMD_SECT_DEF_CACHED);
>  		__mmu_cache_flush();
>  	}
> @@ -541,8 +542,6 @@ void *dma_alloc_writecombine(size_t size, dma_addr_t *dma_handle)
>  	return dma_alloc_map(size, dma_handle, ARCH_MAP_WRITECOMBINE);
>  }
>  
> -static uint32_t *ttb;
> -
>  static inline void map_region(unsigned long start, unsigned long size,
>  			      uint64_t flags)
>  
> @@ -550,12 +549,12 @@ static inline void map_region(unsigned long start, unsigned long size,
>  	start = ALIGN_DOWN(start, SZ_1M);
>  	size  = ALIGN(size, SZ_1M);
>  
> -	create_sections(ttb, start, start + size - 1, flags);
> +	create_sections(start, start + size - 1, flags);
>  }
>  
>  void mmu_early_enable(unsigned long membase, unsigned long memsize)
>  {
> -	ttb = (uint32_t *)arm_mem_ttb(membase, membase + memsize);
> +	uint32_t *ttb = (uint32_t *)arm_mem_ttb(membase + memsize);
>  
>  	pr_debug("enabling MMU, ttb @ 0x%p\n", ttb);
>  
> @@ -571,7 +570,7 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize)
>  	 * This marks the whole address space as uncachable as well as
>  	 * unexecutable if possible
>  	 */
> -	create_flat_mapping(ttb);
> +	create_flat_mapping();
>  
>  	/*
>  	 * There can be SoCs that have a section shared between device memory

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



