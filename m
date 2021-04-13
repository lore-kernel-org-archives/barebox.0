Delivery-date: Tue, 13 Apr 2021 09:34:11 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWDYp-00073T-2z
	for lore@lore.pengutronix.de; Tue, 13 Apr 2021 09:34:11 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWDYn-0001vv-TK
	for lore@pengutronix.de; Tue, 13 Apr 2021 09:34:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xJZrOdKLySe7r14zDHA2scojwDroqGBerW5/BoJsb/I=; b=mOITFURTpnlQ7oW4Y6IVLSO+F
	iT4hn7u//fw31osNEB150zh5xoOtt43EGZlKjalvef7ab0hs5zLkwpZm2irFT+TMv6vD5i3jYdYsj
	Kmb03bmqoGiYrpDMKSG6e4mJTXYj/Z8my5Cbkll5BKMAEdjN3spXGK99QQJbuwwpNUBbTw7dDpYQt
	mkQXwdE9k6TrRGXMfuq7AcngUcThY9NHWYcpIJqyJP0iaJBx4uO2waTheBlUwevY5skayY9y2cW5d
	yoE1l1WgLNCFq6aUAhB+hb8CWASS/QQU8iSuWMO8rGRB1qH+oVX11RySX/d/iOxn/Su342/0ecu5H
	rSPUbI5Fw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWDW0-008VrI-Vi; Tue, 13 Apr 2021 07:31:17 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWDVr-008Vps-Q1
 for barebox@desiato.infradead.org; Tue, 13 Apr 2021 07:31:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=From:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=8+Q4pXvKz2O2JVJdaZ2KNVBD5JK+LdXB2XeC9TU35so=; b=QM/7Eloo36rVLnO2+W17Ov6qG6
 v1xRn4F8IvC3FP1t0ofo6pjt8G5RLa84nzFlHUjzeTL5ZHo/az3enNjz2+p5WxYQ1u11UzD82Oj+n
 lrfoCLh3xwnZX0F4CJIsYA5I5JXokuK6ZsWJODKmL1OvI6hhCTzdxms7hCinEfYJUEGC4+WOaZffe
 NCVB5f2mnYC++OTG+G+tAA0axAfhZ+EeCU+r1EzccVFadlot1g0AO4g2MYLq+BsYZEPMg+ynLWvAv
 V1Pk4DWaz5fdM7vUkAn64Pf/u1h8TMpH/LIYbovcOrkkX5Ui7KFkfRxyidGufGZqH8FMDv0GtyXJh
 9WH1/xhg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWDVo-006nng-JA
 for barebox@lists.infradead.org; Tue, 13 Apr 2021 07:31:06 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lWDVn-0001jK-1c; Tue, 13 Apr 2021 09:31:03 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lWDVm-00043t-5i; Tue, 13 Apr 2021 09:31:02 +0200
Date: Tue, 13 Apr 2021 09:31:02 +0200
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
Message-ID: <20210413073102.GH19819@pengutronix.de>
References: <20210410110355.2105448-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210410110355.2105448-1-ahmad@a3f.at>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:30:47 up 54 days, 10:54, 86 users,  load average: 0.29, 0.19, 0.18
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210413_003104_825631_3C32DAC7 
X-CRM114-Status: GOOD (  37.11  )
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
X-Spam-Status: No, score=-2.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] resource: enable use of iomem command on EFI systems
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Sat, Apr 10, 2021 at 01:03:55PM +0200, Ahmad Fatoum wrote:
> iomem was so far unimplemented for EFI, because barebox didn't know what
> to put there as the UEFI implementation does the heavy lifting.
> 
> Add an initcall that uses the EFI get_memory_map entry point to
> remedy this.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  arch/x86/mach-efi/elf_x86_64_efi.lds.S |   3 +
>  common/efi/Makefile                    |   1 +
>  common/efi/efi-iomem.c                 | 175 +++++++++++++++++++++++++
>  common/memory.c                        |   2 +-
>  include/efi.h                          |   9 ++
>  5 files changed, 189 insertions(+), 1 deletion(-)
>  create mode 100644 common/efi/efi-iomem.c

Applied, thanks

Sascha

> 
> diff --git a/arch/x86/mach-efi/elf_x86_64_efi.lds.S b/arch/x86/mach-efi/elf_x86_64_efi.lds.S
> index ed79118a3615..ab4a9e815c00 100644
> --- a/arch/x86/mach-efi/elf_x86_64_efi.lds.S
> +++ b/arch/x86/mach-efi/elf_x86_64_efi.lds.S
> @@ -42,6 +42,7 @@ SECTIONS
>  		*(.got.plt)
>  		*(.got)
>  		*(.data*)
> +		__bss_start = .;
>  		*(.sdata)
>  		/* the EFI loader doesn't seem to like a .bss section, so we stick
>  		 * it all into .data: */
> @@ -51,7 +52,9 @@ SECTIONS
>  		*(.bss)
>  		*(COMMON)
>  		*(.rel.local)
> +		__bss_stop = .;
>  	}
> +	_edata = .;
>  
>  	. = ALIGN(4096);
>  	.dynamic : { *(.dynamic) }
> diff --git a/common/efi/Makefile b/common/efi/Makefile
> index ef19969f93d5..d746fabe2109 100644
> --- a/common/efi/Makefile
> +++ b/common/efi/Makefile
> @@ -1,3 +1,4 @@
>  obj-y += efi.o
>  obj-y += efi-image.o
>  bbenv-y += env-efi
> +obj-$(CONFIG_CMD_IOMEM) += efi-iomem.o
> diff --git a/common/efi/efi-iomem.c b/common/efi/efi-iomem.c
> new file mode 100644
> index 000000000000..e223c595c478
> --- /dev/null
> +++ b/common/efi/efi-iomem.c
> @@ -0,0 +1,175 @@
> +// SPDX-License-Identifier: GPL-2.0
> +// Copyright (c) 2019 Ahmad Fatoum, Pengutronix
> +
> +#define pr_fmt(fmt) "efi-iomem: " fmt
> +
> +#include <common.h>
> +#include <init.h>
> +#include <efi.h>
> +#include <efi/efi.h>
> +#include <memory.h>
> +#include <linux/sizes.h>
> +
> +static int efi_parse_mmap(struct efi_memory_desc *desc)
> +{
> +	struct resource *res;
> +	u32 flags;
> +	const char *name;
> +	char *fullname;
> +	resource_size_t va_base, va_size;
> +	int ret = 0;
> +
> +	va_size = desc->npages * SZ_4K;
> +	if (!va_size)
> +		return 0;
> +
> +	/* XXX At least OVMF doesn't populate ->virt_start and leaves it at zero
> +	 * for all mapping. Thus assume a 1:1 mapping and ignore virt_start
> +	 */
> +	va_base = desc->phys_start;
> +
> +	switch (desc->type) {
> +	case EFI_RESERVED_TYPE:
> +		if (!IS_ENABLED(DEBUG))
> +			return 0;
> +		name = "reserved";
> +		flags = IORESOURCE_MEM | IORESOURCE_DISABLED;
> +		break;
> +	case EFI_LOADER_CODE:
> +		return barebox_add_memory_bank("loader code", va_base, va_size);
> +	case EFI_LOADER_DATA:
> +		return barebox_add_memory_bank("loader data", va_base, va_size);
> +	case EFI_BOOT_SERVICES_CODE:
> +		if (!IS_ENABLED(DEBUG))
> +			return 0;
> +		name = "boot services code";
> +		flags = IORESOURCE_MEM | IORESOURCE_READONLY;
> +		break;
> +	case EFI_BOOT_SERVICES_DATA:
> +		if (!IS_ENABLED(DEBUG))
> +			return 0;
> +		name = "boot services data";
> +		flags = IORESOURCE_MEM;
> +		break;
> +	case EFI_RUNTIME_SERVICES_CODE:
> +		if (!IS_ENABLED(DEBUG))
> +			return 0;
> +		name = "runtime services code";
> +		flags = IORESOURCE_MEM | IORESOURCE_READONLY;
> +		break;
> +	case EFI_RUNTIME_SERVICES_DATA:
> +		if (!IS_ENABLED(DEBUG))
> +			return 0;
> +		name = "runtime services data";
> +		flags = IORESOURCE_MEM;
> +		break;
> +	case EFI_CONVENTIONAL_MEMORY:
> +		if (!IS_ENABLED(DEBUG))
> +			return 0;
> +		name = "conventional memory";
> +		flags = IORESOURCE_MEM | IORESOURCE_PREFETCH | IORESOURCE_CACHEABLE;
> +		break;
> +	case EFI_UNUSABLE_MEMORY:
> +		if (!IS_ENABLED(DEBUG))
> +			return 0;
> +		name = "unusable";
> +		flags = IORESOURCE_MEM | IORESOURCE_DISABLED;
> +		break;
> +	case EFI_ACPI_RECLAIM_MEMORY:
> +		if (!IS_ENABLED(DEBUG))
> +			return 0;
> +		name = "ACPI reclaim memory";
> +		flags = IORESOURCE_MEM | IORESOURCE_READONLY;
> +		break;
> +	case EFI_ACPI_MEMORY_NVS:
> +		if (!IS_ENABLED(DEBUG))
> +			return 0;
> +		name = "ACPI NVS memory";
> +		flags = IORESOURCE_MEM | IORESOURCE_READONLY;
> +		break;
> +	case EFI_MEMORY_MAPPED_IO:
> +		if (!IS_ENABLED(DEBUG))
> +			return 0;
> +		name = "MMIO";
> +		flags = IORESOURCE_MEM;
> +		break;
> +	case EFI_MEMORY_MAPPED_IO_PORT_SPACE:
> +		if (!IS_ENABLED(DEBUG))
> +			return 0;
> +		name = "MMIOPORT";
> +		flags = IORESOURCE_IO;
> +		break;
> +	case EFI_PAL_CODE:
> +		if (!IS_ENABLED(DEBUG))
> +			return 0;
> +		name = "PAL code";
> +		flags = IORESOURCE_MEM | IORESOURCE_ROM_BIOS_COPY;
> +		break;
> +	default:
> +		if (!(desc->type & (1U << 31))) {
> +			pr_warn("illegal memory type = %u >= %u\n",
> +				desc->type, EFI_MAX_MEMORY_TYPE);
> +			return -EINVAL;
> +		}
> +
> +		if (!IS_ENABLED(DEBUG))
> +			return 0;
> +
> +		name = "vendor reserved";
> +		flags = IORESOURCE_MEM | IORESOURCE_ROM_BIOS_COPY;
> +	}
> +
> +	fullname = xasprintf("%s@%llx", name, desc->phys_start);
> +
> +	pr_debug("%s: (0x%llx+0x%llx)\n", fullname, va_base, va_size);
> +
> +	res = request_iomem_region(fullname, va_base, va_base + va_size - 1);
> +	if (IS_ERR(res)) {
> +		ret = PTR_ERR(res);
> +		goto out;
> +	}
> +
> +	res->flags |= flags;
> +
> +out:
> +	free(fullname);
> +	return ret;
> +}
> +
> +static int efi_barebox_populate_mmap(void)
> +{
> +	void *desc;
> +	u8 *mmap_buf = NULL;
> +	efi_status_t efiret;
> +	size_t mmap_size;
> +	size_t mapkey;
> +	size_t descsz;
> +	u32 descver;
> +	int ret = 0;
> +
> +	mmap_size = sizeof(struct efi_memory_desc);
> +
> +	do {
> +		mmap_buf = xrealloc(mmap_buf, mmap_size);
> +		efiret = BS->get_memory_map(&mmap_size, mmap_buf,
> +					    &mapkey, &descsz, &descver);
> +	} while (efiret == EFI_BUFFER_TOO_SMALL);
> +
> +	if (EFI_ERROR(efiret)) {
> +		ret = -efi_errno(efiret);
> +		goto out;
> +	}
> +
> +	if (descver != 1) {
> +		ret = -ENOSYS;
> +		goto out;
> +	}
> +
> +	for (desc = mmap_buf; (u8 *)desc < &mmap_buf[mmap_size]; desc += descsz)
> +		efi_parse_mmap(desc);
> +
> +out:
> +	free(mmap_buf);
> +	return ret;
> +}
> +mem_initcall(efi_barebox_populate_mmap);
> diff --git a/common/memory.c b/common/memory.c
> index a56eaf949411..392522bfc3db 100644
> --- a/common/memory.c
> +++ b/common/memory.c
> @@ -53,7 +53,7 @@ void mem_malloc_init(void *start, void *end)
>  	mem_malloc_initialized = 1;
>  }
>  
> -#if !defined __SANDBOX__ && !defined CONFIG_EFI_BOOTUP
> +#if !defined __SANDBOX__
>  static int mem_malloc_resource(void)
>  {
>  	/*
> diff --git a/include/efi.h b/include/efi.h
> index b9f3428dc550..439803c29437 100644
> --- a/include/efi.h
> +++ b/include/efi.h
> @@ -91,6 +91,15 @@ typedef	struct {
>   * Memory map descriptor:
>   */
>  
> +struct efi_memory_desc {
> +    u32 type; /* enum efi_memory_type */
> +    u32 _padding;
> +    efi_physical_addr_t phys_start;
> +    void *virt_start;
> +    u64 npages;
> +    u64 attrs;
> +};
> +
>  /* Memory types: */
>  enum efi_memory_type {
>  	EFI_RESERVED_TYPE,
> -- 
> 2.30.0
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
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

