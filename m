Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fJCpb-0004Dx-OI
 for barebox@lists.infradead.org; Thu, 17 May 2018 06:56:13 +0000
Date: Thu, 17 May 2018 08:55:53 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180517065553.myhqjqp33allblkk@pengutronix.de>
References: <20180516200036.29829-1-andrew.smirnov@gmail.com>
 <20180516200036.29829-10-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180516200036.29829-10-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH v2 09/28] ARM: mmu: Specify size in bytes in
 create_sections()
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, May 16, 2018 at 01:00:17PM -0700, Andrey Smirnov wrote:
> Seeing
> 
>         create_sections(ttb, 0, PAGE_SIZE, ...);
> 
> as the code the creates initial flat 4 GiB mapping is a bit less
> intuitive then
> 
>         create_sections(ttb, 0, SZ_4G, ...);
> 
> so, for the sake of clarification, convert create_sections() to accept
> size in bytes and do bytes -> MiB converstion as a part of the
> function.
> 
> NOTE: To keep all of the arguments of create_sections() 32-bit:
> 
>     - Move all of the real code into a helper function accepting first
>       and last addresses of the region (e.g passing 0 and U32_MAX
>       means all 4GiB of address space)
> 
>     - Convert create_section() into a macro that does necessary size
>       -> last addres conversion under the hood to preserve original API
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  arch/arm/cpu/mmu-early.c |  4 ++--
>  arch/arm/cpu/mmu.c       |  4 ++--
>  arch/arm/cpu/mmu.h       | 22 ++++++++++++++++------
>  3 files changed, 20 insertions(+), 10 deletions(-)
> 
> diff --git a/arch/arm/cpu/mmu-early.c b/arch/arm/cpu/mmu-early.c
> index 70ece0d2f..136b33c3a 100644
> --- a/arch/arm/cpu/mmu-early.c
> +++ b/arch/arm/cpu/mmu-early.c
> @@ -16,7 +16,7 @@ static void map_cachable(unsigned long start, unsigned long size)
>  	start = ALIGN_DOWN(start, SZ_1M);
>  	size  = ALIGN(size, SZ_1M);
>  
> -	create_sections(ttb, start, size >> 20, PMD_SECT_AP_WRITE |
> +	create_sections(ttb, start, size, PMD_SECT_AP_WRITE |
>  			PMD_SECT_AP_READ | PMD_TYPE_SECT | PMD_SECT_WB);
>  }
>  
> @@ -30,7 +30,7 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize,
>  	set_ttbr(ttb);
>  	set_domain(DOMAIN_MANAGER);
>  
> -	create_sections(ttb, 0, 4096, PMD_SECT_AP_WRITE |
> +	create_sections(ttb, 0, SZ_4G, PMD_SECT_AP_WRITE |
>  			PMD_SECT_AP_READ | PMD_TYPE_SECT);
>  
>  	map_cachable(membase, memsize);
> diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
> index 0c367e47c..f02c99f65 100644
> --- a/arch/arm/cpu/mmu.c
> +++ b/arch/arm/cpu/mmu.c
> @@ -460,7 +460,7 @@ static int mmu_init(void)
>  	set_domain(DOMAIN_MANAGER);
>  
>  	/* create a flat mapping using 1MiB sections */
> -	create_sections(ttb, 0, PAGE_SIZE, PMD_SECT_AP_WRITE | PMD_SECT_AP_READ |
> +	create_sections(ttb, 0, SZ_4G, PMD_SECT_AP_WRITE | PMD_SECT_AP_READ |
>  			PMD_TYPE_SECT);
>  	__mmu_cache_flush();
>  
> @@ -472,7 +472,7 @@ static int mmu_init(void)
>  	 * below
>  	 */
>  	for_each_memory_bank(bank) {
> -		create_sections(ttb, bank->start, bank->size >> 20,
> +		create_sections(ttb, bank->start, bank->size,
>  				PMD_SECT_DEF_CACHED);
>  		__mmu_cache_flush();
>  	}
> diff --git a/arch/arm/cpu/mmu.h b/arch/arm/cpu/mmu.h
> index d71cd7e38..52689359a 100644
> --- a/arch/arm/cpu/mmu.h
> +++ b/arch/arm/cpu/mmu.h
> @@ -27,16 +27,26 @@ static inline void set_domain(unsigned val)
>  }
>  
>  static inline void
> -create_sections(uint32_t *ttb, unsigned long addr,
> -		int size_m, unsigned int flags)
> +__create_sections(uint32_t *ttb, unsigned long first,
> +		  unsigned long last, unsigned int flags)
>  {
> -	unsigned long ttb_start = addr >> 20;
> -	unsigned long ttb_end   = ttb_start + size_m;
> -	unsigned int i;
> +	unsigned long ttb_start = first >> 20;
> +	unsigned long ttb_end   = (last >> 20) + 1;
> +	unsigned int i, addr;
>  
> -	for (i = ttb_start; i < ttb_end; i++, addr += SZ_1M)
> +	for (i = ttb_start, addr = first; i < ttb_end; i++, addr += SZ_1M)
>  		ttb[i] = addr | flags;
>  }
>  
> +#define create_sections(ttb, addr, size, flags)				\
> +	({								\
> +		typeof(addr) __addr = addr;				\
> +		typeof(size) __size = size;				\
> +		/* Check for overflow */				\
> +		BUG_ON(__addr > ULONG_MAX - __size + 1);		\
> +		__create_sections(ttb, __addr, __addr + (size)  - 1,	\
> +				  flags);				\
> +	})

Why do you preserve the original API of create_sections()? I would just
change it. We have only a few callers and they are easy to change.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
