Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j44y2-0005FU-2q
 for barebox@lists.infradead.org; Tue, 18 Feb 2020 15:39:25 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 18 Feb 2020 16:39:17 +0100
Message-Id: <20200218153917.15937-8-s.hauer@pengutronix.de>
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
Subject: [PATCH 8/8] Put bare_init functions in separate sections
To: Barebox List <barebox@lists.infradead.org>

Functions with the __bare_init attribute all go into the same section
which means the linker can't discard any unused functions. Replace
the __bare_init macro with a new BARE_INIT_FUNCTION() macro which adds
the function name to the section name. With this the linker can remove
unused functions.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/eukrea_cpuimx25/lowlevel.c    |  4 +++-
 arch/arm/boards/eukrea_cpuimx35/lowlevel.c    |  4 +++-
 .../arm/boards/friendlyarm-tiny210/lowlevel.c | 11 +++++----
 arch/arm/boards/guf-cupid/lowlevel.c          |  7 ++++--
 arch/arm/boards/guf-neso/lowlevel.c           |  4 +++-
 arch/arm/boards/karo-tx25/lowlevel.c          |  4 ++--
 .../boards/phytec-phycard-imx27/lowlevel.c    |  2 +-
 .../boards/phytec-phycore-imx27/lowlevel.c    |  2 +-
 .../boards/phytec-phycore-imx31/lowlevel.c    |  4 +++-
 .../boards/phytec-phycore-imx35/lowlevel.c    |  4 +++-
 arch/arm/mach-imx/external-nand-boot.c        | 23 ++++++++----------
 arch/arm/mach-samsung/lowlevel-s5pcxx.c       |  2 +-
 arch/arm/mach-samsung/mem-s5pcxx.c            | 24 +++++++++++--------
 include/init.h                                |  4 +++-
 14 files changed, 58 insertions(+), 41 deletions(-)

diff --git a/arch/arm/boards/eukrea_cpuimx25/lowlevel.c b/arch/arm/boards/eukrea_cpuimx25/lowlevel.c
index 95159bbbb1..1a86f70f52 100644
--- a/arch/arm/boards/eukrea_cpuimx25/lowlevel.c
+++ b/arch/arm/boards/eukrea_cpuimx25/lowlevel.c
@@ -30,7 +30,9 @@
 #include <asm-generic/memory_layout.h>
 #include <asm/system.h>
 
-void __bare_init __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
+void __naked BARE_INIT_FUNCTION(barebox_arm_reset_vector)(uint32_t r0,
+							  uint32_t r1,
+							  uint32_t r2)
 {
 	uint32_t r;
 	register uint32_t loops = 0x20000;
diff --git a/arch/arm/boards/eukrea_cpuimx35/lowlevel.c b/arch/arm/boards/eukrea_cpuimx35/lowlevel.c
index 4bb41b0f42..1a6ced3b12 100644
--- a/arch/arm/boards/eukrea_cpuimx35/lowlevel.c
+++ b/arch/arm/boards/eukrea_cpuimx35/lowlevel.c
@@ -30,7 +30,9 @@
 #include <asm-generic/memory_layout.h>
 #include <asm/system.h>
 
-void __bare_init __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
+void __naked BARE_INIT_FUNCTION(barebox_arm_reset_vector)(uint32_t r0,
+							  uint32_t r1,
+							  uint32_t r2)
 {
 	uint32_t r, s;
 	unsigned long ccm_base = MX35_CCM_BASE_ADDR;
diff --git a/arch/arm/boards/friendlyarm-tiny210/lowlevel.c b/arch/arm/boards/friendlyarm-tiny210/lowlevel.c
index 17a7cf1591..a0e7e7dec3 100644
--- a/arch/arm/boards/friendlyarm-tiny210/lowlevel.c
+++ b/arch/arm/boards/friendlyarm-tiny210/lowlevel.c
@@ -30,7 +30,7 @@
 #define IRAM_CODE_BASE		0xD0020010
 
 /* Tiny210 has 4 leds numbered from 0 to 3 at GPJ2 */
-static inline void __bare_init debug_led(int led, bool state)
+static inline void BARE_INIT_FUNCTION(debug_led)(int led, bool state)
 {
 	uint32_t r;
 	/* GPJ2CON: mode 0001=output */
@@ -53,7 +53,7 @@ static inline void __bare_init debug_led(int led, bool state)
 #define ADDR_V210_SDMMC_BASE	0xD0037488
 #define ADDR_CopySDMMCtoMem	0xD0037F98
 
-static int __bare_init s5p_irom_load_mmc(void *dest, uint32_t start_block,
+static int BARE_INIT_FUNCTION(s5p_irom_load_mmc)(void *dest, uint32_t start_block,
 					 uint16_t block_count)
 {
 	typedef uint32_t (*func_t) (int32_t, uint32_t, uint16_t, uint32_t*, int8_t);
@@ -65,7 +65,7 @@ static int __bare_init s5p_irom_load_mmc(void *dest, uint32_t start_block,
 	return func(chan, start_block, block_count, (uint32_t*)dest, 0) ? 1 : 0;
 }
 
-static __bare_init __naked void jump_sdram(unsigned long offset)
+static __naked void BARE_INIT_FUNCTION(jump_sdram)(unsigned long offset)
 {
 	__asm__ __volatile__ (
 			"sub lr, lr, %0;"
@@ -73,13 +73,14 @@ static __bare_init __naked void jump_sdram(unsigned long offset)
 			);
 }
 
-static __bare_init bool load_stage2(void *dest, size_t size)
+static bool BARE_INIT_FUNCTION(load_stage2)(void *dest, size_t size)
 {
 	/* TODO add other ways to boot */
 	return s5p_irom_load_mmc(dest, 1, (size+ 511) / 512);
 }
 
-void __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
+void BARE_INIT_FUNCTION(barebox_arm_reset_vector)(uint32_t r0, uint32_t r1,
+						  uint32_t r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/guf-cupid/lowlevel.c b/arch/arm/boards/guf-cupid/lowlevel.c
index 60dd567298..9d222a7c4c 100644
--- a/arch/arm/boards/guf-cupid/lowlevel.c
+++ b/arch/arm/boards/guf-cupid/lowlevel.c
@@ -37,7 +37,8 @@
 #define SDRAM_COMPARE_CONST1	0x55555555
 #define SDRAM_COMPARE_CONST2	0xaaaaaaaa
 
-static void __bare_init noinline setup_sdram(u32 memsize, u32 mode, u32 sdram_addr)
+static void noinline BARE_INIT_FUNCTION(setup_sdram)(u32 memsize, u32 mode,
+						     u32 sdram_addr)
 {
 	volatile int loop;
 	void *r9 = (void *)MX35_CSD0_BASE_ADDR;
@@ -158,7 +159,9 @@ static void __bare_init noinline setup_sdram(u32 memsize, u32 mode, u32 sdram_ad
 #define UNALIGNED_ACCESS_ENABLE
 #define LOW_INT_LATENCY_ENABLE
 
-void __bare_init __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
+void __naked BARE_INIT_FUNCTION(barebox_arm_reset_vector)(uint32_t r0,
+							  uint32_t r1,
+							  uint32_t r2)
 {
 	void *iomuxc_base = (void *)MX35_IOMUXC_BASE_ADDR;
 	int i;
diff --git a/arch/arm/boards/guf-neso/lowlevel.c b/arch/arm/boards/guf-neso/lowlevel.c
index 3ae70eca30..47eb4ea1d5 100644
--- a/arch/arm/boards/guf-neso/lowlevel.c
+++ b/arch/arm/boards/guf-neso/lowlevel.c
@@ -32,7 +32,9 @@
 
 #define ESDCTL0_VAL (ESDCTL0_SDE | ESDCTL0_ROW13 | ESDCTL0_COL10)
 
-void __bare_init __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
+void __naked BARE_INIT_FUNCTION(barebox_arm_reset_vector)(uint32_t r0,
+							  uint32_t r1,
+							  uint32_t r2)
 {
 	uint32_t r;
 	int i;
diff --git a/arch/arm/boards/karo-tx25/lowlevel.c b/arch/arm/boards/karo-tx25/lowlevel.c
index 6c34944f74..d44418a735 100644
--- a/arch/arm/boards/karo-tx25/lowlevel.c
+++ b/arch/arm/boards/karo-tx25/lowlevel.c
@@ -50,7 +50,7 @@ static inline void setup_uart(void)
 	putc_ll('>');
 }
 
-static inline void __bare_init  setup_sdram(uint32_t base, uint32_t esdctl,
+static inline void BARE_INIT_FUNCTION(setup_sdram)(uint32_t base, uint32_t esdctl,
 		uint32_t esdcfg)
 {
 	uint32_t esdctlreg = MX25_ESDCTL_BASE_ADDR + IMX_ESDCTL0;
@@ -91,7 +91,7 @@ static void __noreturn karo_tx25_load_nand(void)
 	karo_tx25_start();
 }
 
-static void __bare_init karo_tx25_common_init(void)
+static void BARE_INIT_FUNCTION(karo_tx25_common_init)(void)
 {
 	uint32_t r;
 
diff --git a/arch/arm/boards/phytec-phycard-imx27/lowlevel.c b/arch/arm/boards/phytec-phycard-imx27/lowlevel.c
index 40d39680fd..ff348cba14 100644
--- a/arch/arm/boards/phytec-phycard-imx27/lowlevel.c
+++ b/arch/arm/boards/phytec-phycard-imx27/lowlevel.c
@@ -94,7 +94,7 @@ static void __noreturn phytec_phycard_imx27_load_nand(void)
 	phytec_phycard_imx27_start();
 }
 
-static noinline void __bare_init phytec_phycard_imx27_common_init(int sdram)
+static noinline void BARE_INIT_FUNCTION(phytec_phycard_imx27_common_init)(int sdram)
 {
 	unsigned long r;
 
diff --git a/arch/arm/boards/phytec-phycore-imx27/lowlevel.c b/arch/arm/boards/phytec-phycore-imx27/lowlevel.c
index b3bebdb6df..780f0ca508 100644
--- a/arch/arm/boards/phytec-phycore-imx27/lowlevel.c
+++ b/arch/arm/boards/phytec-phycore-imx27/lowlevel.c
@@ -50,7 +50,7 @@ static void __noreturn phytec_phycore_imx27_load_nand(void)
 	phytec_phycore_imx27_start();
 }
 
-static void __bare_init noinline phytec_phycore_imx27_common_init(void)
+static void noinline BARE_INIT_FUNCTION(phytec_phycore_imx27_common_init)(void)
 {
 	uint32_t r;
 	int i;
diff --git a/arch/arm/boards/phytec-phycore-imx31/lowlevel.c b/arch/arm/boards/phytec-phycore-imx31/lowlevel.c
index 98e1e8711d..0c7bd6b5ed 100644
--- a/arch/arm/boards/phytec-phycore-imx31/lowlevel.c
+++ b/arch/arm/boards/phytec-phycore-imx31/lowlevel.c
@@ -31,7 +31,9 @@
 
 #define ESDCTL0_VAL (ESDCTL0_SDE | ESDCTL0_ROW13 | ESDCTL0_COL10)
 
-void __bare_init __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
+void __naked BARE_INIT_FUNCTION(barebox_arm_reset_vector)(uint32_t r0,
+							  uint32_t r1,
+							  uint32_t r2)
 {
 	uint32_t r;
 	volatile int v;
diff --git a/arch/arm/boards/phytec-phycore-imx35/lowlevel.c b/arch/arm/boards/phytec-phycore-imx35/lowlevel.c
index 9768009be8..685dbe68d1 100644
--- a/arch/arm/boards/phytec-phycore-imx35/lowlevel.c
+++ b/arch/arm/boards/phytec-phycore-imx35/lowlevel.c
@@ -35,7 +35,9 @@
 #define CCM_PDR0_399	0x00011000
 #define CCM_PDR0_532	0x00001000
 
-void __bare_init __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
+void __naked BARE_INIT_FUNCTION(barebox_arm_reset_vector)(uint32_t r0,
+							  uint32_t r1,
+							  uint32_t r2)
 {
 	uint32_t r, s;
 	unsigned long ccm_base = MX35_CCM_BASE_ADDR;
diff --git a/arch/arm/mach-imx/external-nand-boot.c b/arch/arm/mach-imx/external-nand-boot.c
index 123589c071..26db8ed142 100644
--- a/arch/arm/mach-imx/external-nand-boot.c
+++ b/arch/arm/mach-imx/external-nand-boot.c
@@ -28,11 +28,7 @@
 #include <mach/imx31-regs.h>
 #include <mach/imx35-regs.h>
 
-#define BARE_INIT_FUNCTION(name)  \
-	__section(.text_bare_init_##name) \
-		name
-
-static void __bare_init noinline imx_nandboot_wait_op_done(void __iomem *regs)
+static void BARE_INIT_FUNCTION(imx_nandboot_wait_op_done)(void __iomem *regs)
 {
 	u32 r;
 
@@ -53,7 +49,7 @@ static void __bare_init noinline imx_nandboot_wait_op_done(void __iomem *regs)
  *
  * @param       cmd     command for NAND Flash
  */
-static void __bare_init imx_nandboot_send_cmd(void *regs, u16 cmd)
+static void BARE_INIT_FUNCTION(imx_nandboot_send_cmd)(void *regs, u16 cmd)
 {
 	writew(cmd, regs + NFC_V1_V2_FLASH_CMD);
 	writew(NFC_CMD, regs + NFC_V1_V2_CONFIG2);
@@ -69,7 +65,7 @@ static void __bare_init imx_nandboot_send_cmd(void *regs, u16 cmd)
  * @param       addr    address to be written to NFC.
  * @param       islast  True if this is the last address cycle for command
  */
-static void __bare_init noinline imx_nandboot_send_addr(void *regs, u16 addr)
+static void noinline BARE_INIT_FUNCTION(imx_nandboot_send_addr)(void *regs, u16 addr)
 {
 	writew(addr, regs + NFC_V1_V2_FLASH_ADDR);
 	writew(NFC_ADDR, regs + NFC_V1_V2_CONFIG2);
@@ -78,7 +74,7 @@ static void __bare_init noinline imx_nandboot_send_addr(void *regs, u16 addr)
 	imx_nandboot_wait_op_done(regs);
 }
 
-static void __bare_init imx_nandboot_nfc_addr(void *regs, u32 offs, int pagesize_2k)
+static void BARE_INIT_FUNCTION(imx_nandboot_nfc_addr)(void *regs, u32 offs, int pagesize_2k)
 {
 	imx_nandboot_send_addr(regs, offs & 0xff);
 
@@ -95,7 +91,7 @@ static void __bare_init imx_nandboot_nfc_addr(void *regs, u32 offs, int pagesize
 	}
 }
 
-static void __bare_init imx_nandboot_send_page(void *regs, int v1,
+static void BARE_INIT_FUNCTION(imx_nandboot_send_page)(void *regs, int v1,
 		unsigned int ops, int pagesize_2k)
 {
 	int bufs, i;
@@ -116,7 +112,7 @@ static void __bare_init imx_nandboot_send_page(void *regs, int v1,
 	}
 }
 
-static void __bare_init __memcpy32(void *trg, const void *src, int size)
+static void BARE_INIT_FUNCTION(__memcpy32)(void *trg, const void *src, int size)
 {
 	int i;
 	unsigned int *t = trg;
@@ -126,7 +122,7 @@ static void __bare_init __memcpy32(void *trg, const void *src, int size)
 		*t++ = *s++;
 }
 
-static noinline void __bare_init imx_nandboot_get_page(void *regs, int v1,
+static noinline void BARE_INIT_FUNCTION(imx_nandboot_get_page)(void *regs, int v1,
 		u32 offs, int pagesize_2k)
 {
 	imx_nandboot_send_cmd(regs, NAND_CMD_READ0);
@@ -134,8 +130,9 @@ static noinline void __bare_init imx_nandboot_get_page(void *regs, int v1,
 	imx_nandboot_send_page(regs, v1, NFC_OUTPUT, pagesize_2k);
 }
 
-static void __bare_init imx_nand_load_image(void *dest, int v1,
-					    void __iomem *base, int pagesize_2k)
+static void BARE_INIT_FUNCTION(imx_nand_load_image)(void *dest, int v1,
+						    void __iomem *base,
+						    int pagesize_2k)
 {
 	u32 tmp, page, block, blocksize, pagesize, badblocks;
 	int bbt = 0;
diff --git a/arch/arm/mach-samsung/lowlevel-s5pcxx.c b/arch/arm/mach-samsung/lowlevel-s5pcxx.c
index 15afa47ce3..7a366eb3f1 100644
--- a/arch/arm/mach-samsung/lowlevel-s5pcxx.c
+++ b/arch/arm/mach-samsung/lowlevel-s5pcxx.c
@@ -24,7 +24,7 @@
 #include <mach/s3c-generic.h>
 
 #ifdef CONFIG_S3C_PLL_INIT
-void  __bare_init s5p_init_pll(void)
+void  BARE_INIT_FUNCTION(s5p_init_pll)(void)
 {
     uint32_t reg;
     int i;
diff --git a/arch/arm/mach-samsung/mem-s5pcxx.c b/arch/arm/mach-samsung/mem-s5pcxx.c
index 943f691769..26cab8db40 100644
--- a/arch/arm/mach-samsung/mem-s5pcxx.c
+++ b/arch/arm/mach-samsung/mem-s5pcxx.c
@@ -104,7 +104,7 @@
  */
 #define dcmd(x) writel((x) | CHIP(chip), base + S5P_DMC_DIRECTCMD)
 
-static void __bare_init s5p_dram_init_seq_lpddr(phys_addr_t base, unsigned chip)
+static void BARE_INIT_FUNCTION(s5p_dram_init_seq_lpddr)(phys_addr_t base, unsigned chip)
 {
 	const uint32_t emr = 0x400; /* DQS disable */
 	const uint32_t mr = (((S5P_DRAM_WR) - 1) << 9)
@@ -116,7 +116,7 @@ static void __bare_init s5p_dram_init_seq_lpddr(phys_addr_t base, unsigned chip)
 	dcmd(EMRS1 | ADDR(emr));
 }
 
-static void __bare_init s5p_dram_init_seq_lpddr2(phys_addr_t base, unsigned chip)
+static void BARE_INIT_FUNCTION(s5p_dram_init_seq_lpddr2)(phys_addr_t base, unsigned chip)
 {
 	const uint32_t mr = (((S5P_DRAM_WR) - 1) << 9)
 			  | ((S5P_DRAM_CAS) << 4)
@@ -129,7 +129,7 @@ static void __bare_init s5p_dram_init_seq_lpddr2(phys_addr_t base, unsigned chip
 	} while (readl(base + S5P_DMC_MRSTATUS) & 0x01); /* poll DAI */
 }
 
-static void __bare_init s5p_dram_init_seq_ddr2(phys_addr_t base, unsigned chip)
+static void BARE_INIT_FUNCTION(s5p_dram_init_seq_ddr2)(phys_addr_t base, unsigned chip)
 {
 	const uint32_t emr = 0x400; /* DQS disable */
 	const uint32_t mr = (((S5P_DRAM_WR) - 1) << 9)
@@ -148,7 +148,7 @@ static void __bare_init s5p_dram_init_seq_ddr2(phys_addr_t base, unsigned chip)
 
 #undef dcmd
 
-static inline void __bare_init s5p_dram_start_dll(phys_addr_t base, uint32_t phycon1)
+static inline void BARE_INIT_FUNCTION(s5p_dram_start_dll)(phys_addr_t base, uint32_t phycon1)
 {
 	uint32_t pc0 = 0x00101000; /* the only legal initial value */
 	uint32_t lv;
@@ -176,8 +176,9 @@ static inline void __bare_init s5p_dram_start_dll(phys_addr_t base, uint32_t phy
 	writel(pc0, base + S5P_DMC_PHYCONTROL0); /* force value locking */
 }
 
-static inline void __bare_init s5p_dram_setup(phys_addr_t base, uint32_t mc0, uint32_t mc1,
-				       int bus16, uint32_t mcon)
+static inline void BARE_INIT_FUNCTION(s5p_dram_setup)(phys_addr_t base,
+						      uint32_t mc0, uint32_t mc1,
+						      int bus16, uint32_t mcon)
 {
 	mcon |= (S5P_DRAM_BURST) << 20;
 	/* 16 or 32-bit bus ? */
@@ -202,7 +203,7 @@ static inline void __bare_init s5p_dram_setup(phys_addr_t base, uint32_t mc0, ui
 	writel(DMC_TIMING_PWR,  base + S5P_DMC_TIMINGPOWER);
 }
 
-static inline void __bare_init s5p_dram_start(phys_addr_t base)
+static inline void BARE_INIT_FUNCTION(s5p_dram_start)(phys_addr_t base)
 {
 	/* Reasonable defaults and auto-refresh on */
 	writel(0x0FFF1070, base + S5P_DMC_CONCONTROL);
@@ -214,7 +215,8 @@ static inline void __bare_init s5p_dram_start(phys_addr_t base)
  * Initialize LPDDR memory bank
  * TODO: this function is untested, see also init_seq function
  */
-void __bare_init s5p_init_dram_bank_lpddr(phys_addr_t base, uint32_t mc0, uint32_t mc1, int bus16)
+void BARE_INIT_FUNCTION(s5p_init_dram_bank_lpddr)(phys_addr_t base, uint32_t mc0,
+						  uint32_t mc1, int bus16)
 {
 	/* refcount 8, 90 deg. shift */
 	s5p_dram_start_dll(base, 0x00000085);
@@ -233,7 +235,8 @@ void __bare_init s5p_init_dram_bank_lpddr(phys_addr_t base, uint32_t mc0, uint32
  * Initialize LPDDR2 memory bank
  * TODO: this function is untested, see also init_seq function
  */
-void __bare_init s5p_init_dram_bank_lpddr2(phys_addr_t base, uint32_t mc0, uint32_t mc1, int bus16)
+void BARE_INIT_FUNCTION(s5p_init_dram_bank_lpddr2)(phys_addr_t base, uint32_t mc0,
+						   uint32_t mc1, int bus16)
 {
 	/* refcount 8, 90 deg. shift */
 	s5p_dram_start_dll(base, 0x00000085);
@@ -251,7 +254,8 @@ void __bare_init s5p_init_dram_bank_lpddr2(phys_addr_t base, uint32_t mc0, uint3
 /*
  * Initialize DDR2 memory bank
  */
-void __bare_init s5p_init_dram_bank_ddr2(phys_addr_t base, uint32_t mc0, uint32_t mc1, int bus16)
+void BARE_INIT_FUNCTION(s5p_init_dram_bank_ddr2)(phys_addr_t base, uint32_t mc0,
+						 uint32_t mc1, int bus16)
 {
 	/* refcount 8, 180 deg. shift */
 	s5p_dram_start_dll(base, 0x00000086);
diff --git a/include/init.h b/include/init.h
index 1c0e3f090a..a05026ef4e 100644
--- a/include/init.h
+++ b/include/init.h
@@ -62,7 +62,9 @@ typedef void (*exitcall_t)(void);
  *
  * Mainly useful for booting from NAND Controllers
  */
-#define __bare_init          __section(.text_bare_init.text)
+#define BARE_INIT_FUNCTION(name)  \
+	__section(.text_bare_init_##name) \
+		name
 
 #endif
 
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
