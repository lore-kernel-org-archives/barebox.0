Delivery-date: Mon, 05 Jan 2026 13:13:48 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcjT2-001W5g-33
	for lore@lore.pengutronix.de;
	Mon, 05 Jan 2026 13:13:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcjT2-00042E-93
	for lore@pengutronix.de; Mon, 05 Jan 2026 13:13:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qPctwXhEgo0qqBFRXnuk9zrSThbrrnIk8R/bXUOsP/s=; b=ICfgAGCgyASpb2R1JQNr8du7YN
	0lDx/SHoeYZgxuHlUmU9wErPNcgzy9syDzG7Tz4tChjt4e9+mCKuwqrH7Yg9mt8ZovSXYxCRme+aJ
	qWOutxgnL0qXHKqnIh5yv9+BrXD8Fmqrksrxrhxfgd9Rl3Lf+5Gap63YkwJMXp1qy3WcnTo9jtqzR
	W/e155hAFb6dAl954N8SEFC6rgpLtiSFhw84dhqCEf8v8dgQh6R9txyPJ32vDs+mwIFPXsv0Cg5qk
	v7SvagZA1sqZzCoxJSbcGDY5IJTNUMBLz0NNfsN7WpXMwcTURsFgrIOQ/zchYHLXuSca7WnCRwFhm
	jEKQHg8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcjSa-0000000BFzx-3Qqc;
	Mon, 05 Jan 2026 12:13:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcjSY-0000000BFzb-2IWw
	for barebox@lists.infradead.org;
	Mon, 05 Jan 2026 12:13:19 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vcjSW-0003vN-UO; Mon, 05 Jan 2026 13:13:16 +0100
Message-ID: <edf42b5a-e639-416a-b7ae-61a4e7cde8ba@pengutronix.de>
Date: Mon, 5 Jan 2026 13:13:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Ahmad Fatoum <a.fatoum@barebox.org>, barebox@lists.infradead.org
References: <20260105084746.3289185-1-a.fatoum@barebox.org>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260105084746.3289185-1-a.fatoum@barebox.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_041318_593534_629AB5BC 
X-CRM114-Status: GOOD (  20.52  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] mmu: move MAP_RO definition into global mmu.h header
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 1/5/26 9:47 AM, Ahmad Fatoum wrote:
> To allow generic code to remap memory as read-only, let's add the
> definition to the global header.
> 
> On platforms other than ARM, mapping R/O will just be cached R/W.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>

Please disregard in favor of Sascha's version. I think it's better to
just let it fail on unsupported architectures instead of mapping it to
MAP_CACHED.

Cheers,
Ahmad

> ---
>  arch/Kconfig              | 3 +++
>  arch/arm/Kconfig          | 1 +
>  arch/arm/cpu/mmu-common.c | 4 ++--
>  arch/arm/cpu/mmu-common.h | 3 +--
>  arch/arm/cpu/mmu_32.c     | 4 ++--
>  arch/arm/cpu/mmu_64.c     | 2 +-
>  include/mmu.h             | 6 ++++++
>  7 files changed, 16 insertions(+), 7 deletions(-)
> 
> diff --git a/arch/Kconfig b/arch/Kconfig
> index ca9aa25a9c4b..3daba5239740 100644
> --- a/arch/Kconfig
> +++ b/arch/Kconfig
> @@ -62,6 +62,9 @@ config ARCH_DMA_DEFAULT_COHERENT
>  config ARCH_HAS_DMA_WRITE_COMBINE
>  	bool
>  
> +config ARCH_HAS_RO_MAPPINGS
> +	bool
> +
>  config ARCH_HAS_ASAN_FIBER_API
>  	bool
>  
> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> index 5123e9b1402c..d9b1f5de1fa7 100644
> --- a/arch/arm/Kconfig
> +++ b/arch/arm/Kconfig
> @@ -17,6 +17,7 @@ config ARM
>  	select HAVE_ARCH_BOOTM_OFTREE
>  	select HW_HAS_PCI
>  	select ARCH_HAS_DMA_WRITE_COMBINE
> +	select ARCH_HAS_RO_MAPPINGS
>  	select HAVE_EFI_LOADER if MMU # for payload unaligned accesses
>  	default y
>  
> diff --git a/arch/arm/cpu/mmu-common.c b/arch/arm/cpu/mmu-common.c
> index a1431c0ff461..6db85fa9c7d4 100644
> --- a/arch/arm/cpu/mmu-common.c
> +++ b/arch/arm/cpu/mmu-common.c
> @@ -22,7 +22,7 @@ const char *map_type_tostr(maptype_t map_type)
>  
>  	switch (map_type) {
>  	case ARCH_MAP_CACHED_RWX:	return "RWX";
> -	case ARCH_MAP_CACHED_RO:	return "RO";
> +	case MAP_RO:			return "RO";
>  	case MAP_CACHED:		return "CACHED";
>  	case MAP_UNCACHED:		return "UNCACHED";
>  	case MAP_CODE:			return "CODE";
> @@ -158,7 +158,7 @@ static void mmu_remap_memory_banks(void)
>  	}
>  
>  	remap_range((void *)code_start, code_size, MAP_CODE);
> -	remap_range((void *)rodata_start, rodata_size, ARCH_MAP_CACHED_RO);
> +	remap_range((void *)rodata_start, rodata_size, MAP_RO);
>  
>  	setup_trap_pages();
>  }
> diff --git a/arch/arm/cpu/mmu-common.h b/arch/arm/cpu/mmu-common.h
> index a111e15a21b4..39332d8f5a98 100644
> --- a/arch/arm/cpu/mmu-common.h
> +++ b/arch/arm/cpu/mmu-common.h
> @@ -12,7 +12,6 @@
>  #include <linux/bits.h>
>  
>  #define ARCH_MAP_CACHED_RWX	MAP_ARCH(2)
> -#define ARCH_MAP_CACHED_RO	MAP_ARCH(3)
>  
>  #define ARCH_MAP_FLAG_PAGEWISE	BIT(31)
>  
> @@ -32,7 +31,7 @@ static inline maptype_t arm_mmu_maybe_skip_permissions(maptype_t map_type)
>  	switch (map_type & MAP_TYPE_MASK) {
>  	case MAP_CODE:
>  	case MAP_CACHED:
> -	case ARCH_MAP_CACHED_RO:
> +	case MAP_RO:
>  		return ARCH_MAP_CACHED_RWX;
>  	default:
>  		return map_type;
> diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
> index 912d14e8cf82..d41ebcfb7fe4 100644
> --- a/arch/arm/cpu/mmu_32.c
> +++ b/arch/arm/cpu/mmu_32.c
> @@ -304,7 +304,7 @@ static uint32_t get_pte_flags(maptype_t map_type)
>  		switch (map_type & MAP_TYPE_MASK) {
>  		case ARCH_MAP_CACHED_RWX:
>  			return PTE_FLAGS_CACHED_V7_RWX;
> -		case ARCH_MAP_CACHED_RO:
> +		case MAP_RO:
>  			return PTE_FLAGS_CACHED_RO_V7;
>  		case MAP_CACHED:
>  			return PTE_FLAGS_CACHED_V7;
> @@ -320,7 +320,7 @@ static uint32_t get_pte_flags(maptype_t map_type)
>  		}
>  	} else {
>  		switch (map_type & MAP_TYPE_MASK) {
> -		case ARCH_MAP_CACHED_RO:
> +		case MAP_RO:
>  		case MAP_CODE:
>  			return PTE_FLAGS_CACHED_RO_V4;
>  		case ARCH_MAP_CACHED_RWX:
> diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
> index 56c6a21f2b2a..006b2b29478f 100644
> --- a/arch/arm/cpu/mmu_64.c
> +++ b/arch/arm/cpu/mmu_64.c
> @@ -159,7 +159,7 @@ static unsigned long get_pte_attrs(maptype_t map_type)
>  		return attrs_xn() | MEM_ALLOC_WRITECOMBINE;
>  	case MAP_CODE:
>  		return CACHED_MEM | PTE_BLOCK_RO;
> -	case ARCH_MAP_CACHED_RO:
> +	case MAP_RO:
>  		return attrs_xn() | CACHED_MEM | PTE_BLOCK_RO;
>  	case ARCH_MAP_CACHED_RWX:
>  		return CACHED_MEM;
> diff --git a/include/mmu.h b/include/mmu.h
> index f79619808829..7d87885a5cb4 100644
> --- a/include/mmu.h
> +++ b/include/mmu.h
> @@ -16,6 +16,12 @@
>  #define MAP_WRITECOMBINE	MAP_UNCACHED
>  #endif
>  
> +#ifdef CONFIG_ARCH_HAS_RO_MAPPINGS
> +#define MAP_RO			5
> +#else
> +#define MAP_RO			MAP_CACHED
> +#endif
> +
>  #define MAP_TYPE_MASK	0xFFFF
>  #define MAP_ARCH(x)	((u16)~(x))
>  

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



