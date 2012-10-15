Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TNswP-0005Au-8B
 for barebox@lists.infradead.org; Mon, 15 Oct 2012 22:15:20 +0000
Date: Tue, 16 Oct 2012 00:15:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121015221514.GS27665@pengutronix.de>
References: <1350307362-20052-1-git-send-email-a.aring@phytec.de>
 <1350307362-20052-5-git-send-email-a.aring@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1350307362-20052-5-git-send-email-a.aring@phytec.de>
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
Subject: Re: [PATCH 4/4] memory: fix memory calculation
To: Alexander Aring <a.aring@phytec.de>
Cc: barebox@lists.infradead.org

On Mon, Oct 15, 2012 at 03:22:42PM +0200, Alexander Aring wrote:
> Fix memory calculation.
> 
> Signed-off-by: Alexander Aring <a.aring@phytec.de>
> ---
>  common/meminfo.c |    8 ++++----
>  common/memory.c  |    4 ++--
>  2 files changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/common/meminfo.c b/common/meminfo.c
> index b2b09da..13633a2 100644
> --- a/common/meminfo.c
> +++ b/common/meminfo.c
> @@ -15,9 +15,9 @@ static int display_meminfo(void)
>  #endif
>  
>  	debug("barebox code: 0x%p -> 0x%p (size 0x%08lx)\n",
> -			_stext, _etext, text_size);
> +			_stext, _etext - 1, text_size);
>  	debug("bss segment:  0x%p -> 0x%p (size 0x%08lx)\n",
> -		__bss_start, __bss_stop, bss_size);
> +		__bss_start, __bss_stop - 1, bss_size);
>  #ifdef DEBUG
>  	printf("malloc space: 0x%08lx -> 0x%08lx (size 0x%08lx)\n",
>  		mstart, mend, msize);
> @@ -28,11 +28,11 @@ static int display_meminfo(void)
>  #ifdef CONFIG_ARM
>  #ifdef DEBUG
>  	printf("stack space:  0x%08x -> 0x%08x (size 0x%08x)\n",
> -		STACK_BASE, STACK_BASE + STACK_SIZE,
> +		STACK_BASE, STACK_BASE + STACK_SIZE - 1,
>  		STACK_SIZE);
>  #else
>  	printf("stack space:  0x%08x -> 0x%08x (size %s)\n",
> -		STACK_BASE, STACK_BASE + STACK_SIZE,
> +		STACK_BASE, STACK_BASE + STACK_SIZE - 1,
>  		size_human_readable(STACK_SIZE));

Hm, you copied wrong code in an earlier patch in this series which
you fix afterwards. That's not good, fixes, should always come first.
This for example makes it possible to apply the fix to the master
branch and feature additions to -next.

Besides, printing the exact values for the debug case and
size_human_readable otherwise is unnecessary churn. All the
information above can be retrieved using the iomem command
anyway, so removing the code altogether seems more useful.

>  #endif
>  #endif
> diff --git a/common/memory.c b/common/memory.c
> index 8919ab1..6bf4af6 100644
> --- a/common/memory.c
> +++ b/common/memory.c
> @@ -74,11 +74,11 @@ static int mem_malloc_resource(void)
>  	request_sdram_region("barebox",
>  			(unsigned long)&_stext,
>  			(unsigned long)&_etext -
> -			(unsigned long)&_stext + 1);
> +			(unsigned long)&_stext);
>  	request_sdram_region("bss",
>  			(unsigned long)&__bss_start,
>  			(unsigned long)&__bss_stop -
> -			(unsigned long)&__bss_start + 1);
> +			(unsigned long)&__bss_start);

That's a useful fix. Can we have this as a separate patch?

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
