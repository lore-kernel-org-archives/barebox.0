Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TG3sK-0003J3-QO
 for barebox@lists.infradead.org; Mon, 24 Sep 2012 08:18:52 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Mon, 24 Sep 2012 10:18:34 +0200
Message-Id: <1348474714-5807-4-git-send-email-jlu@pengutronix.de>
In-Reply-To: <1348474714-5807-1-git-send-email-jlu@pengutronix.de>
References: <1348474714-5807-1-git-send-email-jlu@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 4/4] ARM: give boards control of the reset entry point
To: barebox@lists.infradead.org

On some SoCs (for example AM35xx), the ROM bootloader passes useful
information in r0 when jumping to barebox.

To avoid overwriting this in the generic reset code, we introduce
common_reset as a C function and as an assembler macro. This is then
called form the reset entry point (either in common or in board code).

This patch is based on code by Sascha Hauer <s.hauer@pengutronix.de>.

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 arch/arm/boards/a9m2410/lowlevel_init.S            |   17 +++--
 arch/arm/boards/a9m2440/lowlevel_init.S            |   15 ++---
 arch/arm/boards/at91sam9260ek/lowlevel_init.S      |    9 ++-
 arch/arm/boards/eukrea_cpuimx25/lowlevel.c         |    5 +-
 arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S    |   11 ++--
 arch/arm/boards/eukrea_cpuimx35/lowlevel.c         |    5 +-
 .../boards/freescale-mx25-3-stack/lowlevel_init.S  |   11 ++--
 .../boards/freescale-mx35-3-stack/lowlevel_init.S  |   12 ++--
 .../boards/friendlyarm-mini2440/lowlevel_init.S    |   18 +++---
 arch/arm/boards/friendlyarm-tiny210/lowlevel.c     |    5 +-
 arch/arm/boards/guf-cupid/lowlevel.c               |    7 +-
 arch/arm/boards/guf-neso/lowlevel.c                |    6 +-
 arch/arm/boards/imx21ads/lowlevel_init.S           |   12 ++--
 arch/arm/boards/imx27ads/lowlevel_init.S           |   11 ++--
 arch/arm/boards/karo-tx25/lowlevel.c               |    5 +-
 arch/arm/boards/netx/platform.S                    |    9 ++-
 arch/arm/boards/panda/lowlevel.c                   |    7 +-
 arch/arm/boards/pcm027/lowlevel_init.S             |   10 ++-
 arch/arm/boards/pcm037/lowlevel_init.S             |   12 ++--
 arch/arm/boards/pcm038/lowlevel.c                  |    5 +-
 arch/arm/boards/pcm043/lowlevel.c                  |    5 +-
 arch/arm/boards/pcm049/lowlevel.c                  |    5 +-
 arch/arm/boards/phycard-a-xl2/lowlevel.c           |    5 +-
 arch/arm/boards/phycard-i.MX27/lowlevel_init.S     |   12 ++--
 arch/arm/boards/scb9328/lowlevel_init.S            |   11 ++--
 arch/arm/cpu/Makefile                              |    4 +-
 arch/arm/cpu/start-pbl.c                           |   12 ++++
 arch/arm/cpu/start-reset.c                         |   63 ------------------
 arch/arm/cpu/start.c                               |   12 ++++
 arch/arm/include/asm/barebox-arm-head.h            |   68 ++++++++++++++++++++
 arch/arm/include/asm/system.h                      |    4 ++
 arch/arm/mach-at91/at91rm9200_lowlevel_init.c      |    5 +-
 arch/arm/mach-at91/at91sam926x_lowlevel_init.c     |    5 +-
 arch/arm/mach-ep93xx/lowlevel_init.S               |   15 ++---
 arch/arm/mach-omap/Kconfig                         |    5 +-
 arch/arm/mach-omap/omap3_core.S                    |    9 ++-
 36 files changed, 257 insertions(+), 175 deletions(-)
 delete mode 100644 arch/arm/cpu/start-reset.c

diff --git a/arch/arm/boards/a9m2410/lowlevel_init.S b/arch/arm/boards/a9m2410/lowlevel_init.S
index 0463b26..502ecdd 100644
--- a/arch/arm/boards/a9m2410/lowlevel_init.S
+++ b/arch/arm/boards/a9m2410/lowlevel_init.S
@@ -4,13 +4,14 @@
 
 #include <config.h>
 #include <mach/s3c-iomap.h>
+#include <asm/barebox-arm-head.h>
 
-	.section ".text_bare_init.board_init_lowlevel","ax"
+	.section ".text_bare_init.reset","ax"
 
-.globl board_init_lowlevel
-board_init_lowlevel:
+.globl reset
+reset:
 
-	mov r10, lr		/* save the link register */
+	common_reset r0
 
 	bl s3c24x0_disable_wd
 
@@ -20,7 +21,7 @@ board_init_lowlevel:
 	cmp pc, #S3C_SDRAM_END
 	bhs 1f
 
-	mov pc, r10
+	b board_init_lowlevel_return
 
 /* we are running from NOR or NAND/SRAM memory. Do further initialisation */
 1:
@@ -29,9 +30,7 @@ board_init_lowlevel:
 	bl s3c24x0_sdram_init
 
 #ifdef CONFIG_S3C_NAND_BOOT
-	mov lr, r10		/* restore the link register */
 /* up to here we are running from the internal SRAM area */
-	b s3c24x0_nand_boot	/* does return directly to our caller into SDRAM */
-#else
-	mov pc, r10
+	bl s3c24x0_nand_boot
 #endif
+	b board_init_lowlevel_return
diff --git a/arch/arm/boards/a9m2440/lowlevel_init.S b/arch/arm/boards/a9m2440/lowlevel_init.S
index 305014c..da29efd 100644
--- a/arch/arm/boards/a9m2440/lowlevel_init.S
+++ b/arch/arm/boards/a9m2440/lowlevel_init.S
@@ -5,8 +5,9 @@
 #include <config.h>
 #include <mach/s3c-iomap.h>
 #include <mach/s3c24xx-gpio.h>
+#include <asm/barebox-arm-head.h>
 
-	.section ".text_bare_init.board_init_lowlevel","ax"
+	.section ".text_bare_init.reset","ax"
 
 /*
  * To be able to setup the SDRAM interface correctly, we need some
@@ -211,10 +212,10 @@ SDRAMDATA:
 
 /* ------------------------------------------------------------------------ */
 
-.globl board_init_lowlevel
-board_init_lowlevel:
+.globl reset
+reset:
 
-	mov r10, lr		/* save the link register */
+	common_reset r0
 
 	bl s3c24x0_disable_wd
 
@@ -233,9 +234,7 @@ board_init_lowlevel:
 	bl sdram_init
 
 #ifdef CONFIG_S3C_NAND_BOOT
-	mov lr, r10		/* restore the link register */
 /* up to here we are running from the internal SRAM area */
-	b s3c24x0_nand_boot	/* does return directly to our caller into SDRAM */
-#else
-	mov pc, r10
+	bl s3c24x0_nand_boot
 #endif
+	b board_init_lowlevel_return
diff --git a/arch/arm/boards/at91sam9260ek/lowlevel_init.S b/arch/arm/boards/at91sam9260ek/lowlevel_init.S
index 4961682..7d51b7b 100644
--- a/arch/arm/boards/at91sam9260ek/lowlevel_init.S
+++ b/arch/arm/boards/at91sam9260ek/lowlevel_init.S
@@ -21,6 +21,9 @@
  * MA 02111-1307 USA
  */
 
-.globl board_init_lowlevel
-board_init_lowlevel:
-	mov	pc, lr
+#include <asm/barebox-arm-head.h>
+
+.globl reset
+reset:
+	common_reset r0
+	b board_init_lowlevel_return
diff --git a/arch/arm/boards/eukrea_cpuimx25/lowlevel.c b/arch/arm/boards/eukrea_cpuimx25/lowlevel.c
index 89066e9..ca94ac5 100644
--- a/arch/arm/boards/eukrea_cpuimx25/lowlevel.c
+++ b/arch/arm/boards/eukrea_cpuimx25/lowlevel.c
@@ -29,6 +29,7 @@
 #include <io.h>
 #include <mach/imx-nand.h>
 #include <asm/barebox-arm.h>
+#include <asm/barebox-arm-head.h>
 #include <asm-generic/sections.h>
 #include <asm-generic/memory_layout.h>
 #include <asm/system.h>
@@ -48,7 +49,7 @@ static void __bare_init __naked insdram(void)
 }
 #endif
 
-void __bare_init __naked board_init_lowlevel(void)
+void __bare_init __naked reset(void)
 {
 	uint32_t r;
 #ifdef CONFIG_NAND_IMX_BOOT
@@ -57,6 +58,8 @@ void __bare_init __naked board_init_lowlevel(void)
 #endif
 	register uint32_t loops = 0x20000;
 
+	common_reset();
+
 	/* restart the MPLL and wait until it's stable */
 	writel(readl(IMX_CCM_BASE + CCM_CCTL) | (1 << 27),
 						IMX_CCM_BASE + CCM_CCTL);
diff --git a/arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S b/arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S
index 0dae3ec..af4deeb 100644
--- a/arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S
+++ b/arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S
@@ -1,6 +1,7 @@
 #include <config.h>
 #include <asm-generic/memory_layout.h>
 #include <mach/imx-regs.h>
+#include <asm/barebox-arm-head.h>
 
 #define writel(val, reg) \
 	ldr		r0,	=reg;	\
@@ -60,10 +61,10 @@
 
 	.section ".text_bare_init","ax"
 
-.globl board_init_lowlevel
-board_init_lowlevel:
+.globl reset
+reset:
 
-	mov	r10, lr
+	common_reset r0
 
 	/* ahb lite ip interface */
 	writel(0x20040304, AIPI1_PSR0)
@@ -103,7 +104,7 @@ board_init_lowlevel:
 	cmp	pc, #0xc0000000
 	bhi	1f
 
-	mov	pc,r10
+	b	board_init_lowlevel_return
 1:
 	sdram_init
 
@@ -135,4 +136,4 @@ copy_loop:
 #endif /* CONFIG_NAND_IMX_BOOT */
 
 ret:
-	mov	pc,r10
+	b	board_init_lowlevel_return
diff --git a/arch/arm/boards/eukrea_cpuimx35/lowlevel.c b/arch/arm/boards/eukrea_cpuimx35/lowlevel.c
index 57867dc..b8dec71 100644
--- a/arch/arm/boards/eukrea_cpuimx35/lowlevel.c
+++ b/arch/arm/boards/eukrea_cpuimx35/lowlevel.c
@@ -29,6 +29,7 @@
 #include <io.h>
 #include <mach/imx-nand.h>
 #include <asm/barebox-arm.h>
+#include <asm/barebox-arm-head.h>
 #include <asm-generic/sections.h>
 #include <asm-generic/memory_layout.h>
 #include <asm/system.h>
@@ -59,7 +60,7 @@ static void __bare_init __naked insdram(void)
 }
 #endif
 
-void __bare_init __naked board_init_lowlevel(void)
+void __bare_init __naked reset(void)
 {
 	uint32_t r, s;
 	unsigned long ccm_base = IMX_CCM_BASE;
@@ -69,6 +70,8 @@ void __bare_init __naked board_init_lowlevel(void)
 #endif
 	register uint32_t loops = 0x20000;
 
+	common_reset();
+
 	r = get_cr();
 	r |= CR_Z; /* Flow prediction (Z) */
 	r |= CR_U; /* unaligned accesses  */
diff --git a/arch/arm/boards/freescale-mx25-3-stack/lowlevel_init.S b/arch/arm/boards/freescale-mx25-3-stack/lowlevel_init.S
index fa0f957..6157949 100644
--- a/arch/arm/boards/freescale-mx25-3-stack/lowlevel_init.S
+++ b/arch/arm/boards/freescale-mx25-3-stack/lowlevel_init.S
@@ -25,6 +25,7 @@
 #include <mach/imx-regs.h>
 #include <mach/imx-pll.h>
 #include <mach/esdctl.h>
+#include <asm/barebox-arm-head.h>
 
 #define writel(val, reg) \
 	ldr		r0,	=reg;	\
@@ -52,9 +53,9 @@ MPCTL_PARAM_532_W:      .word   MPCTL_PARAM_532
 PPCTL_PARAM_W:    	.word   PPCTL_PARAM_300
 CCM_BASE_ADDR_W:        .word   IMX_CCM_BASE
 
-.globl board_init_lowlevel
-board_init_lowlevel:
-	mov     r10, lr
+.globl reset
+reset:
+	common_reset r0
 
 #define MX25_CCM_MCR	0x64
 
@@ -80,7 +81,7 @@ board_init_lowlevel:
 	cmp	pc, #0x90000000
 	bhi	1f
 
-	mov	pc, lr
+	b	board_init_lowlevel_return
 
 1:
 	ldr r0, ESDCTL_BASE_W
@@ -128,7 +129,7 @@ copy_loop:
 #endif /* CONFIG_NAND_IMX_BOOT */
 
 ret:
-	mov pc, r10
+	b	board_init_lowlevel_return
 
 /*
  * r0: control base, r1: ram bank base
diff --git a/arch/arm/boards/freescale-mx35-3-stack/lowlevel_init.S b/arch/arm/boards/freescale-mx35-3-stack/lowlevel_init.S
index 837d2ff..a5e8c19 100644
--- a/arch/arm/boards/freescale-mx35-3-stack/lowlevel_init.S
+++ b/arch/arm/boards/freescale-mx35-3-stack/lowlevel_init.S
@@ -26,6 +26,8 @@
 #include <mach/esdctl.h>
 #include <asm/cache-l2x0.h>
 #include <asm-generic/memory_layout.h>
+#include <asm/barebox-arm-head.h>
+
 #include "board-mx35_3stack.h"
 
 #define CSD0_BASE_ADDR		0x80000000
@@ -58,9 +60,9 @@ MPCTL_PARAM_532_W:	.word	MPCTL_PARAM_532
 PPCTL_PARAM_W:		.word	PPCTL_PARAM_300
 CCM_BASE_ADDR_W:	.word	IMX_CCM_BASE
 
-.globl board_init_lowlevel
-board_init_lowlevel:
-	mov	r10, lr
+.globl reset
+reset:
+	common_reset r0
 
 	mrc	15, 0, r1, c1, c0, 0
 
@@ -128,7 +130,7 @@ board_init_lowlevel:
 	cmp	pc, #CSD1_BASE_ADDR
 	bhi	1f
 
-	mov	pc, r10
+	b	board_init_lowlevel_return
 
 1:
 	ldr	r0, =ESDCTL_BASE_ADDR
@@ -183,7 +185,7 @@ copy_loop:
 ret:
 #endif /* CONFIG_NAND_IMX_BOOT */
 
-	mov	pc, r10
+	b	board_init_lowlevel_return
 
 /*
  * r0: ESDCTL control base, r1: sdram slot base
diff --git a/arch/arm/boards/friendlyarm-mini2440/lowlevel_init.S b/arch/arm/boards/friendlyarm-mini2440/lowlevel_init.S
index 827cf00..5c06b1c 100644
--- a/arch/arm/boards/friendlyarm-mini2440/lowlevel_init.S
+++ b/arch/arm/boards/friendlyarm-mini2440/lowlevel_init.S
@@ -4,15 +4,15 @@
 
 #include <config.h>
 #include <mach/s3c-iomap.h>
+#include <asm/barebox-arm-head.h>
 
-	.section ".text_bare_init.board_init_lowlevel","ax"
+	.section ".text_bare_init.reset","ax"
 
 /* ------------------------------------------------------------------------ */
 
-.globl board_init_lowlevel
-board_init_lowlevel:
-
-	mov r10, lr		/* save the link register */
+.globl reset
+reset:
+	common_reset r0
 
 	bl s3c24x0_disable_wd
 
@@ -22,7 +22,7 @@ board_init_lowlevel:
 	cmp pc, #S3C_SDRAM_END
 	bhs 1f
 
-	mov pc, r10
+	b board_init_lowlevel_return
 
 /* we are running from NOR or NAND/SRAM memory. Do further initialisation */
 1:
@@ -31,9 +31,7 @@ board_init_lowlevel:
 	bl s3c24x0_sdram_init
 
 #ifdef CONFIG_S3C_NAND_BOOT
-	mov lr, r10		/* restore the link register */
 /* up to here we are running from the internal SRAM area */
-	b s3c24x0_nand_boot	/* does return directly to our caller into SDRAM */
-#else
-	mov pc, r10
+	bl s3c24x0_nand_boot
 #endif
+	b board_init_lowlevel_return
diff --git a/arch/arm/boards/friendlyarm-tiny210/lowlevel.c b/arch/arm/boards/friendlyarm-tiny210/lowlevel.c
index 19739d8..791918a 100644
--- a/arch/arm/boards/friendlyarm-tiny210/lowlevel.c
+++ b/arch/arm/boards/friendlyarm-tiny210/lowlevel.c
@@ -24,6 +24,7 @@
 #include <init.h>
 #include <io.h>
 #include <asm/barebox-arm.h>
+#include <asm/barebox-arm-head.h>
 #include <asm/sections.h>
 #include <mach/s3c-iomap.h>
 #include <mach/s3c-clocks.h>
@@ -49,10 +50,12 @@ int __bare_init s5p_irom_load_mmc(void *dest, uint32_t start_block, uint16_t blo
 }
 
 
-void __bare_init board_init_lowlevel(void)
+void __bare_init reset(void)
 {
 	uint32_t r;
 
+	common_reset();
+
 #ifdef CONFIG_S3C_PLL_INIT
 	s5p_init_pll();
 #endif
diff --git a/arch/arm/boards/guf-cupid/lowlevel.c b/arch/arm/boards/guf-cupid/lowlevel.c
index 8fa9152..d50090b 100644
--- a/arch/arm/boards/guf-cupid/lowlevel.c
+++ b/arch/arm/boards/guf-cupid/lowlevel.c
@@ -29,6 +29,7 @@
 #include <io.h>
 #include <mach/imx-nand.h>
 #include <asm/barebox-arm.h>
+#include <asm/barebox-arm-head.h>
 #include <asm-generic/sections.h>
 #include <asm-generic/memory_layout.h>
 #include <asm/system.h>
@@ -182,7 +183,7 @@ static void __bare_init noinline setup_sdram(u32 memsize, u32 mode, u32 sdram_ad
 #define UNALIGNED_ACCESS_ENABLE
 #define LOW_INT_LATENCY_ENABLE
 
-void __bare_init __naked board_init_lowlevel(void)
+void __bare_init __naked reset(void)
 {
 	u32 r0, r1;
 	void *iomuxc_base = (void *)IMX_IOMUXC_BASE;
@@ -191,8 +192,10 @@ void __bare_init __naked board_init_lowlevel(void)
 	unsigned int *trg, *src;
 #endif
 
+	common_reset();
+
 	r0 = 0x10000000 + 128 * 1024 - 16;
-        __asm__ __volatile__("mov sp, %0" : : "r"(r0));
+	__asm__ __volatile__("mov sp, %0" : : "r"(r0));
 
 	/*
 	 *       ARM1136 init
diff --git a/arch/arm/boards/guf-neso/lowlevel.c b/arch/arm/boards/guf-neso/lowlevel.c
index 9b206be..5bb2d21 100644
--- a/arch/arm/boards/guf-neso/lowlevel.c
+++ b/arch/arm/boards/guf-neso/lowlevel.c
@@ -29,6 +29,7 @@
 #include <io.h>
 #include <mach/imx-nand.h>
 #include <asm/barebox-arm.h>
+#include <asm/barebox-arm-head.h>
 #include <asm/system.h>
 #include <asm-generic/sections.h>
 #include <asm-generic/memory_layout.h>
@@ -52,13 +53,16 @@ static void __bare_init __naked insdram(void)
 
 #define ESDCTL0_VAL (ESDCTL0_SDE | ESDCTL0_ROW13 | ESDCTL0_COL10)
 
-void __bare_init __naked board_init_lowlevel(void)
+void __bare_init __naked reset(void)
 {
 	uint32_t r;
 	int i;
 #ifdef CONFIG_NAND_IMX_BOOT
 	unsigned int *trg, *src;
 #endif
+
+	common_reset();
+
 	/* ahb lite ip interface */
 	AIPI1_PSR0 = 0x20040304;
 	AIPI1_PSR1 = 0xDFFBFCFB;
diff --git a/arch/arm/boards/imx21ads/lowlevel_init.S b/arch/arm/boards/imx21ads/lowlevel_init.S
index 1aeea57..1568f3c 100644
--- a/arch/arm/boards/imx21ads/lowlevel_init.S
+++ b/arch/arm/boards/imx21ads/lowlevel_init.S
@@ -20,14 +20,14 @@
 #include <config.h>
 #include <asm-generic/memory_layout.h>
 #include <mach/imx-regs.h>
+#include <asm/barebox-arm-head.h>
 
 	.section ".text_bare_init","ax"
 
-.globl board_init_lowlevel
-board_init_lowlevel:
+.globl reset
+reset:
 
-/* Save lr, because it is overwritten by the calls to mem_delay. */
-	mov	r10, lr
+	common_reset r0
 
 /*
  * Initialize the AHB-Lite IP Interface (AIPI) module (to enable access to
@@ -79,7 +79,7 @@ board_init_lowlevel:
 	cmp	pc, #0xc8000000
 	bhi	1f
 
-	mov	pc, r10
+	b	board_init_lowlevel_return
 1:
 
 	/* Precharge */
@@ -149,7 +149,7 @@ copy_loop:
 #endif /* CONFIG_NAND_IMX_BOOT */
 
 ret:
-	mov	pc, r10
+	b	board_init_lowlevel_return
 
 /*
  *  spin for a while.  we need to wait at least 200 usecs.
diff --git a/arch/arm/boards/imx27ads/lowlevel_init.S b/arch/arm/boards/imx27ads/lowlevel_init.S
index df12aea..1bebb1d 100644
--- a/arch/arm/boards/imx27ads/lowlevel_init.S
+++ b/arch/arm/boards/imx27ads/lowlevel_init.S
@@ -6,6 +6,7 @@
 
 #include <config.h>
 #include <mach/imx-regs.h>
+#include <asm/barebox-arm-head.h>
 
 #define writel(val, reg) \
 	ldr		r0,	=reg;	\
@@ -111,10 +112,10 @@ NORMAL_MODE		.long 0x00000000 // system/external device dependent data (SMODE=00
 	writel(0x0000000c, 0xD8001010)
 .endm
 
-.globl board_init_lowlevel
-board_init_lowlevel:
+.globl reset
+reset:
 
-	mov	r10, lr
+	common_reset r0
 
 	/* ahb lite ip interface */
 	writel(0x20040304, AIPI1_PSR0)
@@ -164,9 +165,9 @@ board_init_lowlevel:
 	cmp	pc, #0xc0000000
 	bhi	1f
 
-	mov	pc,r10
+	b board_init_lowlevel_return
 1:
 	sdram_init_sha
 
-	mov	pc,r10
+	b board_init_lowlevel_return
 
diff --git a/arch/arm/boards/karo-tx25/lowlevel.c b/arch/arm/boards/karo-tx25/lowlevel.c
index 9f1c5d6..f06cc7c 100644
--- a/arch/arm/boards/karo-tx25/lowlevel.c
+++ b/arch/arm/boards/karo-tx25/lowlevel.c
@@ -27,6 +27,7 @@
 #include <io.h>
 #include <mach/imx-nand.h>
 #include <asm/barebox-arm.h>
+#include <asm/barebox-arm-head.h>
 #include <asm/system.h>
 #include <asm-generic/sections.h>
 #include <asm-generic/memory_layout.h>
@@ -70,13 +71,15 @@ static inline void __bare_init  setup_sdram(uint32_t base, uint32_t esdctl,
 	writel(esdctl, esdctlreg);
 }
 
-void __bare_init __naked board_init_lowlevel(void)
+void __bare_init __naked reset(void)
 {
 	uint32_t r;
 #ifdef CONFIG_NAND_IMX_BOOT
 	unsigned int *trg, *src;
 #endif
 
+	common_reset();
+
 	/* AIPS setup - Only setup MPROTx registers. The PACR default values are good.
 	 * Set all MPROTx to be non-bufferable, trusted for R/W,
 	 * not forced to user-mode.
diff --git a/arch/arm/boards/netx/platform.S b/arch/arm/boards/netx/platform.S
index 4961682..7d51b7b 100644
--- a/arch/arm/boards/netx/platform.S
+++ b/arch/arm/boards/netx/platform.S
@@ -21,6 +21,9 @@
  * MA 02111-1307 USA
  */
 
-.globl board_init_lowlevel
-board_init_lowlevel:
-	mov	pc, lr
+#include <asm/barebox-arm-head.h>
+
+.globl reset
+reset:
+	common_reset r0
+	b board_init_lowlevel_return
diff --git a/arch/arm/boards/panda/lowlevel.c b/arch/arm/boards/panda/lowlevel.c
index 0b4b199..70a96d0 100644
--- a/arch/arm/boards/panda/lowlevel.c
+++ b/arch/arm/boards/panda/lowlevel.c
@@ -27,6 +27,7 @@
 #include <mach/omap4-clock.h>
 #include <mach/syslib.h>
 #include <asm/barebox-arm.h>
+#include <asm/barebox-arm-head.h>
 
 #define TPS62361_VSEL0_GPIO    7
 
@@ -77,15 +78,17 @@ static void noinline panda_init_lowlevel(void)
 	board_init_lowlevel_return();
 }
 
-void board_init_lowlevel(void)
+void reset(void)
 {
 	u32 r;
 
+	common_reset();
+
 	if (get_pc() > 0x80000000)
 		return;
 
 	r = 0x4030d000;
-        __asm__ __volatile__("mov sp, %0" : : "r"(r));
+	__asm__ __volatile__("mov sp, %0" : : "r"(r));
 
 	panda_init_lowlevel();
 }
diff --git a/arch/arm/boards/pcm027/lowlevel_init.S b/arch/arm/boards/pcm027/lowlevel_init.S
index a436a33..f69899e 100644
--- a/arch/arm/boards/pcm027/lowlevel_init.S
+++ b/arch/arm/boards/pcm027/lowlevel_init.S
@@ -31,6 +31,7 @@
 #include <mach/pxa-regs.h>
 #include <mach/regs-ost.h>
 #include <mach/regs-intc.h>
+#include <asm/barebox-arm-head.h>
 
 #define GPSR0		0x40E00018	/* GPIO Pin Output Set Register GPIO <31:00> */
 #define GPSR1		0x40E0001C	/* GPIO Pin Output Set Register GPIO <63:32> */
@@ -54,8 +55,10 @@
 /*
  *	Memory setup
  */
-.globl board_init_lowlevel
-board_init_lowlevel:
+.globl reset
+reset:
+	common_reset r0
+
 		@ Preserve r8/r7 i.e. kernel entry values
 
 		@ Data cache might be active.
@@ -453,4 +456,5 @@ initclks:
 	/* -------------------------------------------------------------------- */
 
 endlowlevel_init:
-	mov	pc, lr
+	b board_init_lowlevel_return
+
diff --git a/arch/arm/boards/pcm037/lowlevel_init.S b/arch/arm/boards/pcm037/lowlevel_init.S
index 1f8d38f..53b5811 100644
--- a/arch/arm/boards/pcm037/lowlevel_init.S
+++ b/arch/arm/boards/pcm037/lowlevel_init.S
@@ -23,6 +23,7 @@
 
 #include <mach/imx-regs.h>
 #include <mach/imx-pll.h>
+#include <asm/barebox-arm-head.h>
 
 #define writel(val, reg) \
 	ldr		r0,	=reg;	\
@@ -44,10 +45,11 @@
 
 	.section ".text_bare_init","ax"
 
-.globl board_init_lowlevel
-board_init_lowlevel:
+.globl reset
+reset:
+
+	common_reset r0
 
-	mov r10, lr
 	writel(IPU_CONF_DI_EN, IPU_CONF)
 	writel(0x074B0BF5, IMX_CCM_BASE + CCM_CCMR)
 
@@ -91,7 +93,7 @@ clear_iomux:
 	cmp	pc, #0x90000000
 	bhs	1f
 
-	mov	pc, r10
+	b	board_init_lowlevel_return
 1:
 
 #if defined CONFIG_PCM037_SDRAM_BANK0_128MB
@@ -160,5 +162,5 @@ copy_loop:
 ret:
 #endif /* CONFIG_NAND_IMX_BOOT */
 
-	mov	pc, r10
+	b	board_init_lowlevel_return
 
diff --git a/arch/arm/boards/pcm038/lowlevel.c b/arch/arm/boards/pcm038/lowlevel.c
index 3f29a83..d3ce528 100644
--- a/arch/arm/boards/pcm038/lowlevel.c
+++ b/arch/arm/boards/pcm038/lowlevel.c
@@ -31,6 +31,7 @@
 #include <asm/system.h>
 #include <asm-generic/memory_layout.h>
 #include <asm-generic/sections.h>
+#include <asm/barebox-arm-head.h>
 
 #include "pll.h"
 
@@ -53,13 +54,15 @@ static void __bare_init __naked insdram(void)
 
 #define ESDCTL0_VAL (ESDCTL0_SDE | ESDCTL0_ROW13 | ESDCTL0_COL10)
 
-void __bare_init __naked board_init_lowlevel(void)
+void __bare_init __naked reset(void)
 {
 	uint32_t r;
 	int i;
 #ifdef CONFIG_NAND_IMX_BOOT
 	unsigned int *trg, *src;
 #endif
+	common_reset();
+
 	/* ahb lite ip interface */
 	AIPI1_PSR0 = 0x20040304;
 	AIPI1_PSR1 = 0xDFFBFCFB;
diff --git a/arch/arm/boards/pcm043/lowlevel.c b/arch/arm/boards/pcm043/lowlevel.c
index fd6787f..dc51e05 100644
--- a/arch/arm/boards/pcm043/lowlevel.c
+++ b/arch/arm/boards/pcm043/lowlevel.c
@@ -29,6 +29,7 @@
 #include <io.h>
 #include <mach/imx-nand.h>
 #include <asm/barebox-arm.h>
+#include <asm/barebox-arm-head.h>
 #include <asm-generic/sections.h>
 #include <asm-generic/memory_layout.h>
 #include <asm/system.h>
@@ -64,7 +65,7 @@ static void __bare_init __naked insdram(void)
 }
 #endif
 
-void __bare_init __naked board_init_lowlevel(void)
+void __bare_init __naked reset(void)
 {
 	uint32_t r, s;
 	unsigned long ccm_base = IMX_CCM_BASE;
@@ -73,6 +74,8 @@ void __bare_init __naked board_init_lowlevel(void)
 	unsigned int *trg, *src;
 	int i;
 #endif
+	common_reset();
+
 	r = get_cr();
 	r |= CR_Z; /* Flow prediction (Z) */
 	r |= CR_U; /* unaligned accesses  */
diff --git a/arch/arm/boards/pcm049/lowlevel.c b/arch/arm/boards/pcm049/lowlevel.c
index 65a29ec..0df8eb5 100644
--- a/arch/arm/boards/pcm049/lowlevel.c
+++ b/arch/arm/boards/pcm049/lowlevel.c
@@ -27,6 +27,7 @@
 #include <mach/omap4-clock.h>
 #include <mach/syslib.h>
 #include <asm/barebox-arm.h>
+#include <asm/barebox-arm-head.h>
 
 #define TPS62361_VSEL0_GPIO    182
 
@@ -87,10 +88,12 @@ static void noinline pcm049_init_lowlevel(void)
 	board_init_lowlevel_return();
 }
 
-void board_init_lowlevel(void)
+void reset(void)
 {
 	u32 r;
 
+	common_reset();
+
 	if (get_pc() > 0x80000000)
 		return;
 
diff --git a/arch/arm/boards/phycard-a-xl2/lowlevel.c b/arch/arm/boards/phycard-a-xl2/lowlevel.c
index 38f80c9..33277f3 100644
--- a/arch/arm/boards/phycard-a-xl2/lowlevel.c
+++ b/arch/arm/boards/phycard-a-xl2/lowlevel.c
@@ -27,6 +27,7 @@
 #include <mach/omap4-clock.h>
 #include <mach/syslib.h>
 #include <asm/barebox-arm.h>
+#include <asm/barebox-arm-head.h>
 
 #define TPS62361_VSEL0_GPIO    7
 
@@ -87,10 +88,12 @@ static noinline void pcaaxl2_init_lowlevel(void)
 	board_init_lowlevel_return();
 }
 
-void board_init_lowlevel(void)
+void reset(void)
 {
 	u32 r;
 
+	common_reset();
+
 	if (get_pc() > 0x80000000)
 		return;
 
diff --git a/arch/arm/boards/phycard-i.MX27/lowlevel_init.S b/arch/arm/boards/phycard-i.MX27/lowlevel_init.S
index c24edd4..b16afb5 100644
--- a/arch/arm/boards/phycard-i.MX27/lowlevel_init.S
+++ b/arch/arm/boards/phycard-i.MX27/lowlevel_init.S
@@ -7,6 +7,7 @@
 #include <config.h>
 #include <mach/imx-regs.h>
 #include <mach/imx-pll.h>
+#include <asm/barebox-arm-head.h>
 
 #define writel(val, reg) \
 	ldr		r0,	=reg;	\
@@ -55,10 +56,9 @@
 
 	.section ".text_bare_init","ax"
 
-.globl board_init_lowlevel
-board_init_lowlevel:
-
-	mov	r10, lr
+.globl reset
+reset:
+	common_reset r0
 
 	/* ahb lite ip interface */
 	writel(0x20040304, AIPI1_PSR0)
@@ -72,7 +72,7 @@ board_init_lowlevel:
 	cmp	pc, #0xc0000000
 	bhi	1f
 
-	mov	pc,r10
+	b	board_init_lowlevel_return
 
 1:
 	writel(IMX_PLL_PD(0) |
@@ -121,5 +121,5 @@ copy_loop:
 #endif /* CONFIG_NAND_IMX_BOOT */
 
 ret:
-	mov	pc,r10
+	b	board_init_lowlevel_return
 
diff --git a/arch/arm/boards/scb9328/lowlevel_init.S b/arch/arm/boards/scb9328/lowlevel_init.S
index 5b02428..087e8e6 100644
--- a/arch/arm/boards/scb9328/lowlevel_init.S
+++ b/arch/arm/boards/scb9328/lowlevel_init.S
@@ -19,6 +19,7 @@
  */
 
 #include <mach/imx-regs.h>
+#include <asm/barebox-arm-head.h>
 
 #define CPU200
 
@@ -81,10 +82,10 @@
 	ldr		r1,	=val;	\
 	str		r1,   [r0];
 
-.globl board_init_lowlevel
-board_init_lowlevel:
+.globl reset
+reset:
 
-	mov	r10, lr
+	common_reset r0
 
 	/* Change PERCLK1DIV to 14 ie 14+1 */
 	writel(CFG_PCDR_VAL, PCDR)
@@ -156,7 +157,7 @@ board_init_lowlevel:
 	cmp	pc, #0x09000000
 	bhi	1f
 
-	mov	pc,r10
+	b board_init_lowlevel_return
 
 1:
 
@@ -181,4 +182,4 @@ board_init_lowlevel:
 	writel(0x0, 0x08223000) /* CAS Latency 2, issue Mode Register Command, Burst Length = 8 */
 	writel(0x810a8200, SDCTL0) /* Set to Normal Mode CAS 2 */
 
-	mov	pc,r10
+	b board_init_lowlevel_return
diff --git a/arch/arm/cpu/Makefile b/arch/arm/cpu/Makefile
index 0ecc72e..f7ab276 100644
--- a/arch/arm/cpu/Makefile
+++ b/arch/arm/cpu/Makefile
@@ -1,7 +1,7 @@
 obj-y += cpu.o
 obj-$(CONFIG_ARM_EXCEPTIONS) += exceptions.o
 obj-$(CONFIG_ARM_EXCEPTIONS) += interrupts.o
-obj-y += start.o start-reset.o
+obj-y += start.o
 
 #
 # Any variants can be called as start-armxyz.S
@@ -19,4 +19,4 @@ obj-$(CONFIG_CPU_32v7) += cache-armv7.o
 pbl-$(CONFIG_CPU_32v7) += cache-armv7.o
 obj-$(CONFIG_CACHE_L2X0) += cache-l2x0.o
 
-pbl-y += start-pbl.o start-reset.o
+pbl-y += start-pbl.o
diff --git a/arch/arm/cpu/start-pbl.c b/arch/arm/cpu/start-pbl.c
index 932a3da..823b9cc 100644
--- a/arch/arm/cpu/start-pbl.c
+++ b/arch/arm/cpu/start-pbl.c
@@ -41,6 +41,18 @@ void __naked __section(.text_head_entry) pbl_start(void)
 	barebox_arm_head();
 }
 
+/*
+ * The actual reset vector. This code is position independent and usually
+ * does not run at the address it's linked at.
+ */
+#ifndef CONFIG_MACH_DO_LOWLEVEL_INIT
+void __naked __bare_init reset(void)
+{
+	common_reset();
+	board_init_lowlevel_return();
+}
+#endif
+
 extern void *input_data;
 extern void *input_data_end;
 
diff --git a/arch/arm/cpu/start-reset.c b/arch/arm/cpu/start-reset.c
deleted file mode 100644
index 46193ef..0000000
--- a/arch/arm/cpu/start-reset.c
+++ /dev/null
@@ -1,63 +0,0 @@
-/*
- * start-reset.c
- *
- * Copyright (c) 2010 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
- *
- * See file CREDITS for list of people who contributed to this
- * project.
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2
- * as published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
- */
-
-#include <common.h>
-#include <init.h>
-#include <asm/system.h>
-#include <asm/barebox-arm.h>
-#include <asm/sections.h>
-
-/*
- * The actual reset vector. This code is position independent and usually
- * does not run at the address it's linked at.
- */
-void __naked __bare_init reset(void)
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
-#else
-	r |= CR_A;
-#endif
-
-#ifdef __ARMEB__
-	r |= CR_B;
-#endif
-	set_cr(r);
-
-#ifdef CONFIG_MACH_DO_LOWLEVEL_INIT
-	board_init_lowlevel();
-#endif
-	board_init_lowlevel_return();
-}
diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index 07e7dfe..e9a4620 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -53,6 +53,18 @@ void __naked __section(.text_entry) start(void)
 }
 
 /*
+ * The actual reset vector. This code is position independent and usually
+ * does not run at the address it's linked at.
+ */
+#ifndef CONFIG_MACH_DO_LOWLEVEL_INIT
+void __naked __bare_init reset(void)
+{
+	common_reset();
+	board_init_lowlevel_return();
+}
+#endif
+
+/*
  * Board code can jump here by either returning from board_init_lowlevel
  * or by calling this function directly.
  */
diff --git a/arch/arm/include/asm/barebox-arm-head.h b/arch/arm/include/asm/barebox-arm-head.h
index 0b1d786..eafad4e 100644
--- a/arch/arm/include/asm/barebox-arm-head.h
+++ b/arch/arm/include/asm/barebox-arm-head.h
@@ -1,6 +1,37 @@
 #ifndef __ASM_ARM_HEAD_H
 #define __ASM_ARM_HEAD_H
 
+#include <asm/system.h>
+
+#ifndef __ASSEMBLY__
+
+static inline void common_reset(void)
+{
+	uint32_t r;
+
+	/* set the cpu to SVC32 mode */
+	__asm__ __volatile__("mrs %0, cpsr":"=r"(r));
+	r &= ~0x1f;
+	r |= 0xd3;
+	__asm__ __volatile__("msr cpsr, %0" : : "r"(r));
+
+	/* disable MMU stuff and caches */
+	r = get_cr();
+	r &= ~(CR_M | CR_C | CR_B | CR_S | CR_R | CR_V);
+	r |= CR_I;
+
+#if __LINUX_ARM_ARCH__ >= 6
+	r |= CR_U;
+#else
+	r |= CR_A;
+#endif
+
+#ifdef __ARMEB__
+	r |= CR_B;
+#endif
+	set_cr(r);
+}
+
 #ifdef CONFIG_HAVE_MACH_ARM_HEAD
 #include <mach/barebox-arm-head.h>
 #else
@@ -36,4 +67,41 @@ static inline void barebox_arm_head(void)
 }
 #endif
 
+#else
+
+.macro  common_reset, scratch
+
+	/* set the cpu to SVC32 mode */
+	mrs	\scratch, cpsr
+	bic	\scratch, \scratch, #0x1f
+	orr	\scratch, \scratch, #0xd3
+	msr	cpsr, \scratch
+
+#if __LINUX_ARM_ARCH__ >= 7
+	isb
+#elif __LINUX_ARM_ARCH__ == 6
+	mcr	p15, 0, \scratch, c7, c5, 4
+#endif
+
+	/* disable MMU stuff and caches */
+	mrc p15, 0, \scratch, c1, c0, 0
+	bic	\scratch, \scratch , #(CR_M | CR_C | CR_B)
+	bic	\scratch, \scratch,	#(CR_S | CR_R | CR_V)
+	orr	\scratch, \scratch, #CR_I
+
+#if __LINUX_ARM_ARCH__ >= 6
+	orr	\scratch, \scratch, #CR_U
+#else
+	orr	\scratch, \scratch, #CR_A
+#endif
+
+#ifdef __ARMEB__
+	orr	\scratch, \scratch, #CR_B
+#endif
+
+	mcr	p15, 0, \scratch, c1, c0, 0
+.endm
+
+#endif /* __ASSEMBLY__ */
+
 #endif /* __ASM_ARM_HEAD_H */
diff --git a/arch/arm/include/asm/system.h b/arch/arm/include/asm/system.h
index 1d67492..26fb18c 100644
--- a/arch/arm/include/asm/system.h
+++ b/arch/arm/include/asm/system.h
@@ -56,6 +56,7 @@
 #define CR_AFE  (1 << 29)	/* Access flag enable			*/
 #define CR_TE   (1 << 30)	/* Thumb exception enable		*/
 
+#ifndef __ASSEMBLY__
 static inline unsigned int get_cr(void)
 {
 	unsigned int val;
@@ -69,4 +70,7 @@ static inline void set_cr(unsigned int val)
 	  : : "r" (val) : "cc");
 	isb();
 }
+
+#endif
+
 #endif /* __ASM_ARM_SYSTEM_H */
diff --git a/arch/arm/mach-at91/at91rm9200_lowlevel_init.c b/arch/arm/mach-at91/at91rm9200_lowlevel_init.c
index 5340bba..3ce3e67 100644
--- a/arch/arm/mach-at91/at91rm9200_lowlevel_init.c
+++ b/arch/arm/mach-at91/at91rm9200_lowlevel_init.c
@@ -7,6 +7,7 @@
 #include <common.h>
 #include <asm/system.h>
 #include <asm/barebox-arm.h>
+#include <asm/barebox-arm-head.h>
 #include <mach/hardware.h>
 #include <mach/at91rm9200.h>
 #include <mach/at91rm9200_mc.h>
@@ -20,11 +21,13 @@ void static inline access_sdram(void)
 	writel(0x00000000, AT91_SDRAM_BASE);
 }
 
-void __naked __bare_init board_init_lowlevel(void)
+void __naked __bare_init reset(void)
 {
 	u32 r;
 	int i;
 
+	common_reset();
+
 	/*
 	 * PMC Check if the PLL is already initialized
 	 */
diff --git a/arch/arm/mach-at91/at91sam926x_lowlevel_init.c b/arch/arm/mach-at91/at91sam926x_lowlevel_init.c
index 669f377..0ee0345 100644
--- a/arch/arm/mach-at91/at91sam926x_lowlevel_init.c
+++ b/arch/arm/mach-at91/at91sam926x_lowlevel_init.c
@@ -8,6 +8,7 @@
 #include <common.h>
 #include <asm/system.h>
 #include <asm/barebox-arm.h>
+#include <asm/barebox-arm-head.h>
 #include <mach/hardware.h>
 #include <mach/at91_pmc.h>
 #include <mach/at91_pio.h>
@@ -33,11 +34,13 @@ static void inline pmc_check_mckrdy(void)
 	} while (!(r & AT91_PMC_MCKRDY));
 }
 
-void __naked __bare_init board_init_lowlevel(void)
+void __naked __bare_init reset(void)
 {
 	u32 r;
 	int i;
 
+	common_reset();
+
 	at91_sys_write(AT91_WDT_MR, CONFIG_SYS_WDTC_WDMR_VAL);
 
 	/* configure PIOx as EBI0 D[16-31] */
diff --git a/arch/arm/mach-ep93xx/lowlevel_init.S b/arch/arm/mach-ep93xx/lowlevel_init.S
index 27c2c90..07da8ae 100644
--- a/arch/arm/mach-ep93xx/lowlevel_init.S
+++ b/arch/arm/mach-ep93xx/lowlevel_init.S
@@ -25,12 +25,11 @@
  */
 
 #include <mach/ep93xx-regs.h>
+#include <asm/barebox-arm-head.h>
 
-.globl board_init_lowlevel
-board_init_lowlevel:
-	/* backup return address */
-	ldr r1, =SYSCON_SCRATCH0
-	str lr, [r1]
+.globl reset
+reset:
+	common_reset r0
 
 	/* Turn on both LEDs */
 	bl red_LED_on
@@ -57,8 +56,4 @@ board_init_lowlevel:
 	orr r0, r0, #0xc0000000
 	mcr p15, 0, r0, c1, c0, 0
 
-	/* restore return address */
-	ldr r1, =SYSCON_SCRATCH0
-	ldr lr, [r1]
-
-	mov pc, lr
+	b board_init_lowlevel_return
diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
index 9c76a96..c610a1f 100644
--- a/arch/arm/mach-omap/Kconfig
+++ b/arch/arm/mach-omap/Kconfig
@@ -26,9 +26,6 @@ menu "OMAP Features"
 config MACH_OMAP
 	bool
 
-config OMAP3_LOWLEVEL_INIT
-	bool
-
 choice
 	prompt "Select OMAP Variant"
 
@@ -36,7 +33,7 @@ config ARCH_OMAP3
 	bool "OMAP3"
 	select CPU_V7
 	select GENERIC_GPIO
-	select OMAP3_LOWLEVEL_INIT
+	select MACH_HAS_LOWLEVEL_INIT
 	select OMAP_CLOCK_SOURCE_S32K
 	help
 	  Say Y here if you are using Texas Instrument's OMAP343x based platform
diff --git a/arch/arm/mach-omap/omap3_core.S b/arch/arm/mach-omap/omap3_core.S
index d1be6e5..7c31e1e 100644
--- a/arch/arm/mach-omap/omap3_core.S
+++ b/arch/arm/mach-omap/omap3_core.S
@@ -40,8 +40,10 @@
 #include <mach/silicon.h>
 #include <mach/wdt.h>
 #include <mach/clocks.h>
+#include <asm/barebox-arm-head.h>
 
-ENTRY(board_init_lowlevel)
+#ifdef CONFIG_MACH_DO_LOWLEVEL_INIT
+ENTRY(reset)
 	/* Invalidate all Dcaches */
 #ifndef CONFIG_CPU_V7_DCACHE_SKIP
 	/* If Arch specific ROM code SMI handling does not exist */
@@ -90,5 +92,6 @@ finished_inval:
 	isb
 #endif /* CONFIG_CPU_V7_DCACHE_SKIP */
 	/* back to arch calling code */
-	mov	pc,	lr
-ENDPROC(board_init_lowlevel)
+	b board_init_lowlevel_return
+ENDPROC(reset)
+#endif
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
