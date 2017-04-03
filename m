Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cuzeN-0007YL-JK
 for barebox@lists.infradead.org; Mon, 03 Apr 2017 10:56:10 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon,  3 Apr 2017 12:55:17 +0200
Message-Id: <20170403105523.16797-2-s.trumtrar@pengutronix.de>
In-Reply-To: <20170403105523.16797-1-s.trumtrar@pengutronix.de>
References: <20170403105523.16797-1-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 1/7] ARM: socfpga: rename socfpga->cyclone5
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Prepare the SoCFPGA code base for different system types
(Arria10, Stratix10,...).

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/boards/altera-socdk/board.c               |   2 +-
 .../boards/altera-socdk/iocsr_config_cyclone5.c    |   2 +-
 arch/arm/boards/altera-socdk/lowlevel.c            |   4 +-
 arch/arm/boards/ebv-socrates/board.c               |   2 +-
 .../boards/ebv-socrates/iocsr_config_cyclone5.c    |   2 +-
 arch/arm/boards/ebv-socrates/lowlevel.c            |   4 +-
 arch/arm/boards/terasic-de0-nano-soc/board.c       |   2 +-
 .../terasic-de0-nano-soc/iocsr_config_cyclone5.c   |   2 +-
 arch/arm/boards/terasic-de0-nano-soc/lowlevel.c    |   4 +-
 arch/arm/boards/terasic-sockit/board.c             |   1 -
 .../boards/terasic-sockit/iocsr_config_cyclone5.c  |   2 +-
 arch/arm/boards/terasic-sockit/lowlevel.c          |   4 +-
 arch/arm/mach-socfpga/Makefile                     |   6 +-
 .../{bootsource.c => cyclone5-bootsource.c}        |  12 +-
 .../{clock-manager.c => cyclone5-clock-manager.c}  |   4 +-
 ...e-controller.c => cyclone5-freeze-controller.c} |   2 +-
 arch/arm/mach-socfpga/cyclone5-generic.c           | 210 +++++++++++++++++++++
 arch/arm/mach-socfpga/{init.c => cyclone5-init.c}  |  10 +-
 .../{reset-manager.c => cyclone5-reset-manager.c}  |   4 +-
 .../{scan-manager.c => cyclone5-scan-manager.c}    |   4 +-
 ...{system-manager.c => cyclone5-system-manager.c} |   4 +-
 .../{clock-manager.h => cyclone5-clock-manager.h}  |   6 +-
 ...e-controller.h => cyclone5-freeze-controller.h} |   6 +-
 .../mach/{socfpga-regs.h => cyclone5-regs.h}       |   0
 .../{reset-manager.h => cyclone5-reset-manager.h}  |   0
 .../{scan-manager.h => cyclone5-scan-manager.h}    |   2 +-
 .../{sdram_config.h => cyclone5-sdram-config.h}    |   6 +-
 .../include/mach/{sdram.h => cyclone5-sdram.h}     |   0
 .../mach/{sequencer.c => cyclone5-sequencer.c}     |   6 +-
 .../mach/{sequencer.h => cyclone5-sequencer.h}     |   0
 ...{system-manager.h => cyclone5-system-manager.h} |   0
 arch/arm/mach-socfpga/include/mach/pll_config.h    |   2 +-
 arch/arm/mach-socfpga/include/mach/sdram_io.h      |   2 +-
 .../mach-socfpga/include/mach/sequencer_defines.h  |   6 -
 arch/arm/mach-socfpga/include/mach/system.h        |   0
 arch/arm/mach-socfpga/include/mach/tclrpt.h        |   2 +-
 arch/arm/mach-socfpga/nic301.c                     |   2 +-
 arch/arm/mach-socfpga/xload.c                      |   4 +-
 drivers/firmware/socfpga.c                         |   8 +-
 scripts/socfpga_import_preloader                   |   2 +-
 40 files changed, 271 insertions(+), 70 deletions(-)
 rename arch/arm/mach-socfpga/{bootsource.c => cyclone5-bootsource.c} (79%)
 rename arch/arm/mach-socfpga/{clock-manager.c => cyclone5-clock-manager.c} (99%)
 rename arch/arm/mach-socfpga/{freeze-controller.c => cyclone5-freeze-controller.c} (99%)
 create mode 100644 arch/arm/mach-socfpga/cyclone5-generic.c
 rename arch/arm/mach-socfpga/{init.c => cyclone5-init.c} (89%)
 rename arch/arm/mach-socfpga/{reset-manager.c => cyclone5-reset-manager.c} (96%)
 rename arch/arm/mach-socfpga/{scan-manager.c => cyclone5-scan-manager.c} (98%)
 rename arch/arm/mach-socfpga/{system-manager.c => cyclone5-system-manager.c} (93%)
 rename arch/arm/mach-socfpga/include/mach/{clock-manager.h => cyclone5-clock-manager.h} (99%)
 rename arch/arm/mach-socfpga/include/mach/{freeze-controller.h => cyclone5-freeze-controller.h} (96%)
 rename arch/arm/mach-socfpga/include/mach/{socfpga-regs.h => cyclone5-regs.h} (100%)
 rename arch/arm/mach-socfpga/include/mach/{reset-manager.h => cyclone5-reset-manager.h} (100%)
 rename arch/arm/mach-socfpga/include/mach/{scan-manager.h => cyclone5-scan-manager.h} (99%)
 rename arch/arm/mach-socfpga/include/mach/{sdram_config.h => cyclone5-sdram-config.h} (98%)
 rename arch/arm/mach-socfpga/include/mach/{sdram.h => cyclone5-sdram.h} (100%)
 rename arch/arm/mach-socfpga/include/mach/{sequencer.c => cyclone5-sequencer.c} (99%)
 rename arch/arm/mach-socfpga/include/mach/{sequencer.h => cyclone5-sequencer.h} (100%)
 rename arch/arm/mach-socfpga/include/mach/{system-manager.h => cyclone5-system-manager.h} (100%)
 mode change 100755 => 100644 arch/arm/mach-socfpga/include/mach/sdram_io.h
 delete mode 100644 arch/arm/mach-socfpga/include/mach/sequencer_defines.h
 mode change 100755 => 100644 arch/arm/mach-socfpga/include/mach/system.h
 mode change 100755 => 100644 arch/arm/mach-socfpga/include/mach/tclrpt.h

diff --git a/arch/arm/boards/altera-socdk/board.c b/arch/arm/boards/altera-socdk/board.c
index d7fb923a043b..f4b1dcd3249f 100644
--- a/arch/arm/boards/altera-socdk/board.c
+++ b/arch/arm/boards/altera-socdk/board.c
@@ -8,7 +8,7 @@
 #include <linux/sizes.h>
 #include <fcntl.h>
 #include <fs.h>
-#include <mach/socfpga-regs.h>
+#include <mach/cyclone5-regs.h>
 
 static int ksz9021rn_phy_fixup(struct phy_device *dev)
 {
diff --git a/arch/arm/boards/altera-socdk/iocsr_config_cyclone5.c b/arch/arm/boards/altera-socdk/iocsr_config_cyclone5.c
index 07a4485f1fe6..9777d15dfebf 100644
--- a/arch/arm/boards/altera-socdk/iocsr_config_cyclone5.c
+++ b/arch/arm/boards/altera-socdk/iocsr_config_cyclone5.c
@@ -27,7 +27,7 @@
  * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  */
 
-#include <mach/scan-manager.h>
+#include <mach/cyclone5-scan-manager.h>
 
 static const unsigned long iocsr_scan_chain0_table[((CONFIG_HPS_IOCSR_SCANCHAIN0_LENGTH / 32) + 1)]
     = {
diff --git a/arch/arm/boards/altera-socdk/lowlevel.c b/arch/arm/boards/altera-socdk/lowlevel.c
index 02c995fe4522..8cfe8391596d 100644
--- a/arch/arm/boards/altera-socdk/lowlevel.c
+++ b/arch/arm/boards/altera-socdk/lowlevel.c
@@ -7,13 +7,13 @@
 #include <debug_ll.h>
 #include <asm/cache.h>
 #include "sdram_config.h"
-#include <mach/sdram_config.h>
+#include <mach/cyclone5-sdram-config.h>
 #include "pinmux_config.c"
 #include "pll_config.h"
 #include <mach/pll_config.h>
 #include "sequencer_defines.h"
 #include "sequencer_auto.h"
-#include <mach/sequencer.c>
+#include <mach/cyclone5-sequencer.c>
 #include "sequencer_auto_inst_init.c"
 #include "sequencer_auto_ac_init.c"
 #include "iocsr_config_cyclone5.c"
diff --git a/arch/arm/boards/ebv-socrates/board.c b/arch/arm/boards/ebv-socrates/board.c
index f3207b88efdf..965150f9a3be 100644
--- a/arch/arm/boards/ebv-socrates/board.c
+++ b/arch/arm/boards/ebv-socrates/board.c
@@ -11,7 +11,7 @@
 #include <linux/sizes.h>
 #include <fcntl.h>
 #include <fs.h>
-#include <mach/socfpga-regs.h>
+#include <mach/cyclone5-regs.h>
 
 static int phy_fixup(struct phy_device *dev)
 {
diff --git a/arch/arm/boards/ebv-socrates/iocsr_config_cyclone5.c b/arch/arm/boards/ebv-socrates/iocsr_config_cyclone5.c
index ab6733f92bcf..9a814cba796c 100644
--- a/arch/arm/boards/ebv-socrates/iocsr_config_cyclone5.c
+++ b/arch/arm/boards/ebv-socrates/iocsr_config_cyclone5.c
@@ -27,7 +27,7 @@
  * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  */
 
-#include <mach/scan-manager.h>
+#include <mach/cyclone5-scan-manager.h>
 
 static const unsigned long iocsr_scan_chain0_table[((CONFIG_HPS_IOCSR_SCANCHAIN0_LENGTH / 32) + 1)] = {
 	0x00000000,
diff --git a/arch/arm/boards/ebv-socrates/lowlevel.c b/arch/arm/boards/ebv-socrates/lowlevel.c
index ea4e1d746a95..9643269f8e16 100644
--- a/arch/arm/boards/ebv-socrates/lowlevel.c
+++ b/arch/arm/boards/ebv-socrates/lowlevel.c
@@ -7,13 +7,13 @@
 #include <mach/generic.h>
 #include <debug_ll.h>
 #include "sdram_config.h"
-#include <mach/sdram_config.h>
+#include <mach/cyclone5-sdram-config.h>
 #include "pinmux_config.c"
 #include "pll_config.h"
 #include <mach/pll_config.h>
 #include "sequencer_defines.h"
 #include "sequencer_auto.h"
-#include <mach/sequencer.c>
+#include <mach/cyclone5-sequencer.c>
 #include "sequencer_auto_inst_init.c"
 #include "sequencer_auto_ac_init.c"
 #include "iocsr_config_cyclone5.c"
diff --git a/arch/arm/boards/terasic-de0-nano-soc/board.c b/arch/arm/boards/terasic-de0-nano-soc/board.c
index 919bfc8c543a..8e69319d17b8 100644
--- a/arch/arm/boards/terasic-de0-nano-soc/board.c
+++ b/arch/arm/boards/terasic-de0-nano-soc/board.c
@@ -8,7 +8,7 @@
 #include <linux/sizes.h>
 #include <fcntl.h>
 #include <fs.h>
-#include <mach/socfpga-regs.h>
+#include <mach/cyclone5-regs.h>
 
 static int phy_fixup(struct phy_device *dev)
 {
diff --git a/arch/arm/boards/terasic-de0-nano-soc/iocsr_config_cyclone5.c b/arch/arm/boards/terasic-de0-nano-soc/iocsr_config_cyclone5.c
index 4e9ac7fb7721..d5098055ff63 100644
--- a/arch/arm/boards/terasic-de0-nano-soc/iocsr_config_cyclone5.c
+++ b/arch/arm/boards/terasic-de0-nano-soc/iocsr_config_cyclone5.c
@@ -27,7 +27,7 @@
  * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  */
 
-#include <mach/scan-manager.h>
+#include <mach/cyclone5-scan-manager.h>
 
 static const unsigned long iocsr_scan_chain0_table[((CONFIG_HPS_IOCSR_SCANCHAIN0_LENGTH / 32) + 1)] = {
 	0x00000000,
diff --git a/arch/arm/boards/terasic-de0-nano-soc/lowlevel.c b/arch/arm/boards/terasic-de0-nano-soc/lowlevel.c
index 6d937abda589..1d5ea6b12a52 100644
--- a/arch/arm/boards/terasic-de0-nano-soc/lowlevel.c
+++ b/arch/arm/boards/terasic-de0-nano-soc/lowlevel.c
@@ -7,13 +7,13 @@
 #include <debug_ll.h>
 #include <asm/cache.h>
 #include "sdram_config.h"
-#include <mach/sdram_config.h>
+#include <mach/cyclone5-sdram-config.h>
 #include "pinmux_config.c"
 #include "pll_config.h"
 #include <mach/pll_config.h>
 #include "sequencer_defines.h"
 #include "sequencer_auto.h"
-#include <mach/sequencer.c>
+#include <mach/cyclone5-sequencer.c>
 #include "sequencer_auto_inst_init.c"
 #include "sequencer_auto_ac_init.c"
 #include "iocsr_config_cyclone5.c"
diff --git a/arch/arm/boards/terasic-sockit/board.c b/arch/arm/boards/terasic-sockit/board.c
index 53cd36834fc1..ec6831599803 100644
--- a/arch/arm/boards/terasic-sockit/board.c
+++ b/arch/arm/boards/terasic-sockit/board.c
@@ -8,7 +8,6 @@
 #include <linux/sizes.h>
 #include <fcntl.h>
 #include <fs.h>
-#include <mach/socfpga-regs.h>
 
 static int phy_fixup(struct phy_device *dev)
 {
diff --git a/arch/arm/boards/terasic-sockit/iocsr_config_cyclone5.c b/arch/arm/boards/terasic-sockit/iocsr_config_cyclone5.c
index 117d7f4ebcc9..9367b0d11072 100644
--- a/arch/arm/boards/terasic-sockit/iocsr_config_cyclone5.c
+++ b/arch/arm/boards/terasic-sockit/iocsr_config_cyclone5.c
@@ -27,7 +27,7 @@
  * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  */
 
-#include <mach/scan-manager.h>
+#include <mach/cyclone5-scan-manager.h>
 
 static const unsigned long iocsr_scan_chain0_table[((CONFIG_HPS_IOCSR_SCANCHAIN0_LENGTH / 32) + 1)] = {
 	0x00000000,
diff --git a/arch/arm/boards/terasic-sockit/lowlevel.c b/arch/arm/boards/terasic-sockit/lowlevel.c
index 8012783df3f8..0a6eb2136517 100644
--- a/arch/arm/boards/terasic-sockit/lowlevel.c
+++ b/arch/arm/boards/terasic-sockit/lowlevel.c
@@ -7,13 +7,13 @@
 #include <debug_ll.h>
 #include <asm/cache.h>
 #include "sdram_config.h"
-#include <mach/sdram_config.h>
+#include <mach/cyclone5-sdram-config.h>
 #include "pinmux_config.c"
 #include "pll_config.h"
 #include <mach/pll_config.h>
 #include "sequencer_defines.h"
 #include "sequencer_auto.h"
-#include <mach/sequencer.c>
+#include <mach/cyclone5-sequencer.c>
 #include "sequencer_auto_inst_init.c"
 #include "sequencer_auto_ac_init.c"
 #include "iocsr_config_cyclone5.c"
diff --git a/arch/arm/mach-socfpga/Makefile b/arch/arm/mach-socfpga/Makefile
index dea0e075d145..30b796dd3b4f 100644
--- a/arch/arm/mach-socfpga/Makefile
+++ b/arch/arm/mach-socfpga/Makefile
@@ -1,4 +1,4 @@
-obj-y += generic.o nic301.o bootsource.o reset-manager.o
-pbl-y += init.o freeze-controller.o scan-manager.o system-manager.o
-pbl-y += clock-manager.o
+pbl-y += cyclone5-init.o cyclone5-freeze-controller.o cyclone5-scan-manager.o cyclone5-system-manager.o
+pbl-y += cyclone5-clock-manager.o
+obj-y += cyclone5-generic.o nic301.o cyclone5-bootsource.o cyclone5-reset-manager.o
 obj-$(CONFIG_ARCH_SOCFPGA_XLOAD) += xload.o
diff --git a/arch/arm/mach-socfpga/bootsource.c b/arch/arm/mach-socfpga/cyclone5-bootsource.c
similarity index 79%
rename from arch/arm/mach-socfpga/bootsource.c
rename to arch/arm/mach-socfpga/cyclone5-bootsource.c
index 739f0b5c0e94..da4102c4f531 100644
--- a/arch/arm/mach-socfpga/bootsource.c
+++ b/arch/arm/mach-socfpga/cyclone5-bootsource.c
@@ -16,17 +16,17 @@
 #include <environment.h>
 #include <init.h>
 #include <io.h>
-#include <mach/socfpga-regs.h>
-#include <mach/system-manager.h>
+#include <mach/cyclone5-system-manager.h>
+#include <mach/cyclone5-regs.h>
 
-#define SYSMGR_BOOTINFO	0x14
+#define CYCLONE5_SYSMGR_BOOTINFO	0x14
 
-static int socfpga_boot_save_loc(void)
+static int cyclone5_boot_save_loc(void)
 {
 	enum bootsource src = BOOTSOURCE_UNKNOWN;
 	uint32_t val;
 
-	val = readl(CYCLONE5_SYSMGR_ADDRESS + SYSMGR_BOOTINFO);
+	val = readl(CYCLONE5_SYSMGR_ADDRESS + CYCLONE5_SYSMGR_BOOTINFO);
 
 	switch (val & 0x7) {
 	case 0:
@@ -54,4 +54,4 @@ static int socfpga_boot_save_loc(void)
 
 	return 0;
 }
-core_initcall(socfpga_boot_save_loc);
+core_initcall(cyclone5_boot_save_loc);
diff --git a/arch/arm/mach-socfpga/clock-manager.c b/arch/arm/mach-socfpga/cyclone5-clock-manager.c
similarity index 99%
rename from arch/arm/mach-socfpga/clock-manager.c
rename to arch/arm/mach-socfpga/cyclone5-clock-manager.c
index f17371365fe4..79c8b6bf2874 100644
--- a/arch/arm/mach-socfpga/clock-manager.c
+++ b/arch/arm/mach-socfpga/cyclone5-clock-manager.c
@@ -17,8 +17,8 @@
 
 #include <common.h>
 #include <io.h>
-#include <mach/clock-manager.h>
-#include <mach/socfpga-regs.h>
+#include <mach/cyclone5-clock-manager.h>
+#include <mach/cyclone5-regs.h>
 #include <mach/generic.h>
 
 static inline void cm_wait_for_lock(void __iomem *cm, uint32_t mask)
diff --git a/arch/arm/mach-socfpga/freeze-controller.c b/arch/arm/mach-socfpga/cyclone5-freeze-controller.c
similarity index 99%
rename from arch/arm/mach-socfpga/freeze-controller.c
rename to arch/arm/mach-socfpga/cyclone5-freeze-controller.c
index 570bdeb7353f..87160161b0e6 100644
--- a/arch/arm/mach-socfpga/freeze-controller.c
+++ b/arch/arm/mach-socfpga/cyclone5-freeze-controller.c
@@ -18,7 +18,7 @@
 #include <common.h>
 #include <io.h>
 #include <mach/generic.h>
-#include <mach/freeze-controller.h>
+#include <mach/cyclone5-freeze-controller.h>
 
 #define SYSMGR_FRZCTRL_LOOP_PARAM       (1000)
 #define SYSMGR_FRZCTRL_DELAY_LOOP_PARAM (10)
diff --git a/arch/arm/mach-socfpga/cyclone5-generic.c b/arch/arm/mach-socfpga/cyclone5-generic.c
new file mode 100644
index 000000000000..3f49a9a542eb
--- /dev/null
+++ b/arch/arm/mach-socfpga/cyclone5-generic.c
@@ -0,0 +1,210 @@
+#include <common.h>
+#include <malloc.h>
+#include <envfs.h>
+#include <init.h>
+#include <io.h>
+#include <fs.h>
+#include <mci.h>
+#include <linux/clkdev.h>
+#include <linux/clk.h>
+#include <linux/stat.h>
+#include <linux/sizes.h>
+#include <asm/memory.h>
+#include <mach/cyclone5-system-manager.h>
+#include <mach/cyclone5-reset-manager.h>
+#include <mach/cyclone5-regs.h>
+#include <mach/generic.h>
+#include <mach/nic301.h>
+#include <platform_data/dw_mmc.h>
+#include <platform_data/serial-ns16550.h>
+#include <platform_data/cadence_qspi.h>
+
+#define SYSMGR_SDMMCGRP_CTRL_REG		(CYCLONE5_SYSMGR_ADDRESS + 0x108)
+#define SYSMGR_SDMMC_CTRL_SMPLSEL(smplsel)	(((smplsel) & 0x7) << 3)
+#define SYSMGR_SDMMC_CTRL_DRVSEL(drvsel)	((drvsel) & 0x7)
+
+enum socfpga_clks {
+	timer, mmc, qspi_clk, uart, clk_max
+};
+
+static struct clk *clks[clk_max];
+
+#if defined(CONFIG_MCI_DW)
+static struct dw_mmc_platform_data mmc_pdata = {
+	.bus_width_caps = MMC_CAP_4_BIT_DATA,
+	.ciu_div = 3,
+};
+
+void socfpga_cyclone5_mmc_init(void)
+{
+	clks[mmc] = clk_fixed("mmc", 400000000);
+	clkdev_add_physbase(clks[mmc], CYCLONE5_SDMMC_ADDRESS, NULL);
+	add_generic_device("dw_mmc", 0, NULL, CYCLONE5_SDMMC_ADDRESS, SZ_4K,
+			IORESOURCE_MEM, &mmc_pdata);
+}
+#else
+void socfpga_cyclone5_mmc_init(void)
+{
+	pr_debug("%s: MMC support not compiled in!\n", __func__);
+
+	return;
+}
+#endif
+
+#if defined(CONFIG_SPI_CADENCE_QUADSPI)
+static struct cadence_qspi_platform_data qspi_pdata = {
+	.ext_decoder = 0,
+	.fifo_depth = 128,
+};
+
+static void add_cadence_qspi_device(int id, resource_size_t ctrl,
+				    resource_size_t data, void *pdata)
+{
+	struct device_d *dev;
+	struct resource *res;
+
+	res = xzalloc(sizeof(struct resource) * 2);
+	res[0].start = ctrl;
+	res[0].end = ctrl + 0x100 - 1;
+	res[0].flags = IORESOURCE_MEM;
+	res[1].start = data;
+	res[1].end = data + 0x100 - 1;
+	res[1].flags = IORESOURCE_MEM;
+
+	dev = add_generic_device_res("cadence_qspi", id, res, 2, pdata);
+
+	dev_dbg(dev, "added resource\n");
+}
+
+void socfpga_cyclone5_qspi_init(void)
+{
+	clks[qspi_clk] = clk_fixed("qspi_clk", 370000000);
+	clkdev_add_physbase(clks[qspi_clk], CYCLONE5_QSPI_CTRL_ADDRESS, NULL);
+	clkdev_add_physbase(clks[qspi_clk], CYCLONE5_QSPI_DATA_ADDRESS, NULL);
+	add_cadence_qspi_device(0, CYCLONE5_QSPI_CTRL_ADDRESS,
+				CYCLONE5_QSPI_DATA_ADDRESS, &qspi_pdata);
+}
+#else
+void socfpga_cyclone5_qspi_init(void)
+{
+	pr_debug("%s: QSPI support not compiled in!\n", __func__);
+
+	return;
+}
+#endif
+
+static struct NS16550_plat uart_pdata = {
+	.clock = 100000000,
+	.shift = 2,
+};
+
+void socfpga_cyclone5_uart_init(void)
+{
+	struct device_d *dev;
+
+	clks[uart] = clk_fixed("uart", 100000000);
+	clkdev_add_physbase(clks[uart], CYCLONE5_UART0_ADDRESS, NULL);
+	clkdev_add_physbase(clks[uart], CYCLONE5_UART1_ADDRESS, NULL);
+	dev = add_ns16550_device(0, 0xffc02000, 1024, IORESOURCE_MEM |
+			IORESOURCE_MEM_8BIT, &uart_pdata);
+
+	dev_dbg(dev, "initialized\n");
+}
+
+void socfpga_cyclone5_timer_init(void)
+{
+	struct device_d *dev;
+
+	clks[timer] = clk_fixed("timer", 200000000);
+	clkdev_add_physbase(clks[timer], CYCLONE5_SMP_TWD_ADDRESS, NULL);
+	dev = add_generic_device("smp_twd", 0, NULL, CYCLONE5_SMP_TWD_ADDRESS, 0x100,
+				 IORESOURCE_MEM, NULL);
+
+	dev_dbg(dev, "added smp_twd\n");
+}
+
+static int socfpga_detect_sdram(void)
+{
+	void __iomem *base = (void *)CYCLONE5_SDR_ADDRESS;
+	uint32_t dramaddrw, ctrlwidth, memsize;
+	int colbits, rowbits, bankbits;
+	int width_bytes;
+
+	dramaddrw = readl(base + 0x5000 + 0x2c);
+
+	colbits = dramaddrw & 0x1f;
+	rowbits = (dramaddrw >> 5) & 0x1f;
+	bankbits = (dramaddrw >> 10) & 0x7;
+
+	ctrlwidth = readl(base + 0x5000 + 0x60);
+
+	switch (ctrlwidth & 0x3) {
+	default:
+	case 0:
+		width_bytes = 1;
+		break;
+	case 1:
+		width_bytes = 2;
+		break;
+	case 2:
+		width_bytes = 4;
+		break;
+	}
+
+	memsize = (1 << colbits) * (1 << rowbits) * (1 << bankbits) * width_bytes;
+
+	pr_debug("%s: colbits: %d rowbits: %d bankbits: %d width: %d => memsize: 0x%08x\n",
+			__func__, colbits, rowbits, bankbits, width_bytes, memsize);
+
+	arm_add_mem_device("ram0", 0x0, memsize);
+
+	return 0;
+}
+
+/* Some initialization for the EMAC */
+static void socfpga_init_emac(void)
+{
+	uint32_t rst, val;
+
+	/* No need for this without network support, e.g. xloader build */
+	if (!IS_ENABLED(CONFIG_NET))
+		return;
+
+	/* According to Cyclone V datasheet, 17-60 "EMAC HPS Interface
+	 * Initialization", changing PHYSEL should be done with EMAC in reset
+	 * via permodrst.  */
+
+	/* Everything, except L4WD0/1, is out of reset via socfpga_lowlevel_init() */
+	rst = readl(CYCLONE5_RSTMGR_ADDRESS + RESET_MGR_PER_MOD_RESET_OFS);
+	rst |= RSTMGR_PERMODRST_EMAC0 | RSTMGR_PERMODRST_EMAC1;
+	writel(rst, CYCLONE5_RSTMGR_ADDRESS + RESET_MGR_PER_MOD_RESET_OFS);
+
+	/* Set emac0/1 PHY interface select to RGMII.  We could read phy-mode
+	 * from the device tree, if it was desired to support interfaces other
+	 * than RGMII. */
+	val = readl(CONFIG_SYSMGR_EMAC_CTRL);
+	val &= ~(SYSMGR_EMACGRP_CTRL_PHYSEL_MASK << SYSMGR_EMACGRP_CTRL_PHYSEL0_LSB);
+	val &= ~(SYSMGR_EMACGRP_CTRL_PHYSEL_MASK << SYSMGR_EMACGRP_CTRL_PHYSEL1_LSB);
+	val |= SYSMGR_EMACGRP_CTRL_PHYSEL_ENUM_RGMII << SYSMGR_EMACGRP_CTRL_PHYSEL0_LSB;
+	val |= SYSMGR_EMACGRP_CTRL_PHYSEL_ENUM_RGMII << SYSMGR_EMACGRP_CTRL_PHYSEL1_LSB;
+	writel(val, CONFIG_SYSMGR_EMAC_CTRL);
+
+	/* Take emac0 and emac1 out of reset */
+	rst &= ~(RSTMGR_PERMODRST_EMAC0 | RSTMGR_PERMODRST_EMAC1);
+	writel(rst, CYCLONE5_RSTMGR_ADDRESS + RESET_MGR_PER_MOD_RESET_OFS);
+}
+
+static int socfpga_init(void)
+{
+	socfpga_init_emac();
+
+	writel(SYSMGR_SDMMC_CTRL_DRVSEL(3) | SYSMGR_SDMMC_CTRL_SMPLSEL(0),
+		SYSMGR_SDMMCGRP_CTRL_REG);
+
+	nic301_slave_ns();
+
+	socfpga_detect_sdram();
+
+	return 0;
+}
+core_initcall(socfpga_init);
diff --git a/arch/arm/mach-socfpga/init.c b/arch/arm/mach-socfpga/cyclone5-init.c
similarity index 89%
rename from arch/arm/mach-socfpga/init.c
rename to arch/arm/mach-socfpga/cyclone5-init.c
index 0c679e3d2dac..412808b8416f 100644
--- a/arch/arm/mach-socfpga/init.c
+++ b/arch/arm/mach-socfpga/cyclone5-init.c
@@ -2,11 +2,11 @@
 #include <common.h>
 #include <init.h>
 #include <io.h>
-#include <mach/freeze-controller.h>
-#include <mach/system-manager.h>
-#include <mach/clock-manager.h>
-#include <mach/reset-manager.h>
-#include <mach/scan-manager.h>
+#include <mach/cyclone5-freeze-controller.h>
+#include <mach/cyclone5-system-manager.h>
+#include <mach/cyclone5-clock-manager.h>
+#include <mach/cyclone5-reset-manager.h>
+#include <mach/cyclone5-scan-manager.h>
 #include <mach/generic.h>
 
 void socfpga_lowlevel_init(struct socfpga_cm_config *cm_config,
diff --git a/arch/arm/mach-socfpga/reset-manager.c b/arch/arm/mach-socfpga/cyclone5-reset-manager.c
similarity index 96%
rename from arch/arm/mach-socfpga/reset-manager.c
rename to arch/arm/mach-socfpga/cyclone5-reset-manager.c
index 04522da4d1ae..4bbe1a8101f1 100644
--- a/arch/arm/mach-socfpga/reset-manager.c
+++ b/arch/arm/mach-socfpga/cyclone5-reset-manager.c
@@ -19,8 +19,8 @@
 #include <io.h>
 #include <init.h>
 #include <restart.h>
-#include <mach/socfpga-regs.h>
-#include <mach/reset-manager.h>
+#include <mach/cyclone5-regs.h>
+#include <mach/cyclone5-reset-manager.h>
 
 /* Disable the watchdog (toggle reset to watchdog) */
 void watchdog_disable(void)
diff --git a/arch/arm/mach-socfpga/scan-manager.c b/arch/arm/mach-socfpga/cyclone5-scan-manager.c
similarity index 98%
rename from arch/arm/mach-socfpga/scan-manager.c
rename to arch/arm/mach-socfpga/cyclone5-scan-manager.c
index 57979b90a208..cf076c3885b3 100644
--- a/arch/arm/mach-socfpga/scan-manager.c
+++ b/arch/arm/mach-socfpga/cyclone5-scan-manager.c
@@ -17,8 +17,8 @@
 
 #include <common.h>
 #include <io.h>
-#include <mach/freeze-controller.h>
-#include <mach/scan-manager.h>
+#include <mach/cyclone5-freeze-controller.h>
+#include <mach/cyclone5-scan-manager.h>
 
 /*
  * @fn scan_mgr_io_scan_chain_engine_is_idle
diff --git a/arch/arm/mach-socfpga/system-manager.c b/arch/arm/mach-socfpga/cyclone5-system-manager.c
similarity index 93%
rename from arch/arm/mach-socfpga/system-manager.c
rename to arch/arm/mach-socfpga/cyclone5-system-manager.c
index 45db921f1a02..7e86692c397e 100644
--- a/arch/arm/mach-socfpga/system-manager.c
+++ b/arch/arm/mach-socfpga/cyclone5-system-manager.c
@@ -17,8 +17,8 @@
 
 #include <common.h>
 #include <io.h>
-#include <mach/system-manager.h>
-#include <mach/socfpga-regs.h>
+#include <mach/cyclone5-system-manager.h>
+#include <mach/cyclone5-regs.h>
 
 void socfpga_sysmgr_pinmux_init(unsigned long *sys_mgr_init_table, int num)
 {
diff --git a/arch/arm/mach-socfpga/include/mach/clock-manager.h b/arch/arm/mach-socfpga/include/mach/cyclone5-clock-manager.h
similarity index 99%
rename from arch/arm/mach-socfpga/include/mach/clock-manager.h
rename to arch/arm/mach-socfpga/include/mach/cyclone5-clock-manager.h
index 45800de79a7a..797aa5d3cfe8 100644
--- a/arch/arm/mach-socfpga/include/mach/clock-manager.h
+++ b/arch/arm/mach-socfpga/include/mach/cyclone5-clock-manager.h
@@ -15,8 +15,8 @@
  * along with this program.  If not, see <http://www.gnu.org/licenses/>.
  */
 
-#ifndef	_CLOCK_MANAGER_H_
-#define	_CLOCK_MANAGER_H_
+#ifndef	_CLOCK_MANAGER_CYCLONE5_H_
+#define	_CLOCK_MANAGER_CYCLONE5_H_
 
 struct socfpga_cm_config {
 	/* main group */
@@ -197,4 +197,4 @@ void socfpga_cm_basic_init(const struct socfpga_cm_config *cfg);
 	CLKMGR_MAINPLLGRP_VCO_EN_SET(0)| \
 	CLKMGR_MAINPLLGRP_VCO_BGPWRDN_SET(0))
 
-#endif /* _CLOCK_MANAGER_H_ */
+#endif
diff --git a/arch/arm/mach-socfpga/include/mach/freeze-controller.h b/arch/arm/mach-socfpga/include/mach/cyclone5-freeze-controller.h
similarity index 96%
rename from arch/arm/mach-socfpga/include/mach/freeze-controller.h
rename to arch/arm/mach-socfpga/include/mach/cyclone5-freeze-controller.h
index 4253f5b38f92..93ce5152eda9 100644
--- a/arch/arm/mach-socfpga/include/mach/freeze-controller.h
+++ b/arch/arm/mach-socfpga/include/mach/cyclone5-freeze-controller.h
@@ -15,10 +15,10 @@
  * along with this program.  If not, see <http://www.gnu.org/licenses/>.
  */
 
-#ifndef _FREEZE_CONTROLLER_H_
-#define _FREEZE_CONTROLLER_H_
+#ifndef _CYCLONE5_FREEZE_CONTROLLER_H_
+#define _CYCLONE5_FREEZE_CONTROLLER_H_
 
-#include <mach/socfpga-regs.h>
+#include <mach/cyclone5-regs.h>
 
 #define SYSMGR_FRZCTRL_ADDRESS		0x40
 #define SYSMGR_FRZCTRL_VIOCTRL_ADDRESS	0x40
diff --git a/arch/arm/mach-socfpga/include/mach/socfpga-regs.h b/arch/arm/mach-socfpga/include/mach/cyclone5-regs.h
similarity index 100%
rename from arch/arm/mach-socfpga/include/mach/socfpga-regs.h
rename to arch/arm/mach-socfpga/include/mach/cyclone5-regs.h
diff --git a/arch/arm/mach-socfpga/include/mach/reset-manager.h b/arch/arm/mach-socfpga/include/mach/cyclone5-reset-manager.h
similarity index 100%
rename from arch/arm/mach-socfpga/include/mach/reset-manager.h
rename to arch/arm/mach-socfpga/include/mach/cyclone5-reset-manager.h
diff --git a/arch/arm/mach-socfpga/include/mach/scan-manager.h b/arch/arm/mach-socfpga/include/mach/cyclone5-scan-manager.h
similarity index 99%
rename from arch/arm/mach-socfpga/include/mach/scan-manager.h
rename to arch/arm/mach-socfpga/include/mach/cyclone5-scan-manager.h
index 568bedfde13c..df720a7e086c 100644
--- a/arch/arm/mach-socfpga/include/mach/scan-manager.h
+++ b/arch/arm/mach-socfpga/include/mach/cyclone5-scan-manager.h
@@ -19,7 +19,7 @@
 #define _SCAN_MANAGER_H_
 
 #include <io.h>
-#include <mach/socfpga-regs.h>
+#include <mach/cyclone5-regs.h>
 
 /***********************************************************
  *                                                         *
diff --git a/arch/arm/mach-socfpga/include/mach/sdram_config.h b/arch/arm/mach-socfpga/include/mach/cyclone5-sdram-config.h
similarity index 98%
rename from arch/arm/mach-socfpga/include/mach/sdram_config.h
rename to arch/arm/mach-socfpga/include/mach/cyclone5-sdram-config.h
index 2af797a920d9..a19a837994e2 100644
--- a/arch/arm/mach-socfpga/include/mach/sdram_config.h
+++ b/arch/arm/mach-socfpga/include/mach/cyclone5-sdram-config.h
@@ -1,9 +1,9 @@
 #ifndef __MACH_SDRAM_CONFIG_H
 #define __MACH_SDRAM_CONFIG_H
 
-#include <mach/sdram.h>
-#include <mach/socfpga-regs.h>
-#include <mach/system-manager.h>
+#include <mach/cyclone5-sdram.h>
+#include <mach/cyclone5-regs.h>
+#include <mach/cyclone5-system-manager.h>
 
 static inline void sdram_write(unsigned register_offset, unsigned val)
 {
diff --git a/arch/arm/mach-socfpga/include/mach/sdram.h b/arch/arm/mach-socfpga/include/mach/cyclone5-sdram.h
similarity index 100%
rename from arch/arm/mach-socfpga/include/mach/sdram.h
rename to arch/arm/mach-socfpga/include/mach/cyclone5-sdram.h
diff --git a/arch/arm/mach-socfpga/include/mach/sequencer.c b/arch/arm/mach-socfpga/include/mach/cyclone5-sequencer.c
similarity index 99%
rename from arch/arm/mach-socfpga/include/mach/sequencer.c
rename to arch/arm/mach-socfpga/include/mach/cyclone5-sequencer.c
index d2338e640686..e5ecb0f1b8b5 100644
--- a/arch/arm/mach-socfpga/include/mach/sequencer.c
+++ b/arch/arm/mach-socfpga/include/mach/cyclone5-sequencer.c
@@ -26,11 +26,9 @@
 * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */
 
-#include "sequencer_defines.h"
-
 #include "system.h"
 #include "sdram_io.h"
-#include "sequencer.h"
+#include "cyclone5-sequencer.h"
 #include "tclrpt.h"
 
 /******************************************************************************
@@ -57,7 +55,7 @@ asm(".global __alt_stack_pointer");
 asm("__alt_stack_pointer = " STRINGIFY(STACK_POINTER));
 #endif
 
-#include <mach/sdram.h>
+#include <mach/cyclone5-sdram.h>
 
 #define NEWVERSION_RDDESKEW 1
 #define NEWVERSION_WRDESKEW 1
diff --git a/arch/arm/mach-socfpga/include/mach/sequencer.h b/arch/arm/mach-socfpga/include/mach/cyclone5-sequencer.h
similarity index 100%
rename from arch/arm/mach-socfpga/include/mach/sequencer.h
rename to arch/arm/mach-socfpga/include/mach/cyclone5-sequencer.h
diff --git a/arch/arm/mach-socfpga/include/mach/system-manager.h b/arch/arm/mach-socfpga/include/mach/cyclone5-system-manager.h
similarity index 100%
rename from arch/arm/mach-socfpga/include/mach/system-manager.h
rename to arch/arm/mach-socfpga/include/mach/cyclone5-system-manager.h
diff --git a/arch/arm/mach-socfpga/include/mach/pll_config.h b/arch/arm/mach-socfpga/include/mach/pll_config.h
index bb491d82f12c..1a7e851eda43 100644
--- a/arch/arm/mach-socfpga/include/mach/pll_config.h
+++ b/arch/arm/mach-socfpga/include/mach/pll_config.h
@@ -1,5 +1,5 @@
 
-#include <mach/clock-manager.h>
+#include <mach/cyclone5-clock-manager.h>
 
 static struct socfpga_cm_config cm_default_cfg = {
 	/* main group */
diff --git a/arch/arm/mach-socfpga/include/mach/sdram_io.h b/arch/arm/mach-socfpga/include/mach/sdram_io.h
old mode 100755
new mode 100644
index 62698000f6d8..ef87bdaf63b3
--- a/arch/arm/mach-socfpga/include/mach/sdram_io.h
+++ b/arch/arm/mach-socfpga/include/mach/sdram_io.h
@@ -26,7 +26,7 @@
  * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  */
 
-#include <mach/sdram.h>
+#include <mach/cyclone5-sdram.h>
 
 #define MGR_SELECT_MASK   0xf8000
 
diff --git a/arch/arm/mach-socfpga/include/mach/sequencer_defines.h b/arch/arm/mach-socfpga/include/mach/sequencer_defines.h
deleted file mode 100644
index 50598441069d..000000000000
--- a/arch/arm/mach-socfpga/include/mach/sequencer_defines.h
+++ /dev/null
@@ -1,6 +0,0 @@
-#define TINIT_CNTR1_VAL 32
-#define TINIT_CNTR2_VAL 32
-#define TINIT_CNTR0_VAL 99
-#define TRESET_CNTR1_VAL 99
-#define TRESET_CNTR2_VAL 10
-#define TRESET_CNTR0_VAL 99
diff --git a/arch/arm/mach-socfpga/include/mach/system.h b/arch/arm/mach-socfpga/include/mach/system.h
old mode 100755
new mode 100644
diff --git a/arch/arm/mach-socfpga/include/mach/tclrpt.h b/arch/arm/mach-socfpga/include/mach/tclrpt.h
old mode 100755
new mode 100644
index 4345b23ba65c..6b332c875412
--- a/arch/arm/mach-socfpga/include/mach/tclrpt.h
+++ b/arch/arm/mach-socfpga/include/mach/tclrpt.h
@@ -28,7 +28,7 @@
 * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */
 
-#include "sequencer.h"
+#include "cyclone5-sequencer.h"
 
 #define TCLRPT_SET(item, value)
 
diff --git a/arch/arm/mach-socfpga/nic301.c b/arch/arm/mach-socfpga/nic301.c
index 206dd48ff911..7069c6e5b9ae 100644
--- a/arch/arm/mach-socfpga/nic301.c
+++ b/arch/arm/mach-socfpga/nic301.c
@@ -18,7 +18,7 @@
 #include <common.h>
 #include <io.h>
 #include <mach/nic301.h>
-#include <mach/socfpga-regs.h>
+#include <mach/cyclone5-regs.h>
 
 /*
  * Convert all slave from secure to non secure
diff --git a/arch/arm/mach-socfpga/xload.c b/arch/arm/mach-socfpga/xload.c
index d24944bbb85e..5d47bb9d3ea2 100644
--- a/arch/arm/mach-socfpga/xload.c
+++ b/arch/arm/mach-socfpga/xload.c
@@ -17,8 +17,8 @@
 #include <linux/clk.h>
 
 #include <mach/generic.h>
-#include <mach/system-manager.h>
-#include <mach/socfpga-regs.h>
+#include <mach/cyclone5-system-manager.h>
+#include <mach/cyclone5-regs.h>
 
 static struct socfpga_barebox_part default_parts[] = {
 	{
diff --git a/drivers/firmware/socfpga.c b/drivers/firmware/socfpga.c
index a0cd2011cbce..c1eae98acc91 100644
--- a/drivers/firmware/socfpga.c
+++ b/drivers/firmware/socfpga.c
@@ -34,10 +34,10 @@
 #include <fcntl.h>
 #include <init.h>
 #include <io.h>
-#include <mach/system-manager.h>
-#include <mach/reset-manager.h>
-#include <mach/socfpga-regs.h>
-#include <mach/sdram.h>
+#include <mach/cyclone5-system-manager.h>
+#include <mach/cyclone5-reset-manager.h>
+#include <mach/cyclone5-regs.h>
+#include <mach/cyclone5-sdram.h>
 
 #define FPGAMGRREGS_STAT			0x0
 #define FPGAMGRREGS_CTRL			0x4
diff --git a/scripts/socfpga_import_preloader b/scripts/socfpga_import_preloader
index b08262cb6c83..63ff30ec2a21 100755
--- a/scripts/socfpga_import_preloader
+++ b/scripts/socfpga_import_preloader
@@ -46,7 +46,7 @@ copy_source() {
 
 	echo "	Fixing include pathes..."
 	# Fix include pathes
-	sed -i 's/#include <iocsr_config_cyclone5.h>/#include <mach\/scan-manager.h>/g' $tgt
+	sed -i 's/#include <iocsr_config_cyclone5.h>/#include <mach\/cyclone5-scan-manager.h>/g' $tgt
 	sed -i 's/#include <pinmux_config.h>/#include <common.h>/g' $tgt
 	sed -i 's/#include "sequencer_auto.h"//g' $tgt
 	sed -i 's/#include "sequencer_defines.h"//g' $tgt
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
