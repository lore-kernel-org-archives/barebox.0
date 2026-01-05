Delivery-date: Mon, 05 Jan 2026 14:59:04 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcl6u-001XZE-0M
	for lore@lore.pengutronix.de;
	Mon, 05 Jan 2026 14:59:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcl6t-0000PJ-2q
	for lore@pengutronix.de; Mon, 05 Jan 2026 14:59:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=X86TlpN8xmoOQgqiOgEvimgbsKiFUnQnGd68rGJTlBU=; b=APLDPK5Q6cvTMN/Bo6Yj7EFKy1
	gvBZnuLgGIwLu+q5GIcw+g+aG341PT/33qgdngoGAVGBvbbSCndy9Q7M7m5+a9qP/smvv8lBbIc3+
	X7xK/va7U9HPIpTYWB/lGdOadPnzZRXkSdh7+SjuLdFQlb5WJf5wf1vN1FXy/fWkRF/0Ry893rFac
	PY00aPeIkLwT6gW2ZBDgfN55phyy8O4XrKWkr4qnES6ftIU5b5sYJ3IrOC53fw7D8vuM0lsTsmtEr
	ftOIBqsPTKl1rf+vUwM/A3BJpT+UN1kvUj5SI1KoMLh1JhJtMmdLaOLRXSuydCuuF1ZtsiujPRFky
	N1osTucw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcl6O-0000000BVT0-40WM;
	Mon, 05 Jan 2026 13:58:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcl6M-0000000BVSM-1oNj
	for barebox@lists.infradead.org;
	Mon, 05 Jan 2026 13:58:32 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vcl6K-0000I0-OJ; Mon, 05 Jan 2026 14:58:28 +0100
Message-ID: <ea147b33-3b1f-40ac-b02b-56276ebed032@pengutronix.de>
Date: Mon, 5 Jan 2026 14:58:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>, Marco Felsch
 <m.felsch@pengutronix.de>, Stefan Kerkmann <ske@pengutronix.de>
Cc: "Claude Sonnet 4.5" <noreply@anthropic.com>
References: <20260105-pbl-load-elf-v1-0-e97853f98232@pengutronix.de>
 <20260105-pbl-load-elf-v1-19-e97853f98232@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260105-pbl-load-elf-v1-19-e97853f98232@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_055830_627499_E4C3C1C4 
X-CRM114-Status: GOOD (  34.78  )
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
Subject: Re: [PATCH 19/19] riscv: add ELF segment-based memory protection with
 MMU
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Sascha,

On 1/5/26 12:27 PM, Sascha Hauer wrote:
> Enable hardware-enforced W^X (Write XOR Execute) memory protection through
> ELF segment-based permissions using the RISC-V MMU.
> 
> This implementation provides memory protection for RISC-V S-mode using
> Sv39 (RV64) or Sv32 (RV32) page tables.
> 
> Linker Script Changes:
> - Add PHDRS directives to pbl.lds.S and barebox.lds.S
> - Create three separate PT_LOAD segments with proper permissions:
>   * text segment (FLAGS(5) = PF_R|PF_X): code sections
>   * rodata segment (FLAGS(4) = PF_R): read-only data
>   * data segment (FLAGS(6) = PF_R|PF_W): data and BSS
> - Add 4K alignment between segments for page-granular protection
> 
> S-mode MMU Implementation (mmu.c):
> - Implement page table walking for Sv39/Sv32
> - pbl_remap_range(): remap segments with ELF-derived permissions
> - mmu_early_enable(): create identity mapping and enable SATP CSR
> - Map ELF flags to PTE bits:
>   * MAP_CODE → PTE_R | PTE_X (read + execute)
>   * MAP_CACHED_RO → PTE_R (read only)
>   * MAP_CACHED → PTE_R | PTE_W (read + write)
> 
> Integration:
> - Update uncompress.c to call mmu_early_enable() before decompression
>   (enables caching for faster decompression)
> - Call pbl_mmu_setup_from_elf() after ELF relocation to apply final
>   segment-based permissions
> - Uses portable pbl/mmu.c infrastructure to parse PT_LOAD segments
> 
> Configuration:
> - Add CONFIG_MMU option (default y for RISCV_S_MODE)
> - Update asm/mmu.h with ARCH_HAS_REMAP and function declarations
> 
> Security Benefits:
> - Text sections are read-only and executable (cannot be modified)
> - Read-only data sections are read-only and non-executable
> - Data sections are read-write and non-executable (cannot be executed)
> - Hardware-enforced W^X prevents code injection attacks
> 
> This matches the ARM implementation philosophy and provides genuine
> security improvements on RISC-V S-mode platforms.
> 
> 🤖 Generated with [Claude Code](https://claude.com/claude-code)
> 
> Co-Authored-By: Claude Sonnet 4.5 <noreply@anthropic.com>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/riscv/Kconfig           |  16 ++
>  arch/riscv/Kconfig.socs      |   1 -
>  arch/riscv/boot/uncompress.c |  25 +++
>  arch/riscv/cpu/Makefile      |   1 +
>  arch/riscv/cpu/mmu.c         | 386 +++++++++++++++++++++++++++++++++++++++++++
>  arch/riscv/cpu/mmu.h         | 144 ++++++++++++++++
>  arch/riscv/include/asm/asm.h |   3 +-
>  arch/riscv/include/asm/mmu.h |  44 +++++
>  include/mmu.h                |   6 +-
>  9 files changed, 621 insertions(+), 5 deletions(-)
> 
> diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> index f8c8b38ed6d7fdae48669e6d7b737f695f1c4cc9..1eec3c6c684cfc16f92f612cf45a1511f072948b 100644
> --- a/arch/riscv/Kconfig
> +++ b/arch/riscv/Kconfig
> @@ -130,4 +130,20 @@ config RISCV_MULTI_MODE
>  config RISCV_SBI
>  	def_bool RISCV_S_MODE
>  
> +config MMU
> +	bool "MMU-based memory protection"
> +	help
> +	  Enable MMU (Memory Management Unit) support for RISC-V S-mode.
> +	  This provides hardware-enforced W^X (Write XOR Execute) memory
> +	  protection using page tables (Sv39 for RV64, Sv32 for RV32).
> +
> +	  The PBL sets up page table entries based on ELF segment permissions,
> +	  ensuring that:
> +	  - Text sections are read-only and executable
> +	  - Read-only data sections are read-only and non-executable
> +	  - Data sections are read-write and non-executable
> +
> +	  Say Y if running in S-mode (supervisor mode) with virtual memory.
> +	  Say N if running in M-mode or if you don't need memory protection.
> +
>  endmenu
> diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
> index 4a3b56b5fff48c86901ed0346be490a6847ac14e..0d9984dd2888e6cab81939e3ee97ef83851362a0 100644
> --- a/arch/riscv/Kconfig.socs
> +++ b/arch/riscv/Kconfig.socs
> @@ -123,7 +123,6 @@ if SOC_ALLWINNER_SUN20I
>  config BOARD_ALLWINNER_D1
>  	bool "Allwinner D1 Nezha"
>  	select RISCV_S_MODE
> -	select RISCV_M_MODE

I don't know why this board select both S- and M-Mode, but maybe you can
explain why it drops the latter of them?

> +#ifdef CONFIG_MMU

if (IS_ENABLED()) or stubs in header?

> +	/*
> +	 * Enable MMU early to enable caching for faster decompression.
> +	 * This creates an initial identity mapping that will be refined
> +	 * later based on ELF segments.
> +	 */
> +	mmu_early_enable(membase, memsize, barebox_base);
> +#endif
> +
>  	pr_debug("uncompressing barebox binary at 0x%p (size 0x%08x) to 0x%08lx (uncompressed size: 0x%08x)\n",
>  			pg_start, pg_len, barebox_base, uncompressed_len);
>  
> @@ -82,6 +94,19 @@ void __noreturn barebox_pbl_start(unsigned long membase, unsigned long memsize,
>  		hang();
>  	}
>  
> +	/*
> +	 * Now that the ELF image is relocated, we know the exact addresses
> +	 * of all segments. Set up MMU with proper permissions based on
> +	 * ELF segment flags (PF_R/W/X).
> +	 */
> +#ifdef CONFIG_MMU
> +	ret = pbl_mmu_setup_from_elf(&elf, membase, memsize);
> +	if (ret) {
> +		pr_err("Failed to setup memory protection from ELF: %d\n", ret);
> +		hang();
> +	}
> +#endif
> +
>  	barebox = (void *)elf.entry;
>  
>  	pr_debug("jumping to uncompressed image at 0x%p. dtb=0x%p\n", barebox, fdt);
> diff --git a/arch/riscv/cpu/Makefile b/arch/riscv/cpu/Makefile
> index d79bafc6f142a0060d2a86078f0fb969b298ba98..6bf31b574cd6242df6393fbdc8accc08dceb822a 100644
> --- a/arch/riscv/cpu/Makefile
> +++ b/arch/riscv/cpu/Makefile
> @@ -7,3 +7,4 @@ obj-pbl-$(CONFIG_RISCV_M_MODE) += mtrap.o
>  obj-pbl-$(CONFIG_RISCV_S_MODE) += strap.o
>  obj-pbl-y += interrupts.o
>  endif
> +obj-pbl-$(CONFIG_MMU) += mmu.o
> diff --git a/arch/riscv/cpu/mmu.c b/arch/riscv/cpu/mmu.c
> new file mode 100644
> index 0000000000000000000000000000000000000000..6cf4586f364c98dd69105dfa1c558b560755b7d4
> --- /dev/null
> +++ b/arch/riscv/cpu/mmu.c
> @@ -0,0 +1,386 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +// SPDX-FileCopyrightText: 2026 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
> +
> +#define pr_fmt(fmt) "mmu: " fmt
> +
> +#include <common.h>
> +#include <init.h>
> +#include <mmu.h>
> +#include <errno.h>
> +#include <linux/sizes.h>
> +#include <linux/bitops.h>
> +#include <asm/sections.h>
> +
> +#include "mmu.h"
> +
> +#ifdef __PBL__

Drop #ifdef and build file only for pbl- and move stub into header?

I won't dig deeper into review here for v1, but you may want to compare
against the RISC-V MMU implementation here:

https://github.com/AndreyLalaev/barebox/tree/riscv-mmu

> +/*
> + * Convert maptype flags to PTE permission bits
> + */
> +static unsigned long flags_to_pte(maptype_t flags)
> +{
> +	unsigned long pte = PTE_V;  /* Valid bit always set */
> +
> +	/*
> +	 * Map barebox memory types to RISC-V PTE flags:
> +	 * - ARCH_MAP_CACHED_RWX: read + write + execute (early boot, full RAM access)
> +	 * - MAP_CODE: read + execute (text sections)
> +	 * - MAP_CACHED_RO: read only (rodata sections)
> +	 * - MAP_CACHED: read + write (data/bss sections)
> +	 * - MAP_UNCACHED: read + write, uncached (device memory)
> +	 */
> +	switch (flags & MAP_TYPE_MASK) {
> +	case ARCH_MAP_CACHED_RWX:
> +		/* Full access for early boot: R + W + X */
> +		pte |= PTE_R | PTE_W | PTE_X;
> +		break;
> +	case MAP_CACHED_RO:
> +		/* Read-only data: R, no W, no X */
> +		pte |= PTE_R;
> +		break;
> +	case MAP_CODE:
> +		/* Code: R + X, no W */
> +		pte |= PTE_R | PTE_X;
> +		break;
> +	case MAP_CACHED:
> +	case MAP_UNCACHED:

The real world happened and there is a sizable amount of RISC-V silicon
that optimized cost by sacrificing cache coherency, including the
Starfive and Nezha we currently support. Each implements it a different
way and neither supports the Svpbmt extension...


> +#ifndef __ASSEMBLY__
> +
> +/* CSR access */
> +#define csr_read(csr)						\
> +({								\
> +	unsigned long __v;					\
> +	__asm__ __volatile__ ("csrr %0, " #csr			\
> +			      : "=r" (__v) :			\
> +			      : "memory");			\
> +	__v;							\
> +})
> +
> +#define csr_write(csr, val)					\
> +({								\
> +	unsigned long __v = (unsigned long)(val);		\
> +	__asm__ __volatile__ ("csrw " #csr ", %0"		\
> +			      : : "rK" (__v)			\
> +			      : "memory");			\
> +})

These duplicate <asm/csr.h> I think.



> -	if (maptype_is_compatible(map_type, MAP_ARCH_DEFAULT) &&
> +	if (maptype_is_compatible(map_type, MAP_DEFAULT) &&

spurious change?

Cheers,
Ahmad
-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



