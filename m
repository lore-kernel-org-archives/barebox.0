Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fJ3On-0007WR-JR
 for barebox@lists.infradead.org; Wed, 16 May 2018 20:51:51 +0000
Date: Wed, 16 May 2018 22:49:29 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20180516204929.GA12718@ravnborg.org>
References: <20180516200036.29829-1-andrew.smirnov@gmail.com>
 <20180516200036.29829-7-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180516200036.29829-7-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH v2 06/28] ARM: mmu: Share code for create_sections()
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Andrey

On Wed, May 16, 2018 at 01:00:14PM -0700, Andrey Smirnov wrote:
> Regular MMU code never creates anything but 1:1 mapping, and barring
> that plus the call to __mmu_cache_flush(), early MMU code version of
> the function is pretty much identical. To avoid code duplication, move
> it to mmu.h and convert both regular and early MMU code to use it.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  arch/arm/cpu/mmu-early.c | 14 ++------------
>  arch/arm/cpu/mmu.c       | 25 +++++++------------------
>  arch/arm/cpu/mmu.h       |  8 ++++++++
>  3 files changed, 17 insertions(+), 30 deletions(-)
> 
> diff --git a/arch/arm/cpu/mmu-early.c b/arch/arm/cpu/mmu-early.c
> index f75cc7e4a..70ece0d2f 100644
> --- a/arch/arm/cpu/mmu-early.c
> +++ b/arch/arm/cpu/mmu-early.c
> @@ -11,22 +11,12 @@
>  
>  static uint32_t *ttb;
>  
> -static void create_sections(unsigned long addr, int size_m, unsigned int flags)
> -{
> -	int i;
> -
> -	addr >>= 20;
> -
> -	for (i = size_m; i > 0; i--, addr++)
> -		ttb[addr] = (addr << 20) | flags;
> -}
This iterates in the for loop size_m times.

> -
> -static void create_sections(unsigned long virt, unsigned long phys, int size_m,
> -		unsigned int flags)
> -{
> -	int i;
> -
> -	phys >>= 20;
> -	virt >>= 20;
> -
> -	for (i = size_m; i > 0; i--, virt++, phys++)
> -		ttb[virt] = (phys << 20) | flags;
> -
> -	__mmu_cache_flush();
> -}
likewise

> +++ b/arch/arm/cpu/mmu.h
> @@ -24,5 +24,13 @@ static inline void set_domain(unsigned val)
>  	asm volatile ("mcr  p15,0,%0,c3,c0,0" : : "r"(val) /*:*/);
>  }
>  
> +static inline void
> +create_sections(uint32_t *ttb, unsigned long addr,
> +		int size_m, unsigned int flags)
> +{
> +	for (addr >>= 20; addr < size_m; addr++)
> +		ttb[addr] = (addr << 20) | flags;
> +}

But this iterates in the for loop while addr >> 20 is less than size_m.
I cannot see from the code nor the changelog if this is an intentional change

(I only stumbled over this while browsing the patch, no testing done)

	Sam

> +
>  
>  #endif /* __ARM_MMU_H */
> -- 
> 2.17.0
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
