Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j44wK-0004aA-Ql
 for barebox@lists.infradead.org; Tue, 18 Feb 2020 15:37:40 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 18 Feb 2020 16:37:32 +0100
Message-Id: <20200218153732.14845-7-s.hauer@pengutronix.de>
In-Reply-To: <20200218153732.14845-1-s.hauer@pengutronix.de>
References: <20200218153732.14845-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/6] ARM: i.MX: external NAND boot: Fix passing boarddata
To: Barebox List <barebox@lists.infradead.org>

We used to pass a device tree pointer to
imx*_barebox_boot_nand_external(). This no longer works since we compile
barebox with -fPIE.

The problem is that we only have the first 2KiB of the image available
when we start from NAND. The pointer to the device tree is not valid
yet. This hasn't been a problem because the pointer is only used later
when we have the full image in SDRAM. With -fPIE though the actual
pointer is derived indirectly through another pointer, and that pointer
to the pointer is also not valid which causes an invalid pointer to
the device tree later.

This is solved by splitting the NAND boot functions up into two
functions. With imx*_nand_relocate_to_sdram() the board code relocates
the image out of the NFC SRAM into SDRAM. From that point on the device
tree pointer can be accessed and the board can load the image using
imx*_nand_load_image() and can afterwards pass control to barebox
passing whatever device tee pointer it likes.

Fixes: b0348d677b ("ARM: Compile with -fPIE")
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/eukrea_cpuimx25/lowlevel.c    |   2 +-
 arch/arm/boards/eukrea_cpuimx35/lowlevel.c    |   2 +-
 arch/arm/boards/guf-cupid/lowlevel.c          |   2 +-
 arch/arm/boards/guf-neso/lowlevel.c           |   2 +-
 arch/arm/boards/karo-tx25/lowlevel.c          |  34 +--
 .../boards/phytec-phycard-imx27/lowlevel.c    |  23 ++-
 .../boards/phytec-phycore-imx27/lowlevel.c    |  36 ++--
 .../boards/phytec-phycore-imx31/lowlevel.c    |   2 +-
 .../boards/phytec-phycore-imx35/lowlevel.c    |   2 +-
 arch/arm/mach-imx/external-nand-boot.c        | 195 ++++++++++++------
 arch/arm/mach-imx/include/mach/imx-nand.h     |  19 +-
 11 files changed, 209 insertions(+), 110 deletions(-)

diff --git a/arch/arm/boards/eukrea_cpuimx25/lowlevel.c b/arch/arm/boards/eukrea_cpuimx25/lowlevel.c
index c16316d4a1..95159bbbb1 100644
--- a/arch/arm/boards/eukrea_cpuimx25/lowlevel.c
+++ b/arch/arm/boards/eukrea_cpuimx25/lowlevel.c
@@ -130,7 +130,7 @@ void __bare_init __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint
 	writel(0x82216080, MX25_ESDCTL_BASE_ADDR + IMX_ESDCTL0);
 
 	if (IS_ENABLED(CONFIG_ARCH_IMX_EXTERNAL_BOOT_NAND))
-		imx25_barebox_boot_nand_external(0);
+		imx25_barebox_boot_nand_external();
 
 out:
 	imx25_barebox_entry(NULL);
diff --git a/arch/arm/boards/eukrea_cpuimx35/lowlevel.c b/arch/arm/boards/eukrea_cpuimx35/lowlevel.c
index ab5235f7f0..4bb41b0f42 100644
--- a/arch/arm/boards/eukrea_cpuimx35/lowlevel.c
+++ b/arch/arm/boards/eukrea_cpuimx35/lowlevel.c
@@ -135,7 +135,7 @@ void __bare_init __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint
 		r |= 0x1 << 28;
 		writel(r, MX35_CCM_BASE_ADDR + MX35_CCM_PDR4);
 
-		imx35_barebox_boot_nand_external(0);
+		imx35_barebox_boot_nand_external();
 	}
 
 out:
diff --git a/arch/arm/boards/guf-cupid/lowlevel.c b/arch/arm/boards/guf-cupid/lowlevel.c
index 0d7cfb618c..60dd567298 100644
--- a/arch/arm/boards/guf-cupid/lowlevel.c
+++ b/arch/arm/boards/guf-cupid/lowlevel.c
@@ -308,7 +308,7 @@ void __bare_init __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint
 		r0 |= 0x1 << 28;
 		writel(r0, MX35_CCM_BASE_ADDR + MX35_CCM_PDR4);
 
-		imx35_barebox_boot_nand_external(0);
+		imx35_barebox_boot_nand_external();
 	}
 
 out:
diff --git a/arch/arm/boards/guf-neso/lowlevel.c b/arch/arm/boards/guf-neso/lowlevel.c
index 20f48be7dd..3ae70eca30 100644
--- a/arch/arm/boards/guf-neso/lowlevel.c
+++ b/arch/arm/boards/guf-neso/lowlevel.c
@@ -89,7 +89,7 @@ void __bare_init __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint
 			MX27_ESDCTL_BASE_ADDR + IMX_ESDCTL0);
 
 	if (IS_ENABLED(CONFIG_ARCH_IMX_EXTERNAL_BOOT_NAND))
-		imx27_barebox_boot_nand_external(0);
+		imx27_barebox_boot_nand_external();
 
 out:
 	imx27_barebox_entry(NULL);
diff --git a/arch/arm/boards/karo-tx25/lowlevel.c b/arch/arm/boards/karo-tx25/lowlevel.c
index f79cd91640..6c34944f74 100644
--- a/arch/arm/boards/karo-tx25/lowlevel.c
+++ b/arch/arm/boards/karo-tx25/lowlevel.c
@@ -74,7 +74,24 @@ static inline void __bare_init  setup_sdram(uint32_t base, uint32_t esdctl,
 	writel(esdctl, esdctlreg);
 }
 
-static void __bare_init karo_tx25_common_init(void *fdt)
+extern char __dtb_imx25_karo_tx25_start[];
+
+static void __noreturn karo_tx25_start(void)
+{
+	void *fdt;
+
+	fdt = __dtb_imx25_karo_tx25_start + get_runtime_offset();
+
+	imx25_barebox_entry(fdt);
+}
+
+static void __noreturn karo_tx25_load_nand(void)
+{
+	imx25_nand_load_image();
+	karo_tx25_start();
+}
+
+static void __bare_init karo_tx25_common_init(void)
 {
 	uint32_t r;
 
@@ -138,7 +155,7 @@ static void __bare_init karo_tx25_common_init(void *fdt)
 	/* Skip SDRAM initialization if we run from RAM */
 	r = get_pc();
 	if (r > 0x80000000 && r < 0xa0000000)
-		goto out;
+		karo_tx25_start();
 
 	/* set to 3.3v SDRAM */
 	writel(0x800, MX25_IOMUXC_BASE_ADDR + 0x454);
@@ -156,21 +173,12 @@ static void __bare_init karo_tx25_common_init(void *fdt)
 	setup_sdram(0x80000000, ESDCTLVAL, ESDCFGVAL);
 	setup_sdram(0x90000000, ESDCTLVAL, ESDCFGVAL);
 
-	imx25_barebox_boot_nand_external(fdt);
-
-out:
-	imx25_barebox_entry(fdt);
+	imx25_nand_relocate_to_sdram(karo_tx25_load_nand);
 }
 
-extern char __dtb_imx25_karo_tx25_start[];
-
 ENTRY_FUNCTION(start_imx25_karo_tx25, r0, r1, r2)
 {
-	void *fdt;
-
 	arm_setup_stack(MX25_IRAM_BASE_ADDR + MX25_IRAM_SIZE);
 
-	fdt = __dtb_imx25_karo_tx25_start + get_runtime_offset();
-
-	karo_tx25_common_init(fdt);
+	karo_tx25_common_init();
 }
diff --git a/arch/arm/boards/phytec-phycard-imx27/lowlevel.c b/arch/arm/boards/phytec-phycard-imx27/lowlevel.c
index 894f560fa8..40d39680fd 100644
--- a/arch/arm/boards/phytec-phycard-imx27/lowlevel.c
+++ b/arch/arm/boards/phytec-phycard-imx27/lowlevel.c
@@ -79,9 +79,23 @@ static void sdram_init(int sdram)
 
 extern char __dtb_imx27_phytec_phycard_s_rdk_bb_start[];
 
-static noinline void __bare_init phytec_phycard_imx27_common_init(int sdram)
+static void __noreturn phytec_phycard_imx27_start(void)
 {
 	void *fdt;
+
+	fdt = __dtb_imx27_phytec_phycard_s_rdk_bb_start + get_runtime_offset();
+
+	imx27_barebox_entry(fdt);
+}
+
+static void __noreturn phytec_phycard_imx27_load_nand(void)
+{
+	imx27_nand_load_image();
+	phytec_phycard_imx27_start();
+}
+
+static noinline void __bare_init phytec_phycard_imx27_common_init(int sdram)
+{
 	unsigned long r;
 
 	arm_cpu_lowlevel_init();
@@ -92,12 +106,10 @@ static noinline void __bare_init phytec_phycard_imx27_common_init(int sdram)
 	writel(0x00000000, MX27_AIPI_BASE_ADDR + MX27_AIPI2_PSR0);
 	writel(0xffffffff, MX27_AIPI_BASE_ADDR + MX27_AIPI2_PSR1);
 
-	fdt = __dtb_imx27_phytec_phycard_s_rdk_bb_start + get_runtime_offset();
-
 	/* Skip SDRAM initialization if we run from RAM */
         r = get_pc();
         if (r > 0xa0000000 && r < 0xc0000000)
-                imx27_barebox_entry(fdt);
+		phytec_phycard_imx27_start();
 
 	/* 399 MHz */
 	writel(IMX_PLL_PD(0) |
@@ -122,7 +134,8 @@ static noinline void __bare_init phytec_phycard_imx27_common_init(int sdram)
 
 	sdram_init(sdram);
 
-	imx27_barebox_boot_nand_external(fdt);
+	imx27_nand_relocate_to_sdram(phytec_phycard_imx27_load_nand);
+	phytec_phycard_imx27_start();
 }
 
 ENTRY_FUNCTION(start_phytec_phycard_imx27_64mb, r0, r1, r2)
diff --git a/arch/arm/boards/phytec-phycore-imx27/lowlevel.c b/arch/arm/boards/phytec-phycore-imx27/lowlevel.c
index ae5f1af830..b3bebdb6df 100644
--- a/arch/arm/boards/phytec-phycore-imx27/lowlevel.c
+++ b/arch/arm/boards/phytec-phycore-imx27/lowlevel.c
@@ -33,7 +33,24 @@
 
 #define ESDCTL0_VAL (ESDCTL0_SDE | ESDCTL0_ROW13 | ESDCTL0_COL10)
 
-static void __bare_init noinline phytec_phycorce_imx27_common_init(void *fdt)
+extern char __dtb_imx27_phytec_phycore_rdk_start[];
+
+static void __noreturn phytec_phycore_imx27_start(void)
+{
+	void *fdt;
+
+	fdt = __dtb_imx27_phytec_phycore_rdk_start + get_runtime_offset();
+
+	imx27_barebox_entry(fdt);
+}
+
+static void __noreturn phytec_phycore_imx27_load_nand(void)
+{
+	imx27_nand_load_image();
+	phytec_phycore_imx27_start();
+}
+
+static void __bare_init noinline phytec_phycore_imx27_common_init(void)
 {
 	uint32_t r;
 	int i;
@@ -49,7 +66,7 @@ static void __bare_init noinline phytec_phycorce_imx27_common_init(void *fdt)
 	/* Skip SDRAM initialization if we run from RAM */
 	r = get_pc();
 	if (r > 0xa0000000 && r < 0xb0000000)
-		goto out;
+		phytec_phycore_imx27_start();
 
 	/* re-program the PLL prior(!) starting the SDRAM controller */
 	writel(MPCTL0_VAL, MX27_CCM_BASE_ADDR + MX27_MPCTL0);
@@ -93,22 +110,13 @@ static void __bare_init noinline phytec_phycorce_imx27_common_init(void *fdt)
 			ESDCTL0_BL | ESDCTL0_SMODE_NORMAL,
 			MX27_ESDCTL_BASE_ADDR + IMX_ESDCTL0);
 
-	if (IS_ENABLED(CONFIG_ARCH_IMX_EXTERNAL_BOOT_NAND))
-		imx27_barebox_boot_nand_external(fdt);
-
-out:
-	imx27_barebox_entry(fdt);
+	imx27_nand_relocate_to_sdram(phytec_phycore_imx27_load_nand);
+	phytec_phycore_imx27_start();
 }
 
-extern char __dtb_imx27_phytec_phycore_rdk_start[];
-
 ENTRY_FUNCTION(start_phytec_phycore_imx27, r0, r1, r2)
 {
-	void *fdt;
-
 	arm_setup_stack(MX27_IRAM_BASE_ADDR + MX27_IRAM_SIZE);
 
-	fdt = __dtb_imx27_phytec_phycore_rdk_start + get_runtime_offset();
-
-	phytec_phycorce_imx27_common_init(fdt);
+	phytec_phycore_imx27_common_init();
 }
diff --git a/arch/arm/boards/phytec-phycore-imx31/lowlevel.c b/arch/arm/boards/phytec-phycore-imx31/lowlevel.c
index b5f333987a..98e1e8711d 100644
--- a/arch/arm/boards/phytec-phycore-imx31/lowlevel.c
+++ b/arch/arm/boards/phytec-phycore-imx31/lowlevel.c
@@ -127,7 +127,7 @@ void __bare_init __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint
 #endif
 
 	if (IS_ENABLED(CONFIG_ARCH_IMX_EXTERNAL_BOOT_NAND))
-		imx31_barebox_boot_nand_external(0);
+		imx31_barebox_boot_nand_external();
 	else
 		imx31_barebox_entry(NULL);
 }
diff --git a/arch/arm/boards/phytec-phycore-imx35/lowlevel.c b/arch/arm/boards/phytec-phycore-imx35/lowlevel.c
index b80dafec16..9768009be8 100644
--- a/arch/arm/boards/phytec-phycore-imx35/lowlevel.c
+++ b/arch/arm/boards/phytec-phycore-imx35/lowlevel.c
@@ -186,7 +186,7 @@ void __bare_init __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint
 		r |= 0x1 << 28;
 		writel(r, MX35_CCM_BASE_ADDR + MX35_CCM_PDR4);
 
-		imx35_barebox_boot_nand_external(0);
+		imx35_barebox_boot_nand_external();
 	}
 
 out:
diff --git a/arch/arm/mach-imx/external-nand-boot.c b/arch/arm/mach-imx/external-nand-boot.c
index bf683de858..123589c071 100644
--- a/arch/arm/mach-imx/external-nand-boot.c
+++ b/arch/arm/mach-imx/external-nand-boot.c
@@ -240,7 +240,7 @@ static void __bare_init imx_nand_load_image(void *dest, int v1,
 	}
 }
 
-static void BARE_INIT_FUNCTION(imx25_nand_load_image)(void)
+void BARE_INIT_FUNCTION(imx25_nand_load_image)(void)
 {
 	void *sdram = (void *)MX25_CSD0_BASE_ADDR;
 	void __iomem *nfc_base = IOMEM(MX25_NFC_BASE_ADDR);
@@ -254,7 +254,7 @@ static void BARE_INIT_FUNCTION(imx25_nand_load_image)(void)
 	imx_nand_load_image(sdram, 0, nfc_base, pagesize_2k);
 }
 
-static void BARE_INIT_FUNCTION(imx27_nand_load_image)(void)
+void BARE_INIT_FUNCTION(imx27_nand_load_image)(void)
 {
 	void *sdram = (void *)MX27_CSD0_BASE_ADDR;
 	void __iomem *nfc_base = IOMEM(MX27_NFC_BASE_ADDR);
@@ -268,7 +268,7 @@ static void BARE_INIT_FUNCTION(imx27_nand_load_image)(void)
 	imx_nand_load_image(sdram, 1, nfc_base, pagesize_2k);
 }
 
-static void BARE_INIT_FUNCTION(imx31_nand_load_image)(void)
+void BARE_INIT_FUNCTION(imx31_nand_load_image)(void)
 {
 	void *sdram = (void *)MX31_CSD0_BASE_ADDR;
 	void __iomem *nfc_base = IOMEM(MX31_NFC_BASE_ADDR);
@@ -282,7 +282,7 @@ static void BARE_INIT_FUNCTION(imx31_nand_load_image)(void)
 	imx_nand_load_image(sdram, 1, nfc_base, pagesize_2k);
 }
 
-static void BARE_INIT_FUNCTION(imx35_nand_load_image)(void)
+void BARE_INIT_FUNCTION(imx35_nand_load_image)(void)
 {
 	void *sdram = (void *)MX35_CSD0_BASE_ADDR;
 	void __iomem *nfc_base = IOMEM(MX35_NFC_BASE_ADDR);
@@ -297,70 +297,131 @@ static void BARE_INIT_FUNCTION(imx35_nand_load_image)(void)
 }
 
 /*
- * SoC specific entries for booting in external NAND mode. To be called from
- * the board specific entry code. This is safe to call even if not booting from
- * NAND. In this case the booting is continued without loading an image from
- * NAND. This function needs a stack to be set up.
+ * relocate_to_sdram - move ourselves out of NFC SRAM
+ *
+ * @nfc_base: base address of the NFC controller
+ * @sdram: SDRAM base address where we move ourselves to
+ * @fn: Function we continue with when running in SDRAM
+ *
+ * This function moves ourselves out of NFC SRAM to SDRAM. In case we a currently
+ * not running in NFC SRAM this function returns. If running in NFC SRAM, this
+ * function will not return, but call @fn instead.
  */
+static void BARE_INIT_FUNCTION(relocate_to_sdram)(unsigned long nfc_base,
+						  unsigned long sdram,
+						  void __noreturn (*fn)(void))
+{
+	unsigned long __fn;
+	u32 r;
+	u32 *src, *trg;
+	int i;
+
+	/* skip NAND boot if not running from NFC space */
+	r = get_pc();
+	if (r < nfc_base || r > nfc_base + 0x800)
+		return;
+
+	src = (unsigned int *)nfc_base;
+	trg = (unsigned int *)sdram;
+
+	/*
+	 * Copy initial binary portion from NFC SRAM to beginning of
+	 * SDRAM
+	 */
+	for (i = 0; i < 0x800 / sizeof(int); i++)
+		*trg++ = *src++;
+
+	/* The next function we jump to */
+	__fn = (unsigned long)fn;
+	/* mask out TEXT_BASE */
+	__fn &= 0x7ff;
+	/*
+	 * and add sdram base instead where we copied the initial
+	 * binary above
+	 */
+	__fn += sdram;
+
+	fn = (void *)__fn;
 
-#define DEFINE_EXTERNAL_NAND_ENTRY(soc)					\
-									\
-static void __noreturn BARE_INIT_FUNCTION(imx##soc##_boot_nand_external_cont)  \
-			(void *boarddata)				\
-{									\
-	imx##soc##_nand_load_image();					\
-									\
-        imx##soc##_barebox_entry(boarddata);				\
-}									\
-									\
-void __noreturn BARE_INIT_FUNCTION(imx##soc##_barebox_boot_nand_external) \
-			(void *bd)				\
-{									\
-	unsigned long nfc_base = MX##soc##_NFC_BASE_ADDR;		\
-	unsigned long sdram = MX##soc##_CSD0_BASE_ADDR;			\
-	unsigned long boarddata = (unsigned long)bd;			\
-	unsigned long __fn;						\
-	u32 r;								\
-	u32 *src, *trg;							\
-	int i;								\
-	void __noreturn (*fn)(void *);					\
-									\
-	/* skip NAND boot if not running from NFC space */		\
-	r = get_pc();							\
-	if (r < nfc_base || r > nfc_base + 0x800)			\
-		imx##soc##_barebox_entry(bd);				\
-									\
-	src = (unsigned int *)nfc_base;					\
-	trg = (unsigned int *)sdram;					\
-									\
-	/*								\
-	 * Copy initial binary portion from NFC SRAM to beginning of	\
-	 * SDRAM							\
-	 */								\
-	for (i = 0; i < 0x800 / sizeof(int); i++)			\
-		*trg++ = *src++;					\
-									\
-	/* The next function we jump to */				\
-	__fn = (unsigned long)imx##soc##_boot_nand_external_cont;	\
-	/* mask out TEXT_BASE */					\
-	__fn &= 0x7ff;							\
-	/*								\
-	 * and add sdram base instead where we copied the initial	\
-	 * binary above							\
-	 */								\
-	__fn += sdram;							\
-									\
-	fn = (void *)__fn;						\
-									\
-	if (boarddata > nfc_base && boarddata < nfc_base + SZ_512K) {	\
-		boarddata &= SZ_512K - 1;				\
-		boarddata += sdram;					\
-	}								\
-									\
-	fn((void *)boarddata);						\
+	fn();
 }
 
-DEFINE_EXTERNAL_NAND_ENTRY(25)
-DEFINE_EXTERNAL_NAND_ENTRY(27)
-DEFINE_EXTERNAL_NAND_ENTRY(31)
-DEFINE_EXTERNAL_NAND_ENTRY(35)
+void BARE_INIT_FUNCTION(imx25_nand_relocate_to_sdram)(void __noreturn (*fn)(void))
+{
+	unsigned long nfc_base = MX25_NFC_BASE_ADDR;
+	unsigned long sdram = MX25_CSD0_BASE_ADDR;
+
+	relocate_to_sdram(nfc_base, sdram, fn);
+}
+
+static void __noreturn BARE_INIT_FUNCTION(imx25_boot_nand_external_cont)(void)
+{
+	imx25_nand_load_image();
+	imx25_barebox_entry(NULL);
+}
+
+void __noreturn BARE_INIT_FUNCTION(imx25_barebox_boot_nand_external)(void)
+{
+	imx25_nand_relocate_to_sdram(imx25_boot_nand_external_cont);
+	imx25_barebox_entry(NULL);
+}
+
+void BARE_INIT_FUNCTION(imx27_nand_relocate_to_sdram)(void __noreturn (*fn)(void))
+{
+	unsigned long nfc_base = MX27_NFC_BASE_ADDR;
+	unsigned long sdram = MX27_CSD0_BASE_ADDR;
+
+	relocate_to_sdram(nfc_base, sdram, fn);
+}
+
+static void __noreturn BARE_INIT_FUNCTION(imx27_boot_nand_external_cont)(void)
+{
+	imx27_nand_load_image();
+	imx27_barebox_entry(NULL);
+}
+
+void __noreturn BARE_INIT_FUNCTION(imx27_barebox_boot_nand_external)(void)
+{
+	imx27_nand_relocate_to_sdram(imx27_boot_nand_external_cont);
+	imx27_barebox_entry(NULL);
+}
+
+void BARE_INIT_FUNCTION(imx31_nand_relocate_to_sdram)(void __noreturn (*fn)(void))
+{
+	unsigned long nfc_base = MX31_NFC_BASE_ADDR;
+	unsigned long sdram = MX31_CSD0_BASE_ADDR;
+
+	relocate_to_sdram(nfc_base, sdram, fn);
+}
+
+static void __noreturn BARE_INIT_FUNCTION(imx31_boot_nand_external_cont)(void)
+{
+	imx31_nand_load_image();
+	imx31_barebox_entry(NULL);
+}
+
+void __noreturn BARE_INIT_FUNCTION(imx31_barebox_boot_nand_external)(void)
+{
+	imx31_nand_relocate_to_sdram(imx31_boot_nand_external_cont);
+	imx31_barebox_entry(NULL);
+}
+
+void BARE_INIT_FUNCTION(imx35_nand_relocate_to_sdram)(void __noreturn (*fn)(void))
+{
+	unsigned long nfc_base = MX35_NFC_BASE_ADDR;
+	unsigned long sdram = MX35_CSD0_BASE_ADDR;
+
+	relocate_to_sdram(nfc_base, sdram, fn);
+}
+
+static void __noreturn BARE_INIT_FUNCTION(imx35_boot_nand_external_cont)(void)
+{
+	imx35_nand_load_image();
+	imx35_barebox_entry(NULL);
+}
+
+void __noreturn BARE_INIT_FUNCTION(imx35_barebox_boot_nand_external)(void)
+{
+	imx35_nand_relocate_to_sdram(imx35_boot_nand_external_cont);
+	imx35_barebox_entry(NULL);
+}
diff --git a/arch/arm/mach-imx/include/mach/imx-nand.h b/arch/arm/mach-imx/include/mach/imx-nand.h
index 0adba0989a..f34799a011 100644
--- a/arch/arm/mach-imx/include/mach/imx-nand.h
+++ b/arch/arm/mach-imx/include/mach/imx-nand.h
@@ -3,11 +3,20 @@
 
 #include <linux/mtd/mtd.h>
 
-void imx21_barebox_boot_nand_external(void *boarddata);
-void imx25_barebox_boot_nand_external(void *boarddata);
-void imx27_barebox_boot_nand_external(void *boarddata);
-void imx31_barebox_boot_nand_external(void *boarddata);
-void imx35_barebox_boot_nand_external(void *boarddata);
+void imx25_nand_load_image(void);
+void imx27_nand_load_image(void);
+void imx31_nand_load_image(void);
+void imx35_nand_load_image(void);
+
+void imx25_nand_relocate_to_sdram(void __noreturn (*fn)(void));
+void imx27_nand_relocate_to_sdram(void __noreturn (*fn)(void));
+void imx31_nand_relocate_to_sdram(void __noreturn (*fn)(void));
+void imx35_nand_relocate_to_sdram(void __noreturn (*fn)(void));
+
+void imx25_barebox_boot_nand_external(void);
+void imx27_barebox_boot_nand_external(void);
+void imx31_barebox_boot_nand_external(void);
+void imx35_barebox_boot_nand_external(void);
 void imx_nand_set_layout(int writesize, int datawidth);
 
 struct imx_nand_platform_data {
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
