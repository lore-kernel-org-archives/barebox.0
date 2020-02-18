Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j44yA-0005Mb-2z
 for barebox@lists.infradead.org; Tue, 18 Feb 2020 15:39:31 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 18 Feb 2020 16:39:15 +0100
Message-Id: <20200218153917.15937-6-s.hauer@pengutronix.de>
In-Reply-To: <20200218153917.15937-1-s.hauer@pengutronix.de>
References: <20200218153917.15937-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
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
Subject: [PATCH 6/8] ARM: Use function specific sections in assembly functions
To: Barebox List <barebox@lists.infradead.org>

To let the linker remove unused functions we have to make sure all
functions are in separate sections. Fix this for several forgotten
functions.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S    | 2 +-
 arch/arm/boards/freescale-mx21-ads/lowlevel_init.S | 2 +-
 arch/arm/boards/freescale-mx25-3ds/lowlevel_init.S | 2 +-
 arch/arm/boards/freescale-mx35-3ds/lowlevel_init.S | 2 +-
 arch/arm/cpu/lowlevel.S                            | 3 ++-
 arch/arm/lib32/runtime-offset.S                    | 2 +-
 6 files changed, 7 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S b/arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S
index b3504832d7..308d38a3a6 100644
--- a/arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S
+++ b/arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S
@@ -69,7 +69,7 @@
 			MX27_ESDCTL_BASE_ADDR + IMX_ESDCTL0)
 .endm
 
-	.section ".text_bare_init","ax"
+	.section ".text_bare_init.barebox_arm_reset_vector","ax"
 
 .globl barebox_arm_reset_vector
 barebox_arm_reset_vector:
diff --git a/arch/arm/boards/freescale-mx21-ads/lowlevel_init.S b/arch/arm/boards/freescale-mx21-ads/lowlevel_init.S
index 16739b5577..3719f90733 100644
--- a/arch/arm/boards/freescale-mx21-ads/lowlevel_init.S
+++ b/arch/arm/boards/freescale-mx21-ads/lowlevel_init.S
@@ -19,7 +19,7 @@
 #include <mach/imx21-regs.h>
 #include <asm/barebox-arm-head.h>
 
-	.section ".text_bare_init","ax"
+	.section ".text_bare_init.barebox_arm_reset_vector","ax"
 
 .globl barebox_arm_reset_vector
 barebox_arm_reset_vector:
diff --git a/arch/arm/boards/freescale-mx25-3ds/lowlevel_init.S b/arch/arm/boards/freescale-mx25-3ds/lowlevel_init.S
index bf3830d8d6..5dbcfccca5 100644
--- a/arch/arm/boards/freescale-mx25-3ds/lowlevel_init.S
+++ b/arch/arm/boards/freescale-mx25-3ds/lowlevel_init.S
@@ -38,7 +38,7 @@
 #define MPCTL_PARAM_532_MX25 \
 	(IMX_PLL_PD(1) | IMX_PLL_MFD(0) | IMX_PLL_MFI(11) | IMX_PLL_MFN(1))
 
-.section ".text_bare_init","ax"
+.section ".text_bare_init.barebox_arm_reset_vector","ax"
 
 ARM_PPMRR:              .word   0x40000015
 L2CACHE_PARAM:          .word   0x00030024
diff --git a/arch/arm/boards/freescale-mx35-3ds/lowlevel_init.S b/arch/arm/boards/freescale-mx35-3ds/lowlevel_init.S
index 011de6dadf..e39cd8495e 100644
--- a/arch/arm/boards/freescale-mx35-3ds/lowlevel_init.S
+++ b/arch/arm/boards/freescale-mx35-3ds/lowlevel_init.S
@@ -40,7 +40,7 @@
 	ldr		r1,	=val;	\
 	strb		r1,	[r0];
 
-	.section ".text_bare_init","ax"
+	.section ".text_bare_init.barebox_arm_reset_vector","ax"
 
 ARM_PPMRR:		.word	0x40000015
 L2CACHE_PARAM:		.word	0x00030024
diff --git a/arch/arm/cpu/lowlevel.S b/arch/arm/cpu/lowlevel.S
index 203a4afc47..be1938de7f 100644
--- a/arch/arm/cpu/lowlevel.S
+++ b/arch/arm/cpu/lowlevel.S
@@ -3,7 +3,7 @@
 #include <asm/system.h>
 #include <asm/opcodes-virt.h>
 
-.section ".text_bare_init_","ax"
+.section ".text_bare_init.arm_cpu_lowlevel_init","ax"
 ENTRY(arm_cpu_lowlevel_init)
 	/* save lr, since it may be banked away with a processor mode change */
 	mov	r2, lr
@@ -78,6 +78,7 @@ THUMB(	orr	r12, r12, #PSR_T_BIT	)
 	mov	pc, r2
 ENDPROC(arm_cpu_lowlevel_init)
 
+.section ".text_bare_init.cortex_a7_lowlevel_init","ax"
 ENTRY(cortex_a7_lowlevel_init)
 	mrc	p15, 0, r12, c1, c0, 1
 	orr	r12, r12, #(1 << 6)	/* Enable SMP for cortex-a7 to make caches work */
diff --git a/arch/arm/lib32/runtime-offset.S b/arch/arm/lib32/runtime-offset.S
index f86ca7865e..7b1c4fb95c 100644
--- a/arch/arm/lib32/runtime-offset.S
+++ b/arch/arm/lib32/runtime-offset.S
@@ -1,7 +1,7 @@
 #include <linux/linkage.h>
 #include <asm/assembler.h>
 
-.section ".text_bare_init","ax"
+.section ".text_bare_init.get_runtime_offset","ax"
 
 /*
  * Get the offset between the link address and the address
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
