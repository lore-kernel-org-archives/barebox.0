Delivery-date: Tue, 06 Jan 2026 15:21:37 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd7wH-001vEt-1x
	for lore@lore.pengutronix.de;
	Tue, 06 Jan 2026 15:21:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd7wG-0005mv-V0
	for lore@pengutronix.de; Tue, 06 Jan 2026 15:21:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aOpZpumEJHY/vpTHKRHNzeZxTNbTqetMnQWdUGkkdY0=; b=ZwfJ5q7r+kfn9eiHTI4FMJnLr6
	x1VCNIlVWIq14gEiXBqkJCgFS+Az46o/sNJ6Q3OqJb97aLQgZK0DR0yyhgwzmOYRrIQIOpTemy9j8
	B63xltz8B0fhbTfJJPkijaxn/Mih/glEvKmF39Fax8YLP65QpcvERT7bNzJgbgN9bXDB2iiqsTQDt
	etGa93hDjuETf1rmmB5G73pq1ZDiIZV6GfERT3K98FwBRfR3fXsWuFb2lHbwHuvwVTElY75rhj2CT
	j4LWFbt3rAR0ZZKtwv7irvncNhF1awcblYH7dv81Pu9FHTz1bTyb4FCq0XVpc/saC9SzxXHnklYoe
	k3Noc7Qg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd7vg-0000000DGzT-0UsI;
	Tue, 06 Jan 2026 14:21:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd7vd-0000000DGyS-42rP
	for barebox@lists.infradead.org;
	Tue, 06 Jan 2026 14:20:59 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vd7vc-0005fm-8S; Tue, 06 Jan 2026 15:20:56 +0100
Message-ID: <db8bb68d-2acc-46ff-9da8-a953a8df8ed2@pengutronix.de>
Date: Tue, 6 Jan 2026 15:20:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
Cc: "Claude Sonnet 4.5" <noreply@anthropic.com>
References: <20260106-pbl-load-elf-v2-0-487bc760f045@pengutronix.de>
 <20260106-pbl-load-elf-v2-21-487bc760f045@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260106-pbl-load-elf-v2-21-487bc760f045@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260106_062058_000676_08F599A0 
X-CRM114-Status: GOOD (  22.48  )
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
Subject: Re: [PATCH v2 21/21] riscv: add ELF segment-based memory protection
 with MMU
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 1/6/26 1:53 PM, Sascha Hauer wrote:
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

That's a separate patch from this.

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

Mhm, I think this commit message needs to be toned down a bit..

> +#ifdef CONFIG_MMU

As with feedback on V1, why no IS_ENABLED() or stub?

> +#ifdef CONFIG_MMU

Likewise.

> +#ifdef __PBL__

See comments on v1.


> +	case MAP_CACHED:
> +	case MAP_UNCACHED:

Add a TODO here or some other comment that uncached memory is not support.

> +/* CSR access */
> +#define csr_read(csr)						\

We already define these. Refer to feedback on v1.


> +#if defined(CONFIG_MMU) || defined(CONFIG_RISCV_PMP)

Not defined symbol (CONFIG_RISCV_PMP)

> index 32d9a7aca3b9a61d542bf3e21e27f1ac51f43ee2..ecd44d4ac756009cd44d7dedbda5a13f1ca3f93d 100644
> --- a/include/mmu.h
> +++ b/include/mmu.h
> @@ -20,6 +20,9 @@
>  #define MAP_TYPE_MASK	0xFFFF
>  #define MAP_ARCH(x)	((u16)~(x))
>  
> +#include <asm/mmu.h>
> +#include <asm/io.h>
> +
>  /*
>   * Depending on the architecture the default mapping can be
>   * cached or uncached. Without ARCH_HAS_REMAP being set this
> @@ -27,9 +30,6 @@
>   */
>  #define MAP_DEFAULT	MAP_ARCH_DEFAULT
>  
> -#include <asm/mmu.h>
> -#include <asm/io.h>

Why is this moved around?

> -
>  static inline bool maptype_is_compatible(maptype_t active, maptype_t check)
>  {
>  	active &= MAP_TYPE_MASK;
> @@ -47,7 +47,7 @@ static inline bool maptype_is_compatible(maptype_t active, maptype_t check)
>  static inline int arch_remap_range(void *virt_addr, phys_addr_t phys_addr,
>  				   size_t size, maptype_t map_type)
>  {
> -	if (maptype_is_compatible(map_type, MAP_ARCH_DEFAULT) &&
> +	if (maptype_is_compatible(map_type, MAP_DEFAULT) &&

Unneeded change?

>  	    phys_addr == virt_to_phys(virt_addr))
>  		return 0;
>  


Cheers,
Ahmad

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



