Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fkS9E-0006KN-HD
 for barebox@lists.infradead.org; Tue, 31 Jul 2018 10:45:02 +0000
Received: from unicorn.hi.pengutronix.de
 ([2001:67c:670:100:a61f:72ff:fe69:16d] helo=unicorn)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <str@pengutronix.de>) id 1fkS91-0001Cf-Vc
 for barebox@lists.infradead.org; Tue, 31 Jul 2018 12:44:47 +0200
Received: from str by unicorn with local (Exim 4.89)
 (envelope-from <str@pengutronix.de>) id 1fkS99-0000f4-BS
 for barebox@lists.infradead.org; Tue, 31 Jul 2018 12:44:55 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Tue, 31 Jul 2018 12:44:40 +0200
Message-Id: <20180731104442.2451-18-s.trumtrar@pengutronix.de>
In-Reply-To: <20180731104442.2451-1-s.trumtrar@pengutronix.de>
References: <20180731104442.2451-1-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 17/19] ARM: socfpga: achilles: convert to PBL barebox
To: Barebox List <barebox@lists.infradead.org>

Previously the FPGA was configured externally on the Achilles. On newer versions
this is changed and barebox has to configure the FPGA before the SDRAM can be
used.

If the FPGA is configured via JTAG or from an external memory, the *-bringup
version can be used.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/boards/reflex-achilles/Makefile   |  4 +-
 arch/arm/boards/reflex-achilles/board.c    | 19 +++++++
 arch/arm/boards/reflex-achilles/lowlevel.c | 86 +++++++++++++++++++++++++++---
 images/Makefile.socfpga                    |  6 ++-
 4 files changed, 106 insertions(+), 9 deletions(-)
 create mode 100644 arch/arm/boards/reflex-achilles/board.c

diff --git a/arch/arm/boards/reflex-achilles/Makefile b/arch/arm/boards/reflex-achilles/Makefile
index 6b4214115300..092c31d6b28d 100644
--- a/arch/arm/boards/reflex-achilles/Makefile
+++ b/arch/arm/boards/reflex-achilles/Makefile
@@ -1,2 +1,2 @@
-obj-y += lowlevel.o
-pbl-y += lowlevel.o
+lwl-y += lowlevel.o
+obj-y += board.o
diff --git a/arch/arm/boards/reflex-achilles/board.c b/arch/arm/boards/reflex-achilles/board.c
new file mode 100644
index 000000000000..29011ba5784e
--- /dev/null
+++ b/arch/arm/boards/reflex-achilles/board.c
@@ -0,0 +1,19 @@
+#include <common.h>
+#include <init.h>
+#include <io.h>
+#include <bbu.h>
+
+static int achilles_init(void)
+{
+	int pbl_index = 0;
+
+	if (!of_machine_is_compatible("reflex,achilles"))
+		return 0;
+
+	pbl_index = readl(0xFFD06210);
+
+	pr_debug("Current barebox instance %d\n", pbl_index);
+
+	return 0;
+}
+postcore_initcall(achilles_init);
diff --git a/arch/arm/boards/reflex-achilles/lowlevel.c b/arch/arm/boards/reflex-achilles/lowlevel.c
index 4c18fa6bca4f..2265aa882b1f 100644
--- a/arch/arm/boards/reflex-achilles/lowlevel.c
+++ b/arch/arm/boards/reflex-achilles/lowlevel.c
@@ -1,24 +1,39 @@
 #include <common.h>
 #include <linux/sizes.h>
 #include <io.h>
-#include <asm/barebox-arm-head.h>
+#include <memory.h>
 #include <asm/barebox-arm.h>
 #include <asm/cache.h>
+#include <asm/sections.h>
+#include <asm/unaligned.h>
 #include <debug_ll.h>
+#include <pbl.h>
 #include <mach/arria10-sdram.h>
 #include <mach/arria10-regs.h>
 #include <mach/arria10-reset-manager.h>
 #include <mach/arria10-clock-manager.h>
 #include <mach/arria10-pinmux.h>
+#include <mach/arria10-fpga.h>
 #include "pll-config-arria10.c"
 #include "pinmux-config-arria10.c"
 #include <mach/generic.h>
 
+#define BAREBOX_PART 0
+#define BITSTREAM_PART 1
+#define BAREBOX1_OFFSET    SZ_1M
+#define BAREBOX2_OFFSET    BAREBOX1_OFFSET + SZ_512K
+#define BAREBOX3_OFFSET    BAREBOX2_OFFSET + SZ_512K
+#define BAREBOX4_OFFSET    BAREBOX3_OFFSET + SZ_512K
+#define BITSTREAM1_OFFSET  0x0
+#define BITSTREAM2_OFFSET  BITSTREAM1_OFFSET + SZ_64M
+
 extern char __dtb_socfpga_arria10_achilles_start[];
 
-static noinline void achilles_entry(void)
+static noinline void achilles_start(void)
 {
-	void *fdt;
+	int pbl_index = 0;
+	int barebox = 0;
+	int bitstream = 0;
 
 	arm_early_mmu_cache_invalidate();
 
@@ -26,20 +41,79 @@ static noinline void achilles_entry(void)
 	setup_c();
 
 	arria10_init(&mainpll_cfg, &perpll_cfg, pinmux);
+
+	arria10_prepare_mmc(BAREBOX_PART, BITSTREAM_PART);
+
+	pbl_index = readl(ARRIA10_SYSMGR_ROM_INITSWLASTLD);
+
+	switch (pbl_index) {
+	case 0:
+		barebox = BAREBOX1_OFFSET;
+		bitstream = BITSTREAM1_OFFSET;
+		break;
+	case 1:
+		barebox = BAREBOX2_OFFSET;
+		bitstream = BITSTREAM1_OFFSET;
+		break;
+	case 2:
+		barebox = BAREBOX3_OFFSET;
+		bitstream = BITSTREAM2_OFFSET;
+		break;
+	case 3:
+		barebox = BAREBOX4_OFFSET;
+		bitstream = BITSTREAM2_OFFSET;
+		break;
+	}
+
+	arria10_load_fpga(bitstream, SZ_64M);
+
 	arria10_finish_io(&mainpll_cfg, &perpll_cfg, pinmux);
 
 	arria10_ddr_calibration_sequence();
 
+	arria10_start_image(barebox);
+}
+
+ENTRY_FUNCTION(start_socfpga_achilles, r0, r1, r2)
+{
+	void *fdt;
+
+	if (get_pc() > ARRIA10_OCRAM_ADDR) {
+		arm_cpu_lowlevel_init();
+
+		arm_setup_stack(ARRIA10_OCRAM_ADDR + SZ_256K - 32);
+
+		achilles_start();
+	}
+
 	fdt = __dtb_socfpga_arria10_achilles_start + get_runtime_offset();
 
 	barebox_arm_entry(0x0, SZ_2G + SZ_1G, fdt);
 }
 
-ENTRY_FUNCTION(start_socfpga_achilles, r0, r1, r2)
+ENTRY_FUNCTION(start_socfpga_achilles_bringup, r0, r1, r2)
 {
+	void *fdt;
+
 	arm_cpu_lowlevel_init();
 
-	arm_setup_stack(0xffe00000 + SZ_256K - SZ_32K - SZ_4K - 16);
+	arm_setup_stack(ARRIA10_OCRAM_ADDR + SZ_256K - 16);
+
+	arm_early_mmu_cache_invalidate();
+
+	relocate_to_current_adr();
+	setup_c();
+
+	arria10_init(&mainpll_cfg, &perpll_cfg, pinmux);
 
-	achilles_entry();
+	/* wait for fpga_usermode */
+	a10_wait_for_usermode(0x1000000);
+
+	arria10_finish_io(&mainpll_cfg, &perpll_cfg, pinmux);
+
+	arria10_ddr_calibration_sequence();
+
+	fdt = __dtb_socfpga_arria10_achilles_start + get_runtime_offset();
+
+	barebox_arm_entry(0x0, SZ_2G + SZ_1G, fdt);
 }
diff --git a/images/Makefile.socfpga b/images/Makefile.socfpga
index bba01a38b29f..a075b3670284 100644
--- a/images/Makefile.socfpga
+++ b/images/Makefile.socfpga
@@ -42,9 +42,13 @@ FILE_barebox-socfpga-de0_nano_soc.img = start_socfpga_de0_nano_soc.pblx
 socfpga-barebox-$(CONFIG_MACH_SOCFPGA_TERASIC_DE0_NANO_SOC) += barebox-socfpga-de0_nano_soc.img
 
 pblx-$(CONFIG_MACH_SOCFPGA_REFLEX_ACHILLES) += start_socfpga_achilles
-FILE_barebox-socfpga-achilles.img = start_socfpga_achilles.pblx.socfpgaimg
+FILE_barebox-socfpga-achilles.img = start_socfpga_achilles.socfpga-ocram-img
 socfpga-barebox-$(CONFIG_MACH_SOCFPGA_REFLEX_ACHILLES) += barebox-socfpga-achilles.img
 
+pblx-$(CONFIG_MACH_SOCFPGA_REFLEX_ACHILLES) += start_socfpga_achilles_bringup
+FILE_barebox-socfpga-achilles-bringup.img = start_socfpga_achilles_bringup.pblx
+socfpga-barebox-$(CONFIG_MACH_SOCFPGA_REFLEX_ACHILLES) += barebox-socfpga-achilles-bringup.img
+
 pblx-$(CONFIG_MACH_SOCFPGA_TERASIC_SOCKIT) += start_socfpga_sockit_xload
 FILE_barebox-socfpga-sockit-xload.img = start_socfpga_sockit_xload.pblx.socfpgaimg
 socfpga-xload-$(CONFIG_MACH_SOCFPGA_TERASIC_SOCKIT) += barebox-socfpga-sockit-xload.img
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
