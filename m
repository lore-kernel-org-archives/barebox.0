Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YT4mW-0006Vv-8V
 for barebox@lists.infradead.org; Wed, 04 Mar 2015 08:35:54 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  4 Mar 2015 09:35:27 +0100
Message-Id: <1425458128-8439-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] ARM: i.MX: boards: Setup stack before calling
 imx*_barebox_entry
To: Barebox List <barebox@lists.infradead.org>

This allows imx*_barebox_entry to use the stack.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/eukrea_cpuimx25/lowlevel.c         |  9 ++++-----
 arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S    |  5 ++---
 arch/arm/boards/eukrea_cpuimx35/lowlevel.c         |  5 ++---
 arch/arm/boards/eukrea_cpuimx51/lowlevel.c         |  1 +
 arch/arm/boards/freescale-mx25-3ds/lowlevel_init.S |  6 +++---
 arch/arm/boards/freescale-mx27-ads/lowlevel_init.S |  2 ++
 arch/arm/boards/freescale-mx35-3ds/lowlevel_init.S |  6 +++---
 arch/arm/boards/freescale-mx51-babbage/lowlevel.c  |  1 +
 arch/arm/boards/freescale-mx53-qsb/lowlevel.c      |  2 ++
 arch/arm/boards/freescale-mx53-smd/lowlevel.c      |  1 +
 arch/arm/boards/freescale-mx53-vmx53/lowlevel.c    |  1 +
 arch/arm/boards/guf-cupid/lowlevel.c               |  3 ---
 arch/arm/boards/guf-neso/lowlevel.c                |  8 +++-----
 arch/arm/boards/guf-vincell/lowlevel.c             |  1 +
 arch/arm/boards/karo-tx51/lowlevel.c               |  1 +
 arch/arm/boards/karo-tx53/lowlevel.c               |  1 +
 arch/arm/boards/phytec-phycore-imx31/lowlevel.c    | 10 ++++------
 arch/arm/boards/phytec-phycore-imx35/lowlevel.c    |  5 ++---
 arch/arm/boards/scb9328/lowlevel_init.S            |  4 +++-
 19 files changed, 37 insertions(+), 35 deletions(-)

diff --git a/arch/arm/boards/eukrea_cpuimx25/lowlevel.c b/arch/arm/boards/eukrea_cpuimx25/lowlevel.c
index 4edbbe4..7ae8a18 100644
--- a/arch/arm/boards/eukrea_cpuimx25/lowlevel.c
+++ b/arch/arm/boards/eukrea_cpuimx25/lowlevel.c
@@ -37,6 +37,8 @@ void __bare_init __naked barebox_arm_reset_vector(void)
 
 	arm_cpu_lowlevel_init();
 
+	arm_setup_stack(MX25_IRAM_BASE_ADDR + MX25_IRAM_SIZE - 12);
+
 	/* restart the MPLL and wait until it's stable */
 	writel(readl(MX25_CCM_BASE_ADDR + MX25_CCM_CCTL) | (1 << 27),
 			MX25_CCM_BASE_ADDR + MX25_CCM_CCTL);
@@ -127,12 +129,9 @@ void __bare_init __naked barebox_arm_reset_vector(void)
 	writeb(0xda, MX25_CSD0_BASE_ADDR + 0x1000000);
 	writel(0x82216080, MX25_ESDCTL_BASE_ADDR + IMX_ESDCTL0);
 
-	if (IS_ENABLED(CONFIG_ARCH_IMX_EXTERNAL_BOOT_NAND)) {
-		/* setup a stack to be able to call imx25_barebox_boot_nand_external() */
-		arm_setup_stack(MX25_IRAM_BASE_ADDR + MX25_IRAM_SIZE - 12);
-
+	if (IS_ENABLED(CONFIG_ARCH_IMX_EXTERNAL_BOOT_NAND))
 		imx25_barebox_boot_nand_external(0);
-	}
+
 out:
 	imx25_barebox_entry(NULL);
 }
diff --git a/arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S b/arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S
index f8e3c23..b350483 100644
--- a/arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S
+++ b/arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S
@@ -76,6 +76,8 @@ barebox_arm_reset_vector:
 
 	bl		arm_cpu_lowlevel_init
 
+	ldr	sp, =MX27_IRAM_BASE_ADDR + MX27_IRAM_SIZE - 4;
+
 	/* ahb lite ip interface */
 	writel(0x20040304, MX27_AIPI_BASE_ADDR + MX27_AIPI1_PSR0)
 	writel(0xDFFBFCFB, MX27_AIPI_BASE_ADDR + MX27_AIPI1_PSR1)
@@ -124,9 +126,6 @@ barebox_arm_reset_vector:
 	sdram_init
 
 #ifdef CONFIG_ARCH_IMX_EXTERNAL_BOOT_NAND
-	/* Setup a temporary stack in SDRAM */
-	ldr	sp, =MX27_IRAM_BASE_ADDR + MX27_IRAM_SIZE - 4;
-
 	mov	r0, #0
 	b	imx27_barebox_boot_nand_external
 #endif /* CONFIG_ARCH_IMX_EXTERNAL_BOOT_NAND */
diff --git a/arch/arm/boards/eukrea_cpuimx35/lowlevel.c b/arch/arm/boards/eukrea_cpuimx35/lowlevel.c
index 4788ae2..83c25fe 100644
--- a/arch/arm/boards/eukrea_cpuimx35/lowlevel.c
+++ b/arch/arm/boards/eukrea_cpuimx35/lowlevel.c
@@ -43,6 +43,8 @@ void __bare_init __naked barebox_arm_reset_vector(void)
 
 	arm_cpu_lowlevel_init();
 
+	arm_setup_stack(MX35_IRAM_BASE_ADDR + MX35_IRAM_SIZE - 8);
+
 	r = get_cr();
 	r |= CR_Z; /* Flow prediction (Z) */
 	r |= CR_U; /* unaligned accesses  */
@@ -137,9 +139,6 @@ void __bare_init __naked barebox_arm_reset_vector(void)
 		r |= 0x1 << 28;
 		writel(r, MX35_CCM_BASE_ADDR + MX35_CCM_PDR4);
 
-		/* setup a stack to be able to call imx35_barebox_boot_nand_external() */
-		arm_setup_stack(MX35_IRAM_BASE_ADDR + MX35_IRAM_SIZE - 8);
-
 		imx35_barebox_boot_nand_external(0);
 	}
 
diff --git a/arch/arm/boards/eukrea_cpuimx51/lowlevel.c b/arch/arm/boards/eukrea_cpuimx51/lowlevel.c
index 7a85b48..ad89076 100644
--- a/arch/arm/boards/eukrea_cpuimx51/lowlevel.c
+++ b/arch/arm/boards/eukrea_cpuimx51/lowlevel.c
@@ -6,5 +6,6 @@
 void __naked barebox_arm_reset_vector(void)
 {
 	imx5_cpu_lowlevel_init();
+	arm_setup_stack(0x20000000 - 16);
 	imx51_barebox_entry(NULL);
 }
diff --git a/arch/arm/boards/freescale-mx25-3ds/lowlevel_init.S b/arch/arm/boards/freescale-mx25-3ds/lowlevel_init.S
index 4ca4c82..16a9c41 100644
--- a/arch/arm/boards/freescale-mx25-3ds/lowlevel_init.S
+++ b/arch/arm/boards/freescale-mx25-3ds/lowlevel_init.S
@@ -71,6 +71,9 @@ barebox_arm_reset_vector:
 	writel(0x000FDFFF, MX25_CCM_BASE_ADDR + MX25_CCM_CGCR2)
 	writel(0x0000FEFF, MX25_CCM_BASE_ADDR + MX25_CCM_MCR)
 
+	/* Setup a temporary stack in SRAM */
+	ldr	sp, =MX25_IRAM_BASE_ADDR + MX25_IRAM_SIZE - 4
+
 	/* Skip SDRAM initialization if we run from RAM */
 	cmp	pc, #0x80000000
 	bls	1f
@@ -99,9 +102,6 @@ barebox_arm_reset_vector:
 
 #ifdef CONFIG_ARCH_IMX_EXTERNAL_BOOT_NAND
 
-	/* Setup a temporary stack in SRAM */
-	ldr	sp, =MX25_IRAM_BASE_ADDR + MX25_IRAM_SIZE - 4
-
 	mov	r0, #0
 	b	imx25_barebox_boot_nand_external
 #endif /* CONFIG_ARCH_IMX_EXTERNAL_BOOT_NAND */
diff --git a/arch/arm/boards/freescale-mx27-ads/lowlevel_init.S b/arch/arm/boards/freescale-mx27-ads/lowlevel_init.S
index 45f3992..e79b96d 100644
--- a/arch/arm/boards/freescale-mx27-ads/lowlevel_init.S
+++ b/arch/arm/boards/freescale-mx27-ads/lowlevel_init.S
@@ -54,6 +54,8 @@ barebox_arm_reset_vector:
 
 	bl arm_cpu_lowlevel_init
 
+	ldr	sp, =MX27_IRAM_BASE_ADDR + MX27_IRAM_SIZE - 4;
+
 	/* ahb lite ip interface */
 	writel(0x20040304, MX27_AIPI_BASE_ADDR + MX27_AIPI1_PSR0)
 	writel(0xDFFBFCFB, MX27_AIPI_BASE_ADDR + MX27_AIPI1_PSR1)
diff --git a/arch/arm/boards/freescale-mx35-3ds/lowlevel_init.S b/arch/arm/boards/freescale-mx35-3ds/lowlevel_init.S
index 6d37f35..0f9e813 100644
--- a/arch/arm/boards/freescale-mx35-3ds/lowlevel_init.S
+++ b/arch/arm/boards/freescale-mx35-3ds/lowlevel_init.S
@@ -60,6 +60,9 @@ CCM_BASE_ADDR_W:	.word	MX35_CCM_BASE_ADDR
 barebox_arm_reset_vector:
 	bl	arm_cpu_lowlevel_init
 
+	/* Setup a temporary stack in internal SRAM */
+	ldr	sp, =MX35_IRAM_BASE_ADDR + MX35_IRAM_SIZE - 4
+
 	mrc	15, 0, r1, c1, c0, 0
 
 	mrc	15, 0, r0, c1, c0, 1
@@ -155,9 +158,6 @@ barebox_arm_reset_vector:
 	str	r3, [r0, #0x30]
 
 #ifdef CONFIG_ARCH_IMX_EXTERNAL_BOOT_NAND
-	/* Setup a temporary stack in internal SRAM */
-	ldr	sp, =MX35_IRAM_BASE_ADDR + MX35_IRAM_SIZE - 4
-
 	mov	r0, #0
 	b	imx35_barebox_boot_nand_external
 #endif /* CONFIG_ARCH_IMX_EXTERNAL_BOOT_NAND */
diff --git a/arch/arm/boards/freescale-mx51-babbage/lowlevel.c b/arch/arm/boards/freescale-mx51-babbage/lowlevel.c
index 1b9ba16..0f453f3 100644
--- a/arch/arm/boards/freescale-mx51-babbage/lowlevel.c
+++ b/arch/arm/boards/freescale-mx51-babbage/lowlevel.c
@@ -11,6 +11,7 @@ ENTRY_FUNCTION(start_imx51_babbage, r0, r1, r2)
 	void *fdt;
 
 	imx5_cpu_lowlevel_init();
+	arm_setup_stack(0x20000000 - 16);
 
 	fdt = __dtb_imx51_babbage_start - get_runtime_offset();
 
diff --git a/arch/arm/boards/freescale-mx53-qsb/lowlevel.c b/arch/arm/boards/freescale-mx53-qsb/lowlevel.c
index aff6e3b..ce6a290 100644
--- a/arch/arm/boards/freescale-mx53-qsb/lowlevel.c
+++ b/arch/arm/boards/freescale-mx53-qsb/lowlevel.c
@@ -12,6 +12,7 @@ ENTRY_FUNCTION(start_imx53_loco, r0, r1, r2)
 	void *fdt;
 
 	imx5_cpu_lowlevel_init();
+	arm_setup_stack(0xf8020000 - 8);
 
 	fdt = __dtb_imx53_qsb_start - get_runtime_offset();
 
@@ -25,6 +26,7 @@ ENTRY_FUNCTION(start_imx53_loco_r, r0, r1, r2)
 	void *fdt;
 
 	imx5_cpu_lowlevel_init();
+	arm_setup_stack(0xf8020000 - 8);
 
 	fdt = __dtb_imx53_qsrb_start - get_runtime_offset();
 
diff --git a/arch/arm/boards/freescale-mx53-smd/lowlevel.c b/arch/arm/boards/freescale-mx53-smd/lowlevel.c
index 306db09..5ad0312 100644
--- a/arch/arm/boards/freescale-mx53-smd/lowlevel.c
+++ b/arch/arm/boards/freescale-mx53-smd/lowlevel.c
@@ -6,5 +6,6 @@
 void __naked barebox_arm_reset_vector(void)
 {
 	imx5_cpu_lowlevel_init();
+	arm_setup_stack(0xf8020000 - 8);
 	imx53_barebox_entry(NULL);
 }
diff --git a/arch/arm/boards/freescale-mx53-vmx53/lowlevel.c b/arch/arm/boards/freescale-mx53-vmx53/lowlevel.c
index 487a9fd..3545a1c 100644
--- a/arch/arm/boards/freescale-mx53-vmx53/lowlevel.c
+++ b/arch/arm/boards/freescale-mx53-vmx53/lowlevel.c
@@ -11,6 +11,7 @@ ENTRY_FUNCTION(start_imx53_vmx53, r0, r1, r2)
 	void *fdt;
 
 	imx5_cpu_lowlevel_init();
+	arm_setup_stack(0xf8020000 - 8);
 
 	fdt = __dtb_imx53_voipac_bsb_start - get_runtime_offset();
 
diff --git a/arch/arm/boards/guf-cupid/lowlevel.c b/arch/arm/boards/guf-cupid/lowlevel.c
index 6fc90fb..bcd2a24 100644
--- a/arch/arm/boards/guf-cupid/lowlevel.c
+++ b/arch/arm/boards/guf-cupid/lowlevel.c
@@ -313,9 +313,6 @@ void __bare_init __naked barebox_arm_reset_vector(void)
 		r0 |= 0x1 << 28;
 		writel(r0, MX35_CCM_BASE_ADDR + MX35_CCM_PDR4);
 
-		/* setup a stack to be able to call imx35_barebox_boot_nand_external() */
-		arm_setup_stack(MX35_IRAM_BASE_ADDR + MX35_IRAM_SIZE - 8);
-
 		imx35_barebox_boot_nand_external(0);
 	}
 
diff --git a/arch/arm/boards/guf-neso/lowlevel.c b/arch/arm/boards/guf-neso/lowlevel.c
index 2828359..98512a9 100644
--- a/arch/arm/boards/guf-neso/lowlevel.c
+++ b/arch/arm/boards/guf-neso/lowlevel.c
@@ -39,6 +39,8 @@ void __bare_init __naked barebox_arm_reset_vector(void)
 
 	arm_cpu_lowlevel_init();
 
+	arm_setup_stack(MX27_IRAM_BASE_ADDR + MX27_IRAM_SIZE - 8);
+
 	/* ahb lite ip interface */
 	writel(0x20040304, MX27_AIPI_BASE_ADDR + MX27_AIPI1_PSR0);
 	writel(0xDFFBFCFB, MX27_AIPI_BASE_ADDR + MX27_AIPI1_PSR1);
@@ -86,12 +88,8 @@ void __bare_init __naked barebox_arm_reset_vector(void)
 			ESDCTL0_BL | ESDCTL0_SMODE_NORMAL,
 			MX27_ESDCTL_BASE_ADDR + IMX_ESDCTL0);
 
-	if (IS_ENABLED(CONFIG_ARCH_IMX_EXTERNAL_BOOT_NAND)) {
-		/* setup a stack to be able to call imx27_barebox_boot_nand_external() */
-		arm_setup_stack(MX27_IRAM_BASE_ADDR + MX27_IRAM_SIZE - 8);
-
+	if (IS_ENABLED(CONFIG_ARCH_IMX_EXTERNAL_BOOT_NAND))
 		imx27_barebox_boot_nand_external(0);
-	}
 
 out:
 	imx27_barebox_entry(NULL);
diff --git a/arch/arm/boards/guf-vincell/lowlevel.c b/arch/arm/boards/guf-vincell/lowlevel.c
index 00e34fb..629529d 100644
--- a/arch/arm/boards/guf-vincell/lowlevel.c
+++ b/arch/arm/boards/guf-vincell/lowlevel.c
@@ -129,6 +129,7 @@ void __bare_init __naked barebox_arm_reset_vector(void)
 	u32 r;
 
 	imx5_cpu_lowlevel_init();
+	arm_setup_stack(0xf8020000 - 8);
 
 	/* Skip SDRAM initialization if we run from RAM */
 	r = get_pc();
diff --git a/arch/arm/boards/karo-tx51/lowlevel.c b/arch/arm/boards/karo-tx51/lowlevel.c
index 7a85b48..ad89076 100644
--- a/arch/arm/boards/karo-tx51/lowlevel.c
+++ b/arch/arm/boards/karo-tx51/lowlevel.c
@@ -6,5 +6,6 @@
 void __naked barebox_arm_reset_vector(void)
 {
 	imx5_cpu_lowlevel_init();
+	arm_setup_stack(0x20000000 - 16);
 	imx51_barebox_entry(NULL);
 }
diff --git a/arch/arm/boards/karo-tx53/lowlevel.c b/arch/arm/boards/karo-tx53/lowlevel.c
index 8adbd8d..fdfb1b7 100644
--- a/arch/arm/boards/karo-tx53/lowlevel.c
+++ b/arch/arm/boards/karo-tx53/lowlevel.c
@@ -8,6 +8,7 @@
 void __naked barebox_arm_reset_vector(void)
 {
 	imx5_cpu_lowlevel_init();
+	arm_setup_stack(0xf8020000 - 8);
 
 	/*
 	 * For the TX53 rev 8030 the SDRAM setup is not stable without
diff --git a/arch/arm/boards/phytec-phycore-imx31/lowlevel.c b/arch/arm/boards/phytec-phycore-imx31/lowlevel.c
index 44fc5bc..27e2756 100644
--- a/arch/arm/boards/phytec-phycore-imx31/lowlevel.c
+++ b/arch/arm/boards/phytec-phycore-imx31/lowlevel.c
@@ -39,6 +39,8 @@ void __bare_init __naked barebox_arm_reset_vector(void)
 
 	arm_cpu_lowlevel_init();
 
+	arm_setup_stack(MX31_IRAM_BASE_ADDR + MX31_IRAM_SIZE - 12);
+
 	writel(1 << 6, MX31_IPU_CTRL_BASE_ADDR);
 
 	writel(0x074B0BF5, MX31_CCM_BASE_ADDR + MX31_CCM_CCMR);
@@ -125,12 +127,8 @@ void __bare_init __naked barebox_arm_reset_vector(void)
 	writel(0x0000000c, MX31_ESDCTL_BASE_ADDR + IMX_ESDMISC);
 #endif
 
-	if (IS_ENABLED(CONFIG_ARCH_IMX_EXTERNAL_BOOT_NAND)) {
-		/* setup a stack to be able to call imx31_barebox_boot_nand_external() */
-		arm_setup_stack(MX31_IRAM_BASE_ADDR + MX31_IRAM_SIZE - 12);
-
+	if (IS_ENABLED(CONFIG_ARCH_IMX_EXTERNAL_BOOT_NAND))
 		imx31_barebox_boot_nand_external(0);
-	} else {
+	else
 		imx31_barebox_entry(NULL);
-	}
 }
diff --git a/arch/arm/boards/phytec-phycore-imx35/lowlevel.c b/arch/arm/boards/phytec-phycore-imx35/lowlevel.c
index 919a9af..1ad5439 100644
--- a/arch/arm/boards/phytec-phycore-imx35/lowlevel.c
+++ b/arch/arm/boards/phytec-phycore-imx35/lowlevel.c
@@ -49,6 +49,8 @@ void __bare_init __naked barebox_arm_reset_vector(void)
 
 	arm_cpu_lowlevel_init();
 
+	arm_setup_stack(MX35_IRAM_BASE_ADDR + MX35_IRAM_SIZE - 8);
+
 	r = get_cr();
 	r |= CR_Z; /* Flow prediction (Z) */
 	r |= CR_U; /* unaligned accesses  */
@@ -189,9 +191,6 @@ void __bare_init __naked barebox_arm_reset_vector(void)
 		r |= 0x1 << 28;
 		writel(r, MX35_CCM_BASE_ADDR + MX35_CCM_PDR4);
 
-		/* setup a stack to be able to call imx35_barebox_boot_nand_external() */
-		arm_setup_stack(MX35_IRAM_BASE_ADDR + MX35_IRAM_SIZE - 8);
-
 		imx35_barebox_boot_nand_external(0);
 	}
 
diff --git a/arch/arm/boards/scb9328/lowlevel_init.S b/arch/arm/boards/scb9328/lowlevel_init.S
index 717bb90..73afc09 100644
--- a/arch/arm/boards/scb9328/lowlevel_init.S
+++ b/arch/arm/boards/scb9328/lowlevel_init.S
@@ -100,7 +100,7 @@ barebox_arm_reset_vector:
 	cmp	pc, #0x09000000
 	bhi	1f
 
-	b imx1_barebox_entry
+	b 2f
 
 1:
 
@@ -129,5 +129,7 @@ barebox_arm_reset_vector:
 	writel(0x0, 0x08223000)
 	/* Set to Normal Mode CAS 2 */
 	writel(0x810a8200, MX1_SDRAMC_BASE_ADDR + MX1_SDCTL0)
+2:
+	ldr     sp, =0x08100000 - 4;
 
 	b imx1_barebox_entry
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
