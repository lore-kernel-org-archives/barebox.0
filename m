Delivery-date: Fri, 13 Jun 2025 13:32:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uQ2dc-006qff-13
	for lore@lore.pengutronix.de;
	Fri, 13 Jun 2025 13:32:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uQ2db-0004Uj-2R
	for lore@pengutronix.de; Fri, 13 Jun 2025 13:32:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Z2B4rVX8alK9hhs15Ko9UD6WW+BUDLdFE0GiRmlCWKk=; b=BOICe27KsHmt9vPHc77EgvIhWL
	luYDohgZ84tOnB/rbV9Yu1CdhCtXTBVWnXKjiaUPuN/jUiGq0wUyw62BHm3zQ2xUorbpOxVYo8eeA
	Af54b8W+s/pmpHSOO/dc5h+IsI2/+BiZLYzNBFxYENkR0/qI2B/1NrOc0hdFsrgQdUt/7guULENCL
	Ls252Yzg52blHCus5+9tIl144auUNyMBA+QUOiikCu+Qga00P0QeQ9ybfNnQWmM7ZR3yquqwkICJw
	dB8Ao5oBzOOlABd8gHYZEur89hv6tKt2nX/IJpYMyJwrKLXs8e/QaG2WI97Y1IESN5NgMLvfJLMSB
	PWWukygg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQ2cz-0000000GBkE-2Pt8;
	Fri, 13 Jun 2025 11:31:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQ1mP-0000000G5Ku-1tAB
	for barebox@lists.infradead.org;
	Fri, 13 Jun 2025 10:37:02 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uQ1mO-0005FE-6D; Fri, 13 Jun 2025 12:37:00 +0200
Message-ID: <3973e808-8126-4d10-ba2a-6202f77a7ab6@pengutronix.de>
Date: Fri, 13 Jun 2025 12:36:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20250613-arm-mmu-xn-ro-v1-0-60f05c6e7b4b@pengutronix.de>
 <20250613-arm-mmu-xn-ro-v1-5-60f05c6e7b4b@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20250613-arm-mmu-xn-ro-v1-5-60f05c6e7b4b@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250613_033701_656565_36C789F1 
X-CRM114-Status: GOOD (  32.35  )
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
Subject: Re: [PATCH 5/7] ARM: MMU: map text segment ro and data segments
 execute never
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



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
>  arch/arm/Kconfig             | 12 ++++++++++
>  arch/arm/cpu/mmu-common.h    |  2 ++
>  arch/arm/cpu/mmu_32.c        | 52 ++++++++++++++++++++++++++++++++++++++------
>  arch/arm/lib32/barebox.lds.S |  3 ++-
>  include/mmu.h                |  1 +
>  5 files changed, 62 insertions(+), 8 deletions(-)
> 
> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> index 0800b15d784ca0ab975cf7ceb2f7b47ed10643b1..4c5f58461b82394f3f5a62c2e68cdb36b38bee85 100644
> --- a/arch/arm/Kconfig
> +++ b/arch/arm/Kconfig
> @@ -389,6 +389,18 @@ config ARM_UNWIND
>  	  the performance is not affected. Currently, this feature
>  	  only works with EABI compilers. If unsure say Y.
>  
> +config ARM_MMU_PERMISSIONS
> +	bool "Map with extended RO/X permissions"
> +	default y
> +	help
> +	  Enable this option to map readonly sections as readonly, executable
> +	  sections as readonly/executable and the remainder of the SDRAM as
> +	  read/write/non-executable.
> +	  Traditionally barebox maps the whole SDRAM as read/write/execute.
> +	  You get this behaviour by disabling this option which is meant as
> +	  a debugging facility. It can go away once the extended permission
> +	  settings are proved to work reliable.
> +
>  config ARM_SEMIHOSTING
>  	bool "enable ARM semihosting support"
>  	select SEMIHOSTING
> diff --git a/arch/arm/cpu/mmu-common.h b/arch/arm/cpu/mmu-common.h
> index 0f11a4b73d1199ec2400f64a2f057cf940d4ff2d..99770f943099fc64ddc15ad8f3ec4fb3c31e8449 100644
> --- a/arch/arm/cpu/mmu-common.h
> +++ b/arch/arm/cpu/mmu-common.h
> @@ -10,6 +10,8 @@
>  #include <linux/sizes.h>
>  
>  #define ARCH_MAP_WRITECOMBINE	((unsigned)-1)
> +#define ARCH_MAP_CACHED_RWX	((unsigned)-2)
> +#define ARCH_MAP_CACHED_RO	((unsigned)-3)
>  
>  struct device;
>  
> diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
> index 7ad66070260eae337773e3acd1bcbea4fcab12f3..532a77c271b6046e769f1a6a9a954f5b93bd5e7f 100644
> --- a/arch/arm/cpu/mmu_32.c
> +++ b/arch/arm/cpu/mmu_32.c
> @@ -19,6 +19,7 @@
>  #include <asm/system_info.h>
>  #include <asm/sections.h>
>  #include <linux/pagemap.h>
> +#include <range.h>
>  
>  #include "mmu_32.h"
>  
> @@ -47,11 +48,18 @@ static inline void tlb_invalidate(void)
>  	);
>  }
>  
> +#define PTE_FLAGS_CACHED_V7_RWX (PTE_EXT_TEX(1) | PTE_BUFFERABLE | PTE_CACHEABLE | \
> +				 PTE_EXT_AP_URW_SRW)
>  #define PTE_FLAGS_CACHED_V7 (PTE_EXT_TEX(1) | PTE_BUFFERABLE | PTE_CACHEABLE | \
> -			     PTE_EXT_AP_URW_SRW)
> +			     PTE_EXT_AP_URW_SRW | PTE_EXT_XN)
> +#define PTE_FLAGS_CACHED_RO_V7 (PTE_EXT_TEX(1) | PTE_BUFFERABLE | PTE_CACHEABLE | \
> +			     PTE_EXT_APX | PTE_EXT_AP0 | PTE_EXT_AP1 | PTE_EXT_XN)
> +#define PTE_FLAGS_CODE_V7 (PTE_EXT_TEX(1) | PTE_BUFFERABLE | PTE_CACHEABLE | \
> +			     PTE_EXT_APX | PTE_EXT_AP0 | PTE_EXT_AP1)
>  #define PTE_FLAGS_WC_V7 (PTE_EXT_TEX(1) | PTE_EXT_AP_URW_SRW | PTE_EXT_XN)
>  #define PTE_FLAGS_UNCACHED_V7 (PTE_EXT_AP_URW_SRW | PTE_EXT_XN)
>  #define PTE_FLAGS_CACHED_V4 (PTE_SMALL_AP_UNO_SRW | PTE_BUFFERABLE | PTE_CACHEABLE)
> +#define PTE_FLAGS_CACHED_RO_V4 (PTE_SMALL_AP_UNO_SRO | PTE_BUFFERABLE | PTE_CACHEABLE)
>  #define PTE_FLAGS_UNCACHED_V4 PTE_SMALL_AP_UNO_SRW
>  #define PGD_FLAGS_WC_V7 (PMD_SECT_TEX(1) | PMD_SECT_DEF_UNCACHED | \
>  			 PMD_SECT_BUFFERABLE | PMD_SECT_XN)
> @@ -212,10 +220,16 @@ static uint32_t get_pte_flags(int map_type)
>  {
>  	if (cpu_architecture() >= CPU_ARCH_ARMv7) {
>  		switch (map_type) {
> +		case ARCH_MAP_CACHED_RWX:
> +			return PTE_FLAGS_CACHED_V7_RWX;
> +		case ARCH_MAP_CACHED_RO:
> +			return PTE_FLAGS_CACHED_RO_V7;
>  		case MAP_CACHED:
>  			return PTE_FLAGS_CACHED_V7;
>  		case MAP_UNCACHED:
>  			return PTE_FLAGS_UNCACHED_V7;
> +		case MAP_CODE:
> +			return PTE_FLAGS_CODE_V7;
>  		case ARCH_MAP_WRITECOMBINE:
>  			return PTE_FLAGS_WC_V7;
>  		case MAP_FAULT:
> @@ -224,6 +238,10 @@ static uint32_t get_pte_flags(int map_type)
>  		}
>  	} else {
>  		switch (map_type) {
> +		case ARCH_MAP_CACHED_RO:
> +		case MAP_CODE:
> +			return PTE_FLAGS_CACHED_RO_V4;
> +		case ARCH_MAP_CACHED_RWX:
>  		case MAP_CACHED:
>  			return PTE_FLAGS_CACHED_V4;
>  		case MAP_UNCACHED:
> @@ -254,6 +272,8 @@ static void __arch_remap_range(void *_virt_addr, phys_addr_t phys_addr, size_t s
>  	pte_flags = get_pte_flags(map_type);
>  	pmd_flags = pte_flags_to_pmd(pte_flags);
>  
> +	pr_debug("%s: 0x%08x 0x%08x type %d\n", __func__, virt_addr, size, map_type);
> +
>  	size = PAGE_ALIGN(size);
>  
>  	while (size) {
> @@ -535,6 +555,10 @@ void __mmu_init(bool mmu_on)
>  {
>  	struct memory_bank *bank;
>  	uint32_t *ttb = get_ttb();
> +	unsigned long text_start = (unsigned long)&_stext;
> +	unsigned long text_size = (unsigned long)&__start_rodata - (unsigned long)&_stext;
> +	unsigned long rodata_start = (unsigned long)&__start_rodata;
> +	unsigned long rodata_size = (unsigned long)&__end_rodata - rodata_start;
>  
>  	if (!request_barebox_region("ttb", (unsigned long)ttb,
>  				    ARM_EARLY_PAGETABLE_SIZE))
> @@ -550,6 +574,8 @@ void __mmu_init(bool mmu_on)
>  
>  	pr_debug("ttb: 0x%p\n", ttb);
>  
> +	vectors_init();
> +
>  	/*
>  	 * Early mmu init will have mapped everything but the initial memory area
>  	 * (excluding final OPTEE_SIZE bytes) uncached. We have now discovered
> @@ -568,10 +594,22 @@ void __mmu_init(bool mmu_on)
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
> +					    bank->start + bank->size - (rodata_start + rodata_size),
> +					    MAP_CACHED);
> +			} else {
> +				remap_range((void *)pos, bank->start + bank->size - pos, MAP_CACHED);
> +			}
> +		} else {
> +			remap_range((void *)pos, bank->start + bank->size - pos, MAP_CACHED);

Should be ARCH_MAP_CACHED_RWX instead. We can still combine the calls by
introducing

#ifdef CONFIG_ARM_MMU_PERMISSIONS
#define ARCH_MAP_SDRAM_DEFAULT MAP_CACHED
#else
#define ARCH_MAP_SDRAM_DEFAULT ARCH_MAP_CACHED_RWX
#endif

> +		}
>  	}
> -
> -	vectors_init();
>  }
>  
>  /*
> @@ -624,7 +662,7 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize, unsigned lon
>  	 * map the bulk of the memory as sections to avoid allocating too many page tables
>  	 * at this early stage
>  	 */
> -	early_remap_range(membase, barebox_start - membase, MAP_CACHED, false);
> +	early_remap_range(membase, barebox_start - membase, ARCH_MAP_CACHED_RWX, false);
>  	/*
>  	 * Map the remainder of the memory explicitly with two level page tables. This is
>  	 * the place where barebox proper ends at. In barebox proper we'll remap the code
> @@ -634,10 +672,10 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize, unsigned lon
>  	 * a break-before-make sequence which we can't do when barebox proper is running
>  	 * at the location being remapped.
>  	 */
> -	early_remap_range(barebox_start, barebox_size, MAP_CACHED, true);
> +	early_remap_range(barebox_start, barebox_size, ARCH_MAP_CACHED_RWX, true);
>  	early_remap_range(optee_start, OPTEE_SIZE, MAP_UNCACHED, false);
>  	early_remap_range(PAGE_ALIGN_DOWN((uintptr_t)_stext), PAGE_ALIGN(_etext - _stext),
> -			  MAP_CACHED, false);
> +			  ARCH_MAP_CACHED_RWX, false);
>  
>  	__mmu_cache_on();
>  }
> diff --git a/arch/arm/lib32/barebox.lds.S b/arch/arm/lib32/barebox.lds.S
> index a52556a35696aea6f15cad5fd3f0275e8e6349b1..dbfdd2e9c110133f7fb45e06911bfc9ea9e8299c 100644
> --- a/arch/arm/lib32/barebox.lds.S
> +++ b/arch/arm/lib32/barebox.lds.S
> @@ -30,7 +30,7 @@ SECTIONS
>  	}
>  	BAREBOX_BARE_INIT_SIZE
>  
> -	. = ALIGN(4);
> +	. = ALIGN(4096);
>  	__start_rodata = .;
>  	.rodata : {
>  		*(.rodata*)
> @@ -53,6 +53,7 @@ SECTIONS
>  		__stop_unwind_tab = .;
>  	}
>  #endif
> +	. = ALIGN(4096);
>  	__end_rodata = .;
>  	_etext = .;
>  	_sdata = .;
> diff --git a/include/mmu.h b/include/mmu.h
> index 84ec6c5efb3eb8020fdc98e76a3614c137a0f8e9..20855e89eda301527b8cd69d868d58fc79637f5e 100644
> --- a/include/mmu.h
> +++ b/include/mmu.h
> @@ -8,6 +8,7 @@
>  #define MAP_UNCACHED	0
>  #define MAP_CACHED	1
>  #define MAP_FAULT	2
> +#define MAP_CODE	3
>  
>  /*
>   * Depending on the architecture the default mapping can be
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



