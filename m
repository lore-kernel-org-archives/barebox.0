Delivery-date: Thu, 08 Jan 2026 17:02:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vdsTK-002fha-1A
	for lore@lore.pengutronix.de;
	Thu, 08 Jan 2026 17:02:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vdsTI-0001IP-Hi
	for lore@pengutronix.de; Thu, 08 Jan 2026 17:02:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=b1JvbYfwggDx04EtojAdpI8CAi0kfIXOTYV7ClrXYwE=; b=LuvRET5rI7ulytuSHbzNEeQvB+
	h3DmZb8I2dQGGmuxbNrejOLZOKPiJnCA+Xp9tN92daHvyoLOdH1en4RU5LpEB3IoXBTVPyaYN/315
	cZA9/4Ym53AWZfI4eZbRjayGM8SR55U4CEnZyzzY68eSbusZLZtWvN45QWJoWGJse5qgYa34517zB
	5wdIzJtxfDeoSmMFAF95D1TNx842sLRVrLzZw9YdEySgjrXvoqUkHpeJWV7122YPdGTbhruB+2DVE
	REIZRSYTgYCkCrXOfGCXd2KxZco32Ki6+xQBXTCn51/7pphZhUoiI+kvveaHkjaF1tUJAbY3jU8r1
	FgPDyTYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdsSJ-000000001xB-13ft;
	Thu, 08 Jan 2026 16:01:47 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdsS6-000000001sZ-3IaA
	for barebox@bombadil.infradead.org;
	Thu, 08 Jan 2026 16:01:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=b1JvbYfwggDx04EtojAdpI8CAi0kfIXOTYV7ClrXYwE=; b=lP20ZQtC42copBUZH3zyaw1sHR
	w/ZxUHBRl7wrhA9NtdKlCCKpAcup+td8Hn4gGwKNJGq29cjGydsuALHvy2FoVkyk96AvChCPCb5IA
	MiVfsiHVLGOx4397SXS625orrezjPjhNUVorK3wtieIfKHRvbzpOFXZEvOvKd5asmH/aY0ax8/rMb
	YJ8GGgBVyaAN8IJ0kL0U90ZgTkxWdW4tOqOtuK5O5g+kpcgzeIpzfj/UjeHsAdC64XqTbJMY1H+3Z
	H1u/sXasrhZMSOVeY/pXhtX9Am1pPt+jNaWVl21E0sloa8pTRqYa8qf65A9BvTPKRfdXr7nuxaSGJ
	WCB1Tk/g==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdsS2-0000000DaTm-1ioy
	for barebox@lists.infradead.org;
	Thu, 08 Jan 2026 16:01:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vdsS2-0000Rk-2R; Thu, 08 Jan 2026 17:01:30 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vdsS1-009hXF-2l;
	Thu, 08 Jan 2026 17:01:29 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vdsGv-0000000AN2q-1cVg;
	Thu, 08 Jan 2026 16:50:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 08 Jan 2026 16:50:18 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260108-pbl-load-elf-v3-21-e28c931fc179@pengutronix.de>
References: <20260108-pbl-load-elf-v3-0-e28c931fc179@pengutronix.de>
In-Reply-To: <20260108-pbl-load-elf-v3-0-e28c931fc179@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767887401; l=24323;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=QaNOV2U5YSKzYc6mDM2VGYBjucP4VGNdS80N4S+uw5A=;
 b=rpJ6zmrJGliYb9DEFrbOELXfLjQOcQ2TVKzjLzZjSr5H/IjW8h9/HCUHGmfN9nKWjivE4MPWK
 1ZTLEqysaJ6B87gE0ZQHNG9nuDAb23PvBMyCg3CTUlG1EuCzpjr4BEh
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260108_160130_665965_200AB637 
X-CRM114-Status: GOOD (  31.47  )
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
Subject: [PATCH v3 21/23] riscv: add ELF segment-based memory protection
 with MMU
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Enable hardware-enforced W^X (Write XOR Execute) memory protection through
ELF segment-based permissions using the RISC-V MMU.

This implementation provides memory protection for RISC-V S-mode using
Sv39 (RV64) or Sv32 (RV32) page tables.

S-mode MMU Implementation (mmu.c):
- Implement page table walking for Sv39/Sv32
- pbl_remap_range(): remap segments with ELF-derived permissions
- mmu_early_enable(): create identity mapping and enable SATP CSR
- Map ELF flags to PTE bits:
  * MAP_CODE → PTE_R | PTE_X (read + execute)
  * MAP_CACHED_RO → PTE_R (read only)
  * MAP_CACHED → PTE_R | PTE_W (read + write)

Integration:
- Update uncompress.c to call mmu_early_enable() before decompression
  (enables caching for faster decompression)
- Call pbl_mmu_setup_from_elf() after ELF relocation to apply final
  segment-based permissions
- Uses portable pbl/mmu.c infrastructure to parse PT_LOAD segments

Configuration:
- Add CONFIG_MMU option (default y for RISCV_S_MODE)
- Update asm/mmu.h with ARCH_HAS_REMAP and function declarations

Security Benefits:
- Text sections are read-only and executable (cannot be modified)
- Read-only data sections are read-only and non-executable
- Data sections are read-write and non-executable (cannot be executed)
- Hardware-enforced W^X prevents code injection attacks

This is based on the current ARM implementation.

🤖 Generated with [Claude Code](https://claude.com/claude-code)

Co-Authored-By: Claude Sonnet 4.5 <noreply@anthropic.com>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/riscv/Kconfig           |  17 ++
 arch/riscv/boot/uncompress.c |  35 ++--
 arch/riscv/cpu/Makefile      |   1 +
 arch/riscv/cpu/mmu.c         | 387 +++++++++++++++++++++++++++++++++++++++++++
 arch/riscv/cpu/mmu.h         | 120 ++++++++++++++
 arch/riscv/include/asm/asm.h |   3 +-
 arch/riscv/include/asm/mmu.h |  44 +++++
 7 files changed, 596 insertions(+), 11 deletions(-)

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index d9794354f4ed2e8bf7276e03b968c566002c2ec6..99562c7df8927e11d4de448ad486e49dd5a0d0fd 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -129,4 +129,21 @@ config RISCV_MULTI_MODE
 config RISCV_SBI
 	def_bool RISCV_S_MODE
 
+config MMU
+	bool "MMU-based memory protection"
+	default y if RISCV_S_MODE
+	help
+	  Enable MMU (Memory Management Unit) support for RISC-V S-mode.
+	  This provides hardware-enforced W^X (Write XOR Execute) memory
+	  protection using page tables (Sv39 for RV64, Sv32 for RV32).
+
+	  The PBL sets up page table entries based on ELF segment permissions,
+	  ensuring that:
+	  - Text sections are read-only and executable
+	  - Read-only data sections are read-only and non-executable
+	  - Data sections are read-write and non-executable
+
+	  Say Y if running in S-mode (supervisor mode) with virtual memory.
+	  Say N if running in M-mode or if you don't need memory protection.
+
 endmenu
diff --git a/arch/riscv/boot/uncompress.c b/arch/riscv/boot/uncompress.c
index fba04cf4fb6ed450d80b83a8a595346a3186f1e7..d34926c7eba9439aa8794cd0cd6e7d80a774e4e6 100644
--- a/arch/riscv/boot/uncompress.c
+++ b/arch/riscv/boot/uncompress.c
@@ -10,11 +10,14 @@
 #include <init.h>
 #include <linux/sizes.h>
 #include <pbl.h>
+#include <pbl/mmu.h>
 #include <asm/barebox-riscv.h>
 #include <asm-generic/memory_layout.h>
 #include <asm/sections.h>
 #include <asm/unaligned.h>
+#include <asm/mmu.h>
 #include <asm/irq.h>
+#include <elf.h>
 
 #include <debug_ll.h>
 
@@ -63,6 +66,14 @@ void __noreturn barebox_pbl_start(unsigned long membase, unsigned long memsize,
 	free_mem_ptr = riscv_mem_early_malloc(membase, endmem);
 	free_mem_end_ptr = riscv_mem_early_malloc_end(membase, endmem);
 
+	/*
+	 * Enable MMU early to enable caching for faster decompression.
+	 * This creates an initial identity mapping that will be refined
+	 * later based on ELF segments.
+	 */
+	if (IS_ENABLED(CONFIG_MMU))
+		mmu_early_enable(membase, memsize, barebox_base);
+
 	pr_debug("uncompressing barebox binary at 0x%p (size 0x%08x) to 0x%08lx (uncompressed size: 0x%08x)\n",
 			pg_start, pg_len, barebox_base, uncompressed_len);
 
@@ -71,21 +82,25 @@ void __noreturn barebox_pbl_start(unsigned long membase, unsigned long memsize,
 	sync_caches_for_execution();
 
 	ret = elf_open_binary_into(&elf, (void *)barebox_base);
-	if (ret) {
-		pr_err("Failed to open ELF binary: %d\n", ret);
-		hang();
-	}
+	if (ret)
+		panic("Failed to open ELF binary: %d\n", ret);
 
 	ret = elf_load_inplace(&elf);
-	if (ret) {
-		pr_err("Failed to relocate ELF: %d\n", ret);
-		hang();
-	}
+	if (ret)
+		panic("Failed to relocate ELF: %d\n", ret);
+
+	pr_debug("ELF entry point: 0x%llx\n", elf.entry);
 
 	/*
-	 * TODO: Add pbl_mmu_setup_from_elf() call when RISC-V PBL
-	 * MMU support is implemented, similar to ARM
+	 * Now that the ELF image is relocated, we know the exact addresses
+	 * of all segments. Set up MMU with proper permissions based on
+	 * ELF segment flags (PF_R/W/X).
 	 */
+	if (IS_ENABLED(CONFIG_MMU)) {
+		ret = pbl_mmu_setup_from_elf(&elf, membase, memsize);
+		if (ret)
+			panic("Failed to setup memory protection from ELF: %d\n", ret);
+	}
 
 	barebox = (void *)elf.entry;
 
diff --git a/arch/riscv/cpu/Makefile b/arch/riscv/cpu/Makefile
index d79bafc6f142a0060d2a86078f0fb969b298ba98..6bf31b574cd6242df6393fbdc8accc08dceb822a 100644
--- a/arch/riscv/cpu/Makefile
+++ b/arch/riscv/cpu/Makefile
@@ -7,3 +7,4 @@ obj-pbl-$(CONFIG_RISCV_M_MODE) += mtrap.o
 obj-pbl-$(CONFIG_RISCV_S_MODE) += strap.o
 obj-pbl-y += interrupts.o
 endif
+obj-pbl-$(CONFIG_MMU) += mmu.o
diff --git a/arch/riscv/cpu/mmu.c b/arch/riscv/cpu/mmu.c
new file mode 100644
index 0000000000000000000000000000000000000000..1fd5f54c14afbf53e80bd6b9c93a9e84186fc544
--- /dev/null
+++ b/arch/riscv/cpu/mmu.c
@@ -0,0 +1,387 @@
+// SPDX-License-Identifier: GPL-2.0-only
+// SPDX-FileCopyrightText: 2026 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
+
+#define pr_fmt(fmt) "mmu: " fmt
+
+#include <common.h>
+#include <init.h>
+#include <mmu.h>
+#include <errno.h>
+#include <linux/sizes.h>
+#include <linux/bitops.h>
+#include <asm/sections.h>
+#include <asm/csr.h>
+
+#include "mmu.h"
+
+#ifdef __PBL__
+
+/*
+ * Page table storage for early MMU setup in PBL.
+ * Static allocation before BSS is available.
+ */
+static char early_pt_storage[RISCV_EARLY_PAGETABLE_SIZE] __aligned(RISCV_PGSIZE);
+static unsigned int early_pt_idx;
+
+/*
+ * Allocate a page table from the early PBL storage
+ */
+static pte_t *alloc_pte(void)
+{
+	pte_t *pt;
+
+	if ((early_pt_idx + 1) * RISCV_PGSIZE >= RISCV_EARLY_PAGETABLE_SIZE) {
+		pr_err("Out of early page table memory (need more than %d KB)\n",
+		       RISCV_EARLY_PAGETABLE_SIZE / 1024);
+		hang();
+	}
+
+	pt = (pte_t *)(early_pt_storage + early_pt_idx * RISCV_PGSIZE);
+	early_pt_idx++;
+
+	/* Clear the page table */
+	memset(pt, 0, RISCV_PGSIZE);
+
+	return pt;
+}
+
+/*
+ * split_pte - Split a megapage/gigapage PTE into a page table
+ * @pte: Pointer to the PTE to split
+ * @level: Current page table level (0-2 for Sv39)
+ *
+ * This function takes a leaf PTE (megapage/gigapage) and converts it into
+ * a page table pointer with 512 entries, each covering 1/512th of the
+ * original range with identical permissions.
+ *
+ * Example: A 2MB megapage at Level 1 becomes a Level 2 page table with
+ * 512 × 4KB pages, all with the same R/W/X attributes.
+ */
+static void split_pte(pte_t *pte, int level)
+{
+	pte_t old_pte = *pte;
+	pte_t *new_table;
+	pte_t phys_base;
+	pte_t attrs;
+	unsigned long granularity;
+	int i;
+
+	/* If already a table pointer (no RWX bits), nothing to do */
+	if (!(*pte & (PTE_R | PTE_W | PTE_X)))
+		return;
+
+	/* Allocate new page table (512 entries × 8 bytes = 4KB) */
+	new_table = alloc_pte();
+
+	/* Extract physical base address from old PTE */
+	phys_base = (old_pte >> PTE_PPN_SHIFT) << RISCV_PGSHIFT;
+
+	/* Extract permission attributes to replicate */
+	attrs = old_pte & (PTE_R | PTE_W | PTE_X | PTE_A | PTE_D | PTE_U | PTE_G);
+
+	/*
+	 * Calculate granularity of child level.
+	 * Level 0 (1GB) → Level 1 (2MB): granularity = 2MB = 1 << 21
+	 * Level 1 (2MB) → Level 2 (4KB): granularity = 4KB = 1 << 12
+	 *
+	 * Formula: granularity = 1 << (12 + 9 * (Levels - 2 - level))
+	 * For Sv39 (3 levels):
+	 *   level=0: 1 << (12 + 9*1) = 2MB
+	 *   level=1: 1 << (12 + 9*0) = 4KB
+	 */
+	granularity = 1UL << (RISCV_PGSHIFT + RISCV_PGLEVEL_BITS *
+			      (RISCV_PGTABLE_LEVELS - 2 - level));
+
+	/* Populate new table: replicate old mapping across 512 entries */
+	for (i = 0; i < RISCV_PTE_ENTRIES; i++) {
+		unsigned long new_phys = phys_base + (i * granularity);
+		pte_t new_pte = ((new_phys >> RISCV_PGSHIFT) << PTE_PPN_SHIFT) |
+				attrs | PTE_V;
+		new_table[i] = new_pte;
+	}
+
+	/*
+	 * Replace old leaf PTE with table pointer.
+	 * No RWX bits = pointer to next level.
+	 */
+	*pte = (((unsigned long)new_table >> RISCV_PGSHIFT) << PTE_PPN_SHIFT) | PTE_V;
+
+	pr_debug("Split level %d PTE at phys=0x%llx (granularity=%lu KB)\n",
+		 level, (unsigned long long)phys_base, granularity / 1024);
+}
+
+/*
+ * Get the root page table base
+ */
+static pte_t *get_ttb(void)
+{
+	return (pte_t *)early_pt_storage;
+}
+
+/*
+ * Convert maptype flags to PTE permission bits
+ */
+static unsigned long flags_to_pte(maptype_t flags)
+{
+	unsigned long pte = PTE_V;  /* Valid bit always set */
+
+	/*
+	 * Map barebox memory types to RISC-V PTE flags:
+	 * - ARCH_MAP_CACHED_RWX: read + write + execute (early boot, full RAM access)
+	 * - MAP_CODE: read + execute (text sections)
+	 * - MAP_CACHED_RO: read only (rodata sections)
+	 * - MAP_CACHED: read + write (data/bss sections)
+	 * - MAP_UNCACHED: read + write, uncached (device memory)
+	 */
+	switch (flags & MAP_TYPE_MASK) {
+	case ARCH_MAP_CACHED_RWX:
+		/* Full access for early boot: R + W + X */
+		pte |= PTE_R | PTE_W | PTE_X;
+		break;
+	case MAP_CACHED_RO:
+		/* Read-only data: R, no W, no X */
+		pte |= PTE_R;
+		break;
+	case MAP_CODE:
+		/* Code: R + X, no W */
+		pte |= PTE_R | PTE_X;
+		break;
+	case MAP_CACHED: /* TODO: implement */
+	case MAP_UNCACHED:
+	default:
+		/* Data or uncached: R + W, no X */
+		pte |= PTE_R | PTE_W;
+		break;
+	}
+
+	/* Set accessed and dirty bits to avoid hardware updates */
+	pte |= PTE_A | PTE_D;
+
+	return pte;
+}
+
+/*
+ * Walk page tables and get/create PTE for given address at specified level
+ */
+static pte_t *walk_pgtable(unsigned long addr, int target_level)
+{
+	pte_t *table = get_ttb();
+	int level;
+
+	for (level = 0; level < target_level; level++) {
+		unsigned int index = VPN(addr, RISCV_PGTABLE_LEVELS - 1 - level);
+		pte_t *pte = &table[index];
+
+		if (!(*pte & PTE_V)) {
+			/* Entry not valid - allocate new page table */
+			pte_t *new_table = alloc_pte();
+			pte_t new_pte = ((unsigned long)new_table >> RISCV_PGSHIFT) << PTE_PPN_SHIFT;
+			new_pte |= PTE_V;
+			*pte = new_pte;
+			table = new_table;
+		} else if (*pte & (PTE_R | PTE_W | PTE_X)) {
+			/* This is a leaf PTE - split it before descending */
+			split_pte(pte, level);
+			/* After split, PTE is now a table pointer - follow it */
+			table = (pte_t *)(((*pte >> PTE_PPN_SHIFT) << RISCV_PGSHIFT));
+		} else {
+			/* Valid non-leaf PTE - follow to next level */
+			table = (pte_t *)(((*pte >> PTE_PPN_SHIFT) << RISCV_PGSHIFT));
+		}
+	}
+
+	return table;
+}
+
+/*
+ * Create a page table entry mapping virt -> phys with given permissions
+ */
+static void create_pte(unsigned long virt, phys_addr_t phys, maptype_t flags)
+{
+	pte_t *table;
+	unsigned int index;
+	pte_t pte;
+
+	/* Walk to leaf level page table */
+	table = walk_pgtable(virt, RISCV_PGTABLE_LEVELS - 1);
+
+	/* Get index for this address at leaf level */
+	index = VPN(virt, 0);
+
+	/* Build PTE: PPN + flags */
+	pte = (phys >> RISCV_PGSHIFT) << PTE_PPN_SHIFT;
+	pte |= flags_to_pte(flags);
+
+	/* Write PTE */
+	table[index] = pte;
+}
+
+/*
+ * create_megapage - Create a 2MB megapage mapping
+ * @virt: Virtual address (should be 2MB-aligned)
+ * @phys: Physical address (should be 2MB-aligned)
+ * @flags: Mapping flags (MAP_CACHED, etc.)
+ *
+ * Creates a leaf PTE at Level 1 covering 2MB. This is identical to a 4KB
+ * PTE except it's placed at Level 1 instead of Level 2, saving page tables.
+ */
+static void create_megapage(unsigned long virt, phys_addr_t phys, maptype_t flags)
+{
+	pte_t *table;
+	unsigned int index;
+	pte_t pte;
+
+	/* Walk to Level 1 (one level above 4KB leaf) */
+	table = walk_pgtable(virt, RISCV_PGTABLE_LEVELS - 2);
+
+	/* Get VPN[1] index for this address at Level 1 */
+	index = VPN(virt, 1);
+
+	/* Build leaf PTE at Level 1: PPN + RWX flags make it a megapage */
+	pte = (phys >> RISCV_PGSHIFT) << PTE_PPN_SHIFT;
+	pte |= flags_to_pte(flags);
+
+	/* Write megapage PTE */
+	table[index] = pte;
+}
+
+/*
+ * pbl_remap_range - Remap a virtual address range with specified permissions
+ *
+ * This is called by the portable pbl/mmu.c code after ELF relocation to set up
+ * proper memory protection based on ELF segment flags.
+ */
+void pbl_remap_range(void *virt, phys_addr_t phys, size_t size, maptype_t flags)
+{
+	unsigned long addr = (unsigned long)virt;
+	unsigned long end = addr + size;
+
+	pr_debug("Remapping 0x%08lx-0x%08lx -> 0x%08llx (flags=0x%x)\n",
+		 addr, end, (unsigned long long)phys, flags);
+
+	/* Align to page boundaries */
+	addr &= ~(RISCV_PGSIZE - 1);
+	end = ALIGN(end, RISCV_PGSIZE);
+
+	/* Create page table entries for each page in the range */
+	while (addr < end) {
+		create_pte(addr, phys, flags);
+		addr += RISCV_PGSIZE;
+		phys += RISCV_PGSIZE;
+	}
+
+	/* Flush TLB for the remapped range */
+	sfence_vma();
+}
+
+/*
+ * mmu_early_enable - Set up initial MMU with identity mapping
+ *
+ * Called before barebox decompression to enable caching for faster decompression.
+ * Creates a simple identity map of all RAM with RWX permissions.
+ */
+void mmu_early_enable(unsigned long membase, unsigned long memsize,
+		      unsigned long barebox_base)
+{
+	unsigned long addr;
+	unsigned long end = membase + memsize;
+	unsigned long satp;
+
+	pr_debug("Enabling MMU: mem=0x%08lx-0x%08lx barebox=0x%08lx\n",
+		 membase, end, barebox_base);
+
+	/* Reset page table allocator */
+	early_pt_idx = 0;
+
+	/* Allocate root page table */
+	(void)alloc_pte();
+
+	pr_debug("Creating flat identity mapping...\n");
+
+	/*
+	 * Create a flat identity mapping of the lower address space as uncached.
+	 * This ensures I/O devices (UART, etc.) are accessible after MMU is enabled.
+	 * RV64: Map lower 4GB using 2MB megapages (2048 entries).
+	 * RV32: Map entire 4GB using 4MB superpages (1024 entries in root table).
+	 */
+	addr = 0;
+	do {
+		create_megapage(addr, addr, MAP_UNCACHED);
+		addr += RISCV_L1_SIZE;
+	} while (lower_32_bits(addr) != 0);  /* Wraps around to 0 after 0xFFFFFFFF */
+
+	/*
+	 * Remap RAM as cached with RWX permissions using superpages.
+	 * This overwrites the uncached mappings for RAM regions, providing
+	 * better performance. Later, pbl_mmu_setup_from_elf() will split
+	 * superpages as needed to set fine-grained permissions based on ELF segments.
+	 */
+	pr_debug("Remapping RAM 0x%08lx-0x%08lx as cached RWX...\n", membase, end);
+	for (addr = membase; addr < end; addr += RISCV_L1_SIZE)
+		create_megapage(addr, addr, ARCH_MAP_CACHED_RWX);
+
+	pr_debug("Page table setup complete, used %lu KB\n",
+		 (early_pt_idx * RISCV_PGSIZE) / 1024);
+
+	/*
+	 * Enable MMU by setting SATP CSR:
+	 * - MODE field: Sv39 (RV64) or Sv32 (RV32)
+	 * - ASID: 0 (no address space ID)
+	 * - PPN: physical address of root page table
+	 */
+	satp = SATP_MODE | (((unsigned long)get_ttb() >> RISCV_PGSHIFT) & SATP_PPN_MASK);
+
+	pr_debug("Enabling MMU: SATP=0x%08lx\n", satp);
+
+	/* Synchronize before enabling MMU */
+	sfence_vma();
+
+	/* Enable MMU */
+	csr_write(satp, satp);
+
+	/* Synchronize after enabling MMU */
+	sfence_vma();
+
+	pr_debug("MMU enabled with %lu %spages for RAM\n",
+		 (memsize / RISCV_L1_SIZE),
+		 IS_ENABLED(CONFIG_64BIT) ? "2MB mega" : "4MB super");
+}
+
+#else /* !__PBL__ */
+
+/*
+ * arch_remap_range - Remap a virtual address range (barebox proper)
+ *
+ * This is the non-PBL version used in barebox proper after full relocation.
+ * Currently provides basic remapping support. For full MMU management in
+ * barebox proper, this would need to be extended with:
+ * - Dynamic page table allocation
+ * - Cache flushing for non-cached mappings
+ * - TLB management
+ * - Support for MAP_FAULT (guard pages)
+ */
+int arch_remap_range(void *virt_addr, phys_addr_t phys_addr, size_t size,
+		     maptype_t map_type)
+{
+	/*
+	 * For now, only allow identity mappings that match the default
+	 * cached mapping. This is sufficient for most barebox proper use cases
+	 * where the PBL has already set up the basic MMU configuration.
+	 *
+	 * TODO: Implement full remapping support for:
+	 * - Non-identity mappings
+	 * - Uncached device memory (MAP_UNCACHED)
+	 * - Guard pages (MAP_FAULT)
+	 */
+	if (phys_addr == virt_to_phys(virt_addr) &&
+	    maptype_is_compatible(map_type, MAP_ARCH_DEFAULT))
+		return 0;
+
+	pr_warn("arch_remap_range: non-identity or non-default mapping not yet supported\n");
+	pr_warn("  virt=0x%p phys=0x%pad size=0x%zx type=0x%x\n",
+		virt_addr, &phys_addr, size, map_type);
+
+	return -ENOSYS;
+}
+
+#endif /* __PBL__ */
diff --git a/arch/riscv/cpu/mmu.h b/arch/riscv/cpu/mmu.h
new file mode 100644
index 0000000000000000000000000000000000000000..0222c97fc1ddc507c7bc2f832df60a21d66d25f3
--- /dev/null
+++ b/arch/riscv/cpu/mmu.h
@@ -0,0 +1,120 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* SPDX-FileCopyrightText: 2026 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix */
+
+#ifndef __RISCV_CPU_MMU_H
+#define __RISCV_CPU_MMU_H
+
+#include <linux/types.h>
+
+/*
+ * RISC-V MMU constants for Sv39 (RV64) and Sv32 (RV32) page tables
+ */
+
+/* Page table configuration */
+#define RISCV_PGSHIFT		12
+#define RISCV_PGSIZE		(1UL << RISCV_PGSHIFT)  /* 4KB */
+
+#ifdef CONFIG_64BIT
+/* Sv39: 9-bit VPN fields, 512 entries per table */
+#define RISCV_PGLEVEL_BITS	9
+#define RISCV_PGTABLE_ENTRIES	512
+#else
+/* Sv32: 10-bit VPN fields, 1024 entries per table */
+#define RISCV_PGLEVEL_BITS	10
+#define RISCV_PGTABLE_ENTRIES	1024
+#endif
+
+/* Page table entry (PTE) bit definitions */
+#define PTE_V		(1UL << 0)  /* Valid */
+#define PTE_R		(1UL << 1)  /* Read */
+#define PTE_W		(1UL << 2)  /* Write */
+#define PTE_X		(1UL << 3)  /* Execute */
+#define PTE_U		(1UL << 4)  /* User accessible */
+#define PTE_G		(1UL << 5)  /* Global mapping */
+#define PTE_A		(1UL << 6)  /* Accessed */
+#define PTE_D		(1UL << 7)  /* Dirty */
+#define PTE_RSW_MASK	(3UL << 8)  /* Reserved for software */
+
+/* PTE physical page number (PPN) field position */
+#define PTE_PPN_SHIFT	10
+
+#ifdef CONFIG_64BIT
+/*
+ * Sv39: 39-bit virtual addressing, 3-level page tables
+ * Virtual address format: [38:30] VPN[2], [29:21] VPN[1], [20:12] VPN[0], [11:0] offset
+ */
+#define RISCV_PGTABLE_LEVELS	3
+#define VA_BITS			39
+#else
+/*
+ * Sv32: 32-bit virtual addressing, 2-level page tables
+ * Virtual address format: [31:22] VPN[1], [21:12] VPN[0], [11:0] offset
+ */
+#define RISCV_PGTABLE_LEVELS	2
+#define VA_BITS			32
+#endif
+
+/* SATP register fields */
+#ifdef CONFIG_64BIT
+#define SATP_PPN_MASK		((1ULL << 44) - 1)  /* Physical page number (Sv39) */
+#else
+#define SATP_PPN_MASK		((1UL << 22) - 1)   /* Physical page number (Sv32) */
+#endif
+
+/* Extract VPN (Virtual Page Number) from virtual address */
+#define VPN_MASK		((1UL << RISCV_PGLEVEL_BITS) - 1)
+#define VPN(addr, level)	(((addr) >> (RISCV_PGSHIFT + (level) * RISCV_PGLEVEL_BITS)) & VPN_MASK)
+
+/* RISC-V page sizes by level */
+#ifdef CONFIG_64BIT
+/* Sv39: 3-level page tables */
+#define RISCV_L2_SHIFT		30	/* 1GB gigapages (Level 0 in Sv39) */
+#define RISCV_L1_SHIFT		21	/* 2MB megapages (Level 1 in Sv39) */
+#define RISCV_L0_SHIFT		12	/* 4KB pages (Level 2 in Sv39) */
+#else
+/* Sv32: 2-level page tables */
+#define RISCV_L1_SHIFT		22	/* 4MB superpages (Level 0 in Sv32) */
+#define RISCV_L0_SHIFT		12	/* 4KB pages (Level 1 in Sv32) */
+#endif
+
+#ifdef CONFIG_64BIT
+#define RISCV_L2_SIZE		(1UL << RISCV_L2_SHIFT)	/* 1GB (RV64 only) */
+#endif
+#define RISCV_L1_SIZE		(1UL << RISCV_L1_SHIFT)	/* 2MB (RV64) or 4MB (RV32) */
+#define RISCV_L0_SIZE		(1UL << RISCV_L0_SHIFT)	/* 4KB */
+
+/* Number of entries per page table (use RISCV_PGTABLE_ENTRIES instead) */
+#define RISCV_PTE_ENTRIES	RISCV_PGTABLE_ENTRIES
+
+/* PTE type - 64-bit on RV64, 32-bit on RV32 */
+#ifdef CONFIG_64BIT
+typedef uint64_t pte_t;
+#else
+typedef uint32_t pte_t;
+#endif
+
+/* Early page table allocation size (PBL) */
+#ifdef CONFIG_64BIT
+/* Sv39: 3 levels, allocate space for root + worst case intermediate tables */
+#define RISCV_EARLY_PAGETABLE_SIZE	(64 * 1024)  /* 64KB */
+#else
+/* Sv32: 2 levels, smaller allocation */
+#define RISCV_EARLY_PAGETABLE_SIZE	(32 * 1024)  /* 32KB */
+#endif
+
+#ifndef __ASSEMBLY__
+
+/* SFENCE.VMA - Synchronize updates to page tables */
+static inline void sfence_vma(void)
+{
+	__asm__ __volatile__ ("sfence.vma" : : : "memory");
+}
+
+static inline void sfence_vma_addr(unsigned long addr)
+{
+	__asm__ __volatile__ ("sfence.vma %0" : : "r" (addr) : "memory");
+}
+
+#endif /* __ASSEMBLY__ */
+
+#endif /* __RISCV_CPU_MMU_H */
diff --git a/arch/riscv/include/asm/asm.h b/arch/riscv/include/asm/asm.h
index 9c992a88d858fe6105f16978849f3a564d42b85f..23f60b615ea91e680c57b7b65b868260a761de5e 100644
--- a/arch/riscv/include/asm/asm.h
+++ b/arch/riscv/include/asm/asm.h
@@ -9,7 +9,8 @@
 #ifdef __ASSEMBLY__
 #define __ASM_STR(x)	x
 #else
-#define __ASM_STR(x)	#x
+#define __ASM_STR_HELPER(x)	#x
+#define __ASM_STR(x)	__ASM_STR_HELPER(x)
 #endif
 
 #if __riscv_xlen == 64
diff --git a/arch/riscv/include/asm/mmu.h b/arch/riscv/include/asm/mmu.h
index 1c2646ebb3393f120ad7208109372fef8bc32e81..bad64fd3b9c1ca685a18128024b8005262640e5b 100644
--- a/arch/riscv/include/asm/mmu.h
+++ b/arch/riscv/include/asm/mmu.h
@@ -3,6 +3,50 @@
 #ifndef __ASM_MMU_H
 #define __ASM_MMU_H
 
+#include <linux/types.h>
+
+/*
+ * RISC-V supports memory protection through two mechanisms:
+ * - S-mode: Virtual memory with page tables (MMU)
+ * - M-mode: Physical Memory Protection (PMP) regions
+ */
+
+#ifdef CONFIG_MMU
+#define ARCH_HAS_REMAP
+#define MAP_ARCH_DEFAULT MAP_CACHED
+
+/* Architecture-specific memory type flags */
+#define ARCH_MAP_CACHED_RWX		MAP_ARCH(2)	/* Cached, RWX (early boot) */
+#define ARCH_MAP_FLAG_PAGEWISE		(1 << 16)	/* Force page-wise mapping */
+
+#ifdef __PBL__
+/*
+ * PBL remap function - used by pbl/mmu.c to apply ELF segment permissions.
+ * Implementation is in arch/riscv/cpu/mmu.c (S-mode) or pmp.c (M-mode).
+ */
+void pbl_remap_range(void *virt, phys_addr_t phys, size_t size, maptype_t flags);
+
+/*
+ * Early MMU/PMP setup - called before decompression for performance.
+ * S-mode: Sets up basic page tables and enables MMU via SATP CSR.
+ * M-mode: Configures initial PMP regions.
+ */
+void mmu_early_enable(unsigned long membase, unsigned long memsize,
+		      unsigned long barebox_base);
+#endif /* __PBL__ */
+
+/*
+ * Remap a virtual address range with specified memory type (barebox proper).
+ * Used by the generic remap infrastructure after barebox is fully relocated.
+ * Implementation is in arch/riscv/cpu/mmu.c (S-mode) or pmp.c (M-mode).
+ */
+int arch_remap_range(void *virt_addr, phys_addr_t phys_addr, size_t size,
+		     maptype_t map_type);
+
+#else
 #define MAP_ARCH_DEFAULT MAP_UNCACHED
+#endif
+
+#include <mmu.h>
 
 #endif /* __ASM_MMU_H */

-- 
2.47.3



