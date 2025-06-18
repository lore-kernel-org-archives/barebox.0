Delivery-date: Wed, 18 Jun 2025 10:34:24 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRoFU-008YMi-1P
	for lore@lore.pengutronix.de;
	Wed, 18 Jun 2025 10:34:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRoFT-0005Jb-NY
	for lore@pengutronix.de; Wed, 18 Jun 2025 10:34:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uwsVtHYY1y1/sY3xlTbTJmeJdXROblMo9ynTSIdGF0Y=; b=oFO8/PTH4rbmzQA97Yn7HHT8pG
	3Kl3Oa+1D4foyghEJoud2/DnKlsCh3GiynEFsgjT4DfcDBBgEokoa42jrIgwACa9sRXAI7JSleQ2e
	Qh+eVTXHO2nJ7d2SLb5tXTSnwYnmBS5VAMhoDnKPccQ+OPNNoEp8hMbfbvv6Ax8OlHO0a086GgM6e
	TOX1q+4e/+V2Aayu7B/TvaqLsqsWlAS8m0/DxxOJKE/OUmRjxnaayikR6l2kLo0aH4ZiMezy8+UQv
	G/UXL2a2j0KfHljsSKD2vJ8s5HF4RmQbjRQBP+9NU5I5OLSdITZp9HVN0kpTrTgEN0R6fkmjjN95q
	6ZJ5DGUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRoEy-00000009Q9m-33zN;
	Wed, 18 Jun 2025 08:33:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRoEw-00000009Q8t-2BXH
	for barebox@lists.infradead.org;
	Wed, 18 Jun 2025 08:33:51 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uRoEv-0004YJ-Bi; Wed, 18 Jun 2025 10:33:49 +0200
Message-ID: <24e5f4d6-7d95-4a60-a2da-637148b42d67@pengutronix.de>
Date: Wed, 18 Jun 2025 10:33:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20250617-mmu-xn-ro-v2-0-3c7aa9046b67@pengutronix.de>
 <20250617-mmu-xn-ro-v2-6-3c7aa9046b67@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20250617-mmu-xn-ro-v2-6-3c7aa9046b67@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250618_013350_566263_9C4B21AC 
X-CRM114-Status: GOOD (  25.10  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 6/6] ARM: MMU64: map text segment ro and data segments
 execute never
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 6/17/25 16:28, Sascha Hauer wrote:
> With this all segments in the DRAM except the text segment are mapped
> execute-never so that only the barebox code can actually be executed.
> Also map the readonly data segment readonly so that it can't be
> modified.
> 
> The mapping is only implemented in barebox proper. The PBL still maps
> the whole DRAM rwx.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Let's see what breaks!

Cheers,
Ahmad

> ---
>  arch/arm/cpu/mmu_64.c            | 34 ++++++++++++++++++++++++++++++----
>  arch/arm/include/asm/pgtable64.h |  1 +
>  arch/arm/lib64/barebox.lds.S     |  5 +++--
>  3 files changed, 34 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
> index 7e46201bbaae06dd4f2f3bd194db93d83401bfc9..4c23cb3056d24799e2c0aec9ee567165fca06ce0 100644
> --- a/arch/arm/cpu/mmu_64.c
> +++ b/arch/arm/cpu/mmu_64.c
> @@ -292,13 +292,19 @@ static unsigned long get_pte_attrs(unsigned flags)
>  {
>  	switch (flags) {
>  	case MAP_CACHED:
> -		return CACHED_MEM;
> +		return attrs_xn() | CACHED_MEM;
>  	case MAP_UNCACHED:
>  		return attrs_xn() | UNCACHED_MEM;
>  	case MAP_FAULT:
>  		return 0x0;
>  	case ARCH_MAP_WRITECOMBINE:
>  		return attrs_xn() | MEM_ALLOC_WRITECOMBINE;
> +	case MAP_CODE:
> +		return CACHED_MEM | PTE_BLOCK_RO;
> +	case ARCH_MAP_CACHED_RO:
> +		return attrs_xn() | CACHED_MEM | PTE_BLOCK_RO;
> +	case ARCH_MAP_CACHED_RWX:
> +		return CACHED_MEM;
>  	default:
>  		return ~0UL;
>  	}
> @@ -316,7 +322,11 @@ static void early_remap_range(uint64_t addr, size_t size, unsigned flags, bool f
>  
>  int arch_remap_range(void *virt_addr, phys_addr_t phys_addr, size_t size, unsigned flags)
>  {
> -	unsigned long attrs = get_pte_attrs(flags);
> +	unsigned long attrs;
> +
> +	flags = arm_mmu_maybe_skip_permissions(flags);
> +
> +	attrs = get_pte_attrs(flags);
>  
>  	if (attrs == ~0UL)
>  		return -EINVAL;
> @@ -357,6 +367,12 @@ void __mmu_init(bool mmu_on)
>  {
>  	uint64_t *ttb = get_ttb();
>  	struct memory_bank *bank;
> +	unsigned long text_start = (unsigned long)&_stext;
> +	unsigned long code_start = text_start;
> +	unsigned long code_size = (unsigned long)&__start_rodata - (unsigned long)&_stext;
> +	unsigned long text_size = (unsigned long)&_etext - text_start;
> +	unsigned long rodata_start = (unsigned long)&__start_rodata;
> +	unsigned long rodata_size = (unsigned long)&__end_rodata - rodata_start;
>  
>  	// TODO: remap writable only while remapping?
>  	// TODO: What memtype for ttb when barebox is EFI loader?
> @@ -383,9 +399,19 @@ void __mmu_init(bool mmu_on)
>  			pos = rsv->end + 1;
>  		}
>  
> +		if (region_overlap_size(pos, bank->start + bank->size - pos,
> +		    text_start, text_size)) {
> +			remap_range((void *)pos, text_start - pos, MAP_CACHED);
> +			/* skip barebox segments here, will be mapped below */
> +			pos = text_start + text_size;
> +		}
> +
>  		remap_range((void *)pos, bank->start + bank->size - pos, MAP_CACHED);
>  	}
>  
> +	remap_range((void *)code_start, code_size, MAP_CODE);
> +	remap_range((void *)rodata_start, rodata_size, ARCH_MAP_CACHED_RO);
> +
>  	/* Make zero page faulting to catch NULL pointer derefs */
>  	zero_page_faulting();
>  	create_guard_page();
> @@ -465,7 +491,7 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize, unsigned lon
>  	 */
>  	init_range(2);
>  
> -	early_remap_range(membase, memsize, MAP_CACHED, false);
> +	early_remap_range(membase, memsize, ARCH_MAP_CACHED_RWX, false);
>  
>  	if (optee_get_membase(&optee_membase)) {
>                  optee_membase = membase + memsize - OPTEE_SIZE;
> @@ -484,7 +510,7 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize, unsigned lon
>  	early_remap_range(optee_membase, OPTEE_SIZE, MAP_FAULT, false);
>  
>  	early_remap_range(PAGE_ALIGN_DOWN((uintptr_t)_stext), PAGE_ALIGN(_etext - _stext),
> -			  MAP_CACHED, false);
> +			  ARCH_MAP_CACHED_RWX, false);
>  
>  	mmu_enable();
>  }
> diff --git a/arch/arm/include/asm/pgtable64.h b/arch/arm/include/asm/pgtable64.h
> index b88ffe6be5254e1b9d3968573d5e9b7a37828a55..6f6ef22717b76baaf7857b12d38c6074871ce143 100644
> --- a/arch/arm/include/asm/pgtable64.h
> +++ b/arch/arm/include/asm/pgtable64.h
> @@ -59,6 +59,7 @@
>  #define PTE_BLOCK_NG            (1 << 11)
>  #define PTE_BLOCK_PXN           (UL(1) << 53)
>  #define PTE_BLOCK_UXN           (UL(1) << 54)
> +#define PTE_BLOCK_RO            (UL(1) << 7)
>  
>  /*
>   * AttrIndx[2:0] encoding (mapping attributes defined in the MAIR* registers).
> diff --git a/arch/arm/lib64/barebox.lds.S b/arch/arm/lib64/barebox.lds.S
> index 50e4b6f42cb8d4de92b7450e5b864b9056b61916..caddbedd610f68658b7ecf7616947ce02a84e5e8 100644
> --- a/arch/arm/lib64/barebox.lds.S
> +++ b/arch/arm/lib64/barebox.lds.S
> @@ -28,18 +28,19 @@ SECTIONS
>  	}
>  	BAREBOX_BARE_INIT_SIZE
>  
> -	. = ALIGN(4);
> +	. = ALIGN(4096);
>  	__start_rodata = .;
>  	.rodata : {
>  		*(.rodata*)
>  		RO_DATA_SECTION
>  	}
>  
> +	. = ALIGN(4096);
> +
>  	__end_rodata = .;
>  	_etext = .;
>  	_sdata = .;
>  
> -	. = ALIGN(4);
>  	.data : { *(.data*) }
>  
>  	.barebox_imd : { BAREBOX_IMD }
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



