Delivery-date: Fri, 13 Jun 2025 13:32:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uQ2dg-006qgO-0d
	for lore@lore.pengutronix.de;
	Fri, 13 Jun 2025 13:32:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uQ2df-0004Ys-Fm
	for lore@pengutronix.de; Fri, 13 Jun 2025 13:32:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=17/Xj0KfpCZsCfP7IOS9rjfgO5rrSLDwo0boQ4RJPmc=; b=gknKgtfo6aRAqKbwzsnKocK1hO
	rGfSr15NeLpLmL9kiH4iLsB6CO8AtgvCSMjXqIsIOu8OeksPOwg7pU6xYF6rIUh7pLpZhP8xtEChA
	ph7gfjRHDaguZx1qs7ltYdH9fBCowCQgGQlXpnFVQGONpL9Bu3LazEraEklsGJt0I/U4mepaOyzeD
	Fme29YV+iMTWjiUa5dCVsahzLac4nVHUoWmxub9q1sEYGni01zlNFJzIBKdj1Ye5PE9Iemdlq6arl
	miiG+pqTV/26br7BIdnACKrDboPgIpKK7Wna68h37kxaqcztYU4c0xfudsChkiBqUXa1L+uvCGmVW
	vY54WamQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQ2d3-0000000GBtH-3ru1;
	Fri, 13 Jun 2025 11:31:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQ1ps-0000000G5bt-3hfx
	for barebox@lists.infradead.org;
	Fri, 13 Jun 2025 10:40:38 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uQ1pr-0006DC-J9; Fri, 13 Jun 2025 12:40:35 +0200
Message-ID: <3e5e2e56-0d23-4fbc-a6a9-0ab471b85ae9@pengutronix.de>
Date: Fri, 13 Jun 2025 12:40:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20250613-arm-mmu-xn-ro-v1-0-60f05c6e7b4b@pengutronix.de>
 <20250613-arm-mmu-xn-ro-v1-7-60f05c6e7b4b@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250613-arm-mmu-xn-ro-v1-7-60f05c6e7b4b@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250613_034036_926161_8E2AD781 
X-CRM114-Status: GOOD (  24.13  )
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
Subject: Re: [PATCH 7/7] ARM: MMU64: map text segment ro and data segments
 execute never
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 6/13/25 09:58, Sascha Hauer wrote:
> With this all segments in the DRAM except the text segment are mapped
> execute-never so that only the barebox code can actually be executed.
> Also map the readonly data segment readonly so that it can't be
> modified.
> 
> The mapping is only implemented in barebox proper. The PBL still maps
> the whole DRAM rwx.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/cpu/mmu_64.c            | 31 +++++++++++++++++++++++++++----
>  arch/arm/include/asm/pgtable64.h |  1 +
>  arch/arm/lib64/barebox.lds.S     |  5 +++--
>  3 files changed, 31 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
> index dc81c1da6add38b59b44a9a4e247ab51ebc2692e..7b021a3f2909f7a445d253579a16cc68f6cbd765 100644
> --- a/arch/arm/cpu/mmu_64.c
> +++ b/arch/arm/cpu/mmu_64.c
> @@ -312,13 +312,19 @@ static unsigned long get_pte_attrs(unsigned flags)
>  {
>  	switch (flags) {
>  	case MAP_CACHED:
> -		return CACHED_MEM;
> +		return attrs_xn() | CACHED_MEM;
>  	case MAP_UNCACHED:
>  		return attrs_xn() | UNCACHED_MEM;
>  	case MAP_FAULT:
>  		return 0x0;
>  	case ARCH_MAP_WRITECOMBINE:
>  		return attrs_xn() | MEM_ALLOC_WRITECOMBINE;
> +	case MAP_CODE:
> +		return CACHED_MEM | PTE_BLOCK_RO;
> +	case ARCH_MAP_CACHED_RO:
> +		return attrs_xn() | CACHED_MEM | PTE_BLOCK_RO;
> +	case ARCH_MAP_CACHED_RWX:
> +		return CACHED_MEM;
>  	default:
>  		return ~0UL;
>  	}
> @@ -376,6 +382,10 @@ void __mmu_init(bool mmu_on)
>  {
>  	uint64_t *ttb = get_ttb();
>  	struct memory_bank *bank;
> +	unsigned long text_start = (unsigned long)&_stext;
> +	unsigned long text_size = (unsigned long)&__start_rodata - (unsigned long)&_stext;
> +	unsigned long rodata_start = (unsigned long)&__start_rodata;
> +	unsigned long rodata_size = (unsigned long)&__end_rodata - rodata_start;
>  
>  	if (!request_barebox_region("ttb", (unsigned long)ttb,
>  				  ARM_EARLY_PAGETABLE_SIZE))
> @@ -400,7 +410,20 @@ void __mmu_init(bool mmu_on)
>  			pos = rsv->end + 1;
>  		}
>  
> -		remap_range((void *)pos, bank->start + bank->size - pos, MAP_CACHED);
> +		if (IS_ENABLED(CONFIG_ARM_MMU_PERMISSIONS)) {
> +			if (region_overlap_size(pos, bank->start + bank->size - pos,
> +			    text_start, text_size)) {
> +				remap_range((void *)pos, text_start - pos, MAP_CACHED);
> +				remap_range((void *)text_start, text_size, MAP_CODE);
> +				remap_range((void *)rodata_start, rodata_size, ARCH_MAP_CACHED_RO);
> +				remap_range((void *)(rodata_start + rodata_size),
> +					    bank->start + bank->size - (rodata_start + rodata_size), MAP_CACHED);

Same feedback as in mmu_32.c.

Looks good otherwise.

Thanks,
Ahmad

> +			} else {
> +				remap_range((void *)pos, bank->start + bank->size - pos, MAP_CACHED);
> +			}
> +		} else {
> +			remap_range((void *)pos, bank->start + bank->size - pos, ARCH_MAP_CACHED_RWX);
> +		}
>  	}
>  
>  	/* Make zero page faulting to catch NULL pointer derefs */
> @@ -482,7 +505,7 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize, unsigned lon
>  	 */
>  	init_range(2);
>  
> -	early_remap_range(membase, memsize, MAP_CACHED);
> +	early_remap_range(membase, memsize, ARCH_MAP_CACHED_RWX);
>  
>  	if (optee_get_membase(&optee_membase)) {
>                  optee_membase = membase + memsize - OPTEE_SIZE;
> @@ -501,7 +524,7 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize, unsigned lon
>  	early_remap_range(optee_membase, OPTEE_SIZE, MAP_FAULT);
>  
>  	early_remap_range(PAGE_ALIGN_DOWN((uintptr_t)_stext), PAGE_ALIGN(_etext - _stext),
> -			  MAP_CACHED);
> +			  ARCH_MAP_CACHED_RWX);
>  
>  	mmu_enable();
>  }
> diff --git a/arch/arm/include/asm/pgtable64.h b/arch/arm/include/asm/pgtable64.h
> index b88ffe6be5254e1b9d3968573d5e9b7a37828a55..6f6ef22717b76baaf7857b12d38c6074871ce143 100644
> --- a/arch/arm/include/asm/pgtable64.h
> +++ b/arch/arm/include/asm/pgtable64.h
> @@ -59,6 +59,7 @@
>  #define PTE_BLOCK_NG            (1 << 11)
>  #define PTE_BLOCK_PXN           (UL(1) << 53)
>  #define PTE_BLOCK_UXN           (UL(1) << 54)
> +#define PTE_BLOCK_RO            (UL(1) << 7)
>  
>  /*
>   * AttrIndx[2:0] encoding (mapping attributes defined in the MAIR* registers).
> diff --git a/arch/arm/lib64/barebox.lds.S b/arch/arm/lib64/barebox.lds.S
> index 50e4b6f42cb8d4de92b7450e5b864b9056b61916..caddbedd610f68658b7ecf7616947ce02a84e5e8 100644
> --- a/arch/arm/lib64/barebox.lds.S
> +++ b/arch/arm/lib64/barebox.lds.S
> @@ -28,18 +28,19 @@ SECTIONS
>  	}
>  	BAREBOX_BARE_INIT_SIZE
>  
> -	. = ALIGN(4);
> +	. = ALIGN(4096);
>  	__start_rodata = .;
>  	.rodata : {
>  		*(.rodata*)
>  		RO_DATA_SECTION
>  	}
>  
> +	. = ALIGN(4096);
> +
>  	__end_rodata = .;
>  	_etext = .;
>  	_sdata = .;
>  
> -	. = ALIGN(4);
>  	.data : { *(.data*) }
>  
>  	.barebox_imd : { BAREBOX_IMD }
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



