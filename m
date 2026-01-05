Delivery-date: Mon, 05 Jan 2026 13:59:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vckAx-001WdB-1l
	for lore@lore.pengutronix.de;
	Mon, 05 Jan 2026 13:59:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vckAw-0000jU-Iw
	for lore@pengutronix.de; Mon, 05 Jan 2026 13:59:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=t81r2+J2nRCIPTjjXo6w1IlgefCFjr9+Yp3KOd3FMyU=; b=viDRjTDzsPehyOJjvL4UglJYGA
	F+GrBHdBYZlYWpwROHSWdAZj5YpjJTE/ic8aYEhuk9Q2hOo6HDo3iX2bSP3n75RzkHuL85CVFSEw9
	MHpsgkaXosxcovSIJxyrIivHUIuo2Vjl+SkioRnGkhZ97J+nFMWY6cSnHVxOJg7nLBY+XiGFI+0g1
	kpCRqkc2zhBDNwAeEOXq2A+TmFwk4OCCmcHLl0yo/GPZVfOEBRT7aWokwzgMxF4Ss37Qg9yqllgV+
	2MRHxgypdnQPo+ZlLwTNs19mhIGt39gyj6hkEopf/GTVt+3TRFJLgE2oTZ4NEL1DlRZ2Sk79pg53T
	O+SobH+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vckAP-0000000BN1o-3deS;
	Mon, 05 Jan 2026 12:58:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vckAM-0000000BN0f-1l9h
	for barebox@lists.infradead.org;
	Mon, 05 Jan 2026 12:58:36 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vckAK-0000as-MP; Mon, 05 Jan 2026 13:58:32 +0100
Message-ID: <56cd4638-2fea-49d0-bc22-6ed875011ffa@pengutronix.de>
Date: Mon, 5 Jan 2026 13:58:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
Cc: "Claude Sonnet 4.5" <noreply@anthropic.com>
References: <20260105-pbl-load-elf-v1-0-e97853f98232@pengutronix.de>
 <20260105-pbl-load-elf-v1-16-e97853f98232@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260105-pbl-load-elf-v1-16-e97853f98232@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_045834_617078_2690F9BC 
X-CRM114-Status: GOOD (  35.42  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 16/19] ARM: PBL: setup MMU with proper permissions from
 ELF segments
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 1/5/26 12:26 PM, Sascha Hauer wrote:
>  	/*
> -	 * Early mmu init will have mapped everything but the initial memory area
> -	 * (excluding final OPTEE_SIZE bytes) uncached. We have now discovered
> -	 * all memory banks, so let's map all pages, excluding reserved memory areas
> -	 * and barebox text area cacheable.
> -	 *
> -	 * This code will become much less complex once we switch over to using
> -	 * CONFIG_MEMORY_ATTRIBUTES for MMU as well.
> +	 * PBL has already set up the MMU with proper permissions based on
> +	 * ELF segment information. We only need to set up trap pages for
> +	 * exception handling.

This is incorrect. PBL only know about initial memory and not about
other memory banks and reserved memory regions. We need to keep this code...

>  	 */
> -	for_each_memory_bank(bank) {
> -		struct resource *rsv;
> -		resource_size_t pos;
> -
> -		pos = bank->start;
> -
> -		/* Skip reserved regions */
> -		for_each_reserved_region(bank, rsv) {
> -			if (pos != rsv->start)
> -				remap_range_end_sans_text(pos, rsv->start, MAP_CACHED);
> -			pos = rsv->end + 1;
> -		}
> -
> -		remap_range_end_sans_text(pos, bank->start + bank->size, MAP_CACHED);
> -	}
> -
> -	/* Do this while interrupt vectors are still writable */
>  	setup_trap_pages();
> -
> -	remap_range((void *)code_start, code_size, MAP_CODE);
> -	remap_range((void *)rodata_start, rodata_size, MAP_CACHED_RO);

These two lines however are fine to remove now.

> +	/*
> +	 * Now that the ELF image is relocated, we know the exact addresses
> +	 * of all segments. Set up MMU with proper permissions based on
> +	 * ELF segment flags (PF_R/W/X).
> +	 */
> +	if (IS_ENABLED(CONFIG_MMU)) {
> +		ret = pbl_mmu_setup_from_elf(&elf, membase, memsize);

I think it might be cleaner to move the ELF logic to pbl/elf.c given
that it's common for both ARM and RISC-V?

> +/**
> + * pbl_mmu_setup_from_elf() - Configure MMU using ELF segment information
> + * @elf: ELF image structure from elf_open_binary_into()
> + * @membase: Base address of RAM
> + * @memsize: Size of RAM
> + *
> + * This function sets up the MMU with proper permissions based on ELF
> + * segment flags. It should be called after elf_load_inplace() has
> + * relocated the barebox image.
> + *
> + * Segment permissions are mapped as follows:
> + *   PF_R | PF_X  -> Read-only + executable (text)
> + *   PF_R | PF_W  -> Read-write (data, bss)
> + *   PF_R         -> Read-only (rodata)
> + *
> + * Return: 0 on success, negative error code on failure
> + */
> +int pbl_mmu_setup_from_elf(struct elf_image *elf, unsigned long membase,
> +			    unsigned long memsize);
> +
> +#endif /* __PBL_MMU_H */
> diff --git a/pbl/Makefile b/pbl/Makefile
> index f66391be7b2898388425657f54afcd6e4c72e3db..b78124cdcd2a4690be11d5503006723252b4904f 100644
> --- a/pbl/Makefile
> +++ b/pbl/Makefile
> @@ -9,3 +9,4 @@ pbl-$(CONFIG_HAVE_IMAGE_COMPRESSION) += decomp.o
>  pbl-$(CONFIG_LIBFDT) += fdt.o
>  pbl-$(CONFIG_PBL_CONSOLE) += console.o
>  obj-pbl-y += handoff-data.o
> +obj-pbl-$(CONFIG_MMU) += mmu.o
> diff --git a/pbl/mmu.c b/pbl/mmu.c
> new file mode 100644
> index 0000000000000000000000000000000000000000..7a8f254a7bd67eccaab715832930c5d4134eb288
> --- /dev/null
> +++ b/pbl/mmu.c
> @@ -0,0 +1,111 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +// SPDX-FileCopyrightText: 2025 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
> +
> +#define pr_fmt(fmt) "pbl-mmu: " fmt
> +
> +#include <common.h>
> +#include <elf.h>
> +#include <mmu.h>
> +#include <pbl/mmu.h>
> +#include <asm/mmu.h>
> +#include <linux/bits.h>
> +#include <linux/sizes.h>
> +
> +/*
> + * Map ELF segment permissions (p_flags) to architecture MMU flags
> + */
> +static unsigned int elf_flags_to_mmu_flags(u32 p_flags)
> +{
> +	bool readable = p_flags & PF_R;
> +	bool writable = p_flags & PF_W;
> +	bool executable = p_flags & PF_X;
> +
> +	if (readable && writable) {
> +		/* Data, BSS: Read-write, cached, non-executable */
> +		return MAP_CACHED;
> +	} else if (readable && executable) {
> +		/* Text: Read-only, cached, executable */
> +		return MAP_CODE;
> +	} else if (readable) {
> +		/* Read-only data: Read-only, cached, non-executable */
> +		return MAP_CACHED_RO;

Nitpick: A switch (p_flags & (PF_R | PF_W | PF_X)) might look neater.

> +	} else {
> +		/*
> +		 * Unusual: segment with no read permission.
> +		 * Map as uncached, non-executable for safety.
> +		 */
> +		pr_warn("Segment with unusual permissions: flags=0x%x\n", p_flags);
> +		return MAP_UNCACHED;
> +	}
> +}
> +
> +int pbl_mmu_setup_from_elf(struct elf_image *elf, unsigned long membase,
> +			    unsigned long memsize)
> +{
> +	void *phdr;
> +	int i;
> +	int phnum = elf_hdr_e_phnum(elf, elf->hdr_buf);
> +	size_t phoff = elf_hdr_e_phoff(elf, elf->hdr_buf);
> +	size_t phentsize = elf_size_of_phdr(elf);
> +
> +	pr_debug("Setting up MMU from ELF segments\n");
> +	pr_debug("ELF entry point: 0x%llx\n", elf->entry);
> +	pr_debug("ELF loaded at: 0x%p - 0x%p\n", elf->low_addr, elf->high_addr);
> +
> +	/*
> +	 * Iterate through all PT_LOAD segments and set up MMU permissions
> +	 * based on the segment's p_flags
> +	 */
> +	for (i = 0; i < phnum; i++) {
> +		phdr = elf->hdr_buf + phoff + i * phentsize;
> +
> +		if (elf_phdr_p_type(elf, phdr) != PT_LOAD)
> +			continue;
> +
> +		u64 p_vaddr = elf_phdr_p_vaddr(elf, phdr);
> +		u64 p_memsz = elf_phdr_p_memsz(elf, phdr);
> +		u32 p_flags = elf_phdr_p_flags(elf, phdr);
> +
> +		/*
> +		 * Calculate actual address after relocation.
> +		 * For ET_EXEC: reloc_offset is 0, use p_vaddr directly
> +		 * For ET_DYN: reloc_offset adjusts virtual to actual address
> +		 */
> +		unsigned long addr = p_vaddr + elf->reloc_offset;
> +		unsigned long size = p_memsz;
> +		unsigned long segment_end = addr + size;

Add a check to skip non-alloc segments? We could use that to include
info that's only used in PBL and discarded after (e.g. dynsym table).

> +
> +		/* Validate segment is within available memory */
> +		if (segment_end < addr || /* overflow check */
> +		    addr < membase ||
> +		    segment_end > membase + memsize) {
> +			pr_err("Segment %d outside memory bounds\n", i);
> +			return -EINVAL;
> +		}
> +
> +		/* Validate alignment - warn and round if needed */
> +		if (!IS_ALIGNED(addr, SZ_4K) || !IS_ALIGNED(size, SZ_4K)) {

s/SZ_4K/PAGE_SIZE/

> +			pr_warn("Segment %d not page-aligned, rounding\n", i);
> +			size = ALIGN(size, SZ_4K);

Don't you get a warning every time for PT_DYNAMIC this way?

Cheers,
Ahmad

> +		}
> +
> +		unsigned int mmu_flags = elf_flags_to_mmu_flags(p_flags);
> +
> +		pr_debug("Segment %d: addr=0x%08lx size=0x%08lx flags=0x%x [%c%c%c] -> mmu_flags=0x%x\n",
> +			 i, addr, size, p_flags,
> +			 (p_flags & PF_R) ? 'R' : '-',
> +			 (p_flags & PF_W) ? 'W' : '-',
> +			 (p_flags & PF_X) ? 'X' : '-',
> +			 mmu_flags);
> +
> +		/*
> +		 * Remap this segment with proper permissions.
> +		 * Use page-wise mapping to allow different permissions for
> +		 * different segments even if they're nearby.
> +		 */
> +		pbl_remap_range((void *)addr, addr, size, mmu_flags);
> +	}
> +
> +	pr_debug("MMU setup from ELF complete\n");
> +	return 0;
> +}
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



