Delivery-date: Fri, 08 Jul 2022 08:26:09 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o9hRG-00ABik-G9
	for lore@lore.pengutronix.de; Fri, 08 Jul 2022 08:26:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o9hRH-0005a0-Sq
	for lore@pengutronix.de; Fri, 08 Jul 2022 08:26:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=h/HPoBqBJtTNViXKGIQDOhDtrnz1l82D5DHPQO86eCA=; b=pGh2GCq23ok1cRAOEqMzXhX/dZ
	ebscEXMx2GBPyi+NVBLQgGnZzufPNfp2dbGsd1o7blo3V2vDSjMj/1AZLojO8qRqOJt+q3pIHJRJq
	IHHtOfndDa3pxL8Y79Shx7e0TJMYPsJAHWSu7FjUI2phAiCDnKhxsQ8ec57fcYQi+8J60wKx5araG
	z05oNBdtGXUFyS1I0hkDFSlJsGiAbLKNkRxQLmOBY6rEDW/+9qtoa/ovJj4pGTElAYpl5Zekq1sb4
	4G69u7A0EilQIa7/xy2xTs7rD/TpFcEySLTOlZpGJx+AxmsPuNdi0S+xVThGW5MYBO/N7K6sdDF5Z
	hduWCn4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9hPv-0020Ct-4B; Fri, 08 Jul 2022 06:24:43 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9hPg-00204o-Sq
	for barebox@lists.infradead.org; Fri, 08 Jul 2022 06:24:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <str@pengutronix.de>)
	id 1o9hPf-0005Ak-KL; Fri, 08 Jul 2022 08:24:27 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <str@pengutronix.de>)
	id 1o9hPb-0056Sh-AZ; Fri, 08 Jul 2022 08:24:26 +0200
Received: from str by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <str@pengutronix.de>)
	id 1o9hPd-002z9j-TX; Fri, 08 Jul 2022 08:24:25 +0200
From: Steffen Trumtrar <str@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Fri,  8 Jul 2022 08:24:10 +0200
Message-Id: <20220708062411.711639-4-str@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220708062411.711639-1-str@pengutronix.de>
References: <20220708062411.711639-1-str@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220707_232429_304877_2899FBFF 
X-CRM114-Status: GOOD (  20.59  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 4/5] ARM: socfpga: add support for Enclustra AA1
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Add support for the Arria10-based Mercury+ AA1 module from Enclustra.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
Changes in v2:
 - use __dtb_z
 - use ENTRY_FUNCTION_WITHSTACK
   - fold aa1_start() into now non-naked entry function
 - remove arm_early_mmu_cache_invalidate
 - fix alignment issues


 arch/arm/boards/Makefile                      |   1 +
 arch/arm/boards/enclustra-aa1/Makefile        |   4 +
 arch/arm/boards/enclustra-aa1/board.c         |  47 ++++++++
 arch/arm/boards/enclustra-aa1/lowlevel.c      | 113 ++++++++++++++++++
 .../enclustra-aa1/pinmux-config-arria10.c     | 104 ++++++++++++++++
 .../boards/enclustra-aa1/pll-config-arria10.c |  56 +++++++++
 arch/arm/dts/Makefile                         |   1 +
 arch/arm/dts/socfpga_arria10_mercury_aa1.dts  |  83 +++++++++++++
 arch/arm/mach-socfpga/Kconfig                 |   4 +
 images/Makefile.socfpga                       |  12 ++
 10 files changed, 425 insertions(+)
 create mode 100644 arch/arm/boards/enclustra-aa1/Makefile
 create mode 100644 arch/arm/boards/enclustra-aa1/board.c
 create mode 100644 arch/arm/boards/enclustra-aa1/lowlevel.c
 create mode 100644 arch/arm/boards/enclustra-aa1/pinmux-config-arria10.c
 create mode 100644 arch/arm/boards/enclustra-aa1/pll-config-arria10.c
 create mode 100644 arch/arm/dts/socfpga_arria10_mercury_aa1.dts

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index d303999614..9d700cfbda 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -134,6 +134,7 @@ obj-$(CONFIG_MACH_SCB9328)			+= scb9328/
 obj-$(CONFIG_MACH_SEEED_ODYSSEY)		+= seeed-odyssey/
 obj-$(CONFIG_MACH_SOCFPGA_ALTERA_SOCDK)		+= altera-socdk/
 obj-$(CONFIG_MACH_SOCFPGA_EBV_SOCRATES)		+= ebv-socrates/
+obj-$(CONFIG_MACH_SOCFPGA_ENCLUSTRA_AA1)	+= enclustra-aa1/
 obj-$(CONFIG_MACH_SOCFPGA_REFLEX_ACHILLES)	+= reflex-achilles/
 obj-$(CONFIG_MACH_SOCFPGA_TERASIC_DE0_NANO_SOC)	+= terasic-de0-nano-soc/
 obj-$(CONFIG_MACH_SOCFPGA_TERASIC_DE10_NANO)	+= terasic-de10-nano/
diff --git a/arch/arm/boards/enclustra-aa1/Makefile b/arch/arm/boards/enclustra-aa1/Makefile
new file mode 100644
index 0000000000..5678718188
--- /dev/null
+++ b/arch/arm/boards/enclustra-aa1/Makefile
@@ -0,0 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
+lwl-y += lowlevel.o
+obj-y += board.o
diff --git a/arch/arm/boards/enclustra-aa1/board.c b/arch/arm/boards/enclustra-aa1/board.c
new file mode 100644
index 0000000000..5b8e5a5c9f
--- /dev/null
+++ b/arch/arm/boards/enclustra-aa1/board.c
@@ -0,0 +1,47 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <common.h>
+#include <init.h>
+#include <io.h>
+#include <bbu.h>
+
+static int aa1_init(void)
+{
+	int pbl_index = 0;
+	uint32_t flag_barebox1 = 0;
+	uint32_t flag_barebox2 = 0;
+
+	if (!of_machine_is_compatible("enclustra,mercury-aa1"))
+		return 0;
+
+	pbl_index = readl(0xFFD06210);
+
+	pr_debug("Current barebox instance %d\n", pbl_index);
+
+	switch (pbl_index) {
+	case 0:
+		flag_barebox1 |= BBU_HANDLER_FLAG_DEFAULT;
+		break;
+	case 1:
+		flag_barebox2 |= BBU_HANDLER_FLAG_DEFAULT;
+		break;
+	};
+
+	bbu_register_std_file_update("emmc-barebox1-xload", flag_barebox1,
+					"/dev/mmc0.barebox1-xload",
+					filetype_socfpga_xload);
+
+	bbu_register_std_file_update("emmc-barebox1", 0,
+					"/dev/mmc0.barebox1",
+					filetype_arm_barebox);
+
+	bbu_register_std_file_update("emmc-barebox2-xload", flag_barebox2,
+					"/dev/mmc0.barebox2-xload",
+					filetype_socfpga_xload);
+
+	bbu_register_std_file_update("emmc-barebox2", 0,
+					"/dev/mmc0.barebox2",
+					filetype_arm_barebox);
+	return 0;
+}
+postcore_initcall(aa1_init);
diff --git a/arch/arm/boards/enclustra-aa1/lowlevel.c b/arch/arm/boards/enclustra-aa1/lowlevel.c
new file mode 100644
index 0000000000..5838b5337e
--- /dev/null
+++ b/arch/arm/boards/enclustra-aa1/lowlevel.c
@@ -0,0 +1,113 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <common.h>
+#include <linux/sizes.h>
+#include <io.h>
+#include <memory.h>
+#include <asm/barebox-arm.h>
+#include <asm/cache.h>
+#include <asm/sections.h>
+#include <asm/unaligned.h>
+#include <debug_ll.h>
+#include <pbl.h>
+#include <mach/arria10-sdram.h>
+#include <mach/arria10-regs.h>
+#include <mach/arria10-reset-manager.h>
+#include <mach/arria10-clock-manager.h>
+#include <mach/arria10-pinmux.h>
+#include <mach/arria10-fpga.h>
+#include "pll-config-arria10.c"
+#include "pinmux-config-arria10.c"
+#include <mach/generic.h>
+
+#define BAREBOX_PART 0
+#define BITSTREAM_PART 1
+#define BAREBOX1_OFFSET    SZ_1M
+#define BAREBOX2_OFFSET    BAREBOX1_OFFSET + SZ_512K
+#define BAREBOX3_OFFSET    BAREBOX2_OFFSET + SZ_512K
+#define BAREBOX4_OFFSET    BAREBOX3_OFFSET + SZ_512K
+#define BITSTREAM1_OFFSET  0x0
+#define BITSTREAM2_OFFSET  BITSTREAM1_OFFSET + SZ_32M
+
+extern char __dtb_z_socfpga_arria10_mercury_aa1_start[];
+
+#define ARRIA10_STACKTOP	ARRIA10_OCRAM_ADDR + SZ_256K
+
+ENTRY_FUNCTION_WITHSTACK(start_socfpga_aa1_xload, ARRIA10_STACKTOP, r0, r1, r2)
+{
+	int pbl_index = 0;
+	int barebox = 0;
+	int bitstream = 0;
+
+	arm_cpu_lowlevel_init();
+
+	relocate_to_current_adr();
+
+	setup_c();
+
+	arria10_init(&mainpll_cfg, &perpll_cfg, pinmux);
+
+	arria10_prepare_mmc(BAREBOX_PART, BITSTREAM_PART);
+
+	pbl_index = readl(ARRIA10_SYSMGR_ROM_INITSWLASTLD);
+
+	/* Allow booting from both PBL0 and PBL1 to allow atomic updates.
+	 * Bitstreams redundant too and expected to reside in the second
+	 * partition.
+	 * There is a fixed relation between the PBL/barebox instance and its
+	 * bitstream location (offset) that requires to update them together */
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
+	case 3:
+		/* Left blank for future extension */
+		break;
+	}
+
+	arria10_load_fpga(bitstream, SZ_32M);
+
+	arria10_finish_io(&mainpll_cfg, &perpll_cfg, pinmux);
+
+	arria10_ddr_calibration_sequence();
+
+	arria10_start_image(barebox);
+}
+
+ENTRY_FUNCTION(start_socfpga_aa1, r0, r1, r2)
+{
+	void *fdt;
+
+	fdt = __dtb_z_socfpga_arria10_mercury_aa1_start + get_runtime_offset();
+
+	barebox_arm_entry(0x0, SZ_2G, fdt);
+}
+
+ENTRY_FUNCTION_WITHSTACK(start_socfpga_aa1_bringup, ARRIA10_STACKTOP, r0, r1, r2)
+{
+	void *fdt;
+
+	arm_cpu_lowlevel_init();
+
+	relocate_to_current_adr();
+	setup_c();
+
+	arria10_init(&mainpll_cfg, &perpll_cfg, pinmux);
+
+	/* wait for fpga_usermode */
+	a10_wait_for_usermode(0x1000000);
+
+	arria10_finish_io(&mainpll_cfg, &perpll_cfg, pinmux);
+
+	arria10_ddr_calibration_sequence();
+
+	fdt = __dtb_z_socfpga_arria10_mercury_aa1_start + get_runtime_offset();
+
+	barebox_arm_entry(0x0, SZ_2G, fdt);
+}
diff --git a/arch/arm/boards/enclustra-aa1/pinmux-config-arria10.c b/arch/arm/boards/enclustra-aa1/pinmux-config-arria10.c
new file mode 100644
index 0000000000..3e250dbf6f
--- /dev/null
+++ b/arch/arm/boards/enclustra-aa1/pinmux-config-arria10.c
@@ -0,0 +1,104 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <mach/arria10-pinmux.h>
+
+static uint32_t pinmux[] = {
+[arria10_pinmux_shared_io_q3_7]	   = 0,
+[arria10_pinmux_shared_io_q3_6]	   = 15,
+[arria10_pinmux_shared_io_q3_5]	   = 15,
+[arria10_pinmux_shared_io_q3_4]	   = 15,
+[arria10_pinmux_shared_io_q3_3]	   = 15,
+[arria10_pinmux_shared_io_q3_2]	   = 15,
+[arria10_pinmux_shared_io_q3_1]	   = 15,
+[arria10_pinmux_shared_io_q2_12]   = 4,
+[arria10_pinmux_shared_io_q2_11]   = 4,
+[arria10_pinmux_shared_io_q2_10]   = 4,
+[arria10_pinmux_shared_io_q2_8]	   = 4,
+[arria10_pinmux_shared_io_q2_9]	   = 4,
+[arria10_pinmux_shared_io_q2_7]	   = 4,
+[arria10_pinmux_shared_io_q2_6]	   = 4,
+[arria10_pinmux_shared_io_q2_5]	   = 4,
+[arria10_pinmux_shared_io_q2_4]	   = 4,
+[arria10_pinmux_shared_io_q2_3]	   = 4,
+[arria10_pinmux_shared_io_q2_2]	   = 4,
+[arria10_pinmux_shared_io_q2_1]	   = 4,
+[arria10_pinmux_shared_io_q1_12]   = 8,
+[arria10_pinmux_shared_io_q1_10]   = 8,
+[arria10_pinmux_shared_io_q1_11]   = 8,
+[arria10_pinmux_shared_io_q1_9]	   = 8,
+[arria10_pinmux_shared_io_q1_8]	   = 8,
+[arria10_pinmux_shared_io_q1_7]	   = 8,
+[arria10_pinmux_shared_io_q1_6]	   = 8,
+[arria10_pinmux_shared_io_q1_5]	   = 8,
+[arria10_pinmux_shared_io_q1_4]	   = 8,
+[arria10_pinmux_shared_io_q1_3]	   = 8,
+[arria10_pinmux_shared_io_q1_2]	   = 8,
+[arria10_pinmux_shared_io_q1_1]	   = 8,
+[arria10_pinmux_shared_io_q4_12]   = 15,
+[arria10_pinmux_shared_io_q4_11]   = 15,
+[arria10_pinmux_shared_io_q4_10]   = 3,
+[arria10_pinmux_shared_io_q4_9]	   = 3,
+[arria10_pinmux_shared_io_q4_8]	   = 3,
+[arria10_pinmux_shared_io_q4_7]	   = 3,
+[arria10_pinmux_shared_io_q4_6]	   = 10,
+[arria10_pinmux_shared_io_q4_4]	   = 10,
+[arria10_pinmux_shared_io_q4_5]	   = 10,
+[arria10_pinmux_shared_io_q4_3]	   = 10,
+[arria10_pinmux_shared_io_q4_2]	   = 10,
+[arria10_pinmux_shared_io_q4_1]	   = 10,
+[arria10_pinmux_shared_io_q3_12]   = 1,
+[arria10_pinmux_shared_io_q3_11]   = 1,
+[arria10_pinmux_shared_io_q3_10]   = 15,
+[arria10_pinmux_shared_io_q3_9]	   = 15,
+[arria10_pinmux_shared_io_q3_8]	   = 0,
+[arria10_pinmux_dedicated_io_7]	   = 8,
+[arria10_pinmux_dedicated_io_8]	   = 8,
+[arria10_pinmux_dedicated_io_9]	   = 8,
+[arria10_pinmux_dedicated_io_10]   = 15,
+[arria10_pinmux_dedicated_io_11]   = 15,
+[arria10_pinmux_dedicated_io_12]   = 8,
+[arria10_pinmux_dedicated_io_13]   = 8,
+[arria10_pinmux_dedicated_io_14]   = 8,
+[arria10_pinmux_dedicated_io_15]   = 8,
+[arria10_pinmux_dedicated_io_16]   = 13,
+[arria10_pinmux_dedicated_io_17]   = 13,
+[arria10_pinmux_dedicated_io_4]	   = 8,
+[arria10_pinmux_dedicated_io_5]	   = 8,
+[arria10_pinmux_dedicated_io_6]	   = 8,
+[arria10_pincfg_dedicated_io_bank] = 0x101,
+[arria10_pincfg_dedicated_io_1]	   = 0xb080a,
+[arria10_pincfg_dedicated_io_2]	   = 0xb080a,
+[arria10_pincfg_dedicated_io_3]	   = 0xb080a,
+[arria10_pincfg_dedicated_io_4]	   = 0xa282a,
+[arria10_pincfg_dedicated_io_5]	   = 0xa282a,
+[arria10_pincfg_dedicated_io_6]	   = 0x8282a,
+[arria10_pincfg_dedicated_io_7]	   = 0xa282a,
+[arria10_pincfg_dedicated_io_8]	   = 0xa282a,
+[arria10_pincfg_dedicated_io_9]	   = 0xa282a,
+[arria10_pincfg_dedicated_io_10]   = 0xa280a,
+[arria10_pincfg_dedicated_io_11]   = 0xa280a,
+[arria10_pincfg_dedicated_io_12]   = 0xa280a,
+[arria10_pincfg_dedicated_io_13]   = 0xa280a,
+[arria10_pincfg_dedicated_io_14]   = 0xa280a,
+[arria10_pincfg_dedicated_io_15]   = 0xa280a,
+[arria10_pincfg_dedicated_io_16]   = 0x8282a,
+[arria10_pincfg_dedicated_io_17]   = 0xa280a,
+[arria10_pinmux_rgmii0_usefpga]	   = 0,
+[arria10_pinmux_rgmii1_usefpga]	   = 0,
+[arria10_pinmux_rgmii2_usefpga]	   = 0,
+[arria10_pinmux_nand_usefpga]	   = 0,
+[arria10_pinmux_qspi_usefpga]	   = 0,
+[arria10_pinmux_sdmmc_usefpga]	   = 0,
+[arria10_pinmux_spim0_usefpga]	   = 0,
+[arria10_pinmux_spim1_usefpga]	   = 0,
+[arria10_pinmux_spis0_usefpga]	   = 0,
+[arria10_pinmux_spis1_usefpga]	   = 0,
+[arria10_pinmux_uart0_usefpga]	   = 0,
+[arria10_pinmux_uart1_usefpga]	   = 0,
+[arria10_pinmux_i2c0_usefpga]	   = 0,
+[arria10_pinmux_i2c1_usefpga]	   = 0,
+[arria10_pinmux_i2cemac0_usefpga]  = 0,
+[arria10_pinmux_i2cemac1_usefpga]  = 0,
+[arria10_pinmux_i2cemac2_usefpga]  = 0,
+};
+
diff --git a/arch/arm/boards/enclustra-aa1/pll-config-arria10.c b/arch/arm/boards/enclustra-aa1/pll-config-arria10.c
new file mode 100644
index 0000000000..41aad354bc
--- /dev/null
+++ b/arch/arm/boards/enclustra-aa1/pll-config-arria10.c
@@ -0,0 +1,56 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <mach/arria10-clock-manager.h>
+
+static struct arria10_mainpll_cfg mainpll_cfg = {
+	.cntr15clk_cnt	   = 900,
+	.cntr2clk_cnt	   = 900,
+	.cntr3clk_cnt	   = 900,
+	.cntr4clk_cnt	   = 900,
+	.cntr5clk_cnt	   = 900,
+	.cntr6clk_cnt	   = 7,
+	.cntr7clk_cnt	   = 15,
+	.cntr7clk_src	   = 0,
+	.cntr8clk_cnt	   = 7,
+	.cntr9clk_cnt	   = 900,
+	.cntr9clk_src	   = 0,
+	.mpuclk_cnt	   = 0,
+	.mpuclk_src	   = 0,
+	.nocclk_cnt	   = 0,
+	.nocclk_src	   = 0,
+	.nocdiv_csatclk	   = 0,
+	.nocdiv_cspdbgclk  = 1,
+	.nocdiv_cstraceclk = 0,
+	.nocdiv_l4mainclk  = 0,
+	.nocdiv_l4mpclk	   = 1,
+	.nocdiv_l4spclk	   = 2,
+	.vco0_psrc	   = 0,
+	.vco1_denom	   = 32,
+	.vco1_numer	   = 1584,
+	.mpuclk		   = 0x3840001,
+	.nocclk		   = 0x3840007,
+};
+
+static struct arria10_perpll_cfg perpll_cfg = {
+	.cntr2clk_cnt	   = 5,
+	.cntr2clk_src	   = 1,
+	.cntr3clk_cnt	   = 900,
+	.cntr3clk_src	   = 1,
+	.cntr4clk_cnt	   = 14,
+	.cntr4clk_src	   = 1,
+	.cntr5clk_cnt	   = 374,
+	.cntr5clk_src	   = 1,
+	.cntr6clk_cnt	   = 900,
+	.cntr6clk_src	   = 0,
+	.cntr7clk_cnt	   = 900,
+	.cntr8clk_cnt	   = 900,
+	.cntr8clk_src	   = 0,
+	.cntr9clk_cnt	   = 900,
+	.emacctl_emac0sel  = 0,
+	.emacctl_emac1sel  = 0,
+	.emacctl_emac2sel  = 0,
+	.gpiodiv_gpiodbclk = 32000,
+	.vco0_psrc	   = 0,
+	.vco1_denom	   = 32,
+	.vco1_numer	   = 1485,
+};
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 46e5e67672..3def526621 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -117,6 +117,7 @@ lwl-$(CONFIG_MACH_SABRESD) += imx6q-sabresd.dtb.o imx6qp-sabresd.dtb.o
 lwl-$(CONFIG_MACH_FREESCALE_IMX6SX_SABRESDB) += imx6sx-sdb.dtb.o
 lwl-$(CONFIG_MACH_SOCFPGA_ALTERA_SOCDK) += socfpga_cyclone5_socdk.dtb.o
 lwl-$(CONFIG_MACH_SOCFPGA_EBV_SOCRATES) += socfpga_cyclone5_socrates.dtb.o
+lwl-$(CONFIG_MACH_SOCFPGA_ENCLUSTRA_AA1) += socfpga_arria10_mercury_aa1.dtb.o
 lwl-$(CONFIG_MACH_SOCFPGA_REFLEX_ACHILLES) += socfpga_arria10_achilles.dtb.o
 lwl-$(CONFIG_MACH_SOCFPGA_TERASIC_DE0_NANO_SOC) += socfpga_cyclone5_de0_nano_soc.dtb.o
 lwl-$(CONFIG_MACH_SOCFPGA_TERASIC_DE10_NANO) += socfpga_cyclone5_de10_nano.dtb.o
diff --git a/arch/arm/dts/socfpga_arria10_mercury_aa1.dts b/arch/arm/dts/socfpga_arria10_mercury_aa1.dts
new file mode 100644
index 0000000000..ef3afc9b98
--- /dev/null
+++ b/arch/arm/dts/socfpga_arria10_mercury_aa1.dts
@@ -0,0 +1,83 @@
+// SPDX-License-Identifier: GPL-2.0
+#include <arm/socfpga_arria10_mercury_aa1.dts>
+
+/ {
+	aliases {
+		mmc0 = &mmc;
+	};
+
+	chosen {
+		stdout-path = &uart1;
+
+		environment {
+			compatible = "barebox,environment";
+			device-path = &environment_mmc;
+		};
+	};
+};
+
+// provide reset-names until fixed in the upstream dts. Binding prescribes this property.
+&{/soc/dwmmc0@ff808000} {
+	reset-names = "reset";
+};
+
+// This clock is unused, but fixed-clocks need to have a clock-frequency set
+&{/soc/clkmgr@ffd04000/clocks/cb_intosc_hs_div2_clk} {
+	clock-frequency = <0>;
+};
+
+&{/soc/clkmgr@ffd04000/clocks/cb_intosc_ls_clk} {
+	clock-frequency = <60000000>;
+};
+
+&{/soc/clkmgr@ffd04000/clocks/f2s_free_clk} {
+	clock-frequency = <200000000>;
+};
+
+&mmc {
+	bus-width = <8>;
+	non-removable;
+	disable-wp;
+	no-sd;
+
+	partitions {
+		compatible = "fixed-partitions";
+		#size-cells = <1>;
+		#address-cells = <1>;
+
+		barebox1_xload: partition@100000 {
+			label = "barebox1-xload";
+			reg = <0x100000 0x40000>;
+		};
+
+		barebox2_xload: partition@140000 {
+			label = "barebox2-xload";
+			reg = <0x140000 0x40000>;
+		};
+
+		barebox1: partition@200000 {
+			label = "barebox1";
+			reg = <0x200000 0x80000>;
+		};
+
+		barebox2: partition@280000 {
+			label = "barebox2";
+			reg = <0x280000 0x80000>;
+		};
+
+		environment_mmc: partition@300000 {
+			label = "environment";
+			reg = <0x300000 0x8000>;
+		};
+
+		bitstream1: partition@700000 {
+			label = "bitstream1";
+			reg = <0x700000 0x2000000>;
+		};
+
+		bitstream2: partition@2700000 {
+			label = "bitstream2";
+			reg = <0x2700000 0x2000000>;
+		};
+	};
+};
diff --git a/arch/arm/mach-socfpga/Kconfig b/arch/arm/mach-socfpga/Kconfig
index bdd2a2cfbf..b23a41d3f9 100644
--- a/arch/arm/mach-socfpga/Kconfig
+++ b/arch/arm/mach-socfpga/Kconfig
@@ -37,6 +37,10 @@ config MACH_SOCFPGA_EBV_SOCRATES
 	select ARCH_SOCFPGA_CYCLONE5
 	bool "EBV Socrates"
 
+config MACH_SOCFPGA_ENCLUSTRA_AA1
+	select ARCH_SOCFPGA_ARRIA10
+	bool "Enclustra AA1"
+
 config MACH_SOCFPGA_REFLEX_ACHILLES
 	select ARCH_SOCFPGA_ARRIA10
 	bool "Reflex Achilles"
diff --git a/images/Makefile.socfpga b/images/Makefile.socfpga
index 90e3c066dc..7f95bed032 100644
--- a/images/Makefile.socfpga
+++ b/images/Makefile.socfpga
@@ -39,6 +39,18 @@ pblb-$(CONFIG_MACH_SOCFPGA_TERASIC_DE10_NANO) += start_socfpga_de10_nano
 FILE_barebox-socfpga-de10_nano.img = start_socfpga_de10_nano.pblb
 socfpga-barebox-$(CONFIG_MACH_SOCFPGA_TERASIC_DE10_NANO) += barebox-socfpga-de10_nano.img
 
+pblb-$(CONFIG_MACH_SOCFPGA_ENCLUSTRA_AA1) += start_socfpga_aa1_xload
+FILE_barebox-socfpga-aa1-xload.img = start_socfpga_aa1_xload.pblb.socfpgaimg
+socfpga-barebox-$(CONFIG_MACH_SOCFPGA_ENCLUSTRA_AA1) += barebox-socfpga-aa1-xload.img
+
+pblb-$(CONFIG_MACH_SOCFPGA_ENCLUSTRA_AA1) += start_socfpga_aa1
+FILE_barebox-socfpga-aa1.img = start_socfpga_aa1.pblb
+socfpga-barebox-$(CONFIG_MACH_SOCFPGA_ENCLUSTRA_AA1) += barebox-socfpga-aa1.img
+
+pblb-$(CONFIG_MACH_SOCFPGA_ENCLUSTRA_AA1) += start_socfpga_aa1_bringup
+FILE_barebox-socfpga-aa1-bringup.img = start_socfpga_aa1_bringup.pblb
+socfpga-barebox-$(CONFIG_MACH_SOCFPGA_ENCLUSTRA_AA1) += barebox-socfpga-aa1-bringup.img
+
 pblb-$(CONFIG_MACH_SOCFPGA_REFLEX_ACHILLES) += start_socfpga_achilles_xload
 FILE_barebox-socfpga-achilles-xload.img = start_socfpga_achilles_xload.pblb.socfpgaimg
 socfpga-barebox-$(CONFIG_MACH_SOCFPGA_REFLEX_ACHILLES) += barebox-socfpga-achilles-xload.img
-- 
2.30.2



