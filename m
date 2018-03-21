Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1eybss-0002pl-Ez
 for barebox@lists.infradead.org; Wed, 21 Mar 2018 11:26:25 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <sha@pengutronix.de>) id 1eybsf-0005cP-Tg
 for barebox@lists.infradead.org; Wed, 21 Mar 2018 12:26:09 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <sha@pengutronix.de>) id 1eybsf-00066j-Li
 for barebox@lists.infradead.org; Wed, 21 Mar 2018 12:26:09 +0100
Date: Wed, 21 Mar 2018 12:26:09 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180321112609.pfn4at7zbat7xapf@pengutronix.de>
References: <20180316125354.23462-1-s.hauer@pengutronix.de>
 <20180316125354.23462-31-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180316125354.23462-31-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v2 30/78] ARM: aarch64: Add relocation support
To: Barebox List <barebox@lists.infradead.org>


Ok, here's an updated version.

--------------------------------8<------------------------------

This adds aarch64 support for relocating binaries linked with -pie.

Support is integrated into the already exisiting
relocate_to_current_adr() function which is now used for both arm32
and aarch64.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/common.c    | 69 ++++++++++++++++++++++++++++++++++++++----------
 arch/arm/cpu/setupc_64.S | 60 +++++++++++++++++++++++++++++++++++++++++
 common/Kconfig           |  2 +-
 3 files changed, 116 insertions(+), 15 deletions(-)

diff --git a/arch/arm/cpu/common.c b/arch/arm/cpu/common.c
index 7c07d00c1b..00ce3efb2f 100644
--- a/arch/arm/cpu/common.c
+++ b/arch/arm/cpu/common.c
@@ -17,6 +17,7 @@
 
 #include <common.h>
 #include <init.h>
+#include <elf.h>
 #include <linux/sizes.h>
 #include <asm/system_info.h>
 #include <asm/barebox-arm.h>
@@ -24,42 +25,82 @@
 #include <asm-generic/memory_layout.h>
 #include <asm/sections.h>
 #include <asm/cache.h>
+#include <debug_ll.h>
+
+#define R_ARM_RELATIVE 23
+#define R_AARCH64_RELATIVE 1027
 
 /*
  * relocate binary to the currently running address
  */
 void relocate_to_current_adr(void)
 {
-	uint32_t offset;
-	uint32_t *dstart, *dend, *dynsym, *dynend;
+	unsigned long offset, offset_var;
+	unsigned long __maybe_unused *dynsym, *dynend;
+	void *dstart, *dend;
 
 	/* Get offset between linked address and runtime address */
 	offset = get_runtime_offset();
+	offset_var = global_variable_offset();
+
+	dstart = (void *)__rel_dyn_start + offset_var;
+	dend = (void *)__rel_dyn_end + offset_var;
 
-	dstart = (void *)__rel_dyn_start + offset;
-	dend = (void *)__rel_dyn_end + offset;
+#if defined(CONFIG_CPU_64)
+	while (dstart < dend) {
+		struct elf64_rela *rel = dstart;
 
-	dynsym = (void *)__dynsym_start + offset;
-	dynend = (void *)__dynsym_end + offset;
+		if (ELF64_R_TYPE(rel->r_info) == R_AARCH64_RELATIVE) {
+			unsigned long *fixup = (unsigned long *)(rel->r_offset + offset);
+
+			*fixup = rel->r_addend + offset;
+		} else {
+			putc_ll('>');
+			puthex_ll(rel->r_info);
+			putc_ll(' ');
+			puthex_ll(rel->r_offset);
+			putc_ll(' ');
+			puthex_ll(rel->r_addend);
+			putc_ll('\n');
+			panic("");
+		}
+
+		dstart += sizeof(*rel);
+	}
+#elif defined(CONFIG_CPU_32)
+	dynsym = (void *)__dynsym_start + offset_var;
+	dynend = (void *)__dynsym_end + offset_var;
 
 	while (dstart < dend) {
-		uint32_t *fixup = (uint32_t *)(*dstart + offset);
-		uint32_t type = *(dstart + 1);
+		struct elf32_rel *rel = dstart;
+
+		if (ELF32_R_TYPE(rel->r_info) == R_ARM_RELATIVE) {
+			unsigned long *fixup = (unsigned long *)(rel->r_offset + offset);
 
-		if ((type & 0xff) == 0x17) {
 			*fixup = *fixup + offset;
-		} else {
-			int index = type >> 8;
-			uint32_t r = dynsym[index * 4 + 1];
+
+			rel->r_offset += offset;
+		} else if (ELF32_R_TYPE(rel->r_info) == R_ARM_ABS32) {
+			unsigned long r = dynsym[ELF32_R_SYM(rel->r_info) * 4 + 1];
+			unsigned long *fixup = (unsigned long *)(rel->r_offset + offset);
 
 			*fixup = *fixup + r + offset;
+		} else {
+			putc_ll('>');
+			puthex_ll(rel->r_info);
+			putc_ll(' ');
+			puthex_ll(rel->r_offset);
+			putc_ll('\n');
+			panic("");
 		}
 
-		*dstart += offset;
-		dstart += 2;
+		dstart += sizeof(*rel);
 	}
 
 	memset(dynsym, 0, (unsigned long)dynend - (unsigned long)dynsym);
+#else
+#error "Architecture not specified"
+#endif
 
 	arm_early_mmu_cache_flush();
 	icache_invalidate();
diff --git a/arch/arm/cpu/setupc_64.S b/arch/arm/cpu/setupc_64.S
index 3515854784..13f19fcc4d 100644
--- a/arch/arm/cpu/setupc_64.S
+++ b/arch/arm/cpu/setupc_64.S
@@ -16,3 +16,63 @@ ENTRY(setup_c)
 	mov	x30, x15
 	ret
 ENDPROC(setup_c)
+
+/*
+ * void relocate_to_adr(unsigned long targetadr)
+ *
+ * Copy binary to targetadr, relocate code and continue
+ * executing at new address.
+ */
+.section .text.relocate_to_adr
+ENTRY(relocate_to_adr)
+					/* x0: target address */
+
+	stp	x19, x20, [sp, #-16]!
+	stp	x21, x22, [sp, #-16]!
+
+	mov	x19, lr
+
+	mov	x21, x0
+
+	bl	get_runtime_offset
+	mov	x5, x0
+
+	ldr	x0, =_text
+	mov	x20, x0
+
+	add	x1, x0, x5		/* x1: from address */
+
+	cmp	x1, x21			/* already at correct address? */
+	beq	1f			/* yes, skip copy to new address */
+
+	ldr	x2, =__bss_start
+
+	sub	x2, x2, x0		/* x2: size */
+	mov	x0, x21			/* x0: target */
+
+	/* adjust return address */
+	sub	x19, x19, x1		/* sub address where we are actually running */
+	add	x19, x19, x0		/* add address where we are going to run */
+
+	bl	memcpy			/* copy binary */
+
+#ifdef CONFIG_MMU
+	bl	arm_early_mmu_cache_flush
+#endif
+	mov	x0,#0
+	ic	ivau, x0	/* flush icache */
+
+	ldr	x0,=1f
+	sub	x0, x0, x20
+	add	x0, x0, x21
+	br	x0			/* jump to relocated address */
+1:
+	bl	relocate_to_current_adr	/* relocate binary */
+
+	mov	lr, x19
+
+	ldp	x21, x22, [sp], #16
+	ldp	x19, x20, [sp], #16
+	ret
+
+ENDPROC(relocate_to_adr)
diff --git a/common/Kconfig b/common/Kconfig
index af71d6888a..b7000c4d73 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -344,7 +344,7 @@ config KALLSYMS
 	  This is useful to print a nice backtrace when an exception occurs.
 
 config RELOCATABLE
-	depends on PPC || (ARM && !CPU_V8)
+	depends on PPC || ARM
 	bool "generate relocatable barebox binary"
 	help
 	  A non relocatable barebox binary will run at it's compiled in
-- 
2.16.1

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
