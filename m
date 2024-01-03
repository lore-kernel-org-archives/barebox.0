Delivery-date: Wed, 03 Jan 2024 19:37:16 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL67B-002OM1-0f
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 19:37:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL672-0000AQ-An
	for lore@pengutronix.de; Wed, 03 Jan 2024 19:37:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0XgTDkgDHEU3+Fbn5dwJhYcbLMqjPMAlZ00GVI/+Oa4=; b=AgTtniyx+gSmiMmbkuubj31sPA
	qNRhCt4VyKRSVoIOQaxzIWxc5ausfErCNf9AlySYuwFAK9tJpZiNUM08n7W5eFlDYA5yKDqfC+IbM
	n7ntgTANgDzx1RMuNFuYNR0ZnIZjzJVxDzcwxQ1OzrrDuGZ1TW06QvJQc5Zd4OoXd4z/o2SAqgIOf
	rLzU5qBhTshefmETqmS7WP6zH5G1JcEe+mzSdO2WPdEbxsNMfxziyVNkPGxz1f2Vm3HJckf0G80VW
	t3PoIZvwbp+RhkuU66+ejm089c+1pMaICdMR8CydktacidjMFxu2bS94d7g6thdjgNUDsfwVVGf2L
	r3N9vJ1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL64y-00BliY-0p;
	Wed, 03 Jan 2024 18:35:00 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL61M-00BhQe-2W
	for barebox@bombadil.infradead.org;
	Wed, 03 Jan 2024 18:31:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=0XgTDkgDHEU3+Fbn5dwJhYcbLMqjPMAlZ00GVI/+Oa4=; b=FvIiFBze1vzJms+3ptkrJhsAI7
	S66fPhtRODv6D1vQYcJmntV/ags2H5xGxAeCGlQdIHhO9Me6SIO9NgkJ/ZmoRUvokONvlWycjAvMs
	Q1/LBEVVV345jPKapqfsIs+kIKFVuuIFB8Krh8SuSGe66mB7uvpji6ofrGMS9zGTRE0qPC9aOQulL
	2fbvqQFIdHn7TsdChz1mKFIO4qWxEuQ3fO02gessjy7gUF3CjFxvZfKnYoa8DzYQHGv+qYvD4l1jr
	qgTqYFR0M0YDyuGLfkXd0dxfWbvzZnIdt4dli547A8WJncOw0VpEN7/LPS+1qeSzWM3QCwdtqQxWj
	dO3w+PQQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1rL61D-00DIlx-8f
	for barebox@lists.infradead.org; Wed, 03 Jan 2024 18:31:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL610-0001Uh-Kl; Wed, 03 Jan 2024 19:30:54 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL610-000AuQ-7h; Wed, 03 Jan 2024 19:30:54 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL5k3-001j4X-2p;
	Wed, 03 Jan 2024 19:13:23 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 19:12:25 +0100
Message-Id: <20240103181312.409668-66-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103181312.409668-1-a.fatoum@pengutronix.de>
References: <20240103181312.409668-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_183108_976435_E8EDD27E 
X-CRM114-Status: GOOD (  30.40  )
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
Subject: [PATCH 065/112] common: add PE/COFF loader
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

EFI loader will need to parse and load PE executables. Add functions to
facilitate that. The API is inspired by the already existing ELF API.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/Kconfig           |   3 +
 common/Makefile          |   1 +
 common/pe.c              | 377 +++++++++++++++++++++++++++++++
 include/asm-generic/pe.h |  56 +++++
 include/linux/pagemap.h  |   1 +
 include/linux/pe.h       | 468 +++++++++++++++++++++++++++++++++++++++
 include/pe.h             | 316 ++++++++++++++++++++++++++
 7 files changed, 1222 insertions(+)
 create mode 100644 common/pe.c
 create mode 100644 include/asm-generic/pe.h
 create mode 100644 include/linux/pe.h
 create mode 100644 include/pe.h

diff --git a/common/Kconfig b/common/Kconfig
index 0e8188d2b2fb..311b6a7d9b65 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -624,6 +624,9 @@ config BOOTM_AIMAGE
 	help
 	  Support using Android Images.
 
+config PE
+	bool "PE/COFF Support" if COMPILE_TEST
+
 config ELF
 	bool "ELF Support" if COMPILE_TEST
 
diff --git a/common/Makefile b/common/Makefile
index 936997d9bcdd..54df0d78edc3 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -13,6 +13,7 @@ obj-pbl-y			+= memsize.o
 obj-y				+= resource.o
 obj-pbl-y			+= bootsource.o
 obj-$(CONFIG_ELF)		+= elf.o
+obj-$(CONFIG_PE)		+= pe.o
 obj-y				+= restart.o
 obj-y				+= poweroff.o
 obj-y				+= slice.o
diff --git a/common/pe.c b/common/pe.c
new file mode 100644
index 000000000000..b14a0f8891c1
--- /dev/null
+++ b/common/pe.c
@@ -0,0 +1,377 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ *  PE image loader
+ *
+ *  based partly on wine code
+ *
+ *  Copyright (c) 2016 Alexander Graf
+ */
+
+#define pr_fmt(fmt) "pe: " fmt
+
+#include <common.h>
+#include <pe.h>
+#include <linux/sizes.h>
+#include <libfile.h>
+#include <memory.h>
+#include <linux/err.h>
+
+static int machines[] = {
+#if defined(__aarch64__)
+	IMAGE_FILE_MACHINE_ARM64,
+#elif defined(__arm__)
+	IMAGE_FILE_MACHINE_ARM,
+	IMAGE_FILE_MACHINE_THUMB,
+	IMAGE_FILE_MACHINE_ARMNT,
+#endif
+
+#if defined(__x86_64__)
+	IMAGE_FILE_MACHINE_AMD64,
+#elif defined(__i386__)
+	IMAGE_FILE_MACHINE_I386,
+#endif
+
+#if defined(__riscv) && (__riscv_xlen == 32)
+	IMAGE_FILE_MACHINE_RISCV32,
+#endif
+
+#if defined(__riscv) && (__riscv_xlen == 64)
+	IMAGE_FILE_MACHINE_RISCV64,
+#endif
+	0 };
+
+/**
+ * pe_loader_relocate() - relocate PE binary
+ *
+ * @rel:		pointer to the relocation table
+ * @rel_size:		size of the relocation table in bytes
+ * @pe_reloc:		actual load address of the image
+ * @pref_address:	preferred load address of the image
+ * Return:		status code
+ */
+static int pe_loader_relocate(const IMAGE_BASE_RELOCATION *rel,
+			unsigned long rel_size, void *pe_reloc,
+			unsigned long pref_address)
+{
+	unsigned long delta = (unsigned long)pe_reloc - pref_address;
+	const IMAGE_BASE_RELOCATION *end;
+	int i;
+
+	if (delta == 0)
+		return 0;
+
+	end = (const IMAGE_BASE_RELOCATION *)((const char *)rel + rel_size);
+	while (rel < end && rel->SizeOfBlock) {
+		const uint16_t *relocs = (const uint16_t *)(rel + 1);
+		i = (rel->SizeOfBlock - sizeof(*rel)) / sizeof(uint16_t);
+		while (i--) {
+			uint32_t offset = (uint32_t)(*relocs & 0xfff) +
+					  rel->VirtualAddress;
+			int type = *relocs >> PAGE_SHIFT;
+			uint64_t *x64 = pe_reloc + offset;
+			uint32_t *x32 = pe_reloc + offset;
+			uint16_t *x16 = pe_reloc + offset;
+
+			switch (type) {
+			case IMAGE_REL_BASED_ABSOLUTE:
+				break;
+			case IMAGE_REL_BASED_HIGH:
+				*x16 += ((uint32_t)delta) >> 16;
+				break;
+			case IMAGE_REL_BASED_LOW:
+				*x16 += (uint16_t)delta;
+				break;
+			case IMAGE_REL_BASED_HIGHLOW:
+				*x32 += (uint32_t)delta;
+				break;
+			case IMAGE_REL_BASED_DIR64:
+				*x64 += (uint64_t)delta;
+				break;
+#ifdef __riscv
+			case IMAGE_REL_BASED_RISCV_HI20:
+				*x32 = ((*x32 & 0xfffff000) + (uint32_t)delta) |
+					(*x32 & 0x00000fff);
+				break;
+			case IMAGE_REL_BASED_RISCV_LOW12I:
+			case IMAGE_REL_BASED_RISCV_LOW12S:
+				/* We know that we're 4k aligned */
+				if (delta & 0xfff) {
+					pr_err("Unsupported reloc offset\n");
+					return -ENOEXEC;
+				}
+				break;
+#endif
+			default:
+				pr_err("Unknown Relocation off %x type %x\n",
+					offset, type);
+				return -ENOEXEC;
+			}
+			relocs++;
+		}
+		rel = (const IMAGE_BASE_RELOCATION *)relocs;
+	}
+	return 0;
+}
+
+/**
+ * pe_check_header() - check if a memory buffer contains a PE-COFF image
+ *
+ * @buffer:	buffer to check
+ * @size:	size of buffer
+ * @nt_header:	on return pointer to NT header of PE-COFF image
+ * Return:	0 if the buffer contains a PE-COFF image
+ */
+static int pe_check_header(void *buffer, size_t size, void **nt_header)
+{
+	IMAGE_DOS_HEADER *dos = buffer;
+	IMAGE_NT_HEADERS32 *nt;
+
+	if (size < sizeof(*dos))
+		return -EINVAL;
+
+	/* Check for DOS magix */
+	if (dos->e_magic != IMAGE_DOS_SIGNATURE)
+		return -EINVAL;
+
+	/*
+	 * Check if the image section header fits into the file. Knowing that at
+	 * least one section header follows we only need to check for the length
+	 * of the 64bit header which is longer than the 32bit header.
+	 */
+	if (size < dos->e_lfanew + sizeof(IMAGE_NT_HEADERS32))
+		return -EINVAL;
+	nt = (IMAGE_NT_HEADERS32 *)((u8 *)buffer + dos->e_lfanew);
+
+	/* Check for PE-COFF magic */
+	if (nt->Signature != IMAGE_NT_SIGNATURE)
+		return -EINVAL;
+
+	if (nt_header)
+		*nt_header = nt;
+
+	return 0;
+}
+
+/**
+ * section_size() - determine size of section
+ *
+ * The size of a section in memory if normally given by VirtualSize.
+ * If VirtualSize is not provided, use SizeOfRawData.
+ *
+ * @sec:	section header
+ * Return:	size of section in memory
+ */
+static u32 section_size(IMAGE_SECTION_HEADER *sec)
+{
+	if (sec->Misc.VirtualSize)
+		return sec->Misc.VirtualSize;
+	else
+		return sec->SizeOfRawData;
+}
+
+struct pe_image *pe_open_buf(void *bin, size_t pe_size)
+{
+	struct pe_image *pe;
+	int i;
+	int supported = 0;
+	int ret;
+
+	pe = calloc(1, sizeof(*pe));
+	if (!pe)
+		return ERR_PTR(-ENOMEM);
+
+	ret = pe_check_header(bin, pe_size, (void **)&pe->nt);
+	if (ret) {
+		pr_err("Not a PE-COFF file\n");
+		ret = -ENOEXEC;
+		goto err;
+	}
+
+	for (i = 0; machines[i]; i++)
+		if (machines[i] == pe->nt->FileHeader.Machine) {
+			supported = 1;
+			break;
+		}
+
+	if (!supported) {
+		pr_err("Machine type 0x%04x is not supported\n",
+			pe->nt->FileHeader.Machine);
+		ret = -ENOEXEC;
+		goto err;
+	}
+
+	pe->num_sections = pe->nt->FileHeader.NumberOfSections;
+	pe->sections = (void *)&pe->nt->OptionalHeader +
+			    pe->nt->FileHeader.SizeOfOptionalHeader;
+
+	if (pe_size < ((void *)pe->sections + sizeof(pe->sections[0]) * pe->num_sections - bin)) {
+		pr_err("Invalid number of sections: %d\n", pe->num_sections);
+		ret = -ENOEXEC;
+		goto err;
+	}
+
+	pe->bin = bin;
+
+	return pe;
+err:
+	return ERR_PTR(ret);
+}
+
+struct pe_image *pe_open(const char *filename)
+{
+	struct pe_image *pe;
+	size_t size;
+	void *bin;
+
+	bin = read_file(filename, &size);
+	if (!bin)
+		return NULL;
+
+	pe = pe_open_buf(bin, size);
+
+	//free(bin); // FIXME
+	return pe;
+}
+
+static struct resource *pe_alloc(size_t virt_size)
+{
+	resource_size_t start, end;
+	int ret;
+
+	ret = memory_bank_first_find_space(&start, &end);
+	if (ret)
+		return NULL;
+
+	start = ALIGN(start, SZ_64K);
+
+	if (start + virt_size > end)
+		return NULL;
+
+	return request_sdram_region("pe-code", start, virt_size);
+}
+
+unsigned long pe_get_mem_size(struct pe_image *pe)
+{
+	unsigned long virt_size = 0;
+	int i;
+
+	/* Calculate upper virtual address boundary */
+	for (i = pe->num_sections - 1; i >= 0; i--) {
+		IMAGE_SECTION_HEADER *sec = &pe->sections[i];
+
+		virt_size = max_t(unsigned long, virt_size,
+				  sec->VirtualAddress + section_size(sec));
+	}
+
+	/* Read 32/64bit specific header bits */
+	if (pe->nt->OptionalHeader.Magic == IMAGE_NT_OPTIONAL_HDR64_MAGIC) {
+		IMAGE_NT_HEADERS64 *nt64 = (void *)pe->nt;
+		IMAGE_OPTIONAL_HEADER64  *opt = &nt64->OptionalHeader;
+
+		virt_size = ALIGN(virt_size, opt->SectionAlignment);
+	} else if (pe->nt->OptionalHeader.Magic == IMAGE_NT_OPTIONAL_HDR32_MAGIC) {
+		IMAGE_OPTIONAL_HEADER32 *opt = &pe->nt->OptionalHeader;
+
+		virt_size = ALIGN(virt_size, opt->SectionAlignment);
+	} else {
+		pr_err("Invalid optional header magic %x\n",
+		       pe->nt->OptionalHeader.Magic);
+		return 0;
+	}
+
+	return virt_size;
+}
+
+int pe_load(struct pe_image *pe)
+{
+	int rel_idx = IMAGE_DIRECTORY_ENTRY_BASERELOC;
+	uint64_t image_base;
+	unsigned long virt_size;
+	unsigned long rel_size;
+	const IMAGE_BASE_RELOCATION *rel;
+	IMAGE_DOS_HEADER *dos;
+	struct resource *code;
+	void *pe_reloc;
+	int i;
+
+	virt_size = pe_get_mem_size(pe);
+	if (!virt_size)
+		return -ENOEXEC;
+
+	/* Read 32/64bit specific header bits */
+	if (pe->nt->OptionalHeader.Magic == IMAGE_NT_OPTIONAL_HDR64_MAGIC) {
+		IMAGE_NT_HEADERS64 *nt64 = (void *)pe->nt;
+		IMAGE_OPTIONAL_HEADER64 *opt = &nt64->OptionalHeader;
+		image_base = opt->ImageBase;
+		pe->image_type = opt->Subsystem;
+
+		code = pe_alloc(virt_size);
+		if (!code)
+			return -ENOMEM;
+
+		pe_reloc = (void *)code->start;
+
+		pe->entry = code->start + opt->AddressOfEntryPoint;
+		rel_size = opt->DataDirectory[rel_idx].Size;
+		rel = pe_reloc + opt->DataDirectory[rel_idx].VirtualAddress;
+	} else if (pe->nt->OptionalHeader.Magic == IMAGE_NT_OPTIONAL_HDR32_MAGIC) {
+		IMAGE_OPTIONAL_HEADER32 *opt = &pe->nt->OptionalHeader;
+		image_base = opt->ImageBase;
+		pe->image_type = opt->Subsystem;
+		virt_size = ALIGN(virt_size, opt->SectionAlignment);
+
+		code = pe_alloc(virt_size);
+		if (!code)
+			return -ENOMEM;
+
+		pe_reloc = (void *)code->start;
+
+		pe->entry = code->start + opt->AddressOfEntryPoint;
+		rel_size = opt->DataDirectory[rel_idx].Size;
+		rel = pe_reloc + opt->DataDirectory[rel_idx].VirtualAddress;
+	} else {
+		pr_err("Invalid optional header magic %x\n",
+		       pe->nt->OptionalHeader.Magic);
+		return -ENOEXEC;
+	}
+
+	/* Copy PE headers */
+	memcpy(pe_reloc, pe->bin,
+	       sizeof(*dos)
+		 + sizeof(*pe->nt)
+		 + pe->nt->FileHeader.SizeOfOptionalHeader
+		 + pe->num_sections * sizeof(IMAGE_SECTION_HEADER));
+
+	/* Load sections into RAM */
+	for (i = pe->num_sections - 1; i >= 0; i--) {
+		IMAGE_SECTION_HEADER *sec = &pe->sections[i];
+		u32 copy_size = section_size(sec);
+
+		if (copy_size > sec->SizeOfRawData) {
+			copy_size = sec->SizeOfRawData;
+			memset(pe_reloc + sec->VirtualAddress, 0,
+			       sec->Misc.VirtualSize);
+		}
+
+		memcpy(pe_reloc + sec->VirtualAddress,
+		       pe->bin + sec->PointerToRawData,
+		       copy_size);
+	}
+
+	/* Run through relocations */
+	if (pe_loader_relocate(rel, rel_size, pe_reloc,
+				(unsigned long)image_base) != 0) {
+		release_sdram_region(code);
+		return -EINVAL;
+	}
+
+	pe->code = code;
+
+	return 0;
+}
+
+void pe_close(struct pe_image *pe)
+{
+	release_sdram_region(pe->code);
+	free(pe);
+}
diff --git a/include/asm-generic/pe.h b/include/asm-generic/pe.h
new file mode 100644
index 000000000000..a1df7471348e
--- /dev/null
+++ b/include/asm-generic/pe.h
@@ -0,0 +1,56 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
+/*
+ *  Portable Executable and Common Object Constants
+ *
+ *  Copyright (c) 2018 Heinrich Schuchardt
+ *
+ *  based on the "Microsoft Portable Executable and Common Object File Format
+ *  Specification", revision 11, 2017-01-23
+ */
+
+#ifndef _ASM_PE_H
+#define _ASM_PE_H
+
+/* Characteristics */
+#define IMAGE_FILE_RELOCS_STRIPPED		0x0001
+#define IMAGE_FILE_EXECUTABLE_IMAGE		0x0002
+#define IMAGE_FILE_LINE_NUMS_STRIPPED		0x0004
+#define IMAGE_FILE_LOCAL_SYMS_STRIPPED		0x0008
+#define IMAGE_FILE_AGGRESSIVE_WS_TRIM		0x0010
+#define IMAGE_FILE_LARGE_ADDRESS_AWARE		0x0020
+/* Reserved					0x0040 */
+#define IMAGE_FILE_BYTES_REVERSED_LO		0x0080
+#define IMAGE_FILE_32BIT_MACHINE		0x0100
+#define IMAGE_FILE_DEBUG_STRIPPED		0x0200
+#define IMAGE_FILE_REMOVABLE_RUN_FROM_SWAP	0x0400
+#define IMAGE_FILE_NET_RUN_FROM_SWAP		0x0800
+#define IMAGE_FILE_SYSTEM			0x1000
+#define IMAGE_FILE_DLL				0x2000
+#define IMAGE_FILE_UP_SYSTEM_ONLY		0x4000
+#define IMAGE_FILE_BYTES_REVERSED_HI		0x8000
+
+/* Machine types */
+#define IMAGE_FILE_MACHINE_I386			0x014c
+#define IMAGE_FILE_MACHINE_ARM			0x01c0
+#define IMAGE_FILE_MACHINE_THUMB		0x01c2
+#define IMAGE_FILE_MACHINE_ARMNT		0x01c4
+#define IMAGE_FILE_MACHINE_AMD64		0x8664
+#define IMAGE_FILE_MACHINE_ARM64		0xaa64
+#define IMAGE_FILE_MACHINE_RISCV32		0x5032
+#define IMAGE_FILE_MACHINE_RISCV64		0x5064
+
+/* Header magic constants */
+#define IMAGE_NT_OPTIONAL_HDR32_MAGIC		0x010b
+#define IMAGE_NT_OPTIONAL_HDR64_MAGIC		0x020b
+#define IMAGE_DOS_SIGNATURE			0x5a4d     /* MZ   */
+#define IMAGE_NT_SIGNATURE			0x00004550 /* PE00 */
+
+/* Subsystem type */
+#define IMAGE_SUBSYSTEM_EFI_APPLICATION		10
+#define IMAGE_SUBSYSTEM_EFI_BOOT_SERVICE_DRIVER	11
+#define IMAGE_SUBSYSTEM_EFI_RUNTIME_DRIVER	12
+#define IMAGE_SUBSYSTEM_EFI_ROM			13
+
+#define LINUX_ARM64_MAGIC			0x644d5241
+
+#endif /* _ASM_PE_H */
diff --git a/include/linux/pagemap.h b/include/linux/pagemap.h
index 01cbfc17c57b..0db192e4d3ab 100644
--- a/include/linux/pagemap.h
+++ b/include/linux/pagemap.h
@@ -12,6 +12,7 @@
 
 #define PAGE_SIZE	4096
 #define PAGE_SHIFT	12
+#define PAGE_MASK	(PAGE_SIZE - 1)
 #define PAGE_ALIGN(s)	ALIGN(s, PAGE_SIZE)
 #define PAGE_ALIGN_DOWN(x) ALIGN_DOWN(x, PAGE_SIZE)
 
diff --git a/include/linux/pe.h b/include/linux/pe.h
new file mode 100644
index 000000000000..daf09ffffe38
--- /dev/null
+++ b/include/linux/pe.h
@@ -0,0 +1,468 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright 2011 Red Hat, Inc.
+ * All rights reserved.
+ *
+ * Author(s): Peter Jones <pjones@redhat.com>
+ */
+#ifndef __LINUX_PE_H
+#define __LINUX_PE_H
+
+#include <linux/types.h>
+
+/*
+ * Linux EFI stub v1.0 adds the following functionality:
+ * - Loading initrd from the LINUX_EFI_INITRD_MEDIA_GUID device path,
+ * - Loading/starting the kernel from firmware that targets a different
+ *   machine type, via the entrypoint exposed in the .compat PE/COFF section.
+ *
+ * The recommended way of loading and starting v1.0 or later kernels is to use
+ * the LoadImage() and StartImage() EFI boot services, and expose the initrd
+ * via the LINUX_EFI_INITRD_MEDIA_GUID device path.
+ *
+ * Versions older than v1.0 support initrd loading via the image load options
+ * (using initrd=, limited to the volume from which the kernel itself was
+ * loaded), or via arch specific means (bootparams, DT, etc).
+ *
+ * On x86, LoadImage() and StartImage() can be omitted if the EFI handover
+ * protocol is implemented, which can be inferred from the version,
+ * handover_offset and xloadflags fields in the bootparams structure.
+ */
+#define LINUX_EFISTUB_MAJOR_VERSION		0x1
+#define LINUX_EFISTUB_MINOR_VERSION		0x0
+
+#define MZ_MAGIC	0x5a4d	/* "MZ" */
+
+#define PE_MAGIC		0x00004550	/* "PE\0\0" */
+#define PE_OPT_MAGIC_PE32	0x010b
+#define PE_OPT_MAGIC_PE32_ROM	0x0107
+#define PE_OPT_MAGIC_PE32PLUS	0x020b
+
+/* machine type */
+#define	IMAGE_FILE_MACHINE_UNKNOWN	0x0000
+#define	IMAGE_FILE_MACHINE_AM33		0x01d3
+#define	IMAGE_FILE_MACHINE_AMD64	0x8664
+#define	IMAGE_FILE_MACHINE_ARM		0x01c0
+#define	IMAGE_FILE_MACHINE_ARMV7	0x01c4
+#define	IMAGE_FILE_MACHINE_ARM64	0xaa64
+#define	IMAGE_FILE_MACHINE_EBC		0x0ebc
+#define	IMAGE_FILE_MACHINE_I386		0x014c
+#define	IMAGE_FILE_MACHINE_IA64		0x0200
+#define	IMAGE_FILE_MACHINE_M32R		0x9041
+#define	IMAGE_FILE_MACHINE_MIPS16	0x0266
+#define	IMAGE_FILE_MACHINE_MIPSFPU	0x0366
+#define	IMAGE_FILE_MACHINE_MIPSFPU16	0x0466
+#define	IMAGE_FILE_MACHINE_POWERPC	0x01f0
+#define	IMAGE_FILE_MACHINE_POWERPCFP	0x01f1
+#define	IMAGE_FILE_MACHINE_R4000	0x0166
+#define	IMAGE_FILE_MACHINE_RISCV32	0x5032
+#define	IMAGE_FILE_MACHINE_RISCV64	0x5064
+#define	IMAGE_FILE_MACHINE_RISCV128	0x5128
+#define	IMAGE_FILE_MACHINE_SH3		0x01a2
+#define	IMAGE_FILE_MACHINE_SH3DSP	0x01a3
+#define	IMAGE_FILE_MACHINE_SH3E		0x01a4
+#define	IMAGE_FILE_MACHINE_SH4		0x01a6
+#define	IMAGE_FILE_MACHINE_SH5		0x01a8
+#define	IMAGE_FILE_MACHINE_THUMB	0x01c2
+#define	IMAGE_FILE_MACHINE_WCEMIPSV2	0x0169
+
+/* flags */
+#define IMAGE_FILE_RELOCS_STRIPPED           0x0001
+#define IMAGE_FILE_EXECUTABLE_IMAGE          0x0002
+#define IMAGE_FILE_LINE_NUMS_STRIPPED        0x0004
+#define IMAGE_FILE_LOCAL_SYMS_STRIPPED       0x0008
+#define IMAGE_FILE_AGGRESSIVE_WS_TRIM        0x0010
+#define IMAGE_FILE_LARGE_ADDRESS_AWARE       0x0020
+#define IMAGE_FILE_16BIT_MACHINE             0x0040
+#define IMAGE_FILE_BYTES_REVERSED_LO         0x0080
+#define IMAGE_FILE_32BIT_MACHINE             0x0100
+#define IMAGE_FILE_DEBUG_STRIPPED            0x0200
+#define IMAGE_FILE_REMOVABLE_RUN_FROM_SWAP   0x0400
+#define IMAGE_FILE_NET_RUN_FROM_SWAP         0x0800
+#define IMAGE_FILE_SYSTEM                    0x1000
+#define IMAGE_FILE_DLL                       0x2000
+#define IMAGE_FILE_UP_SYSTEM_ONLY            0x4000
+#define IMAGE_FILE_BYTES_REVERSED_HI         0x8000
+
+#define IMAGE_FILE_OPT_ROM_MAGIC	0x107
+#define IMAGE_FILE_OPT_PE32_MAGIC	0x10b
+#define IMAGE_FILE_OPT_PE32_PLUS_MAGIC	0x20b
+
+#define IMAGE_SUBSYSTEM_UNKNOWN			 0
+#define IMAGE_SUBSYSTEM_NATIVE			 1
+#define IMAGE_SUBSYSTEM_WINDOWS_GUI		 2
+#define IMAGE_SUBSYSTEM_WINDOWS_CUI		 3
+#define IMAGE_SUBSYSTEM_POSIX_CUI		 7
+#define IMAGE_SUBSYSTEM_WINDOWS_CE_GUI		 9
+#define IMAGE_SUBSYSTEM_EFI_APPLICATION		10
+#define IMAGE_SUBSYSTEM_EFI_BOOT_SERVICE_DRIVER	11
+#define IMAGE_SUBSYSTEM_EFI_RUNTIME_DRIVER	12
+#define IMAGE_SUBSYSTEM_EFI_ROM_IMAGE		13
+#define IMAGE_SUBSYSTEM_XBOX			14
+
+#define IMAGE_DLL_CHARACTERISTICS_DYNAMIC_BASE          0x0040
+#define IMAGE_DLL_CHARACTERISTICS_FORCE_INTEGRITY       0x0080
+#define IMAGE_DLL_CHARACTERISTICS_NX_COMPAT             0x0100
+#define IMAGE_DLLCHARACTERISTICS_NO_ISOLATION           0x0200
+#define IMAGE_DLLCHARACTERISTICS_NO_SEH                 0x0400
+#define IMAGE_DLLCHARACTERISTICS_NO_BIND                0x0800
+#define IMAGE_DLLCHARACTERISTICS_WDM_DRIVER             0x2000
+#define IMAGE_DLLCHARACTERISTICS_TERMINAL_SERVER_AWARE  0x8000
+
+/* they actually defined 0x00000000 as well, but I think we'll skip that one. */
+#define IMAGE_SCN_RESERVED_0	0x00000001
+#define IMAGE_SCN_RESERVED_1	0x00000002
+#define IMAGE_SCN_RESERVED_2	0x00000004
+#define IMAGE_SCN_TYPE_NO_PAD	0x00000008 /* don't pad - obsolete */
+#define IMAGE_SCN_RESERVED_3	0x00000010
+#define IMAGE_SCN_CNT_CODE	0x00000020 /* .text */
+#define IMAGE_SCN_CNT_INITIALIZED_DATA 0x00000040 /* .data */
+#define IMAGE_SCN_CNT_UNINITIALIZED_DATA 0x00000080 /* .bss */
+#define IMAGE_SCN_LNK_OTHER	0x00000100 /* reserved */
+#define IMAGE_SCN_LNK_INFO	0x00000200 /* .drectve comments */
+#define IMAGE_SCN_RESERVED_4	0x00000400
+#define IMAGE_SCN_LNK_REMOVE	0x00000800 /* .o only - scn to be rm'd*/
+#define IMAGE_SCN_LNK_COMDAT	0x00001000 /* .o only - COMDAT data */
+#define IMAGE_SCN_RESERVED_5	0x00002000 /* spec omits this */
+#define IMAGE_SCN_RESERVED_6	0x00004000 /* spec omits this */
+#define IMAGE_SCN_GPREL		0x00008000 /* global pointer referenced data */
+/* spec lists 0x20000 twice, I suspect they meant 0x10000 for one of them */
+#define IMAGE_SCN_MEM_PURGEABLE	0x00010000 /* reserved for "future" use */
+#define IMAGE_SCN_16BIT		0x00020000 /* reserved for "future" use */
+#define IMAGE_SCN_LOCKED	0x00040000 /* reserved for "future" use */
+#define IMAGE_SCN_PRELOAD	0x00080000 /* reserved for "future" use */
+/* and here they just stuck a 1-byte integer in the middle of a bitfield */
+#define IMAGE_SCN_ALIGN_1BYTES	0x00100000 /* it does what it says on the box */
+#define IMAGE_SCN_ALIGN_2BYTES	0x00200000
+#define IMAGE_SCN_ALIGN_4BYTES	0x00300000
+#define IMAGE_SCN_ALIGN_8BYTES	0x00400000
+#define IMAGE_SCN_ALIGN_16BYTES	0x00500000
+#define IMAGE_SCN_ALIGN_32BYTES	0x00600000
+#define IMAGE_SCN_ALIGN_64BYTES	0x00700000
+#define IMAGE_SCN_ALIGN_128BYTES 0x00800000
+#define IMAGE_SCN_ALIGN_256BYTES 0x00900000
+#define IMAGE_SCN_ALIGN_512BYTES 0x00a00000
+#define IMAGE_SCN_ALIGN_1024BYTES 0x00b00000
+#define IMAGE_SCN_ALIGN_2048BYTES 0x00c00000
+#define IMAGE_SCN_ALIGN_4096BYTES 0x00d00000
+#define IMAGE_SCN_ALIGN_8192BYTES 0x00e00000
+#define IMAGE_SCN_LNK_NRELOC_OVFL 0x01000000 /* extended relocations */
+#define IMAGE_SCN_MEM_DISCARDABLE 0x02000000 /* scn can be discarded */
+#define IMAGE_SCN_MEM_NOT_CACHED 0x04000000 /* cannot be cached */
+#define IMAGE_SCN_MEM_NOT_PAGED	0x08000000 /* not pageable */
+#define IMAGE_SCN_MEM_SHARED	0x10000000 /* can be shared */
+#define IMAGE_SCN_MEM_EXECUTE	0x20000000 /* can be executed as code */
+#define IMAGE_SCN_MEM_READ	0x40000000 /* readable */
+#define IMAGE_SCN_MEM_WRITE	0x80000000 /* writeable */
+
+#define IMAGE_DEBUG_TYPE_CODEVIEW	2
+
+#ifndef __ASSEMBLY__
+
+struct mz_hdr {
+	uint16_t magic;		/* MZ_MAGIC */
+	uint16_t lbsize;	/* size of last used block */
+	uint16_t blocks;	/* pages in file, 0x3 */
+	uint16_t relocs;	/* relocations */
+	uint16_t hdrsize;	/* header size in "paragraphs" */
+	uint16_t min_extra_pps;	/* .bss */
+	uint16_t max_extra_pps;	/* runtime limit for the arena size */
+	uint16_t ss;		/* relative stack segment */
+	uint16_t sp;		/* initial %sp register */
+	uint16_t checksum;	/* word checksum */
+	uint16_t ip;		/* initial %ip register */
+	uint16_t cs;		/* initial %cs relative to load segment */
+	uint16_t reloc_table_offset;	/* offset of the first relocation */
+	uint16_t overlay_num;	/* overlay number.  set to 0. */
+	uint16_t reserved0[4];	/* reserved */
+	uint16_t oem_id;	/* oem identifier */
+	uint16_t oem_info;	/* oem specific */
+	uint16_t reserved1[10];	/* reserved */
+	uint32_t peaddr;	/* address of pe header */
+	char     message[];	/* message to print */
+};
+
+struct mz_reloc {
+	uint16_t offset;
+	uint16_t segment;
+};
+
+struct pe_hdr {
+	uint32_t magic;		/* PE magic */
+	uint16_t machine;	/* machine type */
+	uint16_t sections;	/* number of sections */
+	uint32_t timestamp;	/* time_t */
+	uint32_t symbol_table;	/* symbol table offset */
+	uint32_t symbols;	/* number of symbols */
+	uint16_t opt_hdr_size;	/* size of optional header */
+	uint16_t flags;		/* flags */
+};
+
+/* the fact that pe32 isn't padded where pe32+ is 64-bit means union won't
+ * work right.  vomit. */
+struct pe32_opt_hdr {
+	/* "standard" header */
+	uint16_t magic;		/* file type */
+	uint8_t  ld_major;	/* linker major version */
+	uint8_t  ld_minor;	/* linker minor version */
+	uint32_t text_size;	/* size of text section(s) */
+	uint32_t data_size;	/* size of data section(s) */
+	uint32_t bss_size;	/* size of bss section(s) */
+	uint32_t entry_point;	/* file offset of entry point */
+	uint32_t code_base;	/* relative code addr in ram */
+	uint32_t data_base;	/* relative data addr in ram */
+	/* "windows" header */
+	uint32_t image_base;	/* preferred load address */
+	uint32_t section_align;	/* alignment in bytes */
+	uint32_t file_align;	/* file alignment in bytes */
+	uint16_t os_major;	/* major OS version */
+	uint16_t os_minor;	/* minor OS version */
+	uint16_t image_major;	/* major image version */
+	uint16_t image_minor;	/* minor image version */
+	uint16_t subsys_major;	/* major subsystem version */
+	uint16_t subsys_minor;	/* minor subsystem version */
+	uint32_t win32_version;	/* reserved, must be 0 */
+	uint32_t image_size;	/* image size */
+	uint32_t header_size;	/* header size rounded up to
+				   file_align */
+	uint32_t csum;		/* checksum */
+	uint16_t subsys;	/* subsystem */
+	uint16_t dll_flags;	/* more flags! */
+	uint32_t stack_size_req;/* amt of stack requested */
+	uint32_t stack_size;	/* amt of stack required */
+	uint32_t heap_size_req;	/* amt of heap requested */
+	uint32_t heap_size;	/* amt of heap required */
+	uint32_t loader_flags;	/* reserved, must be 0 */
+	uint32_t data_dirs;	/* number of data dir entries */
+};
+
+struct pe32plus_opt_hdr {
+	uint16_t magic;		/* file type */
+	uint8_t  ld_major;	/* linker major version */
+	uint8_t  ld_minor;	/* linker minor version */
+	uint32_t text_size;	/* size of text section(s) */
+	uint32_t data_size;	/* size of data section(s) */
+	uint32_t bss_size;	/* size of bss section(s) */
+	uint32_t entry_point;	/* file offset of entry point */
+	uint32_t code_base;	/* relative code addr in ram */
+	/* "windows" header */
+	uint64_t image_base;	/* preferred load address */
+	uint32_t section_align;	/* alignment in bytes */
+	uint32_t file_align;	/* file alignment in bytes */
+	uint16_t os_major;	/* major OS version */
+	uint16_t os_minor;	/* minor OS version */
+	uint16_t image_major;	/* major image version */
+	uint16_t image_minor;	/* minor image version */
+	uint16_t subsys_major;	/* major subsystem version */
+	uint16_t subsys_minor;	/* minor subsystem version */
+	uint32_t win32_version;	/* reserved, must be 0 */
+	uint32_t image_size;	/* image size */
+	uint32_t header_size;	/* header size rounded up to
+				   file_align */
+	uint32_t csum;		/* checksum */
+	uint16_t subsys;	/* subsystem */
+	uint16_t dll_flags;	/* more flags! */
+	uint64_t stack_size_req;/* amt of stack requested */
+	uint64_t stack_size;	/* amt of stack required */
+	uint64_t heap_size_req;	/* amt of heap requested */
+	uint64_t heap_size;	/* amt of heap required */
+	uint32_t loader_flags;	/* reserved, must be 0 */
+	uint32_t data_dirs;	/* number of data dir entries */
+};
+
+struct data_dirent {
+	uint32_t virtual_address;	/* relative to load address */
+	uint32_t size;
+};
+
+struct data_directory {
+	struct data_dirent exports;		/* .edata */
+	struct data_dirent imports;		/* .idata */
+	struct data_dirent resources;		/* .rsrc */
+	struct data_dirent exceptions;		/* .pdata */
+	struct data_dirent certs;		/* certs */
+	struct data_dirent base_relocations;	/* .reloc */
+	struct data_dirent debug;		/* .debug */
+	struct data_dirent arch;		/* reservered */
+	struct data_dirent global_ptr;		/* global pointer reg. Size=0 */
+	struct data_dirent tls;			/* .tls */
+	struct data_dirent load_config;		/* load configuration structure */
+	struct data_dirent bound_imports;	/* no idea */
+	struct data_dirent import_addrs;	/* import address table */
+	struct data_dirent delay_imports;	/* delay-load import table */
+	struct data_dirent clr_runtime_hdr;	/* .cor (object only) */
+	struct data_dirent reserved;
+};
+
+struct section_header {
+	char name[8];			/* name or "/12\0" string tbl offset */
+	uint32_t virtual_size;		/* size of loaded section in ram */
+	uint32_t virtual_address;	/* relative virtual address */
+	uint32_t raw_data_size;		/* size of the section */
+	uint32_t data_addr;		/* file pointer to first page of sec */
+	uint32_t relocs;		/* file pointer to relocation entries */
+	uint32_t line_numbers;		/* line numbers! */
+	uint16_t num_relocs;		/* number of relocations */
+	uint16_t num_lin_numbers;	/* srsly. */
+	uint32_t flags;
+};
+
+enum x64_coff_reloc_type {
+	IMAGE_REL_AMD64_ABSOLUTE = 0,
+	IMAGE_REL_AMD64_ADDR64,
+	IMAGE_REL_AMD64_ADDR32,
+	IMAGE_REL_AMD64_ADDR32N,
+	IMAGE_REL_AMD64_REL32,
+	IMAGE_REL_AMD64_REL32_1,
+	IMAGE_REL_AMD64_REL32_2,
+	IMAGE_REL_AMD64_REL32_3,
+	IMAGE_REL_AMD64_REL32_4,
+	IMAGE_REL_AMD64_REL32_5,
+	IMAGE_REL_AMD64_SECTION,
+	IMAGE_REL_AMD64_SECREL,
+	IMAGE_REL_AMD64_SECREL7,
+	IMAGE_REL_AMD64_TOKEN,
+	IMAGE_REL_AMD64_SREL32,
+	IMAGE_REL_AMD64_PAIR,
+	IMAGE_REL_AMD64_SSPAN32,
+};
+
+enum arm_coff_reloc_type {
+	IMAGE_REL_ARM_ABSOLUTE,
+	IMAGE_REL_ARM_ADDR32,
+	IMAGE_REL_ARM_ADDR32N,
+	IMAGE_REL_ARM_BRANCH2,
+	IMAGE_REL_ARM_BRANCH1,
+	IMAGE_REL_ARM_SECTION,
+	IMAGE_REL_ARM_SECREL,
+};
+
+enum sh_coff_reloc_type {
+	IMAGE_REL_SH3_ABSOLUTE,
+	IMAGE_REL_SH3_DIRECT16,
+	IMAGE_REL_SH3_DIRECT32,
+	IMAGE_REL_SH3_DIRECT8,
+	IMAGE_REL_SH3_DIRECT8_WORD,
+	IMAGE_REL_SH3_DIRECT8_LONG,
+	IMAGE_REL_SH3_DIRECT4,
+	IMAGE_REL_SH3_DIRECT4_WORD,
+	IMAGE_REL_SH3_DIRECT4_LONG,
+	IMAGE_REL_SH3_PCREL8_WORD,
+	IMAGE_REL_SH3_PCREL8_LONG,
+	IMAGE_REL_SH3_PCREL12_WORD,
+	IMAGE_REL_SH3_STARTOF_SECTION,
+	IMAGE_REL_SH3_SIZEOF_SECTION,
+	IMAGE_REL_SH3_SECTION,
+	IMAGE_REL_SH3_SECREL,
+	IMAGE_REL_SH3_DIRECT32_NB,
+	IMAGE_REL_SH3_GPREL4_LONG,
+	IMAGE_REL_SH3_TOKEN,
+	IMAGE_REL_SHM_PCRELPT,
+	IMAGE_REL_SHM_REFLO,
+	IMAGE_REL_SHM_REFHALF,
+	IMAGE_REL_SHM_RELLO,
+	IMAGE_REL_SHM_RELHALF,
+	IMAGE_REL_SHM_PAIR,
+	IMAGE_REL_SHM_NOMODE,
+};
+
+enum ppc_coff_reloc_type {
+	IMAGE_REL_PPC_ABSOLUTE,
+	IMAGE_REL_PPC_ADDR64,
+	IMAGE_REL_PPC_ADDR32,
+	IMAGE_REL_PPC_ADDR24,
+	IMAGE_REL_PPC_ADDR16,
+	IMAGE_REL_PPC_ADDR14,
+	IMAGE_REL_PPC_REL24,
+	IMAGE_REL_PPC_REL14,
+	IMAGE_REL_PPC_ADDR32N,
+	IMAGE_REL_PPC_SECREL,
+	IMAGE_REL_PPC_SECTION,
+	IMAGE_REL_PPC_SECREL16,
+	IMAGE_REL_PPC_REFHI,
+	IMAGE_REL_PPC_REFLO,
+	IMAGE_REL_PPC_PAIR,
+	IMAGE_REL_PPC_SECRELLO,
+	IMAGE_REL_PPC_GPREL,
+	IMAGE_REL_PPC_TOKEN,
+};
+
+enum x86_coff_reloc_type {
+	IMAGE_REL_I386_ABSOLUTE,
+	IMAGE_REL_I386_DIR16,
+	IMAGE_REL_I386_REL16,
+	IMAGE_REL_I386_DIR32,
+	IMAGE_REL_I386_DIR32NB,
+	IMAGE_REL_I386_SEG12,
+	IMAGE_REL_I386_SECTION,
+	IMAGE_REL_I386_SECREL,
+	IMAGE_REL_I386_TOKEN,
+	IMAGE_REL_I386_SECREL7,
+	IMAGE_REL_I386_REL32,
+};
+
+enum ia64_coff_reloc_type {
+	IMAGE_REL_IA64_ABSOLUTE,
+	IMAGE_REL_IA64_IMM14,
+	IMAGE_REL_IA64_IMM22,
+	IMAGE_REL_IA64_IMM64,
+	IMAGE_REL_IA64_DIR32,
+	IMAGE_REL_IA64_DIR64,
+	IMAGE_REL_IA64_PCREL21B,
+	IMAGE_REL_IA64_PCREL21M,
+	IMAGE_REL_IA64_PCREL21F,
+	IMAGE_REL_IA64_GPREL22,
+	IMAGE_REL_IA64_LTOFF22,
+	IMAGE_REL_IA64_SECTION,
+	IMAGE_REL_IA64_SECREL22,
+	IMAGE_REL_IA64_SECREL64I,
+	IMAGE_REL_IA64_SECREL32,
+	IMAGE_REL_IA64_DIR32NB,
+	IMAGE_REL_IA64_SREL14,
+	IMAGE_REL_IA64_SREL22,
+	IMAGE_REL_IA64_SREL32,
+	IMAGE_REL_IA64_UREL32,
+	IMAGE_REL_IA64_PCREL60X,
+	IMAGE_REL_IA64_PCREL60B,
+	IMAGE_REL_IA64_PCREL60F,
+	IMAGE_REL_IA64_PCREL60I,
+	IMAGE_REL_IA64_PCREL60M,
+	IMAGE_REL_IA64_IMMGPREL6,
+	IMAGE_REL_IA64_TOKEN,
+	IMAGE_REL_IA64_GPREL32,
+	IMAGE_REL_IA64_ADDEND,
+};
+
+struct coff_reloc {
+	uint32_t virtual_address;
+	uint32_t symbol_table_index;
+	union {
+		enum x64_coff_reloc_type  x64_type;
+		enum arm_coff_reloc_type  arm_type;
+		enum sh_coff_reloc_type   sh_type;
+		enum ppc_coff_reloc_type  ppc_type;
+		enum x86_coff_reloc_type  x86_type;
+		enum ia64_coff_reloc_type ia64_type;
+		uint16_t data;
+	};
+};
+
+/*
+ * Definitions for the contents of the certs data block
+ */
+#define WIN_CERT_TYPE_PKCS_SIGNED_DATA	0x0002
+#define WIN_CERT_TYPE_EFI_OKCS115	0x0EF0
+#define WIN_CERT_TYPE_EFI_GUID		0x0EF1
+
+#define WIN_CERT_REVISION_1_0	0x0100
+#define WIN_CERT_REVISION_2_0	0x0200
+
+struct win_certificate {
+	uint32_t length;
+	uint16_t revision;
+	uint16_t cert_type;
+};
+
+#endif /* !__ASSEMBLY__ */
+
+#endif /* __LINUX_PE_H */
diff --git a/include/pe.h b/include/pe.h
new file mode 100644
index 000000000000..9170e7b44f77
--- /dev/null
+++ b/include/pe.h
@@ -0,0 +1,316 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
+/*
+ *  Portable Executable binary format structures
+ *
+ *  Copyright (c) 2016 Alexander Graf
+ *
+ *  Based on wine code
+ */
+
+#ifndef _PE_H
+#define _PE_H
+
+#include <asm-generic/pe.h>
+
+typedef struct _IMAGE_DOS_HEADER {
+	uint16_t e_magic;	/* 00: MZ Header signature */
+	uint16_t e_cblp;	/* 02: Bytes on last page of file */
+	uint16_t e_cp;		/* 04: Pages in file */
+	uint16_t e_crlc;	/* 06: Relocations */
+	uint16_t e_cparhdr;	/* 08: Size of header in paragraphs */
+	uint16_t e_minalloc;	/* 0a: Minimum extra paragraphs needed */
+	uint16_t e_maxalloc;	/* 0c: Maximum extra paragraphs needed */
+	uint16_t e_ss;		/* 0e: Initial (relative) SS value */
+	uint16_t e_sp;		/* 10: Initial SP value */
+	uint16_t e_csum;	/* 12: Checksum */
+	uint16_t e_ip;		/* 14: Initial IP value */
+	uint16_t e_cs;		/* 16: Initial (relative) CS value */
+	uint16_t e_lfarlc;	/* 18: File address of relocation table */
+	uint16_t e_ovno;	/* 1a: Overlay number */
+	uint16_t e_res[4];	/* 1c: Reserved words */
+	uint16_t e_oemid;	/* 24: OEM identifier (for e_oeminfo) */
+	uint16_t e_oeminfo;	/* 26: OEM information; e_oemid specific */
+	uint16_t e_res2[10];	/* 28: Reserved words */
+	uint32_t e_lfanew;	/* 3c: Offset to extended header */
+} IMAGE_DOS_HEADER, *PIMAGE_DOS_HEADER;
+
+typedef struct _IMAGE_FILE_HEADER {
+	uint16_t Machine;
+	uint16_t NumberOfSections;
+	uint32_t TimeDateStamp;
+	uint32_t PointerToSymbolTable;
+	uint32_t NumberOfSymbols;
+	uint16_t SizeOfOptionalHeader;
+	uint16_t Characteristics;
+} IMAGE_FILE_HEADER, *PIMAGE_FILE_HEADER;
+
+typedef struct _IMAGE_DATA_DIRECTORY {
+	uint32_t VirtualAddress;
+	uint32_t Size;
+} IMAGE_DATA_DIRECTORY, *PIMAGE_DATA_DIRECTORY;
+
+#define IMAGE_NUMBEROF_DIRECTORY_ENTRIES 16
+
+typedef struct _IMAGE_OPTIONAL_HEADER64 {
+	uint16_t Magic; /* 0x20b */
+	uint8_t  MajorLinkerVersion;
+	uint8_t  MinorLinkerVersion;
+	uint32_t SizeOfCode;
+	uint32_t SizeOfInitializedData;
+	uint32_t SizeOfUninitializedData;
+	uint32_t AddressOfEntryPoint;
+	uint32_t BaseOfCode;
+	uint64_t ImageBase;
+	uint32_t SectionAlignment;
+	uint32_t FileAlignment;
+	uint16_t MajorOperatingSystemVersion;
+	uint16_t MinorOperatingSystemVersion;
+	uint16_t MajorImageVersion;
+	uint16_t MinorImageVersion;
+	uint16_t MajorSubsystemVersion;
+	uint16_t MinorSubsystemVersion;
+	uint32_t Win32VersionValue;
+	uint32_t SizeOfImage;
+	uint32_t SizeOfHeaders;
+	uint32_t CheckSum;
+	uint16_t Subsystem;
+	uint16_t DllCharacteristics;
+	uint64_t SizeOfStackReserve;
+	uint64_t SizeOfStackCommit;
+	uint64_t SizeOfHeapReserve;
+	uint64_t SizeOfHeapCommit;
+	uint32_t LoaderFlags;
+	uint32_t NumberOfRvaAndSizes;
+	IMAGE_DATA_DIRECTORY DataDirectory[IMAGE_NUMBEROF_DIRECTORY_ENTRIES];
+} IMAGE_OPTIONAL_HEADER64, *PIMAGE_OPTIONAL_HEADER64;
+
+typedef struct _IMAGE_NT_HEADERS64 {
+	uint32_t Signature;
+	IMAGE_FILE_HEADER FileHeader;
+	IMAGE_OPTIONAL_HEADER64 OptionalHeader;
+} IMAGE_NT_HEADERS64, *PIMAGE_NT_HEADERS64;
+
+typedef struct _IMAGE_OPTIONAL_HEADER {
+
+	/* Standard fields */
+
+	uint16_t Magic; /* 0x10b or 0x107 */     /* 0x00 */
+	uint8_t  MajorLinkerVersion;
+	uint8_t  MinorLinkerVersion;
+	uint32_t SizeOfCode;
+	uint32_t SizeOfInitializedData;
+	uint32_t SizeOfUninitializedData;
+	uint32_t AddressOfEntryPoint;            /* 0x10 */
+	uint32_t BaseOfCode;
+	uint32_t BaseOfData;
+
+	/* NT additional fields */
+
+	uint32_t ImageBase;
+	uint32_t SectionAlignment;               /* 0x20 */
+	uint32_t FileAlignment;
+	uint16_t MajorOperatingSystemVersion;
+	uint16_t MinorOperatingSystemVersion;
+	uint16_t MajorImageVersion;
+	uint16_t MinorImageVersion;
+	uint16_t MajorSubsystemVersion;          /* 0x30 */
+	uint16_t MinorSubsystemVersion;
+	uint32_t Win32VersionValue;
+	uint32_t SizeOfImage;
+	uint32_t SizeOfHeaders;
+	uint32_t CheckSum;                       /* 0x40 */
+	uint16_t Subsystem;
+	uint16_t DllCharacteristics;
+	uint32_t SizeOfStackReserve;
+	uint32_t SizeOfStackCommit;
+	uint32_t SizeOfHeapReserve;              /* 0x50 */
+	uint32_t SizeOfHeapCommit;
+	uint32_t LoaderFlags;
+	uint32_t NumberOfRvaAndSizes;
+	IMAGE_DATA_DIRECTORY DataDirectory[IMAGE_NUMBEROF_DIRECTORY_ENTRIES]; /* 0x60 */
+	/* 0xE0 */
+} IMAGE_OPTIONAL_HEADER32, *PIMAGE_OPTIONAL_HEADER32;
+
+typedef struct _IMAGE_NT_HEADERS {
+	uint32_t Signature; /* "PE"\0\0 */       /* 0x00 */
+	IMAGE_FILE_HEADER FileHeader;         /* 0x04 */
+	IMAGE_OPTIONAL_HEADER32 OptionalHeader;       /* 0x18 */
+} IMAGE_NT_HEADERS32, *PIMAGE_NT_HEADERS32;
+
+#define IMAGE_SIZEOF_SHORT_NAME 8
+
+typedef struct _IMAGE_SECTION_HEADER {
+	uint8_t	Name[IMAGE_SIZEOF_SHORT_NAME];
+	union {
+		uint32_t PhysicalAddress;
+		uint32_t VirtualSize;
+	} Misc;
+	uint32_t VirtualAddress;
+	uint32_t SizeOfRawData;
+	uint32_t PointerToRawData;
+	uint32_t PointerToRelocations;
+	uint32_t PointerToLinenumbers;
+	uint16_t NumberOfRelocations;
+	uint16_t NumberOfLinenumbers;
+	uint32_t Characteristics;
+} IMAGE_SECTION_HEADER, *PIMAGE_SECTION_HEADER;
+
+/* Indices for Optional Header Data Directories */
+#define IMAGE_DIRECTORY_ENTRY_SECURITY		4
+#define IMAGE_DIRECTORY_ENTRY_BASERELOC         5
+
+typedef struct _IMAGE_BASE_RELOCATION
+{
+        uint32_t VirtualAddress;
+        uint32_t SizeOfBlock;
+        /* WORD TypeOffset[1]; */
+} IMAGE_BASE_RELOCATION,*PIMAGE_BASE_RELOCATION;
+
+typedef struct _IMAGE_RELOCATION
+{
+	union {
+		uint32_t VirtualAddress;
+		uint32_t RelocCount;
+	} DUMMYUNIONNAME;
+	uint32_t SymbolTableIndex;
+	uint16_t Type;
+} IMAGE_RELOCATION, *PIMAGE_RELOCATION;
+
+#define IMAGE_SIZEOF_RELOCATION 10
+
+/* generic relocation types */
+#define IMAGE_REL_BASED_ABSOLUTE                0
+#define IMAGE_REL_BASED_HIGH                    1
+#define IMAGE_REL_BASED_LOW                     2
+#define IMAGE_REL_BASED_HIGHLOW                 3
+#define IMAGE_REL_BASED_HIGHADJ                 4
+#define IMAGE_REL_BASED_MIPS_JMPADDR            5
+#define IMAGE_REL_BASED_ARM_MOV32A              5 /* yes, 5 too */
+#define IMAGE_REL_BASED_ARM_MOV32               5 /* yes, 5 too */
+#define IMAGE_REL_BASED_RISCV_HI20		5 /* yes, 5 too */
+#define IMAGE_REL_BASED_SECTION                 6
+#define IMAGE_REL_BASED_REL                     7
+#define IMAGE_REL_BASED_ARM_MOV32T              7 /* yes, 7 too */
+#define IMAGE_REL_BASED_THUMB_MOV32             7 /* yes, 7 too */
+#define IMAGE_REL_BASED_RISCV_LOW12I		7 /* yes, 7 too */
+#define IMAGE_REL_BASED_RISCV_LOW12S		8
+#define IMAGE_REL_BASED_MIPS_JMPADDR16          9
+#define IMAGE_REL_BASED_IA64_IMM64              9 /* yes, 9 too */
+#define IMAGE_REL_BASED_DIR64                   10
+#define IMAGE_REL_BASED_HIGH3ADJ                11
+
+/* ARM relocation types */
+#define IMAGE_REL_ARM_ABSOLUTE          0x0000
+#define IMAGE_REL_ARM_ADDR              0x0001
+#define IMAGE_REL_ARM_ADDR32NB          0x0002
+#define IMAGE_REL_ARM_BRANCH24          0x0003
+#define IMAGE_REL_ARM_BRANCH11          0x0004
+#define IMAGE_REL_ARM_TOKEN             0x0005
+#define IMAGE_REL_ARM_GPREL12           0x0006
+#define IMAGE_REL_ARM_GPREL7            0x0007
+#define IMAGE_REL_ARM_BLX24             0x0008
+#define IMAGE_REL_ARM_BLX11             0x0009
+#define IMAGE_REL_ARM_SECTION           0x000E
+#define IMAGE_REL_ARM_SECREL            0x000F
+#define IMAGE_REL_ARM_MOV32A            0x0010
+#define IMAGE_REL_ARM_MOV32T            0x0011
+#define IMAGE_REL_ARM_BRANCH20T         0x0012
+#define IMAGE_REL_ARM_BRANCH24T         0x0014
+#define IMAGE_REL_ARM_BLX23T            0x0015
+
+/* ARM64 relocation types */
+#define IMAGE_REL_ARM64_ABSOLUTE        0x0000
+#define IMAGE_REL_ARM64_ADDR32          0x0001
+#define IMAGE_REL_ARM64_ADDR32NB        0x0002
+#define IMAGE_REL_ARM64_BRANCH26        0x0003
+#define IMAGE_REL_ARM64_PAGEBASE_REL21  0x0004
+#define IMAGE_REL_ARM64_REL21           0x0005
+#define IMAGE_REL_ARM64_PAGEOFFSET_12A  0x0006
+#define IMAGE_REL_ARM64_PAGEOFFSET_12L  0x0007
+#define IMAGE_REL_ARM64_SECREL          0x0008
+#define IMAGE_REL_ARM64_SECREL_LOW12A   0x0009
+#define IMAGE_REL_ARM64_SECREL_HIGH12A  0x000A
+#define IMAGE_REL_ARM64_SECREL_LOW12L   0x000B
+#define IMAGE_REL_ARM64_TOKEN           0x000C
+#define IMAGE_REL_ARM64_SECTION         0x000D
+#define IMAGE_REL_ARM64_ADDR64          0x000E
+
+/* AMD64 relocation types */
+#define IMAGE_REL_AMD64_ABSOLUTE        0x0000
+#define IMAGE_REL_AMD64_ADDR64          0x0001
+#define IMAGE_REL_AMD64_ADDR32          0x0002
+#define IMAGE_REL_AMD64_ADDR32NB        0x0003
+#define IMAGE_REL_AMD64_REL32           0x0004
+#define IMAGE_REL_AMD64_REL32_1         0x0005
+#define IMAGE_REL_AMD64_REL32_2         0x0006
+#define IMAGE_REL_AMD64_REL32_3         0x0007
+#define IMAGE_REL_AMD64_REL32_4         0x0008
+#define IMAGE_REL_AMD64_REL32_5         0x0009
+#define IMAGE_REL_AMD64_SECTION         0x000A
+#define IMAGE_REL_AMD64_SECREL          0x000B
+#define IMAGE_REL_AMD64_SECREL7         0x000C
+#define IMAGE_REL_AMD64_TOKEN           0x000D
+#define IMAGE_REL_AMD64_SREL32          0x000E
+#define IMAGE_REL_AMD64_PAIR            0x000F
+#define IMAGE_REL_AMD64_SSPAN32         0x0010
+
+/* certificate appended to PE image */
+typedef struct _WIN_CERTIFICATE {
+	uint32_t dwLength;
+	uint16_t wRevision;
+	uint16_t wCertificateType;
+	uint8_t bCertificate[];
+} WIN_CERTIFICATE, *LPWIN_CERTIFICATE;
+
+/* Definitions for the contents of the certs data block */
+#define WIN_CERT_TYPE_PKCS_SIGNED_DATA	0x0002
+#define WIN_CERT_TYPE_EFI_OKCS115	0x0EF0
+#define WIN_CERT_TYPE_EFI_GUID		0x0EF1
+
+#define WIN_CERT_REVISION_1_0		0x0100
+#define WIN_CERT_REVISION_2_0		0x0200
+
+struct pe_image {
+	u64 entry;
+	struct resource *code;
+	void *bin;
+
+	u16 image_type;
+	IMAGE_SECTION_HEADER *sections;
+	IMAGE_NT_HEADERS32 *nt;
+	int num_sections;
+};
+
+#ifdef CONFIG_PE
+struct pe_image *pe_open(const char *filename);
+unsigned long pe_get_mem_size(struct pe_image *pe);
+struct pe_image *pe_open_buf(void *bin, size_t pe_size);
+int pe_load(struct pe_image *pe);
+void pe_close(struct pe_image *pe);
+#else
+static inline struct pe_image *pe_open(const char *filename)
+{
+	return ERR_PTR(-ENOSYS);
+}
+
+static inline unsigned long pe_get_mem_size(struct pe_image *pe)
+{
+	return 0;
+}
+
+static inline struct pe_image *pe_open_buf(void *bin, size_t pe_size)
+{
+	return ERR_PTR(-ENOSYS);
+}
+
+static inline int pe_load(struct pe_image *pe)
+{
+	return -ENOSYS;
+}
+
+static inline void pe_close(struct pe_image *pe)
+{
+}
+#endif
+
+#endif /* _PE_H */
-- 
2.39.2



