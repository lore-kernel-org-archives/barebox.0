Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OwC8x-0003ms-PK
	for barebox@lists.infradead.org; Thu, 16 Sep 2010 10:56:45 +0000
Date: Thu, 16 Sep 2010 12:56:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100916105642.GT1473@pengutronix.de>
References: <1283704919-26808-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1283704919-26808-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH] init: introduce __BARE_INIT for .section
	".text_bare_init.text"
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sun, Sep 05, 2010 at 06:41:59PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> and make init.h availlable for assembly too
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  arch/arm/cpu/cache-armv4.S |    3 ++-
>  arch/arm/cpu/cache-armv5.S |    3 ++-
>  arch/arm/cpu/cache-armv6.S |    3 ++-
>  arch/arm/cpu/cache-armv7.S |    3 ++-
>  include/init.h             |    6 ++++++
>  5 files changed, 14 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm/cpu/cache-armv4.S b/arch/arm/cpu/cache-armv4.S
> index 3cec4dd..fc53653 100644
> --- a/arch/arm/cpu/cache-armv4.S
> +++ b/arch/arm/cpu/cache-armv4.S
> @@ -1,4 +1,5 @@
>  #include <linux/linkage.h>
> +#include <init.h>
>  
>  #define CACHE_DLINESIZE 32
>  
> @@ -41,7 +42,7 @@ ENTRY(__mmu_cache_off)
>  		mov	pc, lr
>  ENDPROC(__mmu_cache_off)
>  
> -.section ".text_bare_init.text"
> +__BARE_INIT
>  ENTRY(__mmu_cache_flush)
>  		mrc	p15, 0, r6, c0, c0	@ get processor ID
>  		mov	r2, #64*1024		@ default: 32K dcache size (*2)
> diff --git a/arch/arm/cpu/cache-armv5.S b/arch/arm/cpu/cache-armv5.S
> index 9fb320f..d870e6b 100644
> --- a/arch/arm/cpu/cache-armv5.S
> +++ b/arch/arm/cpu/cache-armv5.S
> @@ -1,4 +1,5 @@
>  #include <linux/linkage.h>
> +#include <init.h>
>  
>  #define CACHE_DLINESIZE 32
>  
> @@ -41,7 +42,7 @@ ENTRY(__mmu_cache_off)
>  		mov	pc, lr
>  ENDPROC(__mmu_cache_off)
>  
> -.section ".text_bare_init.text"
> +__BARE_INIT
>  ENTRY(__mmu_cache_flush)
>  1:		mrc	p15, 0, r15, c7, c14, 3	@ test,clean,invalidate D cache
>  		bne	1b
> diff --git a/arch/arm/cpu/cache-armv6.S b/arch/arm/cpu/cache-armv6.S
> index 25476d5..9de76da 100644
> --- a/arch/arm/cpu/cache-armv6.S
> +++ b/arch/arm/cpu/cache-armv6.S
> @@ -1,4 +1,5 @@
>  #include <linux/linkage.h>
> +#include <init.h>
>  
>  #define HARVARD_CACHE
>  #define CACHE_LINE_SIZE		32
> @@ -43,7 +44,7 @@ ENTRY(__mmu_cache_off)
>  #endif
>  		mov	pc, lr
>  
> -.section ".text_bare_init.text"
> +__BARE_INIT
>  ENTRY(__mmu_cache_flush)
>  		mov	r1, #0
>  		mcr	p15, 0, r1, c7, c14, 0	@ clean+invalidate D
> diff --git a/arch/arm/cpu/cache-armv7.S b/arch/arm/cpu/cache-armv7.S
> index a303dc1..79bc243 100644
> --- a/arch/arm/cpu/cache-armv7.S
> +++ b/arch/arm/cpu/cache-armv7.S
> @@ -1,4 +1,5 @@
>  #include <linux/linkage.h>
> +#include <init.h>
>  
>  ENTRY(__mmu_cache_on)
>  		mov	r12, lr
> @@ -49,7 +50,7 @@ ENTRY(__mmu_cache_off)
>  		mov	pc, r12
>  ENDPROC(__mmu_cache_on)
>  
> -.section ".text_bare_init.text"
> +__BARE_INIT
>  ENTRY(__mmu_cache_flush)
>  		mrc	p15, 0, r10, c0, c1, 5	@ read ID_MMFR1
>  		tst	r10, #0xf << 16		@ hierarchical cache (ARMv7)
> diff --git a/include/init.h b/include/init.h
> index 8692b68..5a7a5b6 100644
> --- a/include/init.h
> +++ b/include/init.h
> @@ -7,6 +7,10 @@
>  #define __init
>  #define __initdata
>  
> +/* For assembly routines */
> +#define __BARE_INIT	.section ".text_bare_init.text"

Is there a reason you used capital letters for __BARE_INIT in assembly?

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
