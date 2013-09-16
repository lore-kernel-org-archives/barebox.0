Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VLUU8-0005Ox-8j
 for barebox@lists.infradead.org; Mon, 16 Sep 2013 08:49:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 16 Sep 2013 10:48:18 +0200
Message-Id: <1379321300-8085-10-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1379321300-8085-1-git-send-email-s.hauer@pengutronix.de>
References: <1379321300-8085-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/11] ARM: SoCFPGA: Add Terasic SoCkit board support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/Makefile                           |   1 +
 arch/arm/boards/terasic-sockit/Makefile            |   2 +
 arch/arm/boards/terasic-sockit/board.c             |  37 ++++
 arch/arm/boards/terasic-sockit/config.h            |   1 +
 arch/arm/boards/terasic-sockit/lowlevel.c          |  99 ++++++++++
 arch/arm/boards/terasic-sockit/pinmux_config.c     | 211 +++++++++++++++++++++
 arch/arm/boards/terasic-sockit/pll_config.h        |  98 ++++++++++
 arch/arm/boards/terasic-sockit/sdram_config.h      |  69 +++++++
 arch/arm/boards/terasic-sockit/sequencer_auto.h    | 173 +++++++++++++++++
 .../boards/terasic-sockit/sequencer_auto_ac_init.c |  40 ++++
 .../terasic-sockit/sequencer_auto_inst_init.c      | 134 +++++++++++++
 arch/arm/boards/terasic-sockit/sequencer_defines.h | 118 ++++++++++++
 arch/arm/dts/Makefile                              |   2 +
 arch/arm/dts/socfpga_cyclone5_sockit.dts           | 121 ++++++++++++
 arch/arm/mach-socfpga/Kconfig                      |   4 +
 images/Makefile.socfpga                            |   7 +
 16 files changed, 1117 insertions(+)
 create mode 100644 arch/arm/boards/terasic-sockit/Makefile
 create mode 100644 arch/arm/boards/terasic-sockit/board.c
 create mode 100644 arch/arm/boards/terasic-sockit/config.h
 create mode 100644 arch/arm/boards/terasic-sockit/lowlevel.c
 create mode 100644 arch/arm/boards/terasic-sockit/pinmux_config.c
 create mode 100644 arch/arm/boards/terasic-sockit/pll_config.h
 create mode 100644 arch/arm/boards/terasic-sockit/sdram_config.h
 create mode 100644 arch/arm/boards/terasic-sockit/sequencer_auto.h
 create mode 100644 arch/arm/boards/terasic-sockit/sequencer_auto_ac_init.c
 create mode 100644 arch/arm/boards/terasic-sockit/sequencer_auto_inst_init.c
 create mode 100644 arch/arm/boards/terasic-sockit/sequencer_defines.h
 create mode 100644 arch/arm/dts/socfpga_cyclone5_sockit.dts

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index 38ef512..a9bc15f 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -75,6 +75,7 @@ obj-$(CONFIG_MACH_SABRELITE)			+= freescale-mx6-sabrelite/
 obj-$(CONFIG_MACH_SABRESD)			+= freescale-mx6-sabresd/
 obj-$(CONFIG_MACH_SAMA5D3XEK)			+= sama5d3xek/
 obj-$(CONFIG_MACH_SCB9328)			+= scb9328/
+obj-$(CONFIG_MACH_SOCFPGA_TERASIC_SOCKIT)	+= terasic-sockit/
 obj-$(CONFIG_MACH_TNY_A9260)			+= tny-a926x/
 obj-$(CONFIG_MACH_TNY_A9263)			+= tny-a926x/
 obj-$(CONFIG_MACH_TNY_A9G20)			+= tny-a926x/
diff --git a/arch/arm/boards/terasic-sockit/Makefile b/arch/arm/boards/terasic-sockit/Makefile
new file mode 100644
index 0000000..8c927fe
--- /dev/null
+++ b/arch/arm/boards/terasic-sockit/Makefile
@@ -0,0 +1,2 @@
+obj-y += lowlevel.o board.o
+pbl-y += lowlevel.o
diff --git a/arch/arm/boards/terasic-sockit/board.c b/arch/arm/boards/terasic-sockit/board.c
new file mode 100644
index 0000000..fdff76f
--- /dev/null
+++ b/arch/arm/boards/terasic-sockit/board.c
@@ -0,0 +1,37 @@
+#include <common.h>
+#include <types.h>
+#include <driver.h>
+#include <init.h>
+#include <asm/armlinux.h>
+#include <linux/micrel_phy.h>
+#include <linux/phy.h>
+#include <sizes.h>
+#include <fcntl.h>
+#include <fs.h>
+#include <mach/socfpga-regs.h>
+
+static int phy_fixup(struct phy_device *dev)
+{
+	/* min rx data delay */
+	phy_write(dev, 0x0b, 0x8105);
+	phy_write(dev, 0x0c, 0x0000);
+
+	/* max rx/tx clock delay, min rx/tx control delay */
+	phy_write(dev, 0x0b, 0x8104);
+	phy_write(dev, 0x0c, 0xa0d0);
+	phy_write(dev, 0x0b, 0x104);
+
+	return 0;
+}
+
+static int socfpga_console_init(void)
+{
+	if (!of_machine_is_compatible("terasic,sockit"))
+		return 0;
+
+	if (IS_ENABLED(CONFIG_PHYLIB))
+		phy_register_fixup_for_uid(PHY_ID_KSZ9021, MICREL_PHY_ID_MASK, phy_fixup);
+
+	return 0;
+}
+console_initcall(socfpga_console_init);
diff --git a/arch/arm/boards/terasic-sockit/config.h b/arch/arm/boards/terasic-sockit/config.h
new file mode 100644
index 0000000..da84fa5
--- /dev/null
+++ b/arch/arm/boards/terasic-sockit/config.h
@@ -0,0 +1 @@
+/* nothing */
diff --git a/arch/arm/boards/terasic-sockit/lowlevel.c b/arch/arm/boards/terasic-sockit/lowlevel.c
new file mode 100644
index 0000000..8a1e0ce
--- /dev/null
+++ b/arch/arm/boards/terasic-sockit/lowlevel.c
@@ -0,0 +1,99 @@
+#include <common.h>
+#include <sizes.h>
+#include <io.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+#include <mach/generic.h>
+#include <debug_ll.h>
+#include <asm/cache.h>
+#include "sdram_config.h"
+#include <mach/sdram_config.h>
+#include "pinmux_config.c"
+#include "pll_config.h"
+#include <mach/pll_config.h>
+#include "sequencer_defines.h"
+#include "sequencer_auto.h"
+#include <mach/sequencer.c>
+#include "sequencer_auto_inst_init.c"
+#include "sequencer_auto_ac_init.c"
+
+static inline void ledon(int led)
+{
+	u32 val;
+
+	val = readl(0xFF709000);
+	val |= 1 << (led + 24);
+	writel(val, 0xFF709000);
+
+	val = readl(0xFF709004);
+	val |= 1 << (led + 24);
+	writel(val, 0xFF709004);
+}
+
+static inline void ledoff(int led)
+{
+	u32 val;
+
+	val = readl(0xFF709000);
+	val &= ~(1 << (led + 24));
+	writel(val, 0xFF709000);
+
+	val = readl(0xFF709004);
+	val &= ~(1 << (led + 24));
+	writel(val, 0xFF709004);
+}
+
+extern char __dtb_socfpga_cyclone5_sockit_start[];
+
+ENTRY_FUNCTION(start_socfpga_sockit)(void)
+{
+	uint32_t fdt;
+
+	__barebox_arm_head();
+
+	arm_cpu_lowlevel_init();
+
+	fdt = (uint32_t)__dtb_socfpga_cyclone5_sockit_start - get_runtime_offset();
+
+	barebox_arm_entry(0x0, SZ_1G, fdt);
+}
+
+static noinline void sockit_entry(void)
+{
+	int ret;
+
+	arm_early_mmu_cache_invalidate();
+
+	relocate_to_current_adr();
+	setup_c();
+
+	socfpga_lowlevel_init(&cm_default_cfg,
+			sys_mgr_init_table, ARRAY_SIZE(sys_mgr_init_table));
+
+	puts_ll("lowlevel init done\n");
+	puts_ll("SDRAM setup...\n");
+
+	socfpga_sdram_mmr_init();
+
+	puts_ll("SDRAM calibration...\n");
+
+	ret = socfpga_sdram_calibration(inst_rom_init, inst_rom_init_size,
+				ac_rom_init, ac_rom_init_size);
+	if (ret)
+		hang();
+
+	puts_ll("done\n");
+
+	barebox_arm_entry(0x0, SZ_1G, 0);
+}
+
+ENTRY_FUNCTION(start_socfpga_sockit_xload)(void)
+{
+	__barebox_arm_head();
+
+	arm_cpu_lowlevel_init();
+
+	arm_setup_stack(0xffff0000 + SZ_64K - SZ_4K - 16);
+
+	sockit_entry();
+}
diff --git a/arch/arm/boards/terasic-sockit/pinmux_config.c b/arch/arm/boards/terasic-sockit/pinmux_config.c
new file mode 100644
index 0000000..554fbd8
--- /dev/null
+++ b/arch/arm/boards/terasic-sockit/pinmux_config.c
@@ -0,0 +1,211 @@
+#include <common.h>
+
+unsigned long sys_mgr_init_table[] = {
+	0, /* EMACIO0 */
+	2, /* EMACIO1 */
+	2, /* EMACIO2 */
+	2, /* EMACIO3 */
+	2, /* EMACIO4 */
+	2, /* EMACIO5 */
+	2, /* EMACIO6 */
+	2, /* EMACIO7 */
+	2, /* EMACIO8 */
+	0, /* EMACIO9 */
+	2, /* EMACIO10 */
+	2, /* EMACIO11 */
+	2, /* EMACIO12 */
+	2, /* EMACIO13 */
+	0, /* EMACIO14 */
+	0, /* EMACIO15 */
+	0, /* EMACIO16 */
+	0, /* EMACIO17 */
+	0, /* EMACIO18 */
+	0, /* EMACIO19 */
+	3, /* FLASHIO0 */
+	0, /* FLASHIO1 */
+	3, /* FLASHIO2 */
+	3, /* FLASHIO3 */
+	0, /* FLASHIO4 */
+	0, /* FLASHIO5 */
+	0, /* FLASHIO6 */
+	0, /* FLASHIO7 */
+	0, /* FLASHIO8 */
+	3, /* FLASHIO9 */
+	3, /* FLASHIO10 */
+	3, /* FLASHIO11 */
+	0, /* GENERALIO0 */
+	1, /* GENERALIO1 */
+	1, /* GENERALIO2 */
+	1, /* GENERALIO3 */
+	1, /* GENERALIO4 */
+	0, /* GENERALIO5 */
+	0, /* GENERALIO6 */
+	0, /* GENERALIO7 */
+	0, /* GENERALIO8 */
+	3, /* GENERALIO9 */
+	3, /* GENERALIO10 */
+	3, /* GENERALIO11 */
+	3, /* GENERALIO12 */
+	0, /* GENERALIO13 */
+	0, /* GENERALIO14 */
+	1, /* GENERALIO15 */
+	1, /* GENERALIO16 */
+	1, /* GENERALIO17 */
+	1, /* GENERALIO18 */
+	0, /* GENERALIO19 */
+	0, /* GENERALIO20 */
+	0, /* GENERALIO21 */
+	0, /* GENERALIO22 */
+	0, /* GENERALIO23 */
+	0, /* GENERALIO24 */
+	0, /* GENERALIO25 */
+	0, /* GENERALIO26 */
+	0, /* GENERALIO27 */
+	0, /* GENERALIO28 */
+	0, /* GENERALIO29 */
+	0, /* GENERALIO30 */
+	0, /* GENERALIO31 */
+	2, /* MIXED1IO0 */
+	2, /* MIXED1IO1 */
+	2, /* MIXED1IO2 */
+	2, /* MIXED1IO3 */
+	2, /* MIXED1IO4 */
+	2, /* MIXED1IO5 */
+	2, /* MIXED1IO6 */
+	2, /* MIXED1IO7 */
+	2, /* MIXED1IO8 */
+	2, /* MIXED1IO9 */
+	2, /* MIXED1IO10 */
+	2, /* MIXED1IO11 */
+	2, /* MIXED1IO12 */
+	2, /* MIXED1IO13 */
+	0, /* MIXED1IO14 */
+	3, /* MIXED1IO15 */
+	3, /* MIXED1IO16 */
+	3, /* MIXED1IO17 */
+	3, /* MIXED1IO18 */
+	3, /* MIXED1IO19 */
+	3, /* MIXED1IO20 */
+	0, /* MIXED1IO21 */
+	0, /* MIXED2IO0 */
+	0, /* MIXED2IO1 */
+	0, /* MIXED2IO2 */
+	0, /* MIXED2IO3 */
+	0, /* MIXED2IO4 */
+	0, /* MIXED2IO5 */
+	0, /* MIXED2IO6 */
+	0, /* MIXED2IO7 */
+	0, /* GPLINMUX48 */
+	0, /* GPLINMUX49 */
+	0, /* GPLINMUX50 */
+	0, /* GPLINMUX51 */
+	0, /* GPLINMUX52 */
+	0, /* GPLINMUX53 */
+	0, /* GPLINMUX54 */
+	0, /* GPLINMUX55 */
+	0, /* GPLINMUX56 */
+	0, /* GPLINMUX57 */
+	0, /* GPLINMUX58 */
+	0, /* GPLINMUX59 */
+	0, /* GPLINMUX60 */
+	0, /* GPLINMUX61 */
+	0, /* GPLINMUX62 */
+	0, /* GPLINMUX63 */
+	0, /* GPLINMUX64 */
+	0, /* GPLINMUX65 */
+	0, /* GPLINMUX66 */
+	0, /* GPLINMUX67 */
+	0, /* GPLINMUX68 */
+	0, /* GPLINMUX69 */
+	0, /* GPLINMUX70 */
+	1, /* GPLMUX0 */
+	1, /* GPLMUX1 */
+	1, /* GPLMUX2 */
+	1, /* GPLMUX3 */
+	1, /* GPLMUX4 */
+	1, /* GPLMUX5 */
+	1, /* GPLMUX6 */
+	1, /* GPLMUX7 */
+	1, /* GPLMUX8 */
+	1, /* GPLMUX9 */
+	1, /* GPLMUX10 */
+	1, /* GPLMUX11 */
+	1, /* GPLMUX12 */
+	1, /* GPLMUX13 */
+	1, /* GPLMUX14 */
+	1, /* GPLMUX15 */
+	1, /* GPLMUX16 */
+	1, /* GPLMUX17 */
+	1, /* GPLMUX18 */
+	1, /* GPLMUX19 */
+	1, /* GPLMUX20 */
+	1, /* GPLMUX21 */
+	1, /* GPLMUX22 */
+	1, /* GPLMUX23 */
+	1, /* GPLMUX24 */
+	1, /* GPLMUX25 */
+	1, /* GPLMUX26 */
+	1, /* GPLMUX27 */
+	1, /* GPLMUX28 */
+	1, /* GPLMUX29 */
+	1, /* GPLMUX30 */
+	1, /* GPLMUX31 */
+	1, /* GPLMUX32 */
+	1, /* GPLMUX33 */
+	1, /* GPLMUX34 */
+	1, /* GPLMUX35 */
+	1, /* GPLMUX36 */
+	1, /* GPLMUX37 */
+	1, /* GPLMUX38 */
+	1, /* GPLMUX39 */
+	1, /* GPLMUX40 */
+	1, /* GPLMUX41 */
+	1, /* GPLMUX42 */
+	1, /* GPLMUX43 */
+	1, /* GPLMUX44 */
+	1, /* GPLMUX45 */
+	1, /* GPLMUX46 */
+	1, /* GPLMUX47 */
+	1, /* GPLMUX48 */
+	1, /* GPLMUX49 */
+	1, /* GPLMUX50 */
+	1, /* GPLMUX51 */
+	1, /* GPLMUX52 */
+	1, /* GPLMUX53 */
+	1, /* GPLMUX54 */
+	1, /* GPLMUX55 */
+	1, /* GPLMUX56 */
+	1, /* GPLMUX57 */
+	1, /* GPLMUX58 */
+	1, /* GPLMUX59 */
+	1, /* GPLMUX60 */
+	1, /* GPLMUX61 */
+	1, /* GPLMUX62 */
+	1, /* GPLMUX63 */
+	1, /* GPLMUX64 */
+	1, /* GPLMUX65 */
+	1, /* GPLMUX66 */
+	1, /* GPLMUX67 */
+	1, /* GPLMUX68 */
+	1, /* GPLMUX69 */
+	1, /* GPLMUX70 */
+	0, /* NANDUSEFPGA */
+	0, /* UART0USEFPGA */
+	0, /* RGMII1USEFPGA */
+	0, /* SPIS0USEFPGA */
+	0, /* CAN0USEFPGA */
+	0, /* I2C0USEFPGA */
+	0, /* SDMMCUSEFPGA */
+	0, /* QSPIUSEFPGA */
+	0, /* SPIS1USEFPGA */
+	0, /* RGMII0USEFPGA */
+	0, /* UART1USEFPGA */
+	0, /* CAN1USEFPGA */
+	0, /* USB1USEFPGA */
+	0, /* I2C3USEFPGA */
+	0, /* I2C2USEFPGA */
+	0, /* I2C1USEFPGA */
+	0, /* SPIM1USEFPGA */
+	0, /* USB0USEFPGA */
+	0 /* SPIM0USEFPGA */
+};
diff --git a/arch/arm/boards/terasic-sockit/pll_config.h b/arch/arm/boards/terasic-sockit/pll_config.h
new file mode 100644
index 0000000..732f241
--- /dev/null
+++ b/arch/arm/boards/terasic-sockit/pll_config.h
@@ -0,0 +1,98 @@
+
+#ifndef _PRELOADER_PLL_CONFIG_H_
+#define _PRELOADER_PLL_CONFIG_H_
+
+/* PLL configuration data */
+/* Main PLL */
+#define CONFIG_HPS_MAINPLLGRP_VCO_DENOM			(0)
+#define CONFIG_HPS_MAINPLLGRP_VCO_NUMER			(63)
+#define CONFIG_HPS_MAINPLLGRP_MPUCLK_CNT		(0)
+#define CONFIG_HPS_MAINPLLGRP_MAINCLK_CNT		(0)
+#define CONFIG_HPS_MAINPLLGRP_DBGATCLK_CNT		(0)
+#define CONFIG_HPS_MAINPLLGRP_MAINQSPICLK_CNT		(3)
+#define CONFIG_HPS_MAINPLLGRP_MAINNANDSDMMCCLK_CNT	(3)
+#define CONFIG_HPS_MAINPLLGRP_CFGS2FUSER0CLK_CNT	(15)
+#define CONFIG_HPS_MAINPLLGRP_MAINDIV_L3MPCLK		(1)
+#define CONFIG_HPS_MAINPLLGRP_MAINDIV_L3SPCLK		(1)
+#define CONFIG_HPS_MAINPLLGRP_MAINDIV_L4MPCLK		(1)
+#define CONFIG_HPS_MAINPLLGRP_MAINDIV_L4SPCLK		(1)
+#define CONFIG_HPS_MAINPLLGRP_DBGDIV_DBGATCLK		(0)
+#define CONFIG_HPS_MAINPLLGRP_DBGDIV_DBGCLK		(1)
+#define CONFIG_HPS_MAINPLLGRP_TRACEDIV_TRACECLK		(0)
+/*
+ * To tell where is the clock source:
+ * 0 = MAINPLL
+ * 1 = PERIPHPLL
+ */
+#define CONFIG_HPS_MAINPLLGRP_L4SRC_L4MP		(1)
+#define CONFIG_HPS_MAINPLLGRP_L4SRC_L4SP		(1)
+
+/* Peripheral PLL */
+#define CONFIG_HPS_PERPLLGRP_VCO_DENOM			(1)
+#define CONFIG_HPS_PERPLLGRP_VCO_NUMER			(79)
+/*
+ * To tell where is the VCOs source:
+ * 0 = EOSC1
+ * 1 = EOSC2
+ * 2 = F2S
+ */
+#define CONFIG_HPS_PERPLLGRP_VCO_PSRC			(0)
+#define CONFIG_HPS_PERPLLGRP_EMAC0CLK_CNT		(3)
+#define CONFIG_HPS_PERPLLGRP_EMAC1CLK_CNT		(3)
+#define CONFIG_HPS_PERPLLGRP_PERQSPICLK_CNT		(1)
+#define CONFIG_HPS_PERPLLGRP_PERNANDSDMMCCLK_CNT	(19)
+#define CONFIG_HPS_PERPLLGRP_PERBASECLK_CNT		(4)
+#define CONFIG_HPS_PERPLLGRP_S2FUSER1CLK_CNT		(9)
+#define CONFIG_HPS_PERPLLGRP_DIV_USBCLK			(0)
+#define CONFIG_HPS_PERPLLGRP_DIV_SPIMCLK		(0)
+#define CONFIG_HPS_PERPLLGRP_DIV_CAN0CLK		(1)
+#define CONFIG_HPS_PERPLLGRP_DIV_CAN1CLK		(1)
+#define CONFIG_HPS_PERPLLGRP_GPIODIV_GPIODBCLK		(6249)
+/*
+ * To tell where is the clock source:
+ * 0 = F2S_PERIPH_REF_CLK
+ * 1 = MAIN_CLK
+ * 2 = PERIPH_CLK
+ */
+#define CONFIG_HPS_PERPLLGRP_SRC_SDMMC			(1)
+#define CONFIG_HPS_PERPLLGRP_SRC_NAND			(2)
+#define CONFIG_HPS_PERPLLGRP_SRC_QSPI			(1)
+
+/* SDRAM PLL */
+#define CONFIG_HPS_SDRPLLGRP_VCO_DENOM			(0)
+#define CONFIG_HPS_SDRPLLGRP_VCO_NUMER			(31)
+/*
+ * To tell where is the VCOs source:
+ * 0 = EOSC1
+ * 1 = EOSC2
+ * 2 = F2S
+ */
+#define CONFIG_HPS_SDRPLLGRP_VCO_SSRC			(0)
+#define CONFIG_HPS_SDRPLLGRP_DDRDQSCLK_CNT		(1)
+#define CONFIG_HPS_SDRPLLGRP_DDRDQSCLK_PHASE		(0)
+#define CONFIG_HPS_SDRPLLGRP_DDR2XDQSCLK_CNT		(0)
+#define CONFIG_HPS_SDRPLLGRP_DDR2XDQSCLK_PHASE		(0)
+#define CONFIG_HPS_SDRPLLGRP_DDRDQCLK_CNT		(1)
+#define CONFIG_HPS_SDRPLLGRP_DDRDQCLK_PHASE		(4)
+#define CONFIG_HPS_SDRPLLGRP_S2FUSER2CLK_CNT		(5)
+#define CONFIG_HPS_SDRPLLGRP_S2FUSER2CLK_PHASE		(0)
+
+/* Info for driver */
+#define CONFIG_HPS_CLK_OSC1_HZ			(25000000)
+#define CONFIG_HPS_CLK_MAINVCO_HZ		(1600000000)
+#define CONFIG_HPS_CLK_PERVCO_HZ		(1000000000)
+#define CONFIG_HPS_CLK_SDRVCO_HZ		(600000000)
+#define CONFIG_HPS_CLK_EMAC0_HZ			(50000000)
+#define CONFIG_HPS_CLK_EMAC1_HZ			(50000000)
+#define CONFIG_HPS_CLK_USBCLK_HZ		(200000000)
+#define CONFIG_HPS_CLK_NAND_HZ			(100000000)
+#define CONFIG_HPS_CLK_SDMMC_HZ			(50000000)
+#define CONFIG_HPS_CLK_QSPI_HZ			(400000000)
+#define CONFIG_HPS_CLK_SPIM_HZ			(200000000)
+#define CONFIG_HPS_CLK_CAN0_HZ			(100000000)
+#define CONFIG_HPS_CLK_CAN1_HZ			(100000000)
+#define CONFIG_HPS_CLK_GPIODB_HZ		(32000)
+#define CONFIG_HPS_CLK_L4_MP_HZ			(100000000)
+#define CONFIG_HPS_CLK_L4_SP_HZ			(100000000)
+
+#endif /* _PRELOADER_PLL_CONFIG_H_ */
diff --git a/arch/arm/boards/terasic-sockit/sdram_config.h b/arch/arm/boards/terasic-sockit/sdram_config.h
new file mode 100644
index 0000000..3d6f938
--- /dev/null
+++ b/arch/arm/boards/terasic-sockit/sdram_config.h
@@ -0,0 +1,69 @@
+#define CONFIG_HPS_SDR_CTRLCFG_CTRLCFG_MEMTYPE			(2)
+#define CONFIG_HPS_SDR_CTRLCFG_CTRLCFG_MEMBL			(8)
+#define CONFIG_HPS_SDR_CTRLCFG_CTRLCFG_ADDRORDER		(0)
+#define CONFIG_HPS_SDR_CTRLCFG_CTRLCFG_ECCEN			(0)
+#define CONFIG_HPS_SDR_CTRLCFG_CTRLCFG_ECCCORREN		(0)
+#define CONFIG_HPS_SDR_CTRLCFG_CTRLCFG_REORDEREN		(1)
+#define CONFIG_HPS_SDR_CTRLCFG_CTRLCFG_STARVELIMIT		(10)
+#define CONFIG_HPS_SDR_CTRLCFG_CTRLCFG_DQSTRKEN			(0)
+#define CONFIG_HPS_SDR_CTRLCFG_CTRLCFG_NODMPINS			(0)
+#define CONFIG_HPS_SDR_CTRLCFG_DRAMTIMING1_TCWL			(8)
+#define CONFIG_HPS_SDR_CTRLCFG_DRAMTIMING1_AL			(0)
+#define CONFIG_HPS_SDR_CTRLCFG_DRAMTIMING1_TCL			(11)
+#define CONFIG_HPS_SDR_CTRLCFG_DRAMTIMING1_TRRD			(3)
+#define CONFIG_HPS_SDR_CTRLCFG_DRAMTIMING1_TFAW			(12)
+#define CONFIG_HPS_SDR_CTRLCFG_DRAMTIMING1_TRFC			(104)
+#define CONFIG_HPS_SDR_CTRLCFG_DRAMTIMING2_IF_TREFI		(3120)
+#define CONFIG_HPS_SDR_CTRLCFG_DRAMTIMING2_IF_TRCD		(6)
+#define CONFIG_HPS_SDR_CTRLCFG_DRAMTIMING2_IF_TRP		(6)
+#define CONFIG_HPS_SDR_CTRLCFG_DRAMTIMING2_IF_TWR		(6)
+#define CONFIG_HPS_SDR_CTRLCFG_DRAMTIMING2_IF_TWTR		(4)
+#define CONFIG_HPS_SDR_CTRLCFG_DRAMTIMING3_TRTP			(3)
+#define CONFIG_HPS_SDR_CTRLCFG_DRAMTIMING3_TRAS			(14)
+#define CONFIG_HPS_SDR_CTRLCFG_DRAMTIMING3_TRC			(20)
+#define CONFIG_HPS_SDR_CTRLCFG_DRAMTIMING3_TMRD			(4)
+#define CONFIG_HPS_SDR_CTRLCFG_DRAMTIMING3_TCCD			(4)
+#define CONFIG_HPS_SDR_CTRLCFG_DRAMTIMING4_SELFRFSHEXIT		(200)
+#define CONFIG_HPS_SDR_CTRLCFG_DRAMTIMING4_PWRDOWNEXIT		(3)
+#define CONFIG_HPS_SDR_CTRLCFG_LOWPWRTIMING_AUTOPDCYCLES	(0)
+#define CONFIG_HPS_SDR_CTRLCFG_DRAMADDRW_COLBITS		(10)
+#define CONFIG_HPS_SDR_CTRLCFG_DRAMADDRW_ROWBITS		(15)
+#define CONFIG_HPS_SDR_CTRLCFG_DRAMADDRW_BANKBITS		(3)
+#define CONFIG_HPS_SDR_CTRLCFG_DRAMADDRW_CSBITS			(1)
+#define CONFIG_HPS_SDR_CTRLCFG_DRAMIFWIDTH_IFWIDTH		(32)
+#define CONFIG_HPS_SDR_CTRLCFG_DRAMDEVWIDTH_DEVWIDTH		(8)
+#define CONFIG_HPS_SDR_CTRLCFG_DRAMINTR_INTREN			(0)
+#define CONFIG_HPS_SDR_CTRLCFG_STATICCFG_MEMBL			(2)
+#define CONFIG_HPS_SDR_CTRLCFG_STATICCFG_USEECCASDATA		(0)
+#define CONFIG_HPS_SDR_CTRLCFG_CTRLWIDTH_CTRLWIDTH		(2)
+#define CONFIG_HPS_SDR_CTRLCFG_PORTCFG_AUTOPCHEN		(0)
+#define CONFIG_HPS_SDR_CTRLCFG_FIFOCFG_SYNCMODE			(0)
+#define CONFIG_HPS_SDR_CTRLCFG_FIFOCFG_INCSYNC			(0)
+#define CONFIG_HPS_SDR_CTRLCFG_MPPRIORITY_USERPRIORITY		(0x3FFD1088)
+#define CONFIG_HPS_SDR_CTRLCFG_MPWIEIGHT_0_STATICWEIGHT_31_0	(0x21084210)
+#define CONFIG_HPS_SDR_CTRLCFG_MPWIEIGHT_1_STATICWEIGHT_49_32	(0x1EF84)
+#define CONFIG_HPS_SDR_CTRLCFG_MPWIEIGHT_1_SUMOFWEIGHT_13_0	(0x2020)
+#define CONFIG_HPS_SDR_CTRLCFG_MPWIEIGHT_2_SUMOFWEIGHT_45_14	(0x0)
+#define CONFIG_HPS_SDR_CTRLCFG_MPWIEIGHT_3_SUMOFWEIGHT_63_46	(0xF800)
+#define CONFIG_HPS_SDR_CTRLCFG_PHYCTRL_PHYCTRL_0		(0x200)
+
+#define CONFIG_HPS_SDR_CTRLCFG_CPORTWIDTH_CPORTWIDTH		(0x44555)
+#define CONFIG_HPS_SDR_CTRLCFG_CPORTWMAP_CPORTWMAP		(0x2C011000)
+#define CONFIG_HPS_SDR_CTRLCFG_CPORTRMAP_CPORTRMAP		(0xB00088)
+#define CONFIG_HPS_SDR_CTRLCFG_RFIFOCMAP_RFIFOCMAP		(0x760210)
+#define CONFIG_HPS_SDR_CTRLCFG_WFIFOCMAP_WFIFOCMAP		(0x980543)
+#define CONFIG_HPS_SDR_CTRLCFG_CPORTRDWR_CPORTRDWR		(0x5A56A)
+#define CONFIG_HPS_SDR_CTRLCFG_MPPACING_0_THRESHOLD1_31_0	(0x20820820)
+#define CONFIG_HPS_SDR_CTRLCFG_MPPACING_1_THRESHOLD1_59_32	(0x8208208)
+#define CONFIG_HPS_SDR_CTRLCFG_MPPACING_1_THRESHOLD2_3_0	(0)
+#define CONFIG_HPS_SDR_CTRLCFG_MPPACING_2_THRESHOLD2_35_4	(0x41041041)
+#define CONFIG_HPS_SDR_CTRLCFG_MPPACING_3_THRESHOLD2_59_36	(0x410410)
+#define CONFIG_HPS_SDR_CTRLCFG_MPTHRESHOLDRST_0_THRESHOLDRSTCYCLES_31_0 (0x80808080)
+#define CONFIG_HPS_SDR_CTRLCFG_MPTHRESHOLDRST_1_THRESHOLDRSTCYCLES_63_32 (0x80808080)
+#define CONFIG_HPS_SDR_CTRLCFG_MPTHRESHOLDRST_2_THRESHOLDRSTCYCLES_79_64 (0x8080)
+
+#define CONFIG_HPS_SDR_CTRLCFG_DRAMODT_READ                    (0)
+#define CONFIG_HPS_SDR_CTRLCFG_DRAMODT_WRITE                   (1)
+#define CONFIG_HPS_SDR_CTRLCFG_FPGAPORTRST_READ_PORT_USED      (0)
+#define CONFIG_HPS_SDR_CTRLCFG_FPGAPORTRST_WRITE_PORT_USED     (0)
+#define CONFIG_HPS_SDR_CTRLCFG_FPGAPORTRST_COMMAND_PORT_USED   (0)
diff --git a/arch/arm/boards/terasic-sockit/sequencer_auto.h b/arch/arm/boards/terasic-sockit/sequencer_auto.h
new file mode 100644
index 0000000..492706f
--- /dev/null
+++ b/arch/arm/boards/terasic-sockit/sequencer_auto.h
@@ -0,0 +1,173 @@
+#define __RW_MGR_ac_mrs1 0x04
+#define __RW_MGR_ac_mrs3 0x06
+#define __RW_MGR_ac_write_bank_0_col_0_nodata_wl_1 0x1C
+#define __RW_MGR_ac_act_1 0x11
+#define __RW_MGR_ac_write_postdata 0x1A
+#define __RW_MGR_ac_act_0 0x10
+#define __RW_MGR_ac_des 0x0D
+#define __RW_MGR_ac_init_reset_1_cke_0 0x01
+#define __RW_MGR_ac_write_data 0x19
+#define __RW_MGR_ac_init_reset_0_cke_0 0x00
+#define __RW_MGR_ac_read_bank_0_1_norden 0x22
+#define __RW_MGR_ac_pre_all 0x12
+#define __RW_MGR_ac_mrs0_user 0x02
+#define __RW_MGR_ac_mrs0_dll_reset 0x03
+#define __RW_MGR_ac_read_bank_0_0 0x1D
+#define __RW_MGR_ac_write_bank_0_col_1 0x16
+#define __RW_MGR_ac_read_bank_0_1 0x1F
+#define __RW_MGR_ac_write_bank_1_col_0 0x15
+#define __RW_MGR_ac_write_bank_1_col_1 0x17
+#define __RW_MGR_ac_write_bank_0_col_0 0x14
+#define __RW_MGR_ac_read_bank_1_0 0x1E
+#define __RW_MGR_ac_mrs1_mirr 0x0A
+#define __RW_MGR_ac_read_bank_1_1 0x20
+#define __RW_MGR_ac_des_odt_1 0x0E
+#define __RW_MGR_ac_mrs0_dll_reset_mirr 0x09
+#define __RW_MGR_ac_zqcl 0x07
+#define __RW_MGR_ac_write_predata 0x18
+#define __RW_MGR_ac_mrs0_user_mirr 0x08
+#define __RW_MGR_ac_ref 0x13
+#define __RW_MGR_ac_nop 0x0F
+#define __RW_MGR_ac_rdimm 0x23
+#define __RW_MGR_ac_mrs2_mirr 0x0B
+#define __RW_MGR_ac_write_bank_0_col_0_nodata 0x1B
+#define __RW_MGR_ac_read_en 0x21
+#define __RW_MGR_ac_mrs3_mirr 0x0C
+#define __RW_MGR_ac_mrs2 0x05
+#define __RW_MGR_CONTENT_ac_mrs1 0x10090006
+#define __RW_MGR_CONTENT_ac_mrs3 0x100B0000
+#define __RW_MGR_CONTENT_ac_write_bank_0_col_0_nodata_wl_1 0x18980000
+#define __RW_MGR_CONTENT_ac_act_1 0x106B0000
+#define __RW_MGR_CONTENT_ac_write_postdata 0x38780000
+#define __RW_MGR_CONTENT_ac_act_0 0x10680000
+#define __RW_MGR_CONTENT_ac_des 0x30780000
+#define __RW_MGR_CONTENT_ac_init_reset_1_cke_0 0x20780000
+#define __RW_MGR_CONTENT_ac_write_data 0x3CF80000
+#define __RW_MGR_CONTENT_ac_init_reset_0_cke_0 0x20700000
+#define __RW_MGR_CONTENT_ac_read_bank_0_1_norden 0x10580008
+#define __RW_MGR_CONTENT_ac_pre_all 0x10280400
+#define __RW_MGR_CONTENT_ac_mrs0_user 0x10080471
+#define __RW_MGR_CONTENT_ac_mrs0_dll_reset 0x10080570
+#define __RW_MGR_CONTENT_ac_read_bank_0_0 0x13580000
+#define __RW_MGR_CONTENT_ac_write_bank_0_col_1 0x1C980008
+#define __RW_MGR_CONTENT_ac_read_bank_0_1 0x13580008
+#define __RW_MGR_CONTENT_ac_write_bank_1_col_0 0x1C9B0000
+#define __RW_MGR_CONTENT_ac_write_bank_1_col_1 0x1C9B0008
+#define __RW_MGR_CONTENT_ac_write_bank_0_col_0 0x1C980000
+#define __RW_MGR_CONTENT_ac_read_bank_1_0 0x135B0000
+#define __RW_MGR_CONTENT_ac_mrs1_mirr 0x100A0006
+#define __RW_MGR_CONTENT_ac_read_bank_1_1 0x135B0008
+#define __RW_MGR_CONTENT_ac_des_odt_1 0x38780000
+#define __RW_MGR_CONTENT_ac_mrs0_dll_reset_mirr 0x100804E8
+#define __RW_MGR_CONTENT_ac_zqcl 0x10380400
+#define __RW_MGR_CONTENT_ac_write_predata 0x38F80000
+#define __RW_MGR_CONTENT_ac_mrs0_user_mirr 0x10080469
+#define __RW_MGR_CONTENT_ac_ref 0x10480000
+#define __RW_MGR_CONTENT_ac_nop 0x30780000
+#define __RW_MGR_CONTENT_ac_rdimm 0x10780000
+#define __RW_MGR_CONTENT_ac_mrs2_mirr 0x10090218
+#define __RW_MGR_CONTENT_ac_write_bank_0_col_0_nodata 0x18180000
+#define __RW_MGR_CONTENT_ac_read_en 0x33780000
+#define __RW_MGR_CONTENT_ac_mrs3_mirr 0x100B0000
+#define __RW_MGR_CONTENT_ac_mrs2 0x100A0218
+
+#define __RW_MGR_READ_B2B_WAIT2 0x6A
+#define __RW_MGR_LFSR_WR_RD_BANK_0_WAIT 0x31
+#define __RW_MGR_REFRESH_ALL 0x14
+#define __RW_MGR_ZQCL 0x06
+#define __RW_MGR_LFSR_WR_RD_BANK_0_NOP 0x22
+#define __RW_MGR_LFSR_WR_RD_BANK_0_DQS 0x23
+#define __RW_MGR_ACTIVATE_0_AND_1 0x0D
+#define __RW_MGR_MRS2_MIRR 0x0A
+#define __RW_MGR_INIT_RESET_0_CKE_0 0x6E
+#define __RW_MGR_LFSR_WR_RD_DM_BANK_0_WAIT 0x45
+#define __RW_MGR_ACTIVATE_1 0x0F
+#define __RW_MGR_MRS2 0x04
+#define __RW_MGR_LFSR_WR_RD_DM_BANK_0_WL_1 0x34
+#define __RW_MGR_MRS1 0x03
+#define __RW_MGR_IDLE_LOOP1 0x7C
+#define __RW_MGR_GUARANTEED_WRITE_WAIT2 0x18
+#define __RW_MGR_MRS3 0x05
+#define __RW_MGR_IDLE_LOOP2 0x7B
+#define __RW_MGR_GUARANTEED_WRITE_WAIT1 0x1E
+#define __RW_MGR_LFSR_WR_RD_BANK_0_DATA 0x24
+#define __RW_MGR_GUARANTEED_WRITE_WAIT3 0x1C
+#define __RW_MGR_RDIMM_CMD 0x7A
+#define __RW_MGR_LFSR_WR_RD_DM_BANK_0_NOP 0x36
+#define __RW_MGR_GUARANTEED_WRITE_WAIT0 0x1A
+#define __RW_MGR_LFSR_WR_RD_DM_BANK_0_DATA 0x38
+#define __RW_MGR_GUARANTEED_READ_CONT 0x53
+#define __RW_MGR_MRS3_MIRR 0x0B
+#define __RW_MGR_IDLE 0x00
+#define __RW_MGR_READ_B2B 0x58
+#define __RW_MGR_INIT_RESET_0_CKE_0_inloop 0x6F
+#define __RW_MGR_LFSR_WR_RD_DM_BANK_0_DQS 0x37
+#define __RW_MGR_GUARANTEED_WRITE 0x17
+#define __RW_MGR_PRECHARGE_ALL 0x12
+#define __RW_MGR_INIT_RESET_1_CKE_0_inloop_1 0x74
+#define __RW_MGR_SGLE_READ 0x7E
+#define __RW_MGR_MRS0_USER_MIRR 0x0C
+#define __RW_MGR_RETURN 0x01
+#define __RW_MGR_LFSR_WR_RD_DM_BANK_0 0x35
+#define __RW_MGR_MRS0_USER 0x07
+#define __RW_MGR_GUARANTEED_READ 0x4B
+#define __RW_MGR_MRS0_DLL_RESET_MIRR 0x08
+#define __RW_MGR_INIT_RESET_1_CKE_0 0x73
+#define __RW_MGR_ACTIVATE_0_AND_1_WAIT2 0x10
+#define __RW_MGR_LFSR_WR_RD_BANK_0_WL_1 0x20
+#define __RW_MGR_MRS0_DLL_RESET 0x02
+#define __RW_MGR_ACTIVATE_0_AND_1_WAIT1 0x0E
+#define __RW_MGR_LFSR_WR_RD_BANK_0 0x21
+#define __RW_MGR_CLEAR_DQS_ENABLE 0x48
+#define __RW_MGR_MRS1_MIRR 0x09
+#define __RW_MGR_READ_B2B_WAIT1 0x60
+#define __RW_MGR_CONTENT_READ_B2B_WAIT2 0x00C680
+#define __RW_MGR_CONTENT_LFSR_WR_RD_BANK_0_WAIT 0x00A680
+#define __RW_MGR_CONTENT_REFRESH_ALL 0x000980
+#define __RW_MGR_CONTENT_ZQCL 0x008380
+#define __RW_MGR_CONTENT_LFSR_WR_RD_BANK_0_NOP 0x00E700
+#define __RW_MGR_CONTENT_LFSR_WR_RD_BANK_0_DQS 0x000C00
+#define __RW_MGR_CONTENT_ACTIVATE_0_AND_1 0x000800
+#define __RW_MGR_CONTENT_MRS2_MIRR 0x008580
+#define __RW_MGR_CONTENT_INIT_RESET_0_CKE_0 0x000000
+#define __RW_MGR_CONTENT_LFSR_WR_RD_DM_BANK_0_WAIT 0x00A680
+#define __RW_MGR_CONTENT_ACTIVATE_1 0x000880
+#define __RW_MGR_CONTENT_MRS2 0x008280
+#define __RW_MGR_CONTENT_LFSR_WR_RD_DM_BANK_0_WL_1 0x00CE00
+#define __RW_MGR_CONTENT_MRS1 0x008200
+#define __RW_MGR_CONTENT_IDLE_LOOP1 0x00A680
+#define __RW_MGR_CONTENT_GUARANTEED_WRITE_WAIT2 0x00CCE8
+#define __RW_MGR_CONTENT_MRS3 0x008300
+#define __RW_MGR_CONTENT_IDLE_LOOP2 0x008680
+#define __RW_MGR_CONTENT_GUARANTEED_WRITE_WAIT1 0x00AC88
+#define __RW_MGR_CONTENT_LFSR_WR_RD_BANK_0_DATA 0x020CE0
+#define __RW_MGR_CONTENT_GUARANTEED_WRITE_WAIT3 0x00EC88
+#define __RW_MGR_CONTENT_RDIMM_CMD 0x009180
+#define __RW_MGR_CONTENT_LFSR_WR_RD_DM_BANK_0_NOP 0x00E700
+#define __RW_MGR_CONTENT_GUARANTEED_WRITE_WAIT0 0x008CE8
+#define __RW_MGR_CONTENT_LFSR_WR_RD_DM_BANK_0_DATA 0x030CE0
+#define __RW_MGR_CONTENT_GUARANTEED_READ_CONT 0x001168
+#define __RW_MGR_CONTENT_MRS3_MIRR 0x008600
+#define __RW_MGR_CONTENT_IDLE 0x080000
+#define __RW_MGR_CONTENT_READ_B2B 0x040E88
+#define __RW_MGR_CONTENT_INIT_RESET_0_CKE_0_inloop 0x000000
+#define __RW_MGR_CONTENT_LFSR_WR_RD_DM_BANK_0_DQS 0x000C00
+#define __RW_MGR_CONTENT_GUARANTEED_WRITE 0x000B68
+#define __RW_MGR_CONTENT_PRECHARGE_ALL 0x000900
+#define __RW_MGR_CONTENT_INIT_RESET_1_CKE_0_inloop_1 0x000080
+#define __RW_MGR_CONTENT_SGLE_READ 0x040F08
+#define __RW_MGR_CONTENT_MRS0_USER_MIRR 0x008400
+#define __RW_MGR_CONTENT_RETURN 0x080680
+#define __RW_MGR_CONTENT_LFSR_WR_RD_DM_BANK_0 0x00CD80
+#define __RW_MGR_CONTENT_MRS0_USER 0x008100
+#define __RW_MGR_CONTENT_GUARANTEED_READ 0x001168
+#define __RW_MGR_CONTENT_MRS0_DLL_RESET_MIRR 0x008480
+#define __RW_MGR_CONTENT_INIT_RESET_1_CKE_0 0x000080
+#define __RW_MGR_CONTENT_ACTIVATE_0_AND_1_WAIT2 0x00A680
+#define __RW_MGR_CONTENT_LFSR_WR_RD_BANK_0_WL_1 0x00CE00
+#define __RW_MGR_CONTENT_MRS0_DLL_RESET 0x008180
+#define __RW_MGR_CONTENT_ACTIVATE_0_AND_1_WAIT1 0x008680
+#define __RW_MGR_CONTENT_LFSR_WR_RD_BANK_0 0x00CD80
+#define __RW_MGR_CONTENT_CLEAR_DQS_ENABLE 0x001158
+#define __RW_MGR_CONTENT_MRS1_MIRR 0x008500
+#define __RW_MGR_CONTENT_READ_B2B_WAIT1 0x00A680
diff --git a/arch/arm/boards/terasic-sockit/sequencer_auto_ac_init.c b/arch/arm/boards/terasic-sockit/sequencer_auto_ac_init.c
new file mode 100644
index 0000000..5b0c3f3
--- /dev/null
+++ b/arch/arm/boards/terasic-sockit/sequencer_auto_ac_init.c
@@ -0,0 +1,40 @@
+static const uint32_t ac_rom_init_size = 36;
+static const uint32_t ac_rom_init[36] =
+{
+	0x20700000,
+	0x20780000,
+	0x10080471,
+	0x10080570,
+	0x10090006,
+	0x100a0218,
+	0x100b0000,
+	0x10380400,
+	0x10080469,
+	0x100804e8,
+	0x100a0006,
+	0x10090218,
+	0x100b0000,
+	0x30780000,
+	0x38780000,
+	0x30780000,
+	0x10680000,
+	0x106b0000,
+	0x10280400,
+	0x10480000,
+	0x1c980000,
+	0x1c9b0000,
+	0x1c980008,
+	0x1c9b0008,
+	0x38f80000,
+	0x3cf80000,
+	0x38780000,
+	0x18180000,
+	0x18980000,
+	0x13580000,
+	0x135b0000,
+	0x13580008,
+	0x135b0008,
+	0x33780000,
+	0x10580008,
+	0x10780000
+};
diff --git a/arch/arm/boards/terasic-sockit/sequencer_auto_inst_init.c b/arch/arm/boards/terasic-sockit/sequencer_auto_inst_init.c
new file mode 100644
index 0000000..7815faa
--- /dev/null
+++ b/arch/arm/boards/terasic-sockit/sequencer_auto_inst_init.c
@@ -0,0 +1,134 @@
+#include <common.h>
+
+const uint32_t inst_rom_init_size = 128;
+const uint32_t inst_rom_init[128] =
+{
+	0x80000,
+	0x80680,
+	0x8180,
+	0x8200,
+	0x8280,
+	0x8300,
+	0x8380,
+	0x8100,
+	0x8480,
+	0x8500,
+	0x8580,
+	0x8600,
+	0x8400,
+	0x800,
+	0x8680,
+	0x880,
+	0xa680,
+	0x80680,
+	0x900,
+	0x80680,
+	0x980,
+	0x8680,
+	0x80680,
+	0xb68,
+	0xcce8,
+	0xae8,
+	0x8ce8,
+	0xb88,
+	0xec88,
+	0xa08,
+	0xac88,
+	0x80680,
+	0xce00,
+	0xcd80,
+	0xe700,
+	0xc00,
+	0x20ce0,
+	0x20ce0,
+	0x20ce0,
+	0x20ce0,
+	0xd00,
+	0x680,
+	0x680,
+	0x680,
+	0x680,
+	0x60e80,
+	0x61080,
+	0x61080,
+	0x61080,
+	0xa680,
+	0x8680,
+	0x80680,
+	0xce00,
+	0xcd80,
+	0xe700,
+	0xc00,
+	0x30ce0,
+	0x30ce0,
+	0x30ce0,
+	0x30ce0,
+	0xd00,
+	0x680,
+	0x680,
+	0x680,
+	0x680,
+	0x70e80,
+	0x71080,
+	0x71080,
+	0x71080,
+	0xa680,
+	0x8680,
+	0x80680,
+	0x1158,
+	0x6d8,
+	0x80680,
+	0x1168,
+	0x7e8,
+	0x7e8,
+	0x87e8,
+	0x40fe8,
+	0x410e8,
+	0x410e8,
+	0x410e8,
+	0x1168,
+	0x7e8,
+	0x7e8,
+	0xa7e8,
+	0x80680,
+	0x40e88,
+	0x41088,
+	0x41088,
+	0x41088,
+	0x40f68,
+	0x410e8,
+	0x410e8,
+	0x410e8,
+	0xa680,
+	0x40fe8,
+	0x410e8,
+	0x410e8,
+	0x410e8,
+	0x41008,
+	0x41088,
+	0x41088,
+	0x41088,
+	0x1100,
+	0xc680,
+	0x8680,
+	0xe680,
+	0x80680,
+	0x0,
+	0x0,
+	0xa000,
+	0x8000,
+	0x80000,
+	0x80,
+	0x80,
+	0x80,
+	0x80,
+	0xa080,
+	0x8080,
+	0x80080,
+	0x9180,
+	0x8680,
+	0xa680,
+	0x80680,
+	0x40f08,
+	0x80680
+};
diff --git a/arch/arm/boards/terasic-sockit/sequencer_defines.h b/arch/arm/boards/terasic-sockit/sequencer_defines.h
new file mode 100644
index 0000000..a59eed2
--- /dev/null
+++ b/arch/arm/boards/terasic-sockit/sequencer_defines.h
@@ -0,0 +1,118 @@
+#ifndef _SEQUENCER_DEFINES_H_
+#define _SEQUENCER_DEFINES_H_
+
+#define AC_ROM_MR1_MIRR 0000000000110
+#define AC_ROM_MR1_OCD_ENABLE
+#define AC_ROM_MR2_MIRR 0001000011000
+#define AC_ROM_MR3_MIRR 0000000000000
+#define AC_ROM_MR0_CALIB
+#define AC_ROM_MR0_DLL_RESET_MIRR 0010011101000
+#define AC_ROM_MR0_DLL_RESET 0010101110000
+#define AC_ROM_MR0_MIRR 0010001101001
+#define AC_ROM_MR0 0010001110001
+#define AC_ROM_MR1 0000000000110
+#define AC_ROM_MR2 0001000011000
+#define AC_ROM_MR3 0000000000000
+#define AFI_CLK_FREQ 401
+#define AFI_RATE_RATIO 1
+#define ARRIAVGZ 0
+#define ARRIAV 0
+#define AVL_CLK_FREQ 67
+#define BFM_MODE 0
+#define BURST2 0
+#define CALIBRATE_BIT_SLIPS 0
+#define CALIB_LFIFO_OFFSET 11
+#define CALIB_VFIFO_OFFSET 9
+#define CYCLONEV 1
+#define DDR2 0
+#define DDR3 1
+#define DDRX 1
+#define DM_PINS_ENABLED 1
+#define ENABLE_ASSERT 0
+#define ENABLE_BRINGUP_DEBUGGING 0
+#define ENABLE_DQS_IN_CENTERING 1
+#define ENABLE_DQS_OUT_CENTERING 0
+#define ENABLE_EXPORT_SEQ_DEBUG_BRIDGE 0
+#define ENABLE_INST_ROM_WRITE 1
+#define ENABLE_MARGIN_REPORT_GEN 0
+#define ENABLE_NON_DESTRUCTIVE_CALIB 0
+#define ENABLE_SUPER_QUICK_CALIBRATION 0
+#define ENABLE_TCL_DEBUG 0
+#define FULL_RATE 1
+#define GUARANTEED_READ_BRINGUP_TEST 0
+#define HALF_RATE 0
+#define HARD_PHY 1
+#define HARD_VFIFO 1
+#define HCX_COMPAT_MODE 0
+#define HHP_HPS_SIMULATION 0
+#define HHP_HPS_VERIFICATION 0
+#define HHP_HPS 1
+#define HPS_HW 1
+#define HR_DDIO_OUT_HAS_THREE_REGS 0
+#define IO_DELAY_PER_DCHAIN_TAP 25
+#define IO_DELAY_PER_DQS_EN_DCHAIN_TAP 25
+#define IO_DELAY_PER_OPA_TAP 312
+#define IO_DLL_CHAIN_LENGTH 8
+#define IO_DM_OUT_RESERVE 0
+#define IO_DQDQS_OUT_PHASE_MAX 0
+#define IO_DQS_EN_DELAY_MAX 31
+#define IO_DQS_EN_DELAY_OFFSET 0
+#define IO_DQS_EN_PHASE_MAX 7
+#define IO_DQS_IN_DELAY_MAX 31
+#define IO_DQS_IN_RESERVE 4
+#define IO_DQS_OUT_RESERVE 4
+#define IO_DQ_OUT_RESERVE 0
+#define IO_IO_IN_DELAY_MAX 31
+#define IO_IO_OUT1_DELAY_MAX 31
+#define IO_IO_OUT2_DELAY_MAX 0
+#define IO_SHIFT_DQS_EN_WHEN_SHIFT_DQS 0
+#define LPDDR1 0
+#define LPDDR2 0
+#define LRDIMM 0
+#define MARGIN_VARIATION_TEST 0
+#define MAX_LATENCY_COUNT_WIDTH 5
+#define MEM_ADDR_WIDTH 13
+#define MULTIPLE_AFI_WLAT 0
+#define NUM_SHADOW_REGS 1
+#define QDRII 0
+#define QUARTER_RATE 0
+#define RDIMM 0
+#define READ_AFTER_WRITE_CALIBRATION 1
+#define READ_VALID_FIFO_SIZE 16
+#define REG_FILE_INIT_SEQ_SIGNATURE 0x55550482
+#define RLDRAM3 0
+#define RLDRAMII 0
+#define RLDRAMX 0
+#define RUNTIME_CAL_REPORT 0
+#define RW_MGR_MEM_ADDRESS_MIRRORING 0
+#define RW_MGR_MEM_ADDRESS_WIDTH 15
+#define RW_MGR_MEM_BANK_WIDTH 3
+#define RW_MGR_MEM_CHIP_SELECT_WIDTH 1
+#define RW_MGR_MEM_CLK_EN_WIDTH 1
+#define RW_MGR_MEM_CONTROL_WIDTH 1
+#define RW_MGR_MEM_DATA_MASK_WIDTH 4
+#define RW_MGR_MEM_DATA_WIDTH 32
+#define RW_MGR_MEM_DQ_PER_READ_DQS 8
+#define RW_MGR_MEM_DQ_PER_WRITE_DQS 8
+#define RW_MGR_MEM_IF_READ_DQS_WIDTH 4
+#define RW_MGR_MEM_IF_WRITE_DQS_WIDTH 4
+#define RW_MGR_MEM_NUMBER_OF_CS_PER_DIMM 1
+#define RW_MGR_MEM_NUMBER_OF_RANKS 1
+#define RW_MGR_MEM_ODT_WIDTH 1
+#define RW_MGR_MEM_VIRTUAL_GROUPS_PER_READ_DQS 1
+#define RW_MGR_MEM_VIRTUAL_GROUPS_PER_WRITE_DQS 1
+#define RW_MGR_MR0_BL 1
+#define RW_MGR_MR0_CAS_LATENCY 7
+#define RW_MGR_TRUE_MEM_DATA_MASK_WIDTH 4
+#define RW_MGR_WRITE_TO_DEBUG_READ 1.0
+#define SKEW_CALIBRATION 0
+#define STATIC_FULL_CALIBRATION 1
+#define STATIC_SIM_FILESET 0
+#define STATIC_SKIP_MEM_INIT 0
+#define STRATIXV 0
+#define TRACKING_ERROR_TEST 0
+#define TRACKING_WATCH_TEST 0
+#define USE_DQS_TRACKING 1
+#define USE_SHADOW_REGS 0
+
+#endif /* _SEQUENCER_DEFINES_H_ */
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index d57db0e..7aaf61d 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -11,6 +11,7 @@ dtb-$(CONFIG_ARCH_IMX6) += imx6q-gk802.dtb \
 	imx6q-mba6x.dtb \
 	imx6q-phytec-pbab01.dtb
 dtb-$(CONFIG_ARCH_MVEBU) += dove-cubox.dtb
+dtb-$(CONFIG_ARCH_SOCFPGA) += socfpga_cyclone5_sockit.dtb
 
 BUILTIN_DTB := $(patsubst "%",%,$(CONFIG_BUILTIN_DTB_NAME))
 obj-$(CONFIG_BUILTIN_DTB) += $(BUILTIN_DTB).dtb.o
@@ -24,6 +25,7 @@ pbl-$(CONFIG_MACH_REALQ7) += imx6q-dmo-realq7.dtb.o
 pbl-$(CONFIG_MACH_SOLIDRUN_CUBOX) += dove-cubox.dtb.o
 pbl-$(CONFIG_MACH_GK802) += imx6q-gk802.dtb.o
 pbl-$(CONFIG_MACH_TQMA6X) += imx6dl-mba6x.dtb.o imx6q-mba6x.dtb.o
+pbl-$(CONFIG_MACH_SOCFPGA_TERASIC_SOCKIT) += socfpga_cyclone5_sockit.dtb.o
 
 .SECONDARY: $(obj)/$(BUILTIN_DTB).dtb.S
 .SECONDARY: $(patsubst %,$(obj)/%.S,$(dtb-y))
diff --git a/arch/arm/dts/socfpga_cyclone5_sockit.dts b/arch/arm/dts/socfpga_cyclone5_sockit.dts
new file mode 100644
index 0000000..e8e00ae
--- /dev/null
+++ b/arch/arm/dts/socfpga_cyclone5_sockit.dts
@@ -0,0 +1,121 @@
+/*
+ *  Copyright (C) 2013 Steffen Trumtrar <s.trumtrar@pengutronix.de>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program.  If not, see <http://www.gnu.org/licenses/>.
+ */
+
+/include/ "socfpga_cyclone5.dtsi"
+
+/ {
+	model = "Terasic SoCkit";
+	compatible = "terasic,sockit", "altr,socfpga";
+
+	chosen {
+	};
+
+	memory {
+		name = "memory";
+		device_type = "memory";
+		reg = <0x0 0x0>;
+	};
+
+	leds: gpio-leds {
+	};
+
+	buttons: gpio-keys {
+	};
+};
+
+&leds {
+	compatible = "gpio-leds";
+
+	led@0 {
+		label = "0";
+		gpios = <&gpio1 24 0>;
+		linux,default-trigger = "heartbeat";
+	};
+
+	led@1 {
+		label = "1";
+		gpios = <&gpio1 25 0>;
+	};
+
+	led@2 {
+		label = "2";
+		gpios = <&gpio1 26 0>;
+	};
+
+	led@3 {
+		label = "3";
+		gpios = <&gpio1 27 0>;
+	};
+};
+
+&buttons {
+	compatible = "gpio-keys";
+
+        key@0 {
+		label = "F1";
+		gpios = <&gpio2 21 0>;
+		linux,code = <59>;
+	};
+
+        key@1 {
+		label = "F2";
+		gpios = <&gpio2 22 0>;
+		linux,code = <60>;
+	};
+
+        key@2 {
+		label = "F3";
+		gpios = <&gpio2 23 0>;
+		linux,code = <61>;
+	};
+
+        key@3 {
+		label = "F4";
+		gpios = <&gpio2 24 0>;
+		linux,code = <62>;
+	};
+};
+
+&gmac1 {
+	phy-mode = "rgmii";
+	status = "okay";
+};
+
+&mmc {
+	status = "okay";
+};
+
+&i2c0 {
+	status = "disabled";
+
+	eeprom@51 {
+		compatible = "atmel,24c32";
+		reg = <0x51>;
+		pagesize = <0x20>;
+	};
+};
+
+&i2c1 {
+	status = "disabled";
+
+	adxl345@53 {
+		compatible = "adi,adxl34x";
+		reg = <0x53>;
+		interrupt-parent = <0x2>;
+		interrupts = <0x0 0xa6 0x4>;
+	};
+};
diff --git a/arch/arm/mach-socfpga/Kconfig b/arch/arm/mach-socfpga/Kconfig
index eb99ef7..70d0a4d 100644
--- a/arch/arm/mach-socfpga/Kconfig
+++ b/arch/arm/mach-socfpga/Kconfig
@@ -13,4 +13,8 @@ config ARCH_TEXT_BASE
 	hex
 	default 0x00100000 if MACH_SOCFPGA_CYCLONE5
 
+config MACH_SOCFPGA_TERASIC_SOCKIT
+	select HAVE_DEFAULT_ENVIRONMENT_NEW
+	bool "Terasic SoCKit"
+
 endif
diff --git a/images/Makefile.socfpga b/images/Makefile.socfpga
index ef1cc64..66aec9d 100644
--- a/images/Makefile.socfpga
+++ b/images/Makefile.socfpga
@@ -11,6 +11,13 @@ $(obj)/%.socfpgaimg: $(obj)/% FORCE
 	$(call if_changed,socfpga_image)
 
 # ----------------------- Cyclone5 based boards ---------------------------
+pblx-$(CONFIG_MACH_SOCFPGA_TERASIC_SOCKIT) += start_socfpga_sockit_xload
+FILE_barebox-socfpga-sockit-xload.img = start_socfpga_sockit_xload.pblx.socfpgaimg
+xload-$(CONFIG_MACH_SOCFPGA_TERASIC_SOCKIT) += barebox-socfpga-sockit-xload.img
+
+pblx-$(CONFIG_MACH_SOCFPGA_TERASIC_SOCKIT) += start_socfpga_sockit
+FILE_barebox-socfpga-sockit.img = start_socfpga_sockit.pblx
+barebox-$(CONFIG_MACH_SOCFPGA_TERASIC_SOCKIT) += barebox-socfpga-sockit.img
 
 ifdef CONFIG_ARCH_SOCFPGA_XLOAD
 image-y += $(xload-y)
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
