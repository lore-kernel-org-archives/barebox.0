Delivery-date: Tue, 20 Apr 2021 10:47:05 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lYm2C-0008JF-Vm
	for lore@lore.pengutronix.de; Tue, 20 Apr 2021 10:47:05 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lYm2B-000149-HU
	for lore@pengutronix.de; Tue, 20 Apr 2021 10:47:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vQk6bX1J+QezP4qa7qVzjsLNptvjdqMzbDEXknc6Dkc=; b=UIsPeh1G+rOynlhu/Cn/AiMJK
	Za0pq+EBjgHrHfQ/RFOsEylulVfemQdFfNS4bj+ZSYFMp/CceLkuuqfU7X7qBlugjC+slABkL3ZZa
	eZ/Vg0t9lqSwpkHQPOkeYgzjS1rYh2wVI/Om8CNgUGsZprOkmI5/Paa0k884avuRtOHqkNPC/AWQJ
	59gLihQkZM38YoUejL/S05a0tmvfGXhzEPG8Oy8RsDL1Il6UcgsB1K4YNp6sROXZWo7QI0e70UTMz
	hxcCJ3CgBpWgmnWggSLOtLkVyU72GBmYXLbATtrrLSwiY4K353RJvDM3xPOC6dSgSwyU9RvW3UsY6
	qvaa5GTbg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lYm11-00BcoY-S4; Tue, 20 Apr 2021 08:45:51 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYm0i-00BclS-07
 for barebox@desiato.infradead.org; Tue, 20 Apr 2021 08:45:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:
 Subject:Sender:Reply-To:Cc:Content-ID:Content-Description;
 bh=y8gFXICCD8dos1hE7dWvA1LlgAM9A1UvBdMWkqOjfCI=; b=keuCrKdf3MFdQr7Y6QsC4MHThc
 QKo/Gwe4y2mor+UxBdRoCdk/cRQg1ieMxTd17PQxnAPQiE5Mv8lGwx4P0gzxRZiRgOujQj4SgWCBn
 9EHKEy6BtY/rYCnnIO0h7VN/rr9Ou4e5EL21/QI/40mwR40gTnSHhxhdThXuu+29U8uYd7LrWTwv7
 isrUnabifN17d0YjABz+dzDPJk2RhYOR7rifEB54RpR7oN0divC2WbCWvjlfGr8DpMUuK0ecA6NoY
 dmmvohtYFBN/vgCc93ofrsKqYxufWSyUd+isUHIb73Ht2JvOBekTyCPAz8oMKZe5Wqo4QMh/9gmCS
 hYj02mpw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYm0e-00BwAv-DN
 for barebox@lists.infradead.org; Tue, 20 Apr 2021 08:45:30 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lYm0Z-0000fK-IR; Tue, 20 Apr 2021 10:45:23 +0200
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>,
 barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>,
 Steffen Trumtrar <s.trumtrar@pengutronix.de>
References: <20210420075700.246124-1-r.czerwinski@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <458c364f-718a-4332-c1ec-374d1ba2b0e9@pengutronix.de>
Date: Tue, 20 Apr 2021 10:45:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210420075700.246124-1-r.czerwinski@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210420_014528_486540_EDED37AA 
X-CRM114-Status: GOOD (  25.26  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/8] of: reserve: add xn flag mem entries
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello,

On 20.04.21 09:56, Rouven Czerwinski wrote:
> If the OF_RESERVE_ENTRY_FLAG_XN flag is passed while creating the
> entry, a subsequent commit will use this information in the mmu to map
> the area as non-executable.
> 
> Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> ---
>  arch/arm/cpu/sm.c              | 2 +-
>  arch/arm/cpu/start.c           | 2 +-
>  arch/arm/mach-layerscape/ppa.c | 2 +-
>  common/bootm.c                 | 3 ++-
>  drivers/of/fdt.c               | 6 +++++-
>  drivers/video/fb.c             | 3 ++-
>  drivers/video/simplefb-fixup.c | 2 +-
>  fs/pstore/ram.c                | 3 ++-
>  include/of.h                   | 7 +++++--
>  9 files changed, 20 insertions(+), 10 deletions(-)
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
> index c61db66865..10ac070fe3 100644
> --- a/arch/arm/cpu/start.c
> +++ b/arch/arm/cpu/start.c
> @@ -227,7 +227,7 @@ __noreturn __no_sanitize_address void barebox_non_pbl_start(unsigned long membas
>  	mem_malloc_init((void *)malloc_start, (void *)malloc_end - 1);
>  
>  	if (IS_ENABLED(CONFIG_BOOTM_OPTEE))
> -		of_add_reserve_entry(endmem - OPTEE_SIZE, endmem - 1);
> +		of_add_reserve_entry(endmem - OPTEE_SIZE, endmem - 1, OF_RESERVE_ENTRY_FLAG_XN);
>  
>  	pr_debug("starting barebox...\n");
>  
> diff --git a/arch/arm/mach-layerscape/ppa.c b/arch/arm/mach-layerscape/ppa.c
> index d962fba751..6e61766e54 100644
> --- a/arch/arm/mach-layerscape/ppa.c
> +++ b/arch/arm/mach-layerscape/ppa.c
> @@ -130,7 +130,7 @@ int ls1046a_ppa_init(resource_size_t ppa_start, resource_size_t ppa_size)
>  	if (ret)
>  		return ret;
>  
> -	of_add_reserve_entry(ppa_start, ppa_end);
> +	of_add_reserve_entry(ppa_start, ppa_end, 0);

IMO this should be mapped _XN too. Sascha, Steffen could you check
and send a patch for this?

>  
>  	return 0;
>  }
> diff --git a/common/bootm.c b/common/bootm.c
> index 092116beb9..5c2ad1ad3a 100644
> --- a/common/bootm.c
> +++ b/common/bootm.c
> @@ -410,7 +410,8 @@ void *bootm_get_devicetree(struct image_data *data)
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
> index d98913e54a..6aade13fa0 100644
> --- a/drivers/of/fdt.c
> +++ b/drivers/of/fdt.c
> @@ -537,7 +537,8 @@ out_free:
>  
>  static struct of_reserve_map of_reserve_map;
>  
> -int of_add_reserve_entry(resource_size_t start, resource_size_t end)
> +int of_add_reserve_entry(resource_size_t start, resource_size_t end,
> +			 int flags)
>  {
>  	int e = of_reserve_map.num_entries;
>  
> @@ -548,6 +549,9 @@ int of_add_reserve_entry(resource_size_t start, resource_size_t end)
>  	of_reserve_map.end[e] = end;
>  	of_reserve_map.num_entries++;
>  
> +	if (flags & OF_RESERVE_ENTRY_FLAG_XN)
> +		of_reserve_map.xn |= BIT(e);
> +
>  	return 0;
>  }
>  
> diff --git a/drivers/video/fb.c b/drivers/video/fb.c
> index 113c1419a1..8aa4a77ef3 100644
> --- a/drivers/video/fb.c
> +++ b/drivers/video/fb.c
> @@ -202,7 +202,8 @@ static int fb_of_reserve_fixup(struct device_node *root, void *context)
>  		return 0;
>  
>  	of_add_reserve_entry((unsigned long)info->screen_base,
> -			(unsigned long)info->screen_base + info->screen_size);
> +			(unsigned long)info->screen_base + info->screen_size,
> +			0);
>  
>  	return 0;
>  }
> diff --git a/drivers/video/simplefb-fixup.c b/drivers/video/simplefb-fixup.c
> index a2c59de364..af7554d10f 100644
> --- a/drivers/video/simplefb-fixup.c
> +++ b/drivers/video/simplefb-fixup.c
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
> index 645f429bde..7c8640a1d6 100644
> --- a/include/of.h
> +++ b/include/of.h
> @@ -54,10 +54,13 @@ struct of_reserve_map {
>  	uint64_t start[OF_MAX_RESERVE_MAP];
>  	uint64_t end[OF_MAX_RESERVE_MAP];
>  	int num_entries;
> +	u32 xn;

I'd prefer a u16 xn : OF_MAX_RESERVE_MAP. That way the relation
is clearly documented and less likely to be overlooked should
OF_MAX_RESERVE_MAP be increased in future.

>  };
>  
> -int of_add_reserve_entry(resource_size_t start, resource_size_t end);
> -struct of_reserve_map *of_get_reserve_map(void);

Why is of_get_reserve_map being deleted?

> +#define OF_RESERVE_ENTRY_FLAG_XN		BIT(0)
> +
> +int of_add_reserve_entry(resource_size_t start, resource_size_t end,
> +		 int flags);
>  void of_clean_reserve_map(void);
>  void fdt_add_reserve_map(void *fdt);
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

