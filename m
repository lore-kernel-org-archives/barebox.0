Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V6hRr-0006N1-IX
 for barebox@lists.infradead.org; Tue, 06 Aug 2013 13:37:18 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  6 Aug 2013 15:36:51 +0200
Message-Id: <1375796211-23721-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: Create an assembly arm_cpu_lowlevel_init function
To: barebox@lists.infradead.org

To avoid the code duplication between the static inline C
function and the assembly macro.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/a9m2410/lowlevel_init.S            |  2 +-
 arch/arm/boards/a9m2440/lowlevel_init.S            |  2 +-
 arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S    |  2 +-
 .../boards/freescale-mx25-3-stack/lowlevel_init.S  |  2 +-
 .../boards/freescale-mx35-3-stack/lowlevel_init.S  |  2 +-
 .../boards/friendlyarm-mini2440/lowlevel_init.S    |  2 +-
 arch/arm/boards/imx21ads/lowlevel_init.S           |  2 +-
 arch/arm/boards/imx27ads/lowlevel_init.S           |  2 +-
 arch/arm/boards/netx/platform.S                    |  2 +-
 arch/arm/boards/pcm027/lowlevel_init.S             |  2 +-
 arch/arm/boards/phycard-i.MX27/lowlevel_init.S     |  2 +-
 arch/arm/boards/scb9328/lowlevel_init.S            |  2 +-
 arch/arm/cpu/Makefile                              |  2 +
 arch/arm/cpu/lowlevel.S                            | 39 +++++++++++++
 arch/arm/include/asm/barebox-arm-head.h            | 64 +---------------------
 arch/arm/mach-ep93xx/lowlevel_init.S               |  2 +-
 16 files changed, 55 insertions(+), 76 deletions(-)
 create mode 100644 arch/arm/cpu/lowlevel.S

diff --git a/arch/arm/boards/a9m2410/lowlevel_init.S b/arch/arm/boards/a9m2410/lowlevel_init.S
index 07167dc..57d63e8 100644
--- a/arch/arm/boards/a9m2410/lowlevel_init.S
+++ b/arch/arm/boards/a9m2410/lowlevel_init.S
@@ -12,7 +12,7 @@
 .globl barebox_arm_reset_vector
 barebox_arm_reset_vector:
 
-	arm_cpu_lowlevel_init r0
+	bl arm_cpu_lowlevel_init
 
 	bl s3c24x0_disable_wd
 
diff --git a/arch/arm/boards/a9m2440/lowlevel_init.S b/arch/arm/boards/a9m2440/lowlevel_init.S
index 50443af..916ab72 100644
--- a/arch/arm/boards/a9m2440/lowlevel_init.S
+++ b/arch/arm/boards/a9m2440/lowlevel_init.S
@@ -216,7 +216,7 @@ SDRAMDATA:
 .globl barebox_arm_reset_vector
 barebox_arm_reset_vector:
 
-	arm_cpu_lowlevel_init r0
+	bl arm_cpu_lowlevel_init
 
 	bl s3c24x0_disable_wd
 
diff --git a/arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S b/arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S
index 2967ae8..a85b00d 100644
--- a/arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S
+++ b/arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S
@@ -74,7 +74,7 @@
 .globl barebox_arm_reset_vector
 barebox_arm_reset_vector:
 
-	arm_cpu_lowlevel_init r0
+	bl		arm_cpu_lowlevel_init
 
 	/* ahb lite ip interface */
 	writel(0x20040304, MX27_AIPI_BASE_ADDR + MX27_AIPI1_PSR0)
diff --git a/arch/arm/boards/freescale-mx25-3-stack/lowlevel_init.S b/arch/arm/boards/freescale-mx25-3-stack/lowlevel_init.S
index c96bc58..174262d 100644
--- a/arch/arm/boards/freescale-mx25-3-stack/lowlevel_init.S
+++ b/arch/arm/boards/freescale-mx25-3-stack/lowlevel_init.S
@@ -51,7 +51,7 @@ CCM_BASE_ADDR_W:        .word   MX25_CCM_BASE_ADDR
 
 .globl barebox_arm_reset_vector
 barebox_arm_reset_vector:
-	arm_cpu_lowlevel_init r0
+	bl arm_cpu_lowlevel_init
 
 #define MX25_CCM_MCR	0x64
 
diff --git a/arch/arm/boards/freescale-mx35-3-stack/lowlevel_init.S b/arch/arm/boards/freescale-mx35-3-stack/lowlevel_init.S
index bd26013..2844465 100644
--- a/arch/arm/boards/freescale-mx35-3-stack/lowlevel_init.S
+++ b/arch/arm/boards/freescale-mx35-3-stack/lowlevel_init.S
@@ -58,7 +58,7 @@ CCM_BASE_ADDR_W:	.word	MX35_CCM_BASE_ADDR
 
 .globl barebox_arm_reset_vector
 barebox_arm_reset_vector:
-	arm_cpu_lowlevel_init r0
+	bl	arm_cpu_lowlevel_init
 
 	mrc	15, 0, r1, c1, c0, 0
 
diff --git a/arch/arm/boards/friendlyarm-mini2440/lowlevel_init.S b/arch/arm/boards/friendlyarm-mini2440/lowlevel_init.S
index 5633ea3..858351b 100644
--- a/arch/arm/boards/friendlyarm-mini2440/lowlevel_init.S
+++ b/arch/arm/boards/friendlyarm-mini2440/lowlevel_init.S
@@ -13,7 +13,7 @@
 
 .globl barebox_arm_reset_vector
 barebox_arm_reset_vector:
-	arm_cpu_lowlevel_init r0
+	bl arm_cpu_lowlevel_init
 
 	bl s3c24x0_disable_wd
 
diff --git a/arch/arm/boards/imx21ads/lowlevel_init.S b/arch/arm/boards/imx21ads/lowlevel_init.S
index 4e8c784..09ca4a4 100644
--- a/arch/arm/boards/imx21ads/lowlevel_init.S
+++ b/arch/arm/boards/imx21ads/lowlevel_init.S
@@ -24,7 +24,7 @@
 .globl barebox_arm_reset_vector
 barebox_arm_reset_vector:
 
-	arm_cpu_lowlevel_init r0
+	bl	arm_cpu_lowlevel_init
 
 /*
  * Initialize the AHB-Lite IP Interface (AIPI) module (to enable access to
diff --git a/arch/arm/boards/imx27ads/lowlevel_init.S b/arch/arm/boards/imx27ads/lowlevel_init.S
index 465f3eb..45f3992 100644
--- a/arch/arm/boards/imx27ads/lowlevel_init.S
+++ b/arch/arm/boards/imx27ads/lowlevel_init.S
@@ -52,7 +52,7 @@
 .globl barebox_arm_reset_vector
 barebox_arm_reset_vector:
 
-	arm_cpu_lowlevel_init r0
+	bl arm_cpu_lowlevel_init
 
 	/* ahb lite ip interface */
 	writel(0x20040304, MX27_AIPI_BASE_ADDR + MX27_AIPI1_PSR0)
diff --git a/arch/arm/boards/netx/platform.S b/arch/arm/boards/netx/platform.S
index 1628d35..6c66228 100644
--- a/arch/arm/boards/netx/platform.S
+++ b/arch/arm/boards/netx/platform.S
@@ -21,7 +21,7 @@
 
 .globl barebox_arm_reset_vector
 barebox_arm_reset_vector:
-	arm_cpu_lowlevel_init r0
+	bl	arm_cpu_lowlevel_init
 	mov	r0, #0x80000000
 	mov	r1, #SZ_64M
 	mov	r2, #0
diff --git a/arch/arm/boards/pcm027/lowlevel_init.S b/arch/arm/boards/pcm027/lowlevel_init.S
index a2d773c..c7dacce 100644
--- a/arch/arm/boards/pcm027/lowlevel_init.S
+++ b/arch/arm/boards/pcm027/lowlevel_init.S
@@ -54,7 +54,7 @@
  */
 .globl barebox_arm_reset_vector
 barebox_arm_reset_vector:
-	arm_cpu_lowlevel_init r0
+		bl	arm_cpu_lowlevel_init
 
 		@ Preserve r8/r7 i.e. kernel entry values
 
diff --git a/arch/arm/boards/phycard-i.MX27/lowlevel_init.S b/arch/arm/boards/phycard-i.MX27/lowlevel_init.S
index 69513aa..992fa82 100644
--- a/arch/arm/boards/phycard-i.MX27/lowlevel_init.S
+++ b/arch/arm/boards/phycard-i.MX27/lowlevel_init.S
@@ -68,7 +68,7 @@
 
 .globl barebox_arm_reset_vector
 barebox_arm_reset_vector:
-	arm_cpu_lowlevel_init r0
+	bl		arm_cpu_lowlevel_init
 
 	/* ahb lite ip interface */
 	writel(0x20040304, MX27_AIPI_BASE_ADDR + MX27_AIPI1_PSR0)
diff --git a/arch/arm/boards/scb9328/lowlevel_init.S b/arch/arm/boards/scb9328/lowlevel_init.S
index 4250c95..717bb90 100644
--- a/arch/arm/boards/scb9328/lowlevel_init.S
+++ b/arch/arm/boards/scb9328/lowlevel_init.S
@@ -28,7 +28,7 @@
 .globl barebox_arm_reset_vector
 barebox_arm_reset_vector:
 
-	arm_cpu_lowlevel_init r0
+	bl arm_cpu_lowlevel_init
 
 	/* Change PERCLK1DIV to 14 ie 14+1 */
 	writel(CFG_PCDR_VAL, MX1_CCM_BASE_ADDR + MX1_PCDR)
diff --git a/arch/arm/cpu/Makefile b/arch/arm/cpu/Makefile
index fba8ff2..c3635a1 100644
--- a/arch/arm/cpu/Makefile
+++ b/arch/arm/cpu/Makefile
@@ -27,3 +27,5 @@ pbl-$(CONFIG_PBL_MULTI_IMAGES) += start-images.o uncompress.o
 
 obj-y += common.o
 pbl-y += common.o
+
+lwl-y += lowlevel.o
diff --git a/arch/arm/cpu/lowlevel.S b/arch/arm/cpu/lowlevel.S
new file mode 100644
index 0000000..307b447
--- /dev/null
+++ b/arch/arm/cpu/lowlevel.S
@@ -0,0 +1,39 @@
+#include <linux/linkage.h>
+#include <init.h>
+#include <asm/system.h>
+
+.section ".text_bare_init_","ax"
+ENTRY(arm_cpu_lowlevel_init)
+	/* set the cpu to SVC32 mode */
+	mrs	r12, cpsr
+	bic	r12, r12, #0x1f
+	orr	r12, r12, #0xd3
+	msr	cpsr, r12
+
+#if __LINUX_ARM_ARCH__ >= 7
+	isb
+#elif __LINUX_ARM_ARCH__ == 6
+	mcr	p15, 0, r12, c7, c5, 4
+#endif
+
+	/* disable MMU stuff and caches */
+	mrc	p15, 0, r12, c1, c0, 0
+	bic	r12, r12 , #(CR_M | CR_C | CR_B)
+	bic	r12, r12, #(CR_S | CR_R | CR_V)
+	orr	r12, r12, #CR_I
+
+#if __LINUX_ARM_ARCH__ >= 6
+	orr	r12, r12, #CR_U
+	bic	r12, r12, #CR_A
+#else
+	orr	r12, r12, #CR_A
+#endif
+
+#ifdef __ARMEB__
+	orr	r12, r12, #CR_B
+#endif
+
+	mcr	p15, 0, r12, c1, c0, 0
+
+	mov	pc, lr
+ENDPROC(arm_cpu_lowlevel_init)
diff --git a/arch/arm/include/asm/barebox-arm-head.h b/arch/arm/include/asm/barebox-arm-head.h
index af7164a..0a2eb6b 100644
--- a/arch/arm/include/asm/barebox-arm-head.h
+++ b/arch/arm/include/asm/barebox-arm-head.h
@@ -5,33 +5,7 @@
 
 #ifndef __ASSEMBLY__
 
-static inline void arm_cpu_lowlevel_init(void)
-{
-	uint32_t r;
-
-	/* set the cpu to SVC32 mode */
-	__asm__ __volatile__("mrs %0, cpsr":"=r"(r));
-	r &= ~0x1f;
-	r |= 0xd3;
-	__asm__ __volatile__("msr cpsr, %0" : : "r"(r));
-
-	/* disable MMU stuff and caches */
-	r = get_cr();
-	r &= ~(CR_M | CR_C | CR_B | CR_S | CR_R | CR_V);
-	r |= CR_I;
-
-#if __LINUX_ARM_ARCH__ >= 6
-	r |= CR_U;
-	r &= ~CR_A;
-#else
-	r |= CR_A;
-#endif
-
-#ifdef __ARMEB__
-	r |= CR_B;
-#endif
-	set_cr(r);
-}
+void arm_cpu_lowlevel_init(void);
 
 /*
  * 32 bytes at this offset is reserved in the barebox head for board/SoC
@@ -86,42 +60,6 @@ static inline void barebox_arm_head(void)
 }
 #endif
 
-#else
-
-.macro  arm_cpu_lowlevel_init, scratch
-
-	/* set the cpu to SVC32 mode */
-	mrs	\scratch, cpsr
-	bic	\scratch, \scratch, #0x1f
-	orr	\scratch, \scratch, #0xd3
-	msr	cpsr, \scratch
-
-#if __LINUX_ARM_ARCH__ >= 7
-	isb
-#elif __LINUX_ARM_ARCH__ == 6
-	mcr	p15, 0, \scratch, c7, c5, 4
-#endif
-
-	/* disable MMU stuff and caches */
-	mrc p15, 0, \scratch, c1, c0, 0
-	bic	\scratch, \scratch , #(CR_M | CR_C | CR_B)
-	bic	\scratch, \scratch,	#(CR_S | CR_R | CR_V)
-	orr	\scratch, \scratch, #CR_I
-
-#if __LINUX_ARM_ARCH__ >= 6
-	orr	\scratch, \scratch, #CR_U
-	bic	\scratch, \scratch, #CR_A
-#else
-	orr	\scratch, \scratch, #CR_A
-#endif
-
-#ifdef __ARMEB__
-	orr	\scratch, \scratch, #CR_B
-#endif
-
-	mcr	p15, 0, \scratch, c1, c0, 0
-.endm
-
 #endif /* __ASSEMBLY__ */
 
 #endif /* __ASM_ARM_HEAD_H */
diff --git a/arch/arm/mach-ep93xx/lowlevel_init.S b/arch/arm/mach-ep93xx/lowlevel_init.S
index 5729eab..56057a8 100644
--- a/arch/arm/mach-ep93xx/lowlevel_init.S
+++ b/arch/arm/mach-ep93xx/lowlevel_init.S
@@ -26,7 +26,7 @@
 
 .globl barebox_arm_reset_vector
 barebox_arm_reset_vector:
-	arm_cpu_lowlevel_init r0
+	bl arm_cpu_lowlevel_init
 
 	/* Turn on both LEDs */
 	bl red_LED_on
-- 
1.8.4.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
