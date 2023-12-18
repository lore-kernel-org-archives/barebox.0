Delivery-date: Mon, 18 Dec 2023 13:44:36 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rFCz6-002r90-2w
	for lore@lore.pengutronix.de;
	Mon, 18 Dec 2023 13:44:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rFCz6-0001Bg-89
	for lore@pengutronix.de; Mon, 18 Dec 2023 13:44:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ie1Uq4rrEQjw9SZ8sDN9Tcs3HrZ7n9w24QgUPtJzt/M=; b=UX6/wzPRarO2u4pahqKj6G5ayF
	4VTV51rHrEWBWefIt2SX1WE3DCehfHVXVXjdMQb3rKmrB4BAMfRjJEbaiPRPHoDidqAtdOIIb7Jfg
	j2ULIYJvlrdPUWcVOI4IhjyR8Dys8uvFyR0yOFFK1pO5mFg0dchHy1pKcc8QMR4Lcso0MVT2pEbPm
	l2x/3N4H+uX3YJlbhf07vhwnuUX4rNVpkcTyFIDuIjZdufw3eMH/kTG0veaO9muOyYNrXgOu8dQex
	bC0JrbYk8Ac6POVo0d/+dgQNIKkemsImGdSI2n46kEkUETukeval4mKJy5sl3Mg5SpZdRWXqcdBdE
	1e4j/alg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFCy7-00Aezd-0A;
	Mon, 18 Dec 2023 12:43:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFCy4-00Aez4-1s
	for barebox@lists.infradead.org;
	Mon, 18 Dec 2023 12:43:34 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rFCy3-0000cX-Di; Mon, 18 Dec 2023 13:43:31 +0100
Message-ID: <76e13d04-83ff-47d1-899a-c96c6bb00b72@pengutronix.de>
Date: Mon, 18 Dec 2023 13:43:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Lior Weintraub <liorw@pliops.com>,
 "barebox@lists.infradead.org" <barebox@lists.infradead.org>
References: <PR3P195MB055567DB185710A642B12808C390A@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <PR3P195MB055567DB185710A642B12808C390A@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231218_044332_661300_D7229184 
X-CRM114-Status: GOOD (  23.59  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ARM64: mmu: fix mmu_early_enable VA->PA mapping
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 18.12.23 13:05, Lior Weintraub wrote:
> From 1b8f4ee9e29e722bbb0b7d0f7fed0ae213ef8637 Mon Sep 17 00:00:00 2001
> From: Lior Weintraub <liorw@pliops.com>
> Date: Mon, 18 Dec 2023 14:01:16 +0200
> Subject: [PATCH] ARM64: mmu: fix mmu_early_enable VA->PA mapping
> 
> Fix the mmu_early_enable function to correctly map 40bits of virtual address into physical address with a 1:1 mapping.
> It uses the init_range function to sets 2 table entries on TTB level0 and then fill level1 with the correct 1:1 mapping.
> 
> Signed-off-by: Lior Weintraub <liorw@pliops.com>

Tested-by: Ahmad Fatoum <a.fatoum@pengutronix.de> # Qemu ARM64 Virt

I ran into some warnings when building, for which I sent out a patch
just now. I think Sascha can squash them if there are no further
comments.

Cheers,
Ahmad

> ---
>  arch/arm/cpu/mmu_64.c            | 17 ++++++++++++++++-
>  arch/arm/cpu/mmu_64.h            | 19 +++++++++++++++++--
>  arch/arm/include/asm/pgtable64.h |  1 +
>  3 files changed, 34 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
> index c6ea63e655..fe5babbfd9 100644
> --- a/arch/arm/cpu/mmu_64.c
> +++ b/arch/arm/cpu/mmu_64.c
> @@ -294,6 +294,19 @@ void dma_flush_range(void *ptr, size_t size)
>  	v8_flush_dcache_range(start, end);
>  }
>  
> +void init_range(void *virt_addr, size_t size)
> +{
> +	uint64_t *ttb = get_ttb();
> +	uint64_t addr = (uint64_t)virt_addr;
> +	while(size) {
> +		early_remap_range((void *)addr, L0_XLAT_SIZE, MAP_UNCACHED);
> +		split_block(ttb,0);
> +		size -= L0_XLAT_SIZE;
> +		addr += L0_XLAT_SIZE;
> +		ttb++;
> +	}
> +}
> +
>  void mmu_early_enable(unsigned long membase, unsigned long memsize)
>  {
>  	int el;
> @@ -308,7 +321,9 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize)
>  
>  	memset((void *)ttb, 0, GRANULE_SIZE);
>  
> -	early_remap_range(0, 1UL << (BITS_PER_VA - 1), MAP_UNCACHED);
> +	// Assume maximum BITS_PER_PA set to 40 bits.
> +	// Set 1:1 mapping of VA->PA. So to cover the full 1TB range we need 2 tables.
> +	init_range(0, 2*L0_XLAT_SIZE);
>  	early_remap_range(membase, memsize - OPTEE_SIZE, MAP_CACHED);
>  	early_remap_range(membase + memsize - OPTEE_SIZE, OPTEE_SIZE, MAP_FAULT);
>  	early_remap_range(PAGE_ALIGN_DOWN((uintptr_t)_stext), PAGE_ALIGN(_etext - _stext), MAP_CACHED);
> diff --git a/arch/arm/cpu/mmu_64.h b/arch/arm/cpu/mmu_64.h
> index e4d81dace4..e3959e4407 100644
> --- a/arch/arm/cpu/mmu_64.h
> +++ b/arch/arm/cpu/mmu_64.h
> @@ -105,12 +105,27 @@ static inline uint64_t level2mask(int level)
>  	return mask;
>  }
>  
> +/**
> + * @brief Returns the TCR (Translation Control Register) value
> + * 
> + * @param el - Exception Level
> + * @param va_bits - Virtual Address bits
> + * @return uint64_t TCR
> + */
>  static inline uint64_t calc_tcr(int el, int va_bits)
>  {
> -	u64 ips;
> -	u64 tcr;
> +	u64 ips; // Intermediate Physical Address Size
> +	u64 tcr; // Translation Control Register
>  
> +#if (BITS_PER_PA == 40)
>  	ips = 2;
> +#elif (BITS_PER_PA == 36)
> +	ips = 1;
> +#elif (BITS_PER_PA == 32)
> +	ips = 0;
> +#else
> +#error "Unsupported"
> +#endif
>  
>  	if (el == 1)
>  		tcr = (ips << 32) | TCR_EPD1_DISABLE;
> diff --git a/arch/arm/include/asm/pgtable64.h b/arch/arm/include/asm/pgtable64.h
> index 21dac30cfe..b88ffe6be5 100644
> --- a/arch/arm/include/asm/pgtable64.h
> +++ b/arch/arm/include/asm/pgtable64.h
> @@ -8,6 +8,7 @@
>  
>  #define VA_START                   0x0
>  #define BITS_PER_VA                48
> +#define BITS_PER_PA                40 // Use 40 Physical address bits
>  
>  /* Granule size of 4KB is being used */
>  #define GRANULE_SIZE_SHIFT         12

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



