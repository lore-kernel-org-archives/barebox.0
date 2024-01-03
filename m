Delivery-date: Wed, 03 Jan 2024 19:35:46 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL65j-002O44-0q
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 19:35:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL65Z-0006s3-Ps
	for lore@pengutronix.de; Wed, 03 Jan 2024 19:35:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DCnV0B/RoTuReNbGw57G3coNOEglBUSfVLBFEih4QXs=; b=hz1XK9eA/6o9NDCRWBZBM3r8BL
	YeHH52Rx4TvvOYLYmqYhSUCUYj40uaOWHcP7DVELHWtUSxN2iiGx8EZIb0F51SZAYSkQtchX5zKIi
	gjLJ5GdJbXG7odFSB2EQamc9SGB5cK+PBBslgiezpcnOKJWvTfUymBBBtA2mYOGvbObBaRXLQagju
	vHy3yVN9rrSuvY2gS3G+YmWFynyS0e/lDlP7Lx4ZiwBdONDO39ND0zpjnTOqYG4eCmoCaoJYnGT/h
	Tnx2rttOJ/srfd4q2C3W7c/X3DteZidQuI5bod73Xic8kL5zZY1qySkV51JzqRLORJakn3FdvOrC9
	zKUf4Pag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL63j-00BkEN-0k;
	Wed, 03 Jan 2024 18:33:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL61A-00Bh1M-0T
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 18:31:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL613-0001eE-DV; Wed, 03 Jan 2024 19:30:57 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL612-000AxF-Ub; Wed, 03 Jan 2024 19:30:56 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL5k4-001j4X-2g;
	Wed, 03 Jan 2024 19:13:24 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 19:12:46 +0100
Message-Id: <20240103181312.409668-87-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103181312.409668-1-a.fatoum@pengutronix.de>
References: <20240103181312.409668-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_103104_506532_01F76C45 
X-CRM114-Status: GOOD (  30.73  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 086/112] ARM64: add optional EFI stub
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

While very recent binutils releases have dedicated efi-*-aarch targets,
we may want to support older toolchains. For this reason, we import
the kernel's EFI stub PE fakery, so the same barebox-dt-2nd.img may be
loaded as if it were a "normal" or an EFI-stubbed kernel.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Makefile                            |   6 +-
 arch/arm/Kconfig                    |   1 +
 arch/arm/cpu/Kconfig                |   1 +
 arch/arm/cpu/board-dt-2nd-aarch64.S |   8 +-
 arch/arm/cpu/cpu.c                  |   6 ++
 arch/arm/cpu/efi-header-aarch64.S   | 122 ++++++++++++++++++++++++++++
 arch/arm/cpu/entry.c                |   3 +
 arch/arm/cpu/interrupts_64.c        |   6 +-
 arch/arm/cpu/mmu-common.c           |   4 +
 arch/arm/cpu/start.c                |  16 ++--
 arch/arm/include/asm/pci.h          |   4 +-
 arch/arm/lib/pbl.lds.S              |  13 +++
 arch/arm/lib64/armlinux.c           |   4 +
 arch/x86/Kconfig                    |   1 +
 efi/Kconfig                         |  13 ++-
 efi/payload/Makefile                |   2 +
 efi/payload/boarddata.c             |  45 ++++++++++
 efi/payload/entry-multi.c           |  45 ++++++++++
 include/pbl.h                       |   4 +
 test/self/mmu.c                     |   7 ++
 20 files changed, 299 insertions(+), 12 deletions(-)
 create mode 100644 arch/arm/cpu/efi-header-aarch64.S
 create mode 100644 efi/payload/boarddata.c
 create mode 100644 efi/payload/entry-multi.c

diff --git a/Makefile b/Makefile
index c5c627bb6a8c..a49b3c62d2bf 100644
--- a/Makefile
+++ b/Makefile
@@ -734,7 +734,11 @@ images: barebox.bin FORCE
 images/%.s: barebox.bin FORCE
 	$(Q)$(MAKE) $(build)=images $@
 
-ifdef CONFIG_PBL_IMAGE
+ifdef CONFIG_EFI_STUB
+all: barebox.bin images barebox.efi
+barebox.efi: FORCE
+	$(Q)ln -fsn images/barebox-dt-2nd.img $@
+else ifdef CONFIG_PBL_IMAGE
 all: barebox.bin images
 else
 all: barebox-flash-image barebox-flash-images
diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index ee3914620ecd..186e045d3512 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -9,6 +9,7 @@ config ARM
 	select HAVE_ARCH_KASAN
 	select ARCH_HAS_SJLJ
 	select ARM_OPTIMZED_STRING_FUNCTIONS if KASAN
+	select HAVE_EFI_STUB
 	default y
 
 config ARM_LINUX
diff --git a/arch/arm/cpu/Kconfig b/arch/arm/cpu/Kconfig
index 40dd35833a63..e69acaacdf2f 100644
--- a/arch/arm/cpu/Kconfig
+++ b/arch/arm/cpu/Kconfig
@@ -21,6 +21,7 @@ config CPU_64
 	select HAS_DMA
 	select ARCH_WANT_FRAME_POINTERS
 	select ARCH_HAS_ZERO_PAGE
+	select HAVE_EFI_PAYLOAD
 
 # Select CPU types depending on the architecture selected. This selects
 # which CPUs we support in the kernel image, and the compiler instruction
diff --git a/arch/arm/cpu/board-dt-2nd-aarch64.S b/arch/arm/cpu/board-dt-2nd-aarch64.S
index d2c9f132cef6..030366c1cbf5 100644
--- a/arch/arm/cpu/board-dt-2nd-aarch64.S
+++ b/arch/arm/cpu/board-dt-2nd-aarch64.S
@@ -2,6 +2,7 @@
 #include <linux/linkage.h>
 #include <asm/barebox-arm64.h>
 #include <asm/image.h>
+#include "efi-header-aarch64.S"
 
 #define IMAGE_FLAGS \
 	(ARM64_IMAGE_FLAG_PAGE_SIZE_4K << ARM64_IMAGE_FLAG_PAGE_SIZE_SHIFT) | \
@@ -9,7 +10,7 @@
 
 .section .text_head_entry_start_dt_2nd
 ENTRY("start_dt_2nd")
-	adr x1, 0	   	   /* code0 */
+	efi_signature_nop          /* code0 */
 	b 2f                       /* code1 */
 	.xword 0x80000             /* Image load offset */
 	.xword _barebox_image_size /* Effective Image size */
@@ -18,12 +19,15 @@ ENTRY("start_dt_2nd")
 	.xword 0                   /* reserved */
 	.xword 0                   /* reserved */
 	.ascii ARM64_IMAGE_MAGIC   /* magic number */
-	.int   0                   /* reserved (PE-COFF offset) */
+	.int   .Lpe_header_offset  /* reserved (PE-COFF offset) */
 	.asciz "barebox"	   /* unused for now */
 2:
+	adr x1, 0
 	mov sp, x1
 	/* Stack now grows into the 0x80000 image load offset specified
 	 * above. This is more than enough until FDT /memory is decoded.
 	 */
 	b dt_2nd_aarch64
+
+	__EFI_PE_HEADER
 ENTRY_PROC_END(start_dt_2nd)
diff --git a/arch/arm/cpu/cpu.c b/arch/arm/cpu/cpu.c
index cacd442b28da..5f1ffe9a3c76 100644
--- a/arch/arm/cpu/cpu.c
+++ b/arch/arm/cpu/cpu.c
@@ -17,6 +17,7 @@
 #include <asm/cputype.h>
 #include <asm/cache.h>
 #include <asm/ptrace.h>
+#include <efi/efi-mode.h>
 
 /**
  * Enable processor's instruction cache
@@ -82,6 +83,8 @@ static void disable_interrupts(void)
  */
 static void arch_shutdown(void)
 {
+	if (efi_is_payload())
+		return;
 
 #ifdef CONFIG_MMU
 	mmu_disable();
@@ -96,6 +99,9 @@ extern unsigned long arm_stack_top;
 
 static int arm_request_stack(void)
 {
+	if (efi_is_payload())
+		return 0;
+
 	if (!request_sdram_region("stack", arm_stack_top - STACK_SIZE, STACK_SIZE))
 		pr_err("Error: Cannot request SDRAM region for stack\n");
 
diff --git a/arch/arm/cpu/efi-header-aarch64.S b/arch/arm/cpu/efi-header-aarch64.S
new file mode 100644
index 000000000000..941d0d8fdcaa
--- /dev/null
+++ b/arch/arm/cpu/efi-header-aarch64.S
@@ -0,0 +1,122 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2013 - 2017 Linaro, Ltd.
+ * Copyright (C) 2013, 2014 Red Hat, Inc.
+ */
+
+#include <linux/pe.h>
+#include <linux/sizes.h>
+#include <asm/memory.h>
+
+	.macro	efi_signature_nop
+#ifdef CONFIG_EFI_STUB
+.L_head:
+	/*
+	 * This ccmp instruction has no meaningful effect except that
+	 * its opcode forms the magic "MZ" signature required by UEFI.
+	 */
+	ccmp	x18, #0, #0xd, pl
+#else
+	/*
+	 * Bootloaders may inspect the opcode at the start of the kernel
+	 * image to decide if the kernel is capable of booting via UEFI.
+	 * So put an ordinary NOP here, not the "MZ.." pseudo-nop above.
+	 */
+	nop
+#endif
+	.endm
+
+	.macro	__EFI_PE_HEADER
+#ifdef CONFIG_EFI_STUB
+	.set	.Lpe_header_offset, . - .L_head
+	.long	PE_MAGIC
+	.short	IMAGE_FILE_MACHINE_ARM64		// Machine
+	.short	.Lsection_count				// NumberOfSections
+	.long	0 					// TimeDateStamp
+	.long	0					// PointerToSymbolTable
+	.long	0					// NumberOfSymbols
+	.short	.Lsection_table - .Loptional_header	// SizeOfOptionalHeader
+	.short	IMAGE_FILE_DEBUG_STRIPPED | \
+		IMAGE_FILE_EXECUTABLE_IMAGE | \
+		IMAGE_FILE_LINE_NUMS_STRIPPED		// Characteristics
+
+.Loptional_header:
+	.short	PE_OPT_MAGIC_PE32PLUS			// PE32+ format
+	.byte	0x02					// MajorLinkerVersion
+	.byte	0x14					// MinorLinkerVersion
+	.long	_sdata - .Lefi_header_end		// SizeOfCode
+	.long	__pecoff_data_size			// SizeOfInitializedData
+	.long	0					// SizeOfUninitializedData
+	.long	__efistub_efi_pe_entry - .L_head	// AddressOfEntryPoint
+	.long	.Lefi_header_end - .L_head		// BaseOfCode
+
+	.quad	0					// ImageBase
+	.long	PBL_SEGMENT_ALIGN			// SectionAlignment
+	.long	PECOFF_FILE_ALIGNMENT			// FileAlignment
+	.short	0					// MajorOperatingSystemVersion
+	.short	0					// MinorOperatingSystemVersion
+	.short	LINUX_EFISTUB_MAJOR_VERSION		// MajorImageVersion
+	.short	LINUX_EFISTUB_MINOR_VERSION		// MinorImageVersion
+	.short	0					// MajorSubsystemVersion
+	.short	0					// MinorSubsystemVersion
+	.long	0					// Win32VersionValue
+
+	.long	__image_end - .L_head			// SizeOfImage
+
+	// Everything before the kernel image is considered part of the header
+	.long	.Lefi_header_end - .L_head		// SizeOfHeaders
+	.long	0					// CheckSum
+	.short	IMAGE_SUBSYSTEM_EFI_APPLICATION		// Subsystem
+	.short	0					// DllCharacteristics
+	.quad	0					// SizeOfStackReserve
+	.quad	0					// SizeOfStackCommit
+	.quad	0					// SizeOfHeapReserve
+	.quad	0					// SizeOfHeapCommit
+	.long	0					// LoaderFlags
+	.long	(.Lsection_table - .) / 8		// NumberOfRvaAndSizes
+
+	.quad	0					// ExportTable
+	.quad	0					// ImportTable
+	.quad	0					// ResourceTable
+	.quad	0					// ExceptionTable
+	.quad	0					// CertificationTable
+	.quad	0					// BaseRelocationTable
+
+	// Section table
+.Lsection_table:
+	.ascii	".text\0\0\0"
+	.long	_sdata - .Lefi_header_end		// VirtualSize
+	.long	.Lefi_header_end - .L_head		// VirtualAddress
+	.long	_sdata - .Lefi_header_end		// SizeOfRawData
+	.long	.Lefi_header_end - .L_head		// PointerToRawData
+
+	.long	0					// PointerToRelocations
+	.long	0					// PointerToLineNumbers
+	.short	0					// NumberOfRelocations
+	.short	0					// NumberOfLineNumbers
+	.long	IMAGE_SCN_CNT_CODE | \
+		IMAGE_SCN_MEM_READ | \
+		IMAGE_SCN_MEM_EXECUTE			// Characteristics
+
+	.ascii	".data\0\0\0"
+	.long	__pecoff_data_size			// VirtualSize
+	.long	_sdata - .L_head			// VirtualAddress
+	.long	__pecoff_data_rawsize			// SizeOfRawData
+	.long	_sdata - .L_head			// PointerToRawData
+
+	.long	0					// PointerToRelocations
+	.long	0					// PointerToLineNumbers
+	.short	0					// NumberOfRelocations
+	.short	0					// NumberOfLineNumbers
+	.long	IMAGE_SCN_CNT_INITIALIZED_DATA | \
+		IMAGE_SCN_MEM_READ | \
+		IMAGE_SCN_MEM_WRITE			// Characteristics
+
+	.set	.Lsection_count, (. - .Lsection_table) / 40
+
+	.balign	PBL_SEGMENT_ALIGN
+.Lefi_header_end:
+#else
+	.set	.Lpe_header_offset, 0x0
+#endif
+	.endm
diff --git a/arch/arm/cpu/entry.c b/arch/arm/cpu/entry.c
index dc264c877117..cc08d0ff7e42 100644
--- a/arch/arm/cpu/entry.c
+++ b/arch/arm/cpu/entry.c
@@ -42,3 +42,6 @@ void NAKED __noreturn barebox_arm_entry(unsigned long membase,
 	__barebox_arm_entry(membase, memsize, boarddata,
 			    arm_mem_stack_top(membase + memsize));
 }
+
+void __noreturn barebox_pbl_entry(ulong, ulong, void *)
+	__alias(barebox_arm_entry);
diff --git a/arch/arm/cpu/interrupts_64.c b/arch/arm/cpu/interrupts_64.c
index b3e7da179756..6262ba8872db 100644
--- a/arch/arm/cpu/interrupts_64.c
+++ b/arch/arm/cpu/interrupts_64.c
@@ -11,6 +11,7 @@
 #include <init.h>
 #include <asm/system.h>
 #include <asm/esr.h>
+#include <efi/efi-mode.h>
 
 /* Avoid missing prototype warning, called from assembly */
 void do_bad_sync (struct pt_regs *pt_regs);
@@ -204,6 +205,9 @@ static int aarch64_init_vectors(void)
 {
 	unsigned int el;
 
+	if (efi_is_payload())
+		return 0;
+
 	el = current_el();
 	switch (el) {
 	case 3:
@@ -221,4 +225,4 @@ static int aarch64_init_vectors(void)
 
 	return 0;
 }
-pure_initcall(aarch64_init_vectors);
+core_initcall(aarch64_init_vectors);
diff --git a/arch/arm/cpu/mmu-common.c b/arch/arm/cpu/mmu-common.c
index acd4a9d35413..aeaf6c269df6 100644
--- a/arch/arm/cpu/mmu-common.c
+++ b/arch/arm/cpu/mmu-common.c
@@ -13,6 +13,7 @@
 #include <memory.h>
 #include <zero_page.h>
 #include "mmu-common.h"
+#include <efi/efi-mode.h>
 
 void arch_sync_dma_for_cpu(void *vaddr, size_t size,
 			   enum dma_data_direction dir)
@@ -67,6 +68,9 @@ void zero_page_faulting(void)
 
 static int mmu_init(void)
 {
+	if (efi_is_payload())
+		return 0;
+
 	if (list_empty(&memory_banks)) {
 		resource_size_t start;
 		int ret;
diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index 9f4cdfe67fbf..0351dcb9278d 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -43,14 +43,18 @@ static bool blob_is_arm_boarddata(const void *blob)
 	return bd->magic == BAREBOX_ARM_BOARDDATA_MAGIC;
 }
 
+const struct barebox_boarddata *barebox_get_boarddata(void)
+{
+	if (!barebox_boarddata || !blob_is_arm_boarddata(barebox_boarddata))
+		return NULL;
+
+	return barebox_boarddata;
+}
+
 u32 barebox_arm_machine(void)
 {
-	if (barebox_boarddata && blob_is_arm_boarddata(barebox_boarddata)) {
-		const struct barebox_arm_boarddata *bd = barebox_boarddata;
-		return bd->machine;
-	} else {
-		return 0;
-	}
+	const struct barebox_boarddata *bd = barebox_get_boarddata();
+	return bd ? bd->machine : 0;
 }
 
 void *barebox_arm_boot_dtb(void)
diff --git a/arch/arm/include/asm/pci.h b/arch/arm/include/asm/pci.h
index d7419cabe7ef..7c834f110111 100644
--- a/arch/arm/include/asm/pci.h
+++ b/arch/arm/include/asm/pci.h
@@ -2,6 +2,8 @@
 #ifndef __ASM_PCI_H
 #define __ASM_PCI_H
 
-#define pcibios_assign_all_busses()	1
+#include <efi/efi-mode.h>
+
+#define pcibios_assign_all_busses()	(!efi_is_payload())
 
 #endif
diff --git a/arch/arm/lib/pbl.lds.S b/arch/arm/lib/pbl.lds.S
index 95929d7558bc..ec7296f0fb34 100644
--- a/arch/arm/lib/pbl.lds.S
+++ b/arch/arm/lib/pbl.lds.S
@@ -3,6 +3,7 @@
 
 #include <linux/sizes.h>
 #include <asm/barebox.lds.h>
+#include <asm/memory.h>
 #include <asm-generic/memory_layout.h>
 #include <asm-generic/pointer.h>
 #include <asm/memory.h>
@@ -80,7 +81,9 @@ SECTIONS
 
 	.barebox_imd : { BAREBOX_IMD }
 
+	. = ALIGN(PBL_SEGMENT_ALIGN);
 	_etext = .;			/* End of text and rodata section */
+	_sdata = .;
 
 	. = ALIGN(4);
 	.data : { *(.data*) }
@@ -127,6 +130,16 @@ SECTIONS
 	}
 	__pblext_end = .;
 
+	PECOFF_EDATA_PADDING
+
+	__pecoff_data_rawsize = ABSOLUTE(. - _etext);
+
+	/* .bss is dwarfed by piggydata size, so we just handle .bss
+	 * as normal PE data
+	 */
+
+	__pecoff_data_size = ABSOLUTE(. - _etext);
+
 	.image_end : { KEEP(*(.__image_end)) }
 
 	pbl_image_size =  . - BASE;
diff --git a/arch/arm/lib64/armlinux.c b/arch/arm/lib64/armlinux.c
index 40fea37f53a7..4628c8ab5693 100644
--- a/arch/arm/lib64/armlinux.c
+++ b/arch/arm/lib64/armlinux.c
@@ -5,6 +5,7 @@
 #include <memory.h>
 #include <init.h>
 #include <bootm.h>
+#include <efi/efi-mode.h>
 
 static int do_bootm_linux(struct image_data *data)
 {
@@ -89,6 +90,9 @@ static struct image_handler aarch64_barebox_handler = {
 
 static int aarch64_register_image_handler(void)
 {
+	if (efi_is_payload())
+		return 0;
+
 	register_image_handler(&aarch64_linux_efi_handler);
 	register_image_handler(&aarch64_linux_handler);
 	register_image_handler(&aarch64_barebox_handler);
diff --git a/arch/x86/Kconfig b/arch/x86/Kconfig
index 8b00a674a688..5b4982455385 100644
--- a/arch/x86/Kconfig
+++ b/arch/x86/Kconfig
@@ -5,6 +5,7 @@ config X86
 	select HAS_KALLSYMS
 	select HAS_DMA
 	select GENERIC_FIND_NEXT_BIT
+	select HAVE_EFI_PAYLOAD
 	default y
 
 config ARCH_TEXT_BASE
diff --git a/efi/Kconfig b/efi/Kconfig
index 971d58a7a9c0..35a57a3a42de 100644
--- a/efi/Kconfig
+++ b/efi/Kconfig
@@ -2,8 +2,12 @@
 
 menu "EFI (Extensible Firmware Interface) Support"
 
-config EFI_PAYLOAD
+config HAVE_EFI_PAYLOAD
 	bool
+
+config EFI_PAYLOAD
+	bool "Build as EFI payload" if COMPILE_TEST
+	depends on HAVE_EFI_PAYLOAD
 	select EFI
 	select EFI_GUID
 	select EFI_DEVICEPATH
@@ -16,6 +20,13 @@ config EFI_PAYLOAD
 config EFI
 	bool
 
+config HAVE_EFI_STUB
+	bool
+
+config EFI_STUB
+	def_bool EFI_PAYLOAD
+	depends on HAVE_EFI_STUB
+
 config EFI_GUID
 	bool
 	help
diff --git a/efi/payload/Makefile b/efi/payload/Makefile
index 71305bee7006..a4a0332a8288 100644
--- a/efi/payload/Makefile
+++ b/efi/payload/Makefile
@@ -7,3 +7,5 @@ bbenv-y += env-efi
 obj-$(CONFIG_CMD_IOMEM) += iomem.o
 obj-pbl-$(CONFIG_EFI_PAYLOAD) += early-mem.o
 obj-$(CONFIG_EFI_PAYLOAD) += entry-single.o
+pbl-$(CONFIG_EFI_STUB) += entry-multi.o
+obj-$(CONFIG_EFI_STUB) += boarddata.o
diff --git a/efi/payload/boarddata.c b/efi/payload/boarddata.c
new file mode 100644
index 000000000000..3260e31c7bf7
--- /dev/null
+++ b/efi/payload/boarddata.c
@@ -0,0 +1,45 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#define pr_fmt(fmt) "efi-boarddata: " fmt
+
+#ifdef CONFIG_DEBUG_INITCALLS
+#define DEBUG
+#endif
+
+#include <efi/efi-payload.h>
+#include <efi.h>
+#include <boarddata.h>
+#include <memory.h>
+#include <linux/kernel.h>
+#include <linux/printk.h>
+#include <debug_ll.h>
+#include <init.h>
+
+static int handle_efi_boarddata(void)
+{
+	const struct barebox_boarddata *bd = barebox_get_boarddata();
+	efi_status_t efiret;
+
+	if (!barebox_boarddata_is_machine(bd, BAREBOX_MACH_TYPE_EFI))
+		return 0;
+
+	barebox_add_memory_bank("ram0", mem_malloc_start(), mem_malloc_size());
+
+	efi_parent_image = bd->image;
+	efi_sys_table = bd->sys_table;
+	BS = efi_sys_table->boottime;
+	RT = efi_sys_table->runtime;
+
+	pr_debug("parent_image = %p, sys_table = %p\n",
+		 efi_parent_image, efi_sys_table);
+
+	efiret = BS->open_protocol(efi_parent_image, &efi_loaded_image_protocol_guid,
+			(void **)&efi_loaded_image,
+			efi_parent_image, NULL, EFI_OPEN_PROTOCOL_GET_PROTOCOL);
+	if (!EFI_ERROR(efiret))
+		BS->handle_protocol(efi_loaded_image->device_handle,
+				&efi_device_path_protocol_guid, (void **)&efi_device_path);
+
+	return 0;
+}
+pure_initcall(handle_efi_boarddata);
diff --git a/efi/payload/entry-multi.c b/efi/payload/entry-multi.c
new file mode 100644
index 000000000000..f929ab01ec7b
--- /dev/null
+++ b/efi/payload/entry-multi.c
@@ -0,0 +1,45 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <linux/kernel.h>
+#include <linux/linkage.h>
+#include <linux/sizes.h>
+#include <boarddata.h>
+#include <stdio.h>
+#include <efi.h>
+#include <asm/common.h>
+#include <efi/efi-util.h>
+#include <efi/efi-payload.h>
+#include <pbl.h>
+
+static struct barebox_boarddata boarddata = {
+	.magic = BAREBOX_BOARDDATA_MAGIC,
+	.machine = BAREBOX_MACH_TYPE_EFI,
+};
+
+asmlinkage void __efistub_efi_pe_entry(void *image, struct efi_system_table *sys_table);
+
+static void efi_putc(void *ctx, int ch)
+{
+	struct efi_system_table *sys_table = ctx;
+	wchar_t ws[2] = { ch, L'\0' };
+
+	sys_table->con_out->output_string(sys_table->con_out, ws);
+}
+
+void __efistub_efi_pe_entry(void *image, struct efi_system_table *sys_table)
+{
+	size_t memsize;
+	efi_physical_addr_t mem;
+
+#ifdef DEBUG
+	sys_table->con_out->output_string(sys_table->con_out, L"\nbarebox\n");
+#endif
+	pbl_set_putc(efi_putc, sys_table);
+
+	boarddata.image = image;
+	boarddata.sys_table = sys_table;
+
+	mem = efi_earlymem_alloc(sys_table, &memsize);
+
+	barebox_pbl_entry(mem, memsize, &boarddata);
+}
diff --git a/include/pbl.h b/include/pbl.h
index 44957f59784e..0633e340bef3 100644
--- a/include/pbl.h
+++ b/include/pbl.h
@@ -15,6 +15,7 @@
 #ifndef __ASSEMBLY__
 
 #include <linux/types.h>
+#include <linux/compiler.h>
 
 extern unsigned long free_mem_ptr;
 extern unsigned long free_mem_end_ptr;
@@ -36,4 +37,7 @@ int pbl_barebox_verify(const void *compressed_start, unsigned int len,
 		       const void *hash, unsigned int hash_len);
 #endif
 
+void __noreturn barebox_pbl_entry(ulong, ulong, void *);
+
+
 #endif /* __PBL_H__ */
diff --git a/test/self/mmu.c b/test/self/mmu.c
index dbe5004550a8..60bc9b38e84a 100644
--- a/test/self/mmu.c
+++ b/test/self/mmu.c
@@ -9,6 +9,7 @@
 #include <abort.h>
 #include <zero_page.h>
 #include <linux/sizes.h>
+#include <efi/efi-mode.h>
 #include <memory.h>
 
 #define TEST_BUFFER_SIZE		SZ_1M
@@ -258,6 +259,12 @@ static void test_zero_page(void)
 
 static void test_mmu(void)
 {
+	if (efi_is_payload()) {
+		pr_info("MMU was not initialized by us\n");
+		skipped_tests += 23;
+		return;
+	}
+
 	test_zero_page();
 	test_remap();
 }
-- 
2.39.2



