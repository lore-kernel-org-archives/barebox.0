Delivery-date: Thu, 18 Dec 2025 12:41:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWCNb-00Coat-2A
	for lore@lore.pengutronix.de;
	Thu, 18 Dec 2025 12:41:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWCN0-0002YB-C1
	for lore@pengutronix.de; Thu, 18 Dec 2025 12:41:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=560CdPAVCmWqOXqpP8qnp3yv2imN6Gqjl2ZrgVKKwxM=; b=qM+yv015pLI2VvxhDkXgDb51CF
	ItSDx7fhx0lAP0zinx6pF6s+/tKiammPD7B0CLjgG+aRod1oValqMAttTc5H7zdvGnX5J/dqXAs9y
	yip8ToqF3MhvZLhILwZirWLAlCnqvYEXBDLcRdwhyXnMHVc6iBN2YCjpOGblHJqI8k3DQJA5Gjfgy
	sR4O7tosB+xR7VHbL/h/Ziu0sn7+bFsmZYYHSY9usleu9r5BfSQdLqPqLKBBH8579KOZgXzDO0hN+
	6iczY4wAf4Jn8pJIP8rYFQee2JuOi6O8aa5Orqmfd+tJ1uHOLNQlol3H0KowTxSwCJ2O6cXWAjGv2
	vbSj7LeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWCKT-00000008Lgc-1iTG;
	Thu, 18 Dec 2025 11:37:57 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWCJk-00000008Kai-0ri7
	for barebox@bombadil.infradead.org;
	Thu, 18 Dec 2025 11:37:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=560CdPAVCmWqOXqpP8qnp3yv2imN6Gqjl2ZrgVKKwxM=; b=dYiSb4JEHZ/ugOtyR4LQPS05jy
	cZqYbLGgWDKq5I2B8od/5WYAA6IWxxQV/MpDM9mPA688ajt525IG5dUVsEhO0oYvey1Y4o+EHlK/y
	M0No+mK0TDc6JKzWKhz/1yFYFIFZL+b11ProF6Zl22HeVSDSCbhcGOt8qFVsec3TI3eRbGYNHQNY8
	6zHsEMBxVVe799A4AVuywEbTYNgn78NFCNnd9mB9EroxDkSoC88hpD6Afi0HNHrrR7aGVzbzlsh/2
	hHGWxJZKumTbyHnReDjo5b1UBIFSVNbGeByQfBFb+if1owTpzbfZRgOdZ2jkQLujdgpL6LZQe4udc
	dkTQCyUQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWBRx-00000008fRX-1j0i
	for barebox@lists.infradead.org;
	Thu, 18 Dec 2025 10:41:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWCJN-0008DA-Pl; Thu, 18 Dec 2025 12:36:49 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWCJN-006Gw2-1t;
	Thu, 18 Dec 2025 12:36:49 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWBw4-0000000AVre-0R0X;
	Thu, 18 Dec 2025 12:12:44 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 18 Dec 2025 11:37:42 +0100
Message-ID: <20251218111242.1527495-23-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
References: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251218_104153_940624_20EAD5CE 
X-CRM114-Status: GOOD (  29.40  )
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
Subject: [PATCH v1 22/54] efi: loader: move PE implementation out of common code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The PE code was initially added to a common location to mimic the ELF
code (which is used across architectures and also for remoteproc).

Since then ELF handling has been moved out of common/bootm.c and I
reached the conclusion that there is little benefit of supporting
running PE executables without UEFI.

Therefore move the implementation to efi/loader/ instead and give it an
API suitable for use from the EFI loader.

The code was not in use before, so we just use the occasion to sync with
U-Boot.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/Kconfig          |   3 -
 common/Makefile         |   1 -
 common/pe.c             | 382 ---------------------
 efi/loader/Makefile     |   1 +
 efi/loader/pe.c         | 727 ++++++++++++++++++++++++++++++++++++++++
 include/efi/loader/pe.h |  83 +++++
 include/pe.h            |  47 +--
 7 files changed, 826 insertions(+), 418 deletions(-)
 delete mode 100644 common/pe.c
 create mode 100644 efi/loader/pe.c
 create mode 100644 include/efi/loader/pe.h

diff --git a/common/Kconfig b/common/Kconfig
index b765953ee32d..b61a5bc40a1f 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -648,9 +648,6 @@ config BOOTM_AIMAGE
 	help
 	  Support using Android Images.
 
-config PE
-	bool "PE/COFF Support" if COMPILE_TEST
-
 config ELF
 	bool "ELF Support" if COMPILE_TEST
 
diff --git a/common/Makefile b/common/Makefile
index 8769d04d04e7..36dee5f7a98a 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -15,7 +15,6 @@ obj-pbl-y			+= memsize.o
 obj-y				+= resource.o
 obj-pbl-y			+= bootsource.o
 obj-$(CONFIG_ELF)		+= elf.o
-obj-$(CONFIG_PE)		+= pe.o
 obj-y				+= restart.o
 obj-y				+= poweroff.o
 obj-y				+= slice.o
diff --git a/common/pe.c b/common/pe.c
deleted file mode 100644
index 0508670a5264..000000000000
--- a/common/pe.c
+++ /dev/null
@@ -1,382 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0+
-/*
- *  PE image loader
- *
- *  based partly on wine code
- *
- *  Copyright (c) 2016 Alexander Graf
- */
-
-#define pr_fmt(fmt) "pe: " fmt
-
-#include <common.h>
-#include <pe.h>
-#include <linux/sizes.h>
-#include <libfile.h>
-#include <memory.h>
-#include <linux/err.h>
-
-static int machines[] = {
-#if defined(__aarch64__)
-	IMAGE_FILE_MACHINE_ARM64,
-#elif defined(__arm__)
-	IMAGE_FILE_MACHINE_ARM,
-	IMAGE_FILE_MACHINE_THUMB,
-	IMAGE_FILE_MACHINE_ARMV7,
-#endif
-
-#if defined(__x86_64__)
-	IMAGE_FILE_MACHINE_AMD64,
-#elif defined(__i386__)
-	IMAGE_FILE_MACHINE_I386,
-#endif
-
-#if defined(__riscv) && (__riscv_xlen == 32)
-	IMAGE_FILE_MACHINE_RISCV32,
-#endif
-
-#if defined(__riscv) && (__riscv_xlen == 64)
-	IMAGE_FILE_MACHINE_RISCV64,
-#endif
-	0 };
-
-/**
- * pe_loader_relocate() - relocate PE binary
- *
- * @rel:		pointer to the relocation table
- * @rel_size:		size of the relocation table in bytes
- * @pe_reloc:		actual load address of the image
- * @pref_address:	preferred load address of the image
- * Return:		status code
- */
-static int pe_loader_relocate(const IMAGE_BASE_RELOCATION *rel,
-			unsigned long rel_size, void *pe_reloc,
-			unsigned long pref_address)
-{
-	unsigned long delta = (unsigned long)pe_reloc - pref_address;
-	const IMAGE_BASE_RELOCATION *end;
-	int i;
-
-	if (delta == 0)
-		return 0;
-
-	end = (const IMAGE_BASE_RELOCATION *)((const char *)rel + rel_size);
-	while (rel + 1 < end && rel->SizeOfBlock) {
-		const uint16_t *relocs = (const uint16_t *)(rel + 1);
-		i = (rel->SizeOfBlock - sizeof(*rel)) / sizeof(uint16_t);
-		while (i--) {
-			uint32_t offset = (uint32_t)(*relocs & 0xfff) +
-					  rel->VirtualAddress;
-			int type = *relocs >> PAGE_SHIFT;
-			uint64_t *x64 = pe_reloc + offset;
-			uint32_t *x32 = pe_reloc + offset;
-			uint16_t *x16 = pe_reloc + offset;
-
-			switch (type) {
-			case IMAGE_REL_BASED_ABSOLUTE:
-				break;
-			case IMAGE_REL_BASED_HIGH:
-				*x16 += ((uint32_t)delta) >> 16;
-				break;
-			case IMAGE_REL_BASED_LOW:
-				*x16 += (uint16_t)delta;
-				break;
-			case IMAGE_REL_BASED_HIGHLOW:
-				*x32 += (uint32_t)delta;
-				break;
-			case IMAGE_REL_BASED_DIR64:
-				*x64 += (uint64_t)delta;
-				break;
-#ifdef __riscv
-			case IMAGE_REL_BASED_RISCV_HI20:
-				*x32 = ((*x32 & 0xfffff000) + (uint32_t)delta) |
-					(*x32 & 0x00000fff);
-				break;
-			case IMAGE_REL_BASED_RISCV_LOW12I:
-			case IMAGE_REL_BASED_RISCV_LOW12S:
-				/* We know that we're 4k aligned */
-				if (delta & 0xfff) {
-					pr_err("Unsupported reloc offset\n");
-					return -ENOEXEC;
-				}
-				break;
-#endif
-			default:
-				pr_err("Unknown Relocation off %x type %x\n",
-					offset, type);
-				return -ENOEXEC;
-			}
-			relocs++;
-		}
-		rel = (const IMAGE_BASE_RELOCATION *)relocs;
-	}
-	return 0;
-}
-
-/**
- * pe_check_header() - check if a memory buffer contains a PE-COFF image
- *
- * @buffer:	buffer to check
- * @size:	size of buffer
- * @nt_header:	on return pointer to NT header of PE-COFF image
- * Return:	0 if the buffer contains a PE-COFF image
- */
-static int pe_check_header(void *buffer, size_t size, void **nt_header)
-{
-	struct mz_hdr *dos = buffer;
-	IMAGE_NT_HEADERS32 *nt;
-
-	if (size < sizeof(*dos))
-		return -EINVAL;
-
-	/* Check for DOS magix */
-	if (dos->magic != MZ_MAGIC)
-		return -EINVAL;
-
-	/*
-	 * Check if the image section header fits into the file. Knowing that at
-	 * least one section header follows we only need to check for the length
-	 * of the 64bit header which is longer than the 32bit header.
-	 */
-	if (size < dos->peaddr + sizeof(IMAGE_NT_HEADERS32))
-		return -EINVAL;
-	nt = (IMAGE_NT_HEADERS32 *)((u8 *)buffer + dos->peaddr);
-
-	/* Check for PE-COFF magic */
-	if (nt->FileHeader.magic != PE_MAGIC)
-		return -EINVAL;
-
-	if (nt_header)
-		*nt_header = nt;
-
-	return 0;
-}
-
-/**
- * section_size() - determine size of section
- *
- * The size of a section in memory if normally given by VirtualSize.
- * If VirtualSize is not provided, use SizeOfRawData.
- *
- * @sec:	section header
- * Return:	size of section in memory
- */
-static u32 section_size(IMAGE_SECTION_HEADER *sec)
-{
-	if (sec->Misc.VirtualSize)
-		return sec->Misc.VirtualSize;
-	else
-		return sec->SizeOfRawData;
-}
-
-struct pe_image *pe_open_buf(void *bin, size_t pe_size)
-{
-	struct pe_image *pe;
-	int i;
-	int supported = 0;
-	int ret;
-
-	pe = calloc(1, sizeof(*pe));
-	if (!pe)
-		return ERR_PTR(-ENOMEM);
-
-	ret = pe_check_header(bin, pe_size, (void **)&pe->nt);
-	if (ret) {
-		pr_err("Not a PE-COFF file\n");
-		ret = -ENOEXEC;
-		goto err;
-	}
-
-	for (i = 0; machines[i]; i++)
-		if (machines[i] == pe->nt->FileHeader.machine) {
-			supported = 1;
-			break;
-		}
-
-	if (!supported) {
-		pr_err("Machine type 0x%04x is not supported\n",
-			pe->nt->FileHeader.machine);
-		ret = -ENOEXEC;
-		goto err;
-	}
-
-	pe->num_sections = pe->nt->FileHeader.sections;
-	pe->sections = (void *)&pe->nt->OptionalHeader +
-			    pe->nt->FileHeader.opt_hdr_size;
-
-	if (pe_size < ((void *)pe->sections + sizeof(pe->sections[0]) * pe->num_sections - bin)) {
-		pr_err("Invalid number of sections: %d\n", pe->num_sections);
-		ret = -ENOEXEC;
-		goto err;
-	}
-
-	pe->bin = bin;
-
-	return pe;
-err:
-	return ERR_PTR(ret);
-}
-
-struct pe_image *pe_open(const char *filename)
-{
-	struct pe_image *pe;
-	size_t size;
-	void *bin;
-
-	bin = read_file(filename, &size);
-	if (!bin)
-		return ERR_PTR(-errno);
-
-	pe = pe_open_buf(bin, size);
-	if (IS_ERR(pe))
-		free(bin);
-
-	return pe;
-}
-
-static struct resource *pe_alloc(size_t virt_size)
-{
-	resource_size_t start, end;
-	int ret;
-
-	ret = memory_bank_first_find_space(&start, &end);
-	if (ret)
-		return NULL;
-
-	start = ALIGN(start, SZ_64K);
-
-	if (start + virt_size > end)
-		return NULL;
-
-	return request_sdram_region("pe-code", start, virt_size,
-				    MEMTYPE_LOADER_CODE,
-				    MEMATTRS_RWX);
-}
-
-unsigned long pe_get_mem_size(struct pe_image *pe)
-{
-	unsigned long virt_size = 0;
-	int i;
-
-	/* Calculate upper virtual address boundary */
-	for (i = pe->num_sections - 1; i >= 0; i--) {
-		IMAGE_SECTION_HEADER *sec = &pe->sections[i];
-
-		virt_size = max_t(unsigned long, virt_size,
-				  sec->VirtualAddress + section_size(sec));
-	}
-
-	/* Read 32/64bit specific header bits */
-	if (pe->nt->OptionalHeader.magic == PE_OPT_MAGIC_PE32PLUS) {
-		IMAGE_NT_HEADERS64 *nt64 = (void *)pe->nt;
-		struct pe32plus_opt_hdr  *opt = &nt64->OptionalHeader;
-
-		virt_size = ALIGN(virt_size, opt->section_align);
-	} else if (pe->nt->OptionalHeader.magic == PE_OPT_MAGIC_PE32) {
-		struct pe32_opt_hdr *opt = &pe->nt->OptionalHeader;
-
-		virt_size = ALIGN(virt_size, opt->section_align);
-	} else {
-		pr_err("Invalid optional header magic %x\n",
-		       pe->nt->OptionalHeader.magic);
-		return 0;
-	}
-
-	return virt_size;
-}
-
-int pe_load(struct pe_image *pe)
-{
-	int rel_idx = IMAGE_DIRECTORY_ENTRY_BASERELOC;
-	uint64_t image_base;
-	unsigned long virt_size;
-	unsigned long rel_size;
-	const IMAGE_BASE_RELOCATION *rel;
-	struct mz_hdr *dos;
-	struct resource *code;
-	void *pe_reloc;
-	int i;
-
-	virt_size = pe_get_mem_size(pe);
-	if (!virt_size)
-		return -ENOEXEC;
-
-	/* Read 32/64bit specific header bits */
-	if (pe->nt->OptionalHeader.magic == PE_OPT_MAGIC_PE32PLUS) {
-		IMAGE_NT_HEADERS64 *nt64 = (void *)pe->nt;
-		struct pe32plus_opt_hdr *opt = &nt64->OptionalHeader;
-		image_base = opt->image_base;
-		pe->image_type = opt->subsys;
-
-		code = pe_alloc(virt_size);
-		if (!code)
-			return -ENOMEM;
-
-		pe_reloc = (void *)code->start;
-
-		pe->entry = code->start + opt->entry_point;
-		rel_size = nt64->DataDirectory[rel_idx].size;
-		rel = pe_reloc + nt64->DataDirectory[rel_idx].virtual_address;
-	} else if (pe->nt->OptionalHeader.magic == PE_OPT_MAGIC_PE32) {
-		struct pe32_opt_hdr *opt = &pe->nt->OptionalHeader;
-		image_base = opt->image_base;
-		pe->image_type = opt->subsys;
-		virt_size = ALIGN(virt_size, opt->section_align);
-
-		code = pe_alloc(virt_size);
-		if (!code)
-			return -ENOMEM;
-
-		pe_reloc = (void *)code->start;
-
-		pe->entry = code->start + opt->entry_point;
-		rel_size = pe->nt->DataDirectory[rel_idx].size;
-		rel = pe_reloc + pe->nt->DataDirectory[rel_idx].virtual_address;
-	} else {
-		pr_err("Invalid optional header magic %x\n",
-		       pe->nt->OptionalHeader.magic);
-		return -ENOEXEC;
-	}
-
-	/* Copy PE headers */
-	memcpy(pe_reloc, pe->bin,
-	       sizeof(*dos)
-		 + sizeof(*pe->nt)
-		 + pe->nt->FileHeader.opt_hdr_size
-		 + pe->num_sections * sizeof(IMAGE_SECTION_HEADER));
-
-	/* Load sections into RAM */
-	for (i = pe->num_sections - 1; i >= 0; i--) {
-		IMAGE_SECTION_HEADER *sec = &pe->sections[i];
-		u32 copy_size = section_size(sec);
-
-		if (copy_size > sec->SizeOfRawData) {
-			copy_size = sec->SizeOfRawData;
-			memset(pe_reloc + sec->VirtualAddress, 0,
-			       sec->Misc.VirtualSize);
-		}
-
-		memcpy(pe_reloc + sec->VirtualAddress,
-		       pe->bin + sec->PointerToRawData,
-		       copy_size);
-	}
-
-	/* Run through relocations */
-	if (pe_loader_relocate(rel, rel_size, pe_reloc,
-				(unsigned long)image_base) != 0) {
-		release_sdram_region(code);
-		return -EINVAL;
-	}
-
-	pe->code = code;
-
-	return 0;
-}
-
-void pe_close(struct pe_image *pe)
-{
-	if (pe->code)
-		release_sdram_region(pe->code);
-	free(pe->bin);
-	free(pe);
-}
diff --git a/efi/loader/Makefile b/efi/loader/Makefile
index 640c9707060c..e1c9765581cb 100644
--- a/efi/loader/Makefile
+++ b/efi/loader/Makefile
@@ -9,3 +9,4 @@ obj-y += boot.o
 obj-y += runtime.o
 obj-y += setup.o
 obj-y += watchdog.o
+obj-y += pe.o
diff --git a/efi/loader/pe.c b/efi/loader/pe.c
new file mode 100644
index 000000000000..3c30211f1074
--- /dev/null
+++ b/efi/loader/pe.c
@@ -0,0 +1,727 @@
+// SPDX-License-Identifier: GPL-2.0+
+// SPDX-Comment: Origin-URL: https://github.com/u-boot/u-boot/blob/463e4e6476299b32452a8a9e57374241cca26292/lib/efi_loader/efi_image_loader.c
+/*
+ *  EFI image loader
+ *
+ *  based partly on wine code
+ *
+ *  Copyright (c) 2016 Alexander Graf
+ */
+
+#define pr_fmt(fmt) "efi-loader: pe: " fmt
+
+#include <stdio.h>
+#include <memory.h>
+#include <linux/align.h>
+#include <linux/sizes.h>
+#include <efi/services.h>
+#include <efi/memory.h>
+#include <efi/loader.h>
+#include <efi/loader/pe.h>
+#include <efi/guid.h>
+#include <efi/error.h>
+#include <pe.h>
+#include <qsort.h>
+#include <linux/err.h>
+
+static int machines[] = {
+#if defined(__aarch64__)
+	IMAGE_FILE_MACHINE_ARM64,
+#elif defined(__arm__)
+	IMAGE_FILE_MACHINE_ARM,
+	IMAGE_FILE_MACHINE_THUMB,
+	IMAGE_FILE_MACHINE_ARMV7,
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
+ * efi_print_image_info() - print information about a loaded image
+ *
+ * If the program counter is located within the image the offset to the base
+ * address is shown.
+ *
+ * @obj:	EFI object
+ * @image:	loaded image
+ * @pc:		program counter (use NULL to suppress offset output)
+ * Return:	status code
+ */
+static efi_status_t efi_print_image_info(struct efi_loaded_image_obj *obj,
+					 struct efi_loaded_image *image,
+					 void *pc)
+{
+	printf("UEFI image");
+	printf(" [0x%p:0x%p]",
+	       image->image_base, image->image_base + image->image_size - 1);
+	if (pc && pc >= image->image_base &&
+	    pc < image->image_base + image->image_size)
+		printf(" pc=0x%zx", pc - image->image_base);
+	if (image->file_path)
+		printf(" '%pD'", image->file_path);
+	printf("\n");
+	return EFI_SUCCESS;
+}
+
+/**
+ * efi_print_image_infos() - print information about all loaded images
+ *
+ * @pc:		program counter (use NULL to suppress offset output)
+ */
+void efi_print_image_infos(void *pc)
+{
+	struct efi_object *efiobj;
+	struct efi_handler *handler;
+
+	list_for_each_entry(efiobj, &efi_obj_list, link) {
+		list_for_each_entry(handler, &efiobj->protocols, link) {
+			if (!efi_guidcmp(handler->guid, efi_loaded_image_protocol_guid)) {
+				efi_print_image_info(
+					(struct efi_loaded_image_obj *)efiobj,
+					handler->protocol_interface, pc);
+			}
+		}
+	}
+}
+
+/**
+ * efi_loader_relocate() - relocate UEFI binary
+ *
+ * @rel:		pointer to the relocation table
+ * @rel_size:		size of the relocation table in bytes
+ * @efi_reloc:		actual load address of the image
+ * @pref_address:	preferred load address of the image
+ * Return:		status code
+ */
+static efi_status_t efi_loader_relocate(const IMAGE_BASE_RELOCATION *rel,
+			unsigned long rel_size, void *efi_reloc,
+			unsigned long pref_address)
+{
+	unsigned long delta = (unsigned long)efi_reloc - pref_address;
+	const IMAGE_BASE_RELOCATION *end;
+	int i;
+
+	if (delta == 0)
+		return EFI_SUCCESS;
+
+	end = (const IMAGE_BASE_RELOCATION *)((const char *)rel + rel_size);
+	while (rel + 1 < end && rel->SizeOfBlock) {
+		const uint16_t *relocs = (const uint16_t *)(rel + 1);
+		i = (rel->SizeOfBlock - sizeof(*rel)) / sizeof(uint16_t);
+		while (i--) {
+			uint32_t offset = (uint32_t)(*relocs & 0xfff) +
+					  rel->VirtualAddress;
+			int type = *relocs >> EFI_PAGE_SHIFT;
+			uint64_t *x64 = efi_reloc + offset;
+			uint32_t *x32 = efi_reloc + offset;
+			uint16_t *x16 = efi_reloc + offset;
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
+					return EFI_LOAD_ERROR;
+				}
+				break;
+#endif
+			default:
+				pr_err("Unknown Relocation off %x type %x\n",
+					offset, type);
+				return EFI_LOAD_ERROR;
+			}
+			relocs++;
+		}
+		rel = (const IMAGE_BASE_RELOCATION *)relocs;
+	}
+	return EFI_SUCCESS;
+}
+
+/**
+ * efi_set_code_and_data_type() - determine the memory types to be used for code
+ *				  and data.
+ *
+ * @loaded_image_info:	image descriptor
+ * @image_type:		field Subsystem of the optional header for
+ *			Windows specific field
+ */
+static void efi_set_code_and_data_type(
+			struct efi_loaded_image *loaded_image_info,
+			uint16_t image_type)
+{
+	switch (image_type) {
+	case IMAGE_SUBSYSTEM_EFI_APPLICATION:
+		loaded_image_info->image_code_type = EFI_LOADER_CODE;
+		loaded_image_info->image_data_type = EFI_LOADER_DATA;
+		break;
+	case IMAGE_SUBSYSTEM_EFI_BOOT_SERVICE_DRIVER:
+		loaded_image_info->image_code_type = EFI_BOOT_SERVICES_CODE;
+		loaded_image_info->image_data_type = EFI_BOOT_SERVICES_DATA;
+		break;
+	case IMAGE_SUBSYSTEM_EFI_RUNTIME_DRIVER:
+	case IMAGE_SUBSYSTEM_EFI_ROM_IMAGE:
+		loaded_image_info->image_code_type = EFI_RUNTIME_SERVICES_CODE;
+		loaded_image_info->image_data_type = EFI_RUNTIME_SERVICES_DATA;
+		break;
+	default:
+		pr_err("invalid image type: %u\n", image_type);
+		/* Let's assume it is an application */
+		loaded_image_info->image_code_type = EFI_LOADER_CODE;
+		loaded_image_info->image_data_type = EFI_LOADER_DATA;
+		break;
+	}
+}
+
+/**
+ * efi_image_region_add() - add an entry of region
+ * @regs:	Pointer to array of regions
+ * @start:	Start address of region (included)
+ * @end:	End address of region (excluded)
+ * @nocheck:	flag against overlapped regions
+ *
+ * Take one entry of region \[@start, @end\[ and insert it into the list.
+ *
+ * * If @nocheck is false, the list will be sorted ascending by address.
+ *   Overlapping entries will not be allowed.
+ *
+ * * If @nocheck is true, the list will be sorted ascending by sequence
+ *   of adding the entries. Overlapping is allowed.
+ *
+ * Return:	status code
+ */
+efi_status_t efi_image_region_add(struct efi_image_regions *regs,
+				  const void *start, const void *end,
+				  int nocheck)
+{
+	struct image_region *reg;
+	int i, j;
+
+	if (regs->num >= regs->max) {
+		pr_err("%s: no more room for regions\n", __func__);
+		return EFI_OUT_OF_RESOURCES;
+	}
+
+	if (end < start)
+		return EFI_INVALID_PARAMETER;
+
+	for (i = 0; i < regs->num; i++) {
+		reg = &regs->reg[i];
+		if (nocheck)
+			continue;
+
+		/* new data after registered region */
+		if (start >= reg->data + reg->size)
+			continue;
+
+		/* new data preceding registered region */
+		if (end <= reg->data) {
+			for (j = regs->num - 1; j >= i; j--)
+				memcpy(&regs->reg[j + 1], &regs->reg[j],
+				       sizeof(*reg));
+			break;
+		}
+
+		/* new data overlapping registered region */
+		pr_err("%s: new region already part of another\n", __func__);
+		return EFI_INVALID_PARAMETER;
+	}
+
+	reg = &regs->reg[i];
+	reg->data = start;
+	reg->size = end - start;
+	regs->num++;
+
+	return EFI_SUCCESS;
+}
+
+/**
+ * cmp_pe_section() - compare virtual addresses of two PE image sections
+ * @arg1:	pointer to pointer to first section header
+ * @arg2:	pointer to pointer to second section header
+ *
+ * Compare the virtual addresses of two sections of an portable executable.
+ * The arguments are defined as const void * to allow usage with qsort().
+ *
+ * Return:	-1 if the virtual address of arg1 is less than that of arg2,
+ *		0 if the virtual addresses are equal, 1 if the virtual address
+ *		of arg1 is greater than that of arg2.
+ */
+static int cmp_pe_section(const void *arg1, const void *arg2)
+{
+	const IMAGE_SECTION_HEADER *section1, *section2;
+
+	section1 = *((const IMAGE_SECTION_HEADER **)arg1);
+	section2 = *((const IMAGE_SECTION_HEADER **)arg2);
+
+	if (section1->VirtualAddress < section2->VirtualAddress)
+		return -1;
+	else if (section1->VirtualAddress == section2->VirtualAddress)
+		return 0;
+	else
+		return 1;
+}
+
+/**
+ * efi_prepare_aligned_image() - prepare 8-byte aligned image
+ * @efi:		pointer to the EFI binary
+ * @efi_size:		size of @efi binary
+ *
+ * If @efi is not 8-byte aligned, this function newly allocates
+ * the image buffer.
+ *
+ * Return:	valid pointer to a image, return NULL if allocation fails.
+ */
+void *efi_prepare_aligned_image(void *efi, u64 *efi_size)
+{
+	size_t new_efi_size;
+	void *new_efi;
+
+	/*
+	 * Size must be 8-byte aligned and the trailing bytes must be
+	 * zero'ed. Otherwise hash value may be incorrect.
+	 */
+	if (!IS_ALIGNED(*efi_size, 8)) {
+		new_efi_size = ALIGN(*efi_size, 8);
+		new_efi = calloc(new_efi_size, 1);
+		if (!new_efi)
+			return NULL;
+		memcpy(new_efi, efi, *efi_size);
+		*efi_size = new_efi_size;
+		return new_efi;
+	} else {
+		return efi;
+	}
+}
+
+/**
+ * efi_image_parse() - parse a PE image
+ * @efi:	Pointer to image
+ * @len:	Size of @efi
+ * @regp:	Pointer to a list of regions
+ * @auth:	Pointer to a pointer to authentication data in PE
+ * @auth_len:	Size of @auth
+ *
+ * Parse image binary in PE32(+) format, assuming that sanity of PE image
+ * has been checked by a caller.
+ * On success, an address of authentication data in @efi and its size will
+ * be returned in @auth and @auth_len, respectively.
+ *
+ * Return:	true on success, false on error
+ */
+bool efi_image_parse(void *efi, size_t len, struct efi_image_regions **regp,
+		     WIN_CERTIFICATE **auth, size_t *auth_len)
+{
+	struct efi_image_regions *regs;
+	struct mz_hdr *dos;
+	IMAGE_NT_HEADERS32 *nt;
+	IMAGE_SECTION_HEADER *sections, **sorted;
+	int num_regions, num_sections, i;
+	int ctidx = IMAGE_DIRECTORY_ENTRY_SECURITY;
+	u32 align, size, authsz, authoff;
+	size_t bytes_hashed;
+
+	dos = (void *)efi;
+	nt = (void *)(efi + dos->peaddr);
+	authoff = 0;
+	authsz = 0;
+
+	/*
+	 * Count maximum number of regions to be digested.
+	 * We don't have to have an exact number here.
+	 * See efi_image_region_add()'s in parsing below.
+	 */
+	num_regions = 3; /* for header */
+	num_regions += nt->FileHeader.sections;
+	num_regions++; /* for extra */
+
+	regs = calloc(sizeof(*regs) + sizeof(struct image_region) * num_regions,
+		      1);
+	if (!regs)
+		goto err;
+	regs->max = num_regions;
+
+	/*
+	 * Collect data regions for hash calculation
+	 * 1. File headers
+	 */
+	if (nt->OptionalHeader.magic == PE_OPT_MAGIC_PE32PLUS) {
+		IMAGE_NT_HEADERS64  *nt64 = (void *)nt;
+		struct pe32plus_opt_hdr *opt = &nt64->OptionalHeader;
+
+		/* Skip CheckSum */
+		efi_image_region_add(regs, efi, &opt->csum, 0);
+		if (nt64->OptionalHeader.data_dirs <= ctidx) {
+			efi_image_region_add(regs,
+					     &opt->subsys,
+					     efi + opt->header_size, 0);
+		} else {
+			/* Skip Certificates Table */
+			efi_image_region_add(regs,
+					     &opt->subsys,
+					     &nt64->DataDirectory[ctidx], 0);
+			efi_image_region_add(regs,
+					     &nt64->DataDirectory[ctidx] + 1,
+					     efi + opt->header_size, 0);
+
+			authoff = nt64->DataDirectory[ctidx].virtual_address;
+			authsz = nt64->DataDirectory[ctidx].size;
+		}
+
+		bytes_hashed = opt->header_size;
+		align = opt->file_align;
+	} else if (nt->OptionalHeader.magic == PE_OPT_MAGIC_PE32) {
+		struct pe32_opt_hdr *opt = &nt->OptionalHeader;
+
+		/* Skip CheckSum */
+		efi_image_region_add(regs, efi, &opt->csum, 0);
+		if (nt->OptionalHeader.data_dirs <= ctidx) {
+			efi_image_region_add(regs,
+					     &opt->subsys,
+					     efi + opt->header_size, 0);
+		} else {
+			/* Skip Certificates Table */
+			efi_image_region_add(regs, &opt->subsys,
+					     &nt->DataDirectory[ctidx], 0);
+			efi_image_region_add(regs,
+					     &nt->DataDirectory[ctidx] + 1,
+					     efi + opt->header_size, 0);
+
+			authoff = nt->DataDirectory[ctidx].virtual_address;
+			authsz = nt->DataDirectory[ctidx].size;
+		}
+
+		bytes_hashed = opt->header_size;
+		align = opt->file_align;
+	} else {
+		pr_err("%s: Invalid optional header magic %x\n", __func__,
+			nt->OptionalHeader.magic);
+		goto err;
+	}
+
+	/* 2. Sections */
+	num_sections = nt->FileHeader.sections;
+	sections = (void *)((uint8_t *)&nt->OptionalHeader +
+			    nt->FileHeader.opt_hdr_size);
+	sorted = calloc(sizeof(IMAGE_SECTION_HEADER *), num_sections);
+	if (!sorted) {
+		pr_err("%s: Out of memory\n", __func__);
+		goto err;
+	}
+
+	/*
+	 * Make sure the section list is in ascending order.
+	 */
+	for (i = 0; i < num_sections; i++)
+		sorted[i] = &sections[i];
+	qsort(sorted, num_sections, sizeof(sorted[0]), cmp_pe_section);
+
+	for (i = 0; i < num_sections; i++) {
+		if (!sorted[i]->SizeOfRawData)
+			continue;
+
+		size = (sorted[i]->SizeOfRawData + align - 1) & ~(align - 1);
+		efi_image_region_add(regs, efi + sorted[i]->PointerToRawData,
+				     efi + sorted[i]->PointerToRawData + size,
+				     0);
+		pr_debug("section[%d](%s): raw: 0x%x-0x%x, virt: %x-%x\n",
+			  i, sorted[i]->Name,
+			  sorted[i]->PointerToRawData,
+			  sorted[i]->PointerToRawData + size,
+			  sorted[i]->VirtualAddress,
+			  sorted[i]->VirtualAddress
+			    + sorted[i]->Misc.VirtualSize);
+
+		bytes_hashed += size;
+	}
+	free(sorted);
+
+	/* 3. Extra data excluding Certificates Table */
+	if (bytes_hashed + authsz < len) {
+		pr_debug("extra data for hash: %zu\n",
+			  len - (bytes_hashed + authsz));
+		efi_image_region_add(regs, efi + bytes_hashed,
+				     efi + len - authsz, 0);
+	}
+
+	/* Return Certificates Table */
+	if (authsz) {
+		if (len < authoff + authsz) {
+			pr_err("%s: Size for auth too large: %u >= %zu\n",
+				__func__, authsz, len - authoff);
+			goto err;
+		}
+		if (authsz < sizeof(*auth)) {
+			pr_err("%s: Size for auth too small: %u < %zu\n",
+				__func__, authsz, sizeof(*auth));
+			goto err;
+		}
+		*auth = efi + authoff;
+		*auth_len = authsz;
+		pr_debug("WIN_CERTIFICATE: 0x%x, size: 0x%x\n", authoff,
+			  authsz);
+	} else {
+		*auth = NULL;
+		*auth_len = 0;
+	}
+
+	*regp = regs;
+
+	return true;
+
+err:
+	free(regs);
+
+	return false;
+}
+
+static bool efi_image_authenticate(void *efi, size_t efi_size)
+{
+	return true;
+}
+
+/**
+ * efi_check_pe() - check if a memory buffer contains a PE-COFF image
+ *
+ * @buffer:	buffer to check
+ * @size:	size of buffer
+ * @nt_header:	on return pointer to NT header of PE-COFF image
+ * Return:	EFI_SUCCESS if the buffer contains a PE-COFF image
+ */
+efi_status_t efi_check_pe(void *buffer, size_t size, void **nt_header)
+{
+	struct mz_hdr *dos = buffer;
+	IMAGE_NT_HEADERS32 *nt;
+
+	if (size < sizeof(*dos))
+		return EFI_INVALID_PARAMETER;
+
+	/* Check for DOS magix */
+	if (dos->magic != MZ_MAGIC)
+		return EFI_INVALID_PARAMETER;
+
+	/*
+	 * Check if the image section header fits into the file. Knowing that at
+	 * least one section header follows we only need to check for the length
+	 * of the 64bit header which is longer than the 32bit header.
+	 */
+	if (size < dos->peaddr + sizeof(IMAGE_NT_HEADERS32))
+		return EFI_INVALID_PARAMETER;
+	nt = (IMAGE_NT_HEADERS32 *)((u8 *)buffer + dos->peaddr);
+
+	/* Check for PE-COFF magic */
+	if (nt->FileHeader.magic != PE_MAGIC)
+		return EFI_INVALID_PARAMETER;
+
+	if (nt_header)
+		*nt_header = nt;
+
+	return EFI_SUCCESS;
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
+/**
+ * efi_load_pe() - relocate EFI binary
+ *
+ * This function loads all sections from a PE binary into a newly reserved
+ * piece of memory. On success the entry point is returned as handle->entry.
+ *
+ * @handle:		loaded image handle
+ * @efi:		pointer to the EFI binary
+ * @efi_size:		size of @efi binary
+ * @loaded_image_info:	loaded image protocol
+ * Return:		status code
+ */
+efi_status_t efi_load_pe(struct efi_loaded_image_obj *handle,
+			 void *efi, size_t efi_size,
+			 struct efi_loaded_image *loaded_image_info)
+{
+	IMAGE_NT_HEADERS32 *nt;
+	struct mz_hdr *dos;
+	IMAGE_SECTION_HEADER *sections;
+	int num_sections;
+	void *efi_reloc;
+	int i;
+	const IMAGE_BASE_RELOCATION *rel;
+	unsigned long rel_size;
+	int rel_idx = IMAGE_DIRECTORY_ENTRY_BASERELOC;
+	uint64_t image_base;
+	unsigned long virt_size = 0;
+	int supported = 0;
+	efi_status_t ret;
+
+	ret = efi_check_pe(efi, efi_size, (void **)&nt);
+	if (ret != EFI_SUCCESS) {
+		pr_err("Not a PE-COFF file\n");
+		return EFI_LOAD_ERROR;
+	}
+
+	for (i = 0; machines[i]; i++)
+		if (machines[i] == nt->FileHeader.machine) {
+			supported = 1;
+			break;
+		}
+
+	if (!supported) {
+		pr_err("Machine type 0x%04x is not supported\n",
+			nt->FileHeader.machine);
+		return EFI_LOAD_ERROR;
+	}
+
+	num_sections = nt->FileHeader.sections;
+	sections = (void *)&nt->OptionalHeader +
+			    nt->FileHeader.opt_hdr_size;
+
+	if (efi_size < ((void *)sections + sizeof(sections[0]) * num_sections
+			- efi)) {
+		pr_err("Invalid number of sections: %d\n", num_sections);
+		return EFI_LOAD_ERROR;
+	}
+
+	/* Authenticate an image */
+	if (efi_image_authenticate(efi, efi_size)) {
+		handle->auth_status = EFI_IMAGE_AUTH_PASSED;
+	} else {
+		handle->auth_status = EFI_IMAGE_AUTH_FAILED;
+		pr_err("Image not authenticated\n");
+	}
+
+	/* Calculate upper virtual address boundary */
+	for (i = num_sections - 1; i >= 0; i--) {
+		IMAGE_SECTION_HEADER *sec = &sections[i];
+
+		virt_size = max_t(unsigned long, virt_size,
+				  sec->VirtualAddress + section_size(sec));
+	}
+
+	/* Read 32/64bit specific header bits */
+	if (nt->OptionalHeader.magic == PE_OPT_MAGIC_PE32PLUS) {
+		IMAGE_NT_HEADERS64 *nt64 = (void *)nt;
+		struct pe32plus_opt_hdr *opt = &nt64->OptionalHeader;
+		image_base = opt->image_base;
+		efi_set_code_and_data_type(loaded_image_info, opt->subsys);
+		handle->image_type = opt->subsys;
+		efi_reloc = efi_alloc_aligned_pages(virt_size,
+						   loaded_image_info->image_code_type,
+						   opt->section_align, "pe64");
+		if (!efi_reloc) {
+			pr_err("Out of memory\n");
+			ret = EFI_OUT_OF_RESOURCES;
+			goto err;
+		}
+		handle->entry = efi_reloc + opt->entry_point;
+		rel_size = nt64->DataDirectory[rel_idx].size;
+		rel = efi_reloc + nt64->DataDirectory[rel_idx].virtual_address;
+	} else if (nt->OptionalHeader.magic == PE_OPT_MAGIC_PE32) {
+		struct pe32_opt_hdr *opt = &nt->OptionalHeader;
+		image_base = opt->image_base;
+		efi_set_code_and_data_type(loaded_image_info, opt->subsys);
+		handle->image_type = opt->subsys;
+		efi_reloc = efi_alloc_aligned_pages(virt_size,
+						    loaded_image_info->image_code_type,
+						    opt->section_align, "pe32");
+		if (!efi_reloc) {
+			pr_err("Out of memory\n");
+			ret = EFI_OUT_OF_RESOURCES;
+			goto err;
+		}
+		handle->entry = efi_reloc + opt->entry_point;
+		rel_size = nt->DataDirectory[rel_idx].size;
+		rel = efi_reloc + nt->DataDirectory[rel_idx].virtual_address;
+	} else {
+		pr_err("Invalid optional header magic %x\n",
+			nt->OptionalHeader.magic);
+		ret = EFI_LOAD_ERROR;
+		goto err;
+	}
+
+	/* Copy PE headers */
+	memcpy(efi_reloc, efi,
+	       sizeof(*dos)
+		 + sizeof(*nt)
+		 + nt->FileHeader.opt_hdr_size
+		 + num_sections * sizeof(IMAGE_SECTION_HEADER));
+
+	/* Load sections into RAM */
+	for (i = num_sections - 1; i >= 0; i--) {
+		IMAGE_SECTION_HEADER *sec = &sections[i];
+		u32 copy_size = section_size(sec);
+
+		if (copy_size > sec->SizeOfRawData) {
+			copy_size = sec->SizeOfRawData;
+			memset(efi_reloc + sec->VirtualAddress, 0,
+			       sec->Misc.VirtualSize);
+		}
+		memcpy(efi_reloc + sec->VirtualAddress,
+		       efi + sec->PointerToRawData,
+		       copy_size);
+	}
+
+	/* Run through relocations */
+	if (efi_loader_relocate(rel, rel_size, efi_reloc,
+				(unsigned long)image_base) != EFI_SUCCESS) {
+		efi_free_pages((uintptr_t) efi_reloc,
+			       (virt_size + EFI_PAGE_MASK) >> EFI_PAGE_SHIFT);
+		ret = EFI_LOAD_ERROR;
+		goto err;
+	}
+
+	/* Populate the loaded image interface bits */
+	loaded_image_info->image_base = efi_reloc;
+	loaded_image_info->image_size = virt_size;
+
+	if (handle->auth_status == EFI_IMAGE_AUTH_PASSED)
+		return EFI_SUCCESS;
+	else
+		return EFI_SECURITY_VIOLATION;
+
+err:
+	return ret;
+}
diff --git a/include/efi/loader/pe.h b/include/efi/loader/pe.h
new file mode 100644
index 000000000000..b99f517cbfe3
--- /dev/null
+++ b/include/efi/loader/pe.h
@@ -0,0 +1,83 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
+#ifndef __EFI_LOADER_PE_H_
+#define __EFI_LOADER_PE_H_
+
+#include <efi/types.h>
+#include <efi/loader/object.h>
+#include <asm/setjmp.h>
+#include <asm/setjmp.h>
+
+struct efi_loaded_image;
+struct efi_system_table;
+struct _WIN_CERTIFICATE;
+
+enum efi_image_auth_status {
+	EFI_IMAGE_AUTH_FAILED = 0,
+	EFI_IMAGE_AUTH_PASSED,
+};
+
+/**
+ * struct efi_loaded_image_obj - handle of a loaded image
+ *
+ * @header:		EFI object header
+ * @exit_status:	exit status passed to Exit()
+ * @exit_data_size:	exit data size passed to Exit()
+ * @exit_data:		exit data passed to Exit()
+ * @exit_jmp:		long jump buffer for returning from started image
+ * @entry:		entry address of the relocated image
+ * @image_type:		indicates if the image is an applicition or a driver
+ * @auth_status:	indicates if the image is authenticated
+ */
+struct efi_loaded_image_obj {
+	struct efi_object header;
+	efi_status_t *exit_status;
+	efi_uintn_t *exit_data_size;
+	u16 **exit_data;
+	struct jmp_buf_data *exit_jmp;
+	EFIAPI efi_status_t (*entry)(efi_handle_t image_handle,
+				     struct efi_system_table *st);
+	u16 image_type;
+	enum efi_image_auth_status auth_status;
+};
+
+/* A part of an image, used for hashing */
+struct image_region {
+	const void *data;
+	int size;
+};
+
+/**
+ * struct efi_image_regions - A list of memory regions
+ *
+ * @max:	Maximum number of regions
+ * @num:	Number of regions
+ * @reg:	array of regions
+ */
+struct efi_image_regions {
+	int			max;
+	int			num;
+	struct image_region	reg[];
+};
+
+struct efi_system_table;
+
+/* Print information about all loaded images */
+void efi_print_image_infos(void *pc);
+
+efi_status_t efi_image_region_add(struct efi_image_regions *regs,
+				  const void *start, const void *end,
+				  int nocheck);
+
+void *efi_prepare_aligned_image(void *efi, u64 *efi_size);
+
+bool efi_image_parse(void *efi, size_t len, struct efi_image_regions **regp,
+		     struct _WIN_CERTIFICATE **auth, size_t *auth_len);
+
+/* Check if a buffer contains a PE-COFF image */
+efi_status_t efi_check_pe(void *buffer, size_t size, void **nt_header);
+/* PE loader implementation */
+efi_status_t efi_load_pe(struct efi_loaded_image_obj *handle,
+			 void *efi, size_t efi_size,
+			 struct efi_loaded_image *loaded_image_info);
+
+#endif
diff --git a/include/pe.h b/include/pe.h
index 742dd8235a24..a3253d75f352 100644
--- a/include/pe.h
+++ b/include/pe.h
@@ -78,6 +78,21 @@ typedef struct _IMAGE_BASE_RELOCATION
 #define IMAGE_REL_BASED_DIR64                   10
 #define IMAGE_REL_BASED_HIGH3ADJ                11
 
+/* certificate appended to PE image */
+typedef struct _WIN_CERTIFICATE {
+	uint32_t dwLength;
+	uint16_t wRevision;
+	uint16_t wCertificateType;
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
 struct pe_image {
 	u64 entry;
 	struct resource *code;
@@ -89,36 +104,4 @@ struct pe_image {
 	int num_sections;
 };
 
-#ifdef CONFIG_PE
-struct pe_image *pe_open(const char *filename);
-unsigned long pe_get_mem_size(struct pe_image *pe);
-struct pe_image *pe_open_buf(void *bin, size_t pe_size);
-int pe_load(struct pe_image *pe);
-void pe_close(struct pe_image *pe);
-#else
-static inline struct pe_image *pe_open(const char *filename)
-{
-	return ERR_PTR(-ENOSYS);
-}
-
-static inline unsigned long pe_get_mem_size(struct pe_image *pe)
-{
-	return 0;
-}
-
-static inline struct pe_image *pe_open_buf(void *bin, size_t pe_size)
-{
-	return ERR_PTR(-ENOSYS);
-}
-
-static inline int pe_load(struct pe_image *pe)
-{
-	return -ENOSYS;
-}
-
-static inline void pe_close(struct pe_image *pe)
-{
-}
-#endif
-
 #endif /* _PE_H */
-- 
2.47.3



