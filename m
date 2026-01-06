Delivery-date: Tue, 06 Jan 2026 14:15:07 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd6tv-001u7i-1l
	for lore@lore.pengutronix.de;
	Tue, 06 Jan 2026 14:15:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd6tr-000676-Pu
	for lore@pengutronix.de; Tue, 06 Jan 2026 14:15:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=es256WYQpNw7M/KkLpHNC5i5ma4VKDkEwe+bIthURyw=; b=BbyD43KMc+g7VHCocc2AlP/W2o
	My9NXfUEsqVmqFtoLG2XsXkOwR61zlhgZFZ92Z33ddXZ2izvQU+noBiK2QtL5yZi52ZUb9qxSymau
	EsMi3J9EhJxD2O+2tPP+5eHUhjVGKLx5ZH7rYPMI7oo9YtbhypTSI0ZJqWjJV93Q9NU7ga68OMIho
	lLb8QkfTkhqlysbHoHzgEqOLy0M1bBDk5yYd8JQzLCPHFSdrhlquTrdHnUmmehXlUu5qgb88btz7o
	hzIFO3IbjH1wVW0VRKSM2HrN5a3BoUglF9wM0mQC7dEcB2dTKBts2sV+wU+TaJqF4p4pz1+6EHUeF
	mVnrOb6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd6tR-0000000D4ew-3y1K;
	Tue, 06 Jan 2026 13:14:37 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd6tQ-0000000D4ej-13LF
	for barebox@bombadil.infradead.org;
	Tue, 06 Jan 2026 13:14:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=es256WYQpNw7M/KkLpHNC5i5ma4VKDkEwe+bIthURyw=; b=RLaQ3cx3hnmngbFUBdcsJy/DF1
	FUFrxrLO9QsGjxpF8VAIBX+GOzShJ4LEPkRfr466v6UZvsySubSKda9pDZoew8IiA/f6iEolrKz3M
	v2umzt4wBttTlWAcUyvmMvVE0Sk3Dz8KcHnHx4wrRNo9zKxKWy/aAfuqcCyfmTiXB3nZl1GUzPy+4
	EIbCEk8yheqGssDZ9IGOJZF09TqRNUDJGvA1t78lbehkOAbCWY13INTNQ0a1JO3LynBNHFZfMCjcf
	xsLprJILD1qhKKp3jR7dgdjmr893SVn0X7rjRW5LNytbxLRgA3RH91z/wtRqY1OGWQeOlM/8o2RxQ
	L4/2N1hw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd6tN-00000009kKj-1FTJ
	for barebox@lists.infradead.org;
	Tue, 06 Jan 2026 13:14:35 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vd6tM-0005zW-KR; Tue, 06 Jan 2026 14:14:32 +0100
Message-ID: <13ab23cb-a58f-48c0-bd0c-5d71c9a420ab@pengutronix.de>
Date: Tue, 6 Jan 2026 14:14:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
Cc: "Claude Sonnet 4.5" <noreply@anthropic.com>
References: <20260106-pbl-load-elf-v2-0-487bc760f045@pengutronix.de>
 <20260106-pbl-load-elf-v2-11-487bc760f045@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260106-pbl-load-elf-v2-11-487bc760f045@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260106_131433_384365_5564534A 
X-CRM114-Status: GOOD (  19.24  )
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
Subject: Re: [PATCH v2 11/21] mmu: add MAP_CACHED_RO mapping type
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 1/6/26 1:53 PM, Sascha Hauer wrote:
> ARM32 and ARM64 have ARCH_MAP_CACHED_RO. We'll move parts of the MMU
> initialization to generic code later, so add a new mapping type to
> include/mmu.h.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  arch/arm/cpu/mmu-common.c | 4 ++--
>  arch/arm/cpu/mmu-common.h | 3 +--
>  arch/arm/cpu/mmu_32.c     | 4 ++--
>  arch/arm/cpu/mmu_64.c     | 2 +-
>  include/mmu.h             | 3 ++-
>  5 files changed, 8 insertions(+), 8 deletions(-)
> 
> diff --git a/arch/arm/cpu/mmu-common.c b/arch/arm/cpu/mmu-common.c
> index a1431c0ff46112552d2919269cc8a7a66d7a20c1..67317f127cadb138cc2e85bb18c92ab47bc1206f 100644
> --- a/arch/arm/cpu/mmu-common.c
> +++ b/arch/arm/cpu/mmu-common.c
> @@ -22,7 +22,7 @@ const char *map_type_tostr(maptype_t map_type)
>  
>  	switch (map_type) {
>  	case ARCH_MAP_CACHED_RWX:	return "RWX";
> -	case ARCH_MAP_CACHED_RO:	return "RO";
> +	case MAP_CACHED_RO:		return "RO";
>  	case MAP_CACHED:		return "CACHED";
>  	case MAP_UNCACHED:		return "UNCACHED";
>  	case MAP_CODE:			return "CODE";
> @@ -158,7 +158,7 @@ static void mmu_remap_memory_banks(void)
>  	}
>  
>  	remap_range((void *)code_start, code_size, MAP_CODE);
> -	remap_range((void *)rodata_start, rodata_size, ARCH_MAP_CACHED_RO);
> +	remap_range((void *)rodata_start, rodata_size, MAP_CACHED_RO);
>  
>  	setup_trap_pages();
>  }
> diff --git a/arch/arm/cpu/mmu-common.h b/arch/arm/cpu/mmu-common.h
> index a111e15a21b479b5ffa2ea8973e2ad189e531925..b42c421ffde8ebba84b17c6311b735f7759dc69b 100644
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
> +	case MAP_CACHED_RO:
>  		return ARCH_MAP_CACHED_RWX;
>  	default:
>  		return map_type;
> diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
> index 912d14e8cf82afcfd1800e4e11503899e10ccbbc..71ead41c3d274548c9427c1ce9833de309114c4d 100644
> --- a/arch/arm/cpu/mmu_32.c
> +++ b/arch/arm/cpu/mmu_32.c
> @@ -304,7 +304,7 @@ static uint32_t get_pte_flags(maptype_t map_type)
>  		switch (map_type & MAP_TYPE_MASK) {
>  		case ARCH_MAP_CACHED_RWX:
>  			return PTE_FLAGS_CACHED_V7_RWX;
> -		case ARCH_MAP_CACHED_RO:
> +		case MAP_CACHED_RO:
>  			return PTE_FLAGS_CACHED_RO_V7;
>  		case MAP_CACHED:
>  			return PTE_FLAGS_CACHED_V7;
> @@ -320,7 +320,7 @@ static uint32_t get_pte_flags(maptype_t map_type)
>  		}
>  	} else {
>  		switch (map_type & MAP_TYPE_MASK) {
> -		case ARCH_MAP_CACHED_RO:
> +		case MAP_CACHED_RO:
>  		case MAP_CODE:
>  			return PTE_FLAGS_CACHED_RO_V4;
>  		case ARCH_MAP_CACHED_RWX:
> diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
> index 56c6a21f2b2a8d8300fd6dbfaaf36a54d264a0f3..ddf1373ec0a801baad043146187d7f4c3eac6a2a 100644
> --- a/arch/arm/cpu/mmu_64.c
> +++ b/arch/arm/cpu/mmu_64.c
> @@ -159,7 +159,7 @@ static unsigned long get_pte_attrs(maptype_t map_type)
>  		return attrs_xn() | MEM_ALLOC_WRITECOMBINE;
>  	case MAP_CODE:
>  		return CACHED_MEM | PTE_BLOCK_RO;
> -	case ARCH_MAP_CACHED_RO:
> +	case MAP_CACHED_RO:
>  		return attrs_xn() | CACHED_MEM | PTE_BLOCK_RO;
>  	case ARCH_MAP_CACHED_RWX:
>  		return CACHED_MEM;
> diff --git a/include/mmu.h b/include/mmu.h
> index f79619808829532ed05f018b982e4bc76bca72a4..9f582f25e1de14d47cfe2eff64f9cce81c4e492d 100644
> --- a/include/mmu.h
> +++ b/include/mmu.h
> @@ -9,9 +9,10 @@
>  #define MAP_CACHED		1
>  #define MAP_FAULT		2
>  #define MAP_CODE		3
> +#define MAP_CACHED_RO		4
>  
>  #ifdef CONFIG_ARCH_HAS_DMA_WRITE_COMBINE
> -#define MAP_WRITECOMBINE	4
> +#define MAP_WRITECOMBINE	5
>  #else
>  #define MAP_WRITECOMBINE	MAP_UNCACHED
>  #endif
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



