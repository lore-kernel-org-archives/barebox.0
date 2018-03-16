Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ewosI-0001qD-EX
 for barebox@lists.infradead.org; Fri, 16 Mar 2018 12:54:26 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 30/78] ARM: aarch64: Add relocation support
Date: Fri, 16 Mar 2018 13:53:06 +0100
Message-Id: <20180316125354.23462-31-s.hauer@pengutronix.de>
In-Reply-To: <20180316125354.23462-1-s.hauer@pengutronix.de>
References: <20180316125354.23462-1-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
To: Barebox List <barebox@lists.infradead.org>

This adds aarch64 support for relocating binaries linked with -pie.

Support is integrated into the already exisiting
relocate_to_current_adr() function which is now used for both arm32
and aarch64.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/common.c    | 38 ++++++++++++++++++++++++-------
 arch/arm/cpu/setupc_64.S | 58 ++++++++++++++++++++++++++++++++++++++++++++++++
 common/Kconfig           |  2 +-
 3 files changed, 89 insertions(+), 9 deletions(-)

diff --git a/arch/arm/cpu/common.c b/arch/arm/cpu/common.c
index 3766116d97..c317e502d0 100644
--- a/arch/arm/cpu/common.c
+++ b/arch/arm/cpu/common.c
@@ -24,39 +24,61 @@
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
-	unsigned long offset;
+	unsigned long offset, offset_var;
 	unsigned long *dstart, *dend, *dynsym, *dynend;
 
 	/* Get offset between linked address and runtime address */
 	offset = get_runtime_offset();
+	offset_var = global_variable_offset();
 
-	dstart = (void *)__rel_dyn_start + offset;
-	dend = (void *)__rel_dyn_end + offset;
+	dstart = (void *)__rel_dyn_start + offset_var;
+	dend = (void *)__rel_dyn_end + offset_var;
 
-	dynsym = (void *)__dynsym_start + offset;
-	dynend = (void *)__dynsym_end + offset;
+	dynsym = (void *)__dynsym_start + offset_var;
+	dynend = (void *)__dynsym_end + offset_var;
 
 	while (dstart < dend) {
 		unsigned long *fixup = (unsigned long *)(*dstart + offset);
 		unsigned long type = *(dstart + 1);
+		int add;
+
+		if (ELF64_R_TYPE(type) == R_AARCH64_RELATIVE) {
+			unsigned long addend = *(dstart + 2);
 
-		if ((type & 0xff) == 0x17) {
+			*fixup = addend + offset;
+
+			add = 3;
+		} else if (ELF32_R_TYPE(type) == R_ARM_RELATIVE) {
 			*fixup = *fixup + offset;
-		} else {
+
+			add = 2;
+		} else if (ELF32_R_TYPE(type) == R_ARM_ABS32) {
 			int index = type >> 8;
 			unsigned long r = dynsym[index * 4 + 1];
 
 			*fixup = *fixup + r + offset;
+
+			add = 2;
+		} else {
+			putc_ll('>');
+			puthex_ll(type);
+			putc_ll('\n');
+			/* We're doomed */
+			panic(NULL);
 		}
 
 		*dstart += offset;
-		dstart += 2;
+		dstart += add;
 	}
 
 	memset(dynsym, 0, (unsigned long)dynend - (unsigned long)dynsym);
diff --git a/arch/arm/cpu/setupc_64.S b/arch/arm/cpu/setupc_64.S
index 3515854784..88c7899205 100644
--- a/arch/arm/cpu/setupc_64.S
+++ b/arch/arm/cpu/setupc_64.S
@@ -16,3 +16,61 @@ ENTRY(setup_c)
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
+
+	mov	x19, lr
+
+	mov	x6, x0
+
+	bl	get_runtime_offset
+	mov	x5, x0
+
+	ldr	x0, =_text
+	mov	x8, x0
+
+	add	x1, x0, x5		/* x1: from address */
+
+	cmp	x1, x6			/* already at correct address? */
+	beq	1f			/* yes, skip copy to new address */
+
+	ldr	x2, =__bss_start
+
+	sub	x2, x2, x0		/* x2: size */
+	mov	x0, x6			/* x0: target */
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
+	sub	x0, x0, x8
+	add	x0, x0, x6
+	br	x0			/* jump to relocated address */
+1:
+	bl	relocate_to_current_adr	/* relocate binary */
+
+	mov	lr, x19
+
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


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
