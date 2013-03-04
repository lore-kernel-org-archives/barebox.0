Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UCbbU-0005a7-Ly
 for barebox@lists.infradead.org; Mon, 04 Mar 2013 20:03:23 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Mar 2013 21:03:06 +0100
Message-Id: <1362427389-2144-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1362427389-2144-1-git-send-email-s.hauer@pengutronix.de>
References: <1362427389-2144-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/6] ARM: provide accessor functions for linker variables
To: barebox@lists.infradead.org

With relocatable binaries the linker is not able to supply absolute
addresses. These only get available when the relocation function is
being run. Since for early initialization we need some variables
before relocation, we supply them relatively to some known address
in the binary. This means that the variables have to be converted
to absolute addresses during runtime.

This patch adds a C macro and an assembly macro to calculate the
variables during runtime.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/include/asm/sections.h | 33 +++++++++++++++++++++++++++++++++
 arch/arm/lib/runtime-offset.S   | 32 ++++++++++++++++++++++++++++++++
 2 files changed, 65 insertions(+)

diff --git a/arch/arm/include/asm/sections.h b/arch/arm/include/asm/sections.h
index 2b8c516..8c7bc8c 100644
--- a/arch/arm/include/asm/sections.h
+++ b/arch/arm/include/asm/sections.h
@@ -1 +1,34 @@
+#ifndef __ASM_SECTIONS_H
+#define __ASM_SECTIONS_H
+
+#ifndef __ASSEMBLY__
 #include <asm-generic/sections.h>
+
+/*
+ * Access a linker supplied variable. Use this if your code might not be running
+ * at the address it is linked at.
+ */
+#define ld_var(name) ({ \
+	unsigned long __ld_var_##name(void); \
+	__ld_var_##name(); \
+})
+
+#else
+
+/*
+ * Access a linker supplied variable, assembler macro version
+ */
+.macro ld_var name, reg, scratch
+	1000:
+		ldr \reg, 1001f
+		ldr \scratch, =1000b
+		add \reg, \reg, \scratch
+		b 1002f
+	1001:
+		.word \name - 1000b
+	1002:
+.endm
+
+#endif
+
+#endif /* __ASM_SECTIONS_H */
diff --git a/arch/arm/lib/runtime-offset.S b/arch/arm/lib/runtime-offset.S
index ffa668c..15bf414 100644
--- a/arch/arm/lib/runtime-offset.S
+++ b/arch/arm/lib/runtime-offset.S
@@ -1,6 +1,8 @@
 #include <linux/linkage.h>
 #include <asm/assembler.h>
 
+.section ".text_bare_init","ax"
+
 /*
  * Get the offset between the link address and the address
  * we are currently running at.
@@ -15,3 +17,33 @@ THUMB(	subs r0, r0, #1)
 linkadr:
 .word get_runtime_offset
 ENDPROC(get_runtime_offset)
+
+.globl __ld_var_base
+__ld_var_base:
+
+/*
+ * Functions to calculate selected linker supplied variables during runtime.
+ * This is needed for relocatable binaries when the linker variables are
+ * needed before finxing up the relocations.
+ */
+.macro ld_var_entry name
+	ENTRY(__ld_var_\name)
+		ldr r0, __\name
+		b 1f
+	__\name: .word \name - __ld_var_base
+	ENDPROC(__ld_var_\name)
+.endm
+
+ld_var_entry _text
+ld_var_entry __rel_dyn_start
+ld_var_entry __rel_dyn_end
+ld_var_entry __dynsym_start
+ld_var_entry __dynsym_end
+ld_var_entry _barebox_image_size
+ld_var_entry __bss_start
+ld_var_entry __bss_stop
+
+1:
+	ldr r1, =__ld_var_base
+	adds r0, r0, r1
+	mov pc, lr
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
