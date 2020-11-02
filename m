Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kZWye-00038g-Ap
 for barebox@lists.infradead.org; Mon, 02 Nov 2020 10:22:17 +0000
References: <20201102093002.15851-1-r.czerwinski@pengutronix.de>
 <20201102093002.15851-3-r.czerwinski@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <a8868d16-556b-65de-9603-e191b4e3789f@pengutronix.de>
Date: Mon, 2 Nov 2020 11:22:15 +0100
MIME-Version: 1.0
In-Reply-To: <20201102093002.15851-3-r.czerwinski@pengutronix.de>
Content-Language: en-US
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
Subject: Re: [PATCH 3/4] mmu-early: remove OP-TEE from the MMU mapping
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>, barebox@lists.infradead.org

Hello,

On 11/2/20 10:30 AM, Rouven Czerwinski wrote:
> Remove OP-TEE from the CACHED mapping to preserve the XN bit set in the
> default mapping. This should ensure that the Cortex-A7 does not try to
> speculate into secure world memory.
> 
> Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> ---
>  arch/arm/cpu/mmu-early.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/arch/arm/cpu/mmu-early.c b/arch/arm/cpu/mmu-early.c
> index b985aa455f..a480cd7707 100644
> --- a/arch/arm/cpu/mmu-early.c
> +++ b/arch/arm/cpu/mmu-early.c
> @@ -3,6 +3,7 @@
>  #include <errno.h>
>  #include <linux/sizes.h>
>  #include <asm/memory.h>
> +#include <asm-generic/memory_layout.h>
>  #include <asm/system.h>
>  #include <asm/cache.h>
>  #include <asm-generic/sections.h>
> @@ -55,6 +56,10 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize,
>  	 */
>  	map_region((unsigned long)_stext, _etext - _stext, PMD_SECT_DEF_UNCACHED);
>  
> +	/* In case we might early load OP-TEE, remove it from the MMU mapping */
> +	if(IS_ENABLED(CONFIG_PBL_OPTEE))
> +		memsize -= OPTEE_SIZE;

You could remove the if condition. OPTEE_SIZE evaluates to zero if the condition
is false.

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> +
>  	/* maps main memory as cachable */
>  	map_region(membase, memsize, PMD_SECT_DEF_CACHED);
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
