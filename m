Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f6BOI-0006mK-6u
 for barebox@lists.infradead.org; Wed, 11 Apr 2018 08:46:07 +0000
Date: Wed, 11 Apr 2018 10:45:53 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180411084553.cuiflcctaihesl7y@pengutronix.de>
References: <20180410234536.4914-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180410234536.4914-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH] ARM: start: Avoid calling arm_mem_barebox_image() twice
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Apr 10, 2018 at 04:45:36PM -0700, Andrey Smirnov wrote:
> Avoid calling arm_mem_barebox_image() twice by making barebox_base
> function-wide in scope
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  arch/arm/cpu/start.c | 13 +++++--------
>  1 file changed, 5 insertions(+), 8 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
> index 68fff892e..64bd942ad 100644
> --- a/arch/arm/cpu/start.c
> +++ b/arch/arm/cpu/start.c
> @@ -144,13 +144,11 @@ __noreturn void barebox_non_pbl_start(unsigned long membase,
>  	unsigned long endmem = membase + memsize;
>  	unsigned long malloc_start, malloc_end;
>  	unsigned long barebox_size = barebox_image_size + MAX_BSS_SIZE;
> -
> -	if (IS_ENABLED(CONFIG_RELOCATABLE)) {
> -		unsigned long barebox_base = arm_mem_barebox_image(membase,
> -								   endmem,
> -								   barebox_size);
> +	unsigned long barebox_base = arm_mem_barebox_image(membase,
> +							   endmem,
> +							   barebox_size);
> +	if (IS_ENABLED(CONFIG_RELOCATABLE))
>  		relocate_to_adr(barebox_base);
> -	}
>  
>  	setup_c();
>  
> @@ -160,8 +158,7 @@ __noreturn void barebox_non_pbl_start(unsigned long membase,
>  
>  	arm_stack_top = arm_mem_stack_top(membase, endmem);
>  	arm_barebox_size = barebox_size;
> -	malloc_end = arm_mem_barebox_image(membase, endmem,
> -						arm_barebox_size);
> +	malloc_end = barebox_base;
>  
>  	if (IS_ENABLED(CONFIG_MMU_EARLY)) {
>  		unsigned long ttb = arm_mem_ttb(membase, endmem);
> -- 
> 2.14.3
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
