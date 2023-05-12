Delivery-date: Fri, 12 May 2023 20:31:29 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pxXY9-00FO5J-TY
	for lore@lore.pengutronix.de; Fri, 12 May 2023 20:31:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pxXY7-0002uC-Pp
	for lore@pengutronix.de; Fri, 12 May 2023 20:31:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bZocXs5055NMC352iOzq/EMKfKF0ywa4TTzy3XPJmB4=; b=gGgPcKUWdLW4J3Qbzjwh1O1HXT
	+I54V+xnWtrj2X/N6sfKnUOjViiv+mEDfZvKh7hUtRl2Z7oUNnrh10m3MR2CVpmNP3ApyrD+9VKjn
	oQQa+RkUE2kyjW2v/hcuxX+MgvWI5Y4leNnAaYxUvDtxP7l40gUaC0PMD/R+Qq69nnVUqoaO3tJLj
	3L6T2gr1OSro8GiEnTMm8rZpJZStFVK98mok5Z5d1MMjJHbWRHD4WMJ8YzI4IBxzuYW88RliFa4Iy
	7ftXVF3ZtlA3PfZuMHh6r9gjTNSMrX3t9d2eNf4x3gHvTBQHv4L1FCW/bb4fQf1ePZiOYTEY8HG+a
	9EnCPUOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pxXWu-00Chms-21;
	Fri, 12 May 2023 18:30:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pxXWq-00Chla-0m
	for barebox@lists.infradead.org;
	Fri, 12 May 2023 18:30:10 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1pxXWl-0002Rg-Uy; Fri, 12 May 2023 20:30:04 +0200
Message-ID: <2480434f-c479-97e5-10b0-a6261a146d7f@pengutronix.de>
Date: Fri, 12 May 2023 20:30:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20230512111008.1120833-1-s.hauer@pengutronix.de>
 <20230512111008.1120833-13-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230512111008.1120833-13-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230512_113008_281084_A4D1EC80 
X-CRM114-Status: GOOD (  25.86  )
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
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 12/27] ARM: mmu: move dma_sync_single_for_device to extra
 file
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 12.05.23 13:09, Sascha Hauer wrote:
> The next patch merges the mmu.c files with their corresponding
> mmu-early.c files. Before doing that move functions which can't
> be compiled for PBL out to extra files.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/cpu/Makefile |  1 +
>  arch/arm/cpu/dma_32.c | 20 ++++++++++++++++++++
>  arch/arm/cpu/dma_64.c | 16 ++++++++++++++++
>  arch/arm/cpu/mmu_32.c | 18 ------------------
>  arch/arm/cpu/mmu_64.c | 13 -------------
>  5 files changed, 37 insertions(+), 31 deletions(-)
>  create mode 100644 arch/arm/cpu/dma_32.c
>  create mode 100644 arch/arm/cpu/dma_64.c
> 
> diff --git a/arch/arm/cpu/Makefile b/arch/arm/cpu/Makefile
> index fef2026da5..cd5f36eb49 100644
> --- a/arch/arm/cpu/Makefile
> +++ b/arch/arm/cpu/Makefile
> @@ -4,6 +4,7 @@ obj-y += cpu.o
>  
>  obj-$(CONFIG_ARM_EXCEPTIONS) += exceptions_$(S64_32).o interrupts_$(S64_32).o
>  obj-$(CONFIG_MMU) += mmu_$(S64_32).o mmu-common.o
> +obj-$(CONFIG_MMU) += dma_$(S64_32).o
>  obj-pbl-y += lowlevel_$(S64_32).o
>  obj-pbl-$(CONFIG_MMU) += mmu-early_$(S64_32).o
>  obj-pbl-$(CONFIG_CPU_32v7) += hyp.o
> diff --git a/arch/arm/cpu/dma_32.c b/arch/arm/cpu/dma_32.c
> new file mode 100644
> index 0000000000..a66aa26b9b
> --- /dev/null
> +++ b/arch/arm/cpu/dma_32.c
> @@ -0,0 +1,20 @@
> +#include <dma.h>
> +#include <asm/mmu.h>
> +
> +void dma_sync_single_for_device(dma_addr_t address, size_t size,
> +				enum dma_data_direction dir)
> +{
> +	/*
> +	 * FIXME: This function needs a device argument to support non 1:1 mappings
> +	 */
> +
> +	if (dir == DMA_FROM_DEVICE) {
> +		__dma_inv_range(address, address + size);
> +		if (outer_cache.inv_range)
> +			outer_cache.inv_range(address, address + size);

I know this is unrelated to your series, but this is wrong. The outermost
cache must be be invalidated before L1. Otherwise we could have this
unlucky constellation:

  - CPU is invalidating L1
  - HW prefetcher wants to load something into L1
  - Stale data in L2 is loaded into L1
  - Only now CPU invalidates L2

Could you send a fix? :-)

> +	} else {
> +		__dma_clean_range(address, address + size);
> +		if (outer_cache.clean_range)
> +			outer_cache.clean_range(address, address + size);

This is fine though.

> +	}
> +}
> diff --git a/arch/arm/cpu/dma_64.c b/arch/arm/cpu/dma_64.c
> new file mode 100644
> index 0000000000..b4ae736c9b
> --- /dev/null
> +++ b/arch/arm/cpu/dma_64.c
> @@ -0,0 +1,16 @@
> +#include <dma.h>
> +#include <asm/mmu.h>
> +#include <asm/cache.h>
> +
> +void dma_sync_single_for_device(dma_addr_t address, size_t size,
> +                                enum dma_data_direction dir)
> +{
> +	/*
> +	 * FIXME: This function needs a device argument to support non 1:1 mappings
> +	 */
> +
> +	if (dir == DMA_FROM_DEVICE)
> +		v8_inv_dcache_range(address, address + size - 1);
> +	else
> +		v8_flush_dcache_range(address, address + size - 1);
> +}
> diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
> index 7b31938ecd..10f447874c 100644
> --- a/arch/arm/cpu/mmu_32.c
> +++ b/arch/arm/cpu/mmu_32.c
> @@ -494,21 +494,3 @@ void *dma_alloc_writecombine(size_t size, dma_addr_t *dma_handle)
>  {
>  	return dma_alloc_map(size, dma_handle, ARCH_MAP_WRITECOMBINE);
>  }
> -
> -void dma_sync_single_for_device(dma_addr_t address, size_t size,
> -				enum dma_data_direction dir)
> -{
> -	/*
> -	 * FIXME: This function needs a device argument to support non 1:1 mappings
> -	 */
> -
> -	if (dir == DMA_FROM_DEVICE) {
> -		__dma_inv_range(address, address + size);
> -		if (outer_cache.inv_range)
> -			outer_cache.inv_range(address, address + size);
> -	} else {
> -		__dma_clean_range(address, address + size);
> -		if (outer_cache.clean_range)
> -			outer_cache.clean_range(address, address + size);
> -	}
> -}
> diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
> index c7c16b527b..9150de1676 100644
> --- a/arch/arm/cpu/mmu_64.c
> +++ b/arch/arm/cpu/mmu_64.c
> @@ -241,16 +241,3 @@ void dma_flush_range(void *ptr, size_t size)
>  
>  	v8_flush_dcache_range(start, end);
>  }
> -
> -void dma_sync_single_for_device(dma_addr_t address, size_t size,
> -                                enum dma_data_direction dir)
> -{
> -	/*
> -	 * FIXME: This function needs a device argument to support non 1:1 mappings
> -	 */
> -
> -	if (dir == DMA_FROM_DEVICE)
> -		v8_inv_dcache_range(address, address + size - 1);
> -	else
> -		v8_flush_dcache_range(address, address + size - 1);
> -}

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



