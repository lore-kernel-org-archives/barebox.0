Delivery-date: Thu, 08 Jan 2026 17:02:43 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vdsTD-002fgX-1d
	for lore@lore.pengutronix.de;
	Thu, 08 Jan 2026 17:02:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vdsTB-0001BB-7V
	for lore@pengutronix.de; Thu, 08 Jan 2026 17:02:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uG3EL/F16pW4aDJPkQQLrwDuBlx92NxpA5G/JdOkvGQ=; b=W2D36IMc2i/9FCMYv13VOfb9Um
	Ku81Fb9OXY8ePMQg3QUZuJcPCT06U9fZ6wWMG33XVpPpMFxiQmz5fEmNcqgpjohjgity9wgQ2GT0B
	UuJjrtJbRE08DumvMVgcgYglkPYq6EW3BJYioW7+orNzpFd16N35+hv0/ybArzniQy/FcHW6n5FPQ
	rE6/KzZvzLERH2eFwqewNL4Zy/R/j5JFJivoKfaXZfopXBxYNS+ChHso53S4+VaWrdDXtA/SdYi9h
	lwUMUDmh5BIewhuHZz3RsWyR6aX1fFz9M9PfNnSf5nH4L2tVgdNwVNRr9wAMxPhb8l1J39JmG3rJv
	v1MljhMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdsSP-0000000025O-2nTt;
	Thu, 08 Jan 2026 16:01:53 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdsSA-000000001uS-0RsV
	for barebox@bombadil.infradead.org;
	Thu, 08 Jan 2026 16:01:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=uG3EL/F16pW4aDJPkQQLrwDuBlx92NxpA5G/JdOkvGQ=; b=qxuwPnRQ99GoDS6UKA4uTMFE6l
	3IOunIRxfY4lb4Iq3SnGm0NsZw5L79yYj/HKgEQ7rb1X29xtHpPFMGBavdiTMbfsynRmZmjrZEaDy
	gj593/hzPT+kroYtMOqVOytlLMa6614VeULzBB9fxCBHJYmtRJLs12nSIwI1eFuWj8UY6oZYvcKV8
	oRcJazXHUAe+V71jdQrPfu/jNSYvHo9mrUj1zwucRgSIdH5abJEYiwKgyk1OvXw3eMdCeocG83eGu
	B43uEn3bzJifqtg6B3lzWbN/9z7KP/LerfmpePbjuapinZiMPWwM8ZTpDaXUuef6l4uCh34PKTJmQ
	wGG1HpGA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdsS3-0000000DaVt-0YZv
	for barebox@lists.infradead.org;
	Thu, 08 Jan 2026 16:01:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vdsS2-0000UP-R2; Thu, 08 Jan 2026 17:01:30 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vdsS2-009hXk-21;
	Thu, 08 Jan 2026 17:01:30 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vdsGv-0000000AN2q-1auF;
	Thu, 08 Jan 2026 16:50:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 08 Jan 2026 16:50:14 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260108-pbl-load-elf-v3-17-e28c931fc179@pengutronix.de>
References: <20260108-pbl-load-elf-v3-0-e28c931fc179@pengutronix.de>
In-Reply-To: <20260108-pbl-load-elf-v3-0-e28c931fc179@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767887401; l=10321;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=3qAKDqkcJHhfVaG7Fmke7JoM2iCmRCbidtFobKMHX+k=;
 b=EkWq6ol2h8lvjbyFp6/c0MTI/3cN1vPwfparU0T0O/S1YGgSfJXlkrjD8pGC6JPN7ssYXxkmA
 78I+b8sWl/xD9JtnmPxv5urBzizlkpygFpFsixbeta/ZdHGgLRQCYSm
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260108_160131_247694_A2EBF11D 
X-CRM114-Status: GOOD (  24.37  )
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
Cc: "Claude Sonnet 4.5" <noreply@anthropic.com>
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
Subject: [PATCH v3 17/23] ARM: PBL: setup MMU with proper permissions from
 ELF segments
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Move complete MMU setup into PBL by leveraging ELF segment information
to apply correct memory permissions before jumping to barebox proper.

After ELF relocation, parse PT_LOAD segments and map each with
permissions derived from p_flags:
- Text segments (PF_R|PF_X): Read-only + executable (MAP_CODE)
- Data segments (PF_R|PF_W): Read-write (MAP_CACHED)
- RO data segments (PF_R): Read-only (ARCH_MAP_CACHED_RO)

This ensures barebox proper starts with full W^X protection already
in place, eliminating the need for complex remapping in barebox proper.

The framework is portable - common ELF parsing in pbl/mmu.c uses
architecture-specific early_remap_range() exported from mmu_*.c.

🤖 Generated with [Claude Code](https://claude.com/claude-code)

Co-Authored-By: Claude Sonnet 4.5 <noreply@anthropic.com>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/mmu-common.c |  27 +++++------
 arch/arm/cpu/uncompress.c |  14 ++++++
 include/pbl/mmu.h         |  29 ++++++++++++
 pbl/Makefile              |   1 +
 pbl/mmu.c                 | 111 ++++++++++++++++++++++++++++++++++++++++++++++
 5 files changed, 167 insertions(+), 15 deletions(-)

diff --git a/arch/arm/cpu/mmu-common.c b/arch/arm/cpu/mmu-common.c
index 67317f127cadb138cc2e85bb18c92ab47bc1206f..2c80b2a426cb8b487db5c407e950c2e10c23a096 100644
--- a/arch/arm/cpu/mmu-common.c
+++ b/arch/arm/cpu/mmu-common.c
@@ -109,16 +109,16 @@ static inline void remap_range_end(unsigned long start, unsigned long end,
 	remap_range((void *)start, end - start, map_type);
 }
 
-static inline void remap_range_end_sans_text(unsigned long start, unsigned long end,
+static inline void remap_range_end_sans_image(unsigned long start, unsigned long end,
 					     unsigned map_type)
 {
-	unsigned long text_start = (unsigned long)&_stext;
-	unsigned long text_end = (unsigned long)&_etext;
+	unsigned long image_start = (unsigned long)&_stext;
+	unsigned long image_end = (unsigned long)&_etext;
 
-	if (region_overlap_end_exclusive(start, end, text_start, text_end)) {
-		remap_range_end(start, text_start, MAP_CACHED);
+	if (region_overlap_end_exclusive(start, end, image_start, image_end)) {
+		remap_range_end(start, image_start, MAP_CACHED);
 		/* skip barebox segments here, will be mapped later */
-		start = text_end;
+		start = image_end;
 	}
 
 	remap_range_end(start, end, MAP_CACHED);
@@ -127,10 +127,6 @@ static inline void remap_range_end_sans_text(unsigned long start, unsigned long
 static void mmu_remap_memory_banks(void)
 {
 	struct memory_bank *bank;
-	unsigned long code_start = (unsigned long)&_stext;
-	unsigned long code_size = (unsigned long)&__start_rodata - (unsigned long)&_stext;
-	unsigned long rodata_start = (unsigned long)&__start_rodata;
-	unsigned long rodata_size = (unsigned long)&__end_rodata - rodata_start;
 
 	/*
 	 * Early mmu init will have mapped everything but the initial memory area
@@ -138,6 +134,10 @@ static void mmu_remap_memory_banks(void)
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
@@ -150,16 +150,13 @@ static void mmu_remap_memory_banks(void)
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
index 8cc7102290986e71d2f3a2f34df1a9f946c56ced..619bd8d5b0b56ab2704a0fa1e4964bb603b761d9 100644
--- a/arch/arm/cpu/uncompress.c
+++ b/arch/arm/cpu/uncompress.c
@@ -21,6 +21,7 @@
 #include <asm/unaligned.h>
 #include <compressed-dtb.h>
 #include <elf.h>
+#include <pbl/mmu.h>
 
 #include <debug_ll.h>
 
@@ -105,6 +106,19 @@ void __noreturn barebox_pbl_start(unsigned long membase, unsigned long memsize,
 
 	pr_debug("ELF entry point: 0x%llx\n", elf.entry);
 
+	/*
+	 * Now that the ELF image is relocated, we know the exact addresses
+	 * of all segments. Set up MMU with proper permissions based on
+	 * ELF segment flags (PF_R/W/X).
+	 */
+	if (IS_ENABLED(CONFIG_MMU)) {
+		ret = pbl_mmu_setup_from_elf(&elf, membase, memsize);
+		if (ret) {
+			pr_err("Failed to setup MMU from ELF: %d\n", ret);
+			hang();
+		}
+	}
+
 	barebox = (void *)(unsigned long)elf.entry;
 
 	handoff_data_move(handoff_data);
diff --git a/include/pbl/mmu.h b/include/pbl/mmu.h
new file mode 100644
index 0000000000000000000000000000000000000000..4a00d8e528ab5452981347185c9114235f213e2b
--- /dev/null
+++ b/include/pbl/mmu.h
@@ -0,0 +1,29 @@
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
+int pbl_mmu_setup_from_elf(struct elf_image *elf, unsigned long membase,
+			    unsigned long memsize);
+
+#endif /* __PBL_MMU_H */
diff --git a/pbl/Makefile b/pbl/Makefile
index f66391be7b2898388425657f54afcd6e4c72e3db..b78124cdcd2a4690be11d5503006723252b4904f 100644
--- a/pbl/Makefile
+++ b/pbl/Makefile
@@ -9,3 +9,4 @@ pbl-$(CONFIG_HAVE_IMAGE_COMPRESSION) += decomp.o
 pbl-$(CONFIG_LIBFDT) += fdt.o
 pbl-$(CONFIG_PBL_CONSOLE) += console.o
 obj-pbl-y += handoff-data.o
+obj-pbl-$(CONFIG_MMU) += mmu.o
diff --git a/pbl/mmu.c b/pbl/mmu.c
new file mode 100644
index 0000000000000000000000000000000000000000..853fdcba55699025ea1d2a49385747e29cb2debc
--- /dev/null
+++ b/pbl/mmu.c
@@ -0,0 +1,111 @@
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
+	int i;
+	int phnum = elf_hdr_e_phnum(elf, elf->hdr_buf);
+	size_t phoff = elf_hdr_e_phoff(elf, elf->hdr_buf);
+	size_t phentsize = elf_size_of_phdr(elf);
+
+	pr_debug("Setting up MMU from ELF segments\n");
+	pr_debug("ELF entry point: 0x%llx\n", elf->entry);
+	pr_debug("ELF loaded at: 0x%p - 0x%p\n", elf->low_addr, elf->high_addr);
+
+	/*
+	 * Iterate through all PT_LOAD segments and set up MMU permissions
+	 * based on the segment's p_flags
+	 */
+	for (i = 0; i < phnum; i++) {
+		phdr = elf->hdr_buf + phoff + i * phentsize;
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
+		if (!IS_ALIGNED(addr, PAGE_SIZE) || !IS_ALIGNED(size, PAGE_SIZE)) {
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
+		 * Use page-wise mapping to allow different permissions for
+		 * different segments even if they're nearby.
+		 */
+		pbl_remap_range((void *)addr, addr, size, mmu_flags);
+	}
+
+	pr_debug("MMU setup from ELF complete\n");
+	return 0;
+}

-- 
2.47.3



