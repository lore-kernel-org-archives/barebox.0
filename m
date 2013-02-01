Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U1BXS-0004MN-Um
 for barebox@lists.infradead.org; Fri, 01 Feb 2013 08:00:01 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  1 Feb 2013 08:59:16 +0100
Message-Id: <1359705587-9762-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1359705587-9762-1-git-send-email-s.hauer@pengutronix.de>
References: <1359705587-9762-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/34] ARM i.MX: Use SRAM stack in lowlevel code
To: barebox@lists.infradead.org

Several i.MX boards setup a temporary stack in their lowlevel code.
Instead of using STACK_BASE use a stack in internal SRAM to get rid
of the STACK_BASE compile time dependency.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S        |    3 ++-
 arch/arm/boards/eukrea_cpuimx35/lowlevel.c             |    2 +-
 arch/arm/boards/freescale-mx25-3-stack/lowlevel_init.S |    3 ++-
 arch/arm/boards/freescale-mx35-3-stack/lowlevel_init.S |    3 ++-
 arch/arm/boards/guf-cupid/lowlevel.c                   |    2 +-
 arch/arm/boards/guf-neso/lowlevel.c                    |    2 +-
 arch/arm/boards/imx21ads/lowlevel_init.S               |    3 ++-
 arch/arm/boards/karo-tx25/lowlevel.c                   |    3 ++-
 arch/arm/boards/pcm037/lowlevel.c                      |    2 +-
 arch/arm/boards/pcm038/lowlevel.c                      |    2 +-
 arch/arm/boards/pcm043/lowlevel.c                      |    2 +-
 arch/arm/mach-imx/include/mach/imx21-regs.h            |    1 +
 arch/arm/mach-imx/include/mach/imx25-regs.h            |    3 +++
 arch/arm/mach-imx/include/mach/imx27-regs.h            |    1 +
 arch/arm/mach-imx/include/mach/imx31-regs.h            |    3 +++
 15 files changed, 24 insertions(+), 11 deletions(-)

diff --git a/arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S b/arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S
index 4e69aac..287b513 100644
--- a/arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S
+++ b/arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S
@@ -124,7 +124,8 @@ reset:
 	sdram_init
 
 #ifdef CONFIG_NAND_IMX_BOOT
-	ldr	sp, =STACK_BASE + STACK_SIZE - 12	/* Setup a temporary stack in SDRAM */
+	/* Setup a temporary stack in SDRAM */
+	ldr	sp, =MX27_IRAM_BASE_ADDR + MX27_IRAM_SIZE - 4;
 
 	b	imx27_barebox_boot_nand_external
 #endif /* CONFIG_NAND_IMX_BOOT */
diff --git a/arch/arm/boards/eukrea_cpuimx35/lowlevel.c b/arch/arm/boards/eukrea_cpuimx35/lowlevel.c
index 8f4615a..c43f7fe 100644
--- a/arch/arm/boards/eukrea_cpuimx35/lowlevel.c
+++ b/arch/arm/boards/eukrea_cpuimx35/lowlevel.c
@@ -138,7 +138,7 @@ void __bare_init __naked reset(void)
 	writel(r, MX35_CCM_BASE_ADDR + MX35_CCM_PDR4);
 
 	/* setup a stack to be able to call imx35_barebox_boot_nand_external() */
-	arm_setup_stack(STACK_BASE + STACK_SIZE - 12);
+	arm_setup_stack(MX35_IRAM_BASE_ADDR + MX35_IRAM_SIZE - 8);
 
 	imx35_barebox_boot_nand_external();
 #else
diff --git a/arch/arm/boards/freescale-mx25-3-stack/lowlevel_init.S b/arch/arm/boards/freescale-mx25-3-stack/lowlevel_init.S
index 595c485..2e49e6e 100644
--- a/arch/arm/boards/freescale-mx25-3-stack/lowlevel_init.S
+++ b/arch/arm/boards/freescale-mx25-3-stack/lowlevel_init.S
@@ -98,7 +98,8 @@ reset:
 	str r3, [r0, #0x30]
 
 #ifdef CONFIG_NAND_IMX_BOOT
-	ldr	sp, =STACK_BASE + STACK_SIZE - 12 /* Setup a temporary stack in SDRAM */
+	/* Setup a temporary stack in SRAM */
+	ldr	sp, =MX25_IRAM_BASE_ADDR + MX25_IRAM_SIZE - 4
 
 	b	imx25_barebox_boot_nand_external
 #endif /* CONFIG_NAND_IMX_BOOT */
diff --git a/arch/arm/boards/freescale-mx35-3-stack/lowlevel_init.S b/arch/arm/boards/freescale-mx35-3-stack/lowlevel_init.S
index 5461b61..c63c953 100644
--- a/arch/arm/boards/freescale-mx35-3-stack/lowlevel_init.S
+++ b/arch/arm/boards/freescale-mx35-3-stack/lowlevel_init.S
@@ -155,7 +155,8 @@ reset:
 	str	r3, [r0, #0x30]
 
 #ifdef CONFIG_NAND_IMX_BOOT
-	ldr	sp, =STACK_BASE + STACK_SIZE - 12		/* Setup a temporary stack in SDRAM */
+	/* Setup a temporary stack in internal SRAM */
+	ldr	sp, =MX35_IRAM_BASE_ADDR + MX35_IRAM_SIZE - 4
 
 	b	imx35_barebox_boot_nand_external
 #endif /* CONFIG_NAND_IMX_BOOT */
diff --git a/arch/arm/boards/guf-cupid/lowlevel.c b/arch/arm/boards/guf-cupid/lowlevel.c
index f2994eb..c141b54 100644
--- a/arch/arm/boards/guf-cupid/lowlevel.c
+++ b/arch/arm/boards/guf-cupid/lowlevel.c
@@ -314,7 +314,7 @@ void __bare_init __naked reset(void)
 	writel(r0, MX35_CCM_BASE_ADDR + MX35_CCM_PDR4);
 
 	/* setup a stack to be able to call imx35_barebox_boot_nand_external() */
-	arm_setup_stack(STACK_BASE + STACK_SIZE - 12);
+	arm_setup_stack(MX35_IRAM_BASE_ADDR + MX35_IRAM_SIZE - 8);
 
 	imx35_barebox_boot_nand_external();
 #else
diff --git a/arch/arm/boards/guf-neso/lowlevel.c b/arch/arm/boards/guf-neso/lowlevel.c
index 7a366d9..ca44607 100644
--- a/arch/arm/boards/guf-neso/lowlevel.c
+++ b/arch/arm/boards/guf-neso/lowlevel.c
@@ -88,7 +88,7 @@ void __bare_init __naked reset(void)
 
 #ifdef CONFIG_NAND_IMX_BOOT
 	/* setup a stack to be able to call imx27_barebox_boot_nand_external() */
-	arm_setup_stack(STACK_BASE + STACK_SIZE - 12);
+	arm_setup_stack(MX27_IRAM_BASE_ADDR + MX27_IRAM_SIZE - 8);
 
 	imx27_barebox_boot_nand_external();
 #else
diff --git a/arch/arm/boards/imx21ads/lowlevel_init.S b/arch/arm/boards/imx21ads/lowlevel_init.S
index f06c964..5be4995 100644
--- a/arch/arm/boards/imx21ads/lowlevel_init.S
+++ b/arch/arm/boards/imx21ads/lowlevel_init.S
@@ -118,7 +118,8 @@ reset:
 	str	r1, [r0]
 
 #ifdef CONFIG_NAND_IMX_BOOT
-	ldr	sp, =STACK_BASE + STACK_SIZE - 12	/* Setup a temporary stack in SDRAM */
+	/* Setup a temporary stack in SRAM */
+	ldr	sp, =MX21_IRAM_BASE_ADDR + MX21_IRAM_SIZE - 4
 
 	b	imx21_barebox_boot_nand_external
 #endif /* CONFIG_NAND_IMX_BOOT */
diff --git a/arch/arm/boards/karo-tx25/lowlevel.c b/arch/arm/boards/karo-tx25/lowlevel.c
index b1afe18..9e96e39 100644
--- a/arch/arm/boards/karo-tx25/lowlevel.c
+++ b/arch/arm/boards/karo-tx25/lowlevel.c
@@ -21,6 +21,7 @@
 #include <mach/imx25-regs.h>
 #include <mach/esdctl.h>
 #include <io.h>
+#include <sizes.h>
 #include <mach/imx-nand.h>
 #include <asm/barebox-arm.h>
 #include <asm/barebox-arm-head.h>
@@ -134,7 +135,7 @@ void __bare_init __naked reset(void)
 
 #ifdef CONFIG_NAND_IMX_BOOT
 	/* setup a stack to be able to call imx25_barebox_boot_nand_external() */
-	arm_setup_stack(STACK_BASE + STACK_SIZE - 12);
+	arm_setup_stack(MX25_IRAM_BASE_ADDR + MX25_IRAM_SIZE - 8);
 
 	imx25_barebox_boot_nand_external();
 #else
diff --git a/arch/arm/boards/pcm037/lowlevel.c b/arch/arm/boards/pcm037/lowlevel.c
index da01732..b531615 100644
--- a/arch/arm/boards/pcm037/lowlevel.c
+++ b/arch/arm/boards/pcm037/lowlevel.c
@@ -127,7 +127,7 @@ void __bare_init __naked reset(void)
 
 #ifdef CONFIG_NAND_IMX_BOOT
 	/* setup a stack to be able to call imx31_barebox_boot_nand_external() */
-	arm_setup_stack(STACK_BASE + STACK_SIZE - 12);
+	arm_setup_stack(MX31_IRAM_BASE_ADDR + MX31_IRAM_SIZE - 12);
 
 	imx31_barebox_boot_nand_external();
 #else
diff --git a/arch/arm/boards/pcm038/lowlevel.c b/arch/arm/boards/pcm038/lowlevel.c
index 4515107..aecdbf3 100644
--- a/arch/arm/boards/pcm038/lowlevel.c
+++ b/arch/arm/boards/pcm038/lowlevel.c
@@ -95,7 +95,7 @@ void __bare_init __naked reset(void)
 
 #ifdef CONFIG_NAND_IMX_BOOT
 	/* setup a stack to be able to call mx27_barebox_boot_nand_external() */
-	arm_setup_stack(STACK_BASE + STACK_SIZE - 12);
+	arm_setup_stack(MX27_IRAM_BASE_ADDR + MX27_IRAM_SIZE - 8);
 
 	imx27_barebox_boot_nand_external();
 #else
diff --git a/arch/arm/boards/pcm043/lowlevel.c b/arch/arm/boards/pcm043/lowlevel.c
index 639064f..a9832e2 100644
--- a/arch/arm/boards/pcm043/lowlevel.c
+++ b/arch/arm/boards/pcm043/lowlevel.c
@@ -190,7 +190,7 @@ void __bare_init __naked reset(void)
 	writel(r, MX35_CCM_BASE_ADDR + MX35_CCM_PDR4);
 
 	/* setup a stack to be able to call imx35_barebox_boot_nand_external() */
-	arm_setup_stack(STACK_BASE + STACK_SIZE - 12);
+	arm_setup_stack(MX35_IRAM_BASE_ADDR + MX35_IRAM_SIZE - 8);
 
 	imx35_barebox_boot_nand_external();
 #else
diff --git a/arch/arm/mach-imx/include/mach/imx21-regs.h b/arch/arm/mach-imx/include/mach/imx21-regs.h
index 87bd99c..1fa463a 100644
--- a/arch/arm/mach-imx/include/mach/imx21-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx21-regs.h
@@ -70,6 +70,7 @@
 #define MX21_NFC_BASE_ADDR		(MX21_X_MEMC_BASE_ADDR + 0x3000)
 
 #define MX21_IRAM_BASE_ADDR		0xffffe800	/* internal ram */
+#define MX21_IRAM_SIZE			0x00001800
 
 /* AIPI (base MX21_AIPI_BASE_ADDR) */
 #define MX21_AIPI1_PSR0	0x00
diff --git a/arch/arm/mach-imx/include/mach/imx25-regs.h b/arch/arm/mach-imx/include/mach/imx25-regs.h
index b8ae45a..9ab0fb3 100644
--- a/arch/arm/mach-imx/include/mach/imx25-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx25-regs.h
@@ -76,6 +76,9 @@
 #define MX25_USB_HS_BASE_ADDR			(MX25_USB_BASE_ADDR + 0x0400)
 #define MX25_CSI_BASE_ADDR		0x53ff8000
 
+#define MX25_IRAM_BASE_ADDR		0x78000000	/* internal ram */
+#define MX25_IRAM_SIZE			SZ_128K
+
 /*
  * Clock Controller Module (CCM)
  */
diff --git a/arch/arm/mach-imx/include/mach/imx27-regs.h b/arch/arm/mach-imx/include/mach/imx27-regs.h
index 44bc1d3..c45befb 100644
--- a/arch/arm/mach-imx/include/mach/imx27-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx27-regs.h
@@ -100,6 +100,7 @@
 
 /* IRAM */
 #define MX27_IRAM_BASE_ADDR		0xffff4c00	/* internal ram */
+#define MX27_IRAM_SIZE			0x0000b400
 
 /* PCMCIA (base: MX27_PCMCIA_CTL_BASE_ADDR) */
 #define MX27_PCMCIA_PIPR	0x00
diff --git a/arch/arm/mach-imx/include/mach/imx31-regs.h b/arch/arm/mach-imx/include/mach/imx31-regs.h
index f641fe6..be3e4c1 100644
--- a/arch/arm/mach-imx/include/mach/imx31-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx31-regs.h
@@ -21,6 +21,9 @@
 
 #include <sizes.h>
 
+#define MX31_IRAM_BASE_ADDR		0x1fffc000
+#define MX31_IRAM_SIZE			0x00004000
+
 #define MX31_AIPS1_BASE_ADDR		0x43f00000
 #define MX31_AIPS1_SIZE			SZ_1M
 #define MX31_MAX_BASE_ADDR			(MX31_AIPS1_BASE_ADDR + 0x04000)
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
