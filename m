Delivery-date: Mon, 05 Jan 2026 12:27:35 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcikJ-001VBz-1C
	for lore@lore.pengutronix.de;
	Mon, 05 Jan 2026 12:27:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcikI-000608-1O
	for lore@pengutronix.de; Mon, 05 Jan 2026 12:27:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bA6SlT5E3KLm50wikq+z1RV0+jYKl516Egt4mFQmANA=; b=PhTjqXF4nC8bCW93KBntzqEi7E
	L/jGPGETBIYmBM1hhhxRr2jLKkWnLHt/hGUMuGqKkXmlqHcCaKw7183R6dt5lyTUCYxVKCsadVfyj
	45JLeh+4aRtGn8ZKKwSCSXWo8CuOCFDIpiQccd7nug4u9zDlgWGBmTaatATfEaebbYkNGpgmy1n0K
	G1W6pxxyV7NGrqOAZRFBk3B3YxkB5P6fl3mW+6B/A+qc5t0AKODw7UhJytrV2kRvJqc/234Fx2kL9
	PHUqjK6wdQgYxjHh6IOOmkYBpGOPVc1XlmWdhZ33YZBglVTM1QfV4TOyEPgABX8hDgk92ZQ2zG1/S
	cn5lfZVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcijk-0000000BBGX-0xGB;
	Mon, 05 Jan 2026 11:27:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcijg-0000000BBDy-1Z9a
	for barebox@lists.infradead.org;
	Mon, 05 Jan 2026 11:26:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vcije-0005Ys-NW; Mon, 05 Jan 2026 12:26:54 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vcije-0099xd-1D;
	Mon, 05 Jan 2026 12:26:54 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vcije-00000007KWP-0vuI;
	Mon, 05 Jan 2026 12:26:54 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 05 Jan 2026 12:26:46 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260105-pbl-load-elf-v1-5-e97853f98232@pengutronix.de>
References: <20260105-pbl-load-elf-v1-0-e97853f98232@pengutronix.de>
In-Reply-To: <20260105-pbl-load-elf-v1-0-e97853f98232@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767612414; l=7244;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=f80u/Q2YyM0ywJIJ1lhgvw4LE5W8IQ1BHIsblOrzUc0=;
 b=+/05hBuu9aFGUdj9L5RDhSjQt4Nt5LwbxCLytWFKfnGBO5m2BuyWfDJVTwnd7WZGeaWNI1F9L
 C2APs6nqxfMA72i+QpdJxoHMTY6DrxrR0GcNfwVCxsd0b0nzfekLzzn
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_032656_570018_0235D76D 
X-CRM114-Status: GOOD (  18.40  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 05/19] riscv: implement elf_apply_relocations() for ELF
 relocation support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add architecture-specific ELF relocation support for RISC-V,
enabling dynamic relocation of position-independent ELF binaries.

RISC-V implementation:
- Both RV32 and RV64 use RELA format with relocations:
  * R_RISCV_NONE (0): No operation
  * R_RISCV_32 (1): 32-bit absolute relocation (RV32)
  * R_RISCV_64 (2): 64-bit absolute relocation (RV64)
  * R_RISCV_RELATIVE (3): Base-relative adjustment
  * Parse the PT_DYNAMIC section to find relocation tables
  * Support both regular and PBL builds (obj-pbl-y)
  * Follow the same pattern as ARM32/ARM64 implementations
  * Validate ELF class matches architecture pointer size
  * Return appropriate error codes for unsupported relocations

The relocation constants are added to arch/*/include/asm/elf.h for
use by the dynamic linker and bootloader code.

These implementations enable support for loading position-independent
ELF binaries in barebox PBL, which will be used when the compressed
payload is switched from raw binary to ELF format (similar to the
recent ARM changes).

🤖 Generated with [Claude Code](https://claude.com/claude-code)

Co-Authored-By: Claude Sonnet 4.5 <noreply@anthropic.com>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/riscv/lib/Makefile    |   1 +
 arch/riscv/lib/elf_reloc.c | 212 +++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 213 insertions(+)

diff --git a/arch/riscv/lib/Makefile b/arch/riscv/lib/Makefile
index 693248080070338ce26952cb1d9a831937d7f388..ee53e4602126d2ce7da2cdc42f21f92b22232f1a 100644
--- a/arch/riscv/lib/Makefile
+++ b/arch/riscv/lib/Makefile
@@ -3,6 +3,7 @@
 extra-y += barebox.lds
 
 obj-y += dtb.o
+obj-pbl-$(CONFIG_ELF) += elf_reloc.o
 obj-pbl-y += sections.o setupc.o reloc.o sections.o runtime-offset.o
 obj-$(CONFIG_ARCH_HAS_SJLJ) += setjmp.o longjmp.o
 obj-$(CONFIG_RISCV_OPTIMZED_STRING_FUNCTIONS) += memcpy.o memset.o memmove.o
diff --git a/arch/riscv/lib/elf_reloc.c b/arch/riscv/lib/elf_reloc.c
new file mode 100644
index 0000000000000000000000000000000000000000..11e44e2c816185d7b4722f2ead698b32bd562de0
--- /dev/null
+++ b/arch/riscv/lib/elf_reloc.c
@@ -0,0 +1,212 @@
+// SPDX-License-Identifier: GPL-2.0
+
+#include <common.h>
+#include <elf.h>
+#include <errno.h>
+#include <asm/elf.h>
+
+#if __SIZEOF_POINTER__ == 8
+
+/*
+ * Parse dynamic section and extract relocation info for RISC-V 64-bit
+ */
+static int parse_dynamic_section(struct elf_image *elf, Elf64_Dyn *dyn,
+				  Elf64_Rela **rela_out, u64 *relasz_out)
+{
+	Elf64_Rela *rela = NULL;
+	u64 relasz = 0, relaent = 0;
+	int i;
+	phys_addr_t base = (phys_addr_t)elf->reloc_offset;
+
+	/* Iterate through dynamic entries until DT_NULL */
+	for (i = 0; dyn[i].d_tag != DT_NULL; i++) {
+		switch (dyn[i].d_tag) {
+		case DT_RELA:
+			/* RELA table address - needs to be adjusted by load offset */
+			rela = (Elf64_Rela *)(base + dyn[i].d_un.d_ptr);
+			break;
+		case DT_RELASZ:
+			relasz = dyn[i].d_un.d_val;
+			break;
+		case DT_RELAENT:
+			relaent = dyn[i].d_un.d_val;
+			break;
+		case DT_REL:
+			pr_err("RISC-V 64 uses RELA, not REL relocations\n");
+			return -EINVAL;
+		default:
+			break;
+		}
+	}
+
+	if (!rela || !relasz || relaent != sizeof(Elf64_Rela)) {
+		pr_debug("No relocations or invalid relocation info\n");
+		return -EINVAL;
+	}
+
+	*rela_out = rela;
+	*relasz_out = relasz;
+	return 0;
+}
+
+/*
+ * Apply RISC-V 64-bit ELF relocations
+ */
+int elf_apply_relocations(struct elf_image *elf, void *dyn_seg)
+{
+	Elf64_Dyn *dyn = dyn_seg;
+	Elf64_Rela *rela;
+	u64 relasz;
+	phys_addr_t base = (phys_addr_t)elf->reloc_offset;
+	int ret;
+
+	if (elf->class != ELFCLASS64) {
+		pr_err("Wrong ELF class for RISC-V 64 relocation\n");
+		return -EINVAL;
+	}
+
+	ret = parse_dynamic_section(elf, dyn, &rela, &relasz);
+	if (ret)
+		return ret;
+
+	/* Apply each relocation */
+	while (relasz > 0) {
+		u64 *fixup_addr;
+		u32 reloc_type = ELF64_R_TYPE(rela->r_info);
+
+		/* Calculate address to fix up */
+		fixup_addr = (u64 *)(base + rela->r_offset);
+
+		switch (reloc_type) {
+		case R_RISCV_NONE:
+			/* No operation */
+			break;
+
+		case R_RISCV_RELATIVE:
+			/* B(P) = B + A */
+			/* For RELA format: A = r_addend, B = base */
+			*fixup_addr = base + rela->r_addend;
+			break;
+
+		case R_RISCV_64:
+			/* B(P) = S + A */
+			/* S is the symbol value, for PIE it's base + addend */
+			*fixup_addr = base + rela->r_addend;
+			break;
+
+		default:
+			pr_err("Unsupported RISC-V relocation type: %u at offset 0x%llx\n",
+			       reloc_type, rela->r_offset);
+			return -EINVAL;
+		}
+
+		rela++;
+		relasz -= sizeof(Elf64_Rela);
+	}
+
+	return 0;
+}
+
+#else /* 32-bit RISC-V */
+
+/*
+ * Parse dynamic section and extract relocation info for RISC-V 32-bit
+ */
+static int parse_dynamic_section(struct elf_image *elf, Elf32_Dyn *dyn,
+				  Elf32_Rela **rela_out, u64 *relasz_out)
+{
+	Elf32_Rela *rela = NULL;
+	u64 relasz = 0, relaent = 0;
+	int i;
+	phys_addr_t base = (phys_addr_t)elf->reloc_offset;
+
+	/* Iterate through dynamic entries until DT_NULL */
+	for (i = 0; dyn[i].d_tag != DT_NULL; i++) {
+		switch (dyn[i].d_tag) {
+		case DT_RELA:
+			/* RELA table address - needs to be adjusted by load offset */
+			rela = (Elf32_Rela *)(base + dyn[i].d_un.d_ptr);
+			break;
+		case DT_RELASZ:
+			relasz = dyn[i].d_un.d_val;
+			break;
+		case DT_RELAENT:
+			relaent = dyn[i].d_un.d_val;
+			break;
+		case DT_REL:
+			pr_err("RISC-V 32 uses RELA, not REL relocations\n");
+			return -EINVAL;
+		default:
+			break;
+		}
+	}
+
+	if (!rela || !relasz || relaent != sizeof(Elf32_Rela)) {
+		pr_debug("No relocations or invalid relocation info\n");
+		return -EINVAL;
+	}
+
+	*rela_out = rela;
+	*relasz_out = relasz;
+	return 0;
+}
+
+/*
+ * Apply RISC-V 32-bit ELF relocations
+ */
+int elf_apply_relocations(struct elf_image *elf, void *dyn_seg)
+{
+	Elf32_Dyn *dyn = dyn_seg;
+	Elf32_Rela *rela;
+	u64 relasz;
+	phys_addr_t base = (phys_addr_t)elf->reloc_offset;
+	int ret;
+
+	if (elf->class != ELFCLASS32) {
+		pr_err("Wrong ELF class for RISC-V 32 relocation\n");
+		return -EINVAL;
+	}
+
+	ret = parse_dynamic_section(elf, dyn, &rela, &relasz);
+	if (ret)
+		return ret;
+
+	/* Apply each relocation */
+	while (relasz > 0) {
+		u32 *fixup_addr;
+		u32 reloc_type = ELF32_R_TYPE(rela->r_info);
+
+		/* Calculate address to fix up */
+		fixup_addr = (u32 *)(base + rela->r_offset);
+
+		switch (reloc_type) {
+		case R_RISCV_NONE:
+			/* No operation */
+			break;
+
+		case R_RISCV_RELATIVE:
+			/* B(P) = B + A */
+			/* For RELA format: A = r_addend, B = base */
+			*fixup_addr = base + rela->r_addend;
+			break;
+
+		case R_RISCV_32:
+			/* B(P) = S + A */
+			/* S is the symbol value, for PIE it's base + addend */
+			*fixup_addr = base + rela->r_addend;
+			break;
+
+		default:
+			pr_err("Unsupported RISC-V relocation type: %u at offset 0x%x\n",
+			       reloc_type, rela->r_offset);
+			return -EINVAL;
+		}
+
+		rela++;
+		relasz -= sizeof(Elf32_Rela);
+	}
+
+	return 0;
+}
+
+#endif

-- 
2.47.3



