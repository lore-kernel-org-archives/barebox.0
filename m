Delivery-date: Fri, 16 Jan 2026 09:36:09 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgfJR-001trM-3D
	for lore@lore.pengutronix.de;
	Fri, 16 Jan 2026 09:36:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgfJP-00087Q-3q
	for lore@pengutronix.de; Fri, 16 Jan 2026 09:36:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=X/wd3vSzDWHcKzrDyqUfIzyS+WJy+VA8pRgwmO6vNDE=; b=tfhnIxysMXD5e/GADVBudpF4l4
	ZnGf5ISKR9e5C01B313taTdSBB9yJIE58Ivdg6x2O5Af9Dc+8tzVvZeMQcLJUS5GZAoJlMa3JhgFH
	Npr4oKMYj/zUzv2qtgqaKlclJjQ9Wz44tPCyp1Ck5b32xoUowXd1QjjN+YsosANclojK+D7r2ENuV
	Y+OmkNGmOxWlwrW7uVKHZpaaMpe3ptfIkOvr++NQhor6Z1WvA1d8tBcOMme5kNy3FVC3O+w2+E2Nf
	kMnueB1XsD5VM6YkjFyPXrhmSL9dxbl1u+GMN/1lNily/RrKcZyJXv9thjMH3SN7Gw2TdsduuM40t
	6ZlQ118A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgfIn-0000000DlvA-2XG2;
	Fri, 16 Jan 2026 08:35:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgfId-0000000Dlh9-1sZC
	for barebox@lists.infradead.org;
	Fri, 16 Jan 2026 08:35:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vgfIb-0007TX-T3; Fri, 16 Jan 2026 09:35:17 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vgfIc-000tEI-18;
	Fri, 16 Jan 2026 09:35:17 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vgewH-00000005hOg-1jml;
	Fri, 16 Jan 2026 09:12:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 16 Jan 2026 09:12:29 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260116-pbl-load-elf-v5-18-51d042021c5a@pengutronix.de>
References: <20260116-pbl-load-elf-v5-0-51d042021c5a@pengutronix.de>
In-Reply-To: <20260116-pbl-load-elf-v5-0-51d042021c5a@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768551133; l=9788;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=mMWr+fGdksQ+F5+Jo2SU9Z0i6IMflW3XRSOtp5GgEcE=;
 b=uV9JycBqdirBwTfReEiGiyBf5Vgr9mfFbvkxiCNvYVkrp2hFteQZi3LzCbZJaxmZSyEkXOpR9
 u29RMuPR5T7Dc8Ko3XzWG0rE+Y95zaXiE9hXJZAnBt5agKpUzHnvOX1
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260116_003519_647542_3CBAC640 
X-CRM114-Status: GOOD (  24.03  )
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
Cc: "Claude Sonnet 4.5" <noreply@anthropic.com>, Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v5 18/22] ARM: PBL: setup MMU with proper permissions from
 ELF segments
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Move complete MMU setup into PBL by leveraging ELF segment information
to apply correct memory permissions before jumping to barebox proper.

After ELF relocation, parse PT_LOAD segments and map each with
permissions derived from p_flags:
- Text segments (PF_R|PF_X): Read-only + executable (MAP_CODE)
- Data segments (PF_R|PF_W): Read-write (MAP_CACHED)
- RO data segments (PF_R): Read-only (MAP_CACHED_RO)

This ensures barebox proper starts with full W^X protection already
in place, eliminating the need for complex remapping in barebox proper.

The framework is portable - common ELF parsing in pbl/mmu.c uses
architecture-specific early_remap_range() exported from mmu_*.c.

Co-Authored-By: Claude Sonnet 4.5 <noreply@anthropic.com>
Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/mmu-common.c |  31 +++++++-------
 arch/arm/cpu/uncompress.c |  10 +++++
 include/pbl/mmu.h         |  38 +++++++++++++++++
 pbl/Makefile              |   1 +
 pbl/mmu.c                 | 105 ++++++++++++++++++++++++++++++++++++++++++++++
 5 files changed, 169 insertions(+), 16 deletions(-)

diff --git a/arch/arm/cpu/mmu-common.c b/arch/arm/cpu/mmu-common.c
index 67317f127c..4f3ad4a794 100644
--- a/arch/arm/cpu/mmu-common.c
+++ b/arch/arm/cpu/mmu-common.c
@@ -109,28 +109,26 @@ static inline void remap_range_end(unsigned long start, unsigned long end,
 	remap_range((void *)start, end - start, map_type);
 }
 
-static inline void remap_range_end_sans_text(unsigned long start, unsigned long end,
+static inline void remap_range_end_sans_image(unsigned long start, unsigned long end,
 					     unsigned map_type)
 {
-	unsigned long text_start = (unsigned long)&_stext;
-	unsigned long text_end = (unsigned long)&_etext;
+	unsigned long image_start = (unsigned long)&__image_start;
+	unsigned long image_end = (unsigned long)&__image_end;
 
-	if (region_overlap_end_exclusive(start, end, text_start, text_end)) {
-		remap_range_end(start, text_start, MAP_CACHED);
-		/* skip barebox segments here, will be mapped later */
-		start = text_end;
+	if (region_overlap_end_exclusive(start, end, image_start, image_end)) {
+		remap_range_end(start, image_start, MAP_CACHED);
+		/* skip barebox segments here, PBL has already mapped them */
+		start = image_end;
 	}
 
+	start = ALIGN(start, PAGE_SIZE);
+
 	remap_range_end(start, end, MAP_CACHED);
 }
 
 static void mmu_remap_memory_banks(void)
 {
 	struct memory_bank *bank;
-	unsigned long code_start = (unsigned long)&_stext;
-	unsigned long code_size = (unsigned long)&__start_rodata - (unsigned long)&_stext;
-	unsigned long rodata_start = (unsigned long)&__start_rodata;
-	unsigned long rodata_size = (unsigned long)&__end_rodata - rodata_start;
 
 	/*
 	 * Early mmu init will have mapped everything but the initial memory area
@@ -138,6 +136,10 @@ static void mmu_remap_memory_banks(void)
 	 * all memory banks, so let's map all pages, excluding reserved memory areas
 	 * and barebox text area cacheable.
 	 *
+	 * PBL has already set up the MMU with proper permissions for text, data
+	 * and rodata based on ELF segment information, so we don't need to remap
+	 * those here.
+	 *
 	 * This code will become much less complex once we switch over to using
 	 * CONFIG_MEMORY_ATTRIBUTES for MMU as well.
 	 */
@@ -150,16 +152,13 @@ static void mmu_remap_memory_banks(void)
 		/* Skip reserved regions */
 		for_each_reserved_region(bank, rsv) {
 			if (pos != rsv->start)
-				remap_range_end_sans_text(pos, rsv->start, MAP_CACHED);
+				remap_range_end_sans_image(pos, rsv->start, MAP_CACHED);
 			pos = rsv->end + 1;
 		}
 
-		remap_range_end_sans_text(pos, bank->res->end + 1, MAP_CACHED);
+		remap_range_end_sans_image(pos, bank->res->end + 1, MAP_CACHED);
 	}
 
-	remap_range((void *)code_start, code_size, MAP_CODE);
-	remap_range((void *)rodata_start, rodata_size, MAP_CACHED_RO);
-
 	setup_trap_pages();
 }
 
diff --git a/arch/arm/cpu/uncompress.c b/arch/arm/cpu/uncompress.c
index 10df5fcba9..9a9f391022 100644
--- a/arch/arm/cpu/uncompress.c
+++ b/arch/arm/cpu/uncompress.c
@@ -21,6 +21,7 @@
 #include <asm/unaligned.h>
 #include <compressed-dtb.h>
 #include <elf.h>
+#include <pbl/mmu.h>
 
 #include <debug_ll.h>
 
@@ -103,6 +104,15 @@ void __noreturn barebox_pbl_start(unsigned long membase, unsigned long memsize,
 	if (ret)
 		panic("Failed to relocate ELF: %d\n", ret);
 
+	/*
+	 * Now that the ELF image is relocated, we know the exact addresses
+	 * of all segments. Set up MMU with proper permissions based on
+	 * ELF segment flags (PF_R/W/X).
+	 */
+	ret = pbl_mmu_setup_from_elf(&elf, membase, memsize);
+	if (ret)
+		panic("Failed to setup MMU from ELF: %d\n", ret);
+
 	barebox = (void *)(unsigned long)elf.entry;
 
 	handoff_data_move(handoff_data);
diff --git a/include/pbl/mmu.h b/include/pbl/mmu.h
new file mode 100644
index 0000000000..72537604e2
--- /dev/null
+++ b/include/pbl/mmu.h
@@ -0,0 +1,38 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+#ifndef __PBL_MMU_H
+#define __PBL_MMU_H
+
+#include <linux/types.h>
+
+struct elf_image;
+
+/**
+ * pbl_mmu_setup_from_elf() - Configure MMU using ELF segment information
+ * @elf: ELF image structure from elf_open_binary_into()
+ * @membase: Base address of RAM
+ * @memsize: Size of RAM
+ *
+ * This function sets up the MMU with proper permissions based on ELF
+ * segment flags. It should be called after elf_load_inplace() has
+ * relocated the barebox image.
+ *
+ * Segment permissions are mapped as follows:
+ *   PF_R | PF_X  -> Read-only + executable (text)
+ *   PF_R | PF_W  -> Read-write (data, bss)
+ *   PF_R         -> Read-only (rodata)
+ *
+ * Return: 0 on success, negative error code on failure
+ */
+#if IS_ENABLED(CONFIG_MMU)
+int pbl_mmu_setup_from_elf(struct elf_image *elf, unsigned long membase,
+			    unsigned long memsize);
+#else
+static inline int pbl_mmu_setup_from_elf(struct elf_image *elf,
+					 unsigned long membase,
+					 unsigned long memsize)
+{
+	return 0;
+}
+#endif
+
+#endif /* __PBL_MMU_H */
diff --git a/pbl/Makefile b/pbl/Makefile
index f66391be7b..b78124cdcd 100644
--- a/pbl/Makefile
+++ b/pbl/Makefile
@@ -9,3 +9,4 @@ pbl-$(CONFIG_HAVE_IMAGE_COMPRESSION) += decomp.o
 pbl-$(CONFIG_LIBFDT) += fdt.o
 pbl-$(CONFIG_PBL_CONSOLE) += console.o
 obj-pbl-y += handoff-data.o
+obj-pbl-$(CONFIG_MMU) += mmu.o
diff --git a/pbl/mmu.c b/pbl/mmu.c
new file mode 100644
index 0000000000..744a76afa6
--- /dev/null
+++ b/pbl/mmu.c
@@ -0,0 +1,105 @@
+// SPDX-License-Identifier: GPL-2.0-only
+// SPDX-FileCopyrightText: 2025 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
+
+#define pr_fmt(fmt) "pbl-mmu: " fmt
+
+#include <common.h>
+#include <elf.h>
+#include <mmu.h>
+#include <pbl/mmu.h>
+#include <asm/mmu.h>
+#include <linux/bits.h>
+#include <linux/sizes.h>
+
+/*
+ * Map ELF segment permissions (p_flags) to architecture MMU flags
+ */
+static unsigned int elf_flags_to_mmu_flags(u32 p_flags)
+{
+	bool readable = p_flags & PF_R;
+	bool writable = p_flags & PF_W;
+	bool executable = p_flags & PF_X;
+
+	if (readable && writable) {
+		/* Data, BSS: Read-write, cached, non-executable */
+		return MAP_CACHED;
+	} else if (readable && executable) {
+		/* Text: Read-only, cached, executable */
+		return MAP_CODE;
+	} else if (readable) {
+		/* Read-only data: Read-only, cached, non-executable */
+		return MAP_CACHED_RO;
+	} else {
+		/*
+		 * Unusual: segment with no read permission.
+		 * Map as uncached, non-executable for safety.
+		 */
+		pr_warn("Segment with unusual permissions: flags=0x%x\n", p_flags);
+		return MAP_UNCACHED;
+	}
+}
+
+int pbl_mmu_setup_from_elf(struct elf_image *elf, unsigned long membase,
+			    unsigned long memsize)
+{
+	void *phdr;
+	int i = -1;
+
+	pr_debug("Setting up MMU from ELF segments\n");
+	pr_debug("ELF loaded at: 0x%p - 0x%p\n", elf->low_addr, elf->high_addr);
+
+	/*
+	 * Iterate through all PT_LOAD segments and set up MMU permissions
+	 * based on the segment's p_flags
+	 */
+	elf_for_each_segment(phdr, elf, elf->hdr_buf) {
+		i++;
+
+		if (elf_phdr_p_type(elf, phdr) != PT_LOAD)
+			continue;
+
+		u64 p_vaddr = elf_phdr_p_vaddr(elf, phdr);
+		u64 p_memsz = elf_phdr_p_memsz(elf, phdr);
+		u32 p_flags = elf_phdr_p_flags(elf, phdr);
+
+		/*
+		 * Calculate actual address after relocation.
+		 * For ET_EXEC: reloc_offset is 0, use p_vaddr directly
+		 * For ET_DYN: reloc_offset adjusts virtual to actual address
+		 */
+		unsigned long addr = p_vaddr + elf->reloc_offset;
+		unsigned long size = p_memsz;
+		unsigned long segment_end = addr + size;
+
+		/* Validate segment is within available memory */
+		if (segment_end < addr || /* overflow check */
+		    addr < membase ||
+		    segment_end > membase + memsize) {
+			pr_err("Segment %d outside memory bounds\n", i);
+			return -EINVAL;
+		}
+
+		/* Validate alignment - warn and round if needed */
+		if (!IS_ALIGNED(size, PAGE_SIZE)) {
+			pr_debug("Segment %d not page-aligned, rounding\n", i);
+			size = ALIGN(size, PAGE_SIZE);
+		}
+
+		unsigned int mmu_flags = elf_flags_to_mmu_flags(p_flags);
+
+		pr_debug("Segment %d: addr=0x%08lx size=0x%08lx flags=0x%x [%c%c%c] -> mmu_flags=0x%x\n",
+			 i, addr, size, p_flags,
+			 (p_flags & PF_R) ? 'R' : '-',
+			 (p_flags & PF_W) ? 'W' : '-',
+			 (p_flags & PF_X) ? 'X' : '-',
+			 mmu_flags);
+
+		/*
+		 * Remap this segment with proper permissions.
+		 */
+		remap_range((void *)addr, size, mmu_flags);
+	}
+
+	pr_debug("MMU setup from ELF complete\n");
+	return 0;
+}

-- 
2.47.3



