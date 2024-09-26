Delivery-date: Thu, 26 Sep 2024 16:25:48 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stpRD-0032Bq-1P
	for lore@lore.pengutronix.de;
	Thu, 26 Sep 2024 16:25:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stpRD-0004l3-TG
	for lore@pengutronix.de; Thu, 26 Sep 2024 16:25:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kpjsrzWUNQxT2s3GJWO/bfQyQ8GIPLHqVBl9Wjn8MQ4=; b=ALZ+SA+WnlWxDco2h5YP8P6Fxm
	3QsnRHnu6sNzmQs7K6pEXCuU8iB3/fKRBj8rwjsrAjLi/l+OsjI/E8UtgYkyFKwHPvE1oIyP4Xl9o
	QwXFJUwUKbByogl8EzKyJBAb7BgQpf7Y74ZdCrvpmvDirit0QFgxBsIiY6SS4Tp62Id8wW0qaJbEP
	MLeDTG38q8vm2edb3exZvkoofLAEGEaVTQp4rbMSvj1Fp4/+X/B/9GjjnffSubhKGvxfdw+yVhDL5
	aOCAAIBPHRbVZt6a/6Fv8ibhzRycdXIVn9miA6J5L7hemXAJUgsxEyPZJQhtzwPZuk7bOBGj/ZXgm
	xVfZXfZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stpQf-00000008aLg-2DpR;
	Thu, 26 Sep 2024 14:25:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stpPg-00000008a7j-01Mj
	for barebox@lists.infradead.org;
	Thu, 26 Sep 2024 14:24:13 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1stpPe-0003YS-Ha; Thu, 26 Sep 2024 16:24:10 +0200
Message-ID: <a8fbb0fb-6b36-42a9-9379-3fd88bddc7c6@pengutronix.de>
Date: Thu, 26 Sep 2024 16:24:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 "open list:BAREBOX" <barebox@lists.infradead.org>
References: <20240926-vop2-v1-0-fe0581f2020b@pengutronix.de>
 <20240926-vop2-v1-12-fe0581f2020b@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240926-vop2-v1-12-fe0581f2020b@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240926_072412_085267_2A08E701 
X-CRM114-Status: GOOD (  18.77  )
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
Subject: Re: [PATCH 12/13] ARM: ARM64: implement dma_alloc_writecombine()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 26.09.24 15:15, Sascha Hauer wrote:
> We currently only have dma_alloc_writecombine() for aarch32. Implement
> it for aarch64 as it is useful for mapping framebuffer memory.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Thanks,
Ahmad

> ---
>  arch/arm/cpu/mmu_64.c | 11 ++++++++++-
>  arch/arm/cpu/mmu_64.h | 15 ++++++---------
>  2 files changed, 16 insertions(+), 10 deletions(-)
> 
> diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
> index 7c7834201b..7854f71f4c 100644
> --- a/arch/arm/cpu/mmu_64.c
> +++ b/arch/arm/cpu/mmu_64.c
> @@ -24,6 +24,8 @@
>  
>  #include "mmu_64.h"
>  
> +#define ARCH_MAP_WRITECOMBINE  ((unsigned)-1)
> +
>  static uint64_t *get_ttb(void)
>  {
>  	return (uint64_t *)get_ttbr(current_el());
> @@ -172,9 +174,11 @@ static unsigned long get_pte_attrs(unsigned flags)
>  	case MAP_CACHED:
>  		return CACHED_MEM;
>  	case MAP_UNCACHED:
> -		return attrs_uncached_mem();
> +		return attrs_xn() | UNCACHED_MEM;
>  	case MAP_FAULT:
>  		return 0x0;
> +	case ARCH_MAP_WRITECOMBINE:
> +		return attrs_xn() | MEM_ALLOC_WRITECOMBINE;
>  	default:
>  		return ~0UL;
>  	}
> @@ -295,6 +299,11 @@ void dma_flush_range(void *ptr, size_t size)
>  	v8_flush_dcache_range(start, end);
>  }
>  
> +void *dma_alloc_writecombine(size_t size, dma_addr_t *dma_handle)
> +{
> +	return dma_alloc_map(size, dma_handle, ARCH_MAP_WRITECOMBINE);
> +}
> +
>  static void init_range(size_t total_level0_tables)
>  {
>  	uint64_t *ttb = get_ttb();
> diff --git a/arch/arm/cpu/mmu_64.h b/arch/arm/cpu/mmu_64.h
> index e3959e4407..d3c39dabb5 100644
> --- a/arch/arm/cpu/mmu_64.h
> +++ b/arch/arm/cpu/mmu_64.h
> @@ -8,22 +8,19 @@
>  #define UNCACHED_MEM    (PTE_BLOCK_MEMTYPE(MT_DEVICE_nGnRnE) | \
>  			 PTE_BLOCK_OUTER_SHARE | \
>  			 PTE_BLOCK_AF)
> +#define MEM_ALLOC_WRITECOMBINE	(PTE_BLOCK_MEMTYPE(MT_NORMAL_NC) | \
> +				 PTE_BLOCK_OUTER_SHARE | \
> +				 PTE_BLOCK_AF)
>  
> -static inline unsigned long attrs_uncached_mem(void)
> +static inline unsigned long attrs_xn(void)
>  {
> -	unsigned long attrs = UNCACHED_MEM;
> -
>  	switch (current_el()) {
>  	case 3:
>  	case 2:
> -		attrs |= PTE_BLOCK_UXN;
> -		break;
> +		return PTE_BLOCK_UXN;
>  	default:
> -		attrs |= PTE_BLOCK_UXN | PTE_BLOCK_PXN;
> -		break;
> +		return PTE_BLOCK_UXN | PTE_BLOCK_PXN;
>  	}
> -
> -	return attrs;
>  }
>  
>  /*
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


