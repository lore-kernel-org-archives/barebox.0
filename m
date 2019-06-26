Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([78.46.208.201])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg01c-0005Yb-Ji
 for barebox@lists.infradead.org; Wed, 26 Jun 2019 04:59:18 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Wed, 26 Jun 2019 06:58:54 +0200
Message-Id: <fbb9cb60a43e436b80c74b7900c8ed6d108991d0.1561525118.git-series.r.czerwinski@pengutronix.de>
In-Reply-To: <cover.a507585555be94a0fb8946fdfd851a30ab8b296f.1561525118.git-series.r.czerwinski@pengutronix.de>
References: <cover.a507585555be94a0fb8946fdfd851a30ab8b296f.1561525118.git-series.r.czerwinski@pengutronix.de>
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
Subject: [PATCH 13/13] boards: nxp-mx8-evk: rework to different boot flow
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

Rework the evk boot flow to use the new piggydata load function and
install a trampoline for the TF-A setup. This allows the PBL boot
process to stay in SRAM up until the verification of the piggydata is
done and main barebox can be loaded

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 arch/arm/boards/nxp-imx8mq-evk/flash-header-imx8mq-evk.imxcfg |  1 +-
 arch/arm/boards/nxp-imx8mq-evk/lowlevel.c                     | 78 +++----
 2 files changed, 42 insertions(+), 37 deletions(-)

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
index 6451e5d..67dc876 100644
--- a/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
+++ b/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
@@ -53,18 +53,21 @@ static void setup_uart(void)
 
 static void nxp_imx8mq_evk_sram_setup(void)
 {
-	enum bootsource src = BOOTSOURCE_UNKNOWN;
-	int instance = BOOTSOURCE_INSTANCE_UNKNOWN;
-	int ret = -ENOTSUPP;
-
 	ddr_init();
+}
 
-	imx8_get_boot_source(&src, &instance);
-
-	if (src == BOOTSOURCE_MMC)
-		ret = imx8_esdhc_start_image(instance);
-
-	BUG_ON(ret);
+static void nxp_imx8mq_evk_install_tfa_trampoline(void)
+{
+	/*
+	 * Create a trampoline which is places in DRAM and calls back into the
+	 * PBL entry function found in the TCRAM. Register x0 is set to 1 to
+	 * indicate that DRAM setup was already run.
+	 */
+	int trampoline[4] = {0xd2840013, /* mov     x19, #0x2000 */
+			     0xf2a00fd3, /* movk    x19, #0x7e, lsl #16 */
+			     0xd2800020, /* mov     x0, #0x1 */
+			     0xd61f0260};/* br      x19 */
+	memcpy((void *)MX8MQ_ATF_BL33_BASE_ADDR, &trampoline,  16);
 }
 
 /*
@@ -75,50 +78,51 @@ static void nxp_imx8mq_evk_sram_setup(void)
  * 1. MaskROM uploads PBL into OCRAM and that's where this function is
  *    executed for the first time
  *
- * 2. DDR is initialized and full i.MX image is loaded to the
- *    beginning of RAM
+ * 2. DDR is initialized and the TF-A trampoline is installed in the
+ *    DRAM.
  *
- * 3. start_nxp_imx8mq_evk, now in RAM, is executed again
+ * 3. TF-A is executed and exits into the trampoline in RAM, which enters the
+ *    PBL for the second time. DRAM setup done is indicated by a one in register
+ *    x0 by the trampoline
  *
- * 4. BL31 blob is uploaded to OCRAM and the control is transfer to it
+ * 4. The piggydata is loaded from the SD card and copied to the expected
+ *    location in the DRAM.
  *
- * 5. BL31 exits EL3 into EL2 at address MX8MQ_ATF_BL33_BASE_ADDR,
- *    executing start_nxp_imx8mq_evk() the third time
- *
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
-- 
git-series 0.9.1

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
