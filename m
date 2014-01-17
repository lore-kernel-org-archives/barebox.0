Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W4Ay2-0003P4-3o
 for barebox@lists.infradead.org; Fri, 17 Jan 2014 15:04:29 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 17 Jan 2014 16:03:24 +0100
Message-Id: <1389971012-22977-15-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1389971012-22977-1-git-send-email-s.hauer@pengutronix.de>
References: <1389971012-22977-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 14/22] ARM: i.MX: external NAND boot: pass boarddata
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/eukrea_cpuimx25/lowlevel.c             |  2 +-
 arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S        |  1 +
 arch/arm/boards/eukrea_cpuimx35/lowlevel.c             |  2 +-
 arch/arm/boards/freescale-mx25-3-stack/lowlevel_init.S |  1 +
 arch/arm/boards/freescale-mx35-3-stack/lowlevel_init.S |  1 +
 arch/arm/boards/guf-cupid/lowlevel.c                   |  2 +-
 arch/arm/boards/guf-neso/lowlevel.c                    |  2 +-
 arch/arm/boards/karo-tx25/lowlevel.c                   |  2 +-
 arch/arm/boards/pcm037/lowlevel.c                      |  2 +-
 arch/arm/boards/pcm038/lowlevel.c                      |  2 +-
 arch/arm/boards/pcm043/lowlevel.c                      |  2 +-
 arch/arm/boards/phycard-i.MX27/lowlevel.c              |  2 +-
 arch/arm/mach-imx/external-nand-boot.c                 | 14 ++++++++------
 arch/arm/mach-imx/include/mach/imx-nand.h              | 10 +++++-----
 14 files changed, 25 insertions(+), 20 deletions(-)

diff --git a/arch/arm/boards/eukrea_cpuimx25/lowlevel.c b/arch/arm/boards/eukrea_cpuimx25/lowlevel.c
index 11d990d..07659f5 100644
--- a/arch/arm/boards/eukrea_cpuimx25/lowlevel.c
+++ b/arch/arm/boards/eukrea_cpuimx25/lowlevel.c
@@ -131,7 +131,7 @@ void __bare_init __naked barebox_arm_reset_vector(void)
 	/* setup a stack to be able to call imx25_barebox_boot_nand_external() */
 	arm_setup_stack(STACK_BASE + STACK_SIZE - 12);
 
-	imx25_barebox_boot_nand_external();
+	imx25_barebox_boot_nand_external(0);
 #endif
 out:
 	imx25_barebox_entry(0);
diff --git a/arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S b/arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S
index a85b00d..ae1391c 100644
--- a/arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S
+++ b/arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S
@@ -127,6 +127,7 @@ barebox_arm_reset_vector:
 	/* Setup a temporary stack in SDRAM */
 	ldr	sp, =MX27_IRAM_BASE_ADDR + MX27_IRAM_SIZE - 4;
 
+	mov	r0, #0
 	b	imx27_barebox_boot_nand_external
 #endif /* CONFIG_NAND_IMX_BOOT */
 
diff --git a/arch/arm/boards/eukrea_cpuimx35/lowlevel.c b/arch/arm/boards/eukrea_cpuimx35/lowlevel.c
index a667e4c..d03e110 100644
--- a/arch/arm/boards/eukrea_cpuimx35/lowlevel.c
+++ b/arch/arm/boards/eukrea_cpuimx35/lowlevel.c
@@ -140,7 +140,7 @@ void __bare_init __naked barebox_arm_reset_vector(void)
 	/* setup a stack to be able to call imx35_barebox_boot_nand_external() */
 	arm_setup_stack(MX35_IRAM_BASE_ADDR + MX35_IRAM_SIZE - 8);
 
-	imx35_barebox_boot_nand_external();
+	imx35_barebox_boot_nand_external(0);
 #endif
 out:
 	imx35_barebox_entry(0);
diff --git a/arch/arm/boards/freescale-mx25-3-stack/lowlevel_init.S b/arch/arm/boards/freescale-mx25-3-stack/lowlevel_init.S
index 174262d..8446c6f 100644
--- a/arch/arm/boards/freescale-mx25-3-stack/lowlevel_init.S
+++ b/arch/arm/boards/freescale-mx25-3-stack/lowlevel_init.S
@@ -101,6 +101,7 @@ barebox_arm_reset_vector:
 	/* Setup a temporary stack in SRAM */
 	ldr	sp, =MX25_IRAM_BASE_ADDR + MX25_IRAM_SIZE - 4
 
+	mov	r0, #0
 	b	imx25_barebox_boot_nand_external
 #endif /* CONFIG_NAND_IMX_BOOT */
 
diff --git a/arch/arm/boards/freescale-mx35-3-stack/lowlevel_init.S b/arch/arm/boards/freescale-mx35-3-stack/lowlevel_init.S
index 2844465..cb9ed0a 100644
--- a/arch/arm/boards/freescale-mx35-3-stack/lowlevel_init.S
+++ b/arch/arm/boards/freescale-mx35-3-stack/lowlevel_init.S
@@ -158,6 +158,7 @@ barebox_arm_reset_vector:
 	/* Setup a temporary stack in internal SRAM */
 	ldr	sp, =MX35_IRAM_BASE_ADDR + MX35_IRAM_SIZE - 4
 
+	mov	r0, #0
 	b	imx35_barebox_boot_nand_external
 #endif /* CONFIG_NAND_IMX_BOOT */
 
diff --git a/arch/arm/boards/guf-cupid/lowlevel.c b/arch/arm/boards/guf-cupid/lowlevel.c
index d5298c1..d5dce16 100644
--- a/arch/arm/boards/guf-cupid/lowlevel.c
+++ b/arch/arm/boards/guf-cupid/lowlevel.c
@@ -316,7 +316,7 @@ void __bare_init __naked barebox_arm_reset_vector(void)
 	/* setup a stack to be able to call imx35_barebox_boot_nand_external() */
 	arm_setup_stack(MX35_IRAM_BASE_ADDR + MX35_IRAM_SIZE - 8);
 
-	imx35_barebox_boot_nand_external();
+	imx35_barebox_boot_nand_external(0);
 #endif
 out:
 	imx35_barebox_entry(0);
diff --git a/arch/arm/boards/guf-neso/lowlevel.c b/arch/arm/boards/guf-neso/lowlevel.c
index 386751d..c3323ee 100644
--- a/arch/arm/boards/guf-neso/lowlevel.c
+++ b/arch/arm/boards/guf-neso/lowlevel.c
@@ -90,7 +90,7 @@ void __bare_init __naked barebox_arm_reset_vector(void)
 	/* setup a stack to be able to call imx27_barebox_boot_nand_external() */
 	arm_setup_stack(MX27_IRAM_BASE_ADDR + MX27_IRAM_SIZE - 8);
 
-	imx27_barebox_boot_nand_external();
+	imx27_barebox_boot_nand_external(0);
 #endif
 out:
 	imx27_barebox_entry(0);
diff --git a/arch/arm/boards/karo-tx25/lowlevel.c b/arch/arm/boards/karo-tx25/lowlevel.c
index 742100d..11f4138 100644
--- a/arch/arm/boards/karo-tx25/lowlevel.c
+++ b/arch/arm/boards/karo-tx25/lowlevel.c
@@ -161,7 +161,7 @@ void __bare_init __naked barebox_arm_reset_vector(void)
 	/* setup a stack to be able to call imx25_barebox_boot_nand_external() */
 	arm_setup_stack(MX25_IRAM_BASE_ADDR + MX25_IRAM_SIZE - 8);
 
-	imx25_barebox_boot_nand_external();
+	imx25_barebox_boot_nand_external(0);
 #endif
 out:
 	imx25_barebox_entry(0);
diff --git a/arch/arm/boards/pcm037/lowlevel.c b/arch/arm/boards/pcm037/lowlevel.c
index b81a24f..ae2d8c0 100644
--- a/arch/arm/boards/pcm037/lowlevel.c
+++ b/arch/arm/boards/pcm037/lowlevel.c
@@ -129,7 +129,7 @@ void __bare_init __naked barebox_arm_reset_vector(void)
 	/* setup a stack to be able to call imx31_barebox_boot_nand_external() */
 	arm_setup_stack(MX31_IRAM_BASE_ADDR + MX31_IRAM_SIZE - 12);
 
-	imx31_barebox_boot_nand_external();
+	imx31_barebox_boot_nand_external(0);
 #else
 	imx31_barebox_entry(0);
 #endif
diff --git a/arch/arm/boards/pcm038/lowlevel.c b/arch/arm/boards/pcm038/lowlevel.c
index 0ea2939..bb948f1 100644
--- a/arch/arm/boards/pcm038/lowlevel.c
+++ b/arch/arm/boards/pcm038/lowlevel.c
@@ -97,7 +97,7 @@ void __bare_init __naked barebox_arm_reset_vector(void)
 	/* setup a stack to be able to call mx27_barebox_boot_nand_external() */
 	arm_setup_stack(MX27_IRAM_BASE_ADDR + MX27_IRAM_SIZE - 8);
 
-	imx27_barebox_boot_nand_external();
+	imx27_barebox_boot_nand_external(0);
 #endif
 out:
 	imx27_barebox_entry(0);
diff --git a/arch/arm/boards/pcm043/lowlevel.c b/arch/arm/boards/pcm043/lowlevel.c
index ebd6b29..64b0382 100644
--- a/arch/arm/boards/pcm043/lowlevel.c
+++ b/arch/arm/boards/pcm043/lowlevel.c
@@ -192,7 +192,7 @@ void __bare_init __naked barebox_arm_reset_vector(void)
 	/* setup a stack to be able to call imx35_barebox_boot_nand_external() */
 	arm_setup_stack(MX35_IRAM_BASE_ADDR + MX35_IRAM_SIZE - 8);
 
-	imx35_barebox_boot_nand_external();
+	imx35_barebox_boot_nand_external(0);
 #endif
 out:
 	imx35_barebox_entry(0);
diff --git a/arch/arm/boards/phycard-i.MX27/lowlevel.c b/arch/arm/boards/phycard-i.MX27/lowlevel.c
index 9f5dfff..33de1c0 100644
--- a/arch/arm/boards/phycard-i.MX27/lowlevel.c
+++ b/arch/arm/boards/phycard-i.MX27/lowlevel.c
@@ -100,7 +100,7 @@ void __bare_init __naked barebox_arm_reset_vector(void)
 	sdram_init();
 
 #ifdef CONFIG_NAND_IMX_BOOT
-	imx27_barebox_boot_nand_external();
+	imx27_barebox_boot_nand_external(0);
 #else
 	imx27_barebox_entry(0);
 #endif
diff --git a/arch/arm/mach-imx/external-nand-boot.c b/arch/arm/mach-imx/external-nand-boot.c
index a1956f0..7623c07 100644
--- a/arch/arm/mach-imx/external-nand-boot.c
+++ b/arch/arm/mach-imx/external-nand-boot.c
@@ -314,7 +314,8 @@ static inline int imx35_pagesize_2k(void)
 
 #define DEFINE_EXTERNAL_NAND_ENTRY(soc)					\
 									\
-BARE_INIT_FUNCTION(imx##soc##_boot_nand_external_cont)(void)		\
+BARE_INIT_FUNCTION(imx##soc##_boot_nand_external_cont)			\
+			(uint32_t boarddata)				\
 {									\
 	unsigned long nfc_base = MX##soc##_NFC_BASE_ADDR;		\
 	unsigned long sdram = MX##soc##_CSD0_BASE_ADDR;			\
@@ -324,10 +325,11 @@ BARE_INIT_FUNCTION(imx##soc##_boot_nand_external_cont)(void)		\
 			(void *)nfc_base,				\
 			imx##soc##_pagesize_2k());			\
 									\
-        imx##soc##_barebox_entry(0);					\
+        imx##soc##_barebox_entry(boarddata);				\
 }									\
 									\
-BARE_INIT_FUNCTION(imx##soc##_barebox_boot_nand_external)(void)		\
+BARE_INIT_FUNCTION(imx##soc##_barebox_boot_nand_external)		\
+			(uint32_t boarddata)				\
 {									\
 	unsigned long nfc_base = MX##soc##_NFC_BASE_ADDR;		\
 	unsigned long sdram = MX##soc##_CSD0_BASE_ADDR;			\
@@ -335,12 +337,12 @@ BARE_INIT_FUNCTION(imx##soc##_barebox_boot_nand_external)(void)		\
 	u32 r;								\
 	u32 *src, *trg;							\
 	int i;								\
-	void __noreturn (*fn)(void);					\
+	void __noreturn (*fn)(uint32_t);				\
 									\
 	/* skip NAND boot if not running from NFC space */		\
 	r = get_pc();							\
 	if (r < nfc_base || r > nfc_base + 0x800)			\
-		imx##soc##_barebox_entry(0);				\
+		imx##soc##_barebox_entry(boarddata);			\
 									\
 	src = (unsigned int *)nfc_base;					\
 	trg = (unsigned int *)sdram;					\
@@ -364,7 +366,7 @@ BARE_INIT_FUNCTION(imx##soc##_barebox_boot_nand_external)(void)		\
 									\
 	fn = (void *)__fn;						\
 									\
-	fn();								\
+	fn(boarddata);							\
 }
 
 #ifdef BROKEN
diff --git a/arch/arm/mach-imx/include/mach/imx-nand.h b/arch/arm/mach-imx/include/mach/imx-nand.h
index 9e6416e..972a0da 100644
--- a/arch/arm/mach-imx/include/mach/imx-nand.h
+++ b/arch/arm/mach-imx/include/mach/imx-nand.h
@@ -3,11 +3,11 @@
 
 #include <linux/mtd/mtd.h>
 
-void imx21_barebox_boot_nand_external(void);
-void imx25_barebox_boot_nand_external(void);
-void imx27_barebox_boot_nand_external(void);
-void imx31_barebox_boot_nand_external(void);
-void imx35_barebox_boot_nand_external(void);
+void imx21_barebox_boot_nand_external(uint32_t boarddata);
+void imx25_barebox_boot_nand_external(uint32_t boarddata);
+void imx27_barebox_boot_nand_external(uint32_t boarddata);
+void imx31_barebox_boot_nand_external(uint32_t boarddata);
+void imx35_barebox_boot_nand_external(uint32_t boarddata);
 void imx_nand_set_layout(int writesize, int datawidth);
 
 struct imx_nand_platform_data {
-- 
1.8.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
