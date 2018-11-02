Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gIb0B-0003nl-Ng
 for barebox@lists.infradead.org; Fri, 02 Nov 2018 15:04:51 +0000
Received: from unicorn.hi.pengutronix.de
 ([2001:67c:670:100:a61f:72ff:fe69:16d] helo=unicorn)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <str@pengutronix.de>) id 1gIazw-0000w4-HB
 for barebox@lists.infradead.org; Fri, 02 Nov 2018 16:04:32 +0100
Received: from str by unicorn with local (Exim 4.89)
 (envelope-from <str@pengutronix.de>) id 1gIazw-0006Nj-83
 for barebox@lists.infradead.org; Fri, 02 Nov 2018 16:04:32 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Fri,  2 Nov 2018 16:04:20 +0100
Message-Id: <20181102150424.24400-1-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 1/5] ARM: socfpga: add lowlevel header with common code
To: Barebox List <barebox@lists.infradead.org>

Apart from the RAM size, all cyclone5-based Socfpga boards use the
same lowlevel code. Instead of duplicating it for every board, move
it to mach-socfpga and provide a macro to use it in the boardspecific
code.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/mach-socfpga/include/mach/lowlevel.h | 80 +++++++++++++++++++
 1 file changed, 80 insertions(+)
 create mode 100644 arch/arm/mach-socfpga/include/mach/lowlevel.h

diff --git a/arch/arm/mach-socfpga/include/mach/lowlevel.h b/arch/arm/mach-socfpga/include/mach/lowlevel.h
new file mode 100644
index 000000000000..01463bb877ca
--- /dev/null
+++ b/arch/arm/mach-socfpga/include/mach/lowlevel.h
@@ -0,0 +1,80 @@
+#ifndef __MACH_SOCFPGA_LOWLEVEL_H
+#define __MACH_SOCFPGA_LOWLEVEL_H
+
+#include <common.h>
+#include <linux/sizes.h>
+#include <io.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+#include <mach/generic.h>
+#include <debug_ll.h>
+#include <asm/cache.h>
+#include <mach/cyclone5-sdram-config.h>
+#include <mach/pll_config.h>
+#include <mach/cyclone5-sequencer.c>
+
+static void __noreturn start_socfpga_c5_common(uint32_t size, void *fdt_blob)
+{
+	void *fdt;
+
+	arm_cpu_lowlevel_init();
+
+	fdt = fdt_blob + get_runtime_offset();
+
+	barebox_arm_entry(0x0, size, fdt);
+}
+
+#define SOCFPGA_C5_ENTRY(name, fdt_name, memory_size)			\
+	ENTRY_FUNCTION(name, r0, r1, r2)				\
+	{								\
+		extern char __dtb_##fdt_name##_start[];			\
+									\
+		start_socfpga_c5_common(memory_size, __dtb_##fdt_name##_start); \
+	}
+
+static noinline void start_socfpga_c5_xload_common(uint32_t size)
+{
+	struct socfpga_io_config io_config;
+	int ret;
+
+	arm_early_mmu_cache_invalidate();
+
+	relocate_to_current_adr();
+	setup_c();
+
+	io_config.pinmux = sys_mgr_init_table;
+	io_config.num_pin = ARRAY_SIZE(sys_mgr_init_table);
+	io_config.iocsr_emac_mixed2 = iocsr_scan_chain0_table;
+	io_config.iocsr_mixed1_flash = iocsr_scan_chain1_table;
+	io_config.iocsr_general = iocsr_scan_chain2_table;
+	io_config.iocsr_ddr = iocsr_scan_chain3_table;
+
+	socfpga_lowlevel_init(&cm_default_cfg, &io_config);
+
+	puts_ll("lowlevel init done\n");
+	puts_ll("SDRAM setup...\n");
+
+	socfpga_sdram_mmr_init();
+
+	puts_ll("SDRAM calibration...\n");
+
+	ret = socfpga_mem_calibration();
+	if (!ret)
+		hang();
+
+	puts_ll("done\n");
+
+	barebox_arm_entry(0x0, size, NULL);
+}
+
+#define SOCFPGA_C5_XLOAD_ENTRY(name, memory_size)				\
+	ENTRY_FUNCTION(name, r0, r1, r2)				\
+	{								\
+		arm_cpu_lowlevel_init();				\
+									\
+		arm_setup_stack(0xffff0000 + SZ_64K - SZ_4K - 16);	\
+									\
+		start_socfpga_c5_xload_common(memory_size);		\
+	}
+
+#endif
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
