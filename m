Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TwxHJ-0004xI-82
 for barebox@lists.infradead.org; Sun, 20 Jan 2013 15:57:52 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 20 Jan 2013 16:57:46 +0100
Message-Id: <1358697466-26941-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1358697466-26941-1-git-send-email-s.hauer@pengutronix.de>
References: <1358697466-26941-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] ARM i.MX boards: use helper function for external NAND
 boot
To: barebox@lists.infradead.org

Use helper function for external NAND boot to get some positive
diffstat.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c  |    7 ---
 arch/arm/boards/eukrea_cpuimx25/lowlevel.c         |   35 ++-------------
 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c  |    9 ----
 arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S    |   23 +---------
 arch/arm/boards/eukrea_cpuimx35/lowlevel.c         |   46 ++++---------------
 arch/arm/boards/freescale-mx25-3-stack/3stack.c    |    9 ----
 .../boards/freescale-mx25-3-stack/lowlevel_init.S  |   23 +---------
 arch/arm/boards/freescale-mx35-3-stack/3stack.c    |   12 -----
 .../boards/freescale-mx35-3-stack/lowlevel_init.S  |   23 +---------
 arch/arm/boards/guf-cupid/lowlevel.c               |   45 ++++---------------
 arch/arm/boards/guf-neso/lowlevel.c                |   33 ++------------
 arch/arm/boards/imx21ads/imx21ads.c                |    9 ----
 arch/arm/boards/imx21ads/lowlevel_init.S           |   23 +---------
 arch/arm/boards/karo-tx25/board.c                  |    7 ---
 arch/arm/boards/karo-tx25/lowlevel.c               |   33 ++------------
 arch/arm/boards/pcm037/lowlevel.c                  |   34 ++------------
 arch/arm/boards/pcm037/pcm037.c                    |    8 ----
 arch/arm/boards/pcm038/lowlevel.c                  |   34 ++------------
 arch/arm/boards/pcm043/lowlevel.c                  |   47 ++++----------------
 arch/arm/boards/phycard-i.MX27/lowlevel_init.S     |   26 +----------
 20 files changed, 47 insertions(+), 439 deletions(-)

diff --git a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
index ae2363a..98c9b43 100644
--- a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
+++ b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
@@ -235,10 +235,3 @@ static int eukrea_cpuimx25_console_init(void)
 }
 
 console_initcall(eukrea_cpuimx25_console_init);
-
-#ifdef CONFIG_NAND_IMX_BOOT
-void __bare_init nand_boot(void)
-{
-	imx_nand_load_image(_text, barebox_image_size);
-}
-#endif
diff --git a/arch/arm/boards/eukrea_cpuimx25/lowlevel.c b/arch/arm/boards/eukrea_cpuimx25/lowlevel.c
index 36ce98b..3c1b50c 100644
--- a/arch/arm/boards/eukrea_cpuimx25/lowlevel.c
+++ b/arch/arm/boards/eukrea_cpuimx25/lowlevel.c
@@ -30,27 +30,9 @@
 #include <asm-generic/memory_layout.h>
 #include <asm/system.h>
 
-#ifdef CONFIG_NAND_IMX_BOOT
-static void __bare_init __naked insdram(void)
-{
-	uint32_t r;
-
-	/* setup a stack to be able to call imx_nand_load_image() */
-	arm_setup_stack(STACK_BASE + STACK_SIZE - 12);
-
-	imx_nand_load_image(_text, barebox_image_size);
-
-	board_init_lowlevel_return();
-}
-#endif
-
 void __bare_init __naked reset(void)
 {
 	uint32_t r;
-#ifdef CONFIG_NAND_IMX_BOOT
-	unsigned int *trg, *src;
-	int i;
-#endif
 	register uint32_t loops = 0x20000;
 
 	common_reset();
@@ -146,21 +128,10 @@ void __bare_init __naked reset(void)
 	writel(0x82216080, MX25_ESDCTL_BASE_ADDR + IMX_ESDCTL0);
 
 #ifdef CONFIG_NAND_IMX_BOOT
-	/* skip NAND boot if not running from NFC space */
-	r = get_pc();
-	if (r < MX25_NFC_BASE_ADDR || r > MX25_NFC_BASE_ADDR + 0x800)
-		board_init_lowlevel_return();
-
-	src = (unsigned int *)MX25_NFC_BASE_ADDR;
-	trg = (unsigned int *)_text;
-
-	/* Move ourselves out of NFC SRAM */
-	for (i = 0; i < 0x800 / sizeof(int); i++)
-		*trg++ = *src++;
+	/* setup a stack to be able to call imx25_barebox_boot_nand_external() */
+	arm_setup_stack(STACK_BASE + STACK_SIZE - 12);
 
-	/* Jump to SDRAM */
-	r = (unsigned int)&insdram;
-	__asm__ __volatile__("mov pc, %0" : : "r"(r));
+	imx25_barebox_boot_nand_external();
 #else
 	board_init_lowlevel_return();
 #endif
diff --git a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
index 498e9b4..65b6c44 100644
--- a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
+++ b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
@@ -248,12 +248,3 @@ static int eukrea_cpuimx27_late_init(void)
 }
 
 late_initcall(eukrea_cpuimx27_late_init);
-
-#ifdef CONFIG_NAND_IMX_BOOT
-void __bare_init nand_boot(void)
-{
-	imx_nand_load_image(_text, barebox_image_size);
-	board_init_lowlevel_return();
-}
-#endif
-
diff --git a/arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S b/arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S
index 4ee6efb..4e69aac 100644
--- a/arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S
+++ b/arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S
@@ -126,28 +126,7 @@ reset:
 #ifdef CONFIG_NAND_IMX_BOOT
 	ldr	sp, =STACK_BASE + STACK_SIZE - 12	/* Setup a temporary stack in SDRAM */
 
-	ldr	r0, =MX27_NFC_BASE_ADDR		/* start of NFC SRAM                */
-	ldr	r2, =MX27_NFC_BASE_ADDR + 0x1000	/* end of NFC SRAM                  */
-
-	/* skip NAND boot if not running from NFC space */
-	cmp	pc, r0
-	bls	ret
-	cmp	pc, r2
-	bhi	ret
-
-	/* Move ourselves out of NFC SRAM */
-	ldr	r1, =_text
-
-copy_loop:
-	ldmia	r0!, {r3-r9}		/* copy from source address [r0]    */
-	stmia	r1!, {r3-r9}		/* copy to   target address [r1]    */
-	cmp	r0, r2			/* until source end address [r2]    */
-	ble	copy_loop
-
-	ldr	pc, =1f			/* Jump to SDRAM                    */
-1:
-	b	nand_boot		/* Load barebox from NAND Flash      */
-					/* to SDRAM                            */
+	b	imx27_barebox_boot_nand_external
 #endif /* CONFIG_NAND_IMX_BOOT */
 
 ret:
diff --git a/arch/arm/boards/eukrea_cpuimx35/lowlevel.c b/arch/arm/boards/eukrea_cpuimx35/lowlevel.c
index 0523335..8f4615a 100644
--- a/arch/arm/boards/eukrea_cpuimx35/lowlevel.c
+++ b/arch/arm/boards/eukrea_cpuimx35/lowlevel.c
@@ -35,34 +35,10 @@
 #define MPCTL_PARAM_532     ((1 << 31) | IMX_PLL_PD(0) | IMX_PLL_MFD(11) | IMX_PLL_MFI(11) | IMX_PLL_MFN(1))
 #define PPCTL_PARAM_300     (IMX_PLL_PD(0) | IMX_PLL_MFD(3) | IMX_PLL_MFI(6) | IMX_PLL_MFN(1))
 
-#ifdef CONFIG_NAND_IMX_BOOT
-static void __bare_init __naked insdram(void)
-{
-	uint32_t r;
-
-	/* Speed up NAND controller by adjusting the NFC divider */
-	r = readl(MX35_CCM_BASE_ADDR + MX35_CCM_PDR4);
-	r &= ~(0xf << 28);
-	r |= 0x1 << 28;
-	writel(r, MX35_CCM_BASE_ADDR + MX35_CCM_PDR4);
-
-	/* setup a stack to be able to call imx_nand_load_image() */
-	arm_setup_stack(STACK_BASE + STACK_SIZE - 12);
-
-	imx_nand_load_image(_text, barebox_image_size);
-
-	board_init_lowlevel_return();
-}
-#endif
-
 void __bare_init __naked reset(void)
 {
 	uint32_t r, s;
 	unsigned long ccm_base = MX35_CCM_BASE_ADDR;
-#ifdef CONFIG_NAND_IMX_BOOT
-	unsigned int *trg, *src;
-	int i;
-#endif
 	register uint32_t loops = 0x20000;
 
 	common_reset();
@@ -155,23 +131,17 @@ void __bare_init __naked reset(void)
 	writel(0x82228080, MX35_ESDCTL_BASE_ADDR + IMX_ESDCTL0);
 
 #ifdef CONFIG_NAND_IMX_BOOT
-	/* skip NAND boot if not running from NFC space */
-	r = get_pc();
-	if (r < MX35_NFC_BASE_ADDR || r > MX35_NFC_BASE_ADDR + 0x800)
-		board_init_lowlevel_return();
-
-	src = (unsigned int *)MX35_NFC_BASE_ADDR;
-	trg = (unsigned int *)_text;
+	/* Speed up NAND controller by adjusting the NFC divider */
+	r = readl(MX35_CCM_BASE_ADDR + MX35_CCM_PDR4);
+	r &= ~(0xf << 28);
+	r |= 0x1 << 28;
+	writel(r, MX35_CCM_BASE_ADDR + MX35_CCM_PDR4);
 
-	/* Move ourselves out of NFC SRAM */
-	for (i = 0; i < 0x800 / sizeof(int); i++)
-		*trg++ = *src++;
+	/* setup a stack to be able to call imx35_barebox_boot_nand_external() */
+	arm_setup_stack(STACK_BASE + STACK_SIZE - 12);
 
-	/* Jump to SDRAM */
-	r = (unsigned int)&insdram;
-	__asm__ __volatile__("mov pc, %0" : : "r"(r));
+	imx35_barebox_boot_nand_external();
 #else
 	board_init_lowlevel_return();
 #endif
 }
-
diff --git a/arch/arm/boards/freescale-mx25-3-stack/3stack.c b/arch/arm/boards/freescale-mx25-3-stack/3stack.c
index 1271ad9..4d048be 100644
--- a/arch/arm/boards/freescale-mx25-3-stack/3stack.c
+++ b/arch/arm/boards/freescale-mx25-3-stack/3stack.c
@@ -274,14 +274,6 @@ static int imx25_console_init(void)
 
 console_initcall(imx25_console_init);
 
-#ifdef CONFIG_NAND_IMX_BOOT
-void __bare_init nand_boot(void)
-{
-	imx_nand_load_image(_text, barebox_image_size);
-	board_init_lowlevel_return();
-}
-#endif
-
 static int imx25_core_setup(void)
 {
 	writel(0x01010103, MX25_CCM_BASE_ADDR + MX25_CCM_PCDR2);
@@ -289,4 +281,3 @@ static int imx25_core_setup(void)
 
 }
 core_initcall(imx25_core_setup);
-
diff --git a/arch/arm/boards/freescale-mx25-3-stack/lowlevel_init.S b/arch/arm/boards/freescale-mx25-3-stack/lowlevel_init.S
index fb98099..595c485 100644
--- a/arch/arm/boards/freescale-mx25-3-stack/lowlevel_init.S
+++ b/arch/arm/boards/freescale-mx25-3-stack/lowlevel_init.S
@@ -100,28 +100,7 @@ reset:
 #ifdef CONFIG_NAND_IMX_BOOT
 	ldr	sp, =STACK_BASE + STACK_SIZE - 12 /* Setup a temporary stack in SDRAM */
 
-	ldr	r0, =MX25_NFC_BASE_ADDR		/* start of NFC SRAM                */
-	ldr	r2, =MX25_NFC_BASE_ADDR + 0x1000	/* end of NFC SRAM                  */
-
-	/* skip NAND boot if not running from NFC space */
-	cmp	pc, r0
-	bls	ret
-	cmp	pc, r2
-	bhi	ret
-
-	/* Move ourselves out of NFC SRAM */
-	ldr	r1, =_text
-
-copy_loop:
-	ldmia	r0!, {r3-r9}		/* copy from source address [r0]    */
-	stmia	r1!, {r3-r9}		/* copy to   target address [r1]    */
-	cmp	r0, r2			/* until source end address [r2]    */
-	ble	copy_loop
-
-	ldr	pc, =1f			/* Jump to SDRAM                    */
-1:
-	b	nand_boot		/* Load barebox from NAND Flash      */
-
+	b	imx25_barebox_boot_nand_external
 #endif /* CONFIG_NAND_IMX_BOOT */
 
 ret:
diff --git a/arch/arm/boards/freescale-mx35-3-stack/3stack.c b/arch/arm/boards/freescale-mx35-3-stack/3stack.c
index 3128d4f..02844c5 100644
--- a/arch/arm/boards/freescale-mx35-3-stack/3stack.c
+++ b/arch/arm/boards/freescale-mx35-3-stack/3stack.c
@@ -427,15 +427,3 @@ static int f3s_pmic_init(void)
 }
 
 late_initcall(f3s_pmic_init);
-
-#ifdef CONFIG_NAND_IMX_BOOT
-void __bare_init nand_boot(void)
-{
-	/*
-	 * The driver is able to detect NAND's pagesize by CPU internal
-	 * fuses or external pull ups. But not the blocksize...
-	 */
-	imx_nand_load_image(_text, barebox_image_size);
-	board_init_lowlevel_return();
-}
-#endif
diff --git a/arch/arm/boards/freescale-mx35-3-stack/lowlevel_init.S b/arch/arm/boards/freescale-mx35-3-stack/lowlevel_init.S
index dada5f3..5461b61 100644
--- a/arch/arm/boards/freescale-mx35-3-stack/lowlevel_init.S
+++ b/arch/arm/boards/freescale-mx35-3-stack/lowlevel_init.S
@@ -157,28 +157,7 @@ reset:
 #ifdef CONFIG_NAND_IMX_BOOT
 	ldr	sp, =STACK_BASE + STACK_SIZE - 12		/* Setup a temporary stack in SDRAM */
 
-	ldr	r0, =MX35_NFC_BASE_ADDR		/* start of NFC SRAM */
-	ldr	r2, =MX35_NFC_BASE_ADDR + 0x800	/* end of NFC SRAM */
-
-	/* skip NAND boot if not running from NFC space */
-	cmp	pc, r0
-	blo	ret
-	cmp	pc, r2
-	bhs	ret
-
-	/* Move ourselves out of NFC SRAM */
-	ldr r1, =_text
-
-copy_loop:
-	ldmia	r0!, {r3-r9}			/* copy from source address [r0] */
-	stmia	r1!, {r3-r9}			/* copy to   target address [r1] */
-	cmp	r0, r2				/* until source end address [r2] */
-	ble	copy_loop
-
-	ldr	pc, =1f				/* Jump to SDRAM */
-1:
-	b	nand_boot			/* Load barebox from NAND Flash */
-ret:
+	b	imx35_barebox_boot_nand_external
 #endif /* CONFIG_NAND_IMX_BOOT */
 
 	b	board_init_lowlevel_return
diff --git a/arch/arm/boards/guf-cupid/lowlevel.c b/arch/arm/boards/guf-cupid/lowlevel.c
index 3de0346..f2994eb 100644
--- a/arch/arm/boards/guf-cupid/lowlevel.c
+++ b/arch/arm/boards/guf-cupid/lowlevel.c
@@ -42,26 +42,6 @@
 #define SDRAM_COMPARE_CONST1	0x55555555
 #define SDRAM_COMPARE_CONST2	0xaaaaaaaa
 
-#ifdef CONFIG_NAND_IMX_BOOT
-static void __bare_init __naked insdram(void)
-{
-	uint32_t r;
-
-	/* Speed up NAND controller by adjusting the NFC divider */
-	r = readl(MX35_CCM_BASE_ADDR + MX35_CCM_PDR4);
-	r &= ~(0xf << 28);
-	r |= 0x1 << 28;
-	writel(r, MX35_CCM_BASE_ADDR + MX35_CCM_PDR4);
-
-	/* setup a stack to be able to call imx_nand_load_image() */
-	arm_setup_stack(STACK_BASE + STACK_SIZE - 12);
-
-	imx_nand_load_image(_text, barebox_image_size);
-
-	board_init_lowlevel_return();
-}
-#endif
-
 static void __bare_init noinline setup_sdram(u32 memsize, u32 mode, u32 sdram_addr)
 {
 	volatile int loop;
@@ -188,9 +168,6 @@ void __bare_init __naked reset(void)
 	u32 r0, r1;
 	void *iomuxc_base = (void *)MX35_IOMUXC_BASE_ADDR;
 	int i;
-#ifdef CONFIG_NAND_IMX_BOOT
-	unsigned int *trg, *src;
-#endif
 
 	common_reset();
 
@@ -330,23 +307,17 @@ void __bare_init __naked reset(void)
 	setup_sdram(r0, ESDMISC_MDDR_EN, 0x80000f00);
 
 #ifdef CONFIG_NAND_IMX_BOOT
-	/* skip NAND boot if not running from NFC space */
-	r0 = get_pc();
-	if (r0 < MX35_NFC_BASE_ADDR || r0 > MX35_NFC_BASE_ADDR + 0x800)
-		board_init_lowlevel_return();
-
-	src = (unsigned int *)MX35_NFC_BASE_ADDR;
-	trg = (unsigned int *)_text;
+	/* Speed up NAND controller by adjusting the NFC divider */
+	r0 = readl(MX35_CCM_BASE_ADDR + MX35_CCM_PDR4);
+	r0 &= ~(0xf << 28);
+	r0 |= 0x1 << 28;
+	writel(r0, MX35_CCM_BASE_ADDR + MX35_CCM_PDR4);
 
-	/* Move ourselves out of NFC SRAM */
-	for (i = 0; i < 0x800 / sizeof(int); i++)
-		*trg++ = *src++;
+	/* setup a stack to be able to call imx35_barebox_boot_nand_external() */
+	arm_setup_stack(STACK_BASE + STACK_SIZE - 12);
 
-	/* Jump to SDRAM */
-	r0 = (unsigned int)&insdram;
-	__asm__ __volatile__("mov pc, %0" : : "r"(r0));
+	imx35_barebox_boot_nand_external();
 #else
 	board_init_lowlevel_return();
 #endif
 }
-
diff --git a/arch/arm/boards/guf-neso/lowlevel.c b/arch/arm/boards/guf-neso/lowlevel.c
index ad414d9..7a366d9 100644
--- a/arch/arm/boards/guf-neso/lowlevel.c
+++ b/arch/arm/boards/guf-neso/lowlevel.c
@@ -30,27 +30,12 @@
 #include <asm-generic/sections.h>
 #include <asm-generic/memory_layout.h>
 
-#ifdef CONFIG_NAND_IMX_BOOT
-static void __bare_init __naked insdram(void)
-{
-	/* setup a stack to be able to call imx_nand_load_image() */
-	arm_setup_stack(STACK_BASE + STACK_SIZE - 12);
-
-	imx_nand_load_image(_text, barebox_image_size);
-
-	board_init_lowlevel_return();
-}
-#endif
-
 #define ESDCTL0_VAL (ESDCTL0_SDE | ESDCTL0_ROW13 | ESDCTL0_COL10)
 
 void __bare_init __naked reset(void)
 {
 	uint32_t r;
 	int i;
-#ifdef CONFIG_NAND_IMX_BOOT
-	unsigned int *trg, *src;
-#endif
 
 	common_reset();
 
@@ -102,23 +87,11 @@ void __bare_init __naked reset(void)
 			MX27_ESDCTL_BASE_ADDR + IMX_ESDCTL0);
 
 #ifdef CONFIG_NAND_IMX_BOOT
-	/* skip NAND boot if not running from NFC space */
-	r = get_pc();
-	if (r < MX27_NFC_BASE_ADDR || r > MX27_NFC_BASE_ADDR + 0x800)
-		board_init_lowlevel_return();
-
-	src = (unsigned int *)MX27_NFC_BASE_ADDR;
-	trg = (unsigned int *)_text;
-
-	/* Move ourselves out of NFC SRAM */
-	for (i = 0; i < 0x800 / sizeof(int); i++)
-		*trg++ = *src++;
+	/* setup a stack to be able to call imx27_barebox_boot_nand_external() */
+	arm_setup_stack(STACK_BASE + STACK_SIZE - 12);
 
-	/* Jump to SDRAM */
-	r = (unsigned int)&insdram;
-	__asm__ __volatile__("mov pc, %0" : : "r"(r));
+	imx27_barebox_boot_nand_external();
 #else
 	board_init_lowlevel_return();
 #endif
 }
-
diff --git a/arch/arm/boards/imx21ads/imx21ads.c b/arch/arm/boards/imx21ads/imx21ads.c
index ca566c8..3d07633 100644
--- a/arch/arm/boards/imx21ads/imx21ads.c
+++ b/arch/arm/boards/imx21ads/imx21ads.c
@@ -189,12 +189,3 @@ static int mx21ads_console_init(void)
 }
 
 console_initcall(mx21ads_console_init);
-
-#ifdef CONFIG_NAND_IMX_BOOT
-void __bare_init nand_boot(void)
-{
-	imx_nand_load_image(_text, barebox_image_size);
-	board_init_lowlevel_return();
-}
-#endif
-
diff --git a/arch/arm/boards/imx21ads/lowlevel_init.S b/arch/arm/boards/imx21ads/lowlevel_init.S
index e52cac1..f06c964 100644
--- a/arch/arm/boards/imx21ads/lowlevel_init.S
+++ b/arch/arm/boards/imx21ads/lowlevel_init.S
@@ -120,28 +120,7 @@ reset:
 #ifdef CONFIG_NAND_IMX_BOOT
 	ldr	sp, =STACK_BASE + STACK_SIZE - 12	/* Setup a temporary stack in SDRAM */
 
-	ldr	r0, =MX21_NFC_BASE_ADDR		/* start of NFC SRAM        */
-	ldr	r2, =MX21_NFC_BASE_ADDR + 0x800	/* end of NFC SRAM          */
-
-	/* skip NAND boot if not running from NFC space */
-	cmp	pc, r0
-	bls	ret
-	cmp	pc, r2
-	bhi	ret
-
-	/* Move ourselves out of NFC SRAM */
-	ldr	r1, =_text
-
-copy_loop:
-	ldmia	r0!, {r3-r9}		/* copy from source address [r0]    */
-	stmia	r1!, {r3-r9}		/* copy to   target address [r1]    */
-	cmp	r0, r2			/* until source end address [r2]    */
-	ble	copy_loop
-
-	ldr	pc, =1f			/* Jump to SDRAM                    */
-1:
-	b	nand_boot		/* Load barebox from NAND Flash     */
-					/* SRAM to SDRAM                    */
+	b	imx21_barebox_boot_nand_external
 #endif /* CONFIG_NAND_IMX_BOOT */
 
 ret:
diff --git a/arch/arm/boards/karo-tx25/board.c b/arch/arm/boards/karo-tx25/board.c
index 98140b3..7e97d63 100644
--- a/arch/arm/boards/karo-tx25/board.c
+++ b/arch/arm/boards/karo-tx25/board.c
@@ -154,13 +154,6 @@ static int tx25_console_init(void)
 
 console_initcall(tx25_console_init);
 
-#ifdef CONFIG_NAND_IMX_BOOT
-void __bare_init nand_boot(void)
-{
-	imx_nand_load_image(_text, barebox_image_size);
-}
-#endif
-
 static iomux_v3_cfg_t tx25_lcdc_gpios[] = {
 	MX25_PAD_A18__GPIO_2_4,		/* LCD Reset (active LOW) */
 	MX25_PAD_PWM__GPIO_1_26,	/* LCD Backlight brightness 0: full 1: off */
diff --git a/arch/arm/boards/karo-tx25/lowlevel.c b/arch/arm/boards/karo-tx25/lowlevel.c
index 6f17958..b1afe18 100644
--- a/arch/arm/boards/karo-tx25/lowlevel.c
+++ b/arch/arm/boards/karo-tx25/lowlevel.c
@@ -28,18 +28,6 @@
 #include <asm-generic/sections.h>
 #include <asm-generic/memory_layout.h>
 
-#ifdef CONFIG_NAND_IMX_BOOT
-static void __bare_init __naked insdram(void)
-{
-	/* setup a stack to be able to call imx_nand_load_image() */
-	arm_setup_stack(STACK_BASE + STACK_SIZE - 12);
-
-	imx_nand_load_image(_text, barebox_image_size);
-
-	board_init_lowlevel_return();
-}
-#endif
-
 static inline void __bare_init  setup_sdram(uint32_t base, uint32_t esdctl,
 		uint32_t esdcfg)
 {
@@ -67,10 +55,6 @@ static inline void __bare_init  setup_sdram(uint32_t base, uint32_t esdctl,
 void __bare_init __naked reset(void)
 {
 	uint32_t r;
-#ifdef CONFIG_NAND_IMX_BOOT
-	unsigned int *trg, *src;
-	int i;
-#endif
 
 	common_reset();
 
@@ -149,21 +133,10 @@ void __bare_init __naked reset(void)
 	setup_sdram(0x90000000, ESDCTLVAL, ESDCFGVAL);
 
 #ifdef CONFIG_NAND_IMX_BOOT
-	/* skip NAND boot if not running from NFC space */
-	r = get_pc();
-	if (r < MX25_NFC_BASE_ADDR || r > MX25_NFC_BASE_ADDR + 0x800)
-		board_init_lowlevel_return();
-
-	src = (unsigned int *)MX25_NFC_BASE_ADDR;
-	trg = (unsigned int *)_text;
-
-	/* Move ourselves out of NFC SRAM */
-	for (i = 0; i < 0x800 / sizeof(int); i++)
-		*trg++ = *src++;
+	/* setup a stack to be able to call imx25_barebox_boot_nand_external() */
+	arm_setup_stack(STACK_BASE + STACK_SIZE - 12);
 
-	/* Jump to SDRAM */
-	r = (unsigned int)&insdram;
-	__asm__ __volatile__("mov pc, %0" : : "r"(r));
+	imx25_barebox_boot_nand_external();
 #else
 	board_init_lowlevel_return();
 #endif
diff --git a/arch/arm/boards/pcm037/lowlevel.c b/arch/arm/boards/pcm037/lowlevel.c
index baf63a5..da01732 100644
--- a/arch/arm/boards/pcm037/lowlevel.c
+++ b/arch/arm/boards/pcm037/lowlevel.c
@@ -30,28 +30,13 @@
 #include <asm/barebox-arm-head.h>
 #include <mach/esdctl.h>
 
-#ifdef CONFIG_NAND_IMX_BOOT
-static void __bare_init __naked insdram(void)
-{
-	/* setup a stack to be able to call imx_nand_load_image() */
-	arm_setup_stack(STACK_BASE + STACK_SIZE - 12);
-
-	imx_nand_load_image(_text, barebox_image_size);
-
-	board_init_lowlevel_return();
-}
-#endif
-
 #define ESDCTL0_VAL (ESDCTL0_SDE | ESDCTL0_ROW13 | ESDCTL0_COL10)
 
 void __bare_init __naked reset(void)
 {
 	uint32_t r;
 	volatile int v;
-#ifdef CONFIG_NAND_IMX_BOOT
-	int i;
-	unsigned int *trg, *src;
-#endif
+
 	common_reset();
 
 	writel(1 << 6, MX31_IPU_CTRL_BASE_ADDR);
@@ -141,21 +126,10 @@ void __bare_init __naked reset(void)
 #endif
 
 #ifdef CONFIG_NAND_IMX_BOOT
-	/* skip NAND boot if not running from NFC space */
-	r = get_pc();
-	if (r < MX31_NFC_BASE_ADDR || r > MX31_NFC_BASE_ADDR + 0x800)
-		board_init_lowlevel_return();
-
-	src = (unsigned int *)MX31_NFC_BASE_ADDR;
-	trg = (unsigned int *)_text;
-
-	/* Move ourselves out of NFC SRAM */
-	for (i = 0; i < 0x800 / sizeof(int); i++)
-		*trg++ = *src++;
+	/* setup a stack to be able to call imx31_barebox_boot_nand_external() */
+	arm_setup_stack(STACK_BASE + STACK_SIZE - 12);
 
-	/* Jump to SDRAM */
-	r = (unsigned int)&insdram;
-	__asm__ __volatile__("mov pc, %0" : : "r"(r));
+	imx31_barebox_boot_nand_external();
 #else
 	board_init_lowlevel_return();
 #endif
diff --git a/arch/arm/boards/pcm037/pcm037.c b/arch/arm/boards/pcm037/pcm037.c
index 7894ff3..959cc8a 100644
--- a/arch/arm/boards/pcm037/pcm037.c
+++ b/arch/arm/boards/pcm037/pcm037.c
@@ -253,11 +253,3 @@ static int imx31_console_init(void)
 }
 
 console_initcall(imx31_console_init);
-
-#ifdef CONFIG_NAND_IMX_BOOT
-void __bare_init nand_boot(void)
-{
-	imx_nand_load_image(_text, barebox_image_size);
-	board_init_lowlevel_return();
-}
-#endif
diff --git a/arch/arm/boards/pcm038/lowlevel.c b/arch/arm/boards/pcm038/lowlevel.c
index 2f93c31..4515107 100644
--- a/arch/arm/boards/pcm038/lowlevel.c
+++ b/arch/arm/boards/pcm038/lowlevel.c
@@ -31,27 +31,13 @@
 
 #include "pll.h"
 
-#ifdef CONFIG_NAND_IMX_BOOT
-static void __bare_init __naked insdram(void)
-{
-	/* setup a stack to be able to call imx_nand_load_image() */
-	arm_setup_stack(STACK_BASE + STACK_SIZE - 12);
-
-	imx_nand_load_image(_text, barebox_image_size);
-
-	board_init_lowlevel_return();
-}
-#endif
-
 #define ESDCTL0_VAL (ESDCTL0_SDE | ESDCTL0_ROW13 | ESDCTL0_COL10)
 
 void __bare_init __naked reset(void)
 {
 	uint32_t r;
 	int i;
-#ifdef CONFIG_NAND_IMX_BOOT
-	unsigned int *trg, *src;
-#endif
+
 	common_reset();
 
 	/* ahb lite ip interface */
@@ -108,23 +94,11 @@ void __bare_init __naked reset(void)
 			MX27_ESDCTL_BASE_ADDR + IMX_ESDCTL0);
 
 #ifdef CONFIG_NAND_IMX_BOOT
-	/* skip NAND boot if not running from NFC space */
-	r = get_pc();
-	if (r < MX27_NFC_BASE_ADDR || r > MX27_NFC_BASE_ADDR + 0x800)
-		board_init_lowlevel_return();
-
-	src = (unsigned int *)MX27_NFC_BASE_ADDR;
-	trg = (unsigned int *)_text;
-
-	/* Move ourselves out of NFC SRAM */
-	for (i = 0; i < 0x800 / sizeof(int); i++)
-		*trg++ = *src++;
+	/* setup a stack to be able to call mx27_barebox_boot_nand_external() */
+	arm_setup_stack(STACK_BASE + STACK_SIZE - 12);
 
-	/* Jump to SDRAM */
-	r = (unsigned int)&insdram;
-	__asm__ __volatile__("mov pc, %0" : : "r"(r));
+	imx27_barebox_boot_nand_external();
 #else
 	board_init_lowlevel_return();
 #endif
 }
-
diff --git a/arch/arm/boards/pcm043/lowlevel.c b/arch/arm/boards/pcm043/lowlevel.c
index 751f6ae..639064f 100644
--- a/arch/arm/boards/pcm043/lowlevel.c
+++ b/arch/arm/boards/pcm043/lowlevel.c
@@ -40,36 +40,13 @@
 #define CCM_PDR0_399	0x00011000
 #define CCM_PDR0_532	0x00001000
 
-#ifdef CONFIG_NAND_IMX_BOOT
-static void __bare_init __naked insdram(void)
-{
-	uint32_t r;
-
-	/* Speed up NAND controller by adjusting the NFC divider */
-	r = readl(MX35_CCM_BASE_ADDR + MX35_CCM_PDR4);
-	r &= ~(0xf << 28);
-	r |= 0x1 << 28;
-	writel(r, MX35_CCM_BASE_ADDR + MX35_CCM_PDR4);
-
-	/* setup a stack to be able to call imx_nand_load_image() */
-	arm_setup_stack(STACK_BASE + STACK_SIZE - 12);
-
-	imx_nand_load_image(_text, barebox_image_size);
-
-	board_init_lowlevel_return();
-}
-#endif
-
 void __bare_init __naked reset(void)
 {
 	uint32_t r, s;
 	unsigned long ccm_base = MX35_CCM_BASE_ADDR;
 	unsigned long iomuxc_base = MX35_IOMUXC_BASE_ADDR;
 	unsigned long esdctl_base = MX35_ESDCTL_BASE_ADDR;
-#ifdef CONFIG_NAND_IMX_BOOT
-	unsigned int *trg, *src;
-	int i;
-#endif
+
 	common_reset();
 
 	r = get_cr();
@@ -206,23 +183,17 @@ void __bare_init __naked reset(void)
 	writel(0x00002000, esdctl_base + IMX_ESDCTL1);
 
 #ifdef CONFIG_NAND_IMX_BOOT
-	/* skip NAND boot if not running from NFC space */
-	r = get_pc();
-	if (r < MX35_NFC_BASE_ADDR || r > MX35_NFC_BASE_ADDR + 0x800)
-		board_init_lowlevel_return();
-
-	src = (unsigned int *)MX35_NFC_BASE_ADDR;
-	trg = (unsigned int *)_text;
+	/* Speed up NAND controller by adjusting the NFC divider */
+	r = readl(MX35_CCM_BASE_ADDR + MX35_CCM_PDR4);
+	r &= ~(0xf << 28);
+	r |= 0x1 << 28;
+	writel(r, MX35_CCM_BASE_ADDR + MX35_CCM_PDR4);
 
-	/* Move ourselves out of NFC SRAM */
-	for (i = 0; i < 0x800 / sizeof(int); i++)
-		*trg++ = *src++;
+	/* setup a stack to be able to call imx35_barebox_boot_nand_external() */
+	arm_setup_stack(STACK_BASE + STACK_SIZE - 12);
 
-	/* Jump to SDRAM */
-	r = (unsigned int)&insdram;
-	__asm__ __volatile__("mov pc, %0" : : "r"(r));
+	imx35_barebox_boot_nand_external();
 #else
 	board_init_lowlevel_return();
 #endif
 }
-
diff --git a/arch/arm/boards/phycard-i.MX27/lowlevel_init.S b/arch/arm/boards/phycard-i.MX27/lowlevel_init.S
index 38cc55c..cb5d83d 100644
--- a/arch/arm/boards/phycard-i.MX27/lowlevel_init.S
+++ b/arch/arm/boards/phycard-i.MX27/lowlevel_init.S
@@ -111,31 +111,7 @@ reset:
 #ifdef CONFIG_NAND_IMX_BOOT
 	ldr	sp, =0xa0f00000		/* Setup a temporary stack in SDRAM */
 
-	ldr	r0, =MX27_NFC_BASE_ADDR		/* start of NFC SRAM                */
-	ldr	r2, =MX27_NFC_BASE_ADDR + 0x1000	/* end of NFC SRAM                  */
-
-	/* skip NAND boot if not running from NFC space */
-	cmp	pc, r0
-	bls	ret
-	cmp	pc, r2
-	bhi	ret
-
-	/* Move ourselves out of NFC SRAM */
-	ldr	r1, =_text
-
-copy_loop:
-	ldmia	r0!, {r3-r9}		/* copy from source address [r0]    */
-	stmia	r1!, {r3-r9}		/* copy to   target address [r1]    */
-	cmp	r0, r2			/* until source end address [r2]    */
-	ble	copy_loop
-
-	ldr	pc, =1f			/* Jump to SDRAM                    */
-1:
-	ldr	r0,=_text
-	ldr	r1,=_barebox_image_size
-	bl	imx_nand_load_image
-	b	board_init_lowlevel_return
-
+	b	imx27_barebox_boot_nand_external
 #endif /* CONFIG_NAND_IMX_BOOT */
 
 ret:
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
