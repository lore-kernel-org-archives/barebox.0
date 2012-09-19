Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TEO7z-0001YN-GD
 for barebox@lists.infradead.org; Wed, 19 Sep 2012 17:32:00 +0000
Date: Wed, 19 Sep 2012 19:31:57 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120919173157.GK6180@pengutronix.de>
References: <1347795495-15619-1-git-send-email-franck.jullien@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1347795495-15619-1-git-send-email-franck.jullien@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] nios2: Fix DMA functions when CPU has no dcache
To: Franck Jullien <franck.jullien@gmail.com>
Cc: barebox@lists.infradead.org

On Sun, Sep 16, 2012 at 01:38:15PM +0200, Franck Jullien wrote:
> Signed-off-by: Franck Jullien <franck.jullien@gmail.com>

Applied, thanks

Sascha

> ---
>  arch/nios2/include/asm/dma-mapping.h |   14 +++++++++++++-
>  1 files changed, 13 insertions(+), 1 deletions(-)
> 
> diff --git a/arch/nios2/include/asm/dma-mapping.h b/arch/nios2/include/asm/dma-mapping.h
> index 9819a97..620c207 100644
> --- a/arch/nios2/include/asm/dma-mapping.h
> +++ b/arch/nios2/include/asm/dma-mapping.h
> @@ -6,7 +6,6 @@
>  
>  #include <asm/cache.h>
>  
> -
>  /* dma_alloc_coherent() return cache-line aligned allocation which is mapped
>   * to uncached io region.
>   *
> @@ -14,6 +13,7 @@
>   *   0x80000000 for nommu, 0xe0000000 for mmu
>   */
>  
> +#if (DCACHE_SIZE != 0)
>  static inline void *dma_alloc_coherent(size_t len, unsigned long *handle)
>  {
>  	void *addr = malloc(len + DCACHE_LINE_SIZE);
> @@ -25,11 +25,23 @@ static inline void *dma_alloc_coherent(size_t len, unsigned long *handle)
>  		~(DCACHE_LINE_SIZE - 1) & ~(IO_REGION_BASE);
>  	return (void *)(*handle | IO_REGION_BASE);
>  }
> +#else
> +static inline void *dma_alloc_coherent(size_t len, unsigned long *handle)
> +{
> +	void *addr = malloc(len);
> +	if (!addr)
> +		return 0;
> +	*handle = (unsigned long)addr;
> +	return (void *)(*handle | IO_REGION_BASE);
> +}
> +#endif
>  
> +#if (DCACHE_SIZE != 0)
>  #define dma_alloc dma_alloc
>  static inline void *dma_alloc(size_t size)
>  {
>  	return xmemalign(DCACHE_LINE_SIZE, ALIGN(size, DCACHE_LINE_SIZE));
>  }
> +#endif
>  
>  #endif /* __ASM_NIOS2_DMA_MAPPING_H */
> -- 
> 1.7.1
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
