Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k5Onz-0005C4-0o
 for barebox@lists.infradead.org; Tue, 11 Aug 2020 07:34:44 +0000
Date: Tue, 11 Aug 2020 09:34:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200811073441.GB17014@pengutronix.de>
References: <20200709202204.2448-1-cleger@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200709202204.2448-1-cleger@kalray.eu>
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
Subject: Re: [PATCH] kvx: exclude dtb from malloc zone
To: Clement Leger <cleger@kalray.eu>
Cc: barebox@lists.infradead.org

On Thu, Jul 09, 2020 at 10:22:04PM +0200, Clement Leger wrote:
> When dtb is provided by the FSBL (first stage bootloader), it might
> end up in the malloc zone initialized by barebox. While the dtb is
> discarded after being unflatten, if the dtb is provided right after
> barebox elf, then the malloc can overwrite it while unflattening it when
> allocating nodes.
> To avoid that, exclude the dtb from the malloc zone by checking if it
> overlaps it. If so, determine the largest zone for the allocation and
> modify the memory area to use that.
> 
> Signed-off-by: Clement Leger <cleger@kalray.eu>
> ---
>  arch/kvx/lib/board.c | 43 +++++++++++++++++++++++++++++++++++++++++--
>  1 file changed, 41 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/kvx/lib/board.c b/arch/kvx/lib/board.c
> index 4d6ca6983..78fa83e02 100644
> --- a/arch/kvx/lib/board.c
> +++ b/arch/kvx/lib/board.c
> @@ -103,15 +103,54 @@ err:
>  	while (1);
>  }
>  
> +/**
> + * exclude_dtb_from_alloc - Find best zone to allocate without overwriting dtb
> + *
> + * @fdt: fdt blob
> + * @alloc_start: start of allocation zone
> + * @alloc_end: end of allocation zone
> + */
> +static void exclude_dtb_from_alloc(void *fdt, u64 *alloc_start, u64 *alloc_end)
> +{
> +	const struct fdt_header *fdth = fdt;
> +	u64 fdt_start = (u64) fdt;
> +	u64 fdt_end = fdt_start + be32_to_cpu(fdth->totalsize);
> +	u64 start_size = 0, end_size = 0;
> +
> +	/*
> +	 * If the device tree is inside the malloc zone, we must exclude it to
> +	 * avoid allocating memory over it while unflattening it
> +	 */
> +	if (fdt_end < *alloc_start || fdt_start > (*alloc_end))
> +		return;
> +
> +	/* Compute the largest remaining chunk when removing the dtb */
> +	if (fdt_start >= *alloc_start)
> +		start_size = (fdt_start - *alloc_start);
> +
> +	if (fdt_end <= *alloc_end)
> +		end_size = *alloc_end - fdt_end;
> +
> +	/* Modify start/end to reflect the maximum area we found */
> +	if (start_size >= end_size)
> +		*alloc_end = fdt_start;
> +	else
> +		*alloc_start = fdt_end;
> +}
> +
>  void __noreturn kvx_start_barebox(void)
>  {
>  	u64 memsize = 0, membase = 0;
>  	u64 barebox_text_end = (u64) &__end;
> +	u64 alloc_start, alloc_end;
>  
>  	of_find_mem(boot_dtb, barebox_text_end, &membase, &memsize);
>  
> -	mem_malloc_init((void *) barebox_text_end,
> -			(void *) (membase + memsize));
> +	alloc_start = barebox_text_end;
> +	alloc_end = (membase + memsize);
> +	exclude_dtb_from_alloc(boot_dtb, &alloc_start, &alloc_end);
> +
> +	mem_malloc_init((void *) alloc_start, (void *) alloc_end);
>  
>  	start_barebox();
>  
> -- 
> 2.17.1
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
