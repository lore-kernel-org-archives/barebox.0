Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fp6Y8-00080F-GZ
 for barebox@lists.infradead.org; Mon, 13 Aug 2018 06:41:58 +0000
Date: Mon, 13 Aug 2018 08:41:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180813064144.7ocirutuvzltrrmn@pengutronix.de>
References: <20180810185201.7677-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180810185201.7677-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH] ARM: lib64: Properly handle unaligned addresses in
 string functions
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Aug 10, 2018 at 11:52:01AM -0700, Andrey Smirnov wrote:
> Together FEC driver and parts of IP stack might end up trying to
> memcpy() small chunks of memory from uncached (that is Device memory)
> addresses that are not properly aligned, leading to data abort.
> 
> To prevent such cases, add code to guard unaligned accesses and
> redirect them to byte-wise implementations which do not have the above
> problem.

Please no. IMO this problem only shows that the FEC driver shouldn't use
dma_alloc_coherent() to allocate its receive buffers, but instead should
use dma_alloc + dma_sync_*.

Sascha

> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  arch/arm/lib64/string.c | 11 +++++++++--
>  1 file changed, 9 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/lib64/string.c b/arch/arm/lib64/string.c
> index cb2633152..1b04f4487 100644
> --- a/arch/arm/lib64/string.c
> +++ b/arch/arm/lib64/string.c
> @@ -5,9 +5,16 @@
>  void *__arch_memset(void *dst, int c, __kernel_size_t size);
>  void *__arch_memcpy(void * dest, const void *src, size_t count);
>  
> +static bool properly_aligned(const void *ptr)
> +{
> +	const unsigned long address = (unsigned long)ptr;
> +
> +	return get_cr() & CR_M && IS_ALIGNED(address, 16);
> +}
> +
>  void *memset(void *dst, int c, __kernel_size_t size)
>  {
> -	if (likely(get_cr() & CR_M))
> +	if (likely(properly_aligned(dst)))
>  		return __arch_memset(dst, c, size);
>  
>  	return __default_memset(dst, c, size);
> @@ -15,7 +22,7 @@ void *memset(void *dst, int c, __kernel_size_t size)
>  
>  void *memcpy(void * dest, const void *src, size_t count)
>  {
> -	if (likely(get_cr() & CR_M))
> +	if (likely(properly_aligned(dest) && properly_aligned(src)))
>  		return __arch_memcpy(dest, src, count);
>  
>  	return __default_memcpy(dest, src, count);
> -- 
> 2.17.1
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
