Delivery-date: Mon, 05 Jan 2026 12:27:35 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcikJ-001VC4-1L
	for lore@lore.pengutronix.de;
	Mon, 05 Jan 2026 12:27:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcikH-0005zo-Rj
	for lore@pengutronix.de; Mon, 05 Jan 2026 12:27:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3hjbxRZ+du6obaLix+Sie/0/vrwIVvZXJbxd5llXoUo=; b=BgtQGbuSyAT8GdZPizH+9qb46d
	Rgw2eu+RDyXkZ8gQOosvlyoXWtZ7C733TS+GtqVoUg1hHHHsoPil2OCvh3/mMYBqp/8xP3jiUrmGZ
	j8A6fOwP2CEdMqj7Rq/3nONhTWJlw4zoeBZRsulVaC9tFGBmmpkx98oBy/exwwKXQiiUK3bs219ol
	148TzaDX7cDe+PHtvrv0i6ahupD/Cc3YypABLbVzRUm4k2avRLN034z7YGlTacFd6kexF9N/p2dpo
	jWB4mnakE3x2fIyYZe/YyQV2241hnmR0LJFChvJPeh1T3GWZs+YouwEeCVtjVXezvwnBlxtK6JDup
	h5RIYxug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcijj-0000000BBGL-2r0R;
	Mon, 05 Jan 2026 11:26:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcijg-0000000BBDz-1ZOV
	for barebox@lists.infradead.org;
	Mon, 05 Jan 2026 11:26:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vcije-0005Yq-OU; Mon, 05 Jan 2026 12:26:54 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vcije-0099xc-1D;
	Mon, 05 Jan 2026 12:26:54 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vcije-00000007KWP-0uWf;
	Mon, 05 Jan 2026 12:26:54 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 05 Jan 2026 12:26:45 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260105-pbl-load-elf-v1-4-e97853f98232@pengutronix.de>
References: <20260105-pbl-load-elf-v1-0-e97853f98232@pengutronix.de>
In-Reply-To: <20260105-pbl-load-elf-v1-0-e97853f98232@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767612414; l=8362;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=EkDJODRTFrPpzTDgo5onxhmwk4oa7TNnNvjuKE0fqc0=;
 b=oqtCZCfwg60fgvZHArfFGqxB4CNugyn4dZg2+x3loDMMyzLl4gV1kc338nGOsokLzKvA3ZdLF
 h4ZZN/MRhsHD2fAV24PPFn27TroYS3CXsthRgnJYcHlNPr2XqcaYTcB
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_032656_604013_18D2A13B 
X-CRM114-Status: GOOD (  18.97  )
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
Subject: [PATCH 04/19] ARM: implement elf_apply_relocations() for ELF
 relocation support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Implement architecture-specific ELF relocation handlers for ARM32 and ARM64.

ARM32 implementation (arch/arm/lib32/elf_reloc.c):
- Handles REL-format relocations (no explicit addend)
- Supports R_ARM_RELATIVE and R_ARM_ABS32 relocation types
- Addend is read from the target location

ARM64 implementation (arch/arm/lib64/elf_reloc.c):
- Handles RELA-format relocations (with explicit addend)
- Supports R_AARCH64_RELATIVE and R_AARCH64_ABS64 relocation types
- Addend is provided in relocation entry

Both implementations:
- Parse PT_DYNAMIC segment to locate relocation tables
- Validate relocation table format and entry sizes
- Apply relocations based on the computed load offset
- Return appropriate errors for unsupported relocation types

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Co-Authored-By: Claude Sonnet 4.5 <noreply@anthropic.com>
---
 arch/arm/include/asm/elf.h |  11 +++++
 arch/arm/lib32/Makefile    |   1 +
 arch/arm/lib32/elf_reloc.c | 105 +++++++++++++++++++++++++++++++++++++++++++++
 arch/arm/lib64/Makefile    |   1 +
 arch/arm/lib64/elf_reloc.c | 105 +++++++++++++++++++++++++++++++++++++++++++++
 5 files changed, 223 insertions(+)

diff --git a/arch/arm/include/asm/elf.h b/arch/arm/include/asm/elf.h
index 4043e6fd5b991eb5cccb3fa0ea28d208006ee1fc..cceb92ee1a5f63c37b0e981c263676bd35a261c0 100644
--- a/arch/arm/include/asm/elf.h
+++ b/arch/arm/include/asm/elf.h
@@ -36,6 +36,17 @@ typedef struct user_fp elf_fpregset_t;
 #define R_ARM_THM_CALL		10
 #define R_ARM_THM_JUMP24	30
 
+/* Additional relocation types for dynamic linking */
+#define R_ARM_RELATIVE		23
+#define R_ARM_GLOB_DAT		21
+#define R_ARM_JUMP_SLOT		22
+
+#define R_AARCH64_NONE		0
+#define R_AARCH64_ABS64		257
+#define R_AARCH64_RELATIVE	1027
+#define R_AARCH64_GLOB_DAT	1025
+#define R_AARCH64_JUMP_SLOT	1026
+
 /*
  * These are used to set parameters in the core dumps.
  */
diff --git a/arch/arm/lib32/Makefile b/arch/arm/lib32/Makefile
index f76010e93350375a11e673d9b68fb1d216983404..579d8bc0f0d0f7f0edf5761530be614d36495e69 100644
--- a/arch/arm/lib32/Makefile
+++ b/arch/arm/lib32/Makefile
@@ -7,6 +7,7 @@ obj-$(CONFIG_BOOTM_OPTEE) += start-kernel-optee.o
 obj-$(CONFIG_CMD_BOOTU) += bootu.o
 obj-$(CONFIG_BOOT_ATAGS) += atags.o
 obj-y	+= div0.o
+obj-pbl-$(CONFIG_ELF)	+= elf_reloc.o
 obj-y	+= findbit.o
 obj-y	+= io.o
 obj-y	+= io-readsb.o
diff --git a/arch/arm/lib32/elf_reloc.c b/arch/arm/lib32/elf_reloc.c
new file mode 100644
index 0000000000000000000000000000000000000000..2b44270d965412ef348be7919022a607fa3fa020
--- /dev/null
+++ b/arch/arm/lib32/elf_reloc.c
@@ -0,0 +1,105 @@
+// SPDX-License-Identifier: GPL-2.0
+
+#include <common.h>
+#include <elf.h>
+#include <errno.h>
+#include <asm/elf.h>
+
+/*
+ * Parse dynamic section and extract relocation info for ARM32
+ */
+static int parse_dynamic_section(struct elf_image *elf, Elf32_Dyn *dyn,
+				  Elf32_Rel **rel_out, u64 *relsz_out)
+{
+	Elf32_Rel *rel = NULL;
+	u64 relsz = 0, relent = 0;
+	int i;
+	phys_addr_t base = (phys_addr_t)elf->reloc_offset;
+
+	/* Iterate through dynamic entries until DT_NULL */
+	for (i = 0; dyn[i].d_tag != DT_NULL; i++) {
+		switch (dyn[i].d_tag) {
+		case DT_REL:
+			/* REL table address - needs to be adjusted by load offset */
+			rel = (Elf32_Rel *)(base + dyn[i].d_un.d_ptr);
+			break;
+		case DT_RELSZ:
+			relsz = dyn[i].d_un.d_val;
+			break;
+		case DT_RELENT:
+			relent = dyn[i].d_un.d_val;
+			break;
+		case DT_RELA:
+			pr_err("ARM32 uses REL, not RELA relocations\n");
+			return -EINVAL;
+		default:
+			break;
+		}
+	}
+
+	if (!rel || !relsz || relent != sizeof(Elf32_Rel)) {
+		pr_debug("No relocations or invalid relocation info\n");
+		return -EINVAL;
+	}
+
+	*rel_out = rel;
+	*relsz_out = relsz;
+	return 0;
+}
+
+/*
+ * Apply ARM32 ELF relocations
+ */
+int elf_apply_relocations(struct elf_image *elf, void *dyn_seg)
+{
+	Elf32_Dyn *dyn = dyn_seg;
+	Elf32_Rel *rel;
+	u64 relsz;
+	phys_addr_t base = (phys_addr_t)elf->reloc_offset;
+	int ret;
+
+	if (elf->class != ELFCLASS32) {
+		pr_err("Wrong ELF class for ARM32 relocation\n");
+		return -EINVAL;
+	}
+
+	ret = parse_dynamic_section(elf, dyn, &rel, &relsz);
+	if (ret)
+		return ret;
+
+	/* Apply each relocation */
+	while (relsz > 0) {
+		u32 *fixup_addr;
+		u32 reloc_type = ELF32_R_TYPE(rel->r_info);
+
+		/* Calculate address to fix up */
+		fixup_addr = (u32 *)(base + rel->r_offset);
+
+		switch (reloc_type) {
+		case R_ARM_NONE:
+			/* No operation */
+			break;
+
+		case R_ARM_RELATIVE:
+			/* B(P) = S + A */
+			/* For REL format: A = *fixup_addr, S = base */
+			*fixup_addr = *fixup_addr + base;
+			break;
+
+		case R_ARM_ABS32:
+			/* B(P) = (S + A) | T */
+			*fixup_addr = *fixup_addr + base;
+			break;
+
+		default:
+			pr_err("Unsupported ARM32 relocation type: %u at offset 0x%x\n",
+			       reloc_type, rel->r_offset);
+			return -EINVAL;
+		}
+
+		rel++;
+		relsz -= sizeof(Elf32_Rel);
+	}
+
+	return 0;
+}
diff --git a/arch/arm/lib64/Makefile b/arch/arm/lib64/Makefile
index e86a2e5a2f3d6fa220179835a33ff1e1af358c9a..2890a41c37c676ab3e6f78ef6596447a06909651 100644
--- a/arch/arm/lib64/Makefile
+++ b/arch/arm/lib64/Makefile
@@ -3,6 +3,7 @@
 obj-y += stacktrace.o
 obj-$(CONFIG_ARM_LINUX)	+= armlinux.o
 obj-y	+= div0.o
+obj-pbl-$(CONFIG_ELF)	+= elf_reloc.o
 obj-$(CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS)	+= memcpy.o
 obj-$(CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS)	+= memset.o string.o
 extra-y += barebox.lds
diff --git a/arch/arm/lib64/elf_reloc.c b/arch/arm/lib64/elf_reloc.c
new file mode 100644
index 0000000000000000000000000000000000000000..22adb4cdafb37f7bd2939e84bc0c6e8133d2d998
--- /dev/null
+++ b/arch/arm/lib64/elf_reloc.c
@@ -0,0 +1,105 @@
+// SPDX-License-Identifier: GPL-2.0
+
+#include <common.h>
+#include <elf.h>
+#include <errno.h>
+#include <asm/elf.h>
+
+/*
+ * Parse dynamic section and extract relocation info for ARM64
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
+			pr_err("ARM64 uses RELA, not REL relocations\n");
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
+ * Apply ARM64 ELF relocations
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
+		pr_err("Wrong ELF class for ARM64 relocation\n");
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
+		case R_AARCH64_NONE:
+			/* No operation */
+			break;
+
+		case R_AARCH64_RELATIVE:
+			/* B(P) = Delta(S) + A */
+			/* For RELA format: A = r_addend, Delta(S) = base */
+			*fixup_addr = base + rela->r_addend;
+			break;
+
+		case R_AARCH64_ABS64:
+			/* B(P) = S + A */
+			*fixup_addr = base + rela->r_addend;
+			break;
+
+		default:
+			pr_err("Unsupported ARM64 relocation type: %u at offset 0x%llx\n",
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

-- 
2.47.3



