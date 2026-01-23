Delivery-date: Fri, 23 Jan 2026 14:20:17 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vjH5F-004UYX-2c
	for lore@lore.pengutronix.de;
	Fri, 23 Jan 2026 14:20:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vjH5D-0003za-G4
	for lore@pengutronix.de; Fri, 23 Jan 2026 14:20:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Bk8pCwLw8o8Hvc99hDsct0K2ah69Ap4JHB4EkIGUeRI=; b=Bfx2rmgYcMYiQlHtMa3sFNYfU2
	3TFUMFQ68BpMeZUK5xtJynS7SU5eFIso0oWuiytX61HA5M02GRhysLXsKxRWY5N7zPKWqCKVL62sI
	bIJxhNAbmM5nVaX/bArkwfkS0vlwIJlJ+o2hMuI97fLDHU+2GGBB7ZsAVzLc+3d9Pehw2jZkcqlhY
	VIfG8vwa/tvXQ6IEuW59dsODQJDdSPMQqkU6Oz7kUv+9Ux1b7x1zoUPvkIvkjq0cQRjoZ9fJM3lqW
	KcSdOhS3ua4DM8yT32efDay2G/bCWJ0p2LCV25l6I8kvZU0C3gnt4k9s3+wNN4gU5CT90ET6iWRMA
	t/RHDNuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjH4c-00000008x0y-0Gkl;
	Fri, 23 Jan 2026 13:19:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjH4V-00000008wt1-3P73
	for barebox@lists.infradead.org;
	Fri, 23 Jan 2026 13:19:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vjH4S-0003lR-9N; Fri, 23 Jan 2026 14:19:28 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vjH4S-0026Br-2R;
	Fri, 23 Jan 2026 14:19:28 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vjH4S-0000000DmY8-2nuW;
	Fri, 23 Jan 2026 14:19:28 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 23 Jan 2026 14:17:12 +0100
Message-ID: <20260123131922.2663665-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260123131922.2663665-1-a.fatoum@pengutronix.de>
References: <20260123131922.2663665-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260123_051932_163129_E74871AB 
X-CRM114-Status: GOOD (  37.95  )
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
Subject: [PATCH master 2/3] common: elf: split barebox proper-only ELF support from the rest
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

common/elf.c contains code that's only relevant to barebox proper, code
that is only used by the PBL and code that is used for both.

This works when we compile with linker garbage collection, but we don't
do this on sandbox. Sandbox is a PBL-only platform nowadays, so this
leads to linker errors as without LTO, the linker can't determine that
e.g. the reference to list_sort is ultimately unused in PBL.

Instead of stubbing out the functions needed, let's reorganize the
different parts.

- lib: contains the ELF parts that need no allocation and are usable
       both from barebox proper and PBL
- common: contains the ELF parts only usable to barebox proper

This structure may be useful in the future as well to more clearly
differentiate when something should go into lib/ and when it should go
into common/: With above suggested scheme implemented thoroughly, there
should be no obj-pbl-y at all in common/ and lib would contain library
function that are useful for either PBL, proper or both.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/Makefile     |   2 +-
 common/elf.c        | 338 --------------------------------------------
 include/elf.h       |  13 ++
 include/lib/elf.h   |  75 ++++++++++
 include/linux/elf.h |  67 ++-------
 lib/Makefile        |   1 +
 lib/elf.c           | 329 ++++++++++++++++++++++++++++++++++++++++++
 7 files changed, 428 insertions(+), 397 deletions(-)
 create mode 100644 include/lib/elf.h
 create mode 100644 lib/elf.c

diff --git a/common/Makefile b/common/Makefile
index 7393510a551b..ac39ee4e3ed5 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -14,7 +14,7 @@ obj-y				+= misc.o
 obj-pbl-y			+= memsize.o
 obj-y				+= resource.o
 obj-pbl-y			+= bootsource.o
-obj-pbl-$(CONFIG_ELF)		+= elf.o
+obj-$(CONFIG_ELF)		+= elf.o
 obj-y				+= restart.o
 obj-y				+= poweroff.o
 obj-y				+= slice.o
diff --git a/common/elf.c b/common/elf.c
index 62b60c082d20..296ff3ec7d4c 100644
--- a/common/elf.c
+++ b/common/elf.c
@@ -3,7 +3,6 @@
  * Copyright (c) 2018 Pengutronix, Oleksij Rempel <o.rempel@pengutronix.de>
  */
 
-#include <common.h>
 #include <elf.h>
 #include <errno.h>
 #include <fcntl.h>
@@ -20,18 +19,6 @@ struct elf_segment {
 	void *phdr;
 };
 
-static void *elf_phdr_relocated_paddr(struct elf_image *elf, void *phdr)
-{
-	void *dst;
-
-	if (elf->reloc_offset)
-		dst = (void *)(unsigned long)(elf->reloc_offset + elf_phdr_p_vaddr(elf, phdr));
-	else
-		dst = (void *)(unsigned long)elf_phdr_p_paddr(elf, phdr);
-
-	return dst;
-}
-
 static int elf_request_region(struct elf_image *elf, resource_size_t start,
 			      resource_size_t size, void *phdr)
 {
@@ -269,61 +256,6 @@ static int load_elf_image_segments(struct elf_image *elf)
 	return ret;
 }
 
-static int elf_check_image(struct elf_image *elf, void *buf)
-{
-	u16 e_type;
-
-	if (memcmp(buf, ELFMAG, SELFMAG)) {
-		pr_err("ELF magic not found.\n");
-		return -EINVAL;
-	}
-
-	elf->class = ((char *) buf)[EI_CLASS];
-
-	e_type = elf_hdr_e_type(elf, buf);
-	if (e_type != ET_EXEC && e_type != ET_DYN) {
-		pr_err("Unsupported ELF type: %u (only ET_EXEC and ET_DYN supported)\n", e_type);
-		return -ENOEXEC;
-	}
-
-	if (elf->class != ELF_CLASS)
-		return -EINVAL;
-
-	elf->type = e_type;
-
-	if (!elf_hdr_e_phnum(elf, buf)) {
-		pr_err("No phdr found.\n");
-		return -ENOEXEC;
-	}
-
-	return 0;
-}
-
-static void elf_init_struct(struct elf_image *elf)
-{
-	INIT_LIST_HEAD(&elf->list);
-	elf->low_addr = (void *) (unsigned long) -1;
-	elf->high_addr = 0;
-	elf->filename = NULL;
-}
-
-int elf_open_binary_into(struct elf_image *elf, void *buf)
-{
-	int ret;
-
-	memset(elf, 0, sizeof(*elf));
-	elf_init_struct(elf);
-
-	elf->hdr_buf = buf;
-	ret = elf_check_image(elf, buf);
-	if (ret)
-		return ret;
-
-	elf->entry = elf_hdr_e_entry(elf, elf->hdr_buf);
-
-	return 0;
-}
-
 struct elf_image *elf_open_binary(void *buf)
 {
 	int ret;
@@ -428,149 +360,6 @@ struct elf_image *elf_open(const char *filename)
 	return elf_check_init(filename);
 }
 
-void elf_set_load_address(struct elf_image *elf, void *addr)
-{
-	elf->load_address = addr;
-}
-
-static void *elf_find_dynamic_segment(struct elf_image *elf)
-{
-	void *buf = elf->hdr_buf;
-	void *phdr = buf + elf_hdr_e_phoff(elf, buf);
-
-	elf_for_each_segment(phdr, elf, buf) {
-		if (elf_phdr_p_type(elf, phdr) == PT_DYNAMIC)
-			return elf_phdr_relocated_paddr(elf, phdr);
-	}
-
-	return NULL;  /* No PT_DYNAMIC segment */
-}
-
-/**
- * elf_parse_dynamic_section - Parse the dynamic section and extract relocation info
- * @elf: ELF image structure
- * @dyn_seg: Pointer to the PT_DYNAMIC segment
- * @rel_out: Output pointer to the relocation table (either REL or RELA)
- * @relsz_out: Output size of the relocation table in bytes
- * @is_rela: flag indicating RELA (true) vs REL (false) format is expected
- *
- * This is a generic function that works for both 32-bit and 64-bit ELF files,
- * and handles both REL and RELA relocation formats.
- *
- * Returns: 0 on success, -EINVAL on error
- */
-static int elf_parse_dynamic_section(struct elf_image *elf, const void *dyn_seg,
-				     void **rel_out, u64 *relsz_out, void **symtab,
-				     bool is_rela)
-{
-	const void *dyn = dyn_seg;
-	void *rel = NULL, *rela = NULL;
-	u64 relsz = 0, relasz = 0;
-	u64 relent = 0, relaent = 0;
-	phys_addr_t base = (phys_addr_t)elf->reloc_offset;
-	size_t expected_rel_size, expected_rela_size;
-
-	/* Calculate expected sizes based on ELF class */
-	if (ELF_CLASS == ELFCLASS32) {
-		expected_rel_size = sizeof(Elf32_Rel);
-		expected_rela_size = sizeof(Elf32_Rela);
-	} else {
-		expected_rel_size = sizeof(Elf64_Rel);
-		expected_rela_size = sizeof(Elf64_Rela);
-	}
-
-	/* Iterate through dynamic entries until DT_NULL */
-	while (elf_dyn_d_tag(elf, dyn) != DT_NULL) {
-		unsigned long tag = elf_dyn_d_tag(elf, dyn);
-
-		switch (tag) {
-		case DT_REL:
-			/* REL table address - needs to be adjusted by load offset */
-			rel = (void *)(unsigned long)(base + elf_dyn_d_ptr(elf, dyn));
-			break;
-		case DT_RELSZ:
-			relsz = elf_dyn_d_val(elf, dyn);
-			break;
-		case DT_RELENT:
-			relent = elf_dyn_d_val(elf, dyn);
-			break;
-		case DT_RELA:
-			/* RELA table address - needs to be adjusted by load offset */
-			rela = (void *)(unsigned long)(base + elf_dyn_d_ptr(elf, dyn));
-			break;
-		case DT_RELASZ:
-			relasz = elf_dyn_d_val(elf, dyn);
-			break;
-		case DT_RELAENT:
-			relaent = elf_dyn_d_val(elf, dyn);
-			break;
-		case DT_SYMTAB:
-			*symtab = (void *)(unsigned long)(base + elf_dyn_d_val(elf, dyn));
-			break;
-		default:
-			break;
-		}
-
-		dyn += elf_size_of_dyn(elf);
-	}
-
-	/* Check that we found exactly one relocation type */
-	if (rel && rela) {
-		pr_err("ELF has both REL and RELA relocations\n");
-		return -EINVAL;
-	}
-
-	if (rel && !is_rela) {
-		/* REL relocations */
-		if (!relsz || relent != expected_rel_size) {
-			pr_debug("No REL relocations or invalid relocation info\n");
-			return -EINVAL;
-		}
-		*rel_out = rel;
-		*relsz_out = relsz;
-
-		return 0;
-	} else if (rela && is_rela) {
-		/* RELA relocations */
-		if (!relasz || relaent != expected_rela_size) {
-			pr_debug("No RELA relocations or invalid relocation info\n");
-			return -EINVAL;
-		}
-		*rel_out = rela;
-		*relsz_out = relasz;
-
-		return 0;
-	}
-
-	pr_debug("No relocations found in dynamic section\n");
-
-	return -EINVAL;
-}
-
-int elf_parse_dynamic_section_rel(struct elf_image *elf, const void *dyn_seg,
-				     void **rel_out, u64 *relsz_out, void **symtab)
-{
-	return elf_parse_dynamic_section(elf, dyn_seg, rel_out, relsz_out, symtab,
-					 false);
-}
-
-int elf_parse_dynamic_section_rela(struct elf_image *elf, const void *dyn_seg,
-				     void **rel_out, u64 *relsz_out, void **symtab)
-{
-	return elf_parse_dynamic_section(elf, dyn_seg, rel_out, relsz_out, symtab,
-					 true);
-}
-
-/*
- * Weak default implementation for architectures that don't support
- * ELF relocations yet. Can be overridden by arch-specific implementation.
- */
-int __weak elf_apply_relocations(struct elf_image *elf, const void *dyn_seg)
-{
-	pr_warn("ELF relocations not supported for this architecture\n");
-	return -ENOSYS;
-}
-
 static int elf_relocate(struct elf_image *elf)
 {
 	void *dyn_seg;
@@ -634,130 +423,3 @@ void elf_close(struct elf_image *elf)
 
 	free(elf);
 }
-
-/**
- * elf_load_inplace() - Apply dynamic relocations to an ELF binary in place
- * @elf: ELF image previously opened with elf_open_binary()
- *
- * This function applies dynamic relocations to an ELF binary that is already
- * loaded at its target address in memory. Unlike elf_load(), this does not
- * allocate memory or copy segments - it only modifies the existing image.
- *
- * This is useful for self-relocating loaders or when the ELF has been loaded
- * by external means (e.g., loaded by firmware or another bootloader).
- *
- * The ELF image must have been previously opened with elf_open_binary().
- *
- * For ET_DYN (position-independent) binaries, the relocation offset is
- * calculated relative to the first executable PT_LOAD segment (.text section).
- *
- * For ET_EXEC binaries, no relocation is applied as they are expected to
- * be at their link-time addresses.
- *
- * Returns: 0 on success, negative error code on failure
- */
-int elf_load_inplace(struct elf_image *elf)
-{
-	const void *dyn_seg;
-	void *buf, *phdr;
-	void *elf_buf;
-	int ret;
-	u64 text_vaddr = U64_MAX;
-	u64 text_vaddr_min = U64_MAX;
-	u64 text_offset = U64_MAX;
-
-	buf = elf->hdr_buf;
-	elf_buf = elf->hdr_buf;
-
-	/*
-	 * First pass: Clear BSS segments (p_memsz > p_filesz) and find lowest
-	 * virtual address.
-	 * BSS clearing must be done before relocations as uninitialized data
-	 * must be zeroed per C standard.
-	 */
-	phdr = buf + elf_hdr_e_phoff(elf, buf);
-	elf_for_each_segment(phdr, elf, buf) {
-		if (elf_phdr_p_type(elf, phdr) == PT_LOAD) {
-			u64 p_offset = elf_phdr_p_offset(elf, phdr);
-			u64 p_filesz = elf_phdr_p_filesz(elf, phdr);
-			u64 p_memsz = elf_phdr_p_memsz(elf, phdr);
-
-			/* Clear BSS (uninitialized data) */
-			if (p_filesz < p_memsz) {
-				void *bss_start = elf_buf + p_offset + p_filesz;
-				size_t bss_size = p_memsz - p_filesz;
-				memset(bss_start, 0x00, bss_size);
-			}
-
-			text_vaddr = elf_phdr_p_vaddr(elf, phdr);
-
-			if (text_vaddr < text_vaddr_min) {
-				text_vaddr_min = text_vaddr;
-				text_offset = p_offset;
-			}
-		}
-	}
-
-	text_vaddr = text_vaddr_min;
-
-	/*
-	 * Calculate relocation offset for the in-place binary.
-	 * For ET_DYN, we need to find the first PT_LOAD segment
-	 * and use it as the relocation base.
-	 */
-	if (elf->type == ET_DYN) {
-
-		if (text_vaddr == U64_MAX) {
-			pr_err("No PT_LOAD segment found\n");
-			ret = -EINVAL;
-			goto out;
-		}
-
-		/*
-		 * Calculate relocation offset relative to .text section:
-		 * - .text is at file offset text_offset, so in memory at: elf_buf + text_offset
-		 * - .text has virtual address text_vaddr
-		 * - reloc_offset = (actual .text address) - (virtual .text address)
-		 */
-		elf->reloc_offset = ((unsigned long)elf_buf + text_offset) - text_vaddr;
-
-		pr_debug("In-place ELF relocation: text_vaddr=0x%llx, text_offset=0x%llx, "
-			 "load_addr=%p, offset=0x%08lx\n",
-			 text_vaddr, text_offset, elf_buf, elf->reloc_offset);
-
-		/* Adjust entry point to point to relocated image */
-		elf->entry += elf->reloc_offset;
-	} else {
-		/*
-		 * ET_EXEC binaries are at their link-time addresses,
-		 * no relocation needed
-		 */
-		elf->reloc_offset = 0;
-	}
-
-	/* Find PT_DYNAMIC segment */
-	dyn_seg = elf_find_dynamic_segment(elf);
-	if (!dyn_seg) {
-		/*
-		 * No PT_DYNAMIC segment found.
-		 * This is fine for statically-linked binaries or
-		 * binaries without relocations.
-		 */
-		pr_debug("No PT_DYNAMIC segment found\n");
-		ret = 0;
-		goto out;
-	}
-
-	/* Apply architecture-specific relocations */
-	ret = elf_apply_relocations(elf, dyn_seg);
-	if (ret) {
-		pr_err("In-place relocation failed: %d\n", ret);
-		goto out;
-	}
-
-	pr_debug("In-place ELF relocation completed successfully\n");
-	return 0;
-
-out:
-	return ret;
-}
diff --git a/include/elf.h b/include/elf.h
index 872f9e39fee4..8afa5e56570b 100644
--- a/include/elf.h
+++ b/include/elf.h
@@ -2,6 +2,19 @@
 #ifndef __ELF_H
 #define __ELF_H
 
+#include <linux/types.h>
+#include <linux/list.h>
 #include <linux/elf.h>
+#include <lib/elf.h>
+
+static inline size_t elf_get_mem_size(struct elf_image *elf)
+{
+	return elf->high_addr - elf->low_addr;
+}
+
+struct elf_image *elf_open_binary(void *buf);
+struct elf_image *elf_open(const char *filename);
+void elf_close(struct elf_image *elf);
+int elf_load(struct elf_image *elf);
 
 #endif /* __ELF_H */
diff --git a/include/lib/elf.h b/include/lib/elf.h
new file mode 100644
index 000000000000..1521c81df6a7
--- /dev/null
+++ b/include/lib/elf.h
@@ -0,0 +1,75 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* ELF utility functions that require no allocations */
+#ifndef _LIB_ELF_H
+#define _LIB_ELF_H
+
+#include <linux/types.h>
+#include <linux/list.h>
+
+struct elf_image {
+	struct list_head list;
+	u8 class;
+	u16 type;		/* ET_EXEC or ET_DYN */
+	u64 entry;
+	void *low_addr;
+	void *high_addr;
+	void *hdr_buf;
+	const char *filename;
+	void *load_address;	/* User-specified load address (NULL = use p_paddr) */
+	void *base_load_addr;	/* Calculated base address for ET_DYN */
+	unsigned long reloc_offset;	/* Offset between p_vaddr and actual load address */
+};
+
+static inline void elf_init_struct(struct elf_image *elf)
+{
+	INIT_LIST_HEAD(&elf->list);
+	elf->low_addr = (void *) (unsigned long) -1;
+	elf->high_addr = 0;
+	elf->filename = NULL;
+}
+
+int elf_check_image(struct elf_image *elf, void *buf);
+int elf_open_binary_into(struct elf_image *elf, void *buf);
+
+/*
+ * Set the load address for the ELF file.
+ * Must be called before elf_load().
+ * If not set, ET_EXEC uses p_paddr, ET_DYN uses lowest p_paddr.
+ */
+void elf_set_load_address(struct elf_image *elf, void *addr);
+
+/*
+ * Parse the dynamic section and extract relocation information.
+ * This is a generic function that works for both 32-bit and 64-bit ELF files,
+ * and handles both REL and RELA relocation formats.
+ * Returns 0 on success, -EINVAL on error.
+ */
+void *elf_find_dynamic_segment(struct elf_image *elf);
+
+/*
+ * Parse the dynamic section and extract relocation information.
+ * This is a generic function that works for both 32-bit and 64-bit ELF files,
+ * and handles both REL and RELA relocation formats.
+ * Returns 0 on success, -EINVAL on error.
+ */
+int elf_parse_dynamic_section_rel(struct elf_image *elf, const void *dyn_seg,
+				  void **rel_out, u64 *relsz_out, void **symtab);
+int elf_parse_dynamic_section_rela(struct elf_image *elf, const void *dyn_seg,
+				   void **rel_out, u64 *relsz_out, void **symtab);
+
+/*
+ * Apply dynamic relocations to an ELF binary already loaded in memory.
+ * This modifies the ELF image in place without allocating new memory.
+ * Useful for self-relocating loaders or externally loaded binaries.
+ * The elf parameter must have been previously opened with elf_open_binary().
+ */
+int elf_load_inplace(struct elf_image *elf);
+
+/*
+ * Architecture-specific relocation handler.
+ * Returns 0 on success, -ENOSYS if architecture doesn't support relocations,
+ * other negative error codes on failure.
+ */
+int elf_apply_relocations(struct elf_image *elf, const void *dyn_seg);
+
+#endif
diff --git a/include/linux/elf.h b/include/linux/elf.h
index f54145e4af37..f670ed82a077 100644
--- a/include/linux/elf.h
+++ b/include/linux/elf.h
@@ -7,6 +7,7 @@
 //#include <linux/auxvec.h>
 //#include <linux/elf-em.h>
 #include <asm/elf.h>
+#include <lib/elf.h>
 
 struct file;
 
@@ -391,64 +392,6 @@ extern Elf64_Dyn _DYNAMIC [];
 
 #endif
 
-struct elf_image {
-	struct list_head list;
-	u8 class;
-	u16 type;		/* ET_EXEC or ET_DYN */
-	u64 entry;
-	void *low_addr;
-	void *high_addr;
-	void *hdr_buf;
-	const char *filename;
-	void *load_address;	/* User-specified load address (NULL = use p_paddr) */
-	void *base_load_addr;	/* Calculated base address for ET_DYN */
-	unsigned long reloc_offset;	/* Offset between p_vaddr and actual load address */
-};
-
-static inline size_t elf_get_mem_size(struct elf_image *elf)
-{
-	return elf->high_addr - elf->low_addr;
-}
-
-int elf_open_binary_into(struct elf_image *elf, void *buf);
-struct elf_image *elf_open_binary(void *buf);
-struct elf_image *elf_open(const char *filename);
-void elf_close(struct elf_image *elf);
-int elf_load(struct elf_image *elf);
-
-/*
- * Set the load address for the ELF file.
- * Must be called before elf_load().
- * If not set, ET_EXEC uses p_paddr, ET_DYN uses lowest p_paddr.
- */
-void elf_set_load_address(struct elf_image *elf, void *addr);
-
-/*
- * Apply dynamic relocations to an ELF binary already loaded in memory.
- * This modifies the ELF image in place without allocating new memory.
- * Useful for self-relocating loaders or externally loaded binaries.
- * The elf parameter must have been previously opened with elf_open_binary().
- */
-int elf_load_inplace(struct elf_image *elf);
-
-/*
- * Architecture-specific relocation handler.
- * Returns 0 on success, -ENOSYS if architecture doesn't support relocations,
- * other negative error codes on failure.
- */
-int elf_apply_relocations(struct elf_image *elf, const void *dyn_seg);
-
-/*
- * Parse the dynamic section and extract relocation information.
- * This is a generic function that works for both 32-bit and 64-bit ELF files,
- * and handles both REL and RELA relocation formats.
- * Returns 0 on success, -EINVAL on error.
- */
-int elf_parse_dynamic_section_rel(struct elf_image *elf, const void *dyn_seg,
-				  void **rel_out, u64 *relsz_out, void **symtab);
-int elf_parse_dynamic_section_rela(struct elf_image *elf, const void *dyn_seg,
-				   void **rel_out, u64 *relsz_out, void **symtab);
-
 #define ELF_GET_FIELD(__s, __field, __type) \
 static inline __type elf_##__s##_##__field(struct elf_image *elf, void *arg) { \
 	if (elf->class == ELFCLASS32) \
@@ -479,6 +422,14 @@ static inline unsigned long elf_size_of_phdr(struct elf_image *elf)
 		return sizeof(Elf64_Phdr);
 }
 
+static inline void *elf_phdr_relocated_paddr(struct elf_image *elf, void *phdr)
+{
+	if (elf->reloc_offset)
+		return (void *)(unsigned long)(elf->reloc_offset + elf_phdr_p_vaddr(elf, phdr));
+	else
+		return (void *)(unsigned long)elf_phdr_p_paddr(elf, phdr);
+}
+
 #define elf_for_each_segment(phdr, elf, buf) \
 	for (phdr = (void *)buf + elf_hdr_e_phoff(elf, buf); \
 	     phdr < (void *)buf + elf_hdr_e_phoff(elf, buf) + \
diff --git a/lib/Makefile b/lib/Makefile
index 6d259dd94e16..9f27d3413990 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -3,6 +3,7 @@
 obj-y			+= bobject.o
 obj-y			+= bcd.o
 obj-y			+= term.o
+obj-pbl-$(CONFIG_ELF)	+= elf.o
 obj-$(CONFIG_BOOTSTRAP)	+= bootstrap/
 obj-pbl-y		+= ctype.o
 obj-y			+= rbtree.o
diff --git a/lib/elf.c b/lib/elf.c
new file mode 100644
index 000000000000..fb2dd9cedb10
--- /dev/null
+++ b/lib/elf.c
@@ -0,0 +1,329 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2018 Pengutronix, Oleksij Rempel <o.rempel@pengutronix.de>
+ *
+ * ELF parts that need no extra allocations for use both in barebox PBL and proper.
+ */
+
+#include <lib/elf.h>
+#include <linux/elf.h>
+#include <errno.h>
+#include <linux/string.h>
+#include <linux/printk.h>
+
+int elf_check_image(struct elf_image *elf, void *buf)
+{
+	u16 e_type;
+
+	if (memcmp(buf, ELFMAG, SELFMAG)) {
+		pr_err("ELF magic not found.\n");
+		return -EINVAL;
+	}
+
+	elf->class = ((char *) buf)[EI_CLASS];
+
+	e_type = elf_hdr_e_type(elf, buf);
+	if (e_type != ET_EXEC && e_type != ET_DYN) {
+		pr_err("Unsupported ELF type: %u (only ET_EXEC and ET_DYN supported)\n", e_type);
+		return -ENOEXEC;
+	}
+
+	if (elf->class != ELF_CLASS)
+		return -EINVAL;
+
+	elf->type = e_type;
+
+	if (!elf_hdr_e_phnum(elf, buf)) {
+		pr_err("No phdr found.\n");
+		return -ENOEXEC;
+	}
+
+	return 0;
+}
+
+int elf_open_binary_into(struct elf_image *elf, void *buf)
+{
+	int ret;
+
+	memset(elf, 0, sizeof(*elf));
+	elf_init_struct(elf);
+
+	elf->hdr_buf = buf;
+	ret = elf_check_image(elf, buf);
+	if (ret)
+		return ret;
+
+	elf->entry = elf_hdr_e_entry(elf, elf->hdr_buf);
+
+	return 0;
+}
+
+void elf_set_load_address(struct elf_image *elf, void *addr)
+{
+	elf->load_address = addr;
+}
+
+void *elf_find_dynamic_segment(struct elf_image *elf)
+{
+	void *buf = elf->hdr_buf;
+	void *phdr = buf + elf_hdr_e_phoff(elf, buf);
+
+	elf_for_each_segment(phdr, elf, buf) {
+		if (elf_phdr_p_type(elf, phdr) == PT_DYNAMIC)
+			return elf_phdr_relocated_paddr(elf, phdr);
+	}
+
+	return NULL;  /* No PT_DYNAMIC segment */
+}
+
+/**
+ * elf_parse_dynamic_section - Parse the dynamic section and extract relocation info
+ * @elf: ELF image structure
+ * @dyn_seg: Pointer to the PT_DYNAMIC segment
+ * @rel_out: Output pointer to the relocation table (either REL or RELA)
+ * @relsz_out: Output size of the relocation table in bytes
+ * @is_rela: flag indicating RELA (true) vs REL (false) format is expected
+ *
+ * This is a generic function that works for both 32-bit and 64-bit ELF files,
+ * and handles both REL and RELA relocation formats.
+ *
+ * Returns: 0 on success, -EINVAL on error
+ */
+static int elf_parse_dynamic_section(struct elf_image *elf, const void *dyn_seg,
+				     void **rel_out, u64 *relsz_out, void **symtab,
+				     bool is_rela)
+{
+	const void *dyn = dyn_seg;
+	void *rel = NULL, *rela = NULL;
+	u64 relsz = 0, relasz = 0;
+	u64 relent = 0, relaent = 0;
+	phys_addr_t base = (phys_addr_t)elf->reloc_offset;
+	size_t expected_rel_size, expected_rela_size;
+
+	/* Calculate expected sizes based on ELF class */
+	if (ELF_CLASS == ELFCLASS32) {
+		expected_rel_size = sizeof(Elf32_Rel);
+		expected_rela_size = sizeof(Elf32_Rela);
+	} else {
+		expected_rel_size = sizeof(Elf64_Rel);
+		expected_rela_size = sizeof(Elf64_Rela);
+	}
+
+	/* Iterate through dynamic entries until DT_NULL */
+	while (elf_dyn_d_tag(elf, dyn) != DT_NULL) {
+		unsigned long tag = elf_dyn_d_tag(elf, dyn);
+
+		switch (tag) {
+		case DT_REL:
+			/* REL table address - needs to be adjusted by load offset */
+			rel = (void *)(unsigned long)(base + elf_dyn_d_ptr(elf, dyn));
+			break;
+		case DT_RELSZ:
+			relsz = elf_dyn_d_val(elf, dyn);
+			break;
+		case DT_RELENT:
+			relent = elf_dyn_d_val(elf, dyn);
+			break;
+		case DT_RELA:
+			/* RELA table address - needs to be adjusted by load offset */
+			rela = (void *)(unsigned long)(base + elf_dyn_d_ptr(elf, dyn));
+			break;
+		case DT_RELASZ:
+			relasz = elf_dyn_d_val(elf, dyn);
+			break;
+		case DT_RELAENT:
+			relaent = elf_dyn_d_val(elf, dyn);
+			break;
+		case DT_SYMTAB:
+			*symtab = (void *)(unsigned long)(base + elf_dyn_d_val(elf, dyn));
+			break;
+		default:
+			break;
+		}
+
+		dyn += elf_size_of_dyn(elf);
+	}
+
+	/* Check that we found exactly one relocation type */
+	if (rel && rela) {
+		pr_err("ELF has both REL and RELA relocations\n");
+		return -EINVAL;
+	}
+
+	if (rel && !is_rela) {
+		/* REL relocations */
+		if (!relsz || relent != expected_rel_size) {
+			pr_debug("No REL relocations or invalid relocation info\n");
+			return -EINVAL;
+		}
+		*rel_out = rel;
+		*relsz_out = relsz;
+
+		return 0;
+	} else if (rela && is_rela) {
+		/* RELA relocations */
+		if (!relasz || relaent != expected_rela_size) {
+			pr_debug("No RELA relocations or invalid relocation info\n");
+			return -EINVAL;
+		}
+		*rel_out = rela;
+		*relsz_out = relasz;
+
+		return 0;
+	}
+
+	pr_debug("No relocations found in dynamic section\n");
+
+	return -EINVAL;
+}
+
+int elf_parse_dynamic_section_rel(struct elf_image *elf, const void *dyn_seg,
+				     void **rel_out, u64 *relsz_out, void **symtab)
+{
+	return elf_parse_dynamic_section(elf, dyn_seg, rel_out, relsz_out, symtab,
+					 false);
+}
+
+int elf_parse_dynamic_section_rela(struct elf_image *elf, const void *dyn_seg,
+				     void **rel_out, u64 *relsz_out, void **symtab)
+{
+	return elf_parse_dynamic_section(elf, dyn_seg, rel_out, relsz_out, symtab,
+					 true);
+}
+
+/*
+ * Weak default implementation for architectures that don't support
+ * ELF relocations yet. Can be overridden by arch-specific implementation.
+ */
+int __weak elf_apply_relocations(struct elf_image *elf, const void *dyn_seg)
+{
+	pr_warn("ELF relocations not supported for this architecture\n");
+	return -ENOSYS;
+}
+
+/**
+ * elf_load_inplace() - Apply dynamic relocations to an ELF binary in place
+ * @elf: ELF image previously opened with elf_open_binary()
+ *
+ * This function applies dynamic relocations to an ELF binary that is already
+ * loaded at its target address in memory. Unlike elf_load(), this does not
+ * allocate memory or copy segments - it only modifies the existing image.
+ *
+ * This is useful for self-relocating loaders or when the ELF has been loaded
+ * by external means (e.g., loaded by firmware or another bootloader).
+ *
+ * The ELF image must have been previously opened with elf_open_binary().
+ *
+ * For ET_DYN (position-independent) binaries, the relocation offset is
+ * calculated relative to the first executable PT_LOAD segment (.text section).
+ *
+ * For ET_EXEC binaries, no relocation is applied as they are expected to
+ * be at their link-time addresses.
+ *
+ * Returns: 0 on success, negative error code on failure
+ */
+int elf_load_inplace(struct elf_image *elf)
+{
+	const void *dyn_seg;
+	void *buf, *phdr;
+	void *elf_buf;
+	int ret;
+	u64 text_vaddr = U64_MAX;
+	u64 text_vaddr_min = U64_MAX;
+	u64 text_offset = U64_MAX;
+
+	buf = elf->hdr_buf;
+	elf_buf = elf->hdr_buf;
+
+	/*
+	 * First pass: Clear BSS segments (p_memsz > p_filesz) and find lowest
+	 * virtual address.
+	 * BSS clearing must be done before relocations as uninitialized data
+	 * must be zeroed per C standard.
+	 */
+	phdr = buf + elf_hdr_e_phoff(elf, buf);
+	elf_for_each_segment(phdr, elf, buf) {
+		if (elf_phdr_p_type(elf, phdr) == PT_LOAD) {
+			u64 p_offset = elf_phdr_p_offset(elf, phdr);
+			u64 p_filesz = elf_phdr_p_filesz(elf, phdr);
+			u64 p_memsz = elf_phdr_p_memsz(elf, phdr);
+
+			/* Clear BSS (uninitialized data) */
+			if (p_filesz < p_memsz) {
+				void *bss_start = elf_buf + p_offset + p_filesz;
+				size_t bss_size = p_memsz - p_filesz;
+				memset(bss_start, 0x00, bss_size);
+			}
+
+			text_vaddr = elf_phdr_p_vaddr(elf, phdr);
+
+			if (text_vaddr < text_vaddr_min) {
+				text_vaddr_min = text_vaddr;
+				text_offset = p_offset;
+			}
+		}
+	}
+
+	text_vaddr = text_vaddr_min;
+
+	/*
+	 * Calculate relocation offset for the in-place binary.
+	 * For ET_DYN, we need to find the first PT_LOAD segment
+	 * and use it as the relocation base.
+	 */
+	if (elf->type == ET_DYN) {
+
+		if (text_vaddr == U64_MAX) {
+			pr_err("No PT_LOAD segment found\n");
+			ret = -EINVAL;
+			goto out;
+		}
+
+		/*
+		 * Calculate relocation offset relative to .text section:
+		 * - .text is at file offset text_offset, so in memory at: elf_buf + text_offset
+		 * - .text has virtual address text_vaddr
+		 * - reloc_offset = (actual .text address) - (virtual .text address)
+		 */
+		elf->reloc_offset = ((unsigned long)elf_buf + text_offset) - text_vaddr;
+
+		pr_debug("In-place ELF relocation: text_vaddr=0x%llx, text_offset=0x%llx, "
+			 "load_addr=%p, offset=0x%08lx\n",
+			 text_vaddr, text_offset, elf_buf, elf->reloc_offset);
+
+		/* Adjust entry point to point to relocated image */
+		elf->entry += elf->reloc_offset;
+	} else {
+		/*
+		 * ET_EXEC binaries are at their link-time addresses,
+		 * no relocation needed
+		 */
+		elf->reloc_offset = 0;
+	}
+
+	/* Find PT_DYNAMIC segment */
+	dyn_seg = elf_find_dynamic_segment(elf);
+	if (!dyn_seg) {
+		/*
+		 * No PT_DYNAMIC segment found.
+		 * This is fine for statically-linked binaries or
+		 * binaries without relocations.
+		 */
+		pr_debug("No PT_DYNAMIC segment found\n");
+		ret = 0;
+		goto out;
+	}
+
+	/* Apply architecture-specific relocations */
+	ret = elf_apply_relocations(elf, dyn_seg);
+	if (ret) {
+		pr_err("In-place relocation failed: %d\n", ret);
+		goto out;
+	}
+
+	pr_debug("In-place ELF relocation completed successfully\n");
+	return 0;
+
+out:
+	return ret;
+}
-- 
2.47.3



