Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([78.46.208.201])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huZE9-0004J8-Mt
 for barebox@lists.infradead.org; Mon, 05 Aug 2019 09:24:27 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Mon,  5 Aug 2019 11:23:55 +0200
Message-Id: <209a8ba450cb170543983cbb0a57be65838e639a.1564997015.git-series.r.czerwinski@pengutronix.de>
In-Reply-To: <cover.b9d503ab98014278972f6bd84931035a5ef27967.1564997015.git-series.r.czerwinski@pengutronix.de>
References: <cover.b9d503ab98014278972f6bd84931035a5ef27967.1564997015.git-series.r.czerwinski@pengutronix.de>
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
Subject: [PATCH v2 16/16] boards: nxp-mx8-evk: rework to different boot flow
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

Rework the evk boot flow to use the new piggydata load function and
install a trampoline for the TF-A setup. This allows the PBL boot
process to stay in SRAM up until the verification of the piggydata is
done and main barebox can be loaded.

The trampoline loads 4 bytes right after the trampoline, we copy the
runtime offset there so the trampoline jumps back into the SRAM PBL.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 arch/arm/boards/nxp-imx8mq-evk/Makefile                       |  4 +-
 arch/arm/boards/nxp-imx8mq-evk/flash-header-imx8mq-evk.imxcfg |  1 +-
 arch/arm/boards/nxp-imx8mq-evk/lowlevel.c                     | 83 +++----
 arch/arm/boards/nxp-imx8mq-evk/trampoline.S                   | 11 +-
 images/Makefile.imx                                           |  3 +-
 5 files changed, 60 insertions(+), 42 deletions(-)
 create mode 100644 arch/arm/boards/nxp-imx8mq-evk/trampoline.S

diff --git a/arch/arm/boards/nxp-imx8mq-evk/Makefile b/arch/arm/boards/nxp-imx8mq-evk/Makefile
index 0546b0b..7907de4 100644
--- a/arch/arm/boards/nxp-imx8mq-evk/Makefile
+++ b/arch/arm/boards/nxp-imx8mq-evk/Makefile
@@ -1,4 +1,2 @@
 obj-y += board.o
-lwl-y += lowlevel.o ddr_init.o ddrphy_train.o
-
-
+lwl-y += lowlevel.o ddr_init.o ddrphy_train.o trampoline.o
diff --git a/arch/arm/boards/nxp-imx8mq-evk/flash-header-imx8mq-evk.imxcfg b/arch/arm/boards/nxp-imx8mq-evk/flash-header-imx8mq-evk.imxcfg
index aff8321..11463fe 100644
--- a/arch/arm/boards/nxp-imx8mq-evk/flash-header-imx8mq-evk.imxcfg
+++ b/arch/arm/boards/nxp-imx8mq-evk/flash-header-imx8mq-evk.imxcfg
@@ -3,3 +3,4 @@ soc imx8mq
 loadaddr 0x007E1000
 max_load_size 0x3F000
 dcdofs 0x400
+#include <mach/habv4-imx8-gencsf.h>
diff --git a/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c b/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
index 6451e5d..2e23a4c 100644
--- a/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
+++ b/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
@@ -53,20 +53,29 @@ static void setup_uart(void)
 
 static void nxp_imx8mq_evk_sram_setup(void)
 {
-	enum bootsource src = BOOTSOURCE_UNKNOWN;
-	int instance = BOOTSOURCE_INSTANCE_UNKNOWN;
-	int ret = -ENOTSUPP;
-
 	ddr_init();
+}
 
-	imx8_get_boot_source(&src, &instance);
+extern unsigned char trampoline_start[];
+extern unsigned char trampoline_end[];
 
-	if (src == BOOTSOURCE_MMC)
-		ret = imx8_esdhc_start_image(instance);
+static void nxp_imx8mq_evk_install_tfa_trampoline(void)
+{
+	unsigned int tramp_len;
+	unsigned int offset;
+	/*
+	 * Create a trampoline which is places in DRAM and calls back into the
+	 * PBL entry function found in the TCRAM. Register x0 is set to 1 to
+	 * indicate that DRAM setup was already run.
+	 */
+	tramp_len = (void *)trampoline_end - (void *)trampoline_start;
+	memcpy((void *)MX8MQ_ATF_BL33_BASE_ADDR, (void *)trampoline_start,
+	       tramp_len);
 
-	BUG_ON(ret);
+	offset = get_runtime_offset();
+	memcpy((void *)MX8MQ_ATF_BL33_BASE_ADDR + tramp_len, &offset,
+	       sizeof(offset));
 }
-
 /*
  * Power-on execution flow of start_nxp_imx8mq_evk() might not be
  * obvious for a very first read, so here's, hopefully helpful,
@@ -75,53 +84,53 @@ static void nxp_imx8mq_evk_sram_setup(void)
  * 1. MaskROM uploads PBL into OCRAM and that's where this function is
  *    executed for the first time
  *
- * 2. DDR is initialized and full i.MX image is loaded to the
- *    beginning of RAM
- *
- * 3. start_nxp_imx8mq_evk, now in RAM, is executed again
+ * 2. DDR is initialized and the TF-A trampoline is installed in the
+ *    DRAM.
  *
- * 4. BL31 blob is uploaded to OCRAM and the control is transfer to it
+ * 3. TF-A is executed and exits into the trampoline in RAM, which enters the
+ *    PBL for the second time. DRAM setup done is indicated by a one in register
+ *    x0 by the trampoline
  *
- * 5. BL31 exits EL3 into EL2 at address MX8MQ_ATF_BL33_BASE_ADDR,
- *    executing start_nxp_imx8mq_evk() the third time
+ * 4. The piggydata is loaded from the SD card and copied to the expected
+ *    location in the DRAM.
  *
- * 6. Standard barebox boot flow continues
+ * 5. Standard barebox boot flow continues
  */
 ENTRY_FUNCTION(start_nxp_imx8mq_evk, r0, r1, r2)
 {
+	enum bootsource src = BOOTSOURCE_UNKNOWN;
+	int instance = BOOTSOURCE_INSTANCE_UNKNOWN;
+	int ret = -ENOTSUPP;
+	const u8 *bl31;
+	size_t bl31_size;
+
 	imx8mq_cpu_lowlevel_init();
 
 	if (IS_ENABLED(CONFIG_DEBUG_LL))
 		setup_uart();
 
-	if (get_pc() < MX8MQ_DDR_CSD1_BASE_ADDR) {
-		/*
-		 * We assume that we were just loaded by MaskROM into
-		 * SRAM if we are not running from DDR. We also assume
-		 * that means DDR needs to be initialized for the
-		 * first time.
-		 */
-		nxp_imx8mq_evk_sram_setup();
-	}
 	/*
-	 * Straight from the power-on we are at EL3, so the following
-	 * code _will_ load and jump to ATF.
-	 *
-	 * However when we are re-executed upon exit from ATF's
-	 * initialization routine, it is EL2 which means we'll skip
-	 * loadting ATF blob again
+	 * if register r0 does not contain 1, we are running for the first time
+	 * and need to initialize the DRAM, install the trampoline and run TF-A
+	 * (BL31).
+	 * Otherwise the 1 indicates that the DRAM setup and trampoline are
+	 * already installed and TF-A has been run. In this case we can skip
 	 */
-	if (current_el() == 3) {
-		const u8 *bl31;
-		size_t bl31_size;
-
+	if (r0 != 1) {
+		nxp_imx8mq_evk_sram_setup();
+		nxp_imx8mq_evk_install_tfa_trampoline();
 		get_builtin_firmware(imx8mq_bl31_bin, &bl31, &bl31_size);
 		imx8mq_atf_load_bl31(bl31, bl31_size);
 	}
 
+	imx8_get_boot_source(&src, &instance);
+
+	if (src == BOOTSOURCE_MMC)
+		ret = imx8_esdhc_load_piggy(instance);
+	else
+		BUG_ON(ret);
 	/*
 	 * Standard entry we hit once we initialized both DDR and ATF
 	 */
 	imx8mq_barebox_entry(__dtb_imx8mq_evk_start);
 }
-
diff --git a/arch/arm/boards/nxp-imx8mq-evk/trampoline.S b/arch/arm/boards/nxp-imx8mq-evk/trampoline.S
new file mode 100644
index 0000000..49bd750
--- /dev/null
+++ b/arch/arm/boards/nxp-imx8mq-evk/trampoline.S
@@ -0,0 +1,11 @@
+/* SPDX-License-Identifier: (GPL-2.0) */
+#include <linux/linkage.h>
+#include <asm/sections.h>
+	.section .trampoline,"a"
+	.globl  trampoline_start
+trampoline_start:
+	ldr	w19, trampoline_end
+	mov     x0, #0x1
+	br      x19
+	.globl  trampoline_end
+trampoline_end:
diff --git a/images/Makefile.imx b/images/Makefile.imx
index 76beccb..0fd1fe1 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -582,8 +582,7 @@ image-$(CONFIG_MACH_ZII_IMX7D_DEV) += barebox-zii-imx7d-dev.img
 # ----------------------- i.MX8mq based boards --------------------------
 pblb-$(CONFIG_MACH_NXP_IMX8MQ_EVK) += start_nxp_imx8mq_evk
 CFG_start_nxp_imx8mq_evk.pblb.imximg = $(board)/nxp-imx8mq-evk/flash-header-imx8mq-evk.imxcfg
-MAX_PBL_MEMORY_SIZE_start_nxp_imx8mq_evk = 0x3f000
-FILE_barebox-nxp-imx8mq-evk.img = start_nxp_imx8mq_evk.pblb.imximg
+FILE_barebox-nxp-imx8mq-evk.img = start_nxp_imx8mq_evk.pblb.pimximg
 image-$(CONFIG_MACH_NXP_IMX8MQ_EVK) += barebox-nxp-imx8mq-evk.img
 
 pblb-$(CONFIG_MACH_ZII_IMX8MQ_DEV) += start_zii_imx8mq_dev
-- 
git-series 0.9.1

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
