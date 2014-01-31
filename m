Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W9F0b-0001GP-Ku
 for barebox@lists.infradead.org; Fri, 31 Jan 2014 14:24:12 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 31 Jan 2014 15:23:23 +0100
Message-Id: <1391178204-20889-15-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1391178204-20889-1-git-send-email-s.hauer@pengutronix.de>
References: <1391178204-20889-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 14/15] ARM: i.MX: cleanup bootmode selection
To: barebox@lists.infradead.org

Which bootmode is selected has no longer to be chosen by Kconfig. The
boards can decide themselves which bootmode they want to support. This
makes it unnecesary to ask the user which bootmode shall be supported,
so the "Select boot mode" becomes invisible and both support will be
compiled in as needed by the boards. NAND_IMX_BOOT goes away and the
already existing ARCH_IMX_EXTERNAL_BOOT_NAND can now be used for the
boards to depend on external nand boot.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/eukrea_cpuimx25/lowlevel.c         | 10 ++++-----
 arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S    |  4 ++--
 arch/arm/boards/eukrea_cpuimx35/lowlevel.c         | 25 +++++++++++----------
 .../boards/freescale-mx25-3-stack/lowlevel_init.S  |  5 +++--
 .../boards/freescale-mx35-3-stack/lowlevel_init.S  |  4 ++--
 arch/arm/boards/guf-cupid/lowlevel.c               | 21 ++++++++---------
 arch/arm/boards/guf-neso/lowlevel.c                | 11 ++++-----
 arch/arm/boards/imx21ads/lowlevel_init.S           |  5 +++--
 arch/arm/boards/pcm037/lowlevel.c                  | 14 ++++++------
 arch/arm/boards/pcm038/lowlevel.c                  | 10 ++++-----
 arch/arm/boards/pcm043/lowlevel.c                  | 25 +++++++++++----------
 arch/arm/boards/phycard-i.MX27/lowlevel.c          |  4 ----
 arch/arm/mach-imx/Kconfig                          | 26 +++++-----------------
 13 files changed, 76 insertions(+), 88 deletions(-)

diff --git a/arch/arm/boards/eukrea_cpuimx25/lowlevel.c b/arch/arm/boards/eukrea_cpuimx25/lowlevel.c
index 07659f5..f0bf2c7 100644
--- a/arch/arm/boards/eukrea_cpuimx25/lowlevel.c
+++ b/arch/arm/boards/eukrea_cpuimx25/lowlevel.c
@@ -127,12 +127,12 @@ void __bare_init __naked barebox_arm_reset_vector(void)
 	writeb(0xda, MX25_CSD0_BASE_ADDR + 0x1000000);
 	writel(0x82216080, MX25_ESDCTL_BASE_ADDR + IMX_ESDCTL0);
 
-#ifdef CONFIG_NAND_IMX_BOOT
-	/* setup a stack to be able to call imx25_barebox_boot_nand_external() */
-	arm_setup_stack(STACK_BASE + STACK_SIZE - 12);
+	if (IS_ENABLED(CONFIG_ARCH_IMX_EXTERNAL_BOOT_NAND)) {
+		/* setup a stack to be able to call imx25_barebox_boot_nand_external() */
+		arm_setup_stack(MX25_IRAM_BASE_ADDR + MX25_IRAM_SIZE - 12);
 
-	imx25_barebox_boot_nand_external(0);
-#endif
+		imx25_barebox_boot_nand_external(0);
+	}
 out:
 	imx25_barebox_entry(0);
 }
diff --git a/arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S b/arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S
index ae1391c..f8e3c23 100644
--- a/arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S
+++ b/arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S
@@ -123,13 +123,13 @@ barebox_arm_reset_vector:
 1:
 	sdram_init
 
-#ifdef CONFIG_NAND_IMX_BOOT
+#ifdef CONFIG_ARCH_IMX_EXTERNAL_BOOT_NAND
 	/* Setup a temporary stack in SDRAM */
 	ldr	sp, =MX27_IRAM_BASE_ADDR + MX27_IRAM_SIZE - 4;
 
 	mov	r0, #0
 	b	imx27_barebox_boot_nand_external
-#endif /* CONFIG_NAND_IMX_BOOT */
+#endif /* CONFIG_ARCH_IMX_EXTERNAL_BOOT_NAND */
 
 ret:
 	b	imx27_barebox_entry
diff --git a/arch/arm/boards/eukrea_cpuimx35/lowlevel.c b/arch/arm/boards/eukrea_cpuimx35/lowlevel.c
index d03e110..b8ba3c8 100644
--- a/arch/arm/boards/eukrea_cpuimx35/lowlevel.c
+++ b/arch/arm/boards/eukrea_cpuimx35/lowlevel.c
@@ -130,18 +130,19 @@ void __bare_init __naked barebox_arm_reset_vector(void)
 	writeb(0xda, MX35_CSD0_BASE_ADDR + 0x2000000);
 	writel(0x82228080, MX35_ESDCTL_BASE_ADDR + IMX_ESDCTL0);
 
-#ifdef CONFIG_NAND_IMX_BOOT
-	/* Speed up NAND controller by adjusting the NFC divider */
-	r = readl(MX35_CCM_BASE_ADDR + MX35_CCM_PDR4);
-	r &= ~(0xf << 28);
-	r |= 0x1 << 28;
-	writel(r, MX35_CCM_BASE_ADDR + MX35_CCM_PDR4);
-
-	/* setup a stack to be able to call imx35_barebox_boot_nand_external() */
-	arm_setup_stack(MX35_IRAM_BASE_ADDR + MX35_IRAM_SIZE - 8);
-
-	imx35_barebox_boot_nand_external(0);
-#endif
+	if (IS_ENABLED(CONFIG_ARCH_IMX_EXTERNAL_BOOT_NAND)) {
+		/* Speed up NAND controller by adjusting the NFC divider */
+		r = readl(MX35_CCM_BASE_ADDR + MX35_CCM_PDR4);
+		r &= ~(0xf << 28);
+		r |= 0x1 << 28;
+		writel(r, MX35_CCM_BASE_ADDR + MX35_CCM_PDR4);
+
+		/* setup a stack to be able to call imx35_barebox_boot_nand_external() */
+		arm_setup_stack(MX35_IRAM_BASE_ADDR + MX35_IRAM_SIZE - 8);
+
+		imx35_barebox_boot_nand_external(0);
+	}
+
 out:
 	imx35_barebox_entry(0);
 }
diff --git a/arch/arm/boards/freescale-mx25-3-stack/lowlevel_init.S b/arch/arm/boards/freescale-mx25-3-stack/lowlevel_init.S
index 8446c6f..4ca4c82 100644
--- a/arch/arm/boards/freescale-mx25-3-stack/lowlevel_init.S
+++ b/arch/arm/boards/freescale-mx25-3-stack/lowlevel_init.S
@@ -97,13 +97,14 @@ barebox_arm_reset_vector:
 	ldr r3, ESDCTL_DELAY5
 	str r3, [r0, #0x30]
 
-#ifdef CONFIG_NAND_IMX_BOOT
+#ifdef CONFIG_ARCH_IMX_EXTERNAL_BOOT_NAND
+
 	/* Setup a temporary stack in SRAM */
 	ldr	sp, =MX25_IRAM_BASE_ADDR + MX25_IRAM_SIZE - 4
 
 	mov	r0, #0
 	b	imx25_barebox_boot_nand_external
-#endif /* CONFIG_NAND_IMX_BOOT */
+#endif /* CONFIG_ARCH_IMX_EXTERNAL_BOOT_NAND */
 
 ret:
 	b	imx25_barebox_entry
diff --git a/arch/arm/boards/freescale-mx35-3-stack/lowlevel_init.S b/arch/arm/boards/freescale-mx35-3-stack/lowlevel_init.S
index cb9ed0a..6d37f35 100644
--- a/arch/arm/boards/freescale-mx35-3-stack/lowlevel_init.S
+++ b/arch/arm/boards/freescale-mx35-3-stack/lowlevel_init.S
@@ -154,13 +154,13 @@ barebox_arm_reset_vector:
 	ldr	r3, =ESDCTL_DELAY_LINE5
 	str	r3, [r0, #0x30]
 
-#ifdef CONFIG_NAND_IMX_BOOT
+#ifdef CONFIG_ARCH_IMX_EXTERNAL_BOOT_NAND
 	/* Setup a temporary stack in internal SRAM */
 	ldr	sp, =MX35_IRAM_BASE_ADDR + MX35_IRAM_SIZE - 4
 
 	mov	r0, #0
 	b	imx35_barebox_boot_nand_external
-#endif /* CONFIG_NAND_IMX_BOOT */
+#endif /* CONFIG_ARCH_IMX_EXTERNAL_BOOT_NAND */
 
 	b	imx35_barebox_entry
 
diff --git a/arch/arm/boards/guf-cupid/lowlevel.c b/arch/arm/boards/guf-cupid/lowlevel.c
index d5dce16..4c0de9c 100644
--- a/arch/arm/boards/guf-cupid/lowlevel.c
+++ b/arch/arm/boards/guf-cupid/lowlevel.c
@@ -306,18 +306,19 @@ void __bare_init __naked barebox_arm_reset_vector(void)
 	r0 = ESDCTL0_SDE | ESDCTL0_ROW14 | ESDCTL0_COL10 | ESDCTL0_DSIZ_31_0; /* 1024 MBit DDR-SDRAM */
 	setup_sdram(r0, ESDMISC_MDDR_EN, 0x80000f00);
 
-#ifdef CONFIG_NAND_IMX_BOOT
-	/* Speed up NAND controller by adjusting the NFC divider */
-	r0 = readl(MX35_CCM_BASE_ADDR + MX35_CCM_PDR4);
-	r0 &= ~(0xf << 28);
-	r0 |= 0x1 << 28;
-	writel(r0, MX35_CCM_BASE_ADDR + MX35_CCM_PDR4);
+	if (IS_ENABLED(CONFIG_ARCH_IMX_EXTERNAL_BOOT_NAND)) {
+		/* Speed up NAND controller by adjusting the NFC divider */
+		r0 = readl(MX35_CCM_BASE_ADDR + MX35_CCM_PDR4);
+		r0 &= ~(0xf << 28);
+		r0 |= 0x1 << 28;
+		writel(r0, MX35_CCM_BASE_ADDR + MX35_CCM_PDR4);
 
-	/* setup a stack to be able to call imx35_barebox_boot_nand_external() */
-	arm_setup_stack(MX35_IRAM_BASE_ADDR + MX35_IRAM_SIZE - 8);
+		/* setup a stack to be able to call imx35_barebox_boot_nand_external() */
+		arm_setup_stack(MX35_IRAM_BASE_ADDR + MX35_IRAM_SIZE - 8);
+
+		imx35_barebox_boot_nand_external(0);
+	}
 
-	imx35_barebox_boot_nand_external(0);
-#endif
 out:
 	imx35_barebox_entry(0);
 }
diff --git a/arch/arm/boards/guf-neso/lowlevel.c b/arch/arm/boards/guf-neso/lowlevel.c
index c3323ee..d26ee73 100644
--- a/arch/arm/boards/guf-neso/lowlevel.c
+++ b/arch/arm/boards/guf-neso/lowlevel.c
@@ -86,12 +86,13 @@ void __bare_init __naked barebox_arm_reset_vector(void)
 			ESDCTL0_BL | ESDCTL0_SMODE_NORMAL,
 			MX27_ESDCTL_BASE_ADDR + IMX_ESDCTL0);
 
-#ifdef CONFIG_NAND_IMX_BOOT
-	/* setup a stack to be able to call imx27_barebox_boot_nand_external() */
-	arm_setup_stack(MX27_IRAM_BASE_ADDR + MX27_IRAM_SIZE - 8);
+	if (IS_ENABLED(CONFIG_ARCH_IMX_EXTERNAL_BOOT_NAND)) {
+		/* setup a stack to be able to call imx27_barebox_boot_nand_external() */
+		arm_setup_stack(MX27_IRAM_BASE_ADDR + MX27_IRAM_SIZE - 8);
+
+		imx27_barebox_boot_nand_external(0);
+	}
 
-	imx27_barebox_boot_nand_external(0);
-#endif
 out:
 	imx27_barebox_entry(0);
 }
diff --git a/arch/arm/boards/imx21ads/lowlevel_init.S b/arch/arm/boards/imx21ads/lowlevel_init.S
index 09ca4a4..471390f 100644
--- a/arch/arm/boards/imx21ads/lowlevel_init.S
+++ b/arch/arm/boards/imx21ads/lowlevel_init.S
@@ -118,12 +118,13 @@ barebox_arm_reset_vector:
 	ldr	r1, =0x6419a007
 	str	r1, [r0]
 
-#ifdef CONFIG_NAND_IMX_BOOT
+#ifdef CONFIG_ARCH_IMX_EXTERNAL_BOOT_NAND {
+
 	/* Setup a temporary stack in SRAM */
 	ldr	sp, =MX21_IRAM_BASE_ADDR + MX21_IRAM_SIZE - 4
 
 	b	imx21_barebox_boot_nand_external
-#endif /* CONFIG_NAND_IMX_BOOT */
+#endif /* CONFIG_ARCH_IMX_EXTERNAL_BOOT_NAND */
 
 ret:
 	mov	r0, #0xc0000000
diff --git a/arch/arm/boards/pcm037/lowlevel.c b/arch/arm/boards/pcm037/lowlevel.c
index ae2d8c0..cd894c2 100644
--- a/arch/arm/boards/pcm037/lowlevel.c
+++ b/arch/arm/boards/pcm037/lowlevel.c
@@ -125,12 +125,12 @@ void __bare_init __naked barebox_arm_reset_vector(void)
 	writel(0x0000000c, MX31_ESDCTL_BASE_ADDR + IMX_ESDMISC);
 #endif
 
-#ifdef CONFIG_NAND_IMX_BOOT
-	/* setup a stack to be able to call imx31_barebox_boot_nand_external() */
-	arm_setup_stack(MX31_IRAM_BASE_ADDR + MX31_IRAM_SIZE - 12);
+	if (IS_ENABLED(CONFIG_ARCH_IMX_EXTERNAL_BOOT_NAND)) {
+		/* setup a stack to be able to call imx31_barebox_boot_nand_external() */
+		arm_setup_stack(MX31_IRAM_BASE_ADDR + MX31_IRAM_SIZE - 12);
 
-	imx31_barebox_boot_nand_external(0);
-#else
-	imx31_barebox_entry(0);
-#endif
+		imx31_barebox_boot_nand_external(0);
+	} else {
+		imx31_barebox_entry(0);
+	}
 }
diff --git a/arch/arm/boards/pcm038/lowlevel.c b/arch/arm/boards/pcm038/lowlevel.c
index bb948f1..4f55af8 100644
--- a/arch/arm/boards/pcm038/lowlevel.c
+++ b/arch/arm/boards/pcm038/lowlevel.c
@@ -93,12 +93,12 @@ void __bare_init __naked barebox_arm_reset_vector(void)
 			ESDCTL0_BL | ESDCTL0_SMODE_NORMAL,
 			MX27_ESDCTL_BASE_ADDR + IMX_ESDCTL0);
 
-#ifdef CONFIG_NAND_IMX_BOOT
-	/* setup a stack to be able to call mx27_barebox_boot_nand_external() */
-	arm_setup_stack(MX27_IRAM_BASE_ADDR + MX27_IRAM_SIZE - 8);
+	if (IS_ENABLED(CONFIG_ARCH_IMX_EXTERNAL_BOOT_NAND)) {
+		/* setup a stack to be able to call mx27_barebox_boot_nand_external() */
+		arm_setup_stack(MX27_IRAM_BASE_ADDR + MX27_IRAM_SIZE - 8);
 
-	imx27_barebox_boot_nand_external(0);
-#endif
+		imx27_barebox_boot_nand_external(0);
+	}
 out:
 	imx27_barebox_entry(0);
 }
diff --git a/arch/arm/boards/pcm043/lowlevel.c b/arch/arm/boards/pcm043/lowlevel.c
index 64b0382..8376bb4 100644
--- a/arch/arm/boards/pcm043/lowlevel.c
+++ b/arch/arm/boards/pcm043/lowlevel.c
@@ -182,18 +182,19 @@ void __bare_init __naked barebox_arm_reset_vector(void)
 	/* enable Auto-Refresh */
 	writel(0x00002000, esdctl_base + IMX_ESDCTL1);
 
-#ifdef CONFIG_NAND_IMX_BOOT
-	/* Speed up NAND controller by adjusting the NFC divider */
-	r = readl(MX35_CCM_BASE_ADDR + MX35_CCM_PDR4);
-	r &= ~(0xf << 28);
-	r |= 0x1 << 28;
-	writel(r, MX35_CCM_BASE_ADDR + MX35_CCM_PDR4);
-
-	/* setup a stack to be able to call imx35_barebox_boot_nand_external() */
-	arm_setup_stack(MX35_IRAM_BASE_ADDR + MX35_IRAM_SIZE - 8);
-
-	imx35_barebox_boot_nand_external(0);
-#endif
+	if (IS_ENABLED(CONFIG_ARCH_IMX_EXTERNAL_BOOT_NAND)) {
+		/* Speed up NAND controller by adjusting the NFC divider */
+		r = readl(MX35_CCM_BASE_ADDR + MX35_CCM_PDR4);
+		r &= ~(0xf << 28);
+		r |= 0x1 << 28;
+		writel(r, MX35_CCM_BASE_ADDR + MX35_CCM_PDR4);
+
+		/* setup a stack to be able to call imx35_barebox_boot_nand_external() */
+		arm_setup_stack(MX35_IRAM_BASE_ADDR + MX35_IRAM_SIZE - 8);
+
+		imx35_barebox_boot_nand_external(0);
+	}
+
 out:
 	imx35_barebox_entry(0);
 }
diff --git a/arch/arm/boards/phycard-i.MX27/lowlevel.c b/arch/arm/boards/phycard-i.MX27/lowlevel.c
index 33de1c0..5b3bdaf 100644
--- a/arch/arm/boards/phycard-i.MX27/lowlevel.c
+++ b/arch/arm/boards/phycard-i.MX27/lowlevel.c
@@ -99,9 +99,5 @@ void __bare_init __naked barebox_arm_reset_vector(void)
 
 	sdram_init();
 
-#ifdef CONFIG_NAND_IMX_BOOT
 	imx27_barebox_boot_nand_external(0);
-#else
-	imx27_barebox_entry(0);
-#endif
 }
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 359f06c..55038e8 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -38,8 +38,9 @@ config ARCH_TEXT_BASE
 	default 0x4fc00000 if MACH_PHYTEC_PFLA02
 	default 0x4fc00000 if MACH_DFI_FS700_M60
 
-choice
-	prompt "Select boot mode"
+config ARCH_IMX_INTERNAL_BOOT
+	bool "support internal boot mode"
+	depends on ARCH_IMX25 || ARCH_IMX35 || ARCH_IMX51 || ARCH_IMX53 || ARCH_IMX6
 	depends on !HAVE_PBL_MULTI_IMAGES
 	help
 	  i.MX processors support two different boot modes. With the internal
@@ -58,16 +59,6 @@ choice
 	  The external boot mode is supported on older i.MX processors (i.MX1,
 	  i.MX21, i.MX25, i.MX27, i.MX31, i.MX35).
 
-config ARCH_IMX_INTERNAL_BOOT
-	bool "support internal boot mode"
-	depends on ARCH_IMX25 || ARCH_IMX35 || ARCH_IMX51 || ARCH_IMX53 || ARCH_IMX6
-
-config ARCH_IMX_EXTERNAL_BOOT
-	bool "support external boot mode"
-	depends on ARCH_IMX1 || ARCH_IMX21 || ARCH_IMX25 || ARCH_IMX27 || ARCH_IMX31 || ARCH_IMX35
-
-endchoice
-
 config ARCH_IMX_IMXIMAGE
 	bool
 	default y
@@ -105,16 +96,10 @@ config ARCH_IMX_INTERNAL_BOOT_SERIAL
 
 endchoice
 
-config NAND_IMX_BOOT
-	bool
-	depends on ARCH_IMX_EXTERNAL_BOOT_NAND
-	default y
-
 config ARCH_IMX_EXTERNAL_BOOT_NAND
 	bool
-	depends on !ARCH_IMX1
-	prompt "Support Starting barebox from NAND"
-	depends on ARCH_IMX_EXTERNAL_BOOT
+	depends on ARCH_IMX25 || ARCH_IMX27 || ARCH_IMX31 || ARCH_IMX35
+	prompt "Support Starting barebox from NAND in external bootmode"
 
 config BAREBOX_UPDATE_IMX_EXTERNAL_NAND
 	bool
@@ -319,6 +304,7 @@ config MACH_PCA100
 	bool "phyCard-i.MX27"
 	select ARCH_IMX27
 	select HAVE_DEFAULT_ENVIRONMENT_NEW
+	select ARCH_IMX_EXTERNAL_BOOT_NAND
 	help
 	  Say Y here if you are using Phytec's phyCard-i.MX27 (pca100) equipped
 	  with a Freescale i.MX27 Processor
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
