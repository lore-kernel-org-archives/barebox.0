Delivery-date: Mon, 15 Mar 2021 08:46:08 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lLhvT-0000Vb-Ub
	for lore@lore.pengutronix.de; Mon, 15 Mar 2021 08:46:08 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lLhvN-0004pH-Nn
	for lore@pengutronix.de; Mon, 15 Mar 2021 08:46:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=a3Zm9kjvBTCceEhlSQtuHibri3DPeWSqHUg2YwW/7Pw=; b=L9siVpVljILk1yPK6hbuJJMsk
	xnjXs2lW5aWG531x2G9vyzQfIUzi7BihKMzsK3ECCpWONEvhUPxoUbKH+IqJfzaRAaym3AEux1kyE
	ut6aX+29wXh9n0KRLimcJabJ0YeJXyihmpXSRtL1jFr7RqtJrlJKE79CLMJi54NePeibothhO8IEO
	PpPavu/7C1txFvwVFfxcbJ096jOv+dsOUgIe4QhdeBp/JyLf5G84oV1n7Jylq60CBlZBukTyi1X2+
	C+alOLX9MRrs9+Bt4naZZJ4t3SZcG3YWti9i0t7OksnUIvRbwmi4zReAf7hF2XIOZtM64FTKFcazp
	2rEOYCDEQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lLhtj-00F9tP-3L; Mon, 15 Mar 2021 07:44:19 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lLhtQ-00F9s2-W7
 for barebox@lists.infradead.org; Mon, 15 Mar 2021 07:44:05 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lLhtL-0004YC-59; Mon, 15 Mar 2021 08:43:55 +0100
To: barebox@lists.infradead.org
References: <20210314122804.4128-1-a.fatoum@pengutronix.de>
 <20210314122804.4128-14-a.fatoum@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <2464ea38-85f8-7136-7c29-0d519caa5db6@pengutronix.de>
Date: Mon, 15 Mar 2021 08:43:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210314122804.4128-14-a.fatoum@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210315_074401_696551_B8B207BC 
X-CRM114-Status: GOOD (  42.98  )
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
Cc: Masahiro Yamada <masahiroy@kernel.org>, rcz@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 13/20] RISC-V: implement PBL and relocation support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 14.03.21 13:27, Ahmad Fatoum wrote:
> Given that we only support a single RISC-V board, this puts us in
> a good position to make this a multi-image-only architecture.
> 
> This commit adds the necessary bits. It's highly inspired by the ARM PBL
> support. Notable difference is that for relocations to be generated, it
> was necessary to compile with -fpic. The relocation code assumes the
> relocation entries to preprocessed. This is done at build-time by
> means of the prelink-riscv script imported from U-Boot.
> 
> Actual migration to -fpic and prelinking is done along with porting
> erizo in a follow-up commit.
> 
> Cc: Masahiro Yamada <masahiroy@kernel.org>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> 
> ---
> Hello Masahiro,
> 
> Do you know if Kernel Kbuild has a similiar prelink stage somewhere,
> i.e. an optional architecture-specific rule that processes the ELF file
> before continuing normally? I'd like for arch/risc/Makefile to define
> PRELINK as a command that takes the ELF as an argument and for the
> Makefiles to have no knowledge about PRELINK's content or architecture,
> but I don't know how to best go about this.
> 
> Thanks
> ---
>  arch/riscv/Makefile                    |   1 +
>  arch/riscv/boot/Makefile               |   3 +
>  arch/riscv/boot/entry.c                |  33 +++++
>  arch/riscv/boot/entry.h                |  15 ++
>  arch/riscv/boot/entry_ll.S             |  15 ++
>  arch/riscv/boot/start.c                | 197 +++++++++++++++++++++++++
>  arch/riscv/boot/uncompress.c           |  74 ++++++++++
>  arch/riscv/include/asm/barebox-riscv.h | 101 +++++++++++++
>  arch/riscv/include/asm/common.h        |  10 +-
>  arch/riscv/include/asm/elf.h           |   7 +
>  arch/riscv/include/asm/linkage.h       |   4 +
>  arch/riscv/include/asm/sections.h      |  15 ++
>  arch/riscv/lib/Makefile                |   3 +
>  arch/riscv/lib/barebox.lds.S           |  14 +-
>  arch/riscv/lib/pbl.lds.S               |  83 +++++++++++
>  arch/riscv/lib/reloc.c                 |  64 ++++++++
>  arch/riscv/lib/runtime-offset.S        |  12 ++
>  arch/riscv/lib/sections.c              |   9 ++
>  arch/riscv/lib/setupc.S                |  55 +++++++
>  scripts/.gitignore                     |   1 +
>  scripts/Makefile                       |   1 +
>  scripts/Makefile.lib                   |  11 ++
>  scripts/prelink-riscv.c                | 122 +++++++++++++++
>  scripts/prelink-riscv.inc              | 123 +++++++++++++++
>  24 files changed, 969 insertions(+), 4 deletions(-)
>  create mode 100644 arch/riscv/boot/Makefile
>  create mode 100644 arch/riscv/boot/entry.c
>  create mode 100644 arch/riscv/boot/entry.h
>  create mode 100644 arch/riscv/boot/entry_ll.S
>  create mode 100644 arch/riscv/boot/start.c
>  create mode 100644 arch/riscv/boot/uncompress.c
>  create mode 100644 arch/riscv/include/asm/barebox-riscv.h
>  create mode 100644 arch/riscv/lib/pbl.lds.S
>  create mode 100644 arch/riscv/lib/reloc.c
>  create mode 100644 arch/riscv/lib/runtime-offset.S
>  create mode 100644 arch/riscv/lib/sections.c
>  create mode 100644 arch/riscv/lib/setupc.S
>  create mode 100644 scripts/prelink-riscv.c
>  create mode 100644 scripts/prelink-riscv.inc
> 
> diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
> index d9cefe32c057..df2b5bb681a4 100644
> --- a/arch/riscv/Makefile
> +++ b/arch/riscv/Makefile
> @@ -43,6 +43,7 @@ endif
>  common-y += $(MACH)
>  common-y += arch/riscv/boards/
>  common-y += arch/riscv/lib/
> +common-y += arch/riscv/boot/
>  
>  common-$(CONFIG_OFTREE) += arch/riscv/dts/
>  
> diff --git a/arch/riscv/boot/Makefile b/arch/riscv/boot/Makefile
> new file mode 100644
> index 000000000000..954e9b602287
> --- /dev/null
> +++ b/arch/riscv/boot/Makefile
> @@ -0,0 +1,3 @@
> +# SPDX-License-Identifier: GPL-2.0
> +obj-y += start.o
> +obj-pbl-y += entry.o entry_ll.o uncompress.o
> diff --git a/arch/riscv/boot/entry.c b/arch/riscv/boot/entry.c
> new file mode 100644
> index 000000000000..ec506acfa3b2
> --- /dev/null
> +++ b/arch/riscv/boot/entry.c
> @@ -0,0 +1,33 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +#include <types.h>
> +
> +#include <asm/barebox-riscv.h>
> +
> +#include "entry.h"
> +#include <debug_ll.h>
> +
> +/*
> + * Main RISC-V entry point. Call this with the memory region you can
> + * spare for barebox. This doesn't necessarily have to be the full
> + * SDRAM. The currently running binary can be inside or outside of
> + * this region. The PBL can be running inside or outside of this
> + * region.
> + *
> + * -> membase + memsize
> + *   STACK_SIZE              - stack
> + *   128KiB                  - early memory space
> + * -> maximum end of barebox binary
> + */
> +
> +void __noreturn __barebox_riscv_entry(unsigned long membase,
> +				      unsigned long memsize,
> +				      void *boarddata,
> +				      unsigned long sp);
> +
> +void __noreturn barebox_riscv_entry(unsigned long membase,
> +				    unsigned long memsize, void *boarddata)
> +{
> +	__barebox_riscv_entry(membase, memsize, boarddata,
> +			      riscv_mem_stack_top(membase, membase + memsize));
> +}
> +
> diff --git a/arch/riscv/boot/entry.h b/arch/riscv/boot/entry.h
> new file mode 100644
> index 000000000000..b3a24d2783f7
> --- /dev/null
> +++ b/arch/riscv/boot/entry.h
> @@ -0,0 +1,15 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +#ifndef __ENTRY_H__
> +#define __ENTRY_H__
> +
> +#include <common.h>
> +
> +void __noreturn barebox_non_pbl_start(unsigned long membase,
> +				      unsigned long memsize,
> +				      void *boarddata);
> +
> +void __noreturn barebox_pbl_start(unsigned long membase,
> +				  unsigned long memsize,
> +				  void *boarddata);
> +
> +#endif
> diff --git a/arch/riscv/boot/entry_ll.S b/arch/riscv/boot/entry_ll.S
> new file mode 100644
> index 000000000000..7011fefad865
> --- /dev/null
> +++ b/arch/riscv/boot/entry_ll.S
> @@ -0,0 +1,15 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +#include <linux/linkage.h>
> +#include <asm/sections.h>
> +
> +/*
> + * a0: memory base
> + * a1: memory size
> + * a2: board data
> + * a3: new value for SP
> + */
> +.section .text.__barebox_riscv_entry
> +ENTRY(__barebox_riscv_entry)
> +	move	sp, a3
> +	j	barebox_pbl_start
> +ENDPROC(__barebox_riscv_entry)
> diff --git a/arch/riscv/boot/start.c b/arch/riscv/boot/start.c
> new file mode 100644
> index 000000000000..7fcbafcc0758
> --- /dev/null
> +++ b/arch/riscv/boot/start.c
> @@ -0,0 +1,197 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +// SPDX-FileCopyrightText: 2010 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
> +
> +#define pr_fmt(fmt) "start.c: " fmt
> +
> +#include <common.h>
> +#include <init.h>
> +#include <linux/sizes.h>
> +#include <of.h>
> +#include <asm/barebox-riscv.h>
> +#include <asm-generic/memory_layout.h>
> +#include <asm/sections.h>
> +#include <asm/unaligned.h>
> +#include <linux/kasan.h>
> +#include <memory.h>
> +#include <uncompress.h>
> +#include <malloc.h>
> +
> +#include <debug_ll.h>
> +
> +#include "entry.h"
> +
> +unsigned long riscv_stack_top;
> +static unsigned long riscv_barebox_size;
> +static unsigned long riscv_endmem;
> +static void *barebox_boarddata;
> +static unsigned long barebox_boarddata_size;
> +
> +static bool blob_is_fdt(const void *blob)
> +{
> +	return get_unaligned_be32(blob) == FDT_MAGIC;
> +}
> +
> +static bool blob_is_compressed_fdt(const void *blob)
> +{
> +	const struct barebox_riscv_boarddata_compressed_dtb *dtb = blob;
> +
> +	return dtb->magic == BAREBOX_RISCV_BOARDDATA_COMPRESSED_DTB_MAGIC;
> +}
> +
> +void *barebox_riscv_boot_dtb(void)
> +{
> +	void *dtb;
> +	void *data;
> +	int ret;
> +	struct barebox_riscv_boarddata_compressed_dtb *compressed_dtb;
> +	static void *boot_dtb;
> +
> +	if (boot_dtb)
> +		return boot_dtb;
> +
> +	if (barebox_boarddata && blob_is_fdt(barebox_boarddata)) {
> +		pr_debug("%s: using barebox_boarddata\n", __func__);
> +		return barebox_boarddata;
> +	}
> +
> +	if (!IS_ENABLED(CONFIG_USE_COMPRESSED_DTB) || !barebox_boarddata
> +	    || !blob_is_compressed_fdt(barebox_boarddata))
> +		return NULL;
> +
> +	compressed_dtb = barebox_boarddata;
> +
> +	pr_debug("%s: using compressed_dtb\n", __func__);
> +
> +	dtb = malloc(compressed_dtb->datalen_uncompressed);
> +	if (!dtb)
> +		return NULL;
> +
> +	data = compressed_dtb + 1;
> +
> +	ret = uncompress(data, compressed_dtb->datalen, NULL, NULL, dtb, NULL, NULL);
> +	if (ret) {
> +		pr_err("uncompressing dtb failed\n");
> +		free(dtb);
> +		return NULL;
> +	}
> +
> +	boot_dtb = dtb;
> +
> +	return boot_dtb;
> +}
> +
> +static inline unsigned long riscv_mem_boarddata(unsigned long membase,
> +						unsigned long endmem,
> +						unsigned long size)
> +{
> +	unsigned long mem;
> +
> +	mem = riscv_mem_barebox_image(membase, endmem, riscv_barebox_size);
> +	mem -= ALIGN(size, 64);
> +
> +	return mem;
> +}
> +
> +unsigned long riscv_mem_ramoops_get(void)
> +{
> +	return riscv_mem_ramoops(0, riscv_stack_top);
> +}
> +EXPORT_SYMBOL_GPL(riscv_mem_ramoops_get);
> +
> +unsigned long riscv_mem_endmem_get(void)
> +{
> +	return riscv_endmem;
> +}
> +EXPORT_SYMBOL_GPL(riscv_mem_endmem_get);
> +
> +static int barebox_memory_areas_init(void)
> +{
> +	if(barebox_boarddata)
> +		request_sdram_region("board data", (unsigned long)barebox_boarddata,
> +				     barebox_boarddata_size);
> +
> +	return 0;
> +}
> +device_initcall(barebox_memory_areas_init);
> +
> +/*
> + * First function in the uncompressed image. We get here from
> + * the pbl. The stack already has been set up by the pbl.
> + */
> +__noreturn __no_sanitize_address __section(.text_entry)
> +void barebox_non_pbl_start(unsigned long membase, unsigned long memsize, void *boarddata)
> +{
> +	unsigned long endmem = membase + memsize;
> +	unsigned long malloc_start, malloc_end;
> +	unsigned long barebox_size = barebox_image_size + MAX_BSS_SIZE;
> +	unsigned long barebox_base = riscv_mem_barebox_image(membase, endmem, barebox_size);
> +
> +	relocate_to_current_adr();
> +
> +	setup_c();
> +
> +	barrier();
> +
> +	pr_debug("memory at 0x%08lx, size 0x%08lx\n", membase, memsize);
> +
> +	riscv_endmem = endmem;
> +	riscv_stack_top = riscv_mem_stack_top(membase, endmem);
> +	riscv_barebox_size = barebox_size;
> +	malloc_end = barebox_base;
> +
> +	if (boarddata) {
> +		uint32_t totalsize = 0;
> +		const char *name;
> +
> +		if (blob_is_fdt(boarddata)) {
> +			totalsize = get_unaligned_be32(boarddata + 4);
> +			name = "DTB";
> +		} else if (blob_is_compressed_fdt(boarddata)) {
> +			struct barebox_riscv_boarddata_compressed_dtb *bd = boarddata;
> +			totalsize = bd->datalen + sizeof(*bd);
> +			name = "Compressed DTB";
> +		}
> +
> +		if (totalsize) {
> +			unsigned long mem = riscv_mem_boarddata(membase, endmem, totalsize);
> +			pr_debug("found %s in boarddata, copying to 0x%08lx\n", name, mem);
> +			barebox_boarddata = memcpy((void *)mem, boarddata, totalsize);
> +			barebox_boarddata_size = totalsize;
> +			malloc_end = mem;
> +		}
> +	}
> +
> +	/*
> +	 * Maximum malloc space is the Kconfig value if given
> +	 * or 1GB.
> +	 */
> +	if (MALLOC_SIZE > 0) {
> +		malloc_start = malloc_end - MALLOC_SIZE;
> +		if (malloc_start < membase)
> +			malloc_start = membase;
> +	} else {
> +		malloc_start = malloc_end - (malloc_end - membase) / 2;
> +		if (malloc_end - malloc_start > SZ_1G)
> +			malloc_start = malloc_end - SZ_1G;
> +	}
> +
> +	pr_debug("initializing malloc pool at 0x%08lx (size 0x%08lx)\n",
> +			malloc_start, malloc_end - malloc_start);
> +
> +	mem_malloc_init((void *)malloc_start, (void *)malloc_end - 1);
> +
> +	pr_debug("starting barebox...\n");
> +
> +	start_barebox();
> +}
> +
> +void start(unsigned long membase, unsigned long memsize, void *boarddata);
> +/*
> + * First function in the uncompressed image. We get here from
> + * the pbl. The stack already has been set up by the pbl.
> + */
> +void __no_sanitize_address __section(.text_entry) start(unsigned long membase,
> +		unsigned long memsize, void *boarddata)
> +{
> +	barebox_non_pbl_start(membase, memsize, boarddata);
> +}
> diff --git a/arch/riscv/boot/uncompress.c b/arch/riscv/boot/uncompress.c
> new file mode 100644
> index 000000000000..cf268bece1bf
> --- /dev/null
> +++ b/arch/riscv/boot/uncompress.c
> @@ -0,0 +1,74 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +// SPDX-FileCopyrightText: 2010-2013 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
> +// SPDX-FileCopyrightText: 2012 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> +
> +/* uncompress.c - uncompressor code for self extracing pbl image */
> +
> +#define pr_fmt(fmt) "uncompress.c: " fmt
> +
> +#include <common.h>
> +#include <init.h>
> +#include <linux/sizes.h>
> +#include <pbl.h>
> +#include <asm/barebox-riscv.h>
> +#include <asm-generic/memory_layout.h>
> +#include <asm/sections.h>
> +#include <asm/unaligned.h>
> +
> +#include <debug_ll.h>
> +
> +#include "entry.h"
> +
> +unsigned long free_mem_ptr;
> +unsigned long free_mem_end_ptr;
> +
> +extern unsigned char input_data[];
> +extern unsigned char input_data_end[];
> +
> +void __noreturn barebox_pbl_start(unsigned long membase, unsigned long memsize,
> +				  void *fdt)
> +{
> +	uint32_t pg_len, uncompressed_len;
> +	void __noreturn (*barebox)(unsigned long, unsigned long, void *);
> +	unsigned long endmem = membase + memsize;
> +	unsigned long barebox_base;
> +	void *pg_start, *pg_end;
> +	unsigned long pc = get_pc();
> +
> +	pg_start = input_data + get_runtime_offset();
> +	pg_end = input_data_end + get_runtime_offset();
> +
> +	/*
> +	 * If we run from inside the memory just relocate the binary
> +	 * to the current address. Otherwise it may be a readonly location.
> +	 * Copy and relocate to the start of the memory in this case.
> +	 */
> +	if (pc > membase && pc - membase < memsize)
> +		relocate_to_current_adr();
> +	else
> +		relocate_to_adr(membase);
> +
> +	pg_len = pg_end - pg_start;
> +	uncompressed_len = get_unaligned((const u32 *)(pg_start + pg_len - 4));
> +
> +	barebox_base = riscv_mem_barebox_image(membase, endmem,
> +					       uncompressed_len + MAX_BSS_SIZE);
> +
> +	setup_c();
> +
> +	pr_debug("memory at 0x%08lx, size 0x%08lx\n", membase, memsize);
> +
> +	free_mem_ptr = riscv_mem_early_malloc(membase, endmem);
> +	free_mem_end_ptr = riscv_mem_early_malloc_end(membase, endmem);
> +
> +	pr_debug("uncompressing barebox binary at 0x%p (size 0x%08x) to 0x%08lx (uncompressed size: 0x%08x)\n",
> +			pg_start, pg_len, barebox_base, uncompressed_len);
> +
> +	pbl_barebox_uncompress((void*)barebox_base, pg_start, pg_len);
> +
> +	barebox = (void *)barebox_base;
> +
> +	pr_debug("jumping to uncompressed image at 0x%p. dtb=0x%p\n", barebox, fdt);
> +
> +	barebox(membase, memsize, fdt);
> +}
> diff --git a/arch/riscv/include/asm/barebox-riscv.h b/arch/riscv/include/asm/barebox-riscv.h
> new file mode 100644
> index 000000000000..05e076c4868b
> --- /dev/null
> +++ b/arch/riscv/include/asm/barebox-riscv.h
> @@ -0,0 +1,101 @@
> +/* SPDX-License-Identifier: GPL-2.0-or-later */
> +/*
> + * (C) Copyright 2002
> + * Sysgo Real-Time Solutions, GmbH <www.elinos.com>
> + * Marius Groeger <mgroeger@sysgo.de>
> + *
> + * (C) Copyright 2002
> + * Sysgo Real-Time Solutions, GmbH <www.elinos.com>
> + * Alex Zuepke <azu@sysgo.de>
> + */
> +
> +#ifndef _BAREBOX_RISCV_H_
> +#define _BAREBOX_RISCV_H_
> +
> +#include <linux/sizes.h>
> +#include <asm-generic/memory_layout.h>
> +#include <linux/kernel.h>
> +#include <linux/types.h>
> +#include <linux/compiler.h>
> +#include <asm/sections.h>
> +
> +unsigned long get_runtime_offset(void);
> +
> +void setup_c(void);
> +void relocate_to_current_adr(void);
> +void relocate_to_adr(unsigned long target);
> +void __noreturn barebox_riscv_entry(unsigned long membase, unsigned long memsize, void *boarddata);
> +
> +unsigned long riscv_mem_ramoops_get(void);
> +unsigned long riscv_mem_endmem_get(void);
> +
> +struct barebox_riscv_boarddata_compressed_dtb {
> +#define BAREBOX_RISCV_BOARDDATA_COMPRESSED_DTB_MAGIC 0x7b66bcbd
> +	u32 magic;
> +	u32 datalen;
> +	u32 datalen_uncompressed;
> +};
> +
> +void *barebox_riscv_boot_dtb(void);
> +
> +static inline unsigned long riscv_mem_stack_top(unsigned long membase,
> +						unsigned long endmem)
> +{
> +	return endmem - SZ_2M;
> +}
> +
> +static inline unsigned long riscv_mem_stack(unsigned long membase,
> +					  unsigned long endmem)
> +{
> +	return riscv_mem_stack_top(membase, endmem) - STACK_SIZE;
> +}
> +
> +static inline unsigned long riscv_mem_early_malloc(unsigned long membase,
> +						   unsigned long endmem)
> +{
> +	return riscv_mem_stack(membase, endmem) - SZ_128K;
> +}
> +
> +static inline unsigned long riscv_mem_early_malloc_end(unsigned long membase,
> +						       unsigned long endmem)
> +{
> +	return riscv_mem_stack(membase, endmem);
> +}
> +
> +static inline unsigned long riscv_mem_ramoops(unsigned long membase,
> +					      unsigned long endmem)
> +{
> +	endmem = riscv_mem_stack(membase, endmem);
> +#ifdef CONFIG_FS_PSTORE_RAMOOPS
> +	endmem -= CONFIG_FS_PSTORE_RAMOOPS_SIZE;
> +	endmem = ALIGN_DOWN(endmem, SZ_4K);
> +#endif
> +
> +	return endmem;
> +}
> +
> +static inline unsigned long riscv_mem_barebox_image(unsigned long membase,
> +						    unsigned long endmem,
> +						    unsigned long size)
> +{
> +	endmem = riscv_mem_ramoops(membase, endmem);
> +
> +	return ALIGN_DOWN(endmem - size, SZ_1M);
> +}
> +
> +#define ENTRY_FUNCTION(name, arg0, arg1, arg2)		\
> +	void name (ulong a0, ulong a1, ulong a2);	\
> +	void __section(.text_head_entry_##name) name (ulong a0, ulong a1, ulong a2)
> +
> +/*
> + * When using compressed images in conjunction with relocatable images
> + * the PBL code must pick a suitable place where to uncompress the barebox
> + * image. For doing this the PBL code must know the size of the final
> + * image including the BSS segment. The BSS size is unknown to the PBL
> + * code, so define a maximum BSS size here.
> + */
> +#define MAX_BSS_SIZE SZ_1M
> +
> +#define barebox_image_size (__image_end - __image_start)
> +
> +#endif	/* _BAREBOX_RISCV_H_ */
> diff --git a/arch/riscv/include/asm/common.h b/arch/riscv/include/asm/common.h
> index bc8a17e30bc5..a0982c548fe1 100644
> --- a/arch/riscv/include/asm/common.h
> +++ b/arch/riscv/include/asm/common.h
> @@ -1,6 +1,14 @@
> +/* SPDX-License-Identifier: GPL-2.0-or-later */
> +/* SPDX-FileCopyrightText: Copyright (c) 2021 Ahmad Fatoum, Pengutronix */
>  #ifndef ASM_RISCV_COMMON_H
>  #define ASM_RISCV_COMMON_H
>  
> -/* nothing special yet */
> +#include <linux/compiler.h>
> +
> +static __always_inline unsigned long get_pc(void)
> +{
> +label:
> +	return (unsigned long)&&label;
> +}
>  
>  #endif /* ASM_RISCV_COMMON_H */
> diff --git a/arch/riscv/include/asm/elf.h b/arch/riscv/include/asm/elf.h
> index 7134fa05820a..adb8ec8f6ece 100644
> --- a/arch/riscv/include/asm/elf.h
> +++ b/arch/riscv/include/asm/elf.h
> @@ -1,3 +1,4 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
>  #ifndef __ASM_RISCV_ELF_H__
>  #define __ASM_RISCV_ELF_H__
>  
> @@ -8,4 +9,10 @@
>  #define ELF_CLASS	ELFCLASS32
>  #endif
>  
> +/* Relocation types used by the dynamic linker */
> +#define R_RISCV_NONE		0
> +#define R_RISCV_32		1
> +#define R_RISCV_64		2
> +#define R_RISCV_RELATIVE	3
> +
>  #endif /* __ASM_RISCV_ELF_H__ */
> diff --git a/arch/riscv/include/asm/linkage.h b/arch/riscv/include/asm/linkage.h
> index 9e88ba23cd2b..c6801294f388 100644
> --- a/arch/riscv/include/asm/linkage.h
> +++ b/arch/riscv/include/asm/linkage.h
> @@ -9,4 +9,8 @@
>  #define __ALIGN		.balign 4
>  #define __ALIGN_STR	".balign 4"
>  
> +#define ENDPROC(name) \
> +  .type name, %function; \
> +  END(name)
> +
>  #endif /* _ASM_RISCV_LINKAGE_H */
> diff --git a/arch/riscv/include/asm/sections.h b/arch/riscv/include/asm/sections.h
> index 2b8c5160388f..b5fbba8f165a 100644
> --- a/arch/riscv/include/asm/sections.h
> +++ b/arch/riscv/include/asm/sections.h
> @@ -1 +1,16 @@
> +/* SPDX-License-Identifier: GPL-2.0-or-later */
> +#ifndef __ASM_SECTIONS_H
> +#define __ASM_SECTIONS_H
> +
> +#ifndef __ASSEMBLY__
>  #include <asm-generic/sections.h>
> +#include <linux/types.h>
> +
> +extern char __rel_dyn_start[];
> +extern char __rel_dyn_end[];
> +extern char __dynsym_start[];
> +extern char __dynsym_end[];
> +
> +#endif
> +
> +#endif /* __ASM_SECTIONS_H */
> diff --git a/arch/riscv/lib/Makefile b/arch/riscv/lib/Makefile
> index b983ca8cdca0..5f57d9fcd2e2 100644
> --- a/arch/riscv/lib/Makefile
> +++ b/arch/riscv/lib/Makefile
> @@ -1,5 +1,8 @@
> +# SPDX-License-Identifier: GPL-2.0
> +
>  extra-y += barebox.lds
>  
>  obj-y += riscv_timer.o
> +obj-pbl-y += sections.o setupc.o reloc.o sections.o runtime-offset.o
>  obj-$(CONFIG_HAS_ARCH_SJLJ) += setjmp.o longjmp.o
>  obj-$(CONFIG_RISCV_OPTIMZED_STRING_FUNCTIONS) += memcpy.o memset.o memmove.o
> diff --git a/arch/riscv/lib/barebox.lds.S b/arch/riscv/lib/barebox.lds.S
> index 342769890bb0..c8a331c577cf 100644
> --- a/arch/riscv/lib/barebox.lds.S
> +++ b/arch/riscv/lib/barebox.lds.S
> @@ -43,10 +43,18 @@ SECTIONS
>  
>  	.barebox_imd : { BAREBOX_IMD }
>  
> -	. = ALIGN(8);
> -	.got : { *(.got*) }
> +	/DISCARD/ : { *(.rela.plt*) }
> +	.rela.dyn : {
> +		__rel_dyn_start = .;
> +		*(.rel*)
> +		__rel_dyn_end = .;
> +	}
>  
> -	.rela.dyn : { *(.rela*) }
> +	.dynsym : {
> +		__dynsym_start = .;
> +		*(.dynsym)
> +		__dynsym_end = .;
> +	}
>  
>  	_edata = .;
>  	. = ALIGN(8);
> diff --git a/arch/riscv/lib/pbl.lds.S b/arch/riscv/lib/pbl.lds.S
> new file mode 100644
> index 000000000000..33caab7b1024
> --- /dev/null
> +++ b/arch/riscv/lib/pbl.lds.S
> @@ -0,0 +1,83 @@
> +/* SPDX-License-Identifier: GPL-2.0-or-later */
> +/* SPDX-FileCopyrightText: 2012 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix */
> +
> +#include <linux/sizes.h>
> +#include <asm-generic/barebox.lds.h>
> +#include <asm-generic/memory_layout.h>
> +
> +OUTPUT_ARCH(riscv)
> +SECTIONS
> +{
> +	. = 0x0;
> +
> +	.image_start : { *(.__image_start) }
> +
> +	. = ALIGN(4);
> +	._text : { *(._text) }
> +	.text      :
> +	{
> +		_stext = .;
> +		*(.text_head_entry*)
> +		__bare_init_start = .;
> +		*(.text_bare_init*)
> +		__bare_init_end = .;
> +		*(.text*)
> +	}
> +
> +	/* Discard unwind if enable in barebox */
> +	/DISCARD/ : { *(.ARM.ex*) }
> +
> +	BAREBOX_BARE_INIT_SIZE
> +	BAREBOX_PBL_SIZE
> +
> +	. = ALIGN(4);
> +	.rodata : { *(.rodata*) }
> +
> +	.barebox_imd : { BAREBOX_IMD }
> +
> +	_etext = .;			/* End of text and rodata section */
> +
> +	.data : { *(.data*) }
> +
> +	__shasum_start = .;
> +	.shasum : {
> +		KEEP(*(.shasum))
> +	}
> +	__shasum_end = .;
> +
> +	/DISCARD/ : { *(.rela.plt*) }
> +	.rela.dyn : {
> +		__rel_dyn_start = .;
> +		*(.rela*)
> +		__rel_dyn_end = .;
> +	}
> +
> +	.dynsym : {
> +		__dynsym_start = .;
> +		*(.dynsym)
> +		__dynsym_end = .;
> +	}
> +
> +	pbl_code_size =  .;
> +
> +	.__bss_start :  { *(.__bss_start) }
> +	.bss : { *(.bss*) }
> +	.__bss_stop :  { *(.__bss_stop) }
> +	_end = .;
> +
> +	pbl_memory_size =  .;
> +
> +	. = ALIGN(4);
> +	__piggydata_start = .;
> +	.piggydata : {
> +		*(.piggydata)
> +	}
> +	__piggydata_end = .;
> +
> +	.image_end : { KEEP(*(.__image_end)) }
> +
> +	pbl_image_size =  .;
> +
> +	_barebox_image_size = __image_end;
> +	_barebox_pbl_size = __bss_start;
> +}
> diff --git a/arch/riscv/lib/reloc.c b/arch/riscv/lib/reloc.c
> new file mode 100644
> index 000000000000..5e26c0be9c1c
> --- /dev/null
> +++ b/arch/riscv/lib/reloc.c
> @@ -0,0 +1,64 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +// SPDX-FileCopyrightText: Copyright (c) 2021 Ahmad Fatoum, Pengutronix
> +
> +#include <common.h>
> +#include <linux/linkage.h>
> +#include <asm/sections.h>
> +#include <asm/barebox-riscv.h>
> +#include <debug_ll.h>
> +#include <asm-generic/module.h>
> +
> +#include <elf.h>
> +
> +#if __riscv_xlen == 64
> +#define Elf_Rela			Elf64_Rela
> +#define R_RISCV_ABSOLUTE		R_RISCV_64
> +#define DYNSYM_ENTRY(dynsym, rela)	dynsym[ELF_R_SYM(rela->r_info) * 3 + 1]
> +#elif __riscv_xlen == 32
> +#define Elf_Rela			Elf32_Rela
> +#define R_RISCV_ABSOLUTE		R_RISCV_32
> +#define DYNSYM_ENTRY(dynsym, rela)	dynsym[ELF_R_SYM(rela->r_info) * 4 + 1]
> +#else
> +#error unknown riscv target
> +#endif
> +
> +#define RISC_R_TYPE(x)	((x) & 0xFF)
> +
> +void relocate_to_current_adr(void)
> +{
> +	unsigned long offset;
> +	unsigned long *dynsym;
> +	void *dstart, *dend;
> +	Elf_Rela *rela;
> +
> +	/* Get offset between linked address and runtime address */
> +	offset = get_runtime_offset();
> +
> +	dstart = __rel_dyn_start + offset;
> +	dend = __rel_dyn_end + offset;
> +	dynsym = (void *)__dynsym_start + offset;
> +
> +	for (rela = dstart; (void *)rela < dend; rela++) {
> +		unsigned long *fixup;
> +
> +		fixup = (unsigned long *)(rela->r_offset + offset);
> +
> +		switch (RISC_R_TYPE(rela->r_info)) {
> +		case R_RISCV_RELATIVE:
> +			*fixup = rela->r_addend + offset;
> +			break;
> +		case R_RISCV_ABSOLUTE:
> +			*fixup = DYNSYM_ENTRY(dynsym, rela) + rela->r_addend + offset;
> +			break;
> +		default:
> +			putc_ll('>');
> +			puthex_ll(rela->r_info);
> +			putc_ll(' ');
> +			puthex_ll(rela->r_offset);
> +			putc_ll(' ');
> +			puthex_ll(rela->r_addend);
> +			putc_ll('\n');
> +			panic("");
> +		}
> +	}
> +}
> diff --git a/arch/riscv/lib/runtime-offset.S b/arch/riscv/lib/runtime-offset.S
> new file mode 100644
> index 000000000000..f6a040628963
> --- /dev/null
> +++ b/arch/riscv/lib/runtime-offset.S
> @@ -0,0 +1,12 @@
> +/* SPDX-License-Identifier: GPL-2.0-or-later */
> +/* SPDX-FileCopyrightText: Copyright (c) 2021 Ahmad Fatoum, Pengutronix */
> +#include <linux/linkage.h>
> +#include <asm/sections.h>
> +
> +.section ".text_bare_init","ax"
> +ENTRY(get_runtime_offset)
> +	lla	a0, _text	/* load addr */
> +	la	a1, _text	/* link addr */
> +	sub	a0, a0, a1
> +	ret
> +ENDPROC(get_runtime_offset)
> diff --git a/arch/riscv/lib/sections.c b/arch/riscv/lib/sections.c
> new file mode 100644
> index 000000000000..e23a41dcf5d4
> --- /dev/null
> +++ b/arch/riscv/lib/sections.c
> @@ -0,0 +1,9 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +#include <asm/sections.h>
> +#include <linux/types.h>
> +
> +char _text[0] __attribute__((section("._text")));
> +char __bss_start[0] __attribute__((section(".__bss_start")));
> +char __bss_stop[0] __attribute__((section(".__bss_stop")));
> +char __image_start[0] __attribute__((section(".__image_start")));
> +char __image_end[0] __attribute__((section(".__image_end")));
> diff --git a/arch/riscv/lib/setupc.S b/arch/riscv/lib/setupc.S
> new file mode 100644
> index 000000000000..6d824d00f7e0
> --- /dev/null
> +++ b/arch/riscv/lib/setupc.S
> @@ -0,0 +1,55 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/* SPDX-FileCopyrightText: Copyright (c) 2021 Ahmad Fatoum, Pengutronix */
> +
> +#include <linux/linkage.h>
> +#include <asm/sections.h>
> +#include <asm/asm.h>
> +
> +/*
> + * setup_c: clear bss
> + */
> +.section .text.setup_c
> +ENTRY(setup_c)
> +	lla	a0, __bss_start
> +	li	a1, 0
> +	lla	a2, __bss_stop
> +	sub	a2, a2, a0
> +	j	__memset
> +ENDPROC(setup_c)
> +
> +/*
> + * void relocate_to_adr(unsigned long targetadr)
> + *
> + * Copy binary to targetadr, relocate code and continue
> + * executing at new address.
> + */
> +.section .text.relocate_to_adr
> +ENTRY(relocate_to_adr)
> +					/* a0: target address */
> +	addi	sp, sp, -SZREG * 2
> +	lla	a1, _text		/* a1: source address */
> +
> +	beq	a0, a1, copied		/* skip if already at new address */

This needs to be moved after spilling ra onto stack. Will fix in v2.

> +
> +	lla	a2, copied
> +	sub	a2, a2, a1
> +	add	a2, a2, a0
> +	REG_S	a2, (SZREG * 1)(sp)
> +
> +	/* adjust return address */
> +	sub	ra, ra, a1		/* sub address where we are actually running */
> +	add	ra, ra, a0		/* add address where we are going to run */
> +	REG_S	ra, (SZREG * 2)(sp)
> +
> +	lla	a2, __bss_start
> +	sub	a2, a2, a1		 /* a2: size */
> +
> +	jal	__memcpy
> +
> +	REG_L	a0, (SZREG * 1)(sp)
> +	jr	a0 			/* jump to relocated address */
> +copied:
> +	REG_L	ra, (SZREG * 2)(sp)
> +	addi	sp, sp, SZREG * 2
> +	j	relocate_to_current_adr	/* relocate binary */
> +ENDPROC(relocate_to_adr)
> diff --git a/scripts/.gitignore b/scripts/.gitignore
> index 7c9a3f55715f..9577d568edd0 100644
> --- a/scripts/.gitignore
> +++ b/scripts/.gitignore
> @@ -32,3 +32,4 @@ mips-relocs
>  rsatoc
>  stm32image
>  mvebuimg
> +prelink-riscv
> diff --git a/scripts/Makefile b/scripts/Makefile
> index 744f4dd0e7e6..4dc70815b7e6 100644
> --- a/scripts/Makefile
> +++ b/scripts/Makefile
> @@ -24,6 +24,7 @@ hostprogs-always-$(CONFIG_ARCH_SOCFPGA)			+= socfpga_mkimage
>  hostprogs-always-$(CONFIG_ARCH_MXS)			+= mxsimage mxsboot
>  hostprogs-always-$(CONFIG_ARCH_LAYERSCAPE)		+= pblimage
>  hostprogs-always-$(CONFIG_ARCH_STM32MP)			+= stm32image
> +hostprogs-always-$(CONFIG_RISCV)			+= prelink-riscv
>  KBUILD_HOSTCFLAGS += -I$(srctree)/scripts/include/
>  HOSTLDLIBS_mxsimage  = `pkg-config --libs openssl`
>  HOSTCFLAGS_omap3-usb-loader.o = `pkg-config --cflags libusb-1.0`
> diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
> index 2844d29be600..319ac19975ed 100644
> --- a/scripts/Makefile.lib
> +++ b/scripts/Makefile.lib
> @@ -247,6 +247,17 @@ $(obj)/%:: $(src)/%_shipped
>  #	and add target to extra-y so that we know we have to
>  #	read in the saved command line
>  
> +# Prelinking
> +# ---------------------------------------------------------------------------
> +
> +ifneq ($(CONFIG_RISCV),)
> +quiet_cmd_prelink__ = PRELINK $@
> +      cmd_prelink__ = $(objtree)/scripts/prelink-riscv $@
> +endif
> +
> +quiet_cmd_prelink__ ?=
> +      cmd_prelink__ ?=
> +
>  # Linking
>  # ---------------------------------------------------------------------------
>  
> diff --git a/scripts/prelink-riscv.c b/scripts/prelink-riscv.c
> new file mode 100644
> index 000000000000..c185d3981ca1
> --- /dev/null
> +++ b/scripts/prelink-riscv.c
> @@ -0,0 +1,122 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Copyright (C) 2017 Andes Technology
> + * Chih-Mao Chen <cmchen@andestech.com>
> + *
> + * Statically process runtime relocations on RISC-V ELF images
> + * so that it can be directly executed when loaded at LMA
> + * without fixup. Both RV32 and RV64 are supported.
> + */
> +
> +#include <errno.h>
> +#include <stdbool.h>
> +#include <stdint.h>
> +#include <stdio.h>
> +#include <stdlib.h>
> +#include <string.h>
> +
> +#include <elf.h>
> +#include <fcntl.h>
> +#include <sys/mman.h>
> +#include <sys/stat.h>
> +#include <sys/types.h>
> +#include <unistd.h>
> +#include "compiler.h"
> +
> +#ifndef EM_RISCV
> +#define EM_RISCV 243
> +#endif
> +
> +#ifndef R_RISCV_32
> +#define R_RISCV_32 1
> +#endif
> +
> +#ifndef R_RISCV_64
> +#define R_RISCV_64 2
> +#endif
> +
> +#ifndef R_RISCV_RELATIVE
> +#define R_RISCV_RELATIVE 3
> +#endif
> +
> +const char *argv0;
> +
> +#define die(fmt, ...) \
> +	do { \
> +		fprintf(stderr, "%s: " fmt "\n", argv0, ## __VA_ARGS__); \
> +		exit(EXIT_FAILURE); \
> +	} while (0)
> +
> +#define PRELINK_BYTEORDER le
> +#define PRELINK_INC_BITS 32
> +#include "prelink-riscv.inc"
> +#undef PRELINK_BYTEORDER
> +#undef PRELINK_INC_BITS
> +
> +#define PRELINK_BYTEORDER le
> +#define PRELINK_INC_BITS 64
> +#include "prelink-riscv.inc"
> +#undef PRELINK_BYTEORDER
> +#undef PRELINK_INC_BITS
> +
> +#define PRELINK_BYTEORDER be
> +#define PRELINK_INC_BITS 32
> +#include "prelink-riscv.inc"
> +#undef PRELINK_BYTEORDER
> +#undef PRELINK_INC_BITS
> +
> +#define PRELINK_BYTEORDER be
> +#define PRELINK_INC_BITS 64
> +#include "prelink-riscv.inc"
> +#undef PRELINK_BYTEORDER
> +#undef PRELINK_INC_BITS
> +
> +int main(int argc, const char *const *argv)
> +{
> +	argv0 = argv[0];
> +
> +	if (argc < 2) {
> +		fprintf(stderr, "Usage: %s <u-boot>\n", argv0);
> +		exit(EXIT_FAILURE);
> +	}
> +
> +	int fd = open(argv[1], O_RDWR, 0);
> +
> +	if (fd < 0)
> +		die("Cannot open %s: %s", argv[1], strerror(errno));
> +
> +	struct stat st;
> +
> +	if (fstat(fd, &st) < 0)
> +		die("Cannot stat %s: %s", argv[1], strerror(errno));
> +
> +	void *data =
> +		mmap(0, st.st_size, PROT_READ | PROT_WRITE, MAP_SHARED, fd, 0);
> +
> +	if (data == MAP_FAILED)
> +		die("Cannot mmap %s: %s", argv[1], strerror(errno));
> +
> +	close(fd);
> +
> +	unsigned char *e_ident = (unsigned char *)data;
> +
> +	if (memcmp(e_ident, ELFMAG, SELFMAG) != 0)
> +		die("Invalid ELF file %s", argv[1]);
> +
> +	bool is64 = e_ident[EI_CLASS] == ELFCLASS64;
> +	bool isbe = e_ident[EI_DATA] == ELFDATA2MSB;
> +
> +	if (is64) {
> +		if (isbe)
> +			prelink_be64(data);
> +		else
> +			prelink_le64(data);
> +	} else {
> +		if (isbe)
> +			prelink_be32(data);
> +		else
> +			prelink_le32(data);
> +	}
> +
> +	return 0;
> +}
> diff --git a/scripts/prelink-riscv.inc b/scripts/prelink-riscv.inc
> new file mode 100644
> index 000000000000..f2b5467f5b3c
> --- /dev/null
> +++ b/scripts/prelink-riscv.inc
> @@ -0,0 +1,123 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Copyright (C) 2017 Andes Technology
> + * Chih-Mao Chen <cmchen@andestech.com>
> + *
> + * Statically process runtime relocations on RISC-V ELF images
> + * so that it can be directly executed when loaded at LMA
> + * without fixup. Both RV32 and RV64 are supported.
> + */
> +
> +#define CONCAT_IMPL(x, y) x##y
> +#define CONCAT(x, y) CONCAT_IMPL(x, y)
> +#define CONCAT3(x, y, z) CONCAT(CONCAT(x, y), z)
> +
> +#define prelink_bonn    CONCAT3(prelink_, PRELINK_BYTEORDER, PRELINK_INC_BITS)
> +#define uintnn_t        CONCAT3(uint, PRELINK_INC_BITS, _t)
> +#define get_offset_bonn CONCAT3(get_offset_, PRELINK_BYTEORDER, PRELINK_INC_BITS)
> +#define Elf_Ehdr        CONCAT3(Elf, PRELINK_INC_BITS, _Ehdr)
> +#define Elf_Phdr        CONCAT3(Elf, PRELINK_INC_BITS, _Phdr)
> +#define Elf_Rela        CONCAT3(Elf, PRELINK_INC_BITS, _Rela)
> +#define Elf_Sym         CONCAT3(Elf, PRELINK_INC_BITS, _Sym)
> +#define Elf_Dyn         CONCAT3(Elf, PRELINK_INC_BITS, _Dyn)
> +#define Elf_Addr        CONCAT3(Elf, PRELINK_INC_BITS, _Addr)
> +#define ELF_R_TYPE      CONCAT3(ELF, PRELINK_INC_BITS, _R_TYPE)
> +#define ELF_R_SYM       CONCAT3(ELF, PRELINK_INC_BITS, _R_SYM)
> +#define target16_to_cpu CONCAT(PRELINK_BYTEORDER, 16_to_cpu)
> +#define target32_to_cpu CONCAT(PRELINK_BYTEORDER, 32_to_cpu)
> +#define target64_to_cpu CONCAT(PRELINK_BYTEORDER, 64_to_cpu)
> +#define targetnn_to_cpu CONCAT3(PRELINK_BYTEORDER, PRELINK_INC_BITS, _to_cpu)
> +#define cpu_to_target32 CONCAT3(cpu_to_, PRELINK_BYTEORDER, 32)
> +#define cpu_to_target64 CONCAT3(cpu_to_, PRELINK_BYTEORDER, 64)
> +
> +static void* get_offset_bonn (void* data, Elf_Phdr* phdrs, size_t phnum, Elf_Addr addr)
> +{
> +	Elf_Phdr *p;
> +
> +	for (p = phdrs; p < phdrs + phnum; ++p)
> +		if (targetnn_to_cpu(p->p_vaddr) <= addr && targetnn_to_cpu(p->p_vaddr) + targetnn_to_cpu(p->p_memsz) > addr)
> +			return data + targetnn_to_cpu(p->p_offset) + (addr - targetnn_to_cpu(p->p_vaddr));
> +
> +	return NULL;
> +}
> +
> +static void prelink_bonn(void *data)
> +{
> +	Elf_Ehdr *ehdr = data;
> +	Elf_Phdr *p;
> +	Elf_Dyn *dyn;
> +	Elf_Rela *r;
> +
> +	if (target16_to_cpu(ehdr->e_machine) != EM_RISCV)
> +		die("Machine type is not RISC-V");
> +
> +	Elf_Phdr *phdrs = data + targetnn_to_cpu(ehdr->e_phoff);
> +
> +	Elf_Dyn *dyns = NULL;
> +	for (p = phdrs; p < phdrs + target16_to_cpu(ehdr->e_phnum); ++p) {
> +		if (target32_to_cpu(p->p_type) == PT_DYNAMIC) {
> +			dyns = data + targetnn_to_cpu(p->p_offset);
> +			break;
> +		}
> +	}
> +
> +	if (dyns == NULL)
> +		die("No dynamic section found");
> +
> +	Elf_Rela *rela_dyn = NULL;
> +	size_t rela_count = 0;
> +	Elf_Sym *dynsym = NULL;
> +	for (dyn = dyns;; ++dyn) {
> +		if (targetnn_to_cpu(dyn->d_tag) == DT_NULL)
> +			break;
> +		else if (targetnn_to_cpu(dyn->d_tag) == DT_RELA)
> +			rela_dyn = get_offset_bonn(data, phdrs, target16_to_cpu(ehdr->e_phnum), + targetnn_to_cpu(dyn->d_un.d_ptr));
> +		else if (targetnn_to_cpu(dyn->d_tag) == DT_RELASZ)
> +		  rela_count = targetnn_to_cpu(dyn->d_un.d_val) / sizeof(Elf_Rela);
> +		else if (targetnn_to_cpu(dyn->d_tag) == DT_SYMTAB)
> +			dynsym = get_offset_bonn(data, phdrs, target16_to_cpu(ehdr->e_phnum), + targetnn_to_cpu(dyn->d_un.d_ptr));
> +
> +	}
> +
> +	if (rela_dyn == NULL)
> +		die("No .rela.dyn found");
> +
> +	if (dynsym == NULL)
> +		die("No .dynsym found");
> +
> +	for (r = rela_dyn; r < rela_dyn + rela_count; ++r) {
> +		void* buf = get_offset_bonn(data, phdrs, target16_to_cpu(ehdr->e_phnum), targetnn_to_cpu(r->r_offset));
> +
> +		if (buf == NULL)
> +			continue;
> +
> +		if (ELF_R_TYPE(targetnn_to_cpu(r->r_info)) == R_RISCV_RELATIVE)
> +			*((uintnn_t*) buf) = r->r_addend;
> +		else if (ELF_R_TYPE(targetnn_to_cpu(r->r_info)) == R_RISCV_32)
> +			*((uint32_t*) buf) = cpu_to_target32(targetnn_to_cpu(dynsym[ELF_R_SYM(targetnn_to_cpu(r->r_info))].st_value) + targetnn_to_cpu(r->r_addend));
> +		else if (ELF_R_TYPE(targetnn_to_cpu(r->r_info)) == R_RISCV_64)
> +			*((uint64_t*) buf) = cpu_to_target64(targetnn_to_cpu(dynsym[ELF_R_SYM(targetnn_to_cpu(r->r_info))].st_value) + targetnn_to_cpu(r->r_addend));
> +	}
> +}
> +
> +#undef prelink_bonn
> +#undef uintnn_t
> +#undef get_offset_bonn
> +#undef Elf_Ehdr
> +#undef Elf_Phdr
> +#undef Elf_Rela
> +#undef Elf_Sym
> +#undef Elf_Dyn
> +#undef Elf_Addr
> +#undef ELF_R_TYPE
> +#undef ELF_R_SYM
> +#undef target16_to_cpu
> +#undef target32_to_cpu
> +#undef target64_to_cpu
> +#undef targetnn_to_cpu
> +#undef cpu_to_target32
> +#undef cpu_to_target64
> +
> +#undef CONCAT_IMPL
> +#undef CONCAT
> +#undef CONCAT3
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

