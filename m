Delivery-date: Thu, 09 Jun 2022 10:07:20 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzDCK-008Xhr-RX
	for lore@lore.pengutronix.de; Thu, 09 Jun 2022 10:07:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzDCJ-0005Kb-4C
	for lore@pengutronix.de; Thu, 09 Jun 2022 10:07:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=CwQ8n3zNqJZruZnQHRcuKqTNJGTwaa8oghOzAJZB/Mc=; b=sQgTAxdg7dHn+8RL0bSAS8JCKG
	J2jUd3awKawaCXr4yPaIok9iOZP/M/fQ2ymcmoG5yRXh4L84j1IRQ6GWMn8xoScN1ukSALZKHptxA
	UOpr5OrkpS3rwX2tUYBwv0ifVwd8KY57L8j6JscbZWoQkC0fxsRnPxDdbuGQiLC6bnoJ7ccZXACHX
	9ZYw8GH2nqOysmC+hztlFU1pUUa8cs2dS3gssoj++5Byox0NigI7swpTXNyjF8Lex9rqU8X/fmDpt
	5FMvqXaaTkjFx47Sz8LfkaEQ8vMCxEhCHYgDS4EDl6EyH6HeqAVXJ26aR3MZyKxqDFT+d78uT4nBh
	GATkktmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzDAz-0006gx-Eh; Thu, 09 Jun 2022 08:05:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzDAt-0006eP-Ms
	for barebox@lists.infradead.org; Thu, 09 Jun 2022 08:05:53 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1nzDAs-00050d-3R; Thu, 09 Jun 2022 10:05:50 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1nzDAp-0008PH-Us; Thu, 09 Jun 2022 10:05:47 +0200
Date: Thu, 9 Jun 2022 10:05:47 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, rcz@pengutronix.de
Message-ID: <20220609080547.GF1615@pengutronix.de>
References: <20220609054342.661505-1-a.fatoum@pengutronix.de>
 <20220609054342.661505-3-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220609054342.661505-3-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220609_010551_944871_B7FD5E14 
X-CRM114-Status: GOOD (  30.15  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 2/4] of: reserve: mark runtime firmware code regions
 specially
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Jun 09, 2022 at 07:43:40AM +0200, Ahmad Fatoum wrote:
> From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> 
> We already map memory regions outside the memory banks with eXecute
> Never to avoid speculative execution, but fail to do so currently for
> firmware running from within a memory bank, but at a higher privilege
> level.
> 
> In preparation for changing that, mark memory used by such elevated
> firmware by a newly introduced OF_RESERVE_ENTRY_FLAG_RUNTIME_FW flag.
> 
> This introduces no functional change, but suitable future action could
> be mapping eXecute Never or not mapping at all.
> 
> Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> Compared with Rouven's v2, rename FLAG_XN to FLASG_RUNTIME_FW and
> apply it where applicable. Also change runtime_fw (previously xn)
> member to be a bitfield to get an error should number of reserved
> regions be changed inadequately in future.
> ---
>  arch/arm/cpu/sm.c              | 3 ++-
>  arch/arm/cpu/start.c           | 3 ++-
>  arch/arm/mach-layerscape/ppa.c | 2 +-
>  common/bootm.c                 | 3 ++-
>  drivers/of/fdt.c               | 6 +++++-
>  drivers/video/fb.c             | 3 ++-
>  drivers/video/simplefb-fixup.c | 2 +-
>  fs/pstore/ram.c                | 3 ++-
>  include/of.h                   | 6 +++++-
>  9 files changed, 22 insertions(+), 9 deletions(-)
> 
> diff --git a/arch/arm/cpu/sm.c b/arch/arm/cpu/sm.c
> index f5a1edbd4fe9..a404f843ecb2 100644
> --- a/arch/arm/cpu/sm.c
> +++ b/arch/arm/cpu/sm.c
> @@ -203,7 +203,8 @@ static int of_secure_monitor_fixup(struct device_node *root, void *unused)
>  	res_start = (unsigned long)_stext;
>  	res_end = (unsigned long)__bss_stop;
>  
> -	of_add_reserve_entry(res_start, res_end);
> +	/* MMU is already set up by now, so this only affects kernel DT */
> +	of_add_reserve_entry(res_start, res_end, OF_RESERVE_ENTRY_FLAG_RUNTIME_FW);
>  
>  	pr_debug("Reserved memory range from 0x%08lx to 0x%08lx\n", res_start, res_end);
>  
> diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
> index c61db668658b..9935bc8d53e3 100644
> --- a/arch/arm/cpu/start.c
> +++ b/arch/arm/cpu/start.c
> @@ -227,7 +227,8 @@ __noreturn __no_sanitize_address void barebox_non_pbl_start(unsigned long membas
>  	mem_malloc_init((void *)malloc_start, (void *)malloc_end - 1);
>  
>  	if (IS_ENABLED(CONFIG_BOOTM_OPTEE))
> -		of_add_reserve_entry(endmem - OPTEE_SIZE, endmem - 1);
> +		of_add_reserve_entry(endmem - OPTEE_SIZE, endmem - 1,
> +				     OF_RESERVE_ENTRY_FLAG_RUNTIME_FW);
>  
>  	pr_debug("starting barebox...\n");
>  
> diff --git a/arch/arm/mach-layerscape/ppa.c b/arch/arm/mach-layerscape/ppa.c
> index d962fba75105..a862ece69c6d 100644
> --- a/arch/arm/mach-layerscape/ppa.c
> +++ b/arch/arm/mach-layerscape/ppa.c
> @@ -130,7 +130,7 @@ int ls1046a_ppa_init(resource_size_t ppa_start, resource_size_t ppa_size)
>  	if (ret)
>  		return ret;
>  
> -	of_add_reserve_entry(ppa_start, ppa_end);
> +	of_add_reserve_entry(ppa_start, ppa_end, OF_RESERVE_ENTRY_FLAG_RUNTIME_FW);
>  
>  	return 0;
>  }
> diff --git a/common/bootm.c b/common/bootm.c
> index 3c80e8bf949b..463fd3721c81 100644
> --- a/common/bootm.c
> +++ b/common/bootm.c
> @@ -411,7 +411,8 @@ void *bootm_get_devicetree(struct image_data *data)
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
> index 5ccbd1bb69f8..4a4eeba24bc3 100644
> --- a/drivers/of/fdt.c
> +++ b/drivers/of/fdt.c
> @@ -536,7 +536,8 @@ out_free:
>  
>  static struct of_reserve_map of_reserve_map;
>  
> -int of_add_reserve_entry(resource_size_t start, resource_size_t end)
> +int of_add_reserve_entry(resource_size_t start, resource_size_t end,
> +			 int flags)
>  {
>  	int e = of_reserve_map.num_entries;
>  
> @@ -547,6 +548,9 @@ int of_add_reserve_entry(resource_size_t start, resource_size_t end)
>  	of_reserve_map.end[e] = end;
>  	of_reserve_map.num_entries++;
>  
> +	if (flags & OF_RESERVE_ENTRY_FLAG_RUNTIME_FW)
> +		of_reserve_map.runtime_fw |= BIT(e);
> +
>  	return 0;
>  }
>  
> diff --git a/drivers/video/fb.c b/drivers/video/fb.c
> index 1c93dafbc989..e0a73dd415a4 100644
> --- a/drivers/video/fb.c
> +++ b/drivers/video/fb.c
> @@ -203,7 +203,8 @@ static int fb_of_reserve_fixup(struct device_node *root, void *context)
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
> index a2c59de364a5..af7554d10ffd 100644
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
> index 0d8bb8f418f4..d0ebc7a37901 100644
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
> index 46b96277d581..0d125d8256d6 100644
> --- a/include/of.h
> +++ b/include/of.h
> @@ -55,9 +55,13 @@ struct of_reserve_map {
>  	uint64_t start[OF_MAX_RESERVE_MAP];
>  	uint64_t end[OF_MAX_RESERVE_MAP];
>  	int num_entries;
> +	u16 runtime_fw : OF_MAX_RESERVE_MAP;

Please change to:

struct of_reserve_map_entry {
	uint64_t start;
	uint64_t end;
	u32 flags;
};

struct of_reserve_map {
	struct of_reserve_map_entry[OF_MAX_RESERVE_MAP];
	int num_entries;
};

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

