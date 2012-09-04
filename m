Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T8zul-0002Jl-S1
 for barebox@lists.infradead.org; Tue, 04 Sep 2012 20:40:05 +0000
Date: Tue, 4 Sep 2012 22:39:59 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120904203959.GZ26594@pengutronix.de>
References: <1346745947-7199-1-git-send-email-a.aring@phytec.de>
 <1346745947-7199-3-git-send-email-a.aring@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1346745947-7199-3-git-send-email-a.aring@phytec.de>
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
Subject: Re: [PATCH 2/6] memory: fix regions calculation
To: Alexander Aring <a.aring@phytec.de>
Cc: barebox@lists.infradead.org

On Tue, Sep 04, 2012 at 10:05:43AM +0200, Alexander Aring wrote:
> Fix calculation of regions.
> 
> Previous end address and next start address of two chained regions are
> the same in a linkerscript.
> We need the same behaviour for mem_malloc_init.
> 
> When we add the region to the regions tree we calculate -1 to the end
> address.
> 

Most of this patch is wrong. The following is always true:

end = start + size - 1

The problem we have is that in the linker scripts we have

_text = .;
*(.text*)
_etext = .;

Here _etext is *not* the end but the next free address.

So we have to calculate text size for the above example as:

text_size = _etext - _text;


> index 80b62e9..c85aae1 100644
> --- a/arch/arm/lib/arm.c
> +++ b/arch/arm/lib/arm.c
> @@ -7,7 +7,7 @@
>  static int arm_mem_malloc_init(void)
>  {
>  	mem_malloc_init((void *)MALLOC_BASE,
> -			(void *)(MALLOC_BASE + MALLOC_SIZE - 1));
> +			(void *)(MALLOC_BASE + MALLOC_SIZE));

So this patch is wrong.

>  	request_sdram_region("malloc space",
>  			malloc_start,
> -			malloc_end - malloc_start + 1);
> +			malloc_end - malloc_start);

This is also wrong (and also all changes above this)

>  	request_sdram_region("barebox",
>  			(unsigned long)&_stext,
>  			(unsigned long)&_etext -
> -			(unsigned long)&_stext + 1);
> +			(unsigned long)&_stext);

This change is correct.

>  	request_sdram_region("bss",
>  			(unsigned long)&__bss_start,
>  			(unsigned long)&__bss_stop -
> -			(unsigned long)&__bss_start + 1);
> +			(unsigned long)&__bss_start);

This change is also correct.

>  #ifdef STACK_BASE
>  	request_sdram_region("stack", STACK_BASE, STACK_SIZE);
>  #endif
> diff --git a/common/startup.c b/common/startup.c
> index abd1b77..0fa2dab 100644
> --- a/common/startup.c
> +++ b/common/startup.c
> @@ -47,8 +47,8 @@ extern initcall_t __barebox_initcalls_start[], __barebox_early_initcalls_end[],
>  static void display_meminfo(void)
>  {
>  	ulong mstart = mem_malloc_start();
> -	ulong mend   = mem_malloc_end();
> -	ulong msize  = mend - mstart + 1;
> +	ulong mend   = mem_malloc_end() - 1;
> +	ulong msize  = mend - mstart;

This change is wrong.

>  
>  	debug("barebox code: 0x%p -> 0x%p\n", _stext, _etext);
>  	debug("bss segment:  0x%p -> 0x%p\n", __bss_start, __bss_stop);
> @@ -56,7 +56,7 @@ static void display_meminfo(void)
>  		mstart, mend, size_human_readable(msize));
>  #ifdef CONFIG_ARM
>  	printf("Stack space : 0x%08x -> 0x%08x (size %s)\n",
> -		STACK_BASE, STACK_BASE + STACK_SIZE,
> +		STACK_BASE, STACK_BASE + STACK_SIZE - 1,

This change is correct.

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
