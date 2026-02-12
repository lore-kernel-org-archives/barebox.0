Delivery-date: Thu, 12 Feb 2026 18:27:45 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vqaTg-000xl0-0M
	for lore@lore.pengutronix.de;
	Thu, 12 Feb 2026 18:27:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vqaTf-0006OO-IC
	for lore@pengutronix.de; Thu, 12 Feb 2026 18:27:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=1J4rbJYv9aUcb9ejt1P/I8huooklnBtWOw1PbhTR3dc=; b=xdwT0+g0EL+sFYOuG7LD9cR57B
	2oDGdYEikGbKHVc7Rjfvu5HagQmCZOXOBbEjzH+XruL8IZgm0oGcXyVx9NYhE2yS4Zi3El49jZoCo
	HXDYDDdgAisS1mzpCJ727jUZ6KPtDp+60DWFjeAwzmqSoajKybSQI30OgIm+FtVWas5CKq9r677Qc
	c9PzpN7bQclQApjkTKUs05mp4mTMbyizcRl7wEZiM1uX+09I7BY/3vlu3WB3AjTUOEdMICTvzMe/N
	QH4mhN785r7ENPI7cGeTmp82HUYaXgjfzTTCAeB0EsfAfkvXI0uiog3Gddd2tqG0Nn4hNm4fA0k4B
	+Qe8Ncog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqaSw-00000002RQt-2D5f;
	Thu, 12 Feb 2026 17:26:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqaSq-00000002RPp-2Zmu
	for barebox@lists.infradead.org;
	Thu, 12 Feb 2026 17:26:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vqaSn-0006IQ-Pa; Thu, 12 Feb 2026 18:26:49 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vqaSm-000RjO-0p;
	Thu, 12 Feb 2026 18:26:49 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vqaSn-00000004iVt-28ab;
	Thu, 12 Feb 2026 18:26:49 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 12 Feb 2026 18:26:43 +0100
Message-ID: <20260212172648.1124346-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260212_092653_232588_6D8DE594 
X-CRM114-Status: GOOD (  23.85  )
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
Subject: [PATCH] ARM: add RELR relocation packing support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

RELR is a compact format for storing relative relocations that
significantly reduces binary size. Add both the Kbuild/Kconfig
infrastructure and runtime relocation applying code for ARM32
and ARM64.

RELR entries use a compressed encoding: address entries (even LSB)
encode one relocation and bitmap entries (odd LSB) encode up to
63 (64-bit) or 31 (32-bit) subsequent relocations each.

Both the PBL self-relocation path (relocate_to_current_adr) and the
ELF loading path (elf_apply_relocations) handle RELR alongside
traditional RELA/REL relocations. Either relocation type may be
present independently, as the linker may convert all entries to
RELR format.

How much is saved in image size depends on how big the blobs are
that are included in the barebox image.
Some numbers with aarch64-v8a-linux-gnu-gcc v15.2.1[1]:

					  (Image sizes in KiB)
 image                       Compression  RELA  RELR  Savings
 barebox-dt-2nd.img          LZ4          1243  1047  196 (15.8%)
 barebox-nxp-imx8mn-evk.img  LZ4           923   853   70 ( 7.6%)
 barebox-nxp-imx8mn-evk.img  XZ            677   655   20 ( 3.0%)

barebox-dt-2nd.img is from multi_v8_defconfig and
barebox-nxp-imx8mn-evk.img is configured a stripped down EVK-only config.

The .relr.dyn section is placed directly after .rel_dyn_end in the
PBL linker script to prepare for a future ELF rewriter that converts
RELA to RELR in-place for platforms lacking full toolchain support.

For barebox proper, the rewriter can operate via PT_DYNAMIC, updating
DT_RELA, DT_RELASZ and adding DT_RELR, DT_RELRSZ entries to point at
the RELR data written into the space freed by shrinking the RELA table.

[1]: OSELAS.Toolchain-2025.11.1 15-20260124

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Makefile                           |  6 +++
 arch/Kconfig                       | 16 ++++++-
 arch/arm/Kconfig                   |  1 +
 arch/arm/cpu/common.c              |  9 +++-
 arch/arm/cpu/sections.c            |  2 +
 arch/arm/include/asm/barebox.lds.h |  3 ++
 arch/arm/include/asm/sections.h    |  2 +
 arch/arm/lib32/reloc.c             | 23 +++++++---
 arch/arm/lib64/reloc.c             | 23 +++++++---
 include/asm-generic/reloc.h        |  2 +
 include/lib/elf.h                  |  2 +
 include/linux/elf.h                |  9 ++++
 lib/Kconfig                        |  7 +++
 lib/Makefile                       |  1 +
 lib/elf.c                          | 37 ++++++++++++++++
 lib/reloc.c                        | 68 ++++++++++++++++++++++++++++++
 scripts/tools-support-relr.sh      | 21 +++++++++
 17 files changed, 216 insertions(+), 16 deletions(-)
 create mode 100644 lib/reloc.c
 create mode 100755 scripts/tools-support-relr.sh

diff --git a/Makefile b/Makefile
index 4296c97ef02d..fa034605375d 100644
--- a/Makefile
+++ b/Makefile
@@ -675,6 +675,12 @@ ifdef need-config
 include include/config/auto.conf
 endif
 
+ifeq ($(CONFIG_RELR),y)
+# ld.lld before 15 did not support -z pack-relative-relocs.
+LDFLAGS_barebox += $(call ld-option,--pack-dyn-relocs=relr,-z pack-relative-relocs)
+LDFLAGS_pbl += $(call ld-option,--pack-dyn-relocs=relr,-z pack-relative-relocs)
+endif
+
 # We need some generic definitions.
 include $(srctree)/scripts/Makefile.lib
 
diff --git a/arch/Kconfig b/arch/Kconfig
index ba9dd0e6f4df..e385b3bdb97c 100644
--- a/arch/Kconfig
+++ b/arch/Kconfig
@@ -47,7 +47,19 @@ config BOARD_GENERIC_FIT
 	  Note that this option requires python3 and its libfdt module to be
 	  installed on the build host.
 
-endmenu
+# Select if the architecture has support for applying RELR relocations.
+config ARCH_HAS_RELR
+	bool
+
+config RELR
+	bool "Use RELR relocation packing"
+	depends on ARCH_HAS_RELR && TOOLS_SUPPORT_RELR
+	default y
+	help
+	  Store the dynamic relocations in the RELR relocation packing
+	  format. Requires a compatible linker (LLD supports this feature), as
+	  well as compatible NM and OBJCOPY utilities (llvm-nm and llvm-objcopy
+	  are compatible).
 
 config ARCH_HAS_CTRLC
 	bool
@@ -142,3 +154,5 @@ config ARCH_HAS_FORTIFY_SOURCE
 	help
 	  An architecture should select this when it can successfully
 	  build and run with CONFIG_FORTIFY_SOURCE.
+
+endmenu
diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index c7514acb775f..17f01c884efa 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -36,6 +36,7 @@ config ARM32
 
 config ARM64
 	def_bool CPU_64
+	select ARCH_HAS_RELR
 
 config ARCH_TEXT_BASE
 	hex
diff --git a/arch/arm/cpu/common.c b/arch/arm/cpu/common.c
index e86c89f80835..ccadb05ed931 100644
--- a/arch/arm/cpu/common.c
+++ b/arch/arm/cpu/common.c
@@ -55,12 +55,19 @@ void pbl_barebox_break(void)
 
 void __prereloc relocate_to_current_adr(void)
 {
-	relocate_image(get_runtime_offset(),
+	unsigned long offset = get_runtime_offset();
+
+	relocate_image(offset,
 		       runtime_address(__rel_dyn_start),
 		       runtime_address(__rel_dyn_end),
 		       runtime_address(__dynsym_start),
 		       runtime_address(__dynsym_end));
 
+	if (IS_ENABLED(CONFIG_RELR))
+		relocate_relr(offset,
+			      runtime_address(__relr_dyn_start),
+			      runtime_address(__relr_dyn_end));
+
 	sync_caches_for_execution();
 }
 
diff --git a/arch/arm/cpu/sections.c b/arch/arm/cpu/sections.c
index f310578ba272..3025dc3f66a2 100644
--- a/arch/arm/cpu/sections.c
+++ b/arch/arm/cpu/sections.c
@@ -7,6 +7,8 @@ char __rel_dyn_start[0] __attribute__((section(".__rel_dyn_start")));
 char __rel_dyn_end[0] __attribute__((section(".__rel_dyn_end")));
 char __dynsym_start[0] __attribute__((section(".__dynsym_start")));
 char __dynsym_end[0] __attribute__((section(".__dynsym_end")));
+char __relr_dyn_start[0] __attribute__((section(".__relr_dyn_start")));
+char __relr_dyn_end[0] __attribute__((section(".__relr_dyn_end")));
 char _text[0] __attribute__((section("._text")));
 char __bss_start[0] __attribute__((section(".__bss_start")));
 char __bss_stop[0] __attribute__((section(".__bss_stop")));
diff --git a/arch/arm/include/asm/barebox.lds.h b/arch/arm/include/asm/barebox.lds.h
index 72aabe155b5c..be9901bad150 100644
--- a/arch/arm/include/asm/barebox.lds.h
+++ b/arch/arm/include/asm/barebox.lds.h
@@ -18,6 +18,9 @@
 	.rel_dyn_start : { *(.__rel_dyn_start) }			\
 	.BAREBOX_RELOCATION_TYPE.dyn : { *(.BAREBOX_RELOCATION_TYPE*) }	\
 	.rel_dyn_end : { *(.__rel_dyn_end) }				\
+	.__relr_dyn_start : { *(.__relr_dyn_start) }			\
+	.relr.dyn : ALIGN(8) { *(.relr.dyn) }				\
+	.__relr_dyn_end : { *(.__relr_dyn_end) }			\
 	.__dynsym_start :  { *(.__dynsym_start) }			\
 	.dynsym : { *(.dynsym) }					\
 	.__dynsym_end : { *(.__dynsym_end) }
diff --git a/arch/arm/include/asm/sections.h b/arch/arm/include/asm/sections.h
index 15b1a6482a5b..fcf9f20b9aa0 100644
--- a/arch/arm/include/asm/sections.h
+++ b/arch/arm/include/asm/sections.h
@@ -11,6 +11,8 @@ extern char __rel_dyn_start[];
 extern char __rel_dyn_end[];
 extern char __dynsym_start[];
 extern char __dynsym_end[];
+extern char __relr_dyn_start[];
+extern char __relr_dyn_end[];
 extern char __exceptions_start[];
 extern char __exceptions_stop[];
 
diff --git a/arch/arm/lib32/reloc.c b/arch/arm/lib32/reloc.c
index edd3d7eb4866..a55a9215e54a 100644
--- a/arch/arm/lib32/reloc.c
+++ b/arch/arm/lib32/reloc.c
@@ -60,16 +60,25 @@ void __prereloc relocate_image(unsigned long offset,
  */
 int elf_apply_relocations(struct elf_image *elf, const void *dyn_seg)
 {
-	void *rel_ptr = NULL, *symtab = NULL;
-	u64 relsz;
+	void *rel_ptr = NULL, *relr_ptr = NULL, *symtab = NULL;
+	u64 relsz, relrsz;
 	phys_addr_t base = (phys_addr_t)elf->reloc_offset;
-	int ret;
+	bool have_rel, have_relr = false;
 
-	ret = elf_parse_dynamic_section_rel(elf, dyn_seg, &rel_ptr, &relsz, &symtab);
-	if (ret)
-		return ret;
+	have_rel = !elf_parse_dynamic_section_rel(elf, dyn_seg,
+						  &rel_ptr, &relsz, &symtab);
+	if (have_rel)
+		relocate_image(base, rel_ptr, rel_ptr + relsz, symtab, NULL);
 
-	relocate_image(base, rel_ptr, rel_ptr + relsz, symtab, NULL);
+	if (IS_ENABLED(CONFIG_RELR)) {
+		have_relr = !elf_parse_dynamic_section_relr(elf, dyn_seg,
+							    &relr_ptr, &relrsz);
+		if (have_relr)
+			relocate_relr(base, relr_ptr, relr_ptr + relsz);
+	}
+
+	if (!have_rel && !have_relr)
+		return -EINVAL;
 
 	return 0;
 }
diff --git a/arch/arm/lib64/reloc.c b/arch/arm/lib64/reloc.c
index b49815787470..0acc64d8f229 100644
--- a/arch/arm/lib64/reloc.c
+++ b/arch/arm/lib64/reloc.c
@@ -49,16 +49,25 @@ void __prereloc relocate_image(unsigned long offset,
  */
 int elf_apply_relocations(struct elf_image *elf, const void *dyn_seg)
 {
-	void *rela_ptr = NULL, *symtab = NULL;
-	u64 relasz;
+	void *rela_ptr = NULL, *relr_ptr = NULL, *symtab = NULL;
+	u64 relasz, relrsz;
 	phys_addr_t base = (phys_addr_t)elf->reloc_offset;
-	int ret;
+	bool have_rela, have_relr = false;
 
-	ret = elf_parse_dynamic_section_rela(elf, dyn_seg, &rela_ptr, &relasz, &symtab);
-	if (ret)
-		return ret;
+	have_rela = !elf_parse_dynamic_section_rela(elf, dyn_seg,
+						    &rela_ptr, &relasz, &symtab);
+	if (have_rela)
+		relocate_image(base, rela_ptr, rela_ptr + relasz, symtab, NULL);
 
-	relocate_image(base, rela_ptr, rela_ptr + relasz, symtab, NULL);
+	if (IS_ENABLED(CONFIG_RELR)) {
+		have_relr = !elf_parse_dynamic_section_relr(elf, dyn_seg,
+							    &relr_ptr, &relrsz);
+		if (have_relr)
+			relocate_relr(base, relr_ptr, relr_ptr + relrsz);
+	}
+
+	if (!have_rela && !have_relr)
+		return -EINVAL;
 
 	return 0;
 }
diff --git a/include/asm-generic/reloc.h b/include/asm-generic/reloc.h
index 06fccbd6f367..feb42154604a 100644
--- a/include/asm-generic/reloc.h
+++ b/include/asm-generic/reloc.h
@@ -76,4 +76,6 @@ extern void *__compiletime_error(
 	"runtime_address() may only be called on linker defined symbols."
 ) __unsafe_runtime_address(void);
 
+void __prereloc relocate_relr(unsigned long offset, void *relr_start, void *relr_end);
+
 #endif
diff --git a/include/lib/elf.h b/include/lib/elf.h
index c62d8f791273..c09d097566bb 100644
--- a/include/lib/elf.h
+++ b/include/lib/elf.h
@@ -57,6 +57,8 @@ int elf_parse_dynamic_section_rel(struct elf_image *elf, const void *dyn_seg,
 				  void **rel_out, u64 *relsz_out, void **symtab);
 int elf_parse_dynamic_section_rela(struct elf_image *elf, const void *dyn_seg,
 				   void **rel_out, u64 *relsz_out, void **symtab);
+int elf_parse_dynamic_section_relr(struct elf_image *elf, const void *dyn_seg,
+				   void **relr_out, u64 *relrsz_out);
 
 /*
  * Apply dynamic relocations to an ELF binary already loaded in memory.
diff --git a/include/linux/elf.h b/include/linux/elf.h
index f670ed82a077..bbedda8eed99 100644
--- a/include/linux/elf.h
+++ b/include/linux/elf.h
@@ -87,6 +87,9 @@ typedef __s64	Elf64_Sxword;
 #define DT_TEXTREL	22
 #define DT_JMPREL	23
 #define DT_ENCODING	32
+#define DT_RELRSZ	35
+#define DT_RELR		36
+#define DT_RELRENT	37
 #define OLD_DT_LOOS	0x60000000
 #define DT_LOOS		0x6000000d
 #define DT_HIOS		0x6ffff000
@@ -382,6 +385,9 @@ extern Elf32_Dyn _DYNAMIC [];
 #define elf_note	elf32_note
 #define elf_addr_t	Elf32_Off
 
+typedef __u32		elf_relr_t;
+#define ELF_RELR_BITMAP_BITS	31	/* 32 bits - 1 for LSB flag */
+
 #else
 
 extern Elf64_Dyn _DYNAMIC [];
@@ -390,6 +396,9 @@ extern Elf64_Dyn _DYNAMIC [];
 #define elf_note	elf64_note
 #define elf_addr_t	Elf64_Off
 
+typedef __u64		elf_relr_t;
+#define ELF_RELR_BITMAP_BITS	63	/* 64 bits - 1 for LSB flag */
+
 #endif
 
 #define ELF_GET_FIELD(__s, __field, __type) \
diff --git a/lib/Kconfig b/lib/Kconfig
index 9b8e0c2fa77d..1322ad9f4722 100644
--- a/lib/Kconfig
+++ b/lib/Kconfig
@@ -243,4 +243,11 @@ config GENERIC_ALLOCATOR
 config IDR
 	bool
 
+config TOOLS_SUPPORT_RELR
+	def_bool $(success,env "CC=$(CC)" "LD=$(LD)" "NM=$(NM)" "OBJCOPY=$(OBJCOPY)" $(srctree)/scripts/tools-support-relr.sh)
+
+config LIBRELOC
+	bool
+	default RELOCATABLE || ELF
+
 endmenu
diff --git a/lib/Makefile b/lib/Makefile
index 9f27d3413990..57ccd9616348 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -16,6 +16,7 @@ obj-y			+= vsprintf.o
 obj-y			+= talloc.o
 obj-$(CONFIG_KASAN)	+= kasan/
 obj-pbl-$(CONFIG_STACKPROTECTOR)	+= stackprot.o
+obj-pbl-$(CONFIG_LIBRELOC)		+= reloc.o
 pbl-$(CONFIG_PBL_CONSOLE) += vsprintf.o
 obj-y			+= misc.o
 obj-$(CONFIG_PARAMETER)	+= parameter.o
diff --git a/lib/elf.c b/lib/elf.c
index fb2dd9cedb10..eb8a23a687e1 100644
--- a/lib/elf.c
+++ b/lib/elf.c
@@ -191,6 +191,43 @@ int elf_parse_dynamic_section_rela(struct elf_image *elf, const void *dyn_seg,
 					 true);
 }
 
+int elf_parse_dynamic_section_relr(struct elf_image *elf, const void *dyn_seg,
+				   void **relr_out, u64 *relrsz_out)
+{
+	const void *dyn = dyn_seg;
+	void *relr = NULL;
+	u64 relrsz = 0;
+	phys_addr_t base = (phys_addr_t)elf->reloc_offset;
+
+	if (!IS_ENABLED(CONFIG_RELR))
+		return -EINVAL;
+
+	while (elf_dyn_d_tag(elf, dyn) != DT_NULL) {
+		unsigned long tag = elf_dyn_d_tag(elf, dyn);
+
+		switch (tag) {
+		case DT_RELR:
+			relr = (void *)(unsigned long)(base + elf_dyn_d_ptr(elf, dyn));
+			break;
+		case DT_RELRSZ:
+			relrsz = elf_dyn_d_val(elf, dyn);
+			break;
+		default:
+			break;
+		}
+
+		dyn += elf_size_of_dyn(elf);
+	}
+
+	if (!relr || !relrsz)
+		return -EINVAL;
+
+	*relr_out = relr;
+	*relrsz_out = relrsz;
+
+	return 0;
+}
+
 /*
  * Weak default implementation for architectures that don't support
  * ELF relocations yet. Can be overridden by arch-specific implementation.
diff --git a/lib/reloc.c b/lib/reloc.c
new file mode 100644
index 000000000000..c1a0bb444959
--- /dev/null
+++ b/lib/reloc.c
@@ -0,0 +1,68 @@
+// SPDX-License-Identifier: GPL-2.0-only
+// SPDX-Comment: Origin-URL: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/arm64/kernel/pi/relocate.c?id=97a6f43bb049e64b9913c50c7530e13d78e205d4
+// SPDX-FileCopyrightText: 2023 Google LLC
+// Authors: Ard Biesheuvel <ardb@google.com>
+//          Peter Collingbourne <pcc@google.com>
+
+#include <asm-generic/reloc.h>
+#include <linux/elf.h>
+
+/**
+ * relocate_relr - Apply RELR relocations.
+ * @offset: offset to relocate barebox by
+ * @relr_start: first RELR relocation entry
+ * @relr_end: (exclusive) end address just after the last RELR rentry
+ *
+ * RELR is a compressed format for storing relative relocations. The
+ * encoded sequence of entries looks like:
+ * [ AAAAAAAA BBBBBBB1 BBBBBBB1 ... AAAAAAAA BBBBBB1 ... ]
+ *
+ * i.e. start with an address, followed by any number of bitmaps. The
+ * address entry encodes 1 relocation. The subsequent bitmap entries
+ * encode up to 63 relocations each, at subsequent offsets following
+ * the last address entry.
+ *
+ * The bitmap entries must have 1 in the least significant bit. The
+ * assumption here is that an address cannot have 1 in lsb. Odd
+ * addresses are not supported. Any odd addresses are stored in the
+ * REL/RELA section, which is handled separately.
+ *
+ * With the exception of the least significant bit, each bit in the
+ * bitmap corresponds with a machine word that follows the base address
+ * word, and the bit value indicates whether or not a relocation needs
+ * to be applied to it. The second least significant bit represents the
+ * machine word immediately following the initial address, and each bit
+ * that follows represents the next word, in linear order. As such, a
+ * single bitmap can encode up to 63 relocations in a 64-bit object.
+ */
+void __prereloc
+relocate_relr(unsigned long offset, void *relr_start, void *relr_end)
+{
+	elf_relr_t *place = NULL;
+
+	if (!IS_ENABLED(CONFIG_RELR) || !offset)
+		return;
+
+	for (elf_relr_t *relr = relr_start;
+	     (void *)relr < relr_end; relr++) {
+		if ((*relr & 1) == 0) {
+			place = (elf_relr_t *)(*relr + offset);
+			*place++ += offset;
+
+                       /*
+                        * Rebase the entry so it tracks the effective link
+                        * address, like RELA's r_offset += offset. This
+                        * allows relocate_to_current_adr() to be called
+                        * again after the binary is copied to a new address
+                        * (e.g. relocate_to_adr_full or PBL copying itself
+                        * into DRAM on i.MX8MM verified boot).
+                        */
+                       *relr += offset;
+		} else {
+			for (elf_relr_t *p = place, r = *relr >> 1; r; p++, r >>= 1)
+				if (r & 1)
+					*p += offset;
+			place += ELF_RELR_BITMAP_BITS;
+		}
+	}
+}
diff --git a/scripts/tools-support-relr.sh b/scripts/tools-support-relr.sh
new file mode 100755
index 000000000000..4c121946e517
--- /dev/null
+++ b/scripts/tools-support-relr.sh
@@ -0,0 +1,21 @@
+#!/bin/sh -eu
+# SPDX-License-Identifier: GPL-2.0
+
+tmp_file=$(mktemp)
+trap "rm -f $tmp_file.o $tmp_file $tmp_file.bin" EXIT
+
+cat << "END" | $CC -c -x c - -o $tmp_file.o >/dev/null 2>&1
+void *p = &p;
+END
+
+# ld.lld before 15 did not support -z pack-relative-relocs.
+if ! $LD $tmp_file.o -shared -Bsymbolic --pack-dyn-relocs=relr -o $tmp_file 2>/dev/null; then
+	$LD $tmp_file.o -shared -Bsymbolic -z pack-relative-relocs -o $tmp_file 2>&1 |
+		grep -q pack-relative-relocs && exit 1
+fi
+
+# Despite printing an error message, GNU nm still exits with exit code 0 if it
+# sees a relr section. So we need to check that nothing is printed to stderr.
+test -z "$($NM $tmp_file 2>&1 >/dev/null)"
+
+$OBJCOPY -O binary $tmp_file $tmp_file.bin
-- 
2.47.3



