Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ewos5-000688-4W
 for barebox@lists.infradead.org; Fri, 16 Mar 2018 12:54:15 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 16 Mar 2018 13:52:44 +0100
Message-Id: <20180316125354.23462-9-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/78] ARM: remove ld_var support
To: Barebox List <barebox@lists.infradead.org>

Now that ld_var is no longer used it can be removed.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/include/asm/sections.h | 25 -------------------------
 arch/arm/lib32/runtime-offset.S | 32 --------------------------------
 2 files changed, 57 deletions(-)

diff --git a/arch/arm/include/asm/sections.h b/arch/arm/include/asm/sections.h
index 087f63fb60..b3ada62ee8 100644
--- a/arch/arm/include/asm/sections.h
+++ b/arch/arm/include/asm/sections.h
@@ -9,31 +9,6 @@ extern char __rel_dyn_end[];
 extern char __dynsym_start[];
 extern char __dynsym_end[];
 
-/*
- * Access a linker supplied variable. Use this if your code might not be running
- * at the address it is linked at.
- */
-#define ld_var(name) ({ \
-	unsigned long __ld_var_##name(void); \
-	__ld_var_##name(); \
-})
-
-#else
-
-/*
- * Access a linker supplied variable, assembler macro version
- */
-.macro ld_var name, reg, scratch
-	1000:
-		ldr \reg, 1001f
-		ldr \scratch, =1000b
-		add \reg, \reg, \scratch
-		b 1002f
-	1001:
-		.word \name - 1000b
-	1002:
-.endm
-
 #endif
 
 #endif /* __ASM_SECTIONS_H */
diff --git a/arch/arm/lib32/runtime-offset.S b/arch/arm/lib32/runtime-offset.S
index 39b525b187..f86ca7865e 100644
--- a/arch/arm/lib32/runtime-offset.S
+++ b/arch/arm/lib32/runtime-offset.S
@@ -17,35 +17,3 @@ THUMB(	adds r0, r0, #1)
 linkadr:
 .word get_runtime_offset
 ENDPROC(get_runtime_offset)
-
-.globl __ld_var_base
-__ld_var_base:
-
-/*
- * Functions to calculate selected linker supplied variables during runtime.
- * This is needed for relocatable binaries when the linker variables are
- * needed before finxing up the relocations.
- */
-.macro ld_var_entry name
-	ENTRY(__ld_var_\name)
-		ldr r0, __\name
-		b 1f
-	__\name: .word \name - __ld_var_base
-	ENDPROC(__ld_var_\name)
-.endm
-
-ld_var_entry _text
-ld_var_entry __rel_dyn_start
-ld_var_entry __rel_dyn_end
-ld_var_entry __dynsym_start
-ld_var_entry __dynsym_end
-ld_var_entry __bss_start
-ld_var_entry __bss_stop
-#ifdef __PBL__
-ld_var_entry __image_end
-#endif
-
-1:
-	ldr r1, =__ld_var_base
-	adds r0, r0, r1
-	mov pc, lr
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
