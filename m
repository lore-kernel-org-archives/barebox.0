Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kZWwM-0002Sa-7X
 for barebox@lists.infradead.org; Mon, 02 Nov 2020 10:19:59 +0000
References: <20201102093002.15851-1-r.czerwinski@pengutronix.de>
 <20201102093002.15851-2-r.czerwinski@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <961a3244-cd4d-a449-897f-6871e8b7f648@pengutronix.de>
Date: Mon, 2 Nov 2020 11:19:52 +0100
MIME-Version: 1.0
In-Reply-To: <20201102093002.15851-2-r.czerwinski@pengutronix.de>
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
Subject: Re: [PATCH 2/4] arm: mmu: traverse reserved mem map as uncached
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>, barebox@lists.infradead.org

Hello,

On 11/2/20 10:30 AM, Rouven Czerwinski wrote:
> Traverse the reserved memory map and map areas which are marked with
> uncached as uncached (and thus noexec).
> 
> Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> ---
>  arch/arm/cpu/mmu.c | 14 ++++++++++++++
>  include/of.h       |  5 +++++
>  2 files changed, 19 insertions(+)
> 
> diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
> index 6af228505d..5974e1e38a 100644
> --- a/arch/arm/cpu/mmu.c
> +++ b/arch/arm/cpu/mmu.c
> @@ -17,6 +17,7 @@
>  #include <memory.h>
>  #include <asm/system_info.h>
>  #include <asm/sections.h>
> +#include <of.h>
>  
>  #include "mmu.h"
>  
> @@ -393,6 +394,8 @@ static void vectors_init(void)
>  void __mmu_init(bool mmu_on)
>  {
>  	struct memory_bank *bank;
> +	struct of_reserve_map *res_map;
> +	int i;
>  
>  	arm_set_cache_functions();
>  
> @@ -453,6 +456,17 @@ void __mmu_init(bool mmu_on)
>  		__mmu_cache_flush();
>  	}
>  
> +	res_map = of_get_reserve_map();
> +	if (res_map) {
> +		for (i = 0; i < res_map->num_entries; i++) {
> +			if (res_map->uncached & BIT(i)) {
> +				create_sections(ttb, res_map->start[i],
> +						res_map->end[i],
> +						PMD_SECT_DEF_UNCACHED);

PMD_SECT_DEF_UNCACHED does _not_ include PMD_SECT_XN. See create_flat_mapping()
Also, code earlier does __mmu_cache_flush() after each create_sections.
Don't we need this here as well? (Or is it not needed at all?)

> +			}
> +		}
> +	}
> +
>  	__mmu_cache_on();
>  }
>  
> diff --git a/include/of.h b/include/of.h
> index 5d7f54fb36..3d8c26f319 100644
> --- a/include/of.h
> +++ b/include/of.h
> @@ -1042,6 +1042,11 @@ static inline int of_firmware_load_overlay(struct device_node *overlay, const ch
>  {
>  	return -ENOSYS;
>  }
> +
> +static inline struct of_reserve_map *of_get_reserve_map(void)
> +{
> +	return NULL;
> +}

This should results in an error because a static declaration follows a non-static
one. You need to move the extern of_get_reserve_map into the #ifdef as well.

>  #endif
>  
>  #endif /* __OF_H */
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
