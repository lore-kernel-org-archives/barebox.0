Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLQld-0003JB-0e
 for barebox@lists.infradead.org; Fri, 18 Oct 2019 11:50:02 +0000
Date: Fri, 18 Oct 2019 13:49:59 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191018114959.66a6t2njafdkmmv7@pengutronix.de>
References: <20191016045743.22818-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191016045743.22818-1-o.rempel@pengutronix.de>
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
Subject: Re: [PATCH v2] MIPS: init cache before using it
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Oct 16, 2019 at 06:57:42AM +0200, Oleksij Rempel wrote:
> flush_cache_all() uses 'struct cpuinfo_mips current_cpu_data' data
> fields. These data fields are initialized in r4k_cache_init().
> 
> However in the current implementation the r4k_cache_init() function
> is called __AFTER__ relocate_code().
> 
> Suggested-by: Antony Pavlov <antonynpavlov@gmail.com>
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  arch/mips/lib/reloc.c | 12 ++++++++++--
>  1 file changed, 10 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/mips/lib/reloc.c b/arch/mips/lib/reloc.c
> index 9a9e404f7e..14195d6f96 100644
> --- a/arch/mips/lib/reloc.c
> +++ b/arch/mips/lib/reloc.c
> @@ -31,6 +31,7 @@
>  #include <asm/bitops.h>
>  #include <asm/cache.h>
>  #include <asm/cacheops.h>
> +#include <asm/cpu-features.h>
>  #include <asm/cpu.h>
>  #include <asm/cpu-info.h>
>  #include <asm/io.h>
> @@ -40,6 +41,7 @@
>  #include <linux/sizes.h>
>  #include <asm-generic/memory_layout.h>
>  
> +extern void r4k_cache_init(void);
>  void main_entry(void *fdt, u32 fdt_size);
>  void relocate_code(void *fdt, u32 fdt_size, u32 relocaddr);
>  
> @@ -146,8 +148,14 @@ void relocate_code(void *fdt, u32 fdt_size, u32 ram_size)
>  		apply_reloc(type, (void *)addr, off);
>  	}
>  
> -	/* Ensure the icache is coherent */
> -	flush_cache_all();
> +	memset(__bss_start, 0, bss_len);
> +
> +	cpu_probe();
> +	if (cpu_has_4k_cache) {
> +		r4k_cache_init();
> +		/* Ensure the icache is coherent */
> +		flush_cache_all();
> +	}
>  
>  	/* Clear the .bss section */
>  	bss_start = (uint8_t *)((unsigned long)__bss_start + off);
>	memset(bss_start, 0, bss_len);

bss is cleared twice now and with two different addresses. This looks
wrong.

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
