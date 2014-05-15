Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x233.google.com ([2a00:1450:4013:c00::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wkuzl-00004w-C4
 for barebox@lists.infradead.org; Thu, 15 May 2014 12:42:47 +0000
Received: by mail-ee0-f51.google.com with SMTP id e51so623793eek.24
 for <barebox@lists.infradead.org>; Thu, 15 May 2014 05:42:23 -0700 (PDT)
From: Holger Schurig <holgerschurig@gmail.com>
Date: Thu, 15 May 2014 14:47:11 +0200
Message-Id: <1400158031-16391-1-git-send-email-holgerschurig@gmail.com>
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
Subject: [PATCH v2] ahs2: initial support
To: barebox@lists.infradead.org
Cc: Holger Schurig <schurig@dlog.com>

From: Holger Schurig <schurig@dlog.com>

Signed-off-by: Holger Schurig <holgerschurig@gmail.com>

---
v2: moved the init script into the (currently empty) bin/ directory

 arch/arm/boards/Makefile                      |    1 +
 arch/arm/boards/ahs2/Makefile                 |    3 +
 arch/arm/boards/ahs2/board.c                  |   47 +++
 arch/arm/boards/ahs2/env/bin/init             |    1 +
 arch/arm/boards/ahs2/flash-header-ahs2.imxcfg |  232 ++++++++++++++
 arch/arm/boards/ahs2/lowlevel.c               |   73 +++++
 arch/arm/configs/imx_v7_defconfig             |    1 +
 arch/arm/dts/Makefile                         |    4 +-
 arch/arm/dts/imx6q-ahs2.dts                   |  405 +++++++++++++++++++++++++
 arch/arm/mach-imx/Kconfig                     |    4 +
 images/Makefile.imx                           |    5 +
 11 files changed, 775 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boards/ahs2/Makefile
 create mode 100644 arch/arm/boards/ahs2/board.c
 create mode 100644 arch/arm/boards/ahs2/env/bin/init
 create mode 100644 arch/arm/boards/ahs2/flash-header-ahs2.imxcfg
 create mode 100644 arch/arm/boards/ahs2/lowlevel.c
 create mode 100644 arch/arm/dts/imx6q-ahs2.dts

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index ae01b29..85eba47 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -1,4 +1,5 @@
 # keep sorted by CONFIG_* macro name.
+obj-$(CONFIG_MACH_AHS2)				+= ahs2/
 obj-$(CONFIG_MACH_ANIMEO_IP)			+= animeo_ip/
 obj-$(CONFIG_MACH_ARCHOSG9)			+= archosg9/
 obj-$(CONFIG_MACH_AT91SAM9260EK)		+= at91sam9260ek/
diff --git a/arch/arm/boards/ahs2/Makefile b/arch/arm/boards/ahs2/Makefile
new file mode 100644
index 0000000..a7e336b
--- /dev/null
+++ b/arch/arm/boards/ahs2/Makefile
@@ -0,0 +1,3 @@
+obj-y += board.o flash-header-ahs2.dcd.o
+extra-y += flash-header-ahs2.dcd.S flash-header-ahs2.dcd
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/ahs2/board.c b/arch/arm/boards/ahs2/board.c
new file mode 100644
index 0000000..8dfa5f3
--- /dev/null
+++ b/arch/arm/boards/ahs2/board.c
@@ -0,0 +1,47 @@
+/*
+ * Copyright (C) 2014 Holger Schurig, Advantech DLoG GmbH, Germering, Germany
+ *
+ * based on arch/arm/boards/freescale-mx6-arm2/board.c
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * (setq compile-command "make -C ~/d/mkarm compbb")
+ */
+
+#include <common.h>
+#include <sizes.h>
+#include <init.h>
+#include <asm/armlinux.h>
+#include <mach/imx6.h>
+
+
+static int ahs2_device_init(void)
+{
+	if (!of_machine_is_compatible("dlog,ahs2"))
+		return 0;
+
+	return 0;
+}
+device_initcall(ahs2_device_init);
+
+
+static int ahs2_postcore_init(void)
+{
+	if (!of_machine_is_compatible("dlog,ahs2"))
+		return 0;
+
+	barebox_set_hostname("ahs2");
+
+	imx6_init_lowlevel();
+
+	return 0;
+}
+postcore_initcall(ahs2_postcore_init);
diff --git a/arch/arm/boards/ahs2/env/bin/init b/arch/arm/boards/ahs2/env/bin/init
new file mode 100644
index 0000000..1a24852
--- /dev/null
+++ b/arch/arm/boards/ahs2/env/bin/init
@@ -0,0 +1 @@
+#!/bin/sh
diff --git a/arch/arm/boards/ahs2/flash-header-ahs2.imxcfg b/arch/arm/boards/ahs2/flash-header-ahs2.imxcfg
new file mode 100644
index 0000000..46129d7
--- /dev/null
+++ b/arch/arm/boards/ahs2/flash-header-ahs2.imxcfg
@@ -0,0 +1,232 @@
+soc imx6
+loadaddr 0x10000000
+dcdofs 0x400
+
+
+////////////////////////////////////
+///   UART2 RTS                  ///
+////////////////////////////////////
+// SW_MUX_CTL_PAD_EIM_DATA_29: SION, GPIO
+wm 32 0x020e00c4 0x00000013
+wm 32 0x020e00c8 0x00000013
+// GPIO3_GDIR29
+wm 32 0x020a4004 0xf0000000
+// GPIO3_DR
+wm 32 0x020a4000 0xf0000000
+
+
+////////////////////////////////////
+///   DDR3 IOMUX configuration   ///
+////////////////////////////////////
+
+// DDR3 IOMUX configuration
+
+// IOMUXC_SW_PAD_CTL_PAD_DRAM_SDQS0 ... _SDQS
+// KEEP_ENA, PULL_KEEP_DIS, DSE=110
+wm 32 0x020e05a8 0x00000030
+wm 32 0x020e05b0 0x00000030
+wm 32 0x020e0524 0x00000030
+wm 32 0x020e051c 0x00000030
+wm 32 0x020e0518 0x00000030
+wm 32 0x020e050c 0x00000030
+wm 32 0x020e05b8 0x00000030
+wm 32 0x020e05c0 0x00000030
+
+// IOMUXC_SW_PAD_CTL_PAD_DRAM_DQM0
+// KEEP_ENA, PULL_KEEP_DIS, DSE=110, DDR_INPUT=1, HYS=0
+wm 32 0x020e05ac 0x00020030
+wm 32 0x020e05b4 0x00020030
+wm 32 0x020e0528 0x00020030
+wm 32 0x020e0520 0x00020030
+wm 32 0x020e0514 0x00020030
+wm 32 0x020e0510 0x00020030
+wm 32 0x020e05bc 0x00020030
+wm 32 0x020e05c4 0x00020030
+// _CAS, _RAS, _SDCLK0, _SDCLK1, _RESET
+wm 32 0x020e056c 0x00020030
+wm 32 0x020e0578 0x00020030
+wm 32 0x020e0588 0x00020030
+wm 32 0x020e0594 0x00020030
+wm 32 0x020e057c 0x00020030
+
+// IOMUXC_SW_PAD_CTL_PAD_DRAM_SDCKE0 .. _SDCKE1
+// PULL_ENA, PULL_KEEP_ENA
+wm 32 0x020e0590 0x00003000
+wm 32 0x020e0598 0x00003000
+
+// IOMUXC_SW_PAD_CTL_PAD_DRAM_SDBA2
+// 0x00008000 beschreibt PUS mit b10 (100K_OHM_PU), aber das macht
+// nichts, denn dieses Feld ist sowieso als Read-Only-Feld
+// definiert.
+// KEEP_ENA, PULL_KEEP_DIS
+wm 32 0x020e058c 0x00008000
+
+// IOMUXC_SW_PAD_CTL_PAD_DRAM_SDODT0
+// PULL_ENA, PULL_KEEP_ENA, DSE=110
+wm 32 0x020e059c 0x00003030
+wm 32 0x020e05a0 0x00003030
+
+// IOMUXC_SW_PAD_CTL_GRP_B0DS ... _B7DS
+// DSE=110, drive strength 40 Ohm for DRAM_DATA00-63, DRAM_ADDR00-15,BA0,BA1,BA2?
+wm 32 0x020e0784 0x00000030
+wm 32 0x020e0788 0x00000030
+wm 32 0x020e0794 0x00000030
+wm 32 0x020e079c 0x00000030
+wm 32 0x020e07a0 0x00000030
+wm 32 0x020e07a4 0x00000030
+wm 32 0x020e07a8 0x00000030
+wm 32 0x020e0748 0x00000030
+// IOMUXC_SW_PAD_CTL_GRP_ADDDS
+wm 32 0x020e074c 0x00000030
+
+// IOMUXC_SW_PAD_CTL_GRP_DDRMODE_CTL
+// DDR_INPUT=1, for DRAM_SDQSx_P
+wm 32 0x020e0750 0x00020000
+
+// IOMUXC_SW_PAD_CTL_GRP_DDRPKE
+// PULL_KEEP_DIS
+wm 32 0x020e0758 0x00000000
+
+// IOMUXC_SW_PAD_CTL_GRP_DDRMODE
+// DDR_INPUT=1, for DRAM_DATAxx
+wm 32 0x020e0774 0x00020000
+
+// IOMUXC_SW_PAD_CTL_GRP_CTLDS
+// DSE=110, drive strength 40 Ohm for DRAM_CSx/SDBA2/SDCKEx(SDWE_B
+wm 32 0x020e078c 0x00000030
+
+// IOMUXC_SW_PAD_CTL_GRP_DDR_TYPE
+// DDR_SEL=11 (DDR3 mode)
+wm 32 0x020e0798 0x000c0000
+
+
+
+
+/////////////////////////////////////////////////////////////
+///   Initialize 2Gb DDR3L - Micron_MT41K128M16JT-125IT   ///
+/////////////////////////////////////////////////////////////
+
+// MMDC1_MPRDDQBY0DL, MMDC1_MPRDDQBY1DL, MMDC1_MPRDDQBY2DL, MMDC1_MPRDDQBY3DL
+// 3 delay units to DQx
+wm 32 0x021b081c 0x33333333
+wm 32 0x021b0820 0x33333333
+wm 32 0x021b0824 0x33333333
+wm 32 0x021b0828 0x33333333
+// MMDC2_MPRDDQBY0DL, MMDC2_MPRDDQBY1DL, MMDC2_MPRDDQBY2DL, MMDC2_MPRDDQBY3DL
+wm 32 0x021b481c 0x33333333
+wm 32 0x021b4820 0x33333333
+wm 32 0x021b4824 0x33333333
+wm 32 0x021b4828 0x33333333
+
+// MMDC0_MDSCR: CON_REQ
+wm 32 0x021b001c 0x00008000
+
+// MMDC0_MDCFG0
+// tCL - 8ck, tFAW - 24ck, tXPDLL - 13ck (24ns), tXP - 4ck (6.0ns), tXS - 91ck, tRFC - 86ck
+wm 32 0x021b000c 0x555a7975
+
+// MMDC0_MDCFG1
+// tWCL - 5ck, tMRD - 12ck, tWR - 8ck, tRPA - tRP+1, tRAS - 20ck, tRC - 27ck, tRP - 8ck, tRCD - 8ck
+wm 32 0x021b0010 0xff538f64
+// PTX-C:     tMRD = 3
+// Sabrelite: tMRD = 11
+
+// MMDC0_MDCFG2
+// tRRD - 4ck, tWTR - 4ck, tRTP - 4ck, tDLLK - 512ck
+wm 32 0x021b0014 0x01ff00db
+
+// MMDC1_MDRWD
+wm 32 0x021b002c 0x000026d2
+// MMDC1_MDOR
+wm 32 0x021b0030 0x005b0e21
+
+// MMDC0_MDOTC
+// tAOFPD - 2ck, tAONPD - 2ck, tANPD - 5ck, tAXPD - 5ck, tODTLon - 4ck, tODT_idle_off - 4ck
+wm 32 0x021b0008 0x09444040
+
+// MMDC0_MDMISC
+wm 32 0x021b0018 0x00081740
+// MMDC0_MDOR
+// tXPR - 92ck, SDE_to_RST - 14ck, RST_to_CKE - 33ck
+wm 32 0x021b0030 0x005a0e21
+// MMDC0_MDRWD
+// RTT_DIFF - 2ck, RTW_DIFF - 2ck, WTW_DIFF - 3ck, WTR_DIFF - 3ck, RTW_SAME - 2ck, tDAI - 1ck no DDR2
+wm 32 0x021b002c 0x000026d2
+// MMDC0_MDPDC
+// PRCT_1 - dis, PRCT_0 - dis, tCKE - 4ck, PWDT_1 - dis, PWDT_0 - dis, SLOW_PD - FAST_MODE, BOTH_CS_PD - OFF, tCKSRX - 5ck, tCKSRE - 5ck
+wm 32 0x021b0004 0x00020036
+
+// MMDC0_MDPDC
+// PRCT_1 - dis, PRCT_0 - dis, tCKE - 4ck, PWDT_1 - 256ck, PWDT_0 - 256ck, SLOW_PD - FAST_MODE, BOTH_CS_PD - ON, tCKSRX - 5ck, tCKSRE - 5ck
+wm 32 0x021b0004 0x00025576
+
+// MMDC0_MDASP
+// CS0_END - 0x4fffffff
+wm 32 0x021b0040 0x00000027
+
+// MDC0_MDCTL
+// SDE_0 - ENA, SDE_1 - DIS, row - 14bits, col - 10bits, BL (burst length) - 8, DSIZ - 2 (64-bit data bus)
+wm 32 0x021b0000 0x831a0000
+
+// DDR chips init sequence via MMDC Core Special Command Register MMDC0_MDSCR, changed to only CS0 for IMX6.10
+// checked against Micron Datasheet for correct sequence, ULEI 31.01.2014
+
+// MMDC0_MDSCR
+wm 32 0x021b001c 0x04088032
+wm 32 0x021b001c 0x0408803a
+wm 32 0x021b001c 0x00008033
+wm 32 0x021b001c 0x0000803b
+wm 32 0x021b001c 0x00048031
+wm 32 0x021b001c 0x00048039
+wm 32 0x021b001c 0x09408030
+wm 32 0x021b001c 0x09408038
+wm 32 0x021b001c 0x04008040
+wm 32 0x021b001c 0x04008048
+
+// end DDR chips init sequence
+
+
+// DDR_PHY_Px_MPZQHWCTRL
+// ZQ_EARLY_COMP_EN_TIMER - 21ck, TZQ_CS - 128ck, TZQ_OPER - 256ck, - TZQ_INIT - 512ck, ZQ_HW_FOR - 0, ZQ_HW_PD_RES - 0: ZQ_HW_PU_RES - 0, ZQ_HW_PER - 1ms, ZQ_MODE - 3
+wm 32 0x021b0800 0xa5380003
+wm 32 0x021b4800 0xa5380003
+
+// MMDC0_MDREF
+// REF_CNT - res, REF_SEL - per triggered at 32kHz, REFR - 4refs, START_REF - start
+wm 32 0x021b0020 0x00005800
+
+// MMDCx_MPODTCTRL
+// ODT3_INT_RES - 120 Ohm, ODT2_INT_RES - 120 Ohm, ODT1_INT_RES - 120 Ohm, ODT0_INT_RES - 120 Ohm, ODT_RD_ACT_EN - dis, ODT_RD_PAS_EN - ena, ODT_WR_ACT_EN - ena, ODT_WR_PAS_EN - ena,
+wm 32 0x021b0818 0x00011117
+wm 32 0x021b4818 0x00011117
+
+// MMDCx_MPDGCTRL0
+// add 1/2 cycle delay to DQS gating
+wm 32 0x021b083c 0x433f033f
+wm 32 0x021b483c 0x433f033f
+// MMDCx_MPDGCTRL1
+// add 1/2 cycle delay to DQS gating
+wm 32 0x021b0840 0x033f033f
+wm 32 0x021b4840 0x033f033f
+
+// MMDCx_PHY_MPRDDLCTL
+wm 32 0x021b0848 0x4337373e
+wm 32 0x021b4848 0x3634303d
+wm 32 0x021b0850 0x35374640
+wm 32 0x021b4850 0x4a294b35
+
+wm 32 0x021b080c 0x001f001f
+wm 32 0x021b0810 0x001f001f
+
+wm 32 0x021b480c 0x00440044
+wm 32 0x021b4810 0x00440044
+wm 32 0x021b08b8 0x00000800
+wm 32 0x021b48b8 0x00000800
+wm 32 0x021b001c 0x00000000
+
+// enable AXI cache for VDOA/VPU/IPU
+wm 32 0x020e0010 0xf00000cf // IOMUXC_GPR4
+
+// IPU AXI-id0 Qos=0xf(bypass AXI-id1 Qos=0x7
+wm 32 0x020e0018 0x007f007f
+wm 32 0x020e001c 0x007f007f
diff --git a/arch/arm/boards/ahs2/lowlevel.c b/arch/arm/boards/ahs2/lowlevel.c
new file mode 100644
index 0000000..96f917b
--- /dev/null
+++ b/arch/arm/boards/ahs2/lowlevel.c
@@ -0,0 +1,73 @@
+#include <common.h>
+#include <sizes.h>
+#include <io.h>
+#include <debug_ll.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+#include <mach/imx6-regs.h>
+
+
+static inline void early_uart1_init(void)
+{
+	// 2681: IOMUXC_UART1_UART_RX_DATA_SELECT_INPUT to ALT1 (CSI0_DATA10_ALT3 )
+	// 2621: IOMUXC_ECSPI2_MISO_SELECT_INPUT to ALT2 (CSI0_DATA10_ALT2)
+	// 2092: IOMUXC_SW_MUX_CTL_PAD_CSI0_DATA10 to ALT3 (UART1_TX_DATA)
+	writel(0x1, MX6_IOMUXC_BASE_ADDR + 0x920);
+	writel(0x2, MX6_IOMUXC_BASE_ADDR + 0x814);
+	writel(0x3, MX6_IOMUXC_BASE_ADDR + 0x280);
+
+	// 2622: IOMUXC_ECSPI2_SS0_SELECT_INPUT to ALT2 (CSI0_DATA11_ALT2)
+	// 2093: IOMUXC_SW_MUX_CTL_PAD_CSI0_DATA11 to ALT3 (UART1_RX_DATA)
+	writel(0x2, MX6_IOMUXC_BASE_ADDR + 0x820);
+	writel(0x3, MX6_IOMUXC_BASE_ADDR + 0x284);
+
+	// 2478: IOMUXC_SW_PAD_CTL_PAD_CSI0_DATA10
+	// 2479: IOMUXC_SW_PAD_CTL_PAD_CSI0_DATA11
+	writel(0x0001b0b1, MX6_IOMUXC_BASE_ADDR + 0x650);
+	writel(0x0001b0b1, MX6_IOMUXC_BASE_ADDR + 0x654);
+
+	// 5229 UCR1: disable UART
+	writel(0x00000000, MX6_UART1_BASE_ADDR + 0x80);
+	// 5231 UCR2: IgnRTS,WS8,TXEN,RXEN,SRTS
+	writel(0x00004027, MX6_UART1_BASE_ADDR + 0x84);
+	// 5234 UCR3: RXDEMUXSEL
+	writel(0x00000004, MX6_UART1_BASE_ADDR + 0x88);
+	// 5238 UFCR: RFDIV '101 (don't divide), RXTL 1
+	writel(0x00000a81, MX6_UART1_BASE_ADDR + 0x90);
+	// 5245 UESC: set ESC character to '+'
+	writel(0x0000002b, MX6_UART1_BASE_ADDR + 0x9c);
+	// 5248 ONEMS: decimal 80000
+	writel(0x00013880, MX6_UART1_BASE_ADDR + 0xb0);
+	// 5246 UBIR: decimal 1151, see page 5205
+	writel(0x0000047f, MX6_UART1_BASE_ADDR + 0xa4);
+	// 5247 UMBR: decimal 49999
+	writel(0x0000c34f, MX6_UART1_BASE_ADDR + 0xa8);
+	// UCR1: enable UART
+	writel(0x00000001, MX6_UART1_BASE_ADDR + 0x80);
+}
+
+
+extern char __dtb_imx6q_ahs2_start[];
+
+ENTRY_FUNCTION(start_imx6q_ahs2, r0, r1, r2)
+{
+	void  *fdt;
+
+	arm_cpu_lowlevel_init();
+
+#if 0
+	{
+		int i;
+		for (i = 0x68; i <= 0x80; i += 4)
+			writel(0xffffffff, MX6_CCM_BASE_ADDR + i);
+	}
+#endif
+
+	if (IS_ENABLED(CONFIG_DEBUG_LL)) {
+		early_uart1_init();
+	}
+
+	fdt = __dtb_imx6q_ahs2_start - get_runtime_offset();
+
+	barebox_arm_entry(0x10000000, SZ_1G, fdt);
+}
diff --git a/arch/arm/configs/imx_v7_defconfig b/arch/arm/configs/imx_v7_defconfig
index 0c32d7d..e5cbc25 100644
--- a/arch/arm/configs/imx_v7_defconfig
+++ b/arch/arm/configs/imx_v7_defconfig
@@ -1,5 +1,6 @@
 CONFIG_ARCH_IMX=y
 CONFIG_IMX_MULTI_BOARDS=y
+CONFIG_MACH_AHS2=y
 CONFIG_MACH_EFIKA_MX_SMARTBOOK=y
 CONFIG_MACH_FREESCALE_MX51_PDK=y
 CONFIG_MACH_FREESCALE_MX53_LOCO=y
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 63d59f7..e6d46e1 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -10,7 +10,8 @@ dtb-$(CONFIG_ARCH_IMX53) += imx53-mba53.dtb \
 	imx53-qsb.dtb \
 	imx53-qsrb.dtb \
 	imx53-voipac-bsb.dtb
-dtb-$(CONFIG_ARCH_IMX6) += imx6q-gk802.dtb \
+dtb-$(CONFIG_ARCH_IMX6) += imx6q-ahs2.dtb \
+	imx6q-gk802.dtb \
 	imx6dl-dfi-fs700-m60-6s.dtb \
 	imx6q-dfi-fs700-m60-6q.dtb \
 	imx6q-dmo-edmqmx6.dtb \
@@ -52,6 +53,7 @@ pbl-$(CONFIG_MACH_DFI_FS700_M60) += imx6q-dfi-fs700-m60-6q.dtb.o imx6dl-dfi-fs70
 pbl-$(CONFIG_MACH_NVIDIA_BEAVER) += tegra30-beaver.dtb.o
 pbl-$(CONFIG_MACH_PCM051) += am335x-phytec-phycore.dtb.o
 pbl-$(CONFIG_MACH_PHYTEC_PFLA02) += imx6s-phytec-pbab01.dtb.o imx6dl-phytec-pbab01.dtb.o imx6q-phytec-pbab01.dtb.o
+pbl-$(CONFIG_MACH_AHS2) += imx6q-ahs2.dtb.o
 pbl-$(CONFIG_MACH_REALQ7) += imx6q-dmo-edmqmx6.dtb.o
 pbl-$(CONFIG_MACH_SOLIDRUN_CUBOX) += dove-cubox-bb.dtb.o
 pbl-$(CONFIG_MACH_GK802) += imx6q-gk802.dtb.o
diff --git a/arch/arm/dts/imx6q-ahs2.dts b/arch/arm/dts/imx6q-ahs2.dts
new file mode 100644
index 0000000..981c1fa
--- /dev/null
+++ b/arch/arm/dts/imx6q-ahs2.dts
@@ -0,0 +1,405 @@
+/dts-v1/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/interrupt-controller/irq.h>
+#include "imx6q.dtsi"
+
+/ {
+	model = "Advantech DLoG AHS2";
+	compatible = "dlog,ahs2", "fsl,imx6q";
+
+	chosen {
+		stdout-path = &uart1;
+		bootargs = "console=ttymxc1,115200";
+
+		/*
+		environment@0 {
+			compatible = "barebox,environment";
+			device-path = &flash, "partname:barebox-environment";
+		};
+		*/
+	};
+
+	aliases {
+		ethernet0 = &fec;
+	};
+
+	memory {
+		reg = <0x10000000 0x40000000>;
+	};
+};
+
+
+/* LAN1, Schematics sheet 24 */
+&fec {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_fec>;
+	phy-mode = "rmii";
+	phy-reset-gpios = <&gpio2 4 GPIO_ACTIVE_LOW>;
+	phy-handle = <&phy>;
+	status = "okay";
+
+	phy: ethernet-phy@0 {
+		speed = <10>;
+		duplex = <1>;
+	};
+};
+
+/* SPI, Schematics sheet 15 */
+&ecspi3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_ecspi3>;
+	fsl,spi-num-chipselects = <3>;
+	cs-gpios = <&gpio4 24 0>, <&gpio4 25 0>, <&gpio4 26 0>;
+	/*
+	fsl,spi-num-chipselects = <1>;
+	cs-gpios = <&gpio4 24 0>;
+	*/
+	status = "okay";
+
+	/* SPI BOOT Flash, Schematics sheet 15 */
+	flash: spiflash@0 {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		compatible = "m25p80";
+		spi-max-frequency = <10000000>;
+		reg = <0>;
+
+		/*
+		partition@0 {
+			label = "barebox-environment";
+			reg = <0x0 0x4000>;
+		};
+		*/
+	};
+
+	/* SPI Backup Flash, Schematics sheet 15
+	flash2: spiflash@1 {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		compatible = "m25p80";
+		spi-max-frequency = <20000000>;
+		reg = <1>;
+	};
+	*/
+
+	/* TODO Bluetooth, Schematics sheet 23
+	bt800: {
+		reg = <2>;
+	}
+	*/
+};
+
+
+/*
+ * UART1: debugging
+ * Schematics sheet 24, 11, 34
+ */
+&uart1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart1>;
+	fsl,uart-has-rtscts;
+	status = "okay";
+};
+
+
+/*
+ * UART2: normal COM port
+ * Schematics sheet 24, 34
+ */
+&uart2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart2>;
+	fsl,uart-has-rtscts;
+	status = "okay";
+};
+
+
+/*
+ * UART3: normal COM port
+ * Schematics sheet 24, 34
+ */
+&uart3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart3>;
+	status = "okay";
+};
+
+
+/*
+ * UART4: GPS
+ * Schematics sheet 24, 29
+ */
+&uart4 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart4>;
+	status = "okay";
+};
+
+
+/*
+ * UART5: via Font-FFC signal 180_MFP,180_MFN with 9600 to Touch Controller
+ * Schematics sheet 24, 27
+ */
+&uart5 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart5>;
+	status = "okay";
+};
+
+
+/*
+ * i2c 1
+ *
+ * detect: i2c_probe 0 0x00 0x7f
+ */
+&i2c1 {
+	clock-frequency = <100000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c1>;
+	status = "okay";
+
+	/* Schematics Sheet 8.3 */
+	pmic: ltc3676@3c {
+		compatible = "ltc,ltc3676";
+		reg = <0x3c>;
+		/* TODO interrupt-parent = <&gpio5>; */
+		/* TODO interrupts = <16 8>; */
+		/* SD3_DAT2_GPIO7_06 */
+
+		regulators {
+			/* 3.00V @ 30mA */
+			ldo1_reg: ltc3676__ldo1 {
+				regulator-name = "3P0V_VSNVS";
+				regulator-min-microvolt = <3000000>;
+				regulator-max-microvolt = <3000000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+			/* 2.8V @ 30mA */
+			ldo2_reg: ltc3676__ldo2 {
+				regulator-name = "2P8V_VDDHIGH";
+				regulator-min-microvolt = <2800000>;
+				regulator-max-microvolt = <2800000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+			/* 1.8V @ 300mA */
+			ldo3_reg: ltc3676__ldo3 {
+				regulator-name = "1P8V";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+			/* 1.2V @ 300 mA */
+			ldo4_reg: ltc3676__ldo4 {
+				regulator-name = "1P2V_FPGA";
+				regulator-min-microvolt = <1200000>;
+				regulator-max-microvolt = <1200000>;
+			};
+			/* 2.5V q 1.5A */
+			sw1_reg: ltc3676__sw1 {
+				regulator-name = "2P5V";
+				regulator-min-microvolt = <2500000>;
+				regulator-max-microvolt = <2500000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+			/* 1.37V @ 1.5A */
+			sw2_reg: ltc3676__sw2 {
+				regulator-name = "V_SOC";
+				regulator-min-microvolt = <13700000>;
+				regulator-max-microvolt = <13700000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+			/* 1.37V @ 2.5A */
+			sw3_reg: ltc3676__sw3 {
+				regulator-name = "V_ARM";
+				regulator-min-microvolt = <1370000>;
+				regulator-max-microvolt = <1379000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+			/* 3.3V @ 2.5A or 5V @ 2.5A */
+			/* Note: this is the only voltage we can/should/must control */
+			sw4_reg: ltc3676__sw4 {
+				regulator-name = "VCC_LED";
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <5000000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+		};
+	};
+};
+
+
+
+
+/*
+ * i2c 3: main i2c control
+ *
+ *   detect: i2c_probe 1 0x00 0x7f
+ */
+&i2c3 {
+	clock-frequency = <100000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c3>;
+	status = "okay";
+
+	/* CES EEPROM, Schematics sheet 15
+	 *
+	 *   dump:  md -b -s /dev/eeprom0
+	 *   write: mw -b -d /dev/eeprom0 0 1 2 3 4
+	 */
+	eeprom: eeprom@50 {
+		compatible = "atmel,24c02", "at24";
+		reg = <0x50>;
+		pagesize = <16>;
+	};
+
+	/* Temperature sensing, Schematics sheet 15 */
+	sensor2: tmp102@48 {
+		compatible = "lm75";
+		reg = <0x48>;
+	};
+
+	/* RTC with INT, Schematics sheet 15
+	 *
+	 *   dump seconds, minute, hour: i2c_read -b 1 -a 0x68 -r 0 -c 3
+	 */
+	rtc: ds1337@68 {
+		compatible = "dallas,ds1672";
+		reg = <0x68>;
+		/* TODO: interrupt */
+	};
+};
+
+
+/* this is the slot */
+&usdhc2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usdhc2>;
+	cd-gpios = <&gpio1 4 0>;
+	wp-gpios = <&gpio1 2 0>;
+	status = "okay";
+};
+
+
+/* this is the built in eMMC */
+&usdhc4 {
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_usdhc4>;
+		bus-width = <8>;
+		non-removable;
+		status = "okay";
+};
+
+
+
+&iomuxc {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_hog>;
+
+	ahs2 {
+		pinctrl_hog: hoggrp {
+			fsl,pins = <
+				MX6QDL_PAD_GPIO_4__GPIO1_IO04 0x80000000 /* usdhc2 CD */
+				MX6QDL_PAD_GPIO_2__GPIO1_IO02 0x80000000 /* usdhc2 WP */
+				>;
+		};
+
+		/* i2c1: Schematics sheet 15 "CPU SPI-NOR,CAN,I2C" */
+		pinctrl_i2c1: i2c1grp {
+			fsl,pins = <MX6QDL_I2C1_PINGRP2>;
+		};
+
+		/* i2c2: not in use */
+
+		/* i2c3: Schematics sheet 15 "CPU SPI-NOR,CAN,I2C" */
+		pinctrl_i2c3: i2c3grp {
+			fsl,pins = <
+				MX6QDL_I2C3_PINGRP1  /* EIM D17,18 */
+				>;
+		};
+
+		/* uart1: Schematics sheet 18 "CPU UART,USB,LVDS" */
+		pinctrl_uart1: uart1grp {
+			fsl,pins = <
+				MX6QDL_UART1_PINGRP1  /* CSI DAT10,11 */
+				MX6QDL_PAD_EIM_D20__UART1_RTS_B 0x1b0b1
+				MX6QDL_PAD_EIM_D20__UART1_CTS_B 0x1b0b1
+				>;
+		};
+
+		pinctrl_uart2: uart2grp {
+			fsl,pins = <
+				MX6QDL_UART2_PINGRP2
+				>;
+		};
+
+		pinctrl_uart3: uart3grp {
+			fsl,pins = <
+				MX6QDL_UART3_PINGRP3
+				>;
+		};
+
+		pinctrl_uart4: uart4grp {
+			fsl,pins = <
+				MX6QDL_PAD_CSI0_DAT12__UART4_TX_DATA 0x1b0b1
+				MX6QDL_PAD_CSI0_DAT13__UART4_RX_DATA 0x1b0b1
+				>;
+		};
+
+		pinctrl_uart5: uart5grp {
+			fsl,pins = <
+				MX6QDL_PAD_CSI0_DAT14__UART5_TX_DATA 0x1b0b1
+				MX6QDL_PAD_CSI0_DAT15__UART5_RX_DATA 0x1b0b1
+				>;
+		};
+
+		pinctrl_ecspi3: ecspi3grp {
+			fsl,pins = <
+				MX6QDL_PAD_DISP0_DAT2__ECSPI3_MISO      0x100b1
+				MX6QDL_PAD_DISP0_DAT1__ECSPI3_MOSI      0x100b1
+				MX6QDL_PAD_DISP0_DAT0__ECSPI3_SCLK      0x100b1
+				MX6QDL_PAD_DISP0_DAT3__GPIO4_IO24  0x80000000 /* SS0, SPI NOR chipselect */
+				/*
+				MX6QDL_PAD_DISP0_DAT4__GPIO4_IO25  0x000b1
+				MX6QDL_PAD_DISP0_DAT5__GPIO4_IO26  0x000b1
+				*/
+				>;
+		};
+
+		pinctrl_usdhc2: usdhc2grp {
+			fsl,pins = <MX6QDL_USDHC2_PINGRP_D4>;
+		};
+
+		pinctrl_usdhc4: usdhc4grp {
+			fsl,pins = <MX6QDL_USDHC4_PINGRP_D8>;
+		};
+
+		/* Schematics sheet 24 */
+		pinctrl_fec: fecgrp {
+			fsl,pins = <
+				/* values are from SRC/BOOTLOADER/COMMON/iomux_SW_PAD_CTL_PAD.s */
+				MX6QDL_PAD_ENET_TXD0__ENET_TX_DATA0 0x1b0b0
+				MX6QDL_PAD_ENET_TXD1__ENET_TX_DATA1 0x1b0b0
+				MX6QDL_PAD_ENET_TX_EN__ENET_TX_EN   0x1b0b0
+				MX6QDL_PAD_ENET_RXD0__ENET_RX_DATA0 0x1b0b0
+				MX6QDL_PAD_ENET_RXD1__ENET_RX_DATA1 0x1b0b0
+				MX6QDL_PAD_ENET_RX_ER__ENET_RX_ER   0x1b0b0
+				MX6QDL_PAD_ENET_MDIO__ENET_MDIO     0x0B850
+				MX6QDL_PAD_ENET_MDC__ENET_MDC       0x1b0b0
+				MX6QDL_PAD_ENET_CRS_DV__ENET_RX_EN  0x1b0b0
+				MX6QDL_PAD_GPIO_16__ENET_REF_CLK    0x1b0b0
+				/*
+				TODO PHY LAN8720 RESET: NAND_DAT4__GPIO2_IO24 1b0b0
+				*/
+				>;
+		};
+
+	};
+};
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 3b85f45..d9805a7 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -246,6 +246,10 @@ config MACH_TQMA6X
 	bool "TQ tqma6x on mba6x"
 	select ARCH_IMX6
 
+config MACH_AHS2
+	bool "Advantech DLoG AHS2"
+	select ARCH_IMX6
+
 config MACH_SABRELITE
 	bool "Freescale i.MX6 Sabre Lite"
 	select ARCH_IMX6
diff --git a/images/Makefile.imx b/images/Makefile.imx
index 5085a55..b5a7cd0 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -61,6 +61,11 @@ FILE_barebox-tq-mba53-1gib.img = start_imx53_mba53_1gib.pblx.imximg
 image-$(CONFIG_MACH_TQMA53) += barebox-tq-mba53-1gib.img
 
 # ----------------------- i.MX6 based boards ---------------------------
+pblx-$(CONFIG_MACH_AHS2) += start_imx6q_ahs2
+CFG_start_imx6q_ahs2.pblx.imximg = $(board)/ahs2/flash-header-ahs2.imxcfg
+FILE_barebox-ahs2.img = start_imx6q_ahs2.pblx.imximg
+image-$(CONFIG_MACH_AHS2) += barebox-ahs2.img
+
 pblx-$(CONFIG_MACH_REALQ7) += start_imx6_realq7
 CFG_start_imx6_realq7.pblx.imximg = $(board)/datamodul-edm-qmx6/flash-header.imxcfg
 FILE_barebox-datamodul-edm-qmx6.img = start_imx6_realq7.pblx.imximg
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
