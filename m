Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TOamF-00027t-Bg
 for barebox@lists.infradead.org; Wed, 17 Oct 2012 21:04:06 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 17 Oct 2012 23:03:35 +0200
Message-Id: <1350507817-7819-27-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1350507817-7819-1-git-send-email-s.hauer@pengutronix.de>
References: <1350507817-7819-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 26/28] ARM i.MX: Use SRAM stack in lowlevel code
To: barebox@lists.infradead.org

Several i.MX boards setup a temporary stack in their lowlevel code.
Instead of using STACK_BASE use a stack in internal SRAM to get rid
of the STACK_BASE compile time dependency.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/eukrea_cpuimx25/lowlevel.c             |    2 +-
 arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S        |    3 ++-
 arch/arm/boards/eukrea_cpuimx35/lowlevel.c             |    2 +-
 arch/arm/boards/freescale-mx25-3-stack/lowlevel_init.S |    3 ++-
 arch/arm/boards/freescale-mx35-3-stack/lowlevel_init.S |    3 ++-
 arch/arm/boards/guf-cupid/lowlevel.c                   |    2 +-
 arch/arm/boards/guf-neso/lowlevel.c                    |    2 +-
 arch/arm/boards/imx21ads/lowlevel_init.S               |    3 ++-
 arch/arm/boards/karo-tx25/lowlevel.c                   |    2 +-
 arch/arm/boards/pcm038/lowlevel.c                      |    2 +-
 arch/arm/boards/pcm043/lowlevel.c                      |    2 +-
 arch/arm/mach-imx/include/mach/imx21-regs.h            |    1 +
 arch/arm/mach-imx/include/mach/imx25-regs.h            |    3 +++
 arch/arm/mach-imx/include/mach/imx27-regs.h            |    1 +
 14 files changed, 20 insertions(+), 11 deletions(-)

diff --git a/arch/arm/boards/eukrea_cpuimx25/lowlevel.c b/arch/arm/boards/eukrea_cpuimx25/lowlevel.c
index d08e494..a2ecbbf 100644
--- a/arch/arm/boards/eukrea_cpuimx25/lowlevel.c
+++ b/arch/arm/boards/eukrea_cpuimx25/lowlevel.c
@@ -36,7 +36,7 @@ static void __bare_init __naked insdram(void)
 	uint32_t r;
 
 	/* setup a stack to be able to call imx_nand_load_image() */
-	arm_setup_stack(STACK_BASE + STACK_SIZE - 12);
+	arm_setup_stack(MX25_IRAM_BASE_ADDR + MX25_IRAM_SIZE - 8);
 
 	imx_nand_load_image(_text, barebox_image_size);
 
diff --git a/arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S b/arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S
index 08659e0..0b39562 100644
--- a/arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S
+++ b/arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S
@@ -124,7 +124,8 @@ reset:
 	sdram_init
 
 #ifdef CONFIG_NAND_IMX_BOOT
-	ldr	sp, =STACK_BASE + STACK_SIZE - 12	/* Setup a temporary stack in SDRAM */
+	/* Setup a temporary stack in SDRAM */
+	ldr	sp, =MX27_IRAM_BASE_ADDR + MX27_IRAM_SIZE - 4;
 
 	ldr	r0, =MX27_NFC_BASE_ADDR		/* start of NFC SRAM                */
 	ldr	r2, =MX27_NFC_BASE_ADDR + 0x1000	/* end of NFC SRAM                  */
diff --git a/arch/arm/boards/eukrea_cpuimx35/lowlevel.c b/arch/arm/boards/eukrea_cpuimx35/lowlevel.c
index f95459a..5d56f9d 100644
--- a/arch/arm/boards/eukrea_cpuimx35/lowlevel.c
+++ b/arch/arm/boards/eukrea_cpuimx35/lowlevel.c
@@ -47,7 +47,7 @@ static void __bare_init __naked insdram(void)
 	writel(r, MX35_CCM_BASE_ADDR + MX35_CCM_PDR4);
 
 	/* setup a stack to be able to call imx_nand_load_image() */
-	arm_setup_stack(STACK_BASE + STACK_SIZE - 12);
+	arm_setup_stack(MX35_IRAM_BASE_ADDR + MX35_IRAM_SIZE - 8);
 
 	imx_nand_load_image(_text, barebox_image_size);
 
diff --git a/arch/arm/boards/freescale-mx25-3-stack/lowlevel_init.S b/arch/arm/boards/freescale-mx25-3-stack/lowlevel_init.S
index 425cf99..3a307fd 100644
--- a/arch/arm/boards/freescale-mx25-3-stack/lowlevel_init.S
+++ b/arch/arm/boards/freescale-mx25-3-stack/lowlevel_init.S
@@ -98,7 +98,8 @@ reset:
 	str r3, [r0, #0x30]
 
 #ifdef CONFIG_NAND_IMX_BOOT
-	ldr	sp, =STACK_BASE + STACK_SIZE - 12 /* Setup a temporary stack in SDRAM */
+	/* Setup a temporary stack in SRAM */
+	ldr	sp, =MX25_IRAM_BASE_ADDR + MX25_IRAM_SIZE - 4
 
 	ldr	r0, =MX25_NFC_BASE_ADDR		/* start of NFC SRAM                */
 	ldr	r2, =MX25_NFC_BASE_ADDR + 0x1000	/* end of NFC SRAM                  */
diff --git a/arch/arm/boards/freescale-mx35-3-stack/lowlevel_init.S b/arch/arm/boards/freescale-mx35-3-stack/lowlevel_init.S
index f36a44a..f69951c 100644
--- a/arch/arm/boards/freescale-mx35-3-stack/lowlevel_init.S
+++ b/arch/arm/boards/freescale-mx35-3-stack/lowlevel_init.S
@@ -155,7 +155,8 @@ reset:
 	str	r3, [r0, #0x30]
 
 #ifdef CONFIG_NAND_IMX_BOOT
-	ldr	sp, =STACK_BASE + STACK_SIZE - 12		/* Setup a temporary stack in SDRAM */
+	/* Setup a temporary stack in internal SRAM */
+	ldr	sp, =MX35_IRAM_BASE_ADDR + MX35_IRAM_SIZE - 4
 
 	ldr	r0, =MX35_NFC_BASE_ADDR		/* start of NFC SRAM */
 	ldr	r2, =MX35_NFC_BASE_ADDR + 0x800	/* end of NFC SRAM */
diff --git a/arch/arm/boards/guf-cupid/lowlevel.c b/arch/arm/boards/guf-cupid/lowlevel.c
index e8ac9a3..d19fa3a 100644
--- a/arch/arm/boards/guf-cupid/lowlevel.c
+++ b/arch/arm/boards/guf-cupid/lowlevel.c
@@ -54,7 +54,7 @@ static void __bare_init __naked insdram(void)
 	writel(r, MX35_CCM_BASE_ADDR + CCM_PDR4);
 
 	/* setup a stack to be able to call imx_nand_load_image() */
-	arm_setup_stack(STACK_BASE + STACK_SIZE - 12);
+	arm_setup_stack(MX35_IRAM_BASE_ADDR + MX35_IRAM_SIZE - 8);
 
 	imx_nand_load_image(_text, barebox_image_size);
 
diff --git a/arch/arm/boards/guf-neso/lowlevel.c b/arch/arm/boards/guf-neso/lowlevel.c
index 55f0475..3e0d55d 100644
--- a/arch/arm/boards/guf-neso/lowlevel.c
+++ b/arch/arm/boards/guf-neso/lowlevel.c
@@ -34,7 +34,7 @@
 static void __bare_init __naked insdram(void)
 {
 	/* setup a stack to be able to call imx_nand_load_image() */
-	arm_setup_stack(STACK_BASE + STACK_SIZE - 12);
+	arm_setup_stack(MX27_IRAM_BASE_ADDR + MX27_IRAM_SIZE - 8);
 
 	imx_nand_load_image(_text, barebox_image_size);
 
diff --git a/arch/arm/boards/imx21ads/lowlevel_init.S b/arch/arm/boards/imx21ads/lowlevel_init.S
index a46dafe..e2b013e 100644
--- a/arch/arm/boards/imx21ads/lowlevel_init.S
+++ b/arch/arm/boards/imx21ads/lowlevel_init.S
@@ -119,7 +119,8 @@ reset:
 	str	r1, [r0]
 
 #ifdef CONFIG_NAND_IMX_BOOT
-	ldr	sp, =STACK_BASE + STACK_SIZE - 12	/* Setup a temporary stack in SDRAM */
+	/* Setup a temporary stack in SRAM */
+	ldr	sp, =MX21_IRAM_BASE_ADDR + MX21_IRAM_SIZE - 4
 
 	ldr	r0, =MX21_NFC_BASE_ADDR		/* start of NFC SRAM        */
 	ldr	r2, =MX21_NFC_BASE_ADDR + 0x800	/* end of NFC SRAM          */
diff --git a/arch/arm/boards/karo-tx25/lowlevel.c b/arch/arm/boards/karo-tx25/lowlevel.c
index 9223a82..e012f82 100644
--- a/arch/arm/boards/karo-tx25/lowlevel.c
+++ b/arch/arm/boards/karo-tx25/lowlevel.c
@@ -34,7 +34,7 @@ static void __bare_init __naked insdram(void)
 	uint32_t r;
 
 	/* setup a stack to be able to call imx_nand_load_image() */
-	arm_setup_stack(STACK_BASE + STACK_SIZE - 12);
+	arm_setup_stack(MX25_IRAM_BASE_ADDR + MX25_IRAM_SIZE - 8);
 
 	imx_nand_load_image(_text, barebox_image_size);
 
diff --git a/arch/arm/boards/pcm038/lowlevel.c b/arch/arm/boards/pcm038/lowlevel.c
index b2a47ac..c5d2190 100644
--- a/arch/arm/boards/pcm038/lowlevel.c
+++ b/arch/arm/boards/pcm038/lowlevel.c
@@ -35,7 +35,7 @@
 static void __bare_init __naked insdram(void)
 {
 	/* setup a stack to be able to call imx_nand_load_image() */
-	arm_setup_stack(STACK_BASE + STACK_SIZE - 12);
+	arm_setup_stack(MX27_IRAM_BASE_ADDR + MX27_IRAM_SIZE - 8);
 
 	imx_nand_load_image(_text, barebox_image_size);
 
diff --git a/arch/arm/boards/pcm043/lowlevel.c b/arch/arm/boards/pcm043/lowlevel.c
index a99fe74..0ab6a5b 100644
--- a/arch/arm/boards/pcm043/lowlevel.c
+++ b/arch/arm/boards/pcm043/lowlevel.c
@@ -52,7 +52,7 @@ static void __bare_init __naked insdram(void)
 	writel(r, MX35_CCM_BASE_ADDR + CCM_PDR4);
 
 	/* setup a stack to be able to call imx_nand_load_image() */
-	arm_setup_stack(STACK_BASE + STACK_SIZE - 12);
+	arm_setup_stack(MX35_IRAM_BASE_ADDR + MX35_IRAM_SIZE - 8);
 
 	imx_nand_load_image(_text, barebox_image_size);
 
diff --git a/arch/arm/mach-imx/include/mach/imx21-regs.h b/arch/arm/mach-imx/include/mach/imx21-regs.h
index 1c4b550..fbbb2eb 100644
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
index 90b4614..e523563 100644
--- a/arch/arm/mach-imx/include/mach/imx27-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx27-regs.h
@@ -100,6 +100,7 @@
 
 /* IRAM */
 #define MX27_IRAM_BASE_ADDR		0xffff4c00	/* internal ram */
+#define MX27_IRAM_SIZE			0x0000b400
 
 /* PCMCIA (base: MX27_PCMCIA_CTL_BASE_ADDR) */
 #define MX27_PCMCIA_PIPR	0x00
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
