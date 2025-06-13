Delivery-date: Fri, 13 Jun 2025 13:31:37 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uQ2dF-006qeE-20
	for lore@lore.pengutronix.de;
	Fri, 13 Jun 2025 13:31:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uQ2dE-0004A5-Au
	for lore@pengutronix.de; Fri, 13 Jun 2025 13:31:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Z6elwUARXKvJ1CBvUJrFUeklhaCSJMzHOQ/D9wS35v4=; b=2xLWO/LVlgGPwO6NeU5Nuwul7f
	Td++iWoi1HT8fP94L65NaWmASalp7Ffyacx0AzJjBA2qywDdSBJ7i6Srlk0qksNCI+N1lxRdsq8YY
	SiQbfgXxcm2/0+rjVRZ5wbNaF/8RNcCyLrVUMD8FcJY3G+EOQg+aP/pVWURgTT/a+ZtVqmAPzwiU/
	kLWyewf4jZgCNuX2jASeZteUf0r/jDEH4IAHSIhzzUu0f46OxavyoWUE6olkzjas2Nz6WmcB5ZSbx
	O/zmgkWnGy4Cz9jXphnuxjsbU1+JZt+WbtcYT5ybPLsTyXWQ+Y0M59i6r8oDlPYF38jCEISzVnRZS
	tx4PQT6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQ2cZ-0000000GAtO-0GJk;
	Fri, 13 Jun 2025 11:30:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQ1OF-0000000G2iO-3zrN
	for barebox@lists.infradead.org;
	Fri, 13 Jun 2025 10:12:05 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uQ1OE-000700-Iz; Fri, 13 Jun 2025 12:12:02 +0200
Message-ID: <8fe1fedf-f6e3-4c11-9154-3a355488a352@pengutronix.de>
Date: Fri, 13 Jun 2025 12:12:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20250613-arm-mmu-xn-ro-v1-0-60f05c6e7b4b@pengutronix.de>
 <20250613-arm-mmu-xn-ro-v1-5-60f05c6e7b4b@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250613-arm-mmu-xn-ro-v1-5-60f05c6e7b4b@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250613_031204_036424_FCC963B1 
X-CRM114-Status: GOOD (  24.06  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 5/7] ARM: MMU: map text segment ro and data segments
 execute never
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 6/13/25 09:58, Sascha Hauer wrote:
> +	pr_debug("%s: 0x%08x 0x%08x type %d\n", __func__, virt_addr, size, map_type);

I can add a follow up patch turning type into a string.

> +	unsigned long text_start = (unsigned long)&_stext;
> +	unsigned long text_size = (unsigned long)&__start_rodata - (unsigned long)&_stext;

text_size is an unfortunate name as text_start + text_size != _etext -
1, which is surprising.

I would prefer:

text_start = code_start = &_stext;
text_size = &_etext - text_start;
code_size = &__start_ro_data - code_start;

> +	unsigned long rodata_start = (unsigned long)&__start_rodata;
> +	unsigned long rodata_size = (unsigned long)&__end_rodata - rodata_start;
>  
>  	if (!request_barebox_region("ttb", (unsigned long)ttb,
>  				    ARM_EARLY_PAGETABLE_SIZE))
> @@ -550,6 +574,8 @@ void __mmu_init(bool mmu_on)
>  
>  	pr_debug("ttb: 0x%p\n", ttb);
>  
> +	vectors_init();

Any particular reason to move this around?

> +
>  	/*
>  	 * Early mmu init will have mapped everything but the initial memory area
>  	 * (excluding final OPTEE_SIZE bytes) uncached. We have now discovered
> @@ -568,10 +594,22 @@ void __mmu_init(bool mmu_on)
>  			pos = rsv->end + 1;
>  		}
>  
> -		remap_range((void *)pos, bank->start + bank->size - pos, MAP_CACHED);
> +		if (IS_ENABLED(CONFIG_ARM_MMU_PERMISSIONS)) {
> +			if (region_overlap_size(pos, bank->start + bank->size - pos,
> +			    text_start, text_size)) {

Wouldn't matter, but we should check overlap against the full range we
are going to remap specially. With my suggested text_size/code_size
changes above that would be correct(er).

> +				remap_range((void *)pos, text_start - pos, MAP_CACHED);

This is ok.

> +				remap_range((void *)text_start, text_size, MAP_CODE);
> +				remap_range((void *)rodata_start, rodata_size, ARCH_MAP_CACHED_RO);

These I would move out of the loop after the iteration.

> +				remap_range((void *)(rodata_start + rodata_size),
> +					    bank->start + bank->size - (rodata_start + rodata_size),
> +					    MAP_CACHED);
> +			} else {
> +				remap_range((void *)pos, bank->start + bank->size - pos, MAP_CACHED);
> +			}
> +		} else {
> +			remap_range((void *)pos, bank->start + bank->size - pos, MAP_CACHED);
> +		}

If we combine the two if conditional into a single &&ed one, we can
replace the three remap_range calls by a single one:

		pos = text_start + text_end;
		if (pos >= bank->start + bank->size)
			continue;
		/* We carved out a gap for the barebox parts, so fall
                 * through to remapping the rest
                 */
	}

	remap_range((void *)pos, bank->start + bank->size - pos,
		    MAP_CACHED);
}

Then we can do the remapping of the sections here. I think that would
aid readability.

Thanks,
Ahmad


>  	}
> -
> -	vectors_init();
>  }
>  
>  /*
> @@ -624,7 +662,7 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize, unsigned lon
>  	 * map the bulk of the memory as sections to avoid allocating too many page tables
>  	 * at this early stage
>  	 */
> -	early_remap_range(membase, barebox_start - membase, MAP_CACHED, false);
> +	early_remap_range(membase, barebox_start - membase, ARCH_MAP_CACHED_RWX, false);
>  	/*
>  	 * Map the remainder of the memory explicitly with two level page tables. This is
>  	 * the place where barebox proper ends at. In barebox proper we'll remap the code
> @@ -634,10 +672,10 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize, unsigned lon
>  	 * a break-before-make sequence which we can't do when barebox proper is running
>  	 * at the location being remapped.
>  	 */
> -	early_remap_range(barebox_start, barebox_size, MAP_CACHED, true);
> +	early_remap_range(barebox_start, barebox_size, ARCH_MAP_CACHED_RWX, true);
>  	early_remap_range(optee_start, OPTEE_SIZE, MAP_UNCACHED, false);
>  	early_remap_range(PAGE_ALIGN_DOWN((uintptr_t)_stext), PAGE_ALIGN(_etext - _stext),
> -			  MAP_CACHED, false);
> +			  ARCH_MAP_CACHED_RWX, false);
>  
>  	__mmu_cache_on();
>  }
> diff --git a/arch/arm/lib32/barebox.lds.S b/arch/arm/lib32/barebox.lds.S
> index a52556a35696aea6f15cad5fd3f0275e8e6349b1..dbfdd2e9c110133f7fb45e06911bfc9ea9e8299c 100644
> --- a/arch/arm/lib32/barebox.lds.S
> +++ b/arch/arm/lib32/barebox.lds.S
> @@ -30,7 +30,7 @@ SECTIONS
>  	}
>  	BAREBOX_BARE_INIT_SIZE
>  
> -	. = ALIGN(4);
> +	. = ALIGN(4096);
>  	__start_rodata = .;
>  	.rodata : {
>  		*(.rodata*)
> @@ -53,6 +53,7 @@ SECTIONS
>  		__stop_unwind_tab = .;
>  	}
>  #endif
> +	. = ALIGN(4096);
>  	__end_rodata = .;
>  	_etext = .;
>  	_sdata = .;
> diff --git a/include/mmu.h b/include/mmu.h
> index 84ec6c5efb3eb8020fdc98e76a3614c137a0f8e9..20855e89eda301527b8cd69d868d58fc79637f5e 100644
> --- a/include/mmu.h
> +++ b/include/mmu.h
> @@ -8,6 +8,7 @@
>  #define MAP_UNCACHED	0
>  #define MAP_CACHED	1
>  #define MAP_FAULT	2
> +#define MAP_CODE	3
>  
>  /*
>   * Depending on the architecture the default mapping can be
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



