Delivery-date: Tue, 06 Jan 2026 15:11:10 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd7mA-001uqZ-1r
	for lore@lore.pengutronix.de;
	Tue, 06 Jan 2026 15:11:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd7m9-0004RM-I5
	for lore@pengutronix.de; Tue, 06 Jan 2026 15:11:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2/VgF3qyc0hfilG+zb49FOcT39jCULZr7tbLU1icJeQ=; b=YVqewMA89jEs5QeaGe/EUqNURt
	PcglNpLJbPBKea+B9wKuOQgoBk3SAPo1uDbRgLzNGqCkR4G8nSIT3WJCkpFkHoKBWbhCvtpDVGaZn
	hlQTHShiDzU3YY66/8Xu/hp9mq461XLI1p3jD1AclnCJyAO8ZZ6Di/ccHSCTfIm7cf/hdxdX0ExKf
	T78XFl+n4+AR88mESUMN6VDpVuXxM+h8RnFCYbZBv3o8jd2Hy1L5vQfwn8Hwtq7Yj7OB9fPYoGFIy
	UziyLPKLe0xMreIQh5H1Qyw/dlvDo8PFI6EB2uht+ByVxmz7ML/cDqA779ZCXov9cyT8A2JL9XV1+
	GFHXLoXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd7lc-0000000DFwt-1IKx;
	Tue, 06 Jan 2026 14:10:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd7lZ-0000000DFwT-1neG
	for barebox@lists.infradead.org;
	Tue, 06 Jan 2026 14:10:34 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vd7lX-0004M5-P6; Tue, 06 Jan 2026 15:10:31 +0100
Message-ID: <ed5a8f3a-618f-4d7a-af95-459a7d2be3b5@pengutronix.de>
Date: Tue, 6 Jan 2026 15:10:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
Cc: "Claude Sonnet 4.5" <noreply@anthropic.com>
References: <20260106-pbl-load-elf-v2-0-487bc760f045@pengutronix.de>
 <20260106-pbl-load-elf-v2-17-487bc760f045@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260106-pbl-load-elf-v2-17-487bc760f045@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260106_061033_624565_A0A8C25B 
X-CRM114-Status: GOOD (  36.60  )
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
Subject: Re: [PATCH v2 17/21] ARM: PBL: setup MMU with proper permissions from
 ELF segments
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 1/6/26 1:53 PM, Sascha Hauer wrote:
> Move complete MMU setup into PBL by leveraging ELF segment information
> to apply correct memory permissions before jumping to barebox proper.
> 
> After ELF relocation, parse PT_LOAD segments and map each with
> permissions derived from p_flags:
> - Text segments (PF_R|PF_X): Read-only + executable (MAP_CODE)
> - Data segments (PF_R|PF_W): Read-write (MAP_CACHED)
> - RO data segments (PF_R): Read-only (ARCH_MAP_CACHED_RO)
> 
> This ensures barebox proper starts with full W^X protection already
> in place, eliminating the need for complex remapping in barebox proper.
> The mmu_init() function now only sets up trap pages for exception
> handling.
> 
> The framework is portable - common ELF parsing in pbl/mmu.c uses
> architecture-specific early_remap_range() exported from mmu_*.c.
> 
> 🤖 Generated with [Claude Code](https://claude.com/claude-code)

The commit message is now outdated.

> @@ -138,6 +134,10 @@ static void mmu_remap_memory_banks(void)
>  	 * all memory banks, so let's map all pages, excluding reserved memory areas
>  	 * and barebox text area cacheable.
>  	 *
> +	 * PBL has already set up the MMU with proper permissions for text and
> +	 * rodata based on ELF segment information, so we don't need to remap
> +	 * those here.
> +	 *

Yes, but the loop only skips over the text area. It needs to be adapted
to skip over the whole barebox image:

-       unsigned long text_start = (unsigned long)&_stext;
-       unsigned long text_end = (unsigned long)&_etext;
+       unsigned long image_start = (unsigned long)&__image_start;
+       unsigned long image_end = (unsigned long)PTR_ALIGN(&_end,
PAGE_SIZE);


>  	 * This code will become much less complex once we switch over to using
>  	 * CONFIG_MEMORY_ATTRIBUTES for MMU as well.
>  	 */
> @@ -157,9 +157,7 @@ static void mmu_remap_memory_banks(void)
>  		remap_range_end_sans_text(pos, bank->res->end + 1, MAP_CACHED);
>  	}
>  
> -	remap_range((void *)code_start, code_size, MAP_CODE);
> -	remap_range((void *)rodata_start, rodata_size, MAP_CACHED_RO);
> -
> +	/* Do this while interrupt vectors are still writable */
>  	setup_trap_pages();
>  }
>  
> diff --git a/arch/arm/cpu/uncompress.c b/arch/arm/cpu/uncompress.c
> index 8cc7102290986e71d2f3a2f34df1a9f946c56ced..619bd8d5b0b56ab2704a0fa1e4964bb603b761d9 100644
> --- a/arch/arm/cpu/uncompress.c
> +++ b/arch/arm/cpu/uncompress.c
> @@ -21,6 +21,7 @@
>  #include <asm/unaligned.h>
>  #include <compressed-dtb.h>
>  #include <elf.h>
> +#include <pbl/mmu.h>
>  
>  #include <debug_ll.h>
>  
> @@ -105,6 +106,19 @@ void __noreturn barebox_pbl_start(unsigned long membase, unsigned long memsize,
>  
>  	pr_debug("ELF entry point: 0x%llx\n", elf.entry);
>  
> +	/*
> +	 * Now that the ELF image is relocated, we know the exact addresses
> +	 * of all segments. Set up MMU with proper permissions based on
> +	 * ELF segment flags (PF_R/W/X).
> +	 */
> +	if (IS_ENABLED(CONFIG_MMU)) {
> +		ret = pbl_mmu_setup_from_elf(&elf, membase, memsize);
> +		if (ret) {
> +			pr_err("Failed to setup MMU from ELF: %d\n", ret);
> +			hang();
> +		}
> +	}
> +
>  	barebox = (void *)(unsigned long)elf.entry;
>  
>  	handoff_data_move(handoff_data);
> diff --git a/include/pbl/mmu.h b/include/pbl/mmu.h
> new file mode 100644
> index 0000000000000000000000000000000000000000..4a00d8e528ab5452981347185c9114235f213e2b
> --- /dev/null
> +++ b/include/pbl/mmu.h
> @@ -0,0 +1,29 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +#ifndef __PBL_MMU_H
> +#define __PBL_MMU_H
> +
> +#include <linux/types.h>
> +
> +struct elf_image;
> +
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
> index 0000000000000000000000000000000000000000..853fdcba55699025ea1d2a49385747e29cb2debc
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
> +		if (!IS_ALIGNED(addr, PAGE_SIZE) || !IS_ALIGNED(size, PAGE_SIZE)) {
> +			pr_debug("Segment %d not page-aligned, rounding\n", i);
> +			size = ALIGN(size, PAGE_SIZE);
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



