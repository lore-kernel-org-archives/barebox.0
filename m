Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gkFLI-0003tM-VR
 for barebox@lists.infradead.org; Thu, 17 Jan 2019 21:36:54 +0000
Date: Thu, 17 Jan 2019 22:36:48 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20190117213648.GC4532@ravnborg.org>
References: <20190117063840.13674-1-andrew.smirnov@gmail.com>
 <20190117063840.13674-13-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190117063840.13674-13-andrew.smirnov@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 12/12] ARM: mmu: Make sure DMA coherent memory is zeroed
 out
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Andrey.

On Wed, Jan 16, 2019 at 10:38:40PM -0800, Andrey Smirnov wrote:
> In order to avoid passing random/junky values to DMA/HW as well as to
> allow simplifying memory initialization in individual drivers, chagnge
chagnge => change

> dma_alloc_coherent() to guarantee that memory it returs is properly
returs => returns
> zeroed out.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  arch/arm/cpu/mmu-common.c | 3 ++-
>  arch/arm/cpu/mmu-common.h | 1 +
>  arch/arm/cpu/mmu.c        | 2 +-
>  arch/arm/cpu/mmu_64.c     | 8 ++++++++
>  4 files changed, 12 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/cpu/mmu-common.c b/arch/arm/cpu/mmu-common.c
> index c5b24bff8..aeefbb2da 100644
> --- a/arch/arm/cpu/mmu-common.c
> +++ b/arch/arm/cpu/mmu-common.c
> @@ -43,7 +43,8 @@ void *dma_alloc_map(size_t size, dma_addr_t *dma_handle, unsigned flags)
>  	if (dma_handle)
>  		*dma_handle = (dma_addr_t)ret;
>  
> -	dma_inv_range(ret, size);
> +	memset(ret, 0, size);
> +	dma_flush_range(ret, size);
>  
>  	arch_remap_range(ret, size, flags);
>  
> diff --git a/arch/arm/cpu/mmu-common.h b/arch/arm/cpu/mmu-common.h
> index 679799c3c..0a33b138e 100644
> --- a/arch/arm/cpu/mmu-common.h
> +++ b/arch/arm/cpu/mmu-common.h
> @@ -2,6 +2,7 @@
>  #define __ARM_MMU_COMMON_H
>  
>  void dma_inv_range(void *ptr, size_t size);
> +void dma_flush_range(void *ptr, size_t size);
>  void *dma_alloc_map(size_t size, dma_addr_t *dma_handle, unsigned flags);
>  void __mmu_init(bool mmu_on);
>  
> diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
> index 9e261a0be..29816ad56 100644
> --- a/arch/arm/cpu/mmu.c
> +++ b/arch/arm/cpu/mmu.c
> @@ -97,7 +97,7 @@ static u32 *find_pte(unsigned long adr)
>  	return &table[(adr >> PAGE_SHIFT) & 0xff];
>  }
>  
> -static void dma_flush_range(void *ptr, size_t size)
> +void dma_flush_range(void *ptr, size_t size)
>  {
>  	unsigned long start = (unsigned long)ptr;
>  	unsigned long end = start + size;
> diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
> index a3074b10d..b45a69661 100644
> --- a/arch/arm/cpu/mmu_64.c
> +++ b/arch/arm/cpu/mmu_64.c
> @@ -233,6 +233,14 @@ void dma_inv_range(void *ptr, size_t size)
>  	v8_inv_dcache_range(start, end);
>  }
>  
> +void dma_flush_range(void *ptr, size_t size)
> +{
> +	unsigned long start = (unsigned long)ptr;
> +	unsigned long end = start + size - 1;
> +
> +	v8_flush_dcache_range(start, end);
> +}
We should use the existing indirection with struct cache_fns
here, then we could share the code.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
