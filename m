Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UCbCo-0003L1-6N
 for barebox@lists.infradead.org; Mon, 04 Mar 2013 19:37:51 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Mar 2013 20:37:45 +0100
Message-Id: <1362425866-1356-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1362425866-1356-1-git-send-email-s.hauer@pengutronix.de>
References: <1362425866-1356-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] ARM: OMAP3: invalidate L2 cache using ROM API
To: barebox@lists.infradead.org

Code taken from U-Boot. This makes the beagle board much more
reliable.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/beagle/lowlevel.c               |  2 -
 arch/arm/boards/omap343xdsp/lowlevel.c          |  2 -
 arch/arm/mach-omap/Makefile                     |  4 +-
 arch/arm/mach-omap/auxcr.S                      | 12 ++++
 arch/arm/mach-omap/include/mach/omap3-silicon.h |  8 ++-
 arch/arm/mach-omap/omap3_core.S                 | 87 -------------------------
 arch/arm/mach-omap/omap3_generic.c              |  4 +-
 7 files changed, 24 insertions(+), 95 deletions(-)
 delete mode 100644 arch/arm/mach-omap/omap3_core.S

diff --git a/arch/arm/boards/beagle/lowlevel.c b/arch/arm/boards/beagle/lowlevel.c
index 8afcb75..2c1232c 100644
--- a/arch/arm/boards/beagle/lowlevel.c
+++ b/arch/arm/boards/beagle/lowlevel.c
@@ -169,8 +169,6 @@ static int beagle_board_init(void)
 
 void __naked barebox_arm_reset_vector(void)
 {
-	omap3_invalidate_dcache();
-
 	arm_cpu_lowlevel_init();
 
 	beagle_board_init();
diff --git a/arch/arm/boards/omap343xdsp/lowlevel.c b/arch/arm/boards/omap343xdsp/lowlevel.c
index 5629655..ed675ad 100644
--- a/arch/arm/boards/omap343xdsp/lowlevel.c
+++ b/arch/arm/boards/omap343xdsp/lowlevel.c
@@ -547,8 +547,6 @@ static int sdp343x_board_init(void)
 
 void __naked barebox_arm_reset_vector(void)
 {
-	omap3_invalidate_dcache();
-
 	arm_cpu_lowlevel_init();
 
 	sdp343x_board_init();
diff --git a/arch/arm/mach-omap/Makefile b/arch/arm/mach-omap/Makefile
index aaa0cea..38786b2 100644
--- a/arch/arm/mach-omap/Makefile
+++ b/arch/arm/mach-omap/Makefile
@@ -19,8 +19,8 @@ obj-$(CONFIG_ARCH_OMAP) += syslib.o omap_devices.o
 pbl-$(CONFIG_ARCH_OMAP) += syslib.o
 obj-$(CONFIG_OMAP_CLOCK_SOURCE_S32K) += s32k_clksource.o
 obj-$(CONFIG_OMAP_CLOCK_SOURCE_DMTIMER0) += dmtimer0.o
-obj-$(CONFIG_ARCH_OMAP3) += omap3_core.o omap3_generic.o auxcr.o
-pbl-$(CONFIG_ARCH_OMAP3) += omap3_core.o omap3_generic.o auxcr.o
+obj-$(CONFIG_ARCH_OMAP3) += omap3_generic.o auxcr.o
+pbl-$(CONFIG_ARCH_OMAP3) += omap3_generic.o auxcr.o
 obj-$(CONFIG_ARCH_OMAP4) += omap4_generic.o omap4_clock.o
 pbl-$(CONFIG_ARCH_OMAP4) += omap4_generic.o omap4_clock.o
 obj-$(CONFIG_ARCH_AM33XX) += am33xx_generic.o am33xx_clock.o am33xx_mux.o
diff --git a/arch/arm/mach-omap/auxcr.S b/arch/arm/mach-omap/auxcr.S
index 2debc15..aaac0f2 100644
--- a/arch/arm/mach-omap/auxcr.S
+++ b/arch/arm/mach-omap/auxcr.S
@@ -31,3 +31,15 @@ ENTRY(setup_auxcr)
 	.word 0xE1600070		@ SMC
 	bx	lr
 ENDPROC(setup_auxcr)
+
+.arm
+ENTRY(omap3_gp_romcode_call)
+	push	{r4-r12, lr}		@ Save all registers from ROM code!
+	mov	r12, r0			@ Copy the Service ID in R12
+	mov	r0, r1			@ Copy parameter to R0
+	mcr     p15, 0, r0, c7, c10, 4	@ DSB
+	mcr     p15, 0, r0, c7, c10, 5	@ DMB
+	.word	0xe1600070		@ SMC #0 to enter monitor - hand assembled
+					@ because we use -march=armv5
+	pop	{r4-r12, pc}
+ENDPROC(omap3_gp_romcode_call)
diff --git a/arch/arm/mach-omap/include/mach/omap3-silicon.h b/arch/arm/mach-omap/include/mach/omap3-silicon.h
index 43b2953..9138057 100644
--- a/arch/arm/mach-omap/include/mach/omap3-silicon.h
+++ b/arch/arm/mach-omap/include/mach/omap3-silicon.h
@@ -130,10 +130,16 @@
 /* PRM */
 #define OMAP3_PRM_RSTCTRL_RESET	0x04
 
+/*
+ * ROM code API related flags
+ */
+#define OMAP3_GP_ROMCODE_API_L2_INVAL		1
+#define OMAP3_GP_ROMCODE_API_WRITE_ACR		3
+
 /* If Architecture specific init functions are present */
 #ifndef __ASSEMBLY__
 void omap3_core_init(void);
-void omap3_invalidate_dcache(void);
+void omap3_gp_romcode_call(u32 service_id, u32 parameter);
 #endif /* __ASSEMBLY__ */
 
 #endif /* __ASM_ARCH_OMAP3_H */
diff --git a/arch/arm/mach-omap/omap3_core.S b/arch/arm/mach-omap/omap3_core.S
deleted file mode 100644
index a47e248..0000000
--- a/arch/arm/mach-omap/omap3_core.S
+++ /dev/null
@@ -1,87 +0,0 @@
-/**
- * @file
- * @brief Provide Architecture level Initialization
- *
- * This provides OMAP3 Architecture initialization. Among these,
- * @li OMAP ROM Code is located in SRAM, we can piggy back on
- * the same addresses
- * @li If clock initialization is required, call the same.
- * @li Setup a temporary SRAM stack which is necessary to call C
- * functions.
- * @li Call architecture initialization function a_init
- *
- * (C) Copyright 2006-2008
- * Texas Instruments, <www.ti.com>
- * Nishanth Menon <x0nishan@ti.com>
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- */
-
-#include <config.h>
-#include <linux/linkage.h>
-#include <asm/assembler.h>
-#include <mach/omap3-silicon.h>
-#include <mach/wdt.h>
-#include <mach/clocks.h>
-#include <asm/barebox-arm-head.h>
-
-.section .text.__omap3_invalidate_dcache
-ENTRY(omap3_invalidate_dcache)
-	/* Invalidate all Dcaches */
-#ifndef CONFIG_CPU_V7_DCACHE_SKIP
-	/* If Arch specific ROM code SMI handling does not exist */
-	mrc	p15, 1, r0, c0, c0, 1	/* read clidr */
-	ands	r3, r0, #0x7000000	/* extract loc from clidr */
-	mov	r3, r3, lsr #23		/* left align loc bit field */
-	beq	finished_inval		/* if loc is 0, then no need to clean */
-	mov	r10, #0			/* start clean at cache level 0 */
-inval_loop1:
-	add	r2, r10, r10, lsr #1	/* work out 3x current cache level */
-	mov	r1, r0, lsr r2		/* extract cache type bits from clidr */
-	and	r1, r1, #	7	/* mask of the bits for current cache only */
-	cmp	r1, #2			/* see what cache we have at this level */
-	blt	skip_inval		/* skip if no cache, or just i-cache */
-	mcr	p15, 2, r10, c0, c0, 0	/* select current cache level in cssr */
-	isb				/* isb to sych the new cssr&csidr */
-	mrc	p15, 1, r1, c0, c0, 0	/* read the new csidr */
-	and	r2, r1, #7		/* extract the length of the cache lines */
-	add	r2, r2, #4		/* add 4 (line length offset) */
-	ldr	r4, =0x3ff
-	ands	r4, r4, r1, lsr #3	/* find maximum number on the way size*/
-	clz	r5, r4			/* find bit position of way size increment */
-	ldr	r7, =0x7fff
-	ands	r7, r7, r1, lsr #13	/* extract max number of the index size */
-inval_loop2:
-	mov	r9, r4			/* create working copy of max way size */
-inval_loop3:
-ARM(	orr	r11, r10, r9, lsl r5	) /* factor way and cache number into r11 */
-ARM(	orr	r11, r11, r7, lsl r2	) /* factor index number into r11 */
-THUMB(	lsl	r6, r9, r5		)
-THUMB(	orr	r11, r10, r6		) /* factor way and cache number into r11 */
-THUMB(	lsl	r6, r7, r2		)
-THUMB(	orr	r11, r11, r6		) /* factor index number into r11 */
-	mcr	p15, 0, r11, c7, c6, 2	/* invalidate by set/way */
-	subs	r9, r9, #1		/* decrement the way */
-	bge	inval_loop3
-	subs	r7, r7, #1		/* decrement the index */
-	bge	inval_loop2
-skip_inval:
-	add	r10, r10, #2		/* increment cache number */
-	cmp	r3, r10
-	bgt	inval_loop1
-finished_inval:
-	mov	r10, #0			/* swith back to cache level 0 */
-	mcr	p15, 2, r10, c0, c0, 0	/* select current cache level in cssr */
-	isb
-#endif /* CONFIG_CPU_V7_DCACHE_SKIP */
-	/* back to arch calling code */
-	bx lr
-ENDPROC(omap3_invalidate_dcache)
diff --git a/arch/arm/mach-omap/omap3_generic.c b/arch/arm/mach-omap/omap3_generic.c
index 8487f07..a21a938 100644
--- a/arch/arm/mach-omap/omap3_generic.c
+++ b/arch/arm/mach-omap/omap3_generic.c
@@ -451,8 +451,10 @@ void omap3_core_init(void)
 	/* Currently SMI in Kernel on ES2 devices seems to have an isse
 	 * Once that is resolved, we can postpone this config to kernel
 	 */
-	if (get_device_type() == GP_DEVICE)
+	if (get_device_type() == GP_DEVICE) {
 		setup_auxcr();
+		omap3_gp_romcode_call(OMAP3_GP_ROMCODE_API_L2_INVAL, 0);
+	}
 
 	sdelay(100);
 
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
