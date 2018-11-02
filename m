Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gIb0B-0003nv-Lp
 for barebox@lists.infradead.org; Fri, 02 Nov 2018 15:04:51 +0000
Received: from unicorn.hi.pengutronix.de
 ([2001:67c:670:100:a61f:72ff:fe69:16d] helo=unicorn)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <str@pengutronix.de>) id 1gIazy-0000wA-38
 for barebox@lists.infradead.org; Fri, 02 Nov 2018 16:04:34 +0100
Received: from str by unicorn with local (Exim 4.89)
 (envelope-from <str@pengutronix.de>) id 1gIazx-0006No-Qo
 for barebox@lists.infradead.org; Fri, 02 Nov 2018 16:04:33 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Fri,  2 Nov 2018 16:04:22 +0100
Message-Id: <20181102150424.24400-3-s.trumtrar@pengutronix.de>
In-Reply-To: <20181102150424.24400-1-s.trumtrar@pengutronix.de>
References: <20181102150424.24400-1-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 3/5] ARM: socfgpa: de0-nano-soc: convert to lowlevel helpers
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 .../boards/terasic-de0-nano-soc/lowlevel.c    | 69 +------------------
 1 file changed, 3 insertions(+), 66 deletions(-)

diff --git a/arch/arm/boards/terasic-de0-nano-soc/lowlevel.c b/arch/arm/boards/terasic-de0-nano-soc/lowlevel.c
index dfb8271724bc..deac0e9cb289 100644
--- a/arch/arm/boards/terasic-de0-nano-soc/lowlevel.c
+++ b/arch/arm/boards/terasic-de0-nano-soc/lowlevel.c
@@ -1,76 +1,13 @@
-#include <common.h>
-#include <linux/sizes.h>
-#include <io.h>
-#include <asm/barebox-arm-head.h>
-#include <asm/barebox-arm.h>
-#include <mach/generic.h>
-#include <debug_ll.h>
-#include <asm/cache.h>
 #include "sdram_config.h"
-#include <mach/cyclone5-sdram-config.h>
 #include "pinmux_config.c"
 #include "pll_config.h"
-#include <mach/pll_config.h>
 #include "sequencer_defines.h"
 #include "sequencer_auto.h"
-#include <mach/cyclone5-sequencer.c>
 #include "sequencer_auto_inst_init.c"
 #include "sequencer_auto_ac_init.c"
 #include "iocsr_config_cyclone5.c"
 
-extern char __dtb_socfpga_cyclone5_de0_nano_soc_start[];
+#include <mach/lowlevel.h>
 
-ENTRY_FUNCTION(start_socfpga_de0_nano_soc, r0, r1, r2)
-{
-	void *fdt;
-
-	arm_cpu_lowlevel_init();
-
-	fdt = __dtb_socfpga_cyclone5_de0_nano_soc_start + get_runtime_offset();
-
-	barebox_arm_entry(0x0, SZ_1G, fdt);
-}
-
-static noinline void de0_nano_soc_entry(void)
-{
-	struct socfpga_io_config io_config;
-	int ret;
-
-	arm_early_mmu_cache_invalidate();
-
-	relocate_to_current_adr();
-	setup_c();
-
-	io_config.pinmux = sys_mgr_init_table;
-	io_config.num_pin = ARRAY_SIZE(sys_mgr_init_table);
-	io_config.iocsr_emac_mixed2 = iocsr_scan_chain0_table;
-	io_config.iocsr_mixed1_flash = iocsr_scan_chain1_table;
-	io_config.iocsr_general = iocsr_scan_chain2_table;
-	io_config.iocsr_ddr = iocsr_scan_chain3_table;
-
-	socfpga_lowlevel_init(&cm_default_cfg, &io_config);
-
-	puts_ll("lowlevel init done\n");
-	puts_ll("SDRAM setup...\n");
-
-	socfpga_sdram_mmr_init();
-
-	puts_ll("SDRAM calibration...\n");
-
-	ret = socfpga_mem_calibration();
-	if (!ret)
-		hang();
-
-	puts_ll("done\n");
-
-	barebox_arm_entry(0x0, SZ_1G, NULL);
-}
-
-ENTRY_FUNCTION(start_socfpga_de0_nano_soc_xload, r0, r1, r2)
-{
-	arm_cpu_lowlevel_init();
-
-	arm_setup_stack(0xffff0000 + SZ_64K - SZ_4K - 16);
-
-	de0_nano_soc_entry();
-}
+SOCFPGA_C5_ENTRY(start_socfpga_de0_nano_soc, socfpga_cyclone5_de0_nano_soc, SZ_1G);
+SOCFPGA_C5_XLOAD_ENTRY(start_socfpga_de0_nano_soc_xload, SZ_1G);
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
