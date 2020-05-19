Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conuserg-08.nifty.com ([210.131.2.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jawSP-0008LI-5r
 for barebox@lists.infradead.org; Tue, 19 May 2020 07:14:38 +0000
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Tue, 19 May 2020 16:13:52 +0900
Message-Id: <20200519071353.395493-8-masahiroy@kernel.org>
In-Reply-To: <20200519071353.395493-1-masahiroy@kernel.org>
References: <20200519071353.395493-1-masahiroy@kernel.org>
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
Subject: [PATCH 8/8] Revert "ARM: socfpga: generate smaller images when
 multiple boards are selected"
To: barebox@lists.infradead.org
Cc: Masahiro Yamada <masahiroy@kernel.org>

This reverts commit a83c97f2a4065ef7209f123b837fa5103f984c6a.

The dead code elimination with thin archive can cope with the same
symbol names. Revert the workaround.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 .../altera-socdk/iocsr_config_cyclone5.c      |   8 +-
 arch/arm/boards/altera-socdk/lowlevel.c       |   2 -
 arch/arm/boards/altera-socdk/pinmux_config.c  |   2 +-
 .../altera-socdk/sequencer_auto_ac_init.c     |   2 +-
 .../ebv-socrates/iocsr_config_cyclone5.c      |   8 +-
 arch/arm/boards/ebv-socrates/lowlevel.c       |   2 -
 arch/arm/boards/ebv-socrates/pinmux_config.c  |   4 +-
 .../ebv-socrates/sequencer_auto_ac_init.c     |   2 +-
 .../iocsr_config_cyclone5.c                   |   8 +-
 .../boards/terasic-de0-nano-soc/lowlevel.c    |   2 -
 .../terasic-de0-nano-soc/pinmux_config.c      |   2 +-
 .../sequencer_auto_ac_init.c                  |   2 +-
 .../terasic-sockit/iocsr_config_cyclone5.c    |   8 +-
 arch/arm/boards/terasic-sockit/lowlevel.c     |   2 -
 .../arm/boards/terasic-sockit/pinmux_config.c |   2 +-
 .../terasic-sockit/sequencer_auto_ac_init.c   |   2 +-
 .../include/mach/cyclone5-sequencer.c         | 122 +++++++++---------
 arch/arm/mach-socfpga/include/mach/lowlevel.h |   4 +-
 18 files changed, 88 insertions(+), 96 deletions(-)

diff --git a/arch/arm/boards/altera-socdk/iocsr_config_cyclone5.c b/arch/arm/boards/altera-socdk/iocsr_config_cyclone5.c
index a199e4da1..9777d15df 100644
--- a/arch/arm/boards/altera-socdk/iocsr_config_cyclone5.c
+++ b/arch/arm/boards/altera-socdk/iocsr_config_cyclone5.c
@@ -29,7 +29,7 @@
 
 #include <mach/cyclone5-scan-manager.h>
 
-static const unsigned long SECT(iocsr_scan_chain0_table)[((CONFIG_HPS_IOCSR_SCANCHAIN0_LENGTH / 32) + 1)]
+static const unsigned long iocsr_scan_chain0_table[((CONFIG_HPS_IOCSR_SCANCHAIN0_LENGTH / 32) + 1)]
     = {
 	0x00000000,
 	0x00000000,
@@ -57,7 +57,7 @@ static const unsigned long SECT(iocsr_scan_chain0_table)[((CONFIG_HPS_IOCSR_SCAN
 	0x00001000,
 };
 
-static const unsigned long SECT(iocsr_scan_chain1_table)[((CONFIG_HPS_IOCSR_SCANCHAIN1_LENGTH / 32) + 1)]
+static const unsigned long iocsr_scan_chain1_table[((CONFIG_HPS_IOCSR_SCANCHAIN1_LENGTH / 32) + 1)]
     = {
 	0x000C0300,
 	0x10040000,
@@ -115,7 +115,7 @@ static const unsigned long SECT(iocsr_scan_chain1_table)[((CONFIG_HPS_IOCSR_SCAN
 	0x00000080,
 };
 
-static const unsigned long SECT(iocsr_scan_chain2_table)[((CONFIG_HPS_IOCSR_SCANCHAIN2_LENGTH / 32) + 1)]
+static const unsigned long iocsr_scan_chain2_table[((CONFIG_HPS_IOCSR_SCANCHAIN2_LENGTH / 32) + 1)]
     = {
 	0x80040100,
 	0x00000000,
@@ -149,7 +149,7 @@ static const unsigned long SECT(iocsr_scan_chain2_table)[((CONFIG_HPS_IOCSR_SCAN
 	0x00000800,
 };
 
-static const unsigned long SECT(iocsr_scan_chain3_table)[((CONFIG_HPS_IOCSR_SCANCHAIN3_LENGTH / 32) + 1)]
+static const unsigned long iocsr_scan_chain3_table[((CONFIG_HPS_IOCSR_SCANCHAIN3_LENGTH / 32) + 1)]
     = {
 	0x0C420D80,
 	0x082000FF,
diff --git a/arch/arm/boards/altera-socdk/lowlevel.c b/arch/arm/boards/altera-socdk/lowlevel.c
index 36dbc55b9..822c3d8ee 100644
--- a/arch/arm/boards/altera-socdk/lowlevel.c
+++ b/arch/arm/boards/altera-socdk/lowlevel.c
@@ -1,5 +1,3 @@
-#define SECT(name) __attribute__((section("socfpga_socdk_" #name))) name
-
 #include "sdram_config.h"
 #include "pinmux_config.c"
 #include "pll_config.h"
diff --git a/arch/arm/boards/altera-socdk/pinmux_config.c b/arch/arm/boards/altera-socdk/pinmux_config.c
index 8bdaaedb8..ff784bbec 100644
--- a/arch/arm/boards/altera-socdk/pinmux_config.c
+++ b/arch/arm/boards/altera-socdk/pinmux_config.c
@@ -30,7 +30,7 @@
 #include <common.h>
 
 /* pin MUX configuration data */
-static unsigned long SECT(sys_mgr_init_table)[] = {
+static unsigned long sys_mgr_init_table[] = {
 	0,			/* EMACIO0 */
 	2,			/* EMACIO1 */
 	2,			/* EMACIO2 */
diff --git a/arch/arm/boards/altera-socdk/sequencer_auto_ac_init.c b/arch/arm/boards/altera-socdk/sequencer_auto_ac_init.c
index c9011b2e2..653138380 100644
--- a/arch/arm/boards/altera-socdk/sequencer_auto_ac_init.c
+++ b/arch/arm/boards/altera-socdk/sequencer_auto_ac_init.c
@@ -28,7 +28,7 @@ SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */
 
 static const uint32_t ac_rom_init_size = 36;
-static const uint32_t SECT(ac_rom_init)[36] = {
+static const uint32_t ac_rom_init[36] = {
 	0x20700000,
 	0x20780000,
 	0x10080431,
diff --git a/arch/arm/boards/ebv-socrates/iocsr_config_cyclone5.c b/arch/arm/boards/ebv-socrates/iocsr_config_cyclone5.c
index 6153de900..9a814cba7 100644
--- a/arch/arm/boards/ebv-socrates/iocsr_config_cyclone5.c
+++ b/arch/arm/boards/ebv-socrates/iocsr_config_cyclone5.c
@@ -29,7 +29,7 @@
 
 #include <mach/cyclone5-scan-manager.h>
 
-static const unsigned long SECT(iocsr_scan_chain0_table)[((CONFIG_HPS_IOCSR_SCANCHAIN0_LENGTH / 32) + 1)] = {
+static const unsigned long iocsr_scan_chain0_table[((CONFIG_HPS_IOCSR_SCANCHAIN0_LENGTH / 32) + 1)] = {
 	0x00000000,
 	0x00000000,
 	0x0FF00000,
@@ -56,7 +56,7 @@ static const unsigned long SECT(iocsr_scan_chain0_table)[((CONFIG_HPS_IOCSR_SCAN
 	0x00001000,
 };
 
-static const unsigned long SECT(iocsr_scan_chain1_table)[((CONFIG_HPS_IOCSR_SCANCHAIN1_LENGTH / 32) + 1)] = {
+static const unsigned long iocsr_scan_chain1_table[((CONFIG_HPS_IOCSR_SCANCHAIN1_LENGTH / 32) + 1)] = {
 	0x000C0300,
 	0x300C0000,
 	0x300000C0,
@@ -113,7 +113,7 @@ static const unsigned long SECT(iocsr_scan_chain1_table)[((CONFIG_HPS_IOCSR_SCAN
 	0x00000080,
 };
 
-static const unsigned long SECT(iocsr_scan_chain2_table)[((CONFIG_HPS_IOCSR_SCANCHAIN2_LENGTH / 32) + 1)] = {
+static const unsigned long iocsr_scan_chain2_table[((CONFIG_HPS_IOCSR_SCANCHAIN2_LENGTH / 32) + 1)] = {
 	0x300C0300,
 	0x00000000,
 	0x0FF00000,
@@ -146,7 +146,7 @@ static const unsigned long SECT(iocsr_scan_chain2_table)[((CONFIG_HPS_IOCSR_SCAN
 	0x00000800,
 };
 
-static const unsigned long SECT(iocsr_scan_chain3_table)[((CONFIG_HPS_IOCSR_SCANCHAIN3_LENGTH / 32) + 1)] = {
+static const unsigned long iocsr_scan_chain3_table[((CONFIG_HPS_IOCSR_SCANCHAIN3_LENGTH / 32) + 1)] = {
 	0x0CC20D80,
 	0x0C3000FF,
 	0x0A804001,
diff --git a/arch/arm/boards/ebv-socrates/lowlevel.c b/arch/arm/boards/ebv-socrates/lowlevel.c
index ed2d4a72a..3f12ae806 100644
--- a/arch/arm/boards/ebv-socrates/lowlevel.c
+++ b/arch/arm/boards/ebv-socrates/lowlevel.c
@@ -1,5 +1,3 @@
-#define SECT(name) __attribute__((section("ebv_socrates_" #name))) name
-
 #include "sdram_config.h"
 #include "pinmux_config.c"
 #include "pll_config.h"
diff --git a/arch/arm/boards/ebv-socrates/pinmux_config.c b/arch/arm/boards/ebv-socrates/pinmux_config.c
index 89e6b33c8..faa312246 100644
--- a/arch/arm/boards/ebv-socrates/pinmux_config.c
+++ b/arch/arm/boards/ebv-socrates/pinmux_config.c
@@ -30,7 +30,7 @@
 #include <common.h>
 
 /* pin MUX configuration data */
-static unsigned long SECT(sys_mgr_init_table)[] = {
+static unsigned long sys_mgr_init_table[] = {
 	0, /* EMACIO0 */
 	2, /* EMACIO1 */
 	2, /* EMACIO2 */
@@ -238,4 +238,4 @@ static unsigned long SECT(sys_mgr_init_table)[] = {
 	0, /* SPIM1USEFPGA */
 	0, /* USB0USEFPGA */
 	0 /* SPIM0USEFPGA */
-};
+};
\ No newline at end of file
diff --git a/arch/arm/boards/ebv-socrates/sequencer_auto_ac_init.c b/arch/arm/boards/ebv-socrates/sequencer_auto_ac_init.c
index c52da56b7..5b5196ad7 100644
--- a/arch/arm/boards/ebv-socrates/sequencer_auto_ac_init.c
+++ b/arch/arm/boards/ebv-socrates/sequencer_auto_ac_init.c
@@ -1,5 +1,5 @@
 static const uint32_t ac_rom_init_size = 36;
-static const uint32_t SECT(ac_rom_init)[36] =
+static const uint32_t ac_rom_init[36] =
 {
 	0x20700000,
 	0x20780000,
diff --git a/arch/arm/boards/terasic-de0-nano-soc/iocsr_config_cyclone5.c b/arch/arm/boards/terasic-de0-nano-soc/iocsr_config_cyclone5.c
index 80cb27031..1458e76ba 100644
--- a/arch/arm/boards/terasic-de0-nano-soc/iocsr_config_cyclone5.c
+++ b/arch/arm/boards/terasic-de0-nano-soc/iocsr_config_cyclone5.c
@@ -29,7 +29,7 @@
 
 #include <mach/cyclone5-scan-manager.h>
 
-static const unsigned long SECT(iocsr_scan_chain0_table)[((CONFIG_HPS_IOCSR_SCANCHAIN0_LENGTH / 32) + 1)] = {
+static const unsigned long iocsr_scan_chain0_table[((CONFIG_HPS_IOCSR_SCANCHAIN0_LENGTH / 32) + 1)] = {
 	0x00000000,
 	0x00000000,
 	0x0FF00000,
@@ -56,7 +56,7 @@ static const unsigned long SECT(iocsr_scan_chain0_table)[((CONFIG_HPS_IOCSR_SCAN
 	0x00001000,
 };
 
-static const unsigned long SECT(iocsr_scan_chain1_table)[((CONFIG_HPS_IOCSR_SCANCHAIN1_LENGTH / 32) + 1)] = {
+static const unsigned long iocsr_scan_chain1_table[((CONFIG_HPS_IOCSR_SCANCHAIN1_LENGTH / 32) + 1)] = {
 	0x00100000,
 	0x300C0000,
 	0x300000C0,
@@ -113,7 +113,7 @@ static const unsigned long SECT(iocsr_scan_chain1_table)[((CONFIG_HPS_IOCSR_SCAN
 	0x00000080,
 };
 
-static const unsigned long SECT(iocsr_scan_chain2_table)[((CONFIG_HPS_IOCSR_SCANCHAIN2_LENGTH / 32) + 1)] = {
+static const unsigned long iocsr_scan_chain2_table[((CONFIG_HPS_IOCSR_SCANCHAIN2_LENGTH / 32) + 1)] = {
 	0x300C0300,
 	0x00000000,
 	0x0FF00000,
@@ -146,7 +146,7 @@ static const unsigned long SECT(iocsr_scan_chain2_table)[((CONFIG_HPS_IOCSR_SCAN
 	0x00000800,
 };
 
-static const unsigned long SECT(iocsr_scan_chain3_table)[((CONFIG_HPS_IOCSR_SCANCHAIN3_LENGTH / 32) + 1)] = {
+static const unsigned long iocsr_scan_chain3_table[((CONFIG_HPS_IOCSR_SCANCHAIN3_LENGTH / 32) + 1)] = {
 	0x0C420D80,
 	0x082000FF,
 	0x0A804001,
diff --git a/arch/arm/boards/terasic-de0-nano-soc/lowlevel.c b/arch/arm/boards/terasic-de0-nano-soc/lowlevel.c
index 46f6477a0..deac0e9cb 100644
--- a/arch/arm/boards/terasic-de0-nano-soc/lowlevel.c
+++ b/arch/arm/boards/terasic-de0-nano-soc/lowlevel.c
@@ -1,5 +1,3 @@
-#define SECT(name) __attribute__((section("terasic_de0_nano_soc_" #name))) name
-
 #include "sdram_config.h"
 #include "pinmux_config.c"
 #include "pll_config.h"
diff --git a/arch/arm/boards/terasic-de0-nano-soc/pinmux_config.c b/arch/arm/boards/terasic-de0-nano-soc/pinmux_config.c
index c06190181..9c5c7f18b 100644
--- a/arch/arm/boards/terasic-de0-nano-soc/pinmux_config.c
+++ b/arch/arm/boards/terasic-de0-nano-soc/pinmux_config.c
@@ -29,7 +29,7 @@
 
 #include <common.h>
 
-static unsigned long SECT(sys_mgr_init_table)[] = {
+static unsigned long sys_mgr_init_table[] = {
 	0, /* EMACIO0 */
 	2, /* EMACIO1 */
 	2, /* EMACIO2 */
diff --git a/arch/arm/boards/terasic-de0-nano-soc/sequencer_auto_ac_init.c b/arch/arm/boards/terasic-de0-nano-soc/sequencer_auto_ac_init.c
index 1efe4f99c..52be44f89 100644
--- a/arch/arm/boards/terasic-de0-nano-soc/sequencer_auto_ac_init.c
+++ b/arch/arm/boards/terasic-de0-nano-soc/sequencer_auto_ac_init.c
@@ -27,7 +27,7 @@ SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */
 
 static const uint32_t ac_rom_init_size = 36;
-static const uint32_t SECT(ac_rom_init)[36] =
+static const uint32_t ac_rom_init[36] =
 {
 	0x20700000,
 	0x20780000,
diff --git a/arch/arm/boards/terasic-sockit/iocsr_config_cyclone5.c b/arch/arm/boards/terasic-sockit/iocsr_config_cyclone5.c
index c2ccc46d9..9367b0d11 100644
--- a/arch/arm/boards/terasic-sockit/iocsr_config_cyclone5.c
+++ b/arch/arm/boards/terasic-sockit/iocsr_config_cyclone5.c
@@ -29,7 +29,7 @@
 
 #include <mach/cyclone5-scan-manager.h>
 
-static const unsigned long SECT(iocsr_scan_chain0_table)[((CONFIG_HPS_IOCSR_SCANCHAIN0_LENGTH / 32) + 1)] = {
+static const unsigned long iocsr_scan_chain0_table[((CONFIG_HPS_IOCSR_SCANCHAIN0_LENGTH / 32) + 1)] = {
 	0x00000000,
 	0x00000000,
 	0x0FF00000,
@@ -56,7 +56,7 @@ static const unsigned long SECT(iocsr_scan_chain0_table)[((CONFIG_HPS_IOCSR_SCAN
 	0x00001000,
 };
 
-static const unsigned long SECT(iocsr_scan_chain1_table)[((CONFIG_HPS_IOCSR_SCANCHAIN1_LENGTH / 32) + 1)] = {
+static const unsigned long iocsr_scan_chain1_table[((CONFIG_HPS_IOCSR_SCANCHAIN1_LENGTH / 32) + 1)] = {
 	0x00100000,
 	0x300C0000,
 	0x300000C0,
@@ -113,7 +113,7 @@ static const unsigned long SECT(iocsr_scan_chain1_table)[((CONFIG_HPS_IOCSR_SCAN
 	0x00000080,
 };
 
-static const unsigned long SECT(iocsr_scan_chain2_table)[((CONFIG_HPS_IOCSR_SCANCHAIN2_LENGTH / 32) + 1)] = {
+static const unsigned long iocsr_scan_chain2_table[((CONFIG_HPS_IOCSR_SCANCHAIN2_LENGTH / 32) + 1)] = {
 	0x300C0300,
 	0x00000000,
 	0x0FF00000,
@@ -146,7 +146,7 @@ static const unsigned long SECT(iocsr_scan_chain2_table)[((CONFIG_HPS_IOCSR_SCAN
 	0x00000800,
 };
 
-static const unsigned long SECT(iocsr_scan_chain3_table)[((CONFIG_HPS_IOCSR_SCANCHAIN3_LENGTH / 32) + 1)] = {
+static const unsigned long iocsr_scan_chain3_table[((CONFIG_HPS_IOCSR_SCANCHAIN3_LENGTH / 32) + 1)] = {
 	0x0C420D80,
 	0x082000FF,
 	0x0A804001,
diff --git a/arch/arm/boards/terasic-sockit/lowlevel.c b/arch/arm/boards/terasic-sockit/lowlevel.c
index 585c78659..1dd7940ae 100644
--- a/arch/arm/boards/terasic-sockit/lowlevel.c
+++ b/arch/arm/boards/terasic-sockit/lowlevel.c
@@ -1,5 +1,3 @@
-#define SECT(name) __attribute__((section("terasic_sockit_" #name))) name
-
 #include "sdram_config.h"
 #include "pinmux_config.c"
 #include "pll_config.h"
diff --git a/arch/arm/boards/terasic-sockit/pinmux_config.c b/arch/arm/boards/terasic-sockit/pinmux_config.c
index 9a1316d0d..bcf27dbe1 100644
--- a/arch/arm/boards/terasic-sockit/pinmux_config.c
+++ b/arch/arm/boards/terasic-sockit/pinmux_config.c
@@ -29,7 +29,7 @@
 
 #include <common.h>
 
-static unsigned long SECT(sys_mgr_init_table)[] = {
+static unsigned long sys_mgr_init_table[] = {
 	0, /* EMACIO0 */
 	2, /* EMACIO1 */
 	2, /* EMACIO2 */
diff --git a/arch/arm/boards/terasic-sockit/sequencer_auto_ac_init.c b/arch/arm/boards/terasic-sockit/sequencer_auto_ac_init.c
index 8044477e0..fe0764b0c 100644
--- a/arch/arm/boards/terasic-sockit/sequencer_auto_ac_init.c
+++ b/arch/arm/boards/terasic-sockit/sequencer_auto_ac_init.c
@@ -28,7 +28,7 @@ SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */
 
 static const uint32_t ac_rom_init_size = 36;
-static const uint32_t SECT(ac_rom_init)[36] =
+static const uint32_t ac_rom_init[36] =
 {
 	0x20700000,
 	0x20780000,
diff --git a/arch/arm/mach-socfpga/include/mach/cyclone5-sequencer.c b/arch/arm/mach-socfpga/include/mach/cyclone5-sequencer.c
index 9b58c452d..e5ecb0f1b 100644
--- a/arch/arm/mach-socfpga/include/mach/cyclone5-sequencer.c
+++ b/arch/arm/mach-socfpga/include/mach/cyclone5-sequencer.c
@@ -221,7 +221,7 @@ static int check_test_mem(int start)
 
 #endif // TEST_SIZE
 
-static void SECT(set_failing_group_stage)(uint32_t group, uint32_t stage, uint32_t substage)
+static void set_failing_group_stage(uint32_t group, uint32_t stage, uint32_t substage)
 {
 	if (gbl->error_stage == CAL_STAGE_NIL) {
 		gbl->error_substage = substage;
@@ -313,7 +313,7 @@ static void initialize(void)
 	}
 }
 
-static void SECT(set_rank_and_odt_mask)(uint32_t rank, uint32_t odt_mode)
+static void set_rank_and_odt_mask(uint32_t rank, uint32_t odt_mode)
 {
 	uint32_t odt_mask_0 = 0;
 	uint32_t odt_mask_1 = 0;
@@ -485,7 +485,7 @@ static inline void scc_mgr_set_dqs_en_phase(uint32_t read_group, uint32_t phase)
 
 }
 
-static void SECT(scc_mgr_set_dqs_en_phase_all_ranks)(uint32_t read_group, uint32_t phase)
+static void scc_mgr_set_dqs_en_phase_all_ranks(uint32_t read_group, uint32_t phase)
 {
 	uint32_t r;
 	uint32_t update_scan_chains;
@@ -513,7 +513,7 @@ static inline void scc_mgr_set_dqdqs_output_phase(uint32_t write_group, uint32_t
 
 }
 
-static void SECT(scc_mgr_set_dqdqs_output_phase_all_ranks)(uint32_t write_group, uint32_t phase)
+static void scc_mgr_set_dqdqs_output_phase_all_ranks(uint32_t write_group, uint32_t phase)
 {
 	uint32_t r;
 	uint32_t update_scan_chains;
@@ -541,7 +541,7 @@ static inline void scc_mgr_set_dqs_en_delay(uint32_t read_group, uint32_t delay)
 
 }
 
-static void SECT(scc_mgr_set_dqs_en_delay_all_ranks)(uint32_t read_group, uint32_t delay)
+static void scc_mgr_set_dqs_en_delay_all_ranks(uint32_t read_group, uint32_t delay)
 {
 	uint32_t r;
 
@@ -562,7 +562,7 @@ static void SECT(scc_mgr_set_dqs_en_delay_all_ranks)(uint32_t read_group, uint32
 	}
 }
 
-static void SECT(scc_mgr_set_oct_out1_delay)(uint32_t write_group, uint32_t delay)
+static void scc_mgr_set_oct_out1_delay(uint32_t write_group, uint32_t delay)
 {
 	uint32_t read_group;
 
@@ -581,7 +581,7 @@ static void SECT(scc_mgr_set_oct_out1_delay)(uint32_t write_group, uint32_t dela
 
 }
 
-static void SECT(scc_mgr_set_oct_out2_delay)(uint32_t write_group, uint32_t delay)
+static void scc_mgr_set_oct_out2_delay(uint32_t write_group, uint32_t delay)
 {
 	uint32_t read_group;
 
@@ -692,7 +692,7 @@ static inline void scc_mgr_set_dm_in_delay(uint32_t write_group, uint32_t dm, ui
 	WRITE_SCC_DM_IO_IN_DELAY(dm, delay);
 }
 
-static inline void SECT(scc_mgr_set_dm_bypass)(uint32_t write_group, uint32_t dm, uint32_t bypass)
+static inline void scc_mgr_set_dm_bypass(uint32_t write_group, uint32_t dm, uint32_t bypass)
 {
 	// Load the setting in the SCC manager
 	WRITE_SCC_DM_BYPASS(dm, bypass);
@@ -700,7 +700,7 @@ static inline void SECT(scc_mgr_set_dm_bypass)(uint32_t write_group, uint32_t dm
 
 //USER Zero all DQS config
 // TODO: maybe rename to scc_mgr_zero_dqs_config (or something)
-static void SECT(scc_mgr_zero_all)(void)
+static void scc_mgr_zero_all(void)
 {
 	uint32_t i, r;
 
@@ -735,7 +735,7 @@ static void SECT(scc_mgr_zero_all)(void)
 	}
 }
 
-static void SECT(scc_set_bypass_mode)(uint32_t write_group, uint32_t mode)
+static void scc_set_bypass_mode(uint32_t write_group, uint32_t mode)
 {
 	// mode = 0 : Do NOT bypass - Half Rate Mode
 	// mode = 1 : Bypass - Full Rate Mode
@@ -763,7 +763,7 @@ static void SECT(scc_set_bypass_mode)(uint32_t write_group, uint32_t mode)
 }
 
 // Moving up to avoid warnings
-static void SECT(scc_mgr_load_dqs_for_write_group)(uint32_t write_group)
+static void scc_mgr_load_dqs_for_write_group(uint32_t write_group)
 {
 	uint32_t read_group;
 
@@ -780,7 +780,7 @@ static void SECT(scc_mgr_load_dqs_for_write_group)(uint32_t write_group)
 	}
 }
 
-static void SECT(scc_mgr_zero_group)(uint32_t write_group, uint32_t test_begin, int32_t out_only)
+static void scc_mgr_zero_group(uint32_t write_group, uint32_t test_begin, int32_t out_only)
 {
 	uint32_t i, r;
 
@@ -861,7 +861,7 @@ static void scc_mgr_load_dm(uint32_t dm)
 //USER apply and load a particular input delay for the DQ pins in a group
 //USER group_bgn is the index of the first dq pin (in the write group)
 
-static void SECT(scc_mgr_apply_group_dq_in_delay)(uint32_t write_group, uint32_t group_bgn,
+static void scc_mgr_apply_group_dq_in_delay(uint32_t write_group, uint32_t group_bgn,
 					    uint32_t delay)
 {
 	uint32_t i, p;
@@ -874,7 +874,7 @@ static void SECT(scc_mgr_apply_group_dq_in_delay)(uint32_t write_group, uint32_t
 
 //USER apply and load a particular output delay for the DQ pins in a group
 
-static void SECT(scc_mgr_apply_group_dq_out1_delay)(uint32_t write_group, uint32_t group_bgn,
+static void scc_mgr_apply_group_dq_out1_delay(uint32_t write_group, uint32_t group_bgn,
 					      uint32_t delay1)
 {
 	uint32_t i, p;
@@ -887,7 +887,7 @@ static void SECT(scc_mgr_apply_group_dq_out1_delay)(uint32_t write_group, uint32
 
 //USER apply and load a particular output delay for the DM pins in a group
 
-static void SECT(scc_mgr_apply_group_dm_out1_delay)(uint32_t write_group, uint32_t delay1)
+static void scc_mgr_apply_group_dm_out1_delay(uint32_t write_group, uint32_t delay1)
 {
 	uint32_t i;
 
@@ -898,7 +898,7 @@ static void SECT(scc_mgr_apply_group_dm_out1_delay)(uint32_t write_group, uint32
 }
 
 //USER apply and load delay on both DQS and OCT out1
-static void SECT(scc_mgr_apply_group_dqs_io_and_oct_out1)(uint32_t write_group, uint32_t delay)
+static void scc_mgr_apply_group_dqs_io_and_oct_out1(uint32_t write_group, uint32_t delay)
 {
 	scc_mgr_set_dqs_out1_delay(write_group, delay);
 	scc_mgr_load_dqs_io();
@@ -910,7 +910,7 @@ static void SECT(scc_mgr_apply_group_dqs_io_and_oct_out1)(uint32_t write_group,
 //USER set delay on both DQS and OCT out1 by incrementally changing
 //USER the settings one dtap at a time towards the target value, to avoid
 //USER breaking the lock of the DLL/PLL on the memory device.
-static void SECT(scc_mgr_set_group_dqs_io_and_oct_out1_gradual)(uint32_t write_group, uint32_t delay)
+static void scc_mgr_set_group_dqs_io_and_oct_out1_gradual(uint32_t write_group, uint32_t delay)
 {
 	uint32_t d = READ_SCC_DQS_IO_OUT1_DELAY();
 
@@ -934,7 +934,7 @@ static void SECT(scc_mgr_set_group_dqs_io_and_oct_out1_gradual)(uint32_t write_g
 
 //USER apply a delay to the entire output side: DQ, DM, DQS, OCT
 
-static void SECT(scc_mgr_apply_group_all_out_delay)(uint32_t write_group, uint32_t group_bgn,
+static void scc_mgr_apply_group_all_out_delay(uint32_t write_group, uint32_t group_bgn,
 					      uint32_t delay)
 {
 	//USER dq shift
@@ -951,7 +951,7 @@ static void SECT(scc_mgr_apply_group_all_out_delay)(uint32_t write_group, uint32
 }
 
 //USER apply a delay to the entire output side (DQ, DM, DQS, OCT) and to all ranks
-static void SECT(scc_mgr_apply_group_all_out_delay_all_ranks)(uint32_t write_group, uint32_t group_bgn,
+static void scc_mgr_apply_group_all_out_delay_all_ranks(uint32_t write_group, uint32_t group_bgn,
 							uint32_t delay)
 {
 	uint32_t r;
@@ -968,7 +968,7 @@ static void SECT(scc_mgr_apply_group_all_out_delay_all_ranks)(uint32_t write_gro
 
 //USER apply a delay to the entire output side: DQ, DM, DQS, OCT
 
-static void SECT(scc_mgr_apply_group_all_out_delay_add)(uint32_t write_group, uint32_t group_bgn,
+static void scc_mgr_apply_group_all_out_delay_add(uint32_t write_group, uint32_t group_bgn,
 						  uint32_t delay)
 {
 	uint32_t i, p, new_delay;
@@ -1046,7 +1046,7 @@ static void SECT(scc_mgr_apply_group_all_out_delay_add)(uint32_t write_group, ui
 }
 
 //USER apply a delay to the entire output side (DQ, DM, DQS, OCT) and to all ranks
-static void SECT(scc_mgr_apply_group_all_out_delay_add_all_ranks)(uint32_t write_group,
+static void scc_mgr_apply_group_all_out_delay_add_all_ranks(uint32_t write_group,
 							    uint32_t group_bgn, uint32_t delay)
 {
 	uint32_t r;
@@ -1067,7 +1067,7 @@ static inline void scc_mgr_spread_out2_delay_all_ranks(uint32_t write_group, uin
 
 // optimization used to recover some slots in ddr3 inst_rom
 // could be applied to other protocols if we wanted to
-static void SECT(set_jump_as_return)(void)
+static void set_jump_as_return(void)
 {
 	// to save space, we replace return with jump to special shared RETURN instruction
 	// so we set the counter to large value so that we always jump
@@ -1077,7 +1077,7 @@ static void SECT(set_jump_as_return)(void)
 }
 
 // should always use constants as argument to ensure all computations are performed at compile time
-static inline void SECT(delay_for_n_mem_clocks)(const uint32_t clocks)
+static inline void delay_for_n_mem_clocks(const uint32_t clocks)
 {
 	uint32_t afi_clocks;
 	uint8_t inner;
@@ -1145,7 +1145,7 @@ static inline void SECT(delay_for_n_mem_clocks)(const uint32_t clocks)
 }
 
 // should always use constants as argument to ensure all computations are performed at compile time
-static inline void SECT(delay_for_n_ns)(const uint32_t nanoseconds)
+static inline void delay_for_n_ns(const uint32_t nanoseconds)
 {
 	delay_for_n_mem_clocks((1000 * nanoseconds) / (1000000 / AFI_CLK_FREQ) * AFI_RATE_RATIO);
 }
@@ -1161,7 +1161,7 @@ static void rw_mgr_rdimm_initialize(void)
 {
 }
 
-static void SECT(rw_mgr_mem_initialize)(void)
+static void rw_mgr_mem_initialize(void)
 {
 	uint32_t r;
 
@@ -1273,7 +1273,7 @@ static void rw_mgr_mem_dll_lock_wait(void)
 //USER  At the end of calibration we have to program the user settings in, and
 //USER  hand off the memory to the user.
 
-static void SECT(rw_mgr_mem_handoff)(void)
+static void rw_mgr_mem_handoff(void)
 {
 	uint32_t r;
 
@@ -1325,7 +1325,7 @@ static void SECT(rw_mgr_mem_handoff)(void)
 }
 
 //USER performs a guaranteed read on the patterns we are going to use during a read test to ensure memory works
-static uint32_t SECT(rw_mgr_mem_calibrate_read_test_patterns)(uint32_t rank_bgn, uint32_t group,
+static uint32_t rw_mgr_mem_calibrate_read_test_patterns(uint32_t rank_bgn, uint32_t group,
 							uint32_t num_tries, t_btfld * bit_chk,
 							uint32_t all_ranks)
 {
@@ -1387,7 +1387,7 @@ static uint32_t SECT(rw_mgr_mem_calibrate_read_test_patterns)(uint32_t rank_bgn,
 	return (*bit_chk == param->read_correct_mask);
 }
 
-static uint32_t SECT(rw_mgr_mem_calibrate_read_test_patterns_all_ranks)(uint32_t group,
+static uint32_t rw_mgr_mem_calibrate_read_test_patterns_all_ranks(uint32_t group,
 								  uint32_t num_tries,
 								  t_btfld * bit_chk)
 {
@@ -1410,7 +1410,7 @@ static uint32_t SECT(rw_mgr_mem_calibrate_read_test_patterns_all_ranks)(uint32_t
 }
 
 //USER load up the patterns we are going to use during a read test
-static void SECT(rw_mgr_mem_calibrate_read_load_patterns)(uint32_t rank_bgn, uint32_t all_ranks)
+static void rw_mgr_mem_calibrate_read_load_patterns(uint32_t rank_bgn, uint32_t all_ranks)
 {
 	uint32_t r;
 	uint32_t rank_end =
@@ -1445,7 +1445,7 @@ static void SECT(rw_mgr_mem_calibrate_read_load_patterns)(uint32_t rank_bgn, uin
 	set_rank_and_odt_mask(0, RW_MGR_ODT_MODE_OFF);
 }
 
-static inline void SECT(rw_mgr_mem_calibrate_read_load_patterns_all_ranks)(void)
+static inline void rw_mgr_mem_calibrate_read_load_patterns_all_ranks(void)
 {
 	rw_mgr_mem_calibrate_read_load_patterns(0, 1);
 }
@@ -1564,7 +1564,7 @@ static inline void SECT(rw_mgr_mem_calibrate_read_load_patterns_all_ranks)(void)
 //USER  try a read and see if it returns correct data back. has dummy reads inserted into the mix
 //USER  used to align dqs enable. has more thorough checks than the regular read test.
 
-static uint32_t SECT(rw_mgr_mem_calibrate_read_test)(uint32_t rank_bgn, uint32_t group,
+static uint32_t rw_mgr_mem_calibrate_read_test(uint32_t rank_bgn, uint32_t group,
 					       uint32_t num_tries, uint32_t all_correct,
 					       t_btfld * bit_chk, uint32_t all_groups,
 					       uint32_t all_ranks)
@@ -1651,7 +1651,7 @@ static uint32_t SECT(rw_mgr_mem_calibrate_read_test)(uint32_t rank_bgn, uint32_t
 	}
 }
 
-static inline uint32_t SECT(rw_mgr_mem_calibrate_read_test_all_ranks)(uint32_t group, uint32_t num_tries,
+static inline uint32_t rw_mgr_mem_calibrate_read_test_all_ranks(uint32_t group, uint32_t num_tries,
 								uint32_t all_correct,
 								t_btfld * bit_chk,
 								uint32_t all_groups)
@@ -1660,7 +1660,7 @@ static inline uint32_t SECT(rw_mgr_mem_calibrate_read_test_all_ranks)(uint32_t g
 					      1);
 }
 
-static void SECT(rw_mgr_incr_vfifo)(uint32_t grp, uint32_t * v)
+static void rw_mgr_incr_vfifo(uint32_t grp, uint32_t * v)
 {
 	//USER fiddle with FIFO
 	if (HARD_PHY) {
@@ -1691,7 +1691,7 @@ static void SECT(rw_mgr_incr_vfifo)(uint32_t grp, uint32_t * v)
 }
 
 //Used in quick cal to properly loop through the duplicated VFIFOs in AV QDRII/RLDRAM
-static inline void SECT(rw_mgr_incr_vfifo_all)(uint32_t grp, uint32_t * v)
+static inline void rw_mgr_incr_vfifo_all(uint32_t grp, uint32_t * v)
 {
 #if VFIFO_CONTROL_WIDTH_PER_DQS == 1
 	rw_mgr_incr_vfifo(grp, v);
@@ -1706,7 +1706,7 @@ static inline void SECT(rw_mgr_incr_vfifo_all)(uint32_t grp, uint32_t * v)
 #endif
 }
 
-static void SECT(rw_mgr_decr_vfifo)(uint32_t grp, uint32_t * v)
+static void rw_mgr_decr_vfifo(uint32_t grp, uint32_t * v)
 {
 
 	uint32_t i;
@@ -1722,7 +1722,7 @@ static void SECT(rw_mgr_decr_vfifo)(uint32_t grp, uint32_t * v)
 
 // Navid's version
 
-static uint32_t SECT(rw_mgr_mem_calibrate_vfifo_find_dqs_en_phase)(uint32_t grp)
+static uint32_t rw_mgr_mem_calibrate_vfifo_find_dqs_en_phase(uint32_t grp)
 {
 	uint32_t i, d, v, p;
 	uint32_t max_working_cnt;
@@ -2415,7 +2415,7 @@ static uint32_t rw_mgr_mem_calibrate_vfifo_find_dqs_en_phase(uint32_t grp)
 #else
 // Val's original version
 
-static uint32_t SECT(rw_mgr_mem_calibrate_vfifo_find_dqs_en_phase)(uint32_t grp)
+static uint32_t rw_mgr_mem_calibrate_vfifo_find_dqs_en_phase(uint32_t grp)
 {
 	uint32_t i, j, v, d;
 	uint32_t min_working_d, max_working_cnt;
@@ -2532,7 +2532,7 @@ static uint32_t SECT(rw_mgr_mem_calibrate_vfifo_find_dqs_en_phase)(uint32_t grp)
 #endif
 
 // Try rw_mgr_mem_calibrate_vfifo_find_dqs_en_phase across different dq_in_delay values
-static inline uint32_t SECT(rw_mgr_mem_calibrate_vfifo_find_dqs_en_phase_sweep_dq_in_delay)(uint32_t
+static inline uint32_t rw_mgr_mem_calibrate_vfifo_find_dqs_en_phase_sweep_dq_in_delay(uint32_t
 										      write_group,
 										      uint32_t
 										      read_group,
@@ -2584,7 +2584,7 @@ static inline uint32_t SECT(rw_mgr_mem_calibrate_vfifo_find_dqs_en_phase_sweep_d
 
 #if NEWVERSION_RDDESKEW
 
-static uint32_t SECT(rw_mgr_mem_calibrate_vfifo_center)(uint32_t rank_bgn, uint32_t write_group,
+static uint32_t rw_mgr_mem_calibrate_vfifo_center(uint32_t rank_bgn, uint32_t write_group,
 						  uint32_t read_group, uint32_t test_bgn,
 						  uint32_t use_read_test, uint32_t update_fom)
 {
@@ -2902,7 +2902,7 @@ static uint32_t SECT(rw_mgr_mem_calibrate_vfifo_center)(uint32_t rank_bgn, uint3
 
 #else
 
-static uint32_t SECT(rw_mgr_mem_calibrate_vfifo_center)(uint32_t rank_bgn, uint32_t grp,
+static uint32_t rw_mgr_mem_calibrate_vfifo_center(uint32_t rank_bgn, uint32_t grp,
 						  uint32_t test_bgn, uint32_t use_read_test)
 {
 	uint32_t i, p, d;
@@ -3037,7 +3037,7 @@ static uint32_t SECT(rw_mgr_mem_calibrate_vfifo_center)(uint32_t rank_bgn, uint3
 #if NEWVERSION_GW
 
 //USER VFIFO Calibration -- Full Calibration
-static uint32_t SECT(rw_mgr_mem_calibrate_vfifo)(uint32_t read_group, uint32_t test_bgn)
+static uint32_t rw_mgr_mem_calibrate_vfifo(uint32_t read_group, uint32_t test_bgn)
 {
 	uint32_t p, d, rank_bgn, sr;
 	uint32_t dtaps_per_ptap;
@@ -3201,7 +3201,7 @@ static uint32_t SECT(rw_mgr_mem_calibrate_vfifo)(uint32_t read_group, uint32_t t
 #else
 
 //USER VFIFO Calibration -- Full Calibration
-static uint32_t SECT(rw_mgr_mem_calibrate_vfifo)(uint32_t g, uint32_t test_bgn)
+static uint32_t rw_mgr_mem_calibrate_vfifo(uint32_t g, uint32_t test_bgn)
 {
 	uint32_t p, rank_bgn, sr;
 	uint32_t grp_calibrated;
@@ -3272,7 +3272,7 @@ static uint32_t SECT(rw_mgr_mem_calibrate_vfifo)(uint32_t g, uint32_t test_bgn)
 #endif
 
 //USER VFIFO Calibration -- Read Deskew Calibration after write deskew
-static uint32_t SECT(rw_mgr_mem_calibrate_vfifo_end)(uint32_t read_group, uint32_t test_bgn)
+static uint32_t rw_mgr_mem_calibrate_vfifo_end(uint32_t read_group, uint32_t test_bgn)
 {
 	uint32_t rank_bgn, sr;
 	uint32_t grp_calibrated;
@@ -3323,7 +3323,7 @@ static uint32_t SECT(rw_mgr_mem_calibrate_vfifo_end)(uint32_t read_group, uint32
 
 //USER Calibrate LFIFO to find smallest read latency
 
-static uint32_t SECT(rw_mgr_mem_calibrate_lfifo)(void)
+static uint32_t rw_mgr_mem_calibrate_lfifo(void)
 {
 	uint32_t found_one;
 	t_btfld bit_chk;
@@ -3381,7 +3381,7 @@ static uint32_t SECT(rw_mgr_mem_calibrate_lfifo)(void)
 //USER two variants are provided. one that just tests a write pattern and another that
 //USER tests datamask functionality.
 
-static void SECT(rw_mgr_mem_calibrate_write_test_issue)(uint32_t group, uint32_t test_dm)
+static void rw_mgr_mem_calibrate_write_test_issue(uint32_t group, uint32_t test_dm)
 {
 	uint32_t mcc_instruction;
 	uint32_t quick_write_mode = (((STATIC_CALIB_STEPS) & CALIB_SKIP_WRITES)
@@ -3486,7 +3486,7 @@ static void SECT(rw_mgr_mem_calibrate_write_test_issue)(uint32_t group, uint32_t
 
 //USER Test writes, can check for a single bit pass or multiple bit pass
 
-static uint32_t SECT(rw_mgr_mem_calibrate_write_test)(uint32_t rank_bgn, uint32_t write_group,
+static uint32_t rw_mgr_mem_calibrate_write_test(uint32_t rank_bgn, uint32_t write_group,
 						uint32_t use_dm, uint32_t all_correct,
 						t_btfld * bit_chk, uint32_t all_ranks)
 {
@@ -3552,7 +3552,7 @@ static uint32_t SECT(rw_mgr_mem_calibrate_write_test)(uint32_t rank_bgn, uint32_
 	}
 }
 
-static inline uint32_t SECT(rw_mgr_mem_calibrate_write_test_all_ranks)(uint32_t write_group,
+static inline uint32_t rw_mgr_mem_calibrate_write_test_all_ranks(uint32_t write_group,
 								 uint32_t use_dm,
 								 uint32_t all_correct,
 								 t_btfld * bit_chk)
@@ -3565,7 +3565,7 @@ static inline uint32_t SECT(rw_mgr_mem_calibrate_write_test_all_ranks)(uint32_t
 #if NEWVERSION_WL
 
 //USER Write Levelling -- Full Calibration
-static uint32_t SECT(rw_mgr_mem_calibrate_wlevel)(uint32_t g, uint32_t test_bgn)
+static uint32_t rw_mgr_mem_calibrate_wlevel(uint32_t g, uint32_t test_bgn)
 {
 	uint32_t p, d;
 
@@ -3805,7 +3805,7 @@ static uint32_t SECT(rw_mgr_mem_calibrate_wlevel)(uint32_t g, uint32_t test_bgn)
 #else
 
 //USER Write Levelling -- Full Calibration
-static uint32_t SECT(rw_mgr_mem_calibrate_wlevel)(uint32_t g, uint32_t test_bgn)
+static uint32_t rw_mgr_mem_calibrate_wlevel(uint32_t g, uint32_t test_bgn)
 {
 	uint32_t p, d;
 	t_btfld bit_chk;
@@ -3934,7 +3934,7 @@ static uint32_t SECT(rw_mgr_mem_calibrate_wlevel)(uint32_t g, uint32_t test_bgn)
 
 #if NEWVERSION_WRDESKEW
 
-static uint32_t SECT(rw_mgr_mem_calibrate_writes_center)(uint32_t rank_bgn, uint32_t write_group,
+static uint32_t rw_mgr_mem_calibrate_writes_center(uint32_t rank_bgn, uint32_t write_group,
 						   uint32_t test_bgn)
 {
 	uint32_t i, p, min_index;
@@ -4307,7 +4307,7 @@ static uint32_t SECT(rw_mgr_mem_calibrate_writes_center)(uint32_t rank_bgn, uint
 
 #else // !NEWVERSION_WRDESKEW
 
-static uint32_t SECT(rw_mgr_mem_calibrate_writes_center)(uint32_t rank_bgn, uint32_t write_group,
+static uint32_t rw_mgr_mem_calibrate_writes_center(uint32_t rank_bgn, uint32_t write_group,
 						   uint32_t test_bgn)
 {
 	uint32_t i, p, d;
@@ -4488,7 +4488,7 @@ static uint32_t SECT(rw_mgr_mem_calibrate_writes_center)(uint32_t rank_bgn, uint
 
 //USER calibrate the write operations
 
-static uint32_t SECT(rw_mgr_mem_calibrate_writes)(uint32_t rank_bgn, uint32_t g, uint32_t test_bgn)
+static uint32_t rw_mgr_mem_calibrate_writes(uint32_t rank_bgn, uint32_t g, uint32_t test_bgn)
 {
 
 	reg_file_set_stage(CAL_STAGE_WRITES);
@@ -4509,7 +4509,7 @@ static uint32_t SECT(rw_mgr_mem_calibrate_writes)(uint32_t rank_bgn, uint32_t g,
 }
 
 //USER precharge all banks and activate row 0 in bank "000..." and bank "111..."
-static void SECT(mem_precharge_and_activate)(void)
+static void mem_precharge_and_activate(void)
 {
 	uint32_t r;
 
@@ -4540,7 +4540,7 @@ static void SECT(mem_precharge_and_activate)(void)
 
 //USER Configure various memory related parameters.
 
-static void SECT(mem_config)(void)
+static void mem_config(void)
 {
 	uint32_t rlat, wlat;
 	uint32_t rw_wl_nop_cycles;
@@ -4629,7 +4629,7 @@ static void SECT(mem_config)(void)
 
 //USER Set VFIFO and LFIFO to instant-on settings in skip calibration mode
 
-static void SECT(mem_skip_calibrate)(void)
+static void mem_skip_calibrate(void)
 {
 	uint32_t vfifo_offset;
 	uint32_t i, j, r;
@@ -4707,7 +4707,7 @@ static void SECT(mem_skip_calibrate)(void)
 
 //USER Memory calibration entry point
 
-static uint32_t SECT(mem_calibrate)(void)
+static uint32_t mem_calibrate(void)
 {
 	uint32_t i;
 	uint32_t rank_bgn, sr;
@@ -4914,7 +4914,7 @@ static uint32_t SECT(mem_calibrate)(void)
 	return 1;
 }
 
-static uint32_t SECT(run_mem_calibrate)(void)
+static uint32_t run_mem_calibrate(void)
 {
 
 	uint32_t pass;
@@ -5011,7 +5011,7 @@ static uint32_t SECT(run_mem_calibrate)(void)
 
 }
 
-static void SECT(hc_initialize_rom_data)(void)
+static void hc_initialize_rom_data(void)
 {
 	uint32_t i;
 
@@ -5026,7 +5026,7 @@ static void SECT(hc_initialize_rom_data)(void)
 	}
 }
 
-static void SECT(initialize_reg_file)(void)
+static void initialize_reg_file(void)
 {
 	// Initialize the register file with the correct data
 	IOWR_32DIRECT(REG_FILE_SIGNATURE, 0, REG_FILE_INIT_SEQ_SIGNATURE);
@@ -5038,7 +5038,7 @@ static void SECT(initialize_reg_file)(void)
 	IOWR_32DIRECT(REG_FILE_DEBUG2, 0, 0);
 }
 
-static void SECT(initialize_hps_phy)(void)
+static void initialize_hps_phy(void)
 {
 	// These may need to be included also:
 	// wrap_back_en (false)
@@ -5131,7 +5131,7 @@ static void initialize_tracking(void)
 	IOWR_32DIRECT(REG_FILE_TRK_RFSH, 0, concatenated_refresh);
 }
 
-static int SECT(socfpga_mem_calibration)(void)
+static int socfpga_mem_calibration(void)
 {
 	param_t my_param;
 	gbl_t my_gbl;
diff --git a/arch/arm/mach-socfpga/include/mach/lowlevel.h b/arch/arm/mach-socfpga/include/mach/lowlevel.h
index 657e07a88..8134a0235 100644
--- a/arch/arm/mach-socfpga/include/mach/lowlevel.h
+++ b/arch/arm/mach-socfpga/include/mach/lowlevel.h
@@ -13,7 +13,7 @@
 #include <mach/pll_config.h>
 #include <mach/cyclone5-sequencer.c>
 
-static noinline void SECT(start_socfpga_c5_common)(uint32_t size, void *fdt_blob)
+static void __noreturn start_socfpga_c5_common(uint32_t size, void *fdt_blob)
 {
 	void *fdt;
 
@@ -32,7 +32,7 @@ static noinline void SECT(start_socfpga_c5_common)(uint32_t size, void *fdt_blob
 		start_socfpga_c5_common(memory_size, __dtb_##fdt_name##_start); \
 	}
 
-static noinline void SECT(start_socfpga_c5_xload_common)(uint32_t size)
+static noinline void start_socfpga_c5_xload_common(uint32_t size)
 {
 	struct socfpga_io_config io_config;
 	int ret;
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
