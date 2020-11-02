Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kZWrN-0008T4-Jh
 for barebox@lists.infradead.org; Mon, 02 Nov 2020 10:14:47 +0000
References: <20201102093002.15851-1-r.czerwinski@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <922ddcb1-e645-f7b8-b814-238ed4a8aee7@pengutronix.de>
Date: Mon, 2 Nov 2020 11:14:42 +0100
MIME-Version: 1.0
In-Reply-To: <20201102093002.15851-1-r.czerwinski@pengutronix.de>
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
Subject: Re: [PATCH 1/4] of: reserve: add uncached flag mem entries
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>, barebox@lists.infradead.org

Hello Rouven,

On 11/2/20 10:29 AM, Rouven Czerwinski wrote:
> If the OF_RESERVE_ENTRY_FLAG_UNCACHED flag is passed while creating the
> entry, a subsequent commit will use this information in the mmu to map
> the area as uncachable.
> 
> Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> ---
>  arch/arm/cpu/sm.c              | 2 +-
>  arch/arm/cpu/start.c           | 3 ++-
>  arch/arm/mach-layerscape/ppa.c | 2 +-
>  common/bootm.c                 | 3 ++-
>  drivers/of/fdt.c               | 6 +++++-
>  drivers/video/fb.c             | 3 ++-
>  drivers/video/simplefb.c       | 2 +-
>  fs/pstore/ram.c                | 3 ++-
>  include/of.h                   | 6 +++++-
>  9 files changed, 21 insertions(+), 9 deletions(-)
> 
> diff --git a/arch/arm/cpu/sm.c b/arch/arm/cpu/sm.c
> index f5a1edbd4f..ebd5f76e14 100644
> --- a/arch/arm/cpu/sm.c
> +++ b/arch/arm/cpu/sm.c
> @@ -203,7 +203,7 @@ static int of_secure_monitor_fixup(struct device_node *root, void *unused)
>  	res_start = (unsigned long)_stext;
>  	res_end = (unsigned long)__bss_stop;
>  
> -	of_add_reserve_entry(res_start, res_end);
> +	of_add_reserve_entry(res_start, res_end, 0);
>  
>  	pr_debug("Reserved memory range from 0x%08lx to 0x%08lx\n", res_start, res_end);
>  
> diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
> index f48f5beea8..5f43f9e546 100644
> --- a/arch/arm/cpu/start.c
> +++ b/arch/arm/cpu/start.c
> @@ -239,7 +239,8 @@ __noreturn __no_sanitize_address void barebox_non_pbl_start(unsigned long membas
>  	mem_malloc_init((void *)malloc_start, (void *)malloc_end - 1);
>  
>  	if (IS_ENABLED(CONFIG_BOOTM_OPTEE))
> -		of_add_reserve_entry(endmem - OPTEE_SIZE, endmem - 1);
> +		of_add_reserve_entry(endmem - OPTEE_SIZE, endmem - 1,
> +				OF_RESERVE_ENTRY_FLAG_UNCACHED);
>  
>  	pr_debug("starting barebox...\n");
>  
> diff --git a/arch/arm/mach-layerscape/ppa.c b/arch/arm/mach-layerscape/ppa.c
> index 53e73f6a58..8be48345f7 100644
> --- a/arch/arm/mach-layerscape/ppa.c
> +++ b/arch/arm/mach-layerscape/ppa.c
> @@ -129,7 +129,7 @@ int ls1046a_ppa_init(resource_size_t ppa_start, resource_size_t ppa_size)
>  	if (ret)
>  		return ret;
>  
> -	of_add_reserve_entry(ppa_start, ppa_end);
> +	of_add_reserve_entry(ppa_start, ppa_end, 0);

When you reach here, you are already running in the normal world,
so maybe have an _UNCACHED here as well?

>  
>  	return 0;
>  }
> diff --git a/common/bootm.c b/common/bootm.c
> index f70ef10100..d4463bea0a 100644
> --- a/common/bootm.c
> +++ b/common/bootm.c
> @@ -421,7 +421,8 @@ void *bootm_get_devicetree(struct image_data *data)
>  	if (data->initrd_res) {
>  		of_add_initrd(data->of_root_node, data->initrd_res->start,
>  				data->initrd_res->end);
> -		of_add_reserve_entry(data->initrd_res->start, data->initrd_res->end);
> +		of_add_reserve_entry(data->initrd_res->start,
> +				     data->initrd_res->end, 0);
>  	}
>  
>  	oftree = of_get_fixed_tree(data->of_root_node);
> diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
> index a31e2c348a..9ad80039f7 100644
> --- a/drivers/of/fdt.c
> +++ b/drivers/of/fdt.c
> @@ -526,7 +526,8 @@ out_free:
>  
>  static struct of_reserve_map of_reserve_map;
>  
> -int of_add_reserve_entry(resource_size_t start, resource_size_t end)
> +int of_add_reserve_entry(resource_size_t start, resource_size_t end,
> +			 int flags)
>  {
>  	int e = of_reserve_map.num_entries;
>  
> @@ -537,6 +538,9 @@ int of_add_reserve_entry(resource_size_t start, resource_size_t end)
>  	of_reserve_map.end[e] = end;
>  	of_reserve_map.num_entries++;
>  
> +	if (flags & OF_RESERVE_ENTRY_FLAG_UNCACHED)
> +		of_reserve_map.uncached = BIT(e);
> +
>  	return 0;
>  }
>  
> diff --git a/drivers/video/fb.c b/drivers/video/fb.c
> index 2d82bc01fa..263478c606 100644
> --- a/drivers/video/fb.c
> +++ b/drivers/video/fb.c
> @@ -199,7 +199,8 @@ static int fb_of_reserve_fixup(struct device_node *root, void *context)
>  		return 0;
>  
>  	of_add_reserve_entry((unsigned long)info->screen_base,
> -			(unsigned long)info->screen_base + info->screen_size);
> +			(unsigned long)info->screen_base + info->screen_size,
> +			0);
>  
>  	return 0;
>  }
> diff --git a/drivers/video/simplefb.c b/drivers/video/simplefb.c
> index a2c59de364..af7554d10f 100644
> --- a/drivers/video/simplefb.c
> +++ b/drivers/video/simplefb.c
> @@ -131,7 +131,7 @@ static int simplefb_create_node(struct device_node *root,
>  		return ret;
>  
>  	of_add_reserve_entry((u32)fbi->screen_base,
> -			(u32)fbi->screen_base + fbi->screen_size);
> +			(u32)fbi->screen_base + fbi->screen_size, 0);
>  
>  	return of_property_write_string(node, "status", "okay");
>  }
> diff --git a/fs/pstore/ram.c b/fs/pstore/ram.c
> index 958f46b0ea..e404187c83 100644
> --- a/fs/pstore/ram.c
> +++ b/fs/pstore/ram.c
> @@ -639,7 +639,8 @@ static int ramoops_probe(struct device_d *dev)
>  			  ramoops_ecc);
>  		globalvar_add_simple("linux.bootargs.ramoops", kernelargs);
>  	} else {
> -		of_add_reserve_entry(cxt->phys_addr, cxt->phys_addr + mem_size);
> +		of_add_reserve_entry(cxt->phys_addr, cxt->phys_addr + mem_size,
> +				0);
>  		of_register_fixup(ramoops_of_fixup, pdata);
>  	}
>  
> diff --git a/include/of.h b/include/of.h
> index 08a02e1105..5d7f54fb36 100644
> --- a/include/of.h
> +++ b/include/of.h
> @@ -54,9 +54,13 @@ struct of_reserve_map {
>  	uint64_t start[OF_MAX_RESERVE_MAP];
>  	uint64_t end[OF_MAX_RESERVE_MAP];
>  	int num_entries;
> +	u32 uncached;

You could make it a bit more future proof by having it be an
u32 __bitwise, I imagine. That way sparse could detect misuse.

>  };
>  
> -int of_add_reserve_entry(resource_size_t start, resource_size_t end);
> +#define OF_RESERVE_ENTRY_FLAG_UNCACHED	BIT(0)
> +
> +int of_add_reserve_entry(resource_size_t start, resource_size_t end,
> +		 int flags);
>  struct of_reserve_map *of_get_reserve_map(void);
>  void of_clean_reserve_map(void);
>  void fdt_add_reserve_map(void *fdt);
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
