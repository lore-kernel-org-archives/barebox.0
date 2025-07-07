Delivery-date: Mon, 07 Jul 2025 13:56:23 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uYkSN-00F13f-31
	for lore@lore.pengutronix.de;
	Mon, 07 Jul 2025 13:56:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uYkSG-0003Dq-KX
	for lore@pengutronix.de; Mon, 07 Jul 2025 13:56:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hBCXrBOE7ntZUDsGLpgiaJbqlF+fXJxhqnAfTwyx21o=; b=etYz5QCs+lMkNrMdX9P4H30Yjw
	T3Gf2td5iavaTPrWuo4vfYfl7q5hyO4zBTv4mFM4UEvAp6vbQ0RJ97nAubeWWQPVgDQkojRkT5l23
	4NS47/pX8RBjgfxTANppPc+mI8GoSiCtKBXnxAHuX5N5bGC2O6TfLAHlV6+jwzf1po4zgb81J0+xC
	eGW87GUHnrX7PJY0xTaiojNwnDAT77zFSmd0e3gmqypZ0AjYlRp8aP84gosYWYMw2OlovPR2AFVGq
	pxOPGDskRZaPYoqRXBYqYk8xgHmPYNone01UiDT8Tachut9BLoxdnx0LqtHW43wjgQlAdZmf2HfNy
	UXEAqLvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uYkQw-00000002LXT-16bU;
	Mon, 07 Jul 2025 11:54:54 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uYjwE-00000002Gjr-1MsL
	for barebox@bombadil.infradead.org;
	Mon, 07 Jul 2025 11:23:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=hBCXrBOE7ntZUDsGLpgiaJbqlF+fXJxhqnAfTwyx21o=; b=e3wtiky0lWrgKX8R6zIUXA/ShZ
	4j//uVYXhzRje+ikFyXtNgpTRt1KuQ7TlU3cUbTrdN/7QWi5hidFU8pxvKen2kP3vSTRx/59h6pZY
	vbKCtzlnyXpi1lV5jc5X3OPCPlQaD1nLiiqfz+0SMr1lGVVZM6KLG8/Vf9snlhN8GBSSRHO9KBbYa
	6wgVRPxM9Pq/47r0ma7SKtDqgvntPmsOjxXn2BJojGmxu5VDNSFDxI4NekTmmFQLVdKQywkD8lBA5
	dbbWr7HDBTcxnsJM5H6QI3KC4rBJopcIjqv5ITA0rIPpFr8E8gXvKd8Daz3d1DIHq3CMRjaV2+eOF
	3w2dS2Dw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uYjw8-00000008Ta8-2luw
	for barebox@lists.infradead.org;
	Mon, 07 Jul 2025 11:23:09 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1uYjvv-0001uY-D1; Mon, 07 Jul 2025 13:22:51 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon, 07 Jul 2025 13:22:46 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250707-v2024-10-0-topic-socfpga-agilex5-v4-4-af7ee9182480@pengutronix.de>
References: <20250707-v2024-10-0-topic-socfpga-agilex5-v4-0-af7ee9182480@pengutronix.de>
In-Reply-To: <20250707-v2024-10-0-topic-socfpga-agilex5-v4-0-af7ee9182480@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
X-Mailer: b4 0.14.2
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,URG_BIZ
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v4 04/10] arm: socfgpa: add support for SoCFPGA Agilex5
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add initial support for the Intel Agilex5 SoCFPGA platform.

Code adapted from
    https://github.com/ArrowElectronics/u-boot-socfpga
    84c6b5dd141471ccedaa116a681dedd443151282 arrow/socfpga_v2023.10

The Agilex5 devices have:
  - Quad-core cluster consisting of Dual-core 64-bit Arm Cortex-A76, and dual-core 64-bit Arm Cortex-A55 (SoC only)
  - High-Speed transceivers, up to 17.1 Gbps (group B) and 28.1 Gbps (group A)
  - PCIe Gen4 x4
  - DDR4/LPDDR4/LPDDR5, and DDR5 (group A)
  - Native MIPI CSI-2 and D-PHY (multiple channels)
  - Secure Device Manager (SDM) to support secure configuration and tamper prevention, and hardened cryptographic engines
(from https://www.rocketboards.org/foswiki/Documentation/ArrowAXE5EagleDevelopmentKit)

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/Kconfig                              |   3 -
 arch/arm/dts/socfpga_agilex5.dtsi             |  51 +++
 arch/arm/mach-socfpga/Kconfig                 |  38 +-
 arch/arm/mach-socfpga/Makefile                |  13 +
 arch/arm/mach-socfpga/agilex5-clock-manager.c | 383 ++++++++++++++++++
 arch/arm/mach-socfpga/agilex5-sdram.c         | 347 ++++++++++++++++
 arch/arm/mach-socfpga/agilex5-secreg.c        | 289 ++++++++++++++
 arch/arm/mach-socfpga/atf.c                   |  34 ++
 arch/arm/mach-socfpga/cpu_init.c              |  43 ++
 arch/arm/mach-socfpga/iossm_mailbox.c         | 511 ++++++++++++++++++++++++
 arch/arm/mach-socfpga/iossm_mailbox.h         | 157 ++++++++
 arch/arm/mach-socfpga/mailbox_s10.c           | 347 ++++++++++++++++
 arch/arm/mach-socfpga/secure_reg_helper.c     |  75 ++++
 arch/arm/mach-socfpga/smc_api.c               |  43 ++
 arch/arm/mach-socfpga/soc64-system-manager.c  | 102 +++++
 arch/arm/mach-socfpga/soc64-wrap-handoff.c    | 124 ++++++
 common/Kconfig.debug_ll                       |  17 +
 firmware/Kconfig                              |   3 +
 firmware/Makefile                             |   1 +
 images/Makefile.socfpga                       |   8 +
 include/mach/socfpga/agilex5-clk.h            | 266 +++++++++++++
 include/mach/socfpga/atf.h                    |  14 +
 include/mach/socfpga/generic.h                |   3 +
 include/mach/socfpga/init.h                   |   2 +
 include/mach/socfpga/intel-smc.h              | 545 ++++++++++++++++++++++++++
 include/mach/socfpga/mailbox_s10.h            | 191 +++++++++
 include/mach/socfpga/secure_reg_helper.h      |  19 +
 include/mach/socfpga/smc_api.h                |  12 +
 include/mach/socfpga/soc64-firewall.h         | 177 +++++++++
 include/mach/socfpga/soc64-handoff.h          |  50 +++
 include/mach/socfpga/soc64-regs.h             | 195 +++++++++
 include/mach/socfpga/soc64-reset-manager.h    |  40 ++
 include/mach/socfpga/soc64-sdram.h            | 203 ++++++++++
 include/mach/socfpga/soc64-system-manager.h   | 176 +++++++++
 34 files changed, 4475 insertions(+), 7 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index d283ef7793a1f13e6428d3b1037460cb806b566f..714f387904a91a8fb229e3020c119e3124df99fc 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -110,10 +110,7 @@ config ARCH_PXA
 
 config ARCH_SOCFPGA
 	bool "Altera SOCFPGA"
-	depends on 32BIT
 	select HAS_DEBUG_LL
-	select ARM_SMP_TWD
-	select CPU_V7
 	select COMMON_CLK
 
 config ARCH_TEGRA
diff --git a/arch/arm/dts/socfpga_agilex5.dtsi b/arch/arm/dts/socfpga_agilex5.dtsi
new file mode 100644
index 0000000000000000000000000000000000000000..96039a1f36c5bfa7d8e37ca696d0f1a1fec79951
--- /dev/null
+++ b/arch/arm/dts/socfpga_agilex5.dtsi
@@ -0,0 +1,51 @@
+// SPDX-License-Identifier:     GPL-2.0
+/*
+ * Copyright (C) 2019-2023 Intel Corporation <www.intel.com>
+ */
+
+&soc {
+	gmac0: ethernet@10810000 {
+		compatible = "intel,socfpga-dwxgmac", "snps,dwxgmac-2.10", "snps,dwxgmac";
+		reg = <0x10810000 0x3500>;
+		interrupts = <0 190 4>;
+		interrupt-names = "macirq";
+		resets = <&rst EMAC0_RESET>, <&rst EMAC0_OCP_RESET>;
+		reset-names = "stmmaceth", "stmmaceth-ocp";
+		tx-fifo-depth = <32768>;
+		rx-fifo-depth = <16384>;
+		altr,sysmgr-syscon = <&sysmgr 0x44 0>;
+		clocks = <&clkmgr AGILEX5_EMAC0_CLK>;
+		clock-names = "stmmaceth";
+		status = "disabled";
+	};
+
+	gmac1: ethernet@10820000 {
+		compatible = "intel,socfpga-dwxgmac", "snps,dwxgmac-2.10", "snps,dwxgmac";
+		reg = <0x10820000 0x3500>;
+		interrupts = <0 207 4>;
+		interrupt-names = "macirq";
+		resets = <&rst EMAC1_RESET>, <&rst EMAC1_OCP_RESET>;
+		reset-names = "stmmaceth", "stmmaceth-ocp";
+		tx-fifo-depth = <32768>;
+		rx-fifo-depth = <16384>;
+		altr,sysmgr-syscon = <&sysmgr 0x48 0>;
+		clocks = <&clkmgr AGILEX5_EMAC1_CLK>;
+		clock-names = "stmmaceth";
+		status = "disabled";
+	};
+
+	gmac2: ethernet@10830000 {
+		compatible = "intel,socfpga-dwxgmac", "snps,dwxgmac-2.10", "snps,dwxgmac";
+		reg = <0x10830000 0x3500>;
+		interrupts = <0 224 4>;
+		interrupt-names = "macirq";
+		resets = <&rst EMAC2_RESET>, <&rst EMAC2_OCP_RESET>;
+		reset-names = "stmmaceth", "stmmaceth-ocp";
+		tx-fifo-depth = <32768>;
+		rx-fifo-depth = <16384>;
+		altr,sysmgr-syscon = <&sysmgr 0x4c 0>;
+		clocks = <&clkmgr AGILEX5_EMAC2_CLK>;
+		clock-names = "stmmaceth";
+		status = "disabled";
+	};
+};
diff --git a/arch/arm/mach-socfpga/Kconfig b/arch/arm/mach-socfpga/Kconfig
index fc14699a7d85201978e77acd89e38ca98cb00df9..f0dce3bad0429d38840975a2f3c3640731e7a605 100644
--- a/arch/arm/mach-socfpga/Kconfig
+++ b/arch/arm/mach-socfpga/Kconfig
@@ -4,13 +4,17 @@ if ARCH_SOCFPGA
 
 config ARCH_SOCFPGA_XLOAD
 	bool
-	prompt "Build preloader image"
+	depends on ARCH_SOCFPGA_CYCLONE5
+	prompt "Build SoCFPGA preloader image"
 
-comment "Altera SoCFPGA System-on-Chip"
+menu "SoCFPGA boards"
+
+if 32BIT
 
 config ARCH_SOCFPGA_CYCLONE5
 	bool
 	select CPU_V7
+	select ARM_SMP_TWD
 	select OFDEVICE if !ARCH_SOCFPGA_XLOAD
 	select OFTREE if !ARCH_SOCFPGA_XLOAD
 	select GPIOLIB if !ARCH_SOCFPGA_XLOAD
@@ -18,12 +22,12 @@ config ARCH_SOCFPGA_CYCLONE5
 config ARCH_SOCFPGA_ARRIA10
 	bool
 	select CPU_V7
+	select ARM_SMP_TWD
+	select ARM_USE_COMPRESSED_DTB
 	select RESET_CONTROLLER
 	select OFDEVICE
 	select OFTREE
 
-if 32BIT
-
 comment "Cyclone5 boards"
 
 config MACH_SOCFPGA_ALTERA_SOCDK
@@ -57,4 +61,30 @@ config MACH_SOCFPGA_REFLEX_ACHILLES
 	bool "Reflex Achilles"
 
 endif
+
+if 64BIT
+
+config ARCH_SOCFPGA_AGILEX5
+	bool
+	select CPU_V8
+	select ARM_USE_COMPRESSED_DTB
+	select RESET_CONTROLLER
+	select RESET_SIMPLE
+	select OFDEVICE
+	select OFTREE
+	select FIRMWARE_AGILEX5_ATF
+	select ARM_ATF
+	select ARM_SMCCC
+
+
+comment "SoCFPGA Agilex5 boards"
+
+config MACH_SOCFPGA_ARROW_AXE5_EAGLE
+       bool "Arrow AXE5 Eagle"
+       select ARCH_SOCFPGA_AGILEX5
+
+endif
+
+endmenu
+
 endif
diff --git a/arch/arm/mach-socfpga/Makefile b/arch/arm/mach-socfpga/Makefile
index 008dbc38877211fe1f317cb8eb660d8514611ddd..c54d2a2893417da5dfc92915d1ca7719be53a2e4 100644
--- a/arch/arm/mach-socfpga/Makefile
+++ b/arch/arm/mach-socfpga/Makefile
@@ -14,6 +14,19 @@ obj-pbl-$(CONFIG_ARCH_SOCFPGA_ARRIA10) += arria10-bootsource.o \
 					  arria10-init.o \
 					  arria10-sdram.o
 
+pbl-$(CONFIG_ARCH_SOCFPGA_AGILEX5) += soc64-system-manager.o \
+				soc64-wrap-handoff.o \
+				iossm_mailbox.o \
+				mailbox_s10.o \
+				agilex5-sdram.o \
+				agilex5-secreg.o \
+				agilex5-clock-manager.o \
+				atf.o
+
+obj-$(CONFIG_ARCH_SOCFPGA_AGILEX5) += secure_reg_helper.o \
+			        mailbox_s10.o \
+				      smc_api.o
+
 ifdef CONFIG_ARCH_SOCFPGA_CYCLONE5
 obj-$(CONFIG_ARCH_SOCFPGA_XLOAD) += xload.o
 endif
diff --git a/arch/arm/mach-socfpga/agilex5-clock-manager.c b/arch/arm/mach-socfpga/agilex5-clock-manager.c
new file mode 100644
index 0000000000000000000000000000000000000000..4ce7a2d4a2e5af56bf1938157dc245eb0ae85795
--- /dev/null
+++ b/arch/arm/mach-socfpga/agilex5-clock-manager.c
@@ -0,0 +1,383 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2019-2023 Intel Corporation <www.intel.com>
+ */
+
+#include <common.h>
+#include <io.h>
+#include <asm/system.h>
+#include <dt-bindings/clock/intel,agilex5-clkmgr.h>
+#include <linux/bitops.h>
+#include <clock.h>
+#include <mach/socfpga/agilex5-clk.h>
+#include <mach/socfpga/generic.h>
+#include <mach/socfpga/soc64-handoff.h>
+#include <mach/socfpga/soc64-regs.h>
+
+#define MPIDR_AFF1_OFFSET	8
+#define MPIDR_AFF1_MASK		0x3
+#define CORE0		1
+#define CORE1		2
+#define CORE2		3
+#define CORE3		4
+
+/* Derived from l4_main_clk (PSS clock) */
+#define COUNTER_FREQUENCY_REAL	400000000
+
+struct socfpga_clk_plat {
+	void __iomem *regs;
+};
+
+static void cm_wait_for_lock(u32 mask)
+{
+	register uint32_t inter_val;
+
+	do {
+		inter_val = readl(SOCFPGA_CLKMGR_ADDRESS + CLKMGR_STAT) & mask;
+	} while (inter_val != mask);
+}
+
+/* function to poll in the fsm busy bit */
+static void cm_wait_for_fsm(void)
+{
+	register u32 inter_val;
+
+	do {
+		inter_val = readl(SOCFPGA_CLKMGR_ADDRESS + CLKMGR_STAT) &
+				CLKMGR_STAT_BUSY;
+	} while (inter_val);
+}
+
+/*
+ * function to write the bypass register which requires a poll of the
+ * busy bit
+ */
+static void clk_write_bypass_mainpll(struct socfpga_clk_plat *plat, u32 val)
+{
+	CM_REG_WRITEL(plat, val, CLKMGR_MAINPLL_BYPASS);
+	cm_wait_for_fsm();
+}
+
+static void clk_write_bypass_perpll(struct socfpga_clk_plat *plat, u32 val)
+{
+	CM_REG_WRITEL(plat, val, CLKMGR_PERPLL_BYPASS);
+	cm_wait_for_fsm();
+}
+
+/* function to write the ctrl register which requires a poll of the busy bit */
+static void clk_write_ctrl(struct socfpga_clk_plat *plat, u32 val)
+{
+	CM_REG_WRITEL(plat, val, CLKMGR_CTRL);
+	cm_wait_for_fsm();
+}
+
+#define MEMBUS_MAINPLL				0
+#define MEMBUS_PERPLL				1
+#define MEMBUS_TIMEOUT				1000
+
+#define MEMBUS_CLKSLICE_REG				0x27
+#define MEMBUS_SYNTHCALFOSC_INIT_CENTERFREQ_REG		0xb3
+#define MEMBUS_SYNTHPPM_WATCHDOGTMR_VF01_REG		0xe6
+#define MEMBUS_CALCLKSLICE0_DUTY_LOCOVR_REG		0x03
+#define MEMBUS_CALCLKSLICE1_DUTY_LOCOVR_REG		0x07
+
+static const struct {
+	u32 reg;
+	u32 val;
+	u32 mask;
+} membus_pll[] = {
+	{
+		MEMBUS_CLKSLICE_REG,
+		/*
+		 * BIT[7:7]
+		 * Enable source synchronous mode
+		 */
+		BIT(7),
+		BIT(7)
+	},
+	{
+		MEMBUS_SYNTHCALFOSC_INIT_CENTERFREQ_REG,
+		/*
+		 * BIT[0:0]
+		 * Sets synthcalfosc_init_centerfreq=1 to limit overshoot
+		 * frequency during lock
+		 */
+		BIT(0),
+		BIT(0)
+	},
+	{
+		MEMBUS_SYNTHPPM_WATCHDOGTMR_VF01_REG,
+		/*
+		 * BIT[0:0]
+		 * Sets synthppm_watchdogtmr_vf0=1 to give the pll more time
+		 * to settle before lock is asserted.
+		 */
+		BIT(0),
+		BIT(0)
+	},
+	{
+		MEMBUS_CALCLKSLICE0_DUTY_LOCOVR_REG,
+		/*
+		 * BIT[6:0]
+		 * Centering duty cycle for clkslice0 output
+		 */
+		0x4a,
+		GENMASK(6, 0)
+	},
+	{
+		MEMBUS_CALCLKSLICE1_DUTY_LOCOVR_REG,
+		/*
+		 * BIT[6:0]
+		 * Centering duty cycle for clkslice1 output
+		 */
+		0x4a,
+		GENMASK(6, 0)
+	},
+};
+
+static int membus_wait_for_req(struct socfpga_clk_plat *plat, u32 pll,
+			       int timeout)
+{
+	int cnt = 0;
+	u32 req_status;
+
+	if (pll == MEMBUS_MAINPLL)
+		req_status = CM_REG_READL(plat, CLKMGR_MAINPLL_MEM);
+	else
+		req_status = CM_REG_READL(plat, CLKMGR_PERPLL_MEM);
+
+	while ((cnt < timeout) && (req_status & CLKMGR_MEM_REQ_SET_MSK)) {
+		if (pll == MEMBUS_MAINPLL)
+			req_status = CM_REG_READL(plat, CLKMGR_MAINPLL_MEM);
+		else
+			req_status = CM_REG_READL(plat, CLKMGR_PERPLL_MEM);
+		cnt++;
+	}
+
+	if (cnt >= timeout)
+		return -ETIMEDOUT;
+
+	return 0;
+}
+
+static int membus_write_pll(struct socfpga_clk_plat *plat, u32 pll,
+			    u32 addr_offset, u32 wdat, int timeout)
+{
+	u32 addr;
+	u32 val;
+
+	addr = ((addr_offset | CLKMGR_MEM_ADDR_START) & CLKMGR_MEM_ADDR_MASK);
+
+	val = (CLKMGR_MEM_REQ_SET_MSK | CLKMGR_MEM_WR_SET_MSK |
+	       (wdat << CLKMGR_MEM_WDAT_LSB_OFFSET) | addr);
+
+	if (pll == MEMBUS_MAINPLL)
+		CM_REG_WRITEL(plat, val, CLKMGR_MAINPLL_MEM);
+	else
+		CM_REG_WRITEL(plat, val, CLKMGR_PERPLL_MEM);
+
+	return membus_wait_for_req(plat, pll, timeout);
+}
+
+static int membus_read_pll(struct socfpga_clk_plat *plat, u32 pll,
+			   u32 addr_offset, u32 *rdata, int timeout)
+{
+	u32 addr;
+	u32 val;
+
+	addr = ((addr_offset | CLKMGR_MEM_ADDR_START) & CLKMGR_MEM_ADDR_MASK);
+
+	val = ((CLKMGR_MEM_REQ_SET_MSK & ~CLKMGR_MEM_WR_SET_MSK) | addr);
+
+	if (pll == MEMBUS_MAINPLL)
+		CM_REG_WRITEL(plat, val, CLKMGR_MAINPLL_MEM);
+	else
+		CM_REG_WRITEL(plat, val, CLKMGR_PERPLL_MEM);
+
+	*rdata = 0;
+
+	if (membus_wait_for_req(plat, pll, timeout))
+		return -ETIMEDOUT;
+
+	if (pll == MEMBUS_MAINPLL)
+		*rdata = CM_REG_READL(plat, CLKMGR_MAINPLL_MEMSTAT);
+	else
+		*rdata = CM_REG_READL(plat, CLKMGR_PERPLL_MEMSTAT);
+
+	return 0;
+}
+
+static void membus_pll_configs(struct socfpga_clk_plat *plat, u32 pll)
+{
+	int i;
+	u32 rdata;
+
+	for (i = 0; i < ARRAY_SIZE(membus_pll); i++) {
+		membus_read_pll(plat, pll, membus_pll[i].reg,
+				&rdata, MEMBUS_TIMEOUT);
+		membus_write_pll(plat, pll, membus_pll[i].reg,
+			 ((rdata & ~membus_pll[i].mask) | membus_pll[i].val),
+			 MEMBUS_TIMEOUT);
+	}
+}
+
+static u32 calc_vocalib_pll(u32 pllm, u32 pllglob)
+{
+	u32 mdiv, refclkdiv, arefclkdiv, drefclkdiv, mscnt, hscnt, vcocalib;
+
+	mdiv = pllm & CLKMGR_PLLM_MDIV_MASK;
+	arefclkdiv = (pllglob & CLKMGR_PLLGLOB_AREFCLKDIV_MASK) >>
+		      CLKMGR_PLLGLOB_AREFCLKDIV_OFFSET;
+	drefclkdiv = (pllglob & CLKMGR_PLLGLOB_DREFCLKDIV_MASK) >>
+		      CLKMGR_PLLGLOB_DREFCLKDIV_OFFSET;
+	refclkdiv = (pllglob & CLKMGR_PLLGLOB_REFCLKDIV_MASK) >>
+		     CLKMGR_PLLGLOB_REFCLKDIV_OFFSET;
+	mscnt = CLKMGR_VCOCALIB_MSCNT_CONST / (mdiv * BIT(drefclkdiv));
+	if (!mscnt)
+		mscnt = 1;
+	hscnt = (mdiv * mscnt * BIT(drefclkdiv) / refclkdiv) -
+		CLKMGR_VCOCALIB_HSCNT_CONST;
+	vcocalib = (hscnt & CLKMGR_VCOCALIB_HSCNT_MASK) |
+		   ((mscnt << CLKMGR_VCOCALIB_MSCNT_OFFSET) &
+		     CLKMGR_VCOCALIB_MSCNT_MASK);
+
+	return vcocalib;
+}
+
+/*
+ * Setup clocks while making no assumptions about previous state of the clocks.
+ */
+static void clk_basic_init(struct socfpga_clk_plat *plat,
+			   const struct cm_config * const cfg)
+{
+	u32 vcocalib;
+	u32 cntfrq = COUNTER_FREQUENCY_REAL;
+	u32 counter_freq = 0;
+
+
+	if (!cfg)
+		return;
+
+	/* Always force clock manager into boot mode before any configuration */
+	clk_write_ctrl(plat,
+		       CM_REG_READL(plat, CLKMGR_CTRL) | CLKMGR_CTRL_BOOTMODE);
+
+	/* Put both PLLs in bypass */
+	clk_write_bypass_mainpll(plat, CLKMGR_BYPASS_MAINPLL_ALL);
+	clk_write_bypass_perpll(plat, CLKMGR_BYPASS_PERPLL_ALL);
+
+	/* Put both PLLs in Reset and Power Down */
+	CM_REG_CLRBITS(plat, CLKMGR_MAINPLL_PLLGLOB,
+		       CLKMGR_PLLGLOB_PD_MASK | CLKMGR_PLLGLOB_RST_MASK);
+	CM_REG_CLRBITS(plat, CLKMGR_PERPLL_PLLGLOB,
+		       CLKMGR_PLLGLOB_PD_MASK | CLKMGR_PLLGLOB_RST_MASK);
+
+	/* setup main PLL dividers where calculate the vcocalib value */
+	vcocalib = calc_vocalib_pll(cfg->main_pll_pllm, cfg->main_pll_pllglob);
+	CM_REG_WRITEL(plat, cfg->main_pll_pllglob & ~CLKMGR_PLLGLOB_RST_MASK,
+		      CLKMGR_MAINPLL_PLLGLOB);
+	CM_REG_WRITEL(plat, cfg->main_pll_fdbck, CLKMGR_MAINPLL_FDBCK);
+	CM_REG_WRITEL(plat, vcocalib, CLKMGR_MAINPLL_VCOCALIB);
+	CM_REG_WRITEL(plat, cfg->main_pll_pllc0, CLKMGR_MAINPLL_PLLC0);
+	CM_REG_WRITEL(plat, cfg->main_pll_pllc1, CLKMGR_MAINPLL_PLLC1);
+	CM_REG_WRITEL(plat, cfg->main_pll_pllc2, CLKMGR_MAINPLL_PLLC2);
+	CM_REG_WRITEL(plat, cfg->main_pll_pllc3, CLKMGR_MAINPLL_PLLC3);
+	CM_REG_WRITEL(plat, cfg->main_pll_pllm, CLKMGR_MAINPLL_PLLM);
+	CM_REG_WRITEL(plat, cfg->main_pll_nocclk, CLKMGR_MAINPLL_NOCCLK);
+	CM_REG_WRITEL(plat, cfg->main_pll_nocdiv, CLKMGR_MAINPLL_NOCDIV);
+
+	/* setup peripheral PLL dividers where calculate the vcocalib value */
+	vcocalib = calc_vocalib_pll(cfg->per_pll_pllm, cfg->per_pll_pllglob);
+	CM_REG_WRITEL(plat, cfg->per_pll_pllglob & ~CLKMGR_PLLGLOB_RST_MASK,
+		      CLKMGR_PERPLL_PLLGLOB);
+	CM_REG_WRITEL(plat, cfg->per_pll_fdbck, CLKMGR_PERPLL_FDBCK);
+	CM_REG_WRITEL(plat, vcocalib, CLKMGR_PERPLL_VCOCALIB);
+	CM_REG_WRITEL(plat, cfg->per_pll_pllc0, CLKMGR_PERPLL_PLLC0);
+	CM_REG_WRITEL(plat, cfg->per_pll_pllc1, CLKMGR_PERPLL_PLLC1);
+	CM_REG_WRITEL(plat, cfg->per_pll_pllc2, CLKMGR_PERPLL_PLLC2);
+	CM_REG_WRITEL(plat, cfg->per_pll_pllc3, CLKMGR_PERPLL_PLLC3);
+	CM_REG_WRITEL(plat, cfg->per_pll_pllm, CLKMGR_PERPLL_PLLM);
+	CM_REG_WRITEL(plat, cfg->per_pll_emacctl, CLKMGR_PERPLL_EMACCTL);
+	CM_REG_WRITEL(plat, cfg->per_pll_gpiodiv, CLKMGR_PERPLL_GPIODIV);
+
+	/* Configure ping pong counters in control group */
+	CM_REG_WRITEL(plat, cfg->ctl_emacactr, CLKMGR_CTL_EMACACTR);
+	CM_REG_WRITEL(plat, cfg->ctl_emacbctr, CLKMGR_CTL_EMACBCTR);
+	CM_REG_WRITEL(plat, cfg->ctl_emacptpctr, CLKMGR_CTL_EMACPTPCTR);
+	CM_REG_WRITEL(plat, cfg->ctl_gpiodbctr, CLKMGR_CTL_GPIODBCTR);
+	CM_REG_WRITEL(plat, cfg->ctl_s2fuser0ctr, CLKMGR_CTL_S2FUSER0CTR);
+	CM_REG_WRITEL(plat, cfg->ctl_s2fuser1ctr, CLKMGR_CTL_S2FUSER1CTR);
+	CM_REG_WRITEL(plat, cfg->ctl_psirefctr, CLKMGR_CTL_PSIREFCTR);
+	CM_REG_WRITEL(plat, cfg->ctl_usb31ctr, CLKMGR_CTL_USB31CTR);
+	CM_REG_WRITEL(plat, cfg->ctl_dsuctr, CLKMGR_CTL_DSUCTR);
+	CM_REG_WRITEL(plat, cfg->ctl_core01ctr, CLKMGR_CTL_CORE01CTR);
+	CM_REG_WRITEL(plat, cfg->ctl_core23ctr, CLKMGR_CTL_CORE23CTR);
+	CM_REG_WRITEL(plat, cfg->ctl_core2ctr, CLKMGR_CTL_CORE2CTR);
+	CM_REG_WRITEL(plat, cfg->ctl_core3ctr, CLKMGR_CTL_CORE3CTR);
+
+	/* Take both PLL out of reset and power up */
+	CM_REG_SETBITS(plat, CLKMGR_MAINPLL_PLLGLOB,
+		       CLKMGR_PLLGLOB_PD_MASK | CLKMGR_PLLGLOB_RST_MASK);
+	CM_REG_SETBITS(plat, CLKMGR_PERPLL_PLLGLOB,
+		       CLKMGR_PLLGLOB_PD_MASK | CLKMGR_PLLGLOB_RST_MASK);
+
+	/* Membus programming for mainpll */
+	membus_pll_configs(plat, MEMBUS_MAINPLL);
+	/* Membus programming for peripll */
+	membus_pll_configs(plat, MEMBUS_PERPLL);
+
+	/* Enable Main pll clkslices */
+	CM_REG_SETBITS(plat, CLKMGR_MAINPLL_PLLC0, CLKMGR_PLLCX_EN_SET_MSK);
+	CM_REG_SETBITS(plat, CLKMGR_MAINPLL_PLLC1, CLKMGR_PLLCX_EN_SET_MSK);
+	CM_REG_SETBITS(plat, CLKMGR_MAINPLL_PLLC2, CLKMGR_PLLCX_EN_SET_MSK);
+	CM_REG_SETBITS(plat, CLKMGR_MAINPLL_PLLC3, CLKMGR_PLLCX_EN_SET_MSK);
+
+	/* Enable Periph pll clkslices */
+	CM_REG_SETBITS(plat, CLKMGR_PERPLL_PLLC0, CLKMGR_PLLCX_EN_SET_MSK);
+	CM_REG_SETBITS(plat, CLKMGR_PERPLL_PLLC1, CLKMGR_PLLCX_EN_SET_MSK);
+	CM_REG_SETBITS(plat, CLKMGR_PERPLL_PLLC2, CLKMGR_PLLCX_EN_SET_MSK);
+	CM_REG_SETBITS(plat, CLKMGR_PERPLL_PLLC3, CLKMGR_PLLCX_EN_SET_MSK);
+
+	cm_wait_for_lock(CLKMGR_STAT_ALLPLL_LOCKED_MASK);
+
+	CM_REG_WRITEL(plat, CLKMGR_LOSTLOCK_SET_MASK, CLKMGR_MAINPLL_LOSTLOCK);
+	CM_REG_WRITEL(plat, CLKMGR_LOSTLOCK_SET_MASK, CLKMGR_PERPLL_LOSTLOCK);
+
+	CM_REG_SETBITS(plat, CLKMGR_MAINPLL_PLLGLOB, CLKMGR_PLLGLOB_CLR_LOSTLOCK_BYPASS_MASK);
+	CM_REG_SETBITS(plat, CLKMGR_PERPLL_PLLGLOB, CLKMGR_PLLGLOB_CLR_LOSTLOCK_BYPASS_MASK);
+
+	/* Take all PLLs out of bypass */
+	clk_write_bypass_mainpll(plat, 0);
+	clk_write_bypass_perpll(plat, 0);
+
+	/* Clear the loss of lock bits (write 1 to clear) */
+	CM_REG_CLRBITS(plat, CLKMGR_INTRCLR,
+		       CLKMGR_INTER_PERPLLLOST_MASK |
+		       CLKMGR_INTER_MAINPLLLOST_MASK);
+
+	/* Take all ping pong counters out of reset */
+	CM_REG_CLRBITS(plat, CLKMGR_CTL_EXTCNTRST,
+		       CLKMGR_CTL_EXTCNTRST_ALLCNTRST);
+
+	/* Update with accurate clock frequency */
+	if (current_el() == 3) {
+		asm volatile("msr cntfrq_el0, %0" : : "r" (cntfrq) : "memory");
+		asm volatile("mrs %0, cntfrq_el0" : "=r" (counter_freq));
+	}
+
+	/* Out of boot mode */
+	clk_write_ctrl(plat, CM_REG_READL(plat, CLKMGR_CTRL) &
+		       ~CLKMGR_CTRL_BOOTMODE);
+}
+
+int agilex5_clk_init(void)
+{
+	struct socfpga_clk_plat plat;
+	const struct cm_config *cm_default_cfg = cm_get_default_config();
+
+	plat.regs = (void __iomem *)SOCFPGA_CLKMGR_ADDRESS;
+
+	clk_basic_init(&plat, cm_default_cfg);
+
+	return 0;
+}
diff --git a/arch/arm/mach-socfpga/agilex5-sdram.c b/arch/arm/mach-socfpga/agilex5-sdram.c
new file mode 100644
index 0000000000000000000000000000000000000000..96b2b425315fdc0d410f053417944942b3ab8ca0
--- /dev/null
+++ b/arch/arm/mach-socfpga/agilex5-sdram.c
@@ -0,0 +1,347 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2019-2024 Intel Corporation <www.intel.com>
+ *
+ */
+#define pr_fmt(fmt) "agilex5-sdram: " fmt
+
+#include <common.h>
+#include <errno.h>
+#include "iossm_mailbox.h"
+#include <xfuncs.h>
+#include <linux/sizes.h>
+#include <linux/bitfield.h>
+#include <mach/socfpga/soc64-firewall.h>
+#include <mach/socfpga/soc64-handoff.h>
+#include <mach/socfpga/soc64-regs.h>
+#include <mach/socfpga/soc64-sdram.h>
+#include <mach/socfpga/soc64-system-manager.h>
+
+/* MPFE NOC registers */
+#define F2SDRAM_SIDEBAND_FLAGOUTSET0	0x50
+#define F2SDRAM_SIDEBAND_FLAGOUTSTATUS0	0x58
+#define SIDEBANDMGR_FLAGOUTSET0_REG	SOCFPGA_F2SDRAM_MGR_ADDRESS +\
+					F2SDRAM_SIDEBAND_FLAGOUTSET0
+#define SIDEBANDMGR_FLAGOUTSTATUS0_REG	SOCFPGA_F2SDRAM_MGR_ADDRESS +\
+					F2SDRAM_SIDEBAND_FLAGOUTSTATUS0
+
+#define PORT_EMIF_CONFIG_OFFSET 4
+
+/* Reset type */
+enum reset_type {
+	POR_RESET,
+	WARM_RESET,
+	COLD_RESET,
+	NCONFIG,
+	JTAG_CONFIG,
+	RSU_RECONFIG
+};
+
+static phys_addr_t io96b_csr_reg_addr[] = {
+	0x18400000, /* IO96B_0 CSR registers address */
+	0x18800000  /* IO96B_1 CSR registers address */
+};
+
+static enum reset_type get_reset_type(u32 val)
+{
+	return (val & ALT_SYSMGR_SCRATCH_REG_3_DDR_RESET_TYPE_MASK) >>
+		ALT_SYSMGR_SCRATCH_REG_3_DDR_RESET_TYPE_SHIFT;
+}
+
+static int set_mpfe_config(void)
+{
+	/* Set mpfe_lite_intfcsel */
+	setbits_le32(IOMEM(SOCFPGA_SYSMGR_ADDRESS) + SYSMGR_SOC64_MPFE_CONFIG, BIT(2));
+
+	/* Set mpfe_lite_active */
+	setbits_le32(IOMEM(SOCFPGA_SYSMGR_ADDRESS) + SYSMGR_SOC64_MPFE_CONFIG, BIT(8));
+
+	pr_debug("%s: mpfe_config: 0x%x\n", __func__,
+	      readl(IOMEM(SOCFPGA_SYSMGR_ADDRESS) + SYSMGR_SOC64_MPFE_CONFIG));
+
+	return 0;
+}
+
+static bool is_ddr_init_hang(void)
+{
+	u32 reg = readl(IOMEM(SOCFPGA_SYSMGR_ADDRESS) +
+			SYSMGR_SOC64_BOOT_SCRATCH_POR0);
+
+	if (reg & ALT_SYSMGR_SCRATCH_REG_POR_0_DDR_PROGRESS_MASK)
+		return true;
+
+	return false;
+}
+
+static void ddr_init_inprogress(bool start)
+{
+	if (start)
+		setbits_le32(IOMEM(SOCFPGA_SYSMGR_ADDRESS) +
+				SYSMGR_SOC64_BOOT_SCRATCH_POR0,
+				ALT_SYSMGR_SCRATCH_REG_POR_0_DDR_PROGRESS_MASK);
+	else
+		clrbits_le32(IOMEM(SOCFPGA_SYSMGR_ADDRESS) +
+				SYSMGR_SOC64_BOOT_SCRATCH_POR0,
+				ALT_SYSMGR_SCRATCH_REG_POR_0_DDR_PROGRESS_MASK);
+}
+
+static int populate_ddr_handoff(struct altera_sdram_plat *plat, struct io96b_info *io96b_ctrl)
+{
+	int i;
+	u32 len = SOC64_HANDOFF_SDRAM_LEN;
+	u32 handoff_table[len];
+
+	/* Read handoff for DDR configuration */
+	socfpga_handoff_read((void *)SOC64_HANDOFF_SDRAM, handoff_table, len);
+
+	/* Read handoff - dual port
+	   FIXME: Intel u-boot has a patch that HACKs this to 0
+	   https://github.com/altera-opensource/meta-intel-fpga-refdes/ \
+	   blob/master/recipes-bsp/u-boot/files/v1-0001-HSD-15015933655-ddr-altera-agilex5-Hack-dual-port-DO-NOT-MERGE.patch
+	   Patch doesn't say why or what is broken here: handoff files? dualport RAM access?
+	 */
+	//plat->dualport = FIELD_GET(BIT(0), handoff_table[PORT_EMIF_CONFIG_OFFSET]);
+	plat->dualport = 0;
+	pr_debug("%s: dualport from handoff: 0x%x\n", __func__, plat->dualport);
+
+	if (plat->dualport)
+		io96b_ctrl->num_port = 2;
+	else
+		io96b_ctrl->num_port = 1;
+
+	/* Read handoff - dual EMIF */
+	plat->dualemif = FIELD_GET(BIT(1), handoff_table[PORT_EMIF_CONFIG_OFFSET]);
+	pr_debug("%s: dualemif from handoff: 0x%x\n", __func__, plat->dualemif);
+
+	if (plat->dualemif)
+		io96b_ctrl->num_instance = 2;
+	else
+		io96b_ctrl->num_instance = 1;
+
+	/* Assign IO96B CSR base address if it is valid */
+	for (i = 0; i < io96b_ctrl->num_instance; i++) {
+		io96b_ctrl->io96b[i].io96b_csr_addr = io96b_csr_reg_addr[i];
+		pr_debug("%s: IO96B 0x%llx CSR enabled\n", __func__
+			, io96b_ctrl->io96b[i].io96b_csr_addr);
+	}
+
+	return 0;
+}
+
+static int config_mpfe_sideband_mgr(struct altera_sdram_plat *plat)
+{
+	/* Dual port setting */
+	if (plat->dualport)
+		setbits_le32(SIDEBANDMGR_FLAGOUTSET0_REG, BIT(4));
+
+	/* Dual EMIF setting */
+	if (plat->dualemif) {
+		set_mpfe_config();
+		setbits_le32(SIDEBANDMGR_FLAGOUTSET0_REG, BIT(5));
+	}
+
+	pr_debug("%s: SIDEBANDMGR_FLAGOUTSTATUS0: 0x%x\n", __func__,
+	      readl(SIDEBANDMGR_FLAGOUTSTATUS0_REG));
+
+	return 0;
+}
+
+static void config_ccu_mgr(struct altera_sdram_plat *plat)
+{
+	if (plat->dualport || plat->dualemif) {
+		pr_debug("%s: config interleaving on ccu reg\n", __func__);
+		agilex5_security_interleaving_on();
+	} else {
+		pr_debug("%s: config interleaving off ccu reg\n", __func__);
+		agilex5_security_interleaving_off();
+	}
+}
+
+static bool hps_ocram_dbe_status(void)
+{
+	u32 reg = readl(IOMEM(SOCFPGA_SYSMGR_ADDRESS) +
+			SYSMGR_SOC64_BOOT_SCRATCH_COLD3);
+
+	if (reg & ALT_SYSMGR_SCRATCH_REG_3_OCRAM_DBE_MASK)
+		return true;
+
+	return false;
+}
+
+static bool ddr_ecc_dbe_status(void)
+{
+	u32 reg = readl(IOMEM(SOCFPGA_SYSMGR_ADDRESS) +
+			SYSMGR_SOC64_BOOT_SCRATCH_COLD3);
+
+	if (reg & ALT_SYSMGR_SCRATCH_REG_3_DDR_DBE_MASK)
+		return true;
+
+	return false;
+}
+
+static void sdram_set_firewall(phys_size_t hw_size)
+{
+	phys_size_t value;
+	u32 lower, upper;
+
+	value = SOCFPGA_AGILEX5_DDR_BASE;
+	/* Keep first 1MB of SDRAM memory region as secure region when
+	 * using ATF flow, where the ATF code is located.
+	 */
+	value += SZ_1M;
+
+	/* Setting non-secure MPU region base and base extended */
+	lower = lower_32_bits(value);
+	upper = upper_32_bits(value);
+	FW_MPU_DDR_SCR_WRITEL(lower, FW_MPU_DDR_SCR_MPUREGION0ADDR_BASE);
+	FW_MPU_DDR_SCR_WRITEL(upper & 0xff, FW_MPU_DDR_SCR_MPUREGION0ADDR_BASEEXT);
+	FW_F2SDRAM_DDR_SCR_WRITEL(lower, FW_F2SDRAM_DDR_SCR_REGION0ADDR_BASE);
+	FW_F2SDRAM_DDR_SCR_WRITEL(upper & 0xff, FW_F2SDRAM_DDR_SCR_REGION0ADDR_BASEEXT);
+
+	/* Setting non-secure Non-MPU region base and base extended */
+	FW_MPU_DDR_SCR_WRITEL(lower, FW_MPU_DDR_SCR_NONMPUREGION0ADDR_BASE);
+	FW_MPU_DDR_SCR_WRITEL(upper & 0xff, FW_MPU_DDR_SCR_NONMPUREGION0ADDR_BASEEXT);
+
+	/* Setting non-secure MPU limit and limit extended */
+	value = SOCFPGA_AGILEX5_DDR_BASE + hw_size - 1;
+
+	lower = lower_32_bits(value);
+	upper = upper_32_bits(value);
+
+	FW_MPU_DDR_SCR_WRITEL(lower, FW_MPU_DDR_SCR_MPUREGION0ADDR_LIMIT);
+	FW_MPU_DDR_SCR_WRITEL(upper & 0xff, FW_MPU_DDR_SCR_MPUREGION0ADDR_LIMITEXT);
+
+	/* Setting non-secure Non-MPU limit and limit extended */
+	FW_MPU_DDR_SCR_WRITEL(lower, FW_MPU_DDR_SCR_NONMPUREGION0ADDR_LIMIT);
+	FW_MPU_DDR_SCR_WRITEL(upper & 0xff, FW_MPU_DDR_SCR_NONMPUREGION0ADDR_LIMITEXT);
+	FW_MPU_DDR_SCR_WRITEL(BIT(0) | BIT(8), FW_MPU_DDR_SCR_EN_SET);
+
+	FW_F2SDRAM_DDR_SCR_WRITEL(lower, FW_F2SDRAM_DDR_SCR_REGION0ADDR_LIMIT);
+	FW_F2SDRAM_DDR_SCR_WRITEL(upper & 0xff, FW_F2SDRAM_DDR_SCR_REGION0ADDR_LIMITEXT);
+	FW_F2SDRAM_DDR_SCR_WRITEL(BIT(0), FW_F2SDRAM_DDR_SCR_EN_SET);
+}
+
+int agilex5_ddr_init_full(void)
+{
+	int ret;
+	int i;
+	phys_size_t hw_size;
+	struct altera_sdram_plat plat;
+	struct io96b_info io96b_ctrl;
+
+	enum reset_type reset_t = get_reset_type(SOCFPGA_SYSMGR_ADDRESS +
+						 SYSMGR_SOC64_BOOT_SCRATCH_COLD3);
+	bool full_mem_init = false;
+
+	/* DDR initialization progress status tracking */
+	bool is_ddr_hang_be4_rst = is_ddr_init_hang();
+
+	pr_debug("DDR: SDRAM init in progress ...\n");
+	ddr_init_inprogress(true);
+
+	plat.mpfe_base_addr = IOMEM(SOCFPGA_MPFE_CSR_ADDRESS);
+
+	pr_debug("DDR: Address MPFE 0x%p\n", plat.mpfe_base_addr);
+
+	/* Populating DDR handoff data */
+	pr_debug("DDR: Checking SDRAM configuration in progress ...\n");
+	ret = populate_ddr_handoff(&plat, &io96b_ctrl);
+	if (ret) {
+		pr_debug("DDR: Failed to populate DDR handoff\n");
+		return ret;
+	}
+
+	/* Configuring MPFE sideband manager registers - dual port & dual emif*/
+	ret = config_mpfe_sideband_mgr(&plat);
+	if (ret) {
+		pr_debug("DDR: Failed to configure dual port dual emif\n");
+		return ret;
+	}
+
+	/* Configuring Interleave/Non-interleave ccu registers */
+	config_ccu_mgr(&plat);
+
+	/* Configure if polling is needed for IO96B GEN PLL locked */
+	io96b_ctrl.ckgen_lock = true;
+
+	/* Ensure calibration status passing */
+	io96b_init_mem_cal(&io96b_ctrl);
+
+	/* Initiate IOSSM mailbox */
+	io96b_mb_init(&io96b_ctrl);
+
+	/* Need to trigger re-calibration for DDR DBE */
+	if (ddr_ecc_dbe_status()) {
+		for (i = 0; i < io96b_ctrl.num_instance; i++)
+			io96b_ctrl.io96b[i].cal_status = false;
+
+		io96b_ctrl.overall_cal_status = false;
+	}
+
+	/* Trigger re-calibration if calibration failed */
+	if (!(io96b_ctrl.overall_cal_status)) {
+		pr_debug("DDR: Re-calibration in progress...\n");
+		io96b_trig_mem_cal(&io96b_ctrl);
+	}
+
+	pr_debug("DDR: Calibration success\n");
+
+	/* DDR type, DDR size and ECC status) */
+	ret = io96b_get_mem_technology(&io96b_ctrl);
+	if (ret) {
+		pr_debug("DDR: Failed to get DDR type\n");
+		return ret;
+	}
+
+	ret = io96b_get_mem_width_info(&io96b_ctrl);
+	if (ret) {
+		pr_debug("DDR: Failed to get DDR size\n");
+		return ret;
+	}
+
+	hw_size = (phys_size_t)io96b_ctrl.overall_size * SZ_1G / SZ_8;
+
+	pr_debug("%s: %lld MiB\n", io96b_ctrl.ddr_type, hw_size >> 20);
+
+	ret = io96b_ecc_enable_status(&io96b_ctrl);
+	if (ret) {
+		pr_debug("DDR: Failed to get DDR ECC status\n");
+		return ret;
+	}
+
+	/* Is HPS cold or warm reset? If yes, Skip full memory initialization if ECC
+	 *  enabled to preserve memory content
+	 */
+	if (io96b_ctrl.ecc_status) {
+		full_mem_init = hps_ocram_dbe_status() | ddr_ecc_dbe_status() |
+				is_ddr_hang_be4_rst;
+		if (full_mem_init || !(reset_t == WARM_RESET || reset_t == COLD_RESET)) {
+			ret = io96b_bist_mem_init_start(&io96b_ctrl);
+			if (ret) {
+				pr_debug("DDR: Failed to fully initialize DDR memory\n");
+				return ret;
+			}
+		}
+
+		pr_debug("SDRAM-ECC: Initialized success\n");
+	}
+
+	sdram_set_firewall(hw_size);
+
+	/* Firewall setting for MPFE CSR */
+	/* IO96B0_reg */
+	writel(0x1, SOCFPGA_MPFE_CSR_ADDRESS + 0xd00);
+	/* IO96B1_reg */
+	writel(0x1, SOCFPGA_MPFE_CSR_ADDRESS + 0xd04);
+	/* noc_csr */
+	writel(0x1, SOCFPGA_MPFE_CSR_ADDRESS + 0xd08);
+
+	pr_debug("DDR: firewall init success\n");
+
+	/* Ending DDR driver initialization success tracking */
+	ddr_init_inprogress(false);
+
+	pr_debug("DDR: init success\n");
+
+	return 0;
+}
diff --git a/arch/arm/mach-socfpga/agilex5-secreg.c b/arch/arm/mach-socfpga/agilex5-secreg.c
new file mode 100644
index 0000000000000000000000000000000000000000..042ba10db71c6fbd4a7d164603d3a3600b9ccc1a
--- /dev/null
+++ b/arch/arm/mach-socfpga/agilex5-secreg.c
@@ -0,0 +1,289 @@
+// SPDX-License-Identifier: GPL-2.0
+
+#include <common.h>
+#include <io.h>
+#include <mach/socfpga/debug_ll.h>
+#include <mach/socfpga/soc64-regs.h>
+#include <mach/socfpga/soc64-system-manager.h>
+
+#define BUILD_SOC64_WRITE_SECREG(name, addr)				\
+	static inline void soc64_write_##name(const int offset,		\
+					      const int val,		\
+					      const int mask)		\
+	{								\
+		void __iomem *iomem = IOMEM(addr);			\
+		soc64_set(iomem, offset, val, mask);			\
+	}
+
+static inline void soc64_set(void __iomem *addr, int offset, u32 val, int mask)
+{
+	u32 set_mask;
+
+	if (mask == 0xffffffff)
+		writel(val, addr + offset);
+	else {
+		set_mask = mask & val;
+
+		clrsetbits_le32(addr + offset, mask, set_mask);
+	}
+
+	pr_debug("%s: set 0x%p = 0x%08x & 0x%08x\n", __func__,
+		 addr + offset, val, mask);
+}
+
+BUILD_SOC64_WRITE_SECREG(ccu, SOCFPGA_CCU_ADDRESS)
+BUILD_SOC64_WRITE_SECREG(dce0, SOCFPGA_DCE0_ADDRESS)
+BUILD_SOC64_WRITE_SECREG(dce1, SOCFPGA_DCE1_ADDRESS)
+BUILD_SOC64_WRITE_SECREG(dmi0, SOCFPGA_DMI0_ADDRESS)
+BUILD_SOC64_WRITE_SECREG(dmi1, SOCFPGA_DMI1_ADDRESS)
+BUILD_SOC64_WRITE_SECREG(fpga2soc, SOCFPGA_FPGA2SOC_ADDRESS)
+BUILD_SOC64_WRITE_SECREG(gic_m, SOCFPGA_GIC_M_ADDRESS)
+BUILD_SOC64_WRITE_SECREG(iom, SOCFPGA_CCU_IOM_ADDRESS)
+BUILD_SOC64_WRITE_SECREG(l4_per, SOCFPGA_FIREWALL_L4_PER_ADDRESS)
+BUILD_SOC64_WRITE_SECREG(l4_sys, SOCFPGA_FIREWALL_L4_SYS_ADDRESS)
+BUILD_SOC64_WRITE_SECREG(tcu, SOCFPGA_TCU_ADDRESS)
+
+void agilex5_security_interleaving_off(void)
+{
+	soc64_write_ccu(SOCFPGA_SECREG_NCAIU1AMIGR_REG, 3, 0x1f);
+	soc64_write_ccu(SOCFPGA_SECREG_DMI_SDRAM_2G_BAR_REG, 0x81300006, 0xc1f03e1f);
+	soc64_write_ccu(SOCFPGA_SECREG_DMI_SDRAM_30G_BAR_REG, 0x81700006, 0xc1f03e1f);
+	soc64_write_ccu(SOCFPGA_SECREG_DMI_SDRAM_480G_BAR_REG, 0x81b00006, 0xc1f03e1f);
+
+	soc64_write_fpga2soc(SOCFPGA_SECREG_NCAIU1AMIGR_REG, 3, 0x1f);
+	soc64_write_fpga2soc(SOCFPGA_SECREG_DMI_SDRAM_2G_BAR_REG, 0x81300006, 0xc1f03e1f);
+	soc64_write_fpga2soc(SOCFPGA_SECREG_DMI_SDRAM_30G_BAR_REG, 0x81700006, 0xc1f03e1f);
+	soc64_write_fpga2soc(SOCFPGA_SECREG_DMI_SDRAM_480G_BAR_REG, 0x81b00006, 0xc1f03e1f);
+
+	soc64_write_gic_m(SOCFPGA_SECREG_NCAIU1AMIGR_REG, 3, 0x1f);
+	soc64_write_gic_m(SOCFPGA_SECREG_DMI_SDRAM_2G_BAR_REG, 0x81300006, 0xc1f03e1f);
+	soc64_write_gic_m(SOCFPGA_SECREG_DMI_SDRAM_30G_BAR_REG, 0x81700006, 0xc1f03e1f);
+	soc64_write_gic_m(SOCFPGA_SECREG_DMI_SDRAM_480G_BAR_REG, 0x81b00006, 0xc1f03e1f);
+
+	soc64_write_tcu(SOCFPGA_SECREG_NCAIU1AMIGR_REG, 3, 0x1f);
+	soc64_write_tcu(SOCFPGA_SECREG_DMI_SDRAM_2G_BAR_REG, 0x81300006, 0xc1f03e1f);
+	soc64_write_tcu(SOCFPGA_SECREG_DMI_SDRAM_30G_BAR_REG, 0x81700006, 0xc1f03e1f);
+	soc64_write_tcu(SOCFPGA_SECREG_DMI_SDRAM_480G_BAR_REG, 0x81b00006, 0xc1f03e1f);
+
+	soc64_write_iom(SOCFPGA_SECREG_NCAIU1AMIGR_REG, 3, 0x1f);
+	soc64_write_iom(SOCFPGA_SECREG_DMI_SDRAM_2G_BAR_REG, 0x81300006, 0xc1f03e1f);
+	soc64_write_iom(SOCFPGA_SECREG_DMI_SDRAM_30G_BAR_REG, 0x81700006, 0xc1f03e1f);
+	soc64_write_iom(SOCFPGA_SECREG_DMI_SDRAM_480G_BAR_REG, 0x81b00006, 0xc1f03e1f);
+
+	soc64_write_dce0(SOCFPGA_SECREG_NCAIU1AMIGR_REG, 3, 0x1f);
+	soc64_write_dce0(SOCFPGA_SECREG_DMI_SDRAM_2G_BAR_REG, 0x81300006, 0xc1f03e1f);
+	soc64_write_dce0(SOCFPGA_SECREG_DMI_SDRAM_30G_BAR_REG, 0x81700006, 0xc1f03e1f);
+	soc64_write_dce0(SOCFPGA_SECREG_DMI_SDRAM_480G_BAR_REG, 0x81b00006, 0xc1f03e1f);
+
+	soc64_write_dce1(SOCFPGA_SECREG_NCAIU1AMIGR_REG, 3, 0x1f);
+	soc64_write_dce1(SOCFPGA_SECREG_DMI_SDRAM_2G_BAR_REG, 0x81300006, 0xc1f03e1f);
+	soc64_write_dce1(SOCFPGA_SECREG_DMI_SDRAM_30G_BAR_REG, 0x81700006, 0xc1f03e1f);
+	soc64_write_dce1(SOCFPGA_SECREG_DMI_SDRAM_480G_BAR_REG, 0x81b00006, 0xc1f03e1f);
+}
+
+void agilex5_security_interleaving_on(void)
+{
+	soc64_write_ccu(SOCFPGA_SECREG_NCAIU1AMIGR_REG, 1, 0x1f);
+	soc64_write_ccu(SOCFPGA_SECREG_DMI_SDRAM_2G_BAR_REG, 0x81200006, 0xc1f03e1f);
+	soc64_write_ccu(SOCFPGA_SECREG_DMI_SDRAM_30G_BAR_REG, 0x81600006, 0xc1f03e1f);
+	soc64_write_ccu(SOCFPGA_SECREG_DMI_SDRAM_480G_BAR_REG, 0x81a00006, 0xc1f03e1f);
+
+	soc64_write_fpga2soc(SOCFPGA_SECREG_NCAIU1AMIGR_REG, 1, 0x1f);
+	soc64_write_fpga2soc(SOCFPGA_SECREG_DMI_SDRAM_2G_BAR_REG, 0x81200006, 0xc1f03e1f);
+	soc64_write_fpga2soc(SOCFPGA_SECREG_DMI_SDRAM_30G_BAR_REG, 0x81600006, 0xc1f03e1f);
+	soc64_write_fpga2soc(SOCFPGA_SECREG_DMI_SDRAM_480G_BAR_REG, 0x81a00006, 0xc1f03e1f);
+
+	soc64_write_gic_m(SOCFPGA_SECREG_NCAIU1AMIGR_REG, 1, 0x1f);
+	soc64_write_gic_m(SOCFPGA_SECREG_DMI_SDRAM_2G_BAR_REG, 0x81200006, 0xc1f03e1f);
+	soc64_write_gic_m(SOCFPGA_SECREG_DMI_SDRAM_30G_BAR_REG, 0x81600006, 0xc1f03e1f);
+	soc64_write_gic_m(SOCFPGA_SECREG_DMI_SDRAM_480G_BAR_REG, 0x81a00006, 0xc1f03e1f);
+
+	soc64_write_tcu(SOCFPGA_SECREG_NCAIU1AMIGR_REG, 1, 0x1f);
+	soc64_write_tcu(SOCFPGA_SECREG_DMI_SDRAM_2G_BAR_REG, 0x81200006, 0xc1f03e1f);
+	soc64_write_tcu(SOCFPGA_SECREG_DMI_SDRAM_30G_BAR_REG, 0x81600006, 0xc1f03e1f);
+	soc64_write_tcu(SOCFPGA_SECREG_DMI_SDRAM_480G_BAR_REG, 0x81a00006, 0xc1f03e1f);
+
+	soc64_write_iom(SOCFPGA_SECREG_NCAIU1AMIGR_REG, 1, 0x1f);
+	soc64_write_iom(SOCFPGA_SECREG_DMI_SDRAM_2G_BAR_REG, 0x81200006, 0xc1f03e1f);
+	soc64_write_iom(SOCFPGA_SECREG_DMI_SDRAM_30G_BAR_REG, 0x81600006, 0xc1f03e1f);
+	soc64_write_iom(SOCFPGA_SECREG_DMI_SDRAM_480G_BAR_REG, 0x81a00006, 0xc1f03e1f);
+
+	soc64_write_dce0(SOCFPGA_SECREG_NCAIU1AMIGR_REG, 1, 0x1f);
+	soc64_write_dce0(SOCFPGA_SECREG_DMI_SDRAM_2G_BAR_REG, 0x81200006, 0xc1f03e1f);
+	soc64_write_dce0(SOCFPGA_SECREG_DMI_SDRAM_30G_BAR_REG, 0x81600006, 0xc1f03e1f);
+	soc64_write_dce0(SOCFPGA_SECREG_DMI_SDRAM_480G_BAR_REG, 0x81a00006, 0xc1f03e1f);
+
+	soc64_write_dce1(SOCFPGA_SECREG_NCAIU1AMIGR_REG, 1, 0x1f);
+	soc64_write_dce1(SOCFPGA_SECREG_DMI_SDRAM_2G_BAR_REG, 0x81200006, 0xc1f03e1f);
+	soc64_write_dce1(SOCFPGA_SECREG_DMI_SDRAM_30G_BAR_REG, 0x81600006, 0xc1f03e1f);
+	soc64_write_dce1(SOCFPGA_SECREG_DMI_SDRAM_480G_BAR_REG, 0x81a00006, 0xc1f03e1f);
+}
+
+void agilex5_initialize_security_policies(void)
+{
+	soc64_write_ccu(SOCFPGA_SECREG_NCAIU1AMIGR_REG, 0, 0x07070777);
+	soc64_write_ccu(SOCFPGA_SECREG_DII1_MPFE_LR_REG, 0x18000, 0xffffffff);
+	soc64_write_ccu(SOCFPGA_SECREG_DII1_MPFE_HR_REG, 0, 0xff);
+	soc64_write_ccu(SOCFPGA_SECREG_DII1_MPFE_BAR_REG, 0xc0e00200, 0xc1f03e1f);
+	soc64_write_ccu(SOCFPGA_CCU_DII2_GIC_LR_REG, 0x1d000, 0xffffffff);
+	soc64_write_ccu(SOCFPGA_CCU_DII2_GIC_HR_REG, 0, 0xff);
+	soc64_write_ccu(SOCFPGA_CCU_DII2_GIC_BAR_REG, 0xc0800400, 0xc1f03e1f);
+	soc64_write_ccu(SOCFPGA_SECREG_NCAIU0_LWSOC2FPGA_LR_REG, 0x20000, 0xffffffff);
+	soc64_write_ccu(SOCFPGA_SECREG_NCAIU0_LWSOC2FPGA_HR_REG, 0, 0xff);
+	soc64_write_ccu(SOCFPGA_SECREG_NCAIU0_LWSOC2FPGA_BAR_REG, 0xc1100006, 0xc1f03e1f);
+	soc64_write_ccu(SOCFPGA_SECREG_NCAIU0_SOC2FPGA_1G_LR_REG, 0x40000, 0xffffffff);
+	soc64_write_ccu(SOCFPGA_SECREG_NCAIU0_SOC2FPGA_1G_HR_REG, 0, 0xff);
+	soc64_write_ccu(SOCFPGA_SECREG_NCAIU0_SOC2FPGA_1G_BAR_REG, 0xc1200006, 0xc1f03e1f);
+	soc64_write_ccu(SOCFPGA_SECREG_DMI_SDRAM_2G_LR_REG, 0x80000, 0xffffffff);
+	soc64_write_ccu(SOCFPGA_SECREG_DMI_SDRAM_2G_HR_REG, 0, 0xff);
+	soc64_write_ccu(SOCFPGA_SECREG_NCAIU0_SOC2FPGA_16G_LR_REG, 0x400000, 0xffffffff);
+	soc64_write_ccu(SOCFPGA_SECREG_NCAIU0_SOC2FPGA_16G_HR_REG, 0, 0xff);
+	soc64_write_ccu(SOCFPGA_SECREG_NCAIU0_SOC2FPGA_16G_BAR_REG, 0xc1600006, 0xc1f03e1f);
+	soc64_write_ccu(SOCFPGA_SECREG_DMI_SDRAM_30G_LR_REG, 0x800000, 0xffffffff);
+	soc64_write_ccu(SOCFPGA_SECREG_DMI_SDRAM_30G_HR_REG, 0, 0xff);
+	soc64_write_ccu(SOCFPGA_SECREG_NCAIU0_SOC2FPGA_256G_LR_REG, 0x4000000, 0xffffff);
+	soc64_write_ccu(SOCFPGA_SECREG_NCAIU0_SOC2FPGA_256G_HR_REG, 0, 0xff);
+	soc64_write_ccu(SOCFPGA_SECREG_NCAIU0_SOC2FPGA_256G_BAR_REG, 0x6, 0xf); //
+	soc64_write_ccu(SOCFPGA_SECREG_DMI_SDRAM_480G_LR_REG, 0x8000000, 0xffffffff);
+	soc64_write_ccu(SOCFPGA_SECREG_DMI_SDRAM_480G_HR_REG, 0, 0xff);
+
+	soc64_write_fpga2soc(SOCFPGA_SECREG_NCAIU1MIFSR_REG, 0, 0x7070777);
+	soc64_write_fpga2soc(SOCFPGA_FPGA2SOC_PSS_LR_REG, 0x10000, 0xffffffff);
+	soc64_write_fpga2soc(SOCFPGA_FPGA2SOC_PSS_HR_REG, 0, 0xff);
+	soc64_write_fpga2soc(SOCFPGA_FPGA2SOC_PSS_BAR_REG, 0xc0f00000, 0xc1f03e1f);
+	soc64_write_fpga2soc(SOCFPGA_SECREG_DII1_MPFE_LR_REG, 0x18000, 0xffffffff);
+	soc64_write_fpga2soc(SOCFPGA_SECREG_DII1_MPFE_HR_REG, 0, 0xff);
+	soc64_write_fpga2soc(SOCFPGA_SECREG_DII1_MPFE_BAR_REG, 0xc0e00200, 0xc1f03e1f);
+	soc64_write_fpga2soc(SOCFPGA_SECREG_NCAIU0_LWSOC2FPGA_BAR_REG, 0x20000, 0xffffffff);
+	soc64_write_fpga2soc(SOCFPGA_SECREG_NCAIU0_LWSOC2FPGA_LR_REG, 0, 0xff);
+	soc64_write_fpga2soc(SOCFPGA_SECREG_NCAIU0_LWSOC2FPGA_HR_REG, 0xc1100006, 0xc1f03e1f);
+	soc64_write_fpga2soc(SOCFPGA_SECREG_NCAIU0_SOC2FPGA_1G_LR_REG, 0x40000, 0xffffffff);
+	soc64_write_fpga2soc(SOCFPGA_SECREG_NCAIU0_SOC2FPGA_1G_HR_REG, 0, 0xff);
+	soc64_write_fpga2soc(SOCFPGA_SECREG_NCAIU0_SOC2FPGA_1G_BAR_REG, 0xc1200006, 0xc1f03e1f);
+	soc64_write_fpga2soc(SOCFPGA_SECREG_DMI_SDRAM_2G_LR_REG, 0x80000, 0xffffffff);
+	soc64_write_fpga2soc(SOCFPGA_SECREG_DMI_SDRAM_2G_HR_REG, 0, 0xff);
+	soc64_write_fpga2soc(SOCFPGA_SECREG_NCAIU0_SOC2FPGA_16G_LR_REG, 0x400000, 0xffffffff);
+	soc64_write_fpga2soc(SOCFPGA_SECREG_NCAIU0_SOC2FPGA_16G_HR_REG, 0, 0xff);
+	soc64_write_fpga2soc(SOCFPGA_SECREG_NCAIU0_SOC2FPGA_16G_BAR_REG, 0xc1600006, 0xc1f03e1f);
+	soc64_write_fpga2soc(SOCFPGA_SECREG_DMI_SDRAM_30G_LR_REG, 0x800000, 0xffffffff);
+	soc64_write_fpga2soc(SOCFPGA_SECREG_DMI_SDRAM_30G_HR_REG, 0, 0xff);
+	soc64_write_fpga2soc(SOCFPGA_SECREG_NCAIU0_SOC2FPGA_256G_LR_REG, 0x4000000, 0xffffffff);
+	soc64_write_fpga2soc(SOCFPGA_SECREG_NCAIU0_SOC2FPGA_256G_HR_REG, 0, 0xff);
+	soc64_write_fpga2soc(SOCFPGA_SECREG_NCAIU0_SOC2FPGA_256G_BAR_REG, 0xc1a00006, 0xc1f03e1f);
+	soc64_write_fpga2soc(SOCFPGA_SECREG_DMI_SDRAM_480G_LR_REG, 0x8000000, 0xffffffff);
+	soc64_write_fpga2soc(SOCFPGA_SECREG_DMI_SDRAM_480G_HR_REG, 0, 0xff);
+
+	soc64_write_gic_m(SOCFPGA_SECREG_NCAIU1MIFSR_REG, 0, 0x7070777);
+	soc64_write_gic_m(SOCFPGA_SECREG_DMI_SDRAM_2G_LR_REG, 0x80000, 0xffffffff);
+	soc64_write_gic_m(SOCFPGA_SECREG_DMI_SDRAM_2G_HR_REG, 0, 0xff);
+	soc64_write_gic_m(SOCFPGA_SECREG_DMI_SDRAM_30G_LR_REG, 0x800000, 0xffffffff);
+	soc64_write_gic_m(SOCFPGA_SECREG_DMI_SDRAM_30G_HR_REG, 0, 0xff);
+	soc64_write_gic_m(SOCFPGA_SECREG_DMI_SDRAM_480G_LR_REG, 0x8000000, 0xffffffff);
+	soc64_write_gic_m(SOCFPGA_SECREG_DMI_SDRAM_480G_HR_REG, 0, 0xff);
+
+	soc64_write_tcu(SOCFPGA_SECREG_NCAIU1MIFSR_REG, 0, 0x7070777);
+	soc64_write_tcu(SOCFPGA_SECREG_DMI_SDRAM_2G_LR_REG, 0x80000, 0xffffffff);
+	soc64_write_tcu(SOCFPGA_SECREG_DMI_SDRAM_2G_HR_REG, 0, 0xff);
+	soc64_write_tcu(SOCFPGA_SECREG_DMI_SDRAM_30G_LR_REG, 0x800000, 0xffffffff);
+	soc64_write_tcu(SOCFPGA_SECREG_DMI_SDRAM_30G_HR_REG, 0, 0xff);
+	soc64_write_tcu(SOCFPGA_SECREG_DMI_SDRAM_480G_LR_REG, 0x8000000, 0xffffffff);
+	soc64_write_tcu(SOCFPGA_SECREG_DMI_SDRAM_480G_HR_REG, 0, 0xff);
+
+	soc64_write_iom(SOCFPGA_SECREG_NCAIU1MIFSR_REG, 0, 0x7070777);
+	soc64_write_iom(SOCFPGA_SECREG_DII1_MPFE_LR_REG, 0x18000, 0xffffffff);
+	soc64_write_iom(SOCFPGA_SECREG_DII1_MPFE_HR_REG, 0, 0xff);
+	soc64_write_iom(SOCFPGA_SECREG_DII1_MPFE_BAR_REG, 0xc0e00200, 0xc1f03e1f);
+	soc64_write_iom(SOCFPGA_SECREG_DMI_SDRAM_2G_LR_REG, 0x80000, 0xffffffff);
+	soc64_write_iom(SOCFPGA_SECREG_DMI_SDRAM_2G_HR_REG, 0, 0xff);
+	soc64_write_iom(SOCFPGA_SECREG_DMI_SDRAM_30G_LR_REG, 0x800000, 0xffffffff);
+	soc64_write_iom(SOCFPGA_SECREG_DMI_SDRAM_30G_HR_REG, 0, 0xff);
+	soc64_write_iom(SOCFPGA_SECREG_DMI_SDRAM_480G_LR_REG, 0x8000000, 0xffffffff);
+	soc64_write_iom(SOCFPGA_SECREG_DMI_SDRAM_480G_HR_REG, 0, 0xff);
+
+	soc64_write_dce0(SOCFPGA_SECREG_NCAIU1MIFSR_REG, 0, 0x7070777);
+	soc64_write_dce0(SOCFPGA_SECREG_DMI_SDRAM_2G_LR_REG, 0x80000, 0xffffffff);
+	soc64_write_dce0(SOCFPGA_SECREG_DMI_SDRAM_2G_HR_REG, 0, 0xff);
+	soc64_write_dce0(SOCFPGA_SECREG_DMI_SDRAM_30G_LR_REG, 0x800000, 0xffffffff);
+	soc64_write_dce0(SOCFPGA_SECREG_DMI_SDRAM_30G_HR_REG, 0, 0xff);
+	soc64_write_dce0(SOCFPGA_SECREG_DMI_SDRAM_480G_LR_REG, 0x8000000, 0xffffffff);
+	soc64_write_dce0(SOCFPGA_SECREG_DMI_SDRAM_480G_HR_REG, 0, 0xff);
+	soc64_write_dce1(SOCFPGA_SECREG_NCAIU1MIFSR_REG, 0, 0x7070777);
+	soc64_write_dce1(SOCFPGA_SECREG_DMI_SDRAM_2G_LR_REG, 0x80000, 0xffffffff);
+	soc64_write_dce1(SOCFPGA_SECREG_DMI_SDRAM_2G_HR_REG, 0, 0xff);
+	soc64_write_dce1(SOCFPGA_SECREG_DMI_SDRAM_30G_LR_REG, 0x800000, 0xffffffff);
+	soc64_write_dce1(SOCFPGA_SECREG_DMI_SDRAM_30G_HR_REG, 0, 0xff);
+	soc64_write_dce1(SOCFPGA_SECREG_DMI_SDRAM_480G_LR_REG, 0x8000000, 0xffffffff);
+	soc64_write_dce1(SOCFPGA_SECREG_DMI_SDRAM_480G_HR_REG, 0, 0xff);
+	soc64_write_dmi0(SOCFPGA_DMI0_DMIUSMCTCR_REG, 1, 0x3);
+	soc64_write_dmi0(SOCFPGA_DMI0_DMIUSMCTCR_REG, 3, 0x3);
+	soc64_write_dmi1(SOCFPGA_DMI1_DMIUSMCTCR_REG, 1, 0x3);
+	soc64_write_dmi1(SOCFPGA_DMI1_DMIUSMCTCR_REG, 3, 0x3);
+
+	soc64_write_l4_per(SOCFPGA_FIREWALL_L4_PER_NAND_REG, 0x1010001, 0x1010001);
+	soc64_write_l4_per(SOCFPGA_FIREWALL_L4_PER_USB0_REG, 0x1010001, 0x1010001);
+	soc64_write_l4_per(SOCFPGA_FIREWALL_L4_PER_USB1_REG, 0x1010001, 0x1010001);
+	soc64_write_l4_per(SOCFPGA_FIREWALL_L4_PER_SPI_MAIN0_REG, 0x1010301, 0x1010301);
+	soc64_write_l4_per(SOCFPGA_FIREWALL_L4_PER_SPI_MAIN1_REG, 0x1010301, 0x1010301);
+	soc64_write_l4_per(SOCFPGA_FIREWALL_L4_PER_SPI_SEC0_REG, 0x1010301, 0x1010301);
+	soc64_write_l4_per(SOCFPGA_FIREWALL_L4_PER_SPI_SEC1_REG, 0x1010301, 0x1010301);
+	soc64_write_l4_per(SOCFPGA_FIREWALL_L4_PER_EMAC0_REG, 0x1010001, 0x1010001);
+	soc64_write_l4_per(SOCFPGA_FIREWALL_L4_PER_EMAC1_REG, 0x1010001, 0x1010001);
+	soc64_write_l4_per(SOCFPGA_FIREWALL_L4_PER_EMAC2_REG, 0x1010001, 0x1010001);
+	soc64_write_l4_per(SOCFPGA_FIREWALL_L4_PER_SDMMC_REG, 0x1010001, 0x1010001);
+	soc64_write_l4_per(SOCFPGA_FIREWALL_L4_PER_GPIO0_REG, 0x1010301, 0x1010301);
+	soc64_write_l4_per(SOCFPGA_FIREWALL_L4_PER_GPIO1_REG, 0x1010301, 0x1010301);
+	soc64_write_l4_per(SOCFPGA_FIREWALL_L4_PER_I2C0_REG, 0x1010301, 0x1010301);
+	soc64_write_l4_per(SOCFPGA_FIREWALL_L4_PER_I2C1_REG, 0x1010301, 0x1010301);
+	soc64_write_l4_per(SOCFPGA_FIREWALL_L4_PER_I2C2_REG, 0x1010301, 0x1010301);
+	soc64_write_l4_per(SOCFPGA_FIREWALL_L4_PER_I2C3_REG, 0x1010301, 0x1010301);
+	soc64_write_l4_per(SOCFPGA_FIREWALL_L4_PER_I2C4_REG, 0x1010301, 0x1010301);
+	soc64_write_l4_per(SOCFPGA_FIREWALL_L4_PER_SP_TIMER0_REG, 0x1010301, 0x1010301);
+	soc64_write_l4_per(SOCFPGA_FIREWALL_L4_PER_SP_TIMER1_REG, 0x1010301, 0x1010301);
+	soc64_write_l4_per(SOCFPGA_FIREWALL_L4_PER_UART0_REG, 0x1010301, 0x1010301);
+	soc64_write_l4_per(SOCFPGA_FIREWALL_L4_PER_UART1_REG, 0x1010301, 0x1010301);
+	soc64_write_l4_per(SOCFPGA_FIREWALL_L4_PER_I3C0_REG, 0x1010301, 0x1010301);
+	soc64_write_l4_per(SOCFPGA_FIREWALL_L4_PER_I3C1_REG, 0x1010301, 0x1010301);
+	soc64_write_l4_per(SOCFPGA_FIREWALL_L4_PER_DMA0_REG, 0x1010001, 0x1010001);
+	soc64_write_l4_per(SOCFPGA_FIREWALL_L4_PER_DMA1_REG, 0x1010001, 0x1010001);
+	soc64_write_l4_per(SOCFPGA_FIREWALL_L4_PER_COMBO_PHY_REG, 0x1010001, 0x1010001);
+	soc64_write_l4_per(SOCFPGA_FIREWALL_L4_PER_NAND_SDMA_REG, 0x1010301, 0x1010301);
+
+	soc64_write_l4_sys(SOCFPGA_FIREWALL_L4_SYS_DMA_ECC_REG, 0x1010001, 0x1010001);
+	soc64_write_l4_sys(SOCFPGA_FIREWALL_L4_SYS_EMAC0RX_ECC_REG, 0x1010001, 0x1010001);
+	soc64_write_l4_sys(SOCFPGA_FIREWALL_L4_SYS_EMAC0TX_ECC_REG, 0x1010001, 0x1010001);
+	soc64_write_l4_sys(SOCFPGA_FIREWALL_L4_SYS_EMAC1RX_ECC_REG, 0x1010001, 0x1010001);
+	soc64_write_l4_sys(SOCFPGA_FIREWALL_L4_SYS_EMAC1TX_ECC_REG, 0x1010001, 0x1010001);
+	soc64_write_l4_sys(SOCFPGA_FIREWALL_L4_SYS_EMAC2RX_ECC_REG, 0x1010001, 0x1010001);
+	soc64_write_l4_sys(SOCFPGA_FIREWALL_L4_SYS_EMAC2TX_ECC_REG, 0x1010001, 0x1010001);
+	soc64_write_l4_sys(SOCFPGA_FIREWALL_L4_SYS_NAND_ECC_REG, 0x1010001, 0x1010001);
+	soc64_write_l4_sys(SOCFPGA_FIREWALL_L4_SYS_NAND_READ_ECC_REG, 0x1010001, 0x1010001);
+	soc64_write_l4_sys(SOCFPGA_FIREWALL_L4_SYS_NAND_WRITE_ECC_REG, 0x1010001, 0x1010001);
+	soc64_write_l4_sys(SOCFPGA_FIREWALL_L4_SYS_OCRAM_ECC_REG, 0x1010001, 0x1010001);
+	soc64_write_l4_sys(SOCFPGA_FIREWALL_L4_SYS_SDMMC_ECC_REG, 0x1010001, 0x1010001);
+	soc64_write_l4_sys(SOCFPGA_FIREWALL_L4_SYS_USB0_ECC_REG, 0x1010001, 0x1010001);
+	soc64_write_l4_sys(SOCFPGA_FIREWALL_L4_SYS_USB1_CACHEECC_REG, 0x1010001, 0x1010001);
+	soc64_write_l4_sys(SOCFPGA_FIREWALL_L4_SYS_CLOCK_MANAGER_REG, 0x1010001, 0x1010001);
+	soc64_write_l4_sys(SOCFPGA_FIREWALL_L4_SYS_IO_MANAGER_REG, 0x1010001, 0x1010001);
+	soc64_write_l4_sys(SOCFPGA_FIREWALL_L4_SYS_RESET_MANAGER_REG, 0x1010001, 0x1010001);
+	soc64_write_l4_sys(SOCFPGA_FIREWALL_L4_SYS_SYSTEM_MANAGER_REG, 0x1010001, 0x1010001);
+	soc64_write_l4_sys(SOCFPGA_FIREWALL_L4_SYS_OSC0_TIMER_REG, 0x1010301, 0x1010301);
+	soc64_write_l4_sys(SOCFPGA_FIREWALL_L4_SYS_OSC1_TIMER0_REG, 0x1010301, 0x1010301);
+	soc64_write_l4_sys(SOCFPGA_FIREWALL_L4_SYS_WATCHDOG0_REG, 0x1010301, 0x1010301);
+	soc64_write_l4_sys(SOCFPGA_FIREWALL_L4_SYS_WATCHDOG1_REG, 0x1010301, 0x1010301);
+	soc64_write_l4_sys(SOCFPGA_FIREWALL_L4_SYS_WATCHDOG2_REG, 0x1010301, 0x1010301);
+	soc64_write_l4_sys(SOCFPGA_FIREWALL_L4_SYS_WATCHDOG3_REG, 0x1010301, 0x1010301);
+	soc64_write_l4_sys(SOCFPGA_FIREWALL_L4_SYS_DAP_REG, 0x1010001, 0x1010001);
+	soc64_write_l4_sys(SOCFPGA_FIREWALL_L4_SYS_WATCHDOG4_REG, 0x1010301, 0x1010301);
+	soc64_write_l4_sys(SOCFPGA_FIREWALL_L4_SYS_POWER_MANAGER_REG, 0x1010001, 0x1010001);
+	soc64_write_l4_sys(SOCFPGA_FIREWALL_L4_SYS_USB1_RXECC_REG, 0x1010001, 0x1010001);
+	soc64_write_l4_sys(SOCFPGA_FIREWALL_L4_SYS_USB1_TXECC_REG, 0x1010001, 0x1010001);
+	soc64_write_l4_sys(SOCFPGA_FIREWALL_L4_SYS_L4_NOC_PROBES_REG, 0x1010001, 0x1010001);
+	soc64_write_l4_sys(SOCFPGA_FIREWALL_L4_SYS_L4_NOC_QOS_REG, 0x1010001, 0x1010001);
+
+	soc64_set(IOMEM(SOCFPGA_FIREWALL_SOC2FPGA_ADDRESS), 0, 0xffe0301, 0xffe0301);
+	soc64_set(IOMEM(SOCFPGA_FIREWALL_LWSOC2FPGA_ADDRESS), 0, 0xffe0301, 0xffe0301);
+	soc64_set(IOMEM(SOCFPGA_FIREWALL_TCU_ADDRESS), 0, 0xffe0301, 0xffe0301);
+
+	/* Enable non-secure access to ocram */
+	clrbits_le32(SOCFPGA_OCRAM_FIREWALL_ADDRESS + 0x18, BIT(0));
+}
diff --git a/arch/arm/mach-socfpga/atf.c b/arch/arm/mach-socfpga/atf.c
new file mode 100644
index 0000000000000000000000000000000000000000..23e2fffdce59c6da4c4e1b632e5ddb9ba22889b1
--- /dev/null
+++ b/arch/arm/mach-socfpga/atf.c
@@ -0,0 +1,34 @@
+// SPDX-License-Identifier: GPL-2.0-only
+#include <asm/sections.h>
+#include <common.h>
+#include <firmware.h>
+#include <asm-generic/memory_layout.h>
+#include <asm/atf_common.h>
+#include <asm/barebox-arm.h>
+#include <mach/socfpga/atf.h>
+#include <mach/socfpga/generic.h>
+#include <mach/socfpga/soc64-regs.h>
+
+void __noreturn agilex5_load_and_start_image_via_tfa(unsigned long memsize)
+{
+	unsigned long atf_dest = AGILEX5_ATF_BL31_BASE_ADDR;
+	void __noreturn (*bl31)(void) = (void *)atf_dest;
+	const void *tfa;
+	size_t tfa_size;
+
+	pr_debug("Load TFA\n");
+
+	memcpy((void *)AGILEX5_ATF_BL33_BASE_ADDR, __image_start, barebox_image_size);
+
+	get_builtin_firmware(agilex5_bl31_bin, &tfa, &tfa_size);
+
+	memcpy(bl31, tfa, tfa_size);
+
+	asm volatile("msr sp_el2, %0" : :
+		     "r" (AGILEX5_ATF_BL33_BASE_ADDR - 16) :
+		     "cc");
+
+	pr_debug("Jumping to @0x%08lx\n", atf_dest);
+	bl31_entry((uintptr_t)bl31, 0, AGILEX5_ATF_BL33_BASE_ADDR, 0);
+	__builtin_unreachable();
+}
diff --git a/arch/arm/mach-socfpga/cpu_init.c b/arch/arm/mach-socfpga/cpu_init.c
index bed0dabc38e4611898d6bf1e57e2be2e01f56d7d..a1e27f14e23dbeea6500871e372ff86fd1fddcd9 100644
--- a/arch/arm/mach-socfpga/cpu_init.c
+++ b/arch/arm/mach-socfpga/cpu_init.c
@@ -1,11 +1,19 @@
 // SPDX-License-Identifier: GPL-2.0
 
 #include <common.h>
+#include <io.h>
+#include <debug_ll.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/cache.h>
 #include <asm/errata.h>
 #include <mach/socfpga/init.h>
+#include <mach/socfpga/agilex5-clk.h>
+#include <mach/socfpga/mailbox_s10.h>
+#include <mach/socfpga/soc64-regs.h>
+#include <mach/socfpga/soc64-reset-manager.h>
+#include <mach/socfpga/soc64-system-manager.h>
 
+#ifdef CONFIG_CPU_32
 void arria10_cpu_lowlevel_init(void)
 {
 	arm_early_mmu_cache_invalidate();
@@ -14,3 +22,38 @@ void arria10_cpu_lowlevel_init(void)
 	enable_arm_errata_794072_war();
 	enable_arm_errata_845369_war();
 }
+#else
+void socfpga_agilex5_cpu_lowlevel_init(void)
+{
+	int enable = 0x3;
+	int loadval = ~0;
+	int val;
+
+	arm_cpu_lowlevel_init();
+
+	agilex5_sysmgr_pinmux_init();
+
+	/* Disable all watchdogs */
+	writel(SYSMGR_WDDBG_PAUSE_ALL_CPU, SOCFPGA_SYSMGR_ADDRESS +
+			SYSMGR_SOC64_WDDBG);
+	/* Let everything out of reset but the watchdogs */
+	val = 0xf;
+	writel(val, SOCFPGA_RSTMGR_ADDRESS + RSTMGR_SOC64_PER1MODRST);
+
+	/* de-assert resets */
+	writel(0, SOCFPGA_RSTMGR_ADDRESS + RSTMGR_SOC64_BRGMODRST);
+
+	/* configure DFI_SEL for SDMMC */
+	writel(SYSMGR_SOC64_COMBOPHY_DFISEL_SDMMC,
+	       SOCFPGA_SYSMGR_ADDRESS + SYSMGR_SOC64_COMBOPHY_DFISEL);
+
+	writel(enable, SOCFPGA_GTIMER_SEC_ADDRESS);
+	asm volatile("msr cntp_ctl_el0, %0" : : "r" (enable));
+	asm volatile("msr cntp_tval_el0, %0" : : "r" (loadval));
+
+	/* configure default base clkmgr clock - 200MHz */
+	val = readl(SOCFPGA_CLKMGR_ADDRESS + CLKMGR_MAINPLL_NOCDIV);
+	val &= 0xfffcffff | (CLKMGR_NOCDIV_SOFTPHY_DIV_ONE << CLKMGR_NOCDIV_SOFTPHY_OFFSET);
+	writel(val, SOCFPGA_CLKMGR_ADDRESS + CLKMGR_MAINPLL_NOCDIV);
+}
+#endif
diff --git a/arch/arm/mach-socfpga/iossm_mailbox.c b/arch/arm/mach-socfpga/iossm_mailbox.c
new file mode 100644
index 0000000000000000000000000000000000000000..0e8c9e36017dd8b0d5b98d73d0c201f3bfb02edd
--- /dev/null
+++ b/arch/arm/mach-socfpga/iossm_mailbox.c
@@ -0,0 +1,511 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2022-2024 Intel Corporation <www.intel.com>
+ *
+ */
+
+#define pr_fmt(fmt) "iossm_mailbox: " fmt
+
+#include <common.h>
+#include <io.h>
+#include <linux/bitfield.h>
+#include "iossm_mailbox.h"
+#include <mach/socfpga/generic.h>
+#include <mach/socfpga/soc64-regs.h>
+#include <mach/socfpga/soc64-system-manager.h>
+
+#define ECC_INTSTATUS_SERR SOCFPGA_SYSMGR_ADDRESS + 0x9C
+#define ECC_INISTATUS_DERR SOCFPGA_SYSMGR_ADDRESS + 0xA0
+#define DDR_CSR_CLKGEN_LOCKED_IO96B0_MASK BIT(16)
+#define DDR_CSR_CLKGEN_LOCKED_IO96B1_MASK BIT(17)
+
+#define DDR_CSR_CLKGEN_LOCKED_IO96B_MASK(x)	(i == 0 ? DDR_CSR_CLKGEN_LOCKED_IO96B0_MASK : \
+							DDR_CSR_CLKGEN_LOCKED_IO96B1_MASK)
+#define MAX_RETRY_COUNT 3
+#define NUM_CMD_RESPONSE_DATA 3
+
+#define INTF_IP_TYPE_MASK	GENMASK(31, 29)
+#define INTF_INSTANCE_ID_MASK	GENMASK(28, 24)
+
+/* supported DDR type list */
+static const char *ddr_type_list[7] = {
+		"DDR4", "DDR5", "DDR5_RDIMM", "LPDDR4", "LPDDR5", "QDRIV", "UNKNOWN"
+};
+
+static int wait_for_timeout(const void __iomem *reg, u32 mask, bool set)
+{
+	int timeout = 1000000;
+	int val;
+
+	while (timeout > 0) {
+		val = readl(IOMEM(reg));
+		if (!set)
+			val = ~val;
+
+		if ((val & mask) == mask)
+			return 0;
+		__udelay(10);
+		timeout--;
+	}
+
+	return -ETIMEDOUT;
+}
+
+static int is_ddr_csr_clkgen_locked(u32 clkgen_mask, u8 num_port)
+{
+	int ret;
+
+	ret = wait_for_timeout(IOMEM(ECC_INTSTATUS_SERR), clkgen_mask, true);
+	if (ret) {
+		pr_debug("%s: ddr csr clkgena locked is timeout\n", __func__);
+		return ret;
+	}
+
+	return 0;
+}
+
+/* Mailbox request function
+ * This function will send the request to IOSSM mailbox and wait for response return
+ *
+ * @io96b_csr_addr: CSR address for the target IO96B
+ * @ip_type:	    IP type for the specified memory interface
+ * @instance_id:    IP instance ID for the specified memory interface
+ * @usr_cmd_type:   User desire IOSSM mailbox command type
+ * @usr_cmd_opcode: User desire IOSSM mailbox command opcode
+ * @cmd_param_*:    Parameters (if applicable) for the requested IOSSM mailbox command
+ * @resp:			Structure contain responses returned from the requested IOSSM
+ *					mailbox command
+ */
+int io96b_mb_req(phys_addr_t io96b_csr_addr, u32 ip_type, u32 instance_id,
+		 u32 usr_cmd_type, u32 usr_cmd_opcode, u32 cmd_param_0,
+		 u32 cmd_param_1, u32 cmd_param_2, u32 cmd_param_3,
+		 u32 cmd_param_4, u32 cmd_param_5, u32 cmd_param_6,
+		 struct io96b_mb_resp *resp)
+{
+	int i;
+	int ret;
+	u32 cmd_req, cmd_resp;
+
+	/* Initialized zeros for responses*/
+	memset(resp, 0x0, sizeof(*resp));
+
+	/* Ensure CMD_REQ is cleared before write any command request */
+	ret = wait_for_timeout((IOMEM(io96b_csr_addr) + IOSSM_CMD_REQ_OFFSET), GENMASK(31, 0), false);
+	if (ret) {
+		pr_err("%s: CMD_REQ not ready\n", __func__);
+		return -1;
+	}
+
+	/* Write CMD_PARAM_* */
+	if (cmd_param_0)
+		writel(cmd_param_0, io96b_csr_addr + IOSSM_CMD_PARAM_0_OFFSET);
+	if (cmd_param_1)
+		writel(cmd_param_1, io96b_csr_addr + IOSSM_CMD_PARAM_1_OFFSET);
+	if (cmd_param_2)
+		writel(cmd_param_2, io96b_csr_addr + IOSSM_CMD_PARAM_2_OFFSET);
+	if (cmd_param_3)
+		writel(cmd_param_3, io96b_csr_addr + IOSSM_CMD_PARAM_3_OFFSET);
+	if (cmd_param_4)
+		writel(cmd_param_4, io96b_csr_addr + IOSSM_CMD_PARAM_4_OFFSET);
+	if (cmd_param_5)
+		writel(cmd_param_5, io96b_csr_addr + IOSSM_CMD_PARAM_5_OFFSET);
+	if (cmd_param_6)
+		writel(cmd_param_6, io96b_csr_addr + IOSSM_CMD_PARAM_6_OFFSET);
+
+	/* Write CMD_REQ (IP_TYPE, IP_INSTANCE_ID, CMD_TYPE and CMD_OPCODE) */
+	cmd_req = (usr_cmd_opcode << 0) | (usr_cmd_type << 16) | (instance_id << 24) |
+		(ip_type << 29);
+	writel(cmd_req, io96b_csr_addr + IOSSM_CMD_REQ_OFFSET);
+	pr_debug("%s: Write 0x%x to IOSSM_CMD_REQ_OFFSET 0x%llx\n", __func__,
+		 cmd_req, io96b_csr_addr + IOSSM_CMD_REQ_OFFSET);
+
+	/* Read CMD_RESPONSE_READY in CMD_RESPONSE_STATUS*/
+	ret = wait_for_timeout((IOMEM(io96b_csr_addr) + IOSSM_CMD_RESPONSE_STATUS_OFFSET),
+			       IOSSM_STATUS_COMMAND_RESPONSE_READY, true);
+	if (ret) {
+		pr_err("%s: CMD_RESPONSE ERROR:\n", __func__);
+		cmd_resp = readl(io96b_csr_addr + IOSSM_CMD_RESPONSE_STATUS_OFFSET);
+		pr_err("%s: STATUS_GENERAL_ERROR: 0x%x\n", __func__, (cmd_resp >> 1) & 0xF);
+		pr_err("%s: STATUS_CMD_RESPONSE_ERROR: 0x%x\n", __func__, (cmd_resp >> 5) & 0x7);
+	}
+
+	/* read CMD_RESPONSE_STATUS*/
+	resp->cmd_resp_status = readl(io96b_csr_addr + IOSSM_CMD_RESPONSE_STATUS_OFFSET);
+	pr_debug("%s: CMD_RESPONSE_STATUS 0x%llx: 0x%x\n", __func__, io96b_csr_addr +
+		IOSSM_CMD_RESPONSE_STATUS_OFFSET, resp->cmd_resp_status);
+
+	/* read CMD_RESPONSE_DATA_* */
+	resp->cmd_resp_data[0] = readl(io96b_csr_addr + IOSSM_CMD_RESPONSE_DATA_0_OFFSET);
+	pr_debug("%s: IOSSM_CMD_RESPONSE_DATA_0_OFFSET 0x%llx: 0x%x\n",
+		 __func__, io96b_csr_addr + IOSSM_CMD_RESPONSE_DATA_0_OFFSET,
+		 resp->cmd_resp_data[i]);
+	resp->cmd_resp_data[1] = readl(io96b_csr_addr + IOSSM_CMD_RESPONSE_DATA_1_OFFSET);
+	pr_debug("%s: IOSSM_CMD_RESPONSE_DATA_1_OFFSET 0x%llx: 0x%x\n",
+		 __func__, io96b_csr_addr + IOSSM_CMD_RESPONSE_DATA_1_OFFSET,
+		 resp->cmd_resp_data[i]);
+	resp->cmd_resp_data[2] = readl(io96b_csr_addr + IOSSM_CMD_RESPONSE_DATA_2_OFFSET);
+	pr_debug("%s: IOSSM_CMD_RESPONSE_DATA_2_OFFSET 0x%llx: 0x%x\n",
+		 __func__, io96b_csr_addr + IOSSM_CMD_RESPONSE_DATA_2_OFFSET,
+		 resp->cmd_resp_data[i]);
+
+	resp->cmd_resp_status = readl(io96b_csr_addr + IOSSM_CMD_RESPONSE_STATUS_OFFSET);
+	pr_debug("%s: CMD_RESPONSE_STATUS 0x%llx: 0x%x\n", __func__,
+		 io96b_csr_addr + IOSSM_CMD_RESPONSE_STATUS_OFFSET,
+		 resp->cmd_resp_status);
+
+	/* write CMD_RESPONSE_READY = 0 */
+	clrbits_le32((u32 *)(uintptr_t)(io96b_csr_addr + IOSSM_CMD_RESPONSE_STATUS_OFFSET),
+		     IOSSM_STATUS_COMMAND_RESPONSE_READY);
+
+	resp->cmd_resp_status = readl(io96b_csr_addr + IOSSM_CMD_RESPONSE_STATUS_OFFSET);
+	pr_debug("%s: CMD_RESPONSE_READY 0x%llx: 0x%x\n", __func__, io96b_csr_addr +
+		 IOSSM_CMD_RESPONSE_STATUS_OFFSET, resp->cmd_resp_status);
+
+	return 0;
+}
+
+/*
+ * Initial function to be called to set memory interface IP type and instance ID
+ * IP type and instance ID need to be determined before sending mailbox command
+ */
+void io96b_mb_init(struct io96b_info *io96b_ctrl)
+{
+	struct io96b_mb_resp usr_resp;
+	u8 ip_type_ret, instance_id_ret;
+	int i, j, k;
+
+	pr_debug("%s: num_instance %d\n", __func__, io96b_ctrl->num_instance);
+	for (i = 0; i < io96b_ctrl->num_instance; i++) {
+		pr_debug("%s: get memory interface IO96B %d\n", __func__, i);
+		/* Get memory interface IP type and instance ID (IP identifier) */
+		io96b_mb_req_no_param(io96b_ctrl->io96b[i].io96b_csr_addr, 0, 0,
+				      CMD_GET_SYS_INFO, GET_MEM_INTF_INFO, &usr_resp);
+		pr_debug("%s: get response from memory interface IO96B %d\n", __func__, i);
+		/* Retrieve number of memory interface(s) */
+		io96b_ctrl->io96b[i].mb_ctrl.num_mem_interface =
+			IOSSM_CMD_RESPONSE_DATA_SHORT(usr_resp.cmd_resp_status) & 0x3;
+		pr_debug("%s: IO96B %d: num_mem_interface: 0x%x\n", __func__,
+			 i, io96b_ctrl->io96b[i].mb_ctrl.num_mem_interface);
+
+		/* Retrieve memory interface IP type and instance ID (IP identifier) */
+		j = 0;
+		for (k = 0; k < io96b_ctrl->io96b[i].mb_ctrl.num_mem_interface; k++) {
+			ip_type_ret = FIELD_GET(INTF_IP_TYPE_MASK, usr_resp.cmd_resp_data[k]);
+			instance_id_ret = FIELD_GET(INTF_INSTANCE_ID_MASK,
+						    usr_resp.cmd_resp_data[k]);
+
+			if (ip_type_ret) {
+				io96b_ctrl->io96b[i].mb_ctrl.ip_type[j] = ip_type_ret;
+				io96b_ctrl->io96b[i].mb_ctrl.ip_instance_id[j] = instance_id_ret;
+				pr_debug("%s: IO96B %d mem_interface %d: ip_type_ret: 0x%x\n",
+					 __func__, i, j, ip_type_ret);
+				pr_debug("%s: IO96B %d mem_interface %d: instance_id_ret: 0x%x\n",
+					 __func__, i, j, instance_id_ret);
+				j++;
+			}
+		}
+	}
+}
+
+int io96b_cal_status(phys_addr_t addr)
+{
+	int ret;
+	u32 cal_success, cal_fail;
+	phys_addr_t status_addr = addr + IOSSM_STATUS_OFFSET;
+	/* Ensure calibration completed */
+	ret = wait_for_timeout(IOMEM(status_addr), IOSSM_STATUS_CAL_BUSY, false);
+	if (ret) {
+		pr_err("%s: SDRAM calibration IO96b instance 0x%llx timeout\n",
+		       __func__, status_addr);
+		hang();
+	}
+
+	/* Calibration status */
+	cal_success = readl(status_addr) & IOSSM_STATUS_CAL_SUCCESS;
+	cal_fail = readl(status_addr) & IOSSM_STATUS_CAL_FAIL;
+
+	if (cal_success && !cal_fail)
+		return 0;
+	else
+		return -EPERM;
+}
+
+void io96b_init_mem_cal(struct io96b_info *io96b_ctrl)
+{
+	int count, i, ret;
+
+	/* Initialize overall calibration status */
+	io96b_ctrl->overall_cal_status = false;
+
+	/* Check initial calibration status for the assigned IO96B*/
+	count = 0;
+	for (i = 0; i < io96b_ctrl->num_instance; i++) {
+		if (io96b_ctrl->ckgen_lock) {
+			ret = is_ddr_csr_clkgen_locked(DDR_CSR_CLKGEN_LOCKED_IO96B_MASK(i),
+						       io96b_ctrl->num_port);
+			if (ret) {
+				pr_err("%s: ckgena_lock iossm IO96B_%d is not locked\n",
+				       __func__, i);
+				hang();
+			}
+		}
+		ret = io96b_cal_status(io96b_ctrl->io96b[i].io96b_csr_addr);
+		if (ret) {
+			io96b_ctrl->io96b[i].cal_status = false;
+			pr_err("%s: Initial DDR calibration IO96B_%d failed %d\n",
+			       __func__, i, ret);
+			hang();
+		}
+		io96b_ctrl->io96b[i].cal_status = true;
+		pr_info("%s: Initial DDR calibration IO96B_%d succeed\n",
+		       __func__, i);
+		count++;
+	}
+
+	io96b_ctrl->overall_cal_status = true;
+}
+
+/*
+ * Trying 3 times re-calibration if initial calibration failed
+ */
+int io96b_trig_mem_cal(struct io96b_info *io96b_ctrl)
+{
+	struct io96b_mb_resp usr_resp;
+	bool recal_success;
+	int i, j, k;
+	u32 cal_stat_offset;
+	u8 cal_stat;
+	u8 trig_cal_stat;
+	int count = 0;
+
+	for (i = 0; i < io96b_ctrl->num_instance; i++) {
+		if (io96b_ctrl->io96b[i].cal_status)
+			continue;
+
+		for (j = 0; j < io96b_ctrl->io96b[i].mb_ctrl.num_mem_interface; j++) {
+			recal_success = false;
+
+			/* Re-calibration first memory interface with failed calibration */
+			for (k = 0; k < MAX_RETRY_COUNT; k++) {
+				/* Get the memory calibration status for memory interface */
+				io96b_mb_req_no_param(io96b_ctrl->io96b[i].io96b_csr_addr,
+					     0, 0, CMD_TRIG_MEM_CAL_OP,
+					     GET_MEM_CAL_STATUS, &usr_resp);
+
+				cal_stat_offset = usr_resp.cmd_resp_data[j];
+				cal_stat = readl(io96b_ctrl->io96b[i].io96b_csr_addr +
+						 cal_stat_offset);
+				if (cal_stat == INTF_MEM_CAL_STATUS_SUCCESS) {
+					recal_success = true;
+					break;
+				}
+				io96b_mb_req_no_param(io96b_ctrl->io96b[i].io96b_csr_addr,
+						      io96b_ctrl->io96b[i].mb_ctrl.ip_type[j],
+						      io96b_ctrl->io96b[i].mb_ctrl.ip_instance_id[j],
+						      CMD_TRIG_MEM_CAL_OP,
+						      TRIG_MEM_CAL, &usr_resp);
+
+				trig_cal_stat =
+					IOSSM_CMD_RESPONSE_DATA_SHORT(usr_resp.cmd_resp_status) &
+					BIT(0);
+				pr_debug("%s: Memory calibration triggered status = %d\n",
+					 __func__, trig_cal_stat);
+
+				udelay(1);
+			}
+
+			if (!recal_success) {
+				pr_err("%s: Error as SDRAM calibration failed\n", __func__);
+				hang();
+			}
+		}
+
+		io96b_ctrl->io96b[i].cal_status = true;
+		io96b_ctrl->overall_cal_status = io96b_ctrl->io96b[i].cal_status;
+		pr_info("%s: Initial DDR calibration IO96B_%d succeed\n", __func__, i);
+		count++;
+	}
+
+	if (io96b_ctrl->overall_cal_status)
+		pr_debug("%s: Overall SDRAM calibration success\n", __func__);
+
+	return 0;
+}
+
+int io96b_get_mem_technology(struct io96b_info *io96b_ctrl)
+{
+	struct io96b_mb_resp usr_resp;
+	int i, j;
+	u8 ddr_type_ret;
+
+	/* Initialize ddr type */
+	io96b_ctrl->ddr_type = ddr_type_list[6];
+
+	/* Get and ensure all memory interface(s) same DDR type */
+	for (i = 0; i < io96b_ctrl->num_instance; i++) {
+		for (j = 0; j < io96b_ctrl->io96b[i].mb_ctrl.num_mem_interface; j++) {
+			io96b_mb_req_no_param(io96b_ctrl->io96b[i].io96b_csr_addr,
+					      io96b_ctrl->io96b[i].mb_ctrl.ip_type[j],
+					      io96b_ctrl->io96b[i].mb_ctrl.ip_instance_id[j],
+					      CMD_GET_MEM_INFO, GET_MEM_TECHNOLOGY, &usr_resp);
+
+			ddr_type_ret =
+				IOSSM_CMD_RESPONSE_DATA_SHORT(usr_resp.cmd_resp_status)
+				& GENMASK(2, 0);
+
+			if (!strcmp(io96b_ctrl->ddr_type, "UNKNOWN"))
+				io96b_ctrl->ddr_type = ddr_type_list[ddr_type_ret];
+
+			if (ddr_type_list[ddr_type_ret] != io96b_ctrl->ddr_type) {
+				pr_err("%s: Mismatch DDR type on IO96B_%d\n", __func__, i);
+				return -ENOEXEC;
+			}
+		}
+	}
+
+	return 0;
+}
+
+int io96b_get_mem_width_info(struct io96b_info *io96b_ctrl)
+{
+	struct io96b_mb_resp usr_resp;
+	int i, j;
+	u16 memory_size;
+	u16 total_memory_size = 0;
+
+	/* Get all memory interface(s) total memory size on all instance(s) */
+	for (i = 0; i < io96b_ctrl->num_instance; i++) {
+		memory_size = 0;
+		for (j = 0; j < io96b_ctrl->io96b[i].mb_ctrl.num_mem_interface; j++) {
+			io96b_mb_req_no_param(io96b_ctrl->io96b[i].io96b_csr_addr,
+					      io96b_ctrl->io96b[i].mb_ctrl.ip_type[j],
+					      io96b_ctrl->io96b[i].mb_ctrl.ip_instance_id[j],
+					      CMD_GET_MEM_INFO, GET_MEM_WIDTH_INFO, &usr_resp);
+
+			memory_size = memory_size +
+				(usr_resp.cmd_resp_data[1] & GENMASK(7, 0));
+		}
+
+		if (!memory_size) {
+			pr_err("%s: Failed to get valid memory size\n", __func__);
+			return -ENOEXEC;
+		}
+
+		io96b_ctrl->io96b[i].size = memory_size;
+
+		total_memory_size = total_memory_size + memory_size;
+	}
+
+	if (!total_memory_size) {
+		pr_err("%s: Failed to get valid memory size\n", __func__);
+		return -ENOEXEC;
+	}
+
+	io96b_ctrl->overall_size = total_memory_size;
+
+	return 0;
+}
+
+int io96b_ecc_enable_status(struct io96b_info *io96b_ctrl)
+{
+	struct io96b_mb_resp usr_resp;
+	int i, j;
+	bool ecc_stat_set = false;
+	bool ecc_stat;
+
+	/* Initialize ECC status */
+	io96b_ctrl->ecc_status = false;
+
+	/* Get and ensure all memory interface(s) same ECC status */
+	for (i = 0; i < io96b_ctrl->num_instance; i++) {
+		for (j = 0; j < io96b_ctrl->io96b[i].mb_ctrl.num_mem_interface; j++) {
+			io96b_mb_req_no_param(io96b_ctrl->io96b[i].io96b_csr_addr,
+					      io96b_ctrl->io96b[i].mb_ctrl.ip_type[j],
+					      io96b_ctrl->io96b[i].mb_ctrl.ip_instance_id[j],
+					      CMD_TRIG_CONTROLLER_OP, ECC_ENABLE_STATUS,
+					      &usr_resp);
+
+			ecc_stat = ((IOSSM_CMD_RESPONSE_DATA_SHORT(usr_resp.cmd_resp_status)
+				     & GENMASK(1, 0)) == 0 ? false : true);
+
+			if (!ecc_stat_set) {
+				io96b_ctrl->ecc_status = ecc_stat;
+				ecc_stat_set = true;
+			}
+
+			if (ecc_stat != io96b_ctrl->ecc_status) {
+				pr_err("%s: Mismatch DDR ECC status on IO96B_%d\n",
+				       __func__, i);
+				return -ENOEXEC;
+			}
+		}
+	}
+
+	pr_debug("%s: ECC enable status: %d\n", __func__, io96b_ctrl->ecc_status);
+
+	return 0;
+}
+
+int io96b_bist_mem_init_start(struct io96b_info *io96b_ctrl)
+{
+	struct io96b_mb_resp usr_resp;
+	int i, j;
+	bool bist_start, bist_success;
+	int timeout = 1000000;
+
+	/* Full memory initialization BIST performed on all memory interface(s) */
+	for (i = 0; i < io96b_ctrl->num_instance; i++) {
+		for (j = 0; j < io96b_ctrl->io96b[i].mb_ctrl.num_mem_interface; j++) {
+			bist_start = false;
+			bist_success = false;
+
+			/* Start memory initialization BIST on full memory address */
+			io96b_mb_req(io96b_ctrl->io96b[i].io96b_csr_addr,
+				     io96b_ctrl->io96b[i].mb_ctrl.ip_type[j],
+				     io96b_ctrl->io96b[i].mb_ctrl.ip_instance_id[j],
+				     CMD_TRIG_CONTROLLER_OP, BIST_MEM_INIT_START,
+				     0x40, 0, 0, 0, 0, 0, 0, &usr_resp);
+
+			bist_start =
+				(IOSSM_CMD_RESPONSE_DATA_SHORT(usr_resp.cmd_resp_status)
+				 & BIT(0));
+
+			if (!bist_start) {
+				pr_err("%s: Failed to initialized memory on IO96B_%d\n",
+				       __func__, i);
+				pr_err("%s: BIST_MEM_INIT_START Error code 0x%x\n",
+				       __func__,
+				       (IOSSM_CMD_RESPONSE_DATA_SHORT(usr_resp.cmd_resp_status)
+					& GENMASK(2, 1)) > 0x1);
+				return -ENOEXEC;
+			}
+
+			/* Polling for the initiated memory initialization BIST status */
+			while (!bist_success) {
+				io96b_mb_req_no_param(io96b_ctrl->io96b[i].io96b_csr_addr,
+						      io96b_ctrl->io96b[i].mb_ctrl.ip_type[j],
+						      io96b_ctrl->io96b[i].mb_ctrl.ip_instance_id[j],
+						      CMD_TRIG_CONTROLLER_OP,
+						      BIST_MEM_INIT_STATUS, &usr_resp);
+
+				bist_success = (IOSSM_CMD_RESPONSE_DATA_SHORT
+						(usr_resp.cmd_resp_status) & BIT(0));
+
+				if (!bist_success && (timeout-- < 0)) {
+					pr_err("%s: Timeout initialize memory on IO96B_%d\n",
+					       __func__, i);
+					pr_err("%s: BIST_MEM_INIT_STATUS Error code 0x%x\n",
+					       __func__, (IOSSM_CMD_RESPONSE_DATA_SHORT
+							  (usr_resp.cmd_resp_status) &
+							  GENMASK(2, 1)) > 0x1);
+					return -ETIMEDOUT;
+				}
+
+				__udelay(1);
+			}
+		}
+
+		pr_debug("%s: Memory initialized successfully on IO96B_%d\n", __func__, i);
+	}
+	return 0;
+}
diff --git a/arch/arm/mach-socfpga/iossm_mailbox.h b/arch/arm/mach-socfpga/iossm_mailbox.h
new file mode 100644
index 0000000000000000000000000000000000000000..29b3f069072d9e3ec21c8625611550e82652fef6
--- /dev/null
+++ b/arch/arm/mach-socfpga/iossm_mailbox.h
@@ -0,0 +1,157 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (C) 2022-2023 Intel Corporation <www.intel.com>
+ */
+
+#ifndef IOSSM_MAILBOX_H_
+#define IOSSM_MAILBOX_H_
+
+#define IOSSM_STATUS_CAL_SUCCESS		BIT(0)
+#define IOSSM_STATUS_CAL_FAIL			BIT(1)
+#define IOSSM_STATUS_CAL_BUSY			BIT(2)
+#define IOSSM_STATUS_COMMAND_RESPONSE_READY	BIT(0)
+#define IOSSM_CMD_RESPONSE_STATUS_OFFSET	0x45C
+#define IOSSM_CMD_RESPONSE_DATA_0_OFFSET	0x458
+#define IOSSM_CMD_RESPONSE_DATA_1_OFFSET	0x454
+#define IOSSM_CMD_RESPONSE_DATA_2_OFFSET	0x450
+#define IOSSM_CMD_REQ_OFFSET			0x43C
+#define IOSSM_CMD_PARAM_0_OFFSET		0x438
+#define IOSSM_CMD_PARAM_1_OFFSET		0x434
+#define IOSSM_CMD_PARAM_2_OFFSET		0x430
+#define IOSSM_CMD_PARAM_3_OFFSET		0x42C
+#define IOSSM_CMD_PARAM_4_OFFSET		0x428
+#define IOSSM_CMD_PARAM_5_OFFSET		0x424
+#define IOSSM_CMD_PARAM_6_OFFSET		0x420
+#define IOSSM_STATUS_OFFSET			0x400
+#define IOSSM_CMD_RESPONSE_DATA_SHORT_MASK	GENMASK(31, 16)
+#define IOSSM_CMD_RESPONSE_DATA_SHORT(data)	(((data) & IOSSM_CMD_RESPONSE_DATA_SHORT_MASK) >> 16)
+#define MAX_IO96B_SUPPORTED			2
+
+/* supported mailbox command type */
+enum iossm_mailbox_cmd_type  {
+	CMD_NOP,
+	CMD_GET_SYS_INFO,
+	CMD_GET_MEM_INFO,
+	CMD_GET_MEM_CAL_INFO,
+	CMD_TRIG_CONTROLLER_OP,
+	CMD_TRIG_MEM_CAL_OP
+};
+
+/* supported mailbox command opcode */
+enum iossm_mailbox_cmd_opcode  {
+	GET_MEM_INTF_INFO	     = 0x0001,
+	GET_MEM_TECHNOLOGY,
+	GET_MEMCLK_FREQ_KHZ,
+	GET_MEM_WIDTH_INFO,
+	ECC_ENABLE_SET		     = 0x0101,
+	ECC_ENABLE_STATUS,
+	ECC_INTERRUPT_STATUS,
+	ECC_INTERRUPT_ACK,
+	ECC_INTERRUPT_MASK,
+	ECC_WRITEBACK_ENABLE,
+	ECC_SCRUB_IN_PROGRESS_STATUS = 0x0201,
+	ECC_SCRUB_MODE_0_START,
+	ECC_SCRUB_MODE_1_START,
+	BIST_STANDARD_MODE_START     = 0x0301,
+	BIST_RESULTS_STATUS,
+	BIST_MEM_INIT_START,
+	BIST_MEM_INIT_STATUS,
+	BIST_SET_DATA_PATTERN_UPPER,
+	BIST_SET_DATA_PATTERN_LOWER,
+	TRIG_MEM_CAL		     = 0x000a,
+	GET_MEM_CAL_STATUS
+};
+
+/* response data of cmd opcode GET_MEM_CAL_STATUS */
+#define INTF_UNUSED			0x0
+#define INTF_MEM_CAL_STATUS_SUCCESS	0x1
+#define INTF_MEM_CAL_STATUS_FAIL	0x2
+#define INTF_MEM_CAL_STATUS_ONGOING	0x4
+
+/*
+ * IOSSM mailbox required information
+ *
+ * @num_mem_interface:	Number of memory interfaces instantiated
+ * @ip_type:		IP type implemented on the IO96B
+ * @ip_instance_id:	IP identifier for every IP instance implemented on the IO96B
+ */
+struct io96b_mb_ctrl {
+	u32 num_mem_interface;
+	u32 ip_type[2];
+	u32 ip_instance_id[2];
+};
+
+/*
+ * IOSSM mailbox response outputs
+ *
+ * @cmd_resp_status: Command Interface status
+ * @cmd_resp_data_*: More spaces for command response
+ */
+struct io96b_mb_resp {
+	u32 cmd_resp_status;
+	u32 cmd_resp_data[3];
+};
+
+/*
+ * IO96B instance specific information
+ *
+ * @size:		Memory size
+ * @io96b_csr_addr:	IO96B instance CSR address
+ * @cal_status:		IO96B instance calibration status
+ * @mb_ctrl:		IOSSM mailbox required information
+ */
+struct io96b_instance {
+	u16 size;
+	phys_addr_t io96b_csr_addr;
+	bool cal_status;
+	struct io96b_mb_ctrl mb_ctrl;
+};
+
+/*
+ * Overall IO96B instance(s) information
+ *
+ * @num_instance:	Number of instance(s) assigned to HPS
+ * @overall_cal_status: Overall calibration status for all IO96B instance(s)
+ * @ddr_type:		DDR memory type
+ * @ecc_status:		ECC enable status (false = disabled, true = enabled)
+ * @overall_size:	Total DDR memory size
+ * @io96b[]:		IO96B instance specific information
+ * @ckgen_lock:		IO96B GEN PLL lock (false = not locked, true = locked)
+ * @num_port:		Number of IO96B port.
+ */
+struct io96b_info {
+	u8			 num_instance;
+	bool			 overall_cal_status;
+	const char		*ddr_type;
+	bool			 ecc_status;
+	u16			 overall_size;
+	struct io96b_instance	 io96b[MAX_IO96B_SUPPORTED];
+	bool			 ckgen_lock;
+	u8			 num_port;
+};
+
+int io96b_mb_req(phys_addr_t io96b_csr_addr, u32 ip_type, u32 instance_id,
+		 u32 usr_cmd_type, u32 usr_cmd_opcode, u32 cmd_param_0,
+		 u32 cmd_param_1, u32 cmd_param_2, u32 cmd_param_3,
+		 u32 cmd_param_4, u32 cmd_param_5, u32 cmd_param_6,
+		 struct io96b_mb_resp *resp);
+
+static inline int io96b_mb_req_no_param(phys_addr_t io96b_csr_addr, u32 ip_type,
+					u32 instance_id, u32 usr_cmd_type,
+					u32 usr_cmd_opcode, struct io96b_mb_resp *resp)
+{
+	return io96b_mb_req(io96b_csr_addr, ip_type, instance_id, usr_cmd_type,
+			    usr_cmd_opcode, 0, 0, 0, 0, 0, 0, 0, resp);
+}
+
+/* Supported IOSSM mailbox function */
+void io96b_mb_init(struct io96b_info *io96b_ctrl);
+int io96b_cal_status(phys_addr_t addr);
+void io96b_init_mem_cal(struct io96b_info *io96b_ctrl);
+int io96b_trig_mem_cal(struct io96b_info *io96b_ctrl);
+int io96b_get_mem_technology(struct io96b_info *io96b_ctrl);
+int io96b_get_mem_width_info(struct io96b_info *io96b_ctrl);
+int io96b_ecc_enable_status(struct io96b_info *io96b_ctrl);
+int io96b_bist_mem_init_start(struct io96b_info *io96b_ctrl);
+
+#endif // IOSSM_MAILBOX_H_
diff --git a/arch/arm/mach-socfpga/mailbox_s10.c b/arch/arm/mach-socfpga/mailbox_s10.c
new file mode 100644
index 0000000000000000000000000000000000000000..9211d643e3b6ae9713cda79d2e45db8c9f85ced4
--- /dev/null
+++ b/arch/arm/mach-socfpga/mailbox_s10.c
@@ -0,0 +1,347 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2017-2023 Intel Corporation <www.intel.com>
+ *
+ */
+
+#define pr_fmt(fmt) "mailbox_s10: " fmt
+
+#include <common.h>
+#include <io.h>
+#include <mach/socfpga/mailbox_s10.h>
+#include <mach/socfpga/soc64-regs.h>
+#include <mach/socfpga/soc64-system-manager.h>
+
+#define MBOX_READL(reg)			\
+	 readl(SOCFPGA_MAILBOX_ADDRESS + (reg))
+
+#define MBOX_WRITEL(data, reg)		\
+	writel(data, SOCFPGA_MAILBOX_ADDRESS + (reg))
+
+#define MBOX_READ_RESP_BUF(rout)	\
+	MBOX_READL(MBOX_RESP_BUF + ((rout) * sizeof(u32)))
+
+#define MBOX_WRITE_CMD_BUF(data, cin)	\
+	MBOX_WRITEL(data, MBOX_CMD_BUF + ((cin) * sizeof(u32)))
+
+static int mbox_polling_resp(u32 rout)
+{
+	u32 rin;
+	unsigned long i = 2000;
+
+	while (i) {
+		rin = MBOX_READL(MBOX_RIN);
+		if (rout != rin)
+			return 0;
+
+		udelay(1000);
+		i--;
+	}
+
+	return -ETIMEDOUT;
+}
+
+static int mbox_is_cmdbuf_full(u32 cin)
+{
+	return (((cin + 1) % MBOX_CMD_BUFFER_SIZE) == MBOX_READL(MBOX_COUT));
+}
+
+static int mbox_write_cmd_buffer(u32 *cin, u32 data)
+{
+	int timeout = 1000;
+	int is_cmdbuf_overflow = 0;
+
+	while (timeout) {
+		if (mbox_is_cmdbuf_full(*cin)) {
+			if (is_cmdbuf_overflow == 0) {
+				/* Trigger SDM doorbell */
+				MBOX_WRITEL(1, MBOX_DOORBELL_TO_SDM);
+				is_cmdbuf_overflow = 1;
+			}
+			udelay(1000);
+		} else {
+			/* write header to circular buffer */
+			MBOX_WRITE_CMD_BUF(data, (*cin)++);
+			*cin %= MBOX_CMD_BUFFER_SIZE;
+			MBOX_WRITEL(*cin, MBOX_CIN);
+			if (is_cmdbuf_overflow)
+				is_cmdbuf_overflow = 0;
+			break;
+		}
+		timeout--;
+	}
+
+	if (!timeout)
+		return -ETIMEDOUT;
+
+	return 0;
+}
+
+/* Check for available slot and write to circular buffer.
+ * It also update command valid offset (cin) register.
+ */
+static int mbox_fill_cmd_circular_buff(u32 header, u32 len,
+				       u32 *arg)
+{
+	int i, ret;
+	u32 cin = MBOX_READL(MBOX_CIN) % MBOX_CMD_BUFFER_SIZE;
+
+	ret = mbox_write_cmd_buffer(&cin, header);
+	if (ret)
+		return ret;
+
+	/* write arguments */
+	for (i = 0; i < len; i++) {
+		ret = mbox_write_cmd_buffer(&cin, arg[i]);
+		if (ret)
+			return ret;
+	}
+
+	/* Always trigger the SDM doorbell at the end to ensure SDM able to read
+	 * the remaining data.
+	 */
+	MBOX_WRITEL(1, MBOX_DOORBELL_TO_SDM);
+
+	return 0;
+}
+
+/* Check the command and fill it into circular buffer */
+static int mbox_prepare_cmd_only(u8 id, u32 cmd,
+				 u8 is_indirect, u32 len,
+				 u32 *arg)
+{
+	u32 header;
+	int ret;
+
+	if (cmd > MBOX_MAX_CMD_INDEX)
+		return -EINVAL;
+
+	header = MBOX_CMD_HEADER(MBOX_CLIENT_ID_BAREBOX, id, len,
+				 (is_indirect) ? 1 : 0, cmd);
+
+	ret = mbox_fill_cmd_circular_buff(header, len, arg);
+
+	return ret;
+}
+
+/* Support one command and up to 31 words argument length only */
+static int mbox_send_cmd_common(u8 id, u32 cmd, u8 is_indirect,
+				u32 len, u32 *arg, u8 urgent,
+				u32 *resp_buf_len,
+				u32 *resp_buf)
+{
+	u32 rin;
+	u32 resp;
+	u32 rout;
+	u32 status;
+	u32 resp_len;
+	u32 buf_len;
+	int ret;
+
+	if (urgent) {
+		/* Read status because it is toggled */
+		status = MBOX_READL(MBOX_STATUS) & MBOX_STATUS_UA_MSK;
+		/* Write urgent command to urgent register */
+		MBOX_WRITEL(cmd, MBOX_URG);
+		/* write doorbell */
+		MBOX_WRITEL(1, MBOX_DOORBELL_TO_SDM);
+	} else {
+		ret = mbox_prepare_cmd_only(id, cmd, is_indirect, len, arg);
+		if (ret)
+			return ret;
+	}
+
+	while (1) {
+		ret = 1000;
+
+		/* Wait for doorbell from SDM */
+		do {
+			if (MBOX_READL(MBOX_DOORBELL_FROM_SDM))
+				break;
+			udelay(1000);
+		} while (--ret);
+
+		if (!ret)
+			return -ETIMEDOUT;
+
+		/* clear interrupt */
+		MBOX_WRITEL(0, MBOX_DOORBELL_FROM_SDM);
+
+		if (urgent) {
+			u32 new_status = MBOX_READL(MBOX_STATUS);
+
+			/* Urgent ACK is toggled */
+			if ((new_status & MBOX_STATUS_UA_MSK) ^ status)
+				return 0;
+
+			return -ECOMM;
+		}
+
+		/* read current response offset */
+		rout = MBOX_READL(MBOX_ROUT);
+
+		/* read response valid offset */
+		rin = MBOX_READL(MBOX_RIN);
+
+		if (rout != rin) {
+			/* Response received */
+			resp = MBOX_READ_RESP_BUF(rout);
+			rout++;
+			/* wrapping around when it reach the buffer size */
+			rout %= MBOX_RESP_BUFFER_SIZE;
+			/* update next ROUT */
+			MBOX_WRITEL(rout, MBOX_ROUT);
+
+			/* check client ID and ID */
+			if ((MBOX_RESP_CLIENT_GET(resp) ==
+			     MBOX_CLIENT_ID_BAREBOX) &&
+			    (MBOX_RESP_ID_GET(resp) == id)) {
+				int resp_err = MBOX_RESP_ERR_GET(resp);
+
+				if (resp_buf_len) {
+					buf_len = *resp_buf_len;
+					*resp_buf_len = 0;
+				} else {
+					buf_len = 0;
+				}
+
+				resp_len = MBOX_RESP_LEN_GET(resp);
+				while (resp_len) {
+					ret = mbox_polling_resp(rout);
+					if (ret)
+						return ret;
+					/* we need to process response buffer
+					 * even caller doesn't need it
+					 */
+					resp = MBOX_READ_RESP_BUF(rout);
+					rout++;
+					resp_len--;
+					rout %= MBOX_RESP_BUFFER_SIZE;
+					MBOX_WRITEL(rout, MBOX_ROUT);
+					if (buf_len) {
+						/* copy response to buffer */
+						resp_buf[*resp_buf_len] = resp;
+						(*resp_buf_len)++;
+						buf_len--;
+					}
+				}
+				return resp_err;
+			}
+		}
+	}
+
+	return -EIO;
+}
+
+static int mbox_send_cmd_common_retry(u8 id, u32 cmd,
+				      u8 is_indirect,
+				      u32 len, u32 *arg,
+				      u8 urgent,
+				      u32 *resp_buf_len,
+				      u32 *resp_buf)
+{
+	int ret;
+	int i;
+
+	for (i = 0; i < 3; i++) {
+		ret = mbox_send_cmd_common(id, cmd, is_indirect, len, arg,
+					   urgent, resp_buf_len, resp_buf);
+		if (ret == MBOX_RESP_TIMEOUT || ret == MBOX_RESP_DEVICE_BUSY)
+			udelay(2000); /* wait for 2ms before resend */
+		else
+			break;
+	}
+
+	return ret;
+}
+
+static int mbox_send_cmd(u8 id, u32 cmd, u8 is_indirect, u32 len, u32 *arg,
+			 u8 urgent, u32 *resp_buf_len, u32 *resp_buf)
+{
+	return mbox_send_cmd_common_retry(id, cmd, is_indirect, len, arg,
+					  urgent, resp_buf_len, resp_buf);
+}
+
+int socfpga_mailbox_s10_init(void)
+{
+	int ret;
+
+	/* enable mailbox interrupts */
+	MBOX_WRITEL(MBOX_ALL_INTRS, MBOX_FLAGS);
+
+	/* Ensure urgent request is cleared */
+	MBOX_WRITEL(0, MBOX_URG);
+
+	/* Ensure the Doorbell Interrupt is cleared */
+	MBOX_WRITEL(0, MBOX_DOORBELL_FROM_SDM);
+
+	ret = mbox_send_cmd(MBOX_ID_BAREBOX, MBOX_RESTART, MBOX_CMD_DIRECT, 0,
+			    NULL, 1, 0, NULL);
+	if (ret)
+		return ret;
+
+	pr_debug("%s: success...\n", __func__);
+
+	/* Renable mailbox interrupts after MBOX_RESTART */
+	MBOX_WRITEL(MBOX_ALL_INTRS, MBOX_FLAGS);
+
+	return 0;
+}
+
+int socfpga_mailbox_s10_qspi_close(void)
+{
+	return mbox_send_cmd(MBOX_ID_BAREBOX, MBOX_QSPI_CLOSE, MBOX_CMD_DIRECT,
+			     0, NULL, 0, 0, NULL);
+}
+
+int socfpga_mailbox_s10_qspi_open(void)
+{
+	int ret;
+	u32 resp_buf[1];
+	u32 resp_buf_len;
+	u32 reg;
+	u32 clk_khz;
+
+	ret = mbox_send_cmd(MBOX_ID_BAREBOX, MBOX_QSPI_OPEN, MBOX_CMD_DIRECT,
+			    0, NULL, 0, 0, NULL);
+	if (ret) {
+		/* retry again by closing and reopen the QSPI again */
+		ret = socfpga_mailbox_s10_qspi_close();
+		if (ret)
+			return ret;
+
+		ret = mbox_send_cmd(MBOX_ID_BAREBOX, MBOX_QSPI_OPEN,
+				    MBOX_CMD_DIRECT, 0, NULL, 0, 0, NULL);
+		if (ret)
+			return ret;
+	}
+
+	/* HPS will directly control the QSPI controller, no longer mailbox */
+	resp_buf_len = 1;
+	ret = mbox_send_cmd(MBOX_ID_BAREBOX, MBOX_QSPI_DIRECT, MBOX_CMD_DIRECT,
+			    0, NULL, 0, (u32 *)&resp_buf_len,
+			    (u32 *)&resp_buf);
+	if (ret)
+		goto error;
+
+	/* Get the QSPI clock from SDM response and save for later use */
+	clk_khz = resp_buf[0];
+	if (clk_khz < 1000)
+		return -EINVAL;
+
+	clk_khz /= 1000;
+	pr_info("QSPI: reference clock at %d kHZ\n", clk_khz);
+
+	reg = (readl(SOCFPGA_SYSMGR_ADDRESS + SYSMGR_SOC64_BOOT_SCRATCH_COLD0)) &
+			~(SYSMGR_SCRATCH_REG_0_QSPI_REFCLK_MASK);
+
+	writel((clk_khz & SYSMGR_SCRATCH_REG_0_QSPI_REFCLK_MASK) | reg,
+	       SOCFPGA_SYSMGR_ADDRESS + SYSMGR_SOC64_BOOT_SCRATCH_COLD0);
+
+	return 0;
+
+error:
+	socfpga_mailbox_s10_qspi_close();
+
+	return ret;
+}
diff --git a/arch/arm/mach-socfpga/secure_reg_helper.c b/arch/arm/mach-socfpga/secure_reg_helper.c
new file mode 100644
index 0000000000000000000000000000000000000000..54d84e84731f87d9cf5fce84c83afb8774d619d0
--- /dev/null
+++ b/arch/arm/mach-socfpga/secure_reg_helper.c
@@ -0,0 +1,75 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2020-2022 Intel Corporation <www.intel.com>
+ *
+ */
+
+#include <common.h>
+#include <io.h>
+#include <mach/socfpga/intel-smc.h>
+#include <mach/socfpga/secure_reg_helper.h>
+#include <mach/socfpga/smc_api.h>
+#include <mach/socfpga/soc64-regs.h>
+#include <mach/socfpga/soc64-system-manager.h>
+#include <linux/errno.h>
+
+static int socfpga_secure_convert_reg_id_to_addr(u32 id, phys_addr_t *reg_addr)
+{
+	switch (id) {
+	case SOCFPGA_SECURE_REG_SYSMGR_SOC64_EMAC0:
+		*reg_addr = SOCFPGA_SYSMGR_ADDRESS + SYSMGR_SOC64_EMAC0;
+		break;
+	case SOCFPGA_SECURE_REG_SYSMGR_SOC64_EMAC1:
+		*reg_addr = SOCFPGA_SYSMGR_ADDRESS + SYSMGR_SOC64_EMAC1;
+		break;
+	case SOCFPGA_SECURE_REG_SYSMGR_SOC64_EMAC2:
+		*reg_addr = SOCFPGA_SYSMGR_ADDRESS + SYSMGR_SOC64_EMAC2;
+		break;
+	default:
+		return -EADDRNOTAVAIL;
+	}
+	return 0;
+}
+
+int socfpga_secure_reg_read32(u32 id, u32 *val)
+{
+	int ret;
+	u32 ret_arg[4];
+	phys_addr_t reg_addr;
+
+	ret = socfpga_secure_convert_reg_id_to_addr(id, &reg_addr);
+	if (ret)
+		return ret;
+
+	ret = invoke_smc(INTEL_SIP_SMC_REG_READ, reg_addr, 0, 0, ret_arg);
+	if (ret)
+		return ret;
+
+	*val = ret_arg[0];
+
+	return 0;
+}
+
+int socfpga_secure_reg_write32(u32 id, u32 val)
+{
+	int ret;
+	phys_addr_t reg_addr;
+
+	ret = socfpga_secure_convert_reg_id_to_addr(id, &reg_addr);
+	if (ret)
+		return ret;
+
+	return invoke_smc(INTEL_SIP_SMC_REG_WRITE, reg_addr, (u64) val, 0, 0);
+}
+
+int socfpga_secure_reg_update32(u32 id, u32 mask, u32 val)
+{
+	int ret;
+	phys_addr_t reg_addr;
+
+	ret = socfpga_secure_convert_reg_id_to_addr(id, &reg_addr);
+	if (ret)
+		return ret;
+
+	return invoke_smc(INTEL_SIP_SMC_REG_UPDATE, reg_addr, (u64) mask, (u64) val, 0);
+}
diff --git a/arch/arm/mach-socfpga/smc_api.c b/arch/arm/mach-socfpga/smc_api.c
new file mode 100644
index 0000000000000000000000000000000000000000..98c6dd42d2e22f4231a0e9cdcd833ef4990227a7
--- /dev/null
+++ b/arch/arm/mach-socfpga/smc_api.c
@@ -0,0 +1,43 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (C) 2020-2024 Intel Corporation <www.intel.com>
+ *
+ */
+
+#include <common.h>
+#include <mach/socfpga/intel-smc.h>
+#include <mach/socfpga/smc_api.h>
+#include <linux/arm-smccc.h>
+#include <linux/kernel.h>
+
+int invoke_smc(u32 func_id, u64 arg0, u64 arg1, u64 arg2, u32 *ret_payload)
+{
+	struct arm_smccc_res res;
+
+	arm_smccc_smc(func_id, arg0, arg1, arg2, 0, 0, 0, 0, &res);
+
+	if (ret_payload) {
+		ret_payload[0] = lower_32_bits(res.a0);
+		ret_payload[1] = upper_32_bits(res.a0);
+		ret_payload[2] = lower_32_bits(res.a1);
+		ret_payload[3] = upper_32_bits(res.a1);
+	}
+
+	return res.a0;
+}
+
+int smc_get_usercode(u32 *usercode)
+{
+	u32 res;
+	int ret;
+
+	if (!usercode)
+		return -EINVAL;
+
+	ret = invoke_smc(INTEL_SIP_SMC_GET_USERCODE, 0, 0, 0, &res);
+
+	if (ret == INTEL_SIP_SMC_STATUS_OK)
+		*usercode = res;
+
+	return ret;
+}
diff --git a/arch/arm/mach-socfpga/soc64-system-manager.c b/arch/arm/mach-socfpga/soc64-system-manager.c
new file mode 100644
index 0000000000000000000000000000000000000000..b66a7556975558fe460523322a00a366c9fc68a9
--- /dev/null
+++ b/arch/arm/mach-socfpga/soc64-system-manager.c
@@ -0,0 +1,102 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2016-2021 Intel Corporation <www.intel.com>
+ *
+ */
+
+#include <common.h>
+#include <io.h>
+#include <mach/socfpga/soc64-handoff.h>
+#include <mach/socfpga/soc64-regs.h>
+#include <mach/socfpga/soc64-system-manager.h>
+
+/*
+ * Populate the value for SYSMGR.FPGAINTF.MODULE based on pinmux setting.
+ * The value is not wrote to SYSMGR.FPGAINTF.MODULE but
+ * CONFIG_SYSMGR_ISWGRP_HANDOFF.
+ */
+static void populate_sysmgr_fpgaintf_module(void)
+{
+	void __iomem *sysmgr = IOMEM(SOCFPGA_SYSMGR_ADDRESS);
+	u32 handoff_val = 0;
+
+	/* Enable the signal for those HPS peripherals that use FPGA. */
+	if (readl(sysmgr + SYSMGR_SOC64_NAND_USEFPGA) == SYSMGR_FPGAINTF_USEFPGA)
+		handoff_val |= SYSMGR_FPGAINTF_NAND;
+	if (readl(sysmgr + SYSMGR_SOC64_SDMMC_USEFPGA) == SYSMGR_FPGAINTF_USEFPGA)
+		handoff_val |= SYSMGR_FPGAINTF_SDMMC;
+	if (readl(sysmgr + SYSMGR_SOC64_SPIM0_USEFPGA) == SYSMGR_FPGAINTF_USEFPGA)
+		handoff_val |= SYSMGR_FPGAINTF_SPIM0;
+	if (readl(sysmgr + SYSMGR_SOC64_SPIM1_USEFPGA) == SYSMGR_FPGAINTF_USEFPGA)
+		handoff_val |= SYSMGR_FPGAINTF_SPIM1;
+	writel(handoff_val, sysmgr + SYSMGR_SOC64_FPGAINTF_EN2);
+
+	handoff_val = 0;
+	if (readl(sysmgr + SYSMGR_SOC64_EMAC0_USEFPGA) == SYSMGR_FPGAINTF_USEFPGA)
+		handoff_val |= SYSMGR_FPGAINTF_EMAC0;
+	if (readl(sysmgr + SYSMGR_SOC64_EMAC1_USEFPGA) == SYSMGR_FPGAINTF_USEFPGA)
+		handoff_val |= SYSMGR_FPGAINTF_EMAC1;
+	if (readl(sysmgr + SYSMGR_SOC64_EMAC2_USEFPGA) == SYSMGR_FPGAINTF_USEFPGA)
+		handoff_val |= SYSMGR_FPGAINTF_EMAC2;
+	writel(handoff_val, sysmgr + SYSMGR_SOC64_FPGAINTF_EN3);
+}
+
+/*
+ * Configure all the pin muxes
+ */
+static void populate_sysmgr_pinmux(void)
+{
+	u32 len, i;
+	void __iomem *sysmgr = IOMEM(SOCFPGA_SYSMGR_ADDRESS);
+	u32 len_mux = socfpga_get_handoff_size((void __iomem *)SOC64_HANDOFF_MUX);
+	u32 len_ioctl = socfpga_get_handoff_size((void __iomem *)SOC64_HANDOFF_IOCTL);
+	u32 len_fpga = socfpga_get_handoff_size((void __iomem *)SOC64_HANDOFF_FPGA);
+	u32 len_delay = socfpga_get_handoff_size((void __iomem *)SOC64_HANDOFF_DELAY);
+
+	len = (len_mux > len_ioctl) ? len_mux : len_ioctl;
+	len = (len > len_fpga) ? len : len_fpga;
+	len = (len > len_delay) ? len : len_delay;
+
+	u32 handoff_table[len];
+
+	/* setup the pin sel */
+	len = (len_mux < SOC64_HANDOFF_MUX_LEN) ? len_mux : SOC64_HANDOFF_MUX_LEN;
+	socfpga_handoff_read(IOMEM(SOC64_HANDOFF_MUX), handoff_table, len);
+	for (i = 0; i < len; i = i + 2) {
+		writel(handoff_table[i + 1], handoff_table[i] + sysmgr +
+				SYSMGR_SOC64_PINSEL0);
+	}
+
+	/* setup the pin ctrl */
+	len = (len_ioctl < SOC64_HANDOFF_IOCTL_LEN) ? len_ioctl : SOC64_HANDOFF_IOCTL_LEN;
+	socfpga_handoff_read(IOMEM(SOC64_HANDOFF_IOCTL), handoff_table, len);
+	for (i = 0; i < len; i = i + 2) {
+		writel(handoff_table[i + 1], handoff_table[i] + sysmgr +
+				SYSMGR_SOC64_IOCTRL0);
+	}
+
+	/* setup the fpga use */
+	len = (len_fpga < SOC64_HANDOFF_FPGA_LEN) ? len_fpga : SOC64_HANDOFF_FPGA_LEN;
+	socfpga_handoff_read(IOMEM(SOC64_HANDOFF_FPGA), handoff_table, len);
+	for (i = 0; i < len; i = i + 2) {
+		writel(handoff_table[i + 1], handoff_table[i] + sysmgr +
+				SYSMGR_SOC64_EMAC0_USEFPGA);
+	}
+
+	/* setup the IO delay */
+	len = (len_delay < SOC64_HANDOFF_DELAY_LEN) ? len_delay : SOC64_HANDOFF_DELAY_LEN;
+	socfpga_handoff_read(IOMEM(SOC64_HANDOFF_DELAY), handoff_table, len);
+	for (i = 0; i < len; i = i + 2) {
+		writel(handoff_table[i + 1], handoff_table[i] + sysmgr +
+				SYSMGR_SOC64_IODELAY0);
+	}
+}
+
+/*
+ * Configure all the pin muxes
+ */
+void agilex5_sysmgr_pinmux_init(void)
+{
+	populate_sysmgr_pinmux();
+	populate_sysmgr_fpgaintf_module();
+}
diff --git a/arch/arm/mach-socfpga/soc64-wrap-handoff.c b/arch/arm/mach-socfpga/soc64-wrap-handoff.c
new file mode 100644
index 0000000000000000000000000000000000000000..c506e21001f677dd23fb5eb6cc11d06952acf20d
--- /dev/null
+++ b/arch/arm/mach-socfpga/soc64-wrap-handoff.c
@@ -0,0 +1,124 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2020-2022 Intel Corporation <www.intel.com>
+ *
+ */
+
+#include <common.h>
+#include <io.h>
+#include <errno.h>
+#include <mach/socfpga/agilex5-clk.h>
+#include <mach/socfpga/soc64-handoff.h>
+
+enum endianness {
+	LITTLE_ENDIAN = 0,
+	BIG_ENDIAN,
+	UNKNOWN_ENDIANNESS
+};
+
+static enum endianness check_endianness(u32 handoff)
+{
+	switch (handoff) {
+	case SOC64_HANDOFF_MAGIC_BOOT:
+	case SOC64_HANDOFF_MAGIC_MUX:
+	case SOC64_HANDOFF_MAGIC_IOCTL:
+	case SOC64_HANDOFF_MAGIC_FPGA:
+	case SOC64_HANDOFF_MAGIC_DELAY:
+	case SOC64_HANDOFF_MAGIC_PERI:
+	case SOC64_HANDOFF_MAGIC_SDRAM:
+	case SOC64_HANDOFF_MAGIC_CLOCK:
+		return BIG_ENDIAN;
+	default:
+		return UNKNOWN_ENDIANNESS;
+	}
+}
+
+static int getting_endianness(void __iomem *handoff_address, enum endianness *endian_t)
+{
+	/* Checking handoff data is little endian ? */
+	*endian_t = check_endianness(readl(handoff_address));
+
+	if (*endian_t == UNKNOWN_ENDIANNESS) {
+		/* Trying to check handoff data is big endian? */
+		*endian_t = check_endianness(swab32(readl(handoff_address)));
+		if (*endian_t == UNKNOWN_ENDIANNESS)
+			return -EPERM;
+	}
+
+	return 0;
+}
+
+const struct cm_config * const cm_get_default_config(void)
+{
+        struct cm_config *cm_handoff_cfg = (struct cm_config *)
+                (SOC64_HANDOFF_CLOCK + SOC64_HANDOFF_OFFSET_DATA);
+        u32 *conversion = (u32 *)cm_handoff_cfg;
+        u32 handoff_clk = readl(SOC64_HANDOFF_CLOCK);
+        u32 i;
+
+        if (swab32(handoff_clk) == SOC64_HANDOFF_MAGIC_CLOCK) {
+                writel(swab32(handoff_clk), SOC64_HANDOFF_CLOCK);
+                for (i = 0; i < (sizeof(*cm_handoff_cfg) / sizeof(u32)); i++)
+                        conversion[i] = swab32(conversion[i]);
+                return cm_handoff_cfg;
+        } else if (handoff_clk == SOC64_HANDOFF_MAGIC_CLOCK) {
+                return cm_handoff_cfg;
+        }
+
+        return NULL;
+}
+
+int socfpga_get_handoff_size(void __iomem *handoff_address)
+{
+	u32 size;
+	int ret;
+	enum endianness endian_t;
+
+	ret = getting_endianness(handoff_address, &endian_t);
+	if (ret)
+		return ret;
+
+	size = readl(handoff_address + SOC64_HANDOFF_OFFSET_LENGTH);
+	if (endian_t == BIG_ENDIAN)
+		size = swab32(size);
+
+	size = (size - SOC64_HANDOFF_OFFSET_DATA) / sizeof(u32);
+
+	return size;
+}
+
+int socfpga_handoff_read(void __iomem *handoff_address, void *table, u32 table_len)
+{
+	u32 temp;
+	u32 *table_x32 = table;
+	u32 i = 0;
+	int ret;
+	enum endianness endian_t;
+
+	ret = getting_endianness(handoff_address, &endian_t);
+	if (ret)
+		return ret;
+
+	temp = readl(handoff_address + SOC64_HANDOFF_OFFSET_DATA +
+		    (i * sizeof(u32)));
+
+	if (endian_t == BIG_ENDIAN)
+		*table_x32 = swab32(temp);
+	else if (endian_t == LITTLE_ENDIAN)
+		*table_x32 = temp;
+
+	for (i = 1; i < table_len; i++) {
+		table_x32++;
+
+		temp = readl(handoff_address +
+			     SOC64_HANDOFF_OFFSET_DATA +
+			     (i * sizeof(u32)));
+
+		if (endian_t == BIG_ENDIAN)
+			*table_x32 = swab32(temp);
+		else if (endian_t == LITTLE_ENDIAN)
+			*table_x32 = temp;
+	}
+
+	return 0;
+}
diff --git a/common/Kconfig.debug_ll b/common/Kconfig.debug_ll
index 8c49f5b72882ddd3ff2ca9d4fe5348de251d0f2c..4d4c1b82d3f4da8a5094e2eedb56e9c3d67618f3 100644
--- a/common/Kconfig.debug_ll
+++ b/common/Kconfig.debug_ll
@@ -236,6 +236,20 @@ config DEBUG_SOCFPGA_UART1
 	  Say Y here if you want kernel low-level debugging support
 	  on SOCFPGA(Arria 10) based platforms.
 
+config DEBUG_SOCFPGA_AGILEX5_UART0
+	bool "Use Agilex5 UART0 for low-level debug"
+	depends on ARCH_SOCFPGA_AGILEX5
+	help
+	  Say Y here if you want kernel low-level debugging support
+	  on Agilex5 based platforms.
+
+config DEBUG_SOCFPGA_AGILEX5_UART1
+	bool "Use Agilex5 UART1 for low-level debug"
+	depends on ARCH_SOCFPGA_AGILEX5
+	help
+	  Say Y here if you want kernel low-level debugging support
+	  on Agilex5 based platforms.
+
 config DEBUG_STM32MP_UART
 	bool "Use STM32MP UART4 for low-level debug"
 	depends on ARCH_STM32
@@ -417,12 +431,15 @@ config DEBUG_SOCFPGA_UART_PHYS_ADDR
 	hex "Physical base address of debug UART" if DEBUG_LL
 	default 0xffc02000 if DEBUG_SOCFPGA_UART0
 	default 0xffc02100 if DEBUG_SOCFPGA_UART1
+	default 0x10c02000 if DEBUG_SOCFPGA_AGILEX5_UART0
+	default 0x10c02100 if DEBUG_SOCFPGA_AGILEX5_UART1
 	depends on ARCH_SOCFPGA
 
 config DEBUG_SOCFPGA_UART_CLOCK
 	int "SoCFPGA UART debug clock" if DEBUG_LL
 	default 100000000 if ARCH_SOCFPGA_CYCLONE5
 	default  50000000 if ARCH_SOCFPGA_ARRIA10
+	default 100000000 if ARCH_SOCFPGA_AGILEX5
 	depends on ARCH_SOCFPGA
 	help
 	  Choose UART root clock.
diff --git a/firmware/Kconfig b/firmware/Kconfig
index 329b87cc96f91c59f962f3dfc12576cb2d0cf0d0..14a1c3d3a84407029e576e8e46993f828784f48b 100644
--- a/firmware/Kconfig
+++ b/firmware/Kconfig
@@ -43,6 +43,9 @@ config FIRMWARE_IMX8MQ_ATF
 config FIRMWARE_IMX93_ATF
 	bool
 
+config FIRMWARE_AGILEX5_ATF
+	bool
+
 config FIRMWARE_IMX8MM_OPTEE
 	bool "install OP-TEE on i.MX8MM boards"
 	depends on FIRMWARE_IMX8MM_ATF && PBL_OPTEE
diff --git a/firmware/Makefile b/firmware/Makefile
index cc32bb7c3b898da36a90bf6cd5d38d34ea858175..71bd92b7b29fd2c973e8f3a2b8ace707f4e9f371 100644
--- a/firmware/Makefile
+++ b/firmware/Makefile
@@ -17,6 +17,7 @@ pbl-firmware-$(CONFIG_FIRMWARE_IMX8MN_ATF) += imx8mn-bl31.bin$(if $(CONFIG_FIRMW
 pbl-firmware-$(CONFIG_FIRMWARE_IMX8MP_ATF) += imx8mp-bl31.bin$(if $(CONFIG_FIRMWARE_IMX8MP_OPTEE),-optee,)
 pbl-firmware-$(CONFIG_FIRMWARE_IMX8MQ_ATF) += imx8mq-bl31.bin
 pbl-firmware-$(CONFIG_FIRMWARE_IMX93_ATF) += imx93-bl31.bin$(if $(CONFIG_FIRMWARE_IMX93_OPTEE),-optee,)
+pbl-firmware-$(CONFIG_FIRMWARE_AGILEX5_ATF) += agilex5-bl31.bin
 fw-external-$(CONFIG_FIRMWARE_IMX8MM_OPTEE) += imx8mm-bl32.bin
 fw-external-$(CONFIG_FIRMWARE_IMX8MN_OPTEE) += imx8mn-bl32.bin
 fw-external-$(CONFIG_FIRMWARE_IMX8MP_OPTEE) += imx8mp-bl32.bin
diff --git a/images/Makefile.socfpga b/images/Makefile.socfpga
index 7f95bed03297e616532ffb38cb36742b155146f5..807ca78e4ac8636382107f844eeb83ba9007a583 100644
--- a/images/Makefile.socfpga
+++ b/images/Makefile.socfpga
@@ -14,6 +14,14 @@ quiet_cmd_socfpga_image = SOCFPGA-IMG $@
 $(obj)/%.socfpgaimg: $(obj)/% FORCE
 	$(call if_changed,socfpga_image)
 
+# %.hex - convert into Intel hex format
+# ----------------------------------------------------------------
+quiet_cmd_socfpga_objcopy = SOCFPGA-OBJCOPY $@
+      cmd_socfpga_objcopy = $(OBJCOPY) $(OBJCOPYFLAGS) -I binary -O ihex --change-address=0x0 $< $@
+
+$(obj)/%.hex: $(obj)/% FORCE
+	$(call if_changed,socfpga_objcopy)
+
 # ----------------------- Cyclone5 based boards ---------------------------
 pblb-$(CONFIG_MACH_SOCFPGA_ALTERA_SOCDK) += start_socfpga_socdk_xload
 FILE_barebox-socfpga-socdk-xload.img = start_socfpga_socdk_xload.pblb.socfpgaimg
diff --git a/include/mach/socfpga/agilex5-clk.h b/include/mach/socfpga/agilex5-clk.h
new file mode 100644
index 0000000000000000000000000000000000000000..9f689db4f0481c0ec353843b15387d94066337d5
--- /dev/null
+++ b/include/mach/socfpga/agilex5-clk.h
@@ -0,0 +1,266 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (C) 2019-2022 Intel Corporation <www.intel.com>
+ */
+
+#ifndef	_CLK_AGILEX5_
+#define	_CLK_AGILEX5_
+
+#ifndef __ASSEMBLY__
+#include <linux/bitops.h>
+#endif
+
+#define CLKMGR_INTOSC_HZ	400000000
+
+#define CM_REG_READL(plat, reg)				\
+	readl((plat)->regs + (reg))
+
+#define CM_REG_WRITEL(plat, data, reg)			\
+	writel(data, (plat)->regs + (reg))
+
+#define CM_REG_CLRBITS(plat, reg, clear)		\
+	clrbits_le32((plat)->regs + (reg), (clear))
+
+#define CM_REG_SETBITS(plat, reg, set)			\
+	setbits_le32((plat)->regs + (reg), (set))
+
+struct cm_config {
+	/* main group */
+	u32 main_pll_nocclk;
+	u32 main_pll_nocdiv;
+	u32 main_pll_pllglob;
+	u32 main_pll_fdbck;
+	u32 main_pll_pllc0;
+	u32 main_pll_pllc1;
+	u32 main_pll_pllc2;
+	u32 main_pll_pllc3;
+	u32 main_pll_pllm;
+
+	/* peripheral group */
+	u32 per_pll_emacctl;
+	u32 per_pll_gpiodiv;
+	u32 per_pll_pllglob;
+	u32 per_pll_fdbck;
+	u32 per_pll_pllc0;
+	u32 per_pll_pllc1;
+	u32 per_pll_pllc2;
+	u32 per_pll_pllc3;
+	u32 per_pll_pllm;
+
+	/* control group */
+	u32 ctl_emacactr;
+	u32 ctl_emacbctr;
+	u32 ctl_emacptpctr;
+	u32 ctl_gpiodbctr;
+	u32 ctl_s2fuser0ctr;
+	u32 ctl_s2fuser1ctr;
+	u32 ctl_psirefctr;
+	u32 ctl_usb31ctr;
+	u32 ctl_dsuctr;
+	u32 ctl_core01ctr;
+	u32 ctl_core23ctr;
+	u32 ctl_core2ctr;
+	u32 ctl_core3ctr;
+
+
+	/* incoming clock */
+	u32 hps_osc_clk_hz;
+	u32 fpga_clk_hz;
+	u32 spare[3];
+};
+
+/* Clock Manager registers */
+#define CLKMGR_CTRL				0
+#define CLKMGR_STAT				4
+#define CLKMGR_TESTIOCTRL			8
+#define CLKMGR_INTRGEN				0x0c
+#define CLKMGR_INTRMSK				0x10
+#define CLKMGR_INTRCLR				0x14
+#define CLKMGR_INTRSTS				0x18
+#define CLKMGR_INTRSTK				0x1c
+#define CLKMGR_INTRRAW				0x20
+
+/* Clock Manager Main PPL group registers */
+#define CLKMGR_MAINPLL_EN			0x24
+#define CLKMGR_MAINPLL_ENS			0x28
+#define CLKMGR_MAINPLL_ENR			0x2c
+#define CLKMGR_MAINPLL_BYPASS			0x30
+#define CLKMGR_MAINPLL_BYPASSS			0x34
+#define CLKMGR_MAINPLL_BYPASSR			0x38
+#define CLKMGR_MAINPLL_NOCCLK			0x40
+#define CLKMGR_MAINPLL_NOCDIV			0x44
+#define CLKMGR_MAINPLL_PLLGLOB			0x48
+#define CLKMGR_MAINPLL_FDBCK			0x4c
+#define CLKMGR_MAINPLL_MEM			0x50
+#define CLKMGR_MAINPLL_MEMSTAT			0x54
+#define CLKMGR_MAINPLL_VCOCALIB			0x58
+#define CLKMGR_MAINPLL_PLLC0			0x5c
+#define CLKMGR_MAINPLL_PLLC1			0x60
+#define CLKMGR_MAINPLL_PLLC2			0x64
+#define CLKMGR_MAINPLL_PLLC3			0x68
+#define CLKMGR_MAINPLL_PLLM			0x6c
+#define CLKMGR_MAINPLL_FHOP			0x70
+#define CLKMGR_MAINPLL_SSC			0x74
+#define CLKMGR_MAINPLL_LOSTLOCK			0x78
+
+/* Clock Manager Peripheral PPL group registers */
+#define CLKMGR_PERPLL_EN			0x7c
+#define CLKMGR_PERPLL_ENS			0x80
+#define CLKMGR_PERPLL_ENR			0x84
+#define CLKMGR_PERPLL_BYPASS			0x88
+#define CLKMGR_PERPLL_BYPASSS			0x8c
+#define CLKMGR_PERPLL_BYPASSR			0x90
+#define CLKMGR_PERPLL_EMACCTL			0x94
+#define CLKMGR_PERPLL_GPIODIV			0x98
+#define CLKMGR_PERPLL_PLLGLOB			0x9c
+#define CLKMGR_PERPLL_FDBCK			0xa0
+#define CLKMGR_PERPLL_MEM			0xa4
+#define CLKMGR_PERPLL_MEMSTAT			0xa8
+#define CLKMGR_PERPLL_VCOCALIB			0xac
+#define CLKMGR_PERPLL_PLLC0			0xb0
+#define CLKMGR_PERPLL_PLLC1			0xb4
+#define CLKMGR_PERPLL_PLLC2			0xb8
+#define CLKMGR_PERPLL_PLLC3			0xbc
+#define CLKMGR_PERPLL_PLLM			0xc0
+#define CLKMGR_PERPLL_FHOP			0xc4
+#define CLKMGR_PERPLL_SSC			0xc8
+#define CLKMGR_PERPLL_LOSTLOCK			0xcc
+
+/* Clock Manager Control group registers */
+#define CLKMGR_CTL_JTAG			0xd0
+#define CLKMGR_CTL_EMACACTR			0xd4
+#define CLKMGR_CTL_EMACBCTR			0xd8
+#define CLKMGR_CTL_EMACPTPCTR			0xdc
+#define CLKMGR_CTL_GPIODBCTR			0xe0
+#define CLKMGR_CTL_S2FUSER0CTR			0xe8
+#define CLKMGR_CTL_S2FUSER1CTR			0xec
+#define CLKMGR_CTL_PSIREFCTR			0xf0
+#define CLKMGR_CTL_EXTCNTRST			0xf4
+#define CLKMGR_CTL_USB31CTR				0xf8
+#define CLKMGR_CTL_DSUCTR				0xfc
+#define CLKMGR_CTL_CORE01CTR			0x100
+#define CLKMGR_CTL_CORE23CTR			0x104
+#define CLKMGR_CTL_CORE2CTR				0x108
+#define CLKMGR_CTL_CORE3CTR				0x10C
+
+#define CLKMGR_CTRL_BOOTMODE			BIT(0)
+
+#define CLKMGR_STAT_BUSY			BIT(0)
+#define CLKMGR_STAT_MAINPLL_LOCKED		BIT(8)
+#define CLKMGR_STAT_MAIN_TRANS			BIT(9)
+#define CLKMGR_STAT_PERPLL_LOCKED		BIT(16)
+#define CLKMGR_STAT_PERF_TRANS			BIT(17)
+#define CLKMGR_STAT_BOOTMODE			BIT(24)
+#define CLKMGR_STAT_BOOTCLKSRC			BIT(25)
+
+#define CLKMGR_STAT_ALLPLL_LOCKED_MASK		\
+	(CLKMGR_STAT_MAINPLL_LOCKED | CLKMGR_STAT_PERPLL_LOCKED)
+
+#define CLKMGR_INTER_MAINPLLLOCKED_MASK		0x00000001
+#define CLKMGR_INTER_PERPLLLOCKED_MASK		0x00000002
+#define CLKMGR_INTER_MAINPLLLOST_MASK		0x00000004
+#define CLKMGR_INTER_PERPLLLOST_MASK		0x00000008
+
+#define CLKMGR_CLKSRC_MASK			GENMASK(18, 16)
+#define CLKMGR_CLKSRC_OFFSET			16
+#define CLKMGR_CLKSRC_MAIN			0
+#define CLKMGR_CLKSRC_PER			1
+#define CLKMGR_CLKSRC_OSC1			2
+#define CLKMGR_CLKSRC_INTOSC			3
+#define CLKMGR_CLKSRC_FPGA			4
+#define CLKMGR_CLKCNT_MSK			GENMASK(10, 0)
+
+#define CLKMGR_BYPASS_MAINPLL_ALL		0xf6
+#define CLKMGR_BYPASS_PERPLL_ALL		0xef
+
+#define CLKMGR_NOCDIV_SOFTPHY_DIV_ONE		0
+#define CLKMGR_NOCDIV_SOFTPHY_DIV_TWO		1
+#define CLKMGR_NOCDIV_SOFTPHY_DIV_FOUR		2
+#define CLKMGR_NOCDIV_L4SYSFREECLK_OFFSET		0
+#define CLKMGR_NOCDIV_L4MPCLK_OFFSET		4
+#define CLKMGR_NOCDIV_L4SPCLK_OFFSET		6
+#define CLKMGR_NOCDIV_SOFTPHY_OFFSET		16
+#define CLKMGR_NOCDIV_CCU_OFFSET			18
+#define CLKMGR_NOCDIV_MPUPERIPH_OFFSET		20
+#define CLKMGR_NOCDIV_CSATCLK_OFFSET		24
+#define CLKMGR_NOCDIV_CSTRACECLK_OFFSET		26
+#define CLKMGR_NOCDIV_CSPDBGCLK_OFFSET		28
+#define CLKMGR_NOCDIV_DIVIDER_MASK		0x3
+
+#define CLKMGR_PLLGLOB_PD_MASK				BIT(0)
+#define CLKMGR_PLLGLOB_RST_MASK				BIT(1)
+#define CLKMGR_PLLGLOB_AREFCLKDIV_MASK			GENMASK(11, 8)
+#define CLKMGR_PLLGLOB_DREFCLKDIV_MASK			GENMASK(13, 12)
+#define CLKMGR_PLLGLOB_REFCLKDIV_MASK			GENMASK(13, 8)
+#define CLKMGR_PLLGLOB_MODCLKDIV_MASK			GENMASK(24, 27)
+#define CLKMGR_PLLGLOB_AREFCLKDIV_OFFSET		8
+#define CLKMGR_PLLGLOB_DREFCLKDIV_OFFSET		12
+#define CLKMGR_PLLGLOB_REFCLKDIV_OFFSET			8
+#define CLKMGR_PLLGLOB_MODCLKDIV_OFFSET			24
+#define CLKMGR_PLLGLOB_VCO_PSRC_MASK			GENMASK(17, 16)
+#define CLKMGR_PLLGLOB_VCO_PSRC_OFFSET			16
+#define CLKMGR_PLLGLOB_CLR_LOSTLOCK_BYPASS_MASK		BIT(29)
+
+#define CLKMGR_VCO_PSRC_EOSC1			0
+#define CLKMGR_VCO_PSRC_INTOSC			1
+#define CLKMGR_VCO_PSRC_F2S			2
+
+#define CLKMGR_MEM_REQ_SET_MSK			BIT(24)
+#define CLKMGR_MEM_WR_SET_MSK			BIT(25)
+#define CLKMGR_MEM_ERR_MSK			BIT(26)
+#define CLKMGR_MEM_WDAT_LSB_OFFSET		16
+#define CLKMGR_MEM_ADDR_MASK			GENMASK(15, 0)
+#define CLKMGR_MEM_ADDR_START			0x00004000
+
+#define CLKMGR_PLLCX_EN_SET_MSK			BIT(27)
+#define CLKMGR_PLLCX_MUTE_SET_MSK		BIT(28)
+
+#define CLKMGR_VCOCALIB_MSCNT_MASK		GENMASK(23, 16)
+#define CLKMGR_VCOCALIB_MSCNT_OFFSET		16
+#define CLKMGR_VCOCALIB_HSCNT_MASK		GENMASK(9, 0)
+#define CLKMGR_VCOCALIB_MSCNT_CONST		100
+#define CLKMGR_VCOCALIB_HSCNT_CONST		4
+
+#define CLKMGR_PLLM_MDIV_MASK			GENMASK(9, 0)
+
+#define CLKMGR_LOSTLOCK_SET_MASK		BIT(0)
+
+#define CLKMGR_PERPLLGRP_EN_SDMMCCLK_MASK		BIT(5)
+#define CLKMGR_PERPLLGRP_EMACCTL_EMAC0SELB_OFFSET	26
+#define CLKMGR_PERPLLGRP_EMACCTL_EMAC0SELB_MASK		BIT(26)
+#define CLKMGR_PERPLLGRP_EMACCTL_EMAC1SELB_OFFSET	27
+#define CLKMGR_PERPLLGRP_EMACCTL_EMAC1SELB_MASK		BIT(27)
+#define CLKMGR_PERPLLGRP_EMACCTL_EMAC2SELB_OFFSET	28
+#define CLKMGR_PERPLLGRP_EMACCTL_EMAC2SELB_MASK		BIT(28)
+
+#define CLKMGR_CTL_EMACCTR_SRC_OFFSET		16
+#define CLKMGR_CTL_EMACCTR_SRC_MASK		GENMASK(18, 16)
+#define CLKMGR_CTL_EMACCTR_CNT_OFFSET		0
+#define CLKMGR_CTL_EMACCTR_CNT_MASK		GENMASK(10, 0)
+
+#define CLKMGR_CTL_EXTCNTRST_EMACACNTRST	BIT(0)
+#define CLKMGR_CTL_EXTCNTRST_EMACBCNTRST	BIT(1)
+#define CLKMGR_CTL_EXTCNTRST_EMACPTPCNTRST	BIT(2)
+#define CLKMGR_CTL_EXTCNTRST_GPIODBCNTRST	BIT(3)
+#define CLKMGR_CTL_EXTCNTRST_S2FUSER0CNTRST	BIT(5)
+#define CLKMGR_CTL_EXTCNTRST_S2FUSER1CNTRST	BIT(6)
+#define CLKMGR_CTL_EXTCNTRST_PSIREFCNTRST	BIT(7)
+#define CLKMGR_CTL_EXTCNTRST_USB31REFCNTRST	BIT(8)
+#define CLKMGR_CTL_EXTCNTRST_DSUCNTRST		BIT(10)
+#define CLKMGR_CTL_EXTCNTRST_CORE01CNTRST	BIT(11)
+#define CLKMGR_CTL_EXTCNTRST_CORE2CNTRST	BIT(12)
+#define CLKMGR_CTL_EXTCNTRST_CORE3CNTRST	BIT(13)
+#define CLKMGR_CTL_EXTCNTRST_ALLCNTRST		\
+	(CLKMGR_CTL_EXTCNTRST_EMACACNTRST |	\
+	 CLKMGR_CTL_EXTCNTRST_EMACBCNTRST |	\
+	 CLKMGR_CTL_EXTCNTRST_EMACPTPCNTRST |	\
+	 CLKMGR_CTL_EXTCNTRST_GPIODBCNTRST |	\
+	 CLKMGR_CTL_EXTCNTRST_S2FUSER0CNTRST |	\
+	 CLKMGR_CTL_EXTCNTRST_S2FUSER1CNTRST |	\
+	 CLKMGR_CTL_EXTCNTRST_PSIREFCNTRST |	\
+	 CLKMGR_CTL_EXTCNTRST_USB31REFCNTRST |	\
+	 CLKMGR_CTL_EXTCNTRST_DSUCNTRST |	\
+	 CLKMGR_CTL_EXTCNTRST_CORE01CNTRST |	\
+	 CLKMGR_CTL_EXTCNTRST_CORE2CNTRST |	\
+	 CLKMGR_CTL_EXTCNTRST_CORE3CNTRST)
+#endif /* _CLK_AGILEX5_ */
diff --git a/include/mach/socfpga/atf.h b/include/mach/socfpga/atf.h
new file mode 100644
index 0000000000000000000000000000000000000000..a1ae878015bc48613cbdca73ac971f3f3dd844fe
--- /dev/null
+++ b/include/mach/socfpga/atf.h
@@ -0,0 +1,14 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#ifndef ATF_H_
+#define ATF_H_
+
+#include <linux/sizes.h>
+#include <linux/compiler.h>
+#include <linux/types.h>
+#include <asm/system.h>
+
+#define AGILEX5_ATF_BL31_BASE_ADDR	0x80000000
+#define AGILEX5_ATF_BL33_BASE_ADDR	0x80200000
+
+#endif
diff --git a/include/mach/socfpga/generic.h b/include/mach/socfpga/generic.h
index 9891dbe4fe1016ce0732d635fdd06ae7add16ac3..07add9ed40d6a2e2a1a46acd80177f8d99710dda 100644
--- a/include/mach/socfpga/generic.h
+++ b/include/mach/socfpga/generic.h
@@ -99,6 +99,9 @@ static inline void arria10_kick_l4wd0(void) {}
 static inline void arria10_watchdog_disable(void) {}
 #endif
 
+int agilex5_clk_init(void);
+void __noreturn agilex5_load_and_start_image_via_tfa(unsigned long memsize);
+
 static inline void __udelay(unsigned us)
 {
 	volatile unsigned int i;
diff --git a/include/mach/socfpga/init.h b/include/mach/socfpga/init.h
index c0e073ee1347cb4d76d74aeb3f513b1764996a59..06c480fe42f131d4f785643cd30e58780b3a0e52 100644
--- a/include/mach/socfpga/init.h
+++ b/include/mach/socfpga/init.h
@@ -5,4 +5,6 @@
 
 void arria10_cpu_lowlevel_init(void);
 
+void socfpga_agilex5_cpu_lowlevel_init(void);
+
 #endif
diff --git a/include/mach/socfpga/intel-smc.h b/include/mach/socfpga/intel-smc.h
new file mode 100644
index 0000000000000000000000000000000000000000..e15fa3d4da21a4da61c759bf26d66a9f4d769210
--- /dev/null
+++ b/include/mach/socfpga/intel-smc.h
@@ -0,0 +1,545 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (C) 2017-2018, Intel Corporation
+ */
+
+#ifndef __INTEL_SMC_H
+#define __INTEL_SMC_H
+
+#include <linux/arm-smccc.h>
+#include <linux/bitops.h>
+
+/*
+ * This file defines the Secure Monitor Call (SMC) message protocol used for
+ * service layer driver in normal world (EL1) to communicate with secure
+ * monitor software in Secure Monitor Exception Level 3 (EL3).
+ *
+ * This file is shared with secure firmware (FW) which is out of u-boot tree.
+ *
+ * An ARM SMC instruction takes a function identifier and up to 6 64-bit
+ * register values as arguments, and can return up to 4 64-bit register
+ * values. The operation of the secure monitor is determined by the parameter
+ * values passed in through registers.
+
+ * EL1 and EL3 communicates pointer as physical address rather than the
+ * virtual address.
+ */
+
+/*
+ * Functions specified by ARM SMC Calling convention:
+ *
+ * FAST call executes atomic operations, returns when the requested operation
+ * has completed.
+ * STD call starts a operation which can be preempted by a non-secure
+ * interrupt. The call can return before the requested operation has
+ * completed.
+ *
+ * a0..a7 is used as register names in the descriptions below, on arm32
+ * that translates to r0..r7 and on arm64 to w0..w7.
+ */
+
+#define INTEL_SIP_SMC_STD_CALL_VAL(func_num) \
+	ARM_SMCCC_CALL_VAL(ARM_SMCCC_STD_CALL, ARM_SMCCC_SMC_64, \
+	ARM_SMCCC_OWNER_SIP, (func_num))
+
+#define INTEL_SIP_SMC_FAST_CALL_VAL(func_num) \
+	ARM_SMCCC_CALL_VAL(ARM_SMCCC_FAST_CALL, ARM_SMCCC_SMC_64, \
+	ARM_SMCCC_OWNER_SIP, (func_num))
+
+/*
+ * Return values in INTEL_SIP_SMC_* call
+ *
+ * INTEL_SIP_SMC_RETURN_UNKNOWN_FUNCTION:
+ * Secure monitor software doesn't recognize the request.
+ *
+ * INTEL_SIP_SMC_STATUS_OK:
+ * SMC call completed successfully,
+ * In case of FPGA configuration write operation, it means secure monitor
+ * software can accept the next chunk of FPGA configuration data.
+ *
+ * INTEL_SIP_SMC_STATUS_BUSY:
+ * In case of FPGA configuration write operation, it means secure monitor
+ * software is still processing previous data & can't accept the next chunk
+ * of data. Service driver needs to issue
+ * INTEL_SIP_SMC_FPGA_CONFIG_COMPLETED_WRITE call to query the
+ * completed block(s).
+ *
+ * INTEL_SIP_SMC_STATUS_ERROR:
+ * There is error during the SMC call process.
+ *
+ * INTEL_SIP_SMC_REG_ERROR:
+ * There is error during a read or write operation of the protected
+ * registers.
+ */
+#define INTEL_SIP_SMC_RETURN_UNKNOWN_FUNCTION		0xFFFFFFFF
+#define INTEL_SIP_SMC_STATUS_OK				0x0
+#define INTEL_SIP_SMC_STATUS_BUSY			0x1
+#define INTEL_SIP_SMC_STATUS_REJECTED			0x2
+#define INTEL_SIP_SMC_STATUS_ERROR			0x4
+#define INTEL_SIP_SMC_REG_ERROR				0x5
+#define INTEL_SIP_SMC_RSU_ERROR				0x7
+
+/*
+ * Request INTEL_SIP_SMC_FPGA_CONFIG_START
+ *
+ * Sync call used by service driver at EL1 to request the FPGA in EL3 to
+ * be prepare to receive a new configuration.
+ *
+ * Call register usage:
+ * a0: INTEL_SIP_SMC_FPGA_CONFIG_START.
+ * a1: flag for full or partial configuration
+ *    0 full reconfiguration.
+ *    1 partial reconfiguration.
+ * a2-7: not used.
+ *
+ * Return status:
+ * a0: INTEL_SIP_SMC_STATUS_OK, or INTEL_SIP_SMC_STATUS_ERROR.
+ * a1-3: not used.
+ */
+#define INTEL_SIP_SMC_FUNCID_FPGA_CONFIG_START 1
+#define INTEL_SIP_SMC_FPGA_CONFIG_START \
+	INTEL_SIP_SMC_FAST_CALL_VAL(INTEL_SIP_SMC_FUNCID_FPGA_CONFIG_START)
+
+/*
+ * Request INTEL_SIP_SMC_FPGA_CONFIG_WRITE
+ *
+ * Async call used by service driver at EL1 to provide FPGA configuration data
+ * to secure world.
+ *
+ * Call register usage:
+ * a0: INTEL_SIP_SMC_FPGA_CONFIG_WRITE.
+ * a1: 64bit physical address of the configuration data memory block
+ * a2: Size of configuration data block.
+ * a3-7: not used.
+ *
+ * Return status:
+ * a0: INTEL_SIP_SMC_STATUS_OK, INTEL_SIP_SMC_STATUS_BUSY,
+ * INTEL_SIP_SMC_STATUS_REJECTED or INTEL_SIP_SMC_STATUS_ERROR.
+ * a1: 64bit physical address of 1st completed memory block if any completed
+ * block, otherwise zero value.
+ * a2: 64bit physical address of 2nd completed memory block if any completed
+ * block, otherwise zero value.
+ * a3: 64bit physical address of 3rd completed memory block if any completed
+ * block, otherwise zero value.
+ */
+#define INTEL_SIP_SMC_FUNCID_FPGA_CONFIG_WRITE 2
+#define INTEL_SIP_SMC_FPGA_CONFIG_WRITE \
+	INTEL_SIP_SMC_STD_CALL_VAL(INTEL_SIP_SMC_FUNCID_FPGA_CONFIG_WRITE)
+
+/*
+ * Request INTEL_SIP_SMC_FPGA_CONFIG_COMPLETED_WRITE
+ *
+ * Sync call used by service driver at EL1 to track the completed write
+ * transactions. This request is called after INTEL_SIP_SMC_FPGA_CONFIG_WRITE
+ * call returns INTEL_SIP_SMC_STATUS_BUSY.
+ *
+ * Call register usage:
+ * a0: INTEL_SIP_SMC_FPGA_CONFIG_COMPLETED_WRITE.
+ * a1-7: not used.
+ *
+ * Return status:
+ * a0: INTEL_SIP_SMC_STATUS_OK, INTEL_SIP_SMC_STATUS_BUSY or
+ * INTEL_SIP_SMC_STATUS_ERROR.
+ * a1: 64bit physical address of 1st completed memory block.
+ * a2: 64bit physical address of 2nd completed memory block if
+ * any completed block, otherwise zero value.
+ * a3: 64bit physical address of 3rd completed memory block if
+ * any completed block, otherwise zero value.
+ */
+#define INTEL_SIP_SMC_FUNCID_FPGA_CONFIG_COMPLETED_WRITE 3
+#define INTEL_SIP_SMC_FPGA_CONFIG_COMPLETED_WRITE \
+INTEL_SIP_SMC_FAST_CALL_VAL(INTEL_SIP_SMC_FUNCID_FPGA_CONFIG_COMPLETED_WRITE)
+
+/*
+ * Request INTEL_SIP_SMC_FPGA_CONFIG_ISDONE
+ *
+ * Sync call used by service driver at EL1 to inform secure world that all
+ * data are sent, to check whether or not the secure world had completed
+ * the FPGA configuration process.
+ *
+ * Call register usage:
+ * a0: INTEL_SIP_SMC_FPGA_CONFIG_ISDONE.
+ * a1-7: not used.
+ *
+ * Return status:
+ * a0: INTEL_SIP_SMC_STATUS_OK, INTEL_SIP_SMC_STATUS_BUSY or
+ * INTEL_SIP_SMC_STATUS_ERROR.
+ * a1-3: not used.
+ */
+#define INTEL_SIP_SMC_FUNCID_FPGA_CONFIG_ISDONE 4
+#define INTEL_SIP_SMC_FPGA_CONFIG_ISDONE \
+	INTEL_SIP_SMC_FAST_CALL_VAL(INTEL_SIP_SMC_FUNCID_FPGA_CONFIG_ISDONE)
+
+/*
+ * Request INTEL_SIP_SMC_FPGA_CONFIG_GET_MEM
+ *
+ * Sync call used by service driver at EL1 to query the physical address of
+ * memory block reserved by secure monitor software.
+ *
+ * Call register usage:
+ * a0:INTEL_SIP_SMC_FPGA_CONFIG_GET_MEM.
+ * a1-7: not used.
+ *
+ * Return status:
+ * a0: INTEL_SIP_SMC_STATUS_OK or INTEL_SIP_SMC_STATUS_ERROR.
+ * a1: start of physical address of reserved memory block.
+ * a2: size of reserved memory block.
+ * a3: not used.
+ */
+#define INTEL_SIP_SMC_FUNCID_FPGA_CONFIG_GET_MEM 5
+#define INTEL_SIP_SMC_FPGA_CONFIG_GET_MEM \
+	INTEL_SIP_SMC_FAST_CALL_VAL(INTEL_SIP_SMC_FUNCID_FPGA_CONFIG_GET_MEM)
+
+/*
+ * Request INTEL_SIP_SMC_FPGA_CONFIG_LOOPBACK
+ *
+ * For SMC loop-back mode only, used for internal integration, debugging
+ * or troubleshooting.
+ *
+ * Call register usage:
+ * a0: INTEL_SIP_SMC_FPGA_CONFIG_LOOPBACK.
+ * a1-7: not used.
+ *
+ * Return status:
+ * a0: INTEL_SIP_SMC_STATUS_OK or INTEL_SIP_SMC_STATUS_ERROR.
+ * a1-3: not used.
+ */
+#define INTEL_SIP_SMC_FUNCID_FPGA_CONFIG_LOOPBACK 6
+#define INTEL_SIP_SMC_FPGA_CONFIG_LOOPBACK \
+	INTEL_SIP_SMC_FAST_CALL_VAL(INTEL_SIP_SMC_FUNCID_FPGA_CONFIG_LOOPBACK)
+
+/*
+ * Request INTEL_SIP_SMC_REG_READ
+ *
+ * Read a protected register using SMCCC
+ *
+ * Call register usage:
+ * a0: INTEL_SIP_SMC_REG_READ.
+ * a1: register address.
+ * a2-7: not used.
+ *
+ * Return status:
+ * a0: INTEL_SIP_SMC_STATUS_OK or INTEL_SIP_SMC_REG_ERROR.
+ * a1: Value in the register
+ * a2-3: not used.
+ */
+#define INTEL_SIP_SMC_FUNCID_REG_READ 7
+#define INTEL_SIP_SMC_REG_READ \
+	INTEL_SIP_SMC_FAST_CALL_VAL(INTEL_SIP_SMC_FUNCID_REG_READ)
+
+/*
+ * Request INTEL_SIP_SMC_REG_WRITE
+ *
+ * Write a protected register using SMCCC
+ *
+ * Call register usage:
+ * a0: INTEL_SIP_SMC_REG_WRITE.
+ * a1: register address
+ * a2: value to program into register.
+ * a3-7: not used.
+ *
+ * Return status:
+ * a0: INTEL_SIP_SMC_STATUS_OK or INTEL_SIP_SMC_REG_ERROR.
+ * a1-3: not used.
+ */
+#define INTEL_SIP_SMC_FUNCID_REG_WRITE 8
+#define INTEL_SIP_SMC_REG_WRITE \
+	INTEL_SIP_SMC_FAST_CALL_VAL(INTEL_SIP_SMC_FUNCID_REG_WRITE)
+
+/*
+ * Request INTEL_SIP_SMC_FUNCID_REG_UPDATE
+ *
+ * Update one or more bits in a protected register using a
+ * read-modify-write operation.
+ *
+ * Call register usage:
+ * a0: INTEL_SIP_SMC_REG_UPDATE.
+ * a1: register address
+ * a2: Write Mask.
+ * a3: Value to write.
+ * a4-7: not used.
+ *
+ * Return status:
+ * a0: INTEL_SIP_SMC_STATUS_OK or INTEL_SIP_SMC_REG_ERROR.
+ * a1-3: Not used.
+ */
+#define INTEL_SIP_SMC_FUNCID_REG_UPDATE 9
+#define INTEL_SIP_SMC_REG_UPDATE \
+	INTEL_SIP_SMC_FAST_CALL_VAL(INTEL_SIP_SMC_FUNCID_REG_UPDATE)
+
+/*
+* Request INTEL_SIP_SMC_RSU_STATUS
+*
+* Sync call used by service driver at EL1 to query the RSU status
+*
+* Call register usage:
+* a0 INTEL_SIP_SMC_RSU_STATUS
+* a1-7 not used
+*
+* Return status
+* a0: Current Image
+* a1: Last Failing Image
+* a2: Version [width 32 bit] | State [width 32 bit]
+* a3: Error details [width 32 bit] | Error location [width 32 bit]
+*
+* Or
+*
+* a0: INTEL_SIP_SMC_RSU_ERROR
+*/
+#define INTEL_SIP_SMC_FUNCID_RSU_STATUS 11
+#define INTEL_SIP_SMC_RSU_STATUS \
+	INTEL_SIP_SMC_FAST_CALL_VAL(INTEL_SIP_SMC_FUNCID_RSU_STATUS)
+
+/*
+* Request INTEL_SIP_SMC_RSU_UPDATE
+*
+* Sync call used by service driver at EL1 to tell you next reboot is RSU_UPDATE
+*
+* Call register usage:
+* a0 INTEL_SIP_SMC_RSU_UPDATE
+* a1 64bit physical address of the configuration data memory in flash
+* a2-7 not used
+*
+* Return status
+ * a0 INTEL_SIP_SMC_STATUS_OK
+*/
+#define INTEL_SIP_SMC_FUNCID_RSU_UPDATE 12
+#define INTEL_SIP_SMC_RSU_UPDATE \
+	INTEL_SIP_SMC_FAST_CALL_VAL(INTEL_SIP_SMC_FUNCID_RSU_UPDATE)
+
+/*
+ * Request INTEL_SIP_SMC_ECC_DBE
+ *
+ * Sync call used by service driver at EL1 alert EL3 that a Double Bit
+ * ECC error has occurred.
+ *
+ * Call register usage:
+ * a0 INTEL_SIP_SMC_ECC_DBE
+ * a1 SysManager Double Bit Error value
+ * a2-7 not used
+ *
+ * Return status
+ * a0 INTEL_SIP_SMC_STATUS_OK
+ */
+#define INTEL_SIP_SMC_FUNCID_ECC_DBE 13
+#define INTEL_SIP_SMC_ECC_DBE \
+	INTEL_SIP_SMC_FAST_CALL_VAL(INTEL_SIP_SMC_FUNCID_ECC_DBE)
+
+/*
+* Request INTEL_SIP_SMC_RSU_NOTIFY
+*
+* Sync call used by service driver at EL1 to report HPS software execution stage
+*
+* Call register usage:
+* a0 INTEL_SIP_SMC_RSU_NOTIFY
+* a1 32bit HPS software execution stage
+* a2-7 not used
+*
+* Return status
+ * a0 INTEL_SIP_SMC_STATUS_OK or INTEL_SIP_SMC_REG_ERROR.
+*/
+#define INTEL_SIP_SMC_FUNCID_RSU_NOTIFY 14
+#define INTEL_SIP_SMC_RSU_NOTIFY \
+	INTEL_SIP_SMC_FAST_CALL_VAL(INTEL_SIP_SMC_FUNCID_RSU_NOTIFY)
+
+/*
+ * Request INTEL_SIP_SMC_RSU_RETRY_COUNTER
+ *
+ * Sync call used by service driver at EL1 to query the RSU retry counter
+ *
+ * Call register usage:
+ * a0 INTEL_SIP_SMC_RSU_RETRY_COUNTER
+ * a1-7 not used
+ *
+ * Return status
+ * a0 INTEL_SIP_SMC_STATUS_OK or INTEL_SIP_SMC_RSU_ERROR.
+ * a1 retry counter
+*/
+#define INTEL_SIP_SMC_FUNCID_RSU_RETRY_COUNTER 15
+#define INTEL_SIP_SMC_RSU_RETRY_COUNTER \
+	INTEL_SIP_SMC_FAST_CALL_VAL(INTEL_SIP_SMC_FUNCID_RSU_RETRY_COUNTER)
+
+/*
+ * Request INTEL_SIP_SMC_RSU_DCMF_VERSION
+ *
+ * Sync call used by service driver at EL1 to query DCMF version
+ *
+ * Call register usage:
+ * a0 INTEL_SIP_SMC_RSU_DCMF_VERSION
+ * a1-7 not used
+ *
+ * Return status
+ * a0 INTEL_SIP_SMC_STATUS_OK
+ * a1 dcmf1 version | dcmf0 version
+ * a2 dcmf3 version | dcmf2 version
+ *
+ * Or
+ *
+ * a0 INTEL_SIP_SMC_RSU_ERROR
+ */
+#define INTEL_SIP_SMC_FUNCID_RSU_DCMF_VERSION 16
+#define INTEL_SIP_SMC_RSU_DCMF_VERSION \
+	INTEL_SIP_SMC_FAST_CALL_VAL(INTEL_SIP_SMC_FUNCID_RSU_DCMF_VERSION)
+
+/*
+ * Request INTEL_SIP_SMC_RSU_COPY_DCMF_VERSION
+ *
+ * Sync call used by SSBL (EL2) to copy DCMF version to ATF memory
+ *
+ * Call register usage:
+ * a0 INTEL_SIP_SMC_RSU_COPY_DCMF_VERSION
+ * a1 dcmf1 version | dcmf0 version
+ * a2 dcmf3 version | dcmf2 version
+ *
+ * Return status
+ * a0 INTEL_SIP_SMC_STATUS_OK
+ */
+#define INTEL_SIP_SMC_FUNCID_RSU_COPY_DCMF_VERSION 17
+#define INTEL_SIP_SMC_RSU_COPY_DCMF_VERSION \
+	INTEL_SIP_SMC_FAST_CALL_VAL(INTEL_SIP_SMC_FUNCID_RSU_COPY_DCMF_VERSION)
+
+/*
+ * Request INTEL_SIP_SMC_RSU_MAX_RETRY
+ *
+ * Sync call used by service driver at EL1 to query max_retry parameter
+ *
+ * Call register usage:
+ * a0 INTEL_SIP_SMC_RSU_MAX_RETRY
+ * a1-7 not used
+ *
+ * Return status
+ * a0 INTEL_SIP_SMC_STATUS_OK
+ * a1 max_retry
+ *
+ * Or
+ *
+ * a0 INTEL_SIP_SMC_RSU_ERROR
+ */
+#define INTEL_SIP_SMC_FUNCID_RSU_MAX_RETRY 18
+#define INTEL_SIP_SMC_RSU_MAX_RETRY \
+	INTEL_SIP_SMC_FAST_CALL_VAL(INTEL_SIP_SMC_FUNCID_RSU_MAX_RETRY)
+
+/*
+ * Request INTEL_SIP_SMC_RSU_COPY_MAX_RETRY
+ *
+ * Sync call used by SSBL (EL2) to copy RSU 'max retry' to ATF memory
+ *
+ * Call register usage:
+ * a0 INTEL_SIP_SMC_RSU_COPY_MAX_RETRY
+ * a1 max retry
+ * a2-7 not used
+ *
+ * Return status
+ * a0 INTEL_SIP_SMC_STATUS_OK
+ */
+#define INTEL_SIP_SMC_FUNCID_RSU_COPY_MAX_RETRY 19
+#define INTEL_SIP_SMC_RSU_COPY_MAX_RETRY \
+	INTEL_SIP_SMC_FAST_CALL_VAL(INTEL_SIP_SMC_FUNCID_RSU_COPY_MAX_RETRY)
+
+/*
+ * Request INTEL_SIP_SMC_RSU_DCMF_STATUS
+ *
+ * Sync call used by service driver at EL1 to query DCMF status
+ *
+ * Call register usage:
+ * a0 INTEL_SIP_SMC_RSU_DCMF_STATUS
+ * a1-7 not used
+ *
+ * Return status
+ * a0 INTEL_SIP_SMC_STATUS_OK
+ * a1 dcmf3 status | dcmf2 status | dcmf1 status | dcmf0 status
+ *
+ * Or
+ *
+ * a0 INTEL_SIP_SMC_RSU_ERROR
+ */
+#define INTEL_SIP_SMC_FUNCID_RSU_DCMF_STATUS 20
+#define INTEL_SIP_SMC_RSU_DCMF_STATUS \
+	INTEL_SIP_SMC_FAST_CALL_VAL(INTEL_SIP_SMC_FUNCID_RSU_DCMF_STATUS)
+
+/*
+ * Request INTEL_SIP_SMC_RSU_COPY_DCMF_STATUS
+ *
+ * Sync call used by SSBL (EL2) to copy RSU 'dcmf status' to ATF memory
+ *
+ * Call register usage:
+ * a0 INTEL_SIP_SMC_RSU_COPY_DCMF_STATUS
+ * a1 dcmf status
+ * a2-7 not used
+ *
+ * Return status
+ * a0 INTEL_SIP_SMC_STATUS_OK
+ */
+#define INTEL_SIP_SMC_FUNCID_RSU_COPY_DCMF_STATUS 21
+#define INTEL_SIP_SMC_RSU_COPY_DCMF_STATUS \
+	INTEL_SIP_SMC_FAST_CALL_VAL(INTEL_SIP_SMC_FUNCID_RSU_COPY_DCMF_STATUS)
+
+/*
+ * Request INTEL_SIP_SMC_HPS_SET_BRIDGES
+ *
+ * Enable/disable the SoC FPGA bridges
+ *
+ * Call register usage:
+ * a0 INTEL_SIP_SMC_HPS_SET_BRIDGES
+ * a1 Set bridges status:
+ *	Bit 0: 0 - Disable, 1 - Enable
+ *	Bit 1: 1 - Has mask value in a2
+ * a2 Mask value
+ *	Bit 0: soc2fpga
+ *	Bit 1: lwhps2fpga
+ *	Bit 2: fpga2soc
+ *	Bit 3: f2sdram0	(For Stratix 10 only)
+ *	Bit 4: f2sdram1	(For Stratix 10 only)
+ *	Bit 5: f2sdram2	(For Stratix 10 only)
+ * a3-7 not used
+ * Return status
+ * a0 INTEL_SIP_SMC_STATUS_OK
+ */
+#define INTEL_SIP_SMC_FUNCID_HPS_SET_BRIDGES	50
+#define INTEL_SIP_SMC_HPS_SET_BRIDGES \
+	INTEL_SIP_SMC_FAST_CALL_VAL(INTEL_SIP_SMC_FUNCID_HPS_SET_BRIDGES)
+
+/*
+ * Request INTEL_SIP_SMC_MBOX_SEND_CMD
+ *
+ * Send mailbox command to SDM
+ *
+ * Call register usage:
+ * a0 INTEL_SIP_SMC_MBOX_SEND_CMD
+ * a1 Mailbox command
+ * a2 64bit physical address pointer to command's arguments
+ * a3 Length of the argument
+ * a4 Urgent command:
+ *      0 - Disable
+ *      1 - Enable
+ * a5 64bit physical address pointer to a buffer for receiving responses
+ * a6 Length of the buffer
+ *
+ * Return status
+ * a0 INTEL_SIP_SMC_STATUS_OK or INTEL_SIP_SMC_STATUS_ERROR
+ * a1 Status of mailbox response
+ * a2 Received length in the buffer
+ */
+#define INTEL_SIP_SMC_FUNCID_MBOX_SEND_CMD	60
+#define INTEL_SIP_SMC_MBOX_SEND_CMD \
+	INTEL_SIP_SMC_FAST_CALL_VAL(INTEL_SIP_SMC_FUNCID_MBOX_SEND_CMD)
+
+/*
+ * Request INTEL_SIP_SMC_GET_USERCODE
+ *
+ * Send mailbox command to get usercode from SDM
+ *
+ * Call register usage:
+ * a0 INTEL_SIP_SMC_GET_USERCODE
+ * a1-7 not used.
+ *
+ * Return status
+ * a0 INTEL_SIP_SMC_STATUS_OK or INTEL_SIP_SMC_STATUS_ERROR
+ * a1 User code
+ * a2-3 not used.
+ */
+#define INTEL_SIP_SMC_FUNCID_GET_USERCODE	61
+#define INTEL_SIP_SMC_GET_USERCODE \
+	INTEL_SIP_SMC_FAST_CALL_VAL(INTEL_SIP_SMC_FUNCID_GET_USERCODE)
+
+#endif
diff --git a/include/mach/socfpga/mailbox_s10.h b/include/mach/socfpga/mailbox_s10.h
new file mode 100644
index 0000000000000000000000000000000000000000..bba4adbbe87731a011cb84834894c7ba48c4e9b1
--- /dev/null
+++ b/include/mach/socfpga/mailbox_s10.h
@@ -0,0 +1,191 @@
+/* SPDX-License-Identifier: GPL-2.0
+ *
+ * Copyright (C) 2017-2023 Intel Corporation <www.intel.com>
+ *
+ */
+
+#ifndef _MAILBOX_S10_H_
+#define _MAILBOX_S10_H_
+
+/* user define barebox ID */
+#include <linux/bitops.h>
+#define MBOX_CLIENT_ID_BAREBOX	0x2
+#define MBOX_ID_BAREBOX		0x2
+
+#define MBOX_CMD_DIRECT	0
+#define MBOX_CMD_INDIRECT	1
+
+#define MBOX_MAX_CMD_INDEX	2047
+#define MBOX_CMD_BUFFER_SIZE	32
+#define MBOX_RESP_BUFFER_SIZE	16
+
+#define MBOX_HDR_CMD_LSB	0
+#define MBOX_HDR_CMD_MSK	(BIT(11) - 1)
+#define MBOX_HDR_I_LSB		11
+#define MBOX_HDR_I_MSK		BIT(11)
+#define MBOX_HDR_LEN_LSB	12
+#define MBOX_HDR_LEN_MSK	0x007FF000
+#define MBOX_HDR_ID_LSB		24
+#define MBOX_HDR_ID_MSK		0x0F000000
+#define MBOX_HDR_CLIENT_LSB	28
+#define MBOX_HDR_CLIENT_MSK	0xF0000000
+
+/* Interrupt flags */
+#define MBOX_FLAGS_INT_COE	BIT(0)	/* COUT update interrupt enable */
+#define MBOX_FLAGS_INT_RIE	BIT(1)	/* RIN update interrupt enable */
+#define MBOX_FLAGS_INT_UAE	BIT(8)	/* Urgent ACK interrupt enable */
+#define MBOX_ALL_INTRS		(MBOX_FLAGS_INT_COE | \
+				 MBOX_FLAGS_INT_RIE | \
+				 MBOX_FLAGS_INT_UAE)
+
+/* Status */
+#define MBOX_STATUS_UA_MSK	BIT(8)
+
+#define MBOX_CMD_HEADER(client, id, len, indirect, cmd)     \
+	((((cmd) << MBOX_HDR_CMD_LSB) & MBOX_HDR_CMD_MSK) | \
+	(((indirect) << MBOX_HDR_I_LSB) & MBOX_HDR_I_MSK) | \
+	(((len) << MBOX_HDR_LEN_LSB) & MBOX_HDR_LEN_MSK)  | \
+	(((id) << MBOX_HDR_ID_LSB) & MBOX_HDR_ID_MSK)     | \
+	(((client) << MBOX_HDR_CLIENT_LSB) & MBOX_HDR_CLIENT_MSK))
+
+#define MBOX_RESP_ERR_GET(resp)				\
+	(((resp) & MBOX_HDR_CMD_MSK) >> MBOX_HDR_CMD_LSB)
+#define MBOX_RESP_LEN_GET(resp)			\
+	(((resp) & MBOX_HDR_LEN_MSK) >> MBOX_HDR_LEN_LSB)
+#define MBOX_RESP_ID_GET(resp)				\
+	(((resp) & MBOX_HDR_ID_MSK) >> MBOX_HDR_ID_LSB)
+#define MBOX_RESP_CLIENT_GET(resp)			\
+	(((resp) & MBOX_HDR_CLIENT_MSK) >> MBOX_HDR_CLIENT_LSB)
+
+/* Response error list */
+enum ALT_SDM_MBOX_RESP_CODE {
+	/* CMD completed successfully, but check resp ARGS for any errors */
+	MBOX_RESP_STATOK = 0,
+	/* CMD is incorrectly formatted in some way */
+	MBOX_RESP_INVALID_COMMAND = 1,
+	/* BootROM Command code not undesrtood */
+	MBOX_RESP_UNKNOWN_BR = 2,
+	/* CMD code not recognized by firmware */
+	MBOX_RESP_UNKNOWN = 3,
+	/* Length setting is not a valid length for this CMD type */
+	MBOX_RESP_INVALID_LEN = 4,
+	/* Indirect setting is not valid for this CMD type */
+	MBOX_RESP_INVALID_INDIRECT_SETTING = 5,
+	/* HW source which is not allowed to send CMD type */
+	MBOX_RESP_CMD_INVALID_ON_SRC = 6,
+	/* Client with ID not associated with any running PR CMD tries to run
+	 * RECONFIG_DATA RECONFIG_STATUS and accessing QSPI / SDMMC using ID
+	 * without exclusive access
+	 */
+	MBOX_RESP_CLIENT_ID_NO_MATCH = 8,
+	/* Address provided to the system is invalid (alignment, range
+	 * permission)
+	 */
+	MBOX_RESP_INVALID_ADDR = 0x9,
+	/* Signature authentication failed */
+	MBOX_RESP_AUTH_FAIL = 0xA,
+	/* CMD timed out */
+	MBOX_RESP_TIMEOUT = 0xB,
+	/* HW (i.e. QSPI) is not ready (initialized or configured) */
+	MBOX_RESP_HW_NOT_RDY = 0xC,
+	/* Function is not supported in this firmware */
+	MBOX_FUNC_NOT_SUPPORTED = 0xF,
+	/* Invalid license for IID registration */
+	MBOX_RESP_PUF_ACCCES_FAILED = 0x80,
+	MBOX_PUF_ENROLL_DISABLE = 0x81,
+	MBOX_RESP_PUF_ENROLL_FAIL = 0x82,
+	MBOX_RESP_PUF_RAM_TEST_FAIL = 0x83,
+	MBOX_RESP_ATTEST_CERT_GEN_FAIL = 0x84,
+	/* Operation not allowed under current security settings */
+	MBOX_RESP_NOT_ALLOWED_UNDER_SECURITY_SETTINGS = 0x85,
+	MBOX_RESP_PUF_TRNG_FAIL = 0x86,
+	MBOX_RESP_FUSE_ALREADY_BLOWN = 0x87,
+	MBOX_RESP_INVALID_SIGNATURE = 0x88,
+	MBOX_RESP_INVALID_HASH = 0x8b,
+	MBOX_RESP_INVALID_CERTIFICATE = 0x91,
+	/* Indicates that the device (FPGA or HPS) is not configured */
+	MBOX_RESP_NOT_CONFIGURED = 0x100,
+	/* Indicates that the device is busy */
+	MBOX_RESP_DEVICE_BUSY = 0x1FF,
+	/* Indicates that there is no valid response available */
+	MBOX_RESP_NO_VALID_RESP_AVAILABLE = 0x2FF,
+	/* General Error */
+	MBOX_RESP_ERROR = 0x3FF,
+};
+
+/* Mailbox command list */
+#define MBOX_RESTART			2
+#define MBOX_CONFIG_STATUS		4
+#define MBOX_RECONFIG			6
+#define MBOX_RECONFIG_MSEL		7
+#define MBOX_RECONFIG_DATA		8
+#define MBOX_RECONFIG_STATUS		9
+#define MBOX_VAB_SRC_CERT		11
+#define MBOX_GET_USERCODE		19
+#define MBOX_QSPI_OPEN			50
+#define MBOX_QSPI_CLOSE			51
+#define MBOX_QSPI_DIRECT		59
+#define MBOX_REBOOT_HPS			71
+#define MBOX_GET_SUBPARTITION_TABLE	90
+#define MBOX_RSU_STATUS			91
+#define MBOX_RSU_UPDATE			92
+#define MBOX_HPS_STAGE_NOTIFY		93
+#define MBOX_QSPI_GET_DEVICE_INFO	116 /* get QSPI size and erasesize */
+
+/* Mailbox response len */
+#define QSPI_GET_DEVICE_INFO_RESP_LEN	8
+
+/* Mailbox registers */
+#define MBOX_CIN			0	/* command valid offset */
+#define MBOX_ROUT			4	/* response output offset */
+#define MBOX_URG			8	/* urgent command */
+#define MBOX_FLAGS			0x0c	/* interrupt enables */
+#define MBOX_COUT			0x20	/* command free offset */
+#define MBOX_RIN			0x24	/* respond valid offset */
+#define MBOX_STATUS			0x2c	/* mailbox status */
+#define MBOX_CMD_BUF			0x40	/* circular command buffer */
+#define MBOX_RESP_BUF			0xc0	/* circular response buffer */
+#define MBOX_DOORBELL_TO_SDM		0x400	/* Doorbell to SDM */
+#define MBOX_DOORBELL_FROM_SDM		0x480	/* Doorbell from SDM */
+
+/* Status and bit information returned by RECONFIG_STATUS */
+#define RECONFIG_STATUS_RESPONSE_LEN			6
+#define RECONFIG_STATUS_STATE				0
+#define RECONFIG_STATUS_PIN_STATUS			2
+#define RECONFIG_STATUS_SOFTFUNC_STATUS			3
+
+/* Macros for specifying number of arguments in mailbox command */
+#define MBOX_NUM_ARGS(n, b)				(((n) & 0xFF) << (b))
+#define MBOX_DIRECT_COUNT(n)				MBOX_NUM_ARGS((n), 0)
+#define MBOX_ARG_DESC_COUNT(n)				MBOX_NUM_ARGS((n), 8)
+#define MBOX_RESP_DESC_COUNT(n)				MBOX_NUM_ARGS((n), 16)
+
+#define MBOX_CFGSTAT_STATE_IDLE				0x00000000
+#define MBOX_CFGSTAT_STATE_CONFIG			0x10000000
+#define MBOX_CFGSTAT_STATE_FAILACK			0x08000000
+#define MBOX_CFGSTAT_STATE_ERROR_INVALID		0xf0000001
+#define MBOX_CFGSTAT_STATE_ERROR_CORRUPT		0xf0000002
+#define MBOX_CFGSTAT_STATE_ERROR_AUTH			0xf0000003
+#define MBOX_CFGSTAT_STATE_ERROR_CORE_IO		0xf0000004
+#define MBOX_CFGSTAT_STATE_ERROR_HARDWARE		0xf0000005
+#define MBOX_CFGSTAT_STATE_ERROR_FAKE			0xf0000006
+#define MBOX_CFGSTAT_STATE_ERROR_BOOT_INFO		0xf0000007
+#define MBOX_CFGSTAT_STATE_ERROR_QSPI_ERROR		0xf0000008
+
+#define RCF_SOFTFUNC_STATUS_CONF_DONE			BIT(0)
+#define RCF_SOFTFUNC_STATUS_INIT_DONE			BIT(1)
+#define RCF_SOFTFUNC_STATUS_SEU_ERROR			BIT(3)
+#define RCF_PIN_STATUS_NSTATUS				BIT(31)
+
+/* Defines for HPS_STAGE_NOTIFY */
+#define HPS_EXECUTION_STATE_FSBL	0
+#define HPS_EXECUTION_STATE_SSBL	1
+#define HPS_EXECUTION_STATE_OS		2
+
+int socfpga_mailbox_s10_init(void);
+
+int socfpga_mailbox_s10_qspi_close(void);
+int socfpga_mailbox_s10_qspi_open(void);
+int socfpga_mailbox_s10_qspi_get_device_info(u32 *resp_buf, u32 resp_buf_len);
+
+#endif /* _MAILBOX_S10_H_ */
diff --git a/include/mach/socfpga/secure_reg_helper.h b/include/mach/socfpga/secure_reg_helper.h
new file mode 100644
index 0000000000000000000000000000000000000000..d5a11122c723b22b6d1b93833e494909f758f3b5
--- /dev/null
+++ b/include/mach/socfpga/secure_reg_helper.h
@@ -0,0 +1,19 @@
+/* SPDX-License-Identifier: GPL-2.0
+ *
+ * Copyright (C) 2020 Intel Corporation <www.intel.com>
+ *
+ */
+
+#ifndef	_SECURE_REG_HELPER_H_
+#define	_SECURE_REG_HELPER_H_
+
+#define SOCFPGA_SECURE_REG_SYSMGR_SOC64_SDMMC 1
+#define SOCFPGA_SECURE_REG_SYSMGR_SOC64_EMAC0 2
+#define SOCFPGA_SECURE_REG_SYSMGR_SOC64_EMAC1 3
+#define SOCFPGA_SECURE_REG_SYSMGR_SOC64_EMAC2 4
+
+int socfpga_secure_reg_read32(u32 id, u32 *val);
+int socfpga_secure_reg_write32(u32 id, u32 val);
+int socfpga_secure_reg_update32(u32 id, u32 mask, u32 val);
+
+#endif /* _SECURE_REG_HELPER_H_ */
diff --git a/include/mach/socfpga/smc_api.h b/include/mach/socfpga/smc_api.h
new file mode 100644
index 0000000000000000000000000000000000000000..491bcaeb019aac986013bb98c59b6109dda719f0
--- /dev/null
+++ b/include/mach/socfpga/smc_api.h
@@ -0,0 +1,12 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
+/*
+ * Copyright (C) 2020 Intel Corporation
+ */
+
+#ifndef _SMC_API_H_
+#define _SMC_API_H_
+
+int invoke_smc(u32 func_id, u64 arg0, u64 arg1, u64 arg2, u32 *ret_payload);
+int smc_get_usercode(u32 *usercode);
+
+#endif /* _SMC_API_H_ */
diff --git a/include/mach/socfpga/soc64-firewall.h b/include/mach/socfpga/soc64-firewall.h
new file mode 100644
index 0000000000000000000000000000000000000000..659b84ca1f3f20ede52ed9b0bc0b03d9611e4d26
--- /dev/null
+++ b/include/mach/socfpga/soc64-firewall.h
@@ -0,0 +1,177 @@
+/* SPDX-License-Identifier: GPL-2.0
+ *
+ * Copyright (C) 2017-2023 Intel Corporation <www.intel.com>
+ *
+ */
+
+#ifndef	_FIREWALL_H_
+#define	_FIREWALL_H_
+
+#include <linux/bitops.h>
+
+struct socfpga_firwall_l4_per {
+	u32	nand;		/* 0x00 */
+	u32	nand_data;
+	u32	_pad_0x8;
+	u32	usb0;
+	u32	usb1;		/* 0x10 */
+	u32	_pad_0x14;
+	u32	_pad_0x18;
+	u32	spim0;
+	u32	spim1;		/* 0x20 */
+	u32	spis0;
+	u32	spis1;
+	u32	emac0;
+	u32	emac1;		/* 0x30 */
+	u32	emac2;
+	u32	_pad_0x38;
+	u32	_pad_0x3c;
+	u32	sdmmc;		/* 0x40 */
+	u32	gpio0;
+	u32	gpio1;
+	u32	_pad_0x4c;
+	u32	i2c0;		/* 0x50 */
+	u32	i2c1;
+	u32	i2c2;
+	u32	i2c3;
+	u32	i2c4;		/* 0x60 */
+	u32	timer0;
+	u32	timer1;
+	u32	uart0;
+	u32	uart1;		/* 0x70 */
+};
+
+struct socfpga_firwall_l4_sys {
+	u32	_pad_0x00;		/* 0x00 */
+	u32	_pad_0x04;
+	u32	dma_ecc;
+	u32	emac0rx_ecc;
+	u32	emac0tx_ecc;		/* 0x10 */
+	u32	emac1rx_ecc;
+	u32	emac1tx_ecc;
+	u32	emac2rx_ecc;
+	u32	emac2tx_ecc;		/* 0x20 */
+	u32	_pad_0x24;
+	u32	_pad_0x28;
+	u32	nand_ecc;
+	u32	nand_read_ecc;		/* 0x30 */
+	u32	nand_write_ecc;
+	u32	ocram_ecc;
+	u32	_pad_0x3c;
+	u32	sdmmc_ecc;		/* 0x40 */
+	u32	usb0_ecc;
+	u32	usb1_ecc;
+	u32	clock_manager;
+	u32	_pad_0x50;		/* 0x50 */
+	u32	io_manager;
+	u32	reset_manager;
+	u32	system_manager;
+	u32	osc0_timer;		/* 0x60 */
+	u32	osc1_timer;
+	u32	watchdog0;
+	u32	watchdog1;
+	u32	watchdog2;		/* 0x70 */
+	u32	watchdog3;
+};
+
+#define FIREWALL_L4_DISABLE_ALL		(BIT(0) | BIT(24) | BIT(16))
+#define FIREWALL_MPFE_SCR_DISABLE_ALL	(BIT(0) | BIT(8) | BIT(16))
+#define FIREWALL_MPFE_SCR_DISABLE_MPU	BIT(0)
+#define FIREWALL_BRIDGE_DISABLE_ALL	(~0)
+
+/* Cache coherency unit (CCU) registers */
+#define CCU_CPU0_MPRT_ADBASE_DDRREG		0x4400
+#define CCU_CPU0_MPRT_ADBASE_MEMSPACE0		0x45c0
+#define CCU_CPU0_MPRT_ADBASE_MEMSPACE1A		0x45e0
+#define CCU_CPU0_MPRT_ADBASE_MEMSPACE1B		0x4600
+#define CCU_CPU0_MPRT_ADBASE_MEMSPACE1C		0x4620
+#define CCU_CPU0_MPRT_ADBASE_MEMSPACE1D		0x4640
+#define CCU_CPU0_MPRT_ADBASE_MEMSPACE1E		0x4660
+
+#define CCU_CPU0_MPRT_ADMASK_MEM_RAM0		0x4688
+
+#define CCU_IOM_MPRT_ADBASE_MEMSPACE0		0x18560
+#define CCU_IOM_MPRT_ADBASE_MEMSPACE1A		0x18580
+#define CCU_IOM_MPRT_ADBASE_MEMSPACE1B		0x185a0
+#define CCU_IOM_MPRT_ADBASE_MEMSPACE1C		0x185c0
+#define CCU_IOM_MPRT_ADBASE_MEMSPACE1D		0x185e0
+#define CCU_IOM_MPRT_ADBASE_MEMSPACE1E		0x18600
+
+#define CCU_IOM_MPRT_ADMASK_MEM_RAM0		0x18628
+
+#define CCU_TCU_MPRT_ADBASE_MEMSPACE0		0x2c520
+#define CCU_TCU_MPRT_ADBASE_MEMSPACE1A		0x2c540
+#define CCU_TCU_MPRT_ADBASE_MEMSPACE1B		0x2c560
+#define CCU_TCU_MPRT_ADBASE_MEMSPACE1C		0x2c580
+#define CCU_TCU_MPRT_ADBASE_MEMSPACE1D		0x2c5a0
+#define CCU_TCU_MPRT_ADBASE_MEMSPACE1E		0x2c5c0
+
+#define CCU_FPGA_MPRT_ADBASE_MEMSPACE0		0x105a0
+#define CCU_FPGA_MPRT_ADBASE_MEMSPACE1A		0x105c0
+#define CCU_FPGA_MPRT_ADBASE_MEMSPACE1B		0x105e0
+#define CCU_FPGA_MPRT_ADBASE_MEMSPACE1C		0x10600
+#define CCU_FPGA_MPRT_ADBASE_MEMSPACE1D		0x10620
+#define CCU_FPGA_MPRT_ADBASE_MEMSPACE1E		0x10640
+
+
+#define CCU_ADMASK_P_MASK			BIT(0)
+#define CCU_ADMASK_NS_MASK			BIT(1)
+
+#define CCU_ADBASE_DI_MASK			BIT(4)
+
+#define CCU_REG_ADDR(reg)			\
+	(SOCFPGA_CCU_ADDRESS + (reg))
+
+/* Firewall MPU DDR SCR registers */
+#define FW_MPU_DDR_SCR_EN				0x00
+#define FW_MPU_DDR_SCR_EN_SET				0x04
+#define FW_MPU_DDR_SCR_MPUREGION0ADDR_BASE		0x10
+#define FW_MPU_DDR_SCR_MPUREGION0ADDR_BASEEXT		0x14
+#define FW_MPU_DDR_SCR_MPUREGION0ADDR_LIMIT		0x18
+#define FW_MPU_DDR_SCR_MPUREGION0ADDR_LIMITEXT		0x1c
+
+#define FW_MPU_DDR_SCR_NONMPUREGION0ADDR_BASE		0x90
+#define FW_MPU_DDR_SCR_NONMPUREGION0ADDR_BASEEXT	0x94
+#define FW_MPU_DDR_SCR_NONMPUREGION0ADDR_LIMIT		0x98
+#define FW_MPU_DDR_SCR_NONMPUREGION0ADDR_LIMITEXT	0x9c
+#define FW_MPU_DDR_SCR_NONMPUREGION0ADDR_LIMITEXT_FIELD	0xff
+
+/* Firewall F2SDRAM DDR SCR registers */
+#define FW_F2SDRAM_DDR_SCR_EN				0x00
+#define FW_F2SDRAM_DDR_SCR_EN_SET			0x04
+#define FW_F2SDRAM_DDR_SCR_REGION0ADDR_BASE		0x10
+#define FW_F2SDRAM_DDR_SCR_REGION0ADDR_BASEEXT		0x14
+#define FW_F2SDRAM_DDR_SCR_REGION0ADDR_LIMIT		0x18
+#define FW_F2SDRAM_DDR_SCR_REGION0ADDR_LIMITEXT		0x1c
+
+/* Firewall MPFE SCR Registers */
+#define FW_MPFE_SCR_HMC					0x00
+#define FW_MPFE_SCR_HMC_ADAPTOR				0x04
+
+#define MPUREGION0_ENABLE				BIT(0)
+#define NONMPUREGION0_ENABLE				BIT(8)
+
+#define FW_MPU_DDR_SCR_WRITEL(data, reg)		\
+	writel(data, SOCFPGA_FW_DDR_CCU_DMI0_ADDRESS + (reg)); \
+	writel(data, SOCFPGA_FW_DDR_CCU_DMI1_ADDRESS + (reg))
+#define FW_F2SDRAM_DDR_SCR_WRITEL(data, reg)		\
+	writel(data, SOCFPGA_FW_TBU2NOC_ADDRESS + (reg))
+
+#define FW_MPU_DDR_DMI0_SCR_READL(reg)		readl(SOCFPGA_FW_DDR_CCU_DMI0_ADDRESS + (reg));
+#define FW_MPU_DDR_DMI1_SCR_READL(reg)		readl(SOCFPGA_FW_DDR_CCU_DMI1_ADDRESS + (reg));
+#define FW_F2SDRAM_DDR_SCR_READL(reg)		readl(SOCFPGA_FW_TBU2NOC_ADDRESS + (reg))
+
+/* Secure Transaction Register */
+#define SECURE_TRANS_OFFS		0x190
+#define SECURE_TRANS_REG		SOCFPGA_SYSMGR_ADDRESS +\
+					SECURE_TRANS_OFFS
+#define SECURE_TRANS_RESET		0x0
+#define SECURE_TRANS_SET		0x33
+#define OCRAM_SECURE_REGION1_OFFS	0x18
+#define OCRAM_SECURE_REGION1_REG	SOCFPGA_OCRAM_FIREWALL_ADDRESS +\
+					OCRAM_SECURE_REGION1_OFFS
+#define NON_SECURE_ACCESS		0x0
+
+void firewall_setup(void);
+
+#endif /* _FIREWALL_H_ */
diff --git a/include/mach/socfpga/soc64-handoff.h b/include/mach/socfpga/soc64-handoff.h
new file mode 100644
index 0000000000000000000000000000000000000000..5e079b34b84fd874f70cdb664de3c90f7464d111
--- /dev/null
+++ b/include/mach/socfpga/soc64-handoff.h
@@ -0,0 +1,50 @@
+/* SPDX-License-Identifier: GPL-2.0
+ *
+ * Copyright (C) 2016-2024 Intel Corporation <www.intel.com>
+ *
+ */
+
+#ifndef _HANDOFF_SOC64_H_
+#define _HANDOFF_SOC64_H_
+
+/*
+ * Offset for HW handoff from Quartus tools
+ */
+/* HPS handoff */
+#define SOC64_HANDOFF_MAGIC_BOOT	0x424F4F54
+#define SOC64_HANDOFF_MAGIC_MUX		0x504D5558
+#define SOC64_HANDOFF_MAGIC_IOCTL	0x494F4354
+#define SOC64_HANDOFF_MAGIC_FPGA	0x46504741
+#define SOC64_HANDOFF_MAGIC_DELAY	0x444C4159
+#define SOC64_HANDOFF_MAGIC_CLOCK	0x434C4B53
+#define SOC64_HANDOFF_MAGIC_PERI	0x50455249
+#define SOC64_HANDOFF_MAGIC_SDRAM	0x5344524d
+
+#define SOC64_HANDOFF_OFFSET_LENGTH	0x4
+#define SOC64_HANDOFF_OFFSET_DATA	0x10
+#define SOC64_HANDOFF_SIZE		4096
+
+#define SOC64_HANDOFF_BASE		0x0007F000
+
+#define SOC64_HANDOFF_MUX		(SOC64_HANDOFF_BASE + 0x10)
+#define SOC64_HANDOFF_IOCTL		(SOC64_HANDOFF_BASE + 0x1A0)
+#define SOC64_HANDOFF_FPGA		(SOC64_HANDOFF_BASE + 0x330)
+#define SOC64_HANDOFF_DELAY		(SOC64_HANDOFF_BASE + 0x3F0)
+#define SOC64_HANDOFF_CLOCK		(SOC64_HANDOFF_BASE + 0x580)
+#define SOC64_HANDOFF_PERI		(SOC64_HANDOFF_BASE + 0x620)
+#define SOC64_HANDOFF_SDRAM		(SOC64_HANDOFF_BASE + 0x634)
+#define SOC64_HANDOFF_SDRAM_LEN		5
+
+#define SOC64_HANDOFF_CLOCK_OSC		(SOC64_HANDOFF_BASE + 0x60c)
+#define SOC64_HANDOFF_CLOCK_FPGA	(SOC64_HANDOFF_BASE + 0x610)
+
+#define SOC64_HANDOFF_MUX_LEN		96
+#define SOC64_HANDOFF_IOCTL_LEN		96
+#define SOC64_HANDOFF_FPGA_LEN		40
+#define SOC64_HANDOFF_DELAY_LEN		96
+
+int socfpga_get_handoff_size(void *handoff_address);
+int socfpga_handoff_read(void *handoff_address, void *table, u32 table_len);
+const struct cm_config * const cm_get_default_config(void);
+
+#endif /* _HANDOFF_SOC64_H_ */
diff --git a/include/mach/socfpga/soc64-regs.h b/include/mach/socfpga/soc64-regs.h
new file mode 100644
index 0000000000000000000000000000000000000000..fd8cfa17ba1bf0c62a02c9db39dc09347131dd61
--- /dev/null
+++ b/include/mach/socfpga/soc64-regs.h
@@ -0,0 +1,195 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (C) 2016-2023 Intel Corporation <www.intel.com>
+ */
+
+#ifndef _SOCFPGA_SOC64_BASE_HARDWARE_H_
+#define _SOCFPGA_SOC64_BASE_HARDWARE_H_
+
+#if IS_ENABLED(CONFIG_ARCH_SOCFPGA_AGILEX5)
+#define SOCFPGA_CCU_ADDRESS			0x1c000000
+#define SOCFPGA_CCU_DII2_GIC_BAR_REG		0x420
+#define SOCFPGA_CCU_DII2_GIC_LR_REG		0x424
+#define SOCFPGA_CCU_DII2_GIC_HR_REG		0x428
+
+#define SOCFPGA_FPGA2SOC_ADDRESS		0x1c001000
+#define SOCFPGA_FPGA2SOC_PSS_BAR_REG		0x400
+#define SOCFPGA_FPGA2SOC_PSS_LR_REG		0x404
+#define SOCFPGA_FPGA2SOC_PSS_HR_REG		0x408
+
+#define SOCFPGA_GIC_M_ADDRESS			0x1c002000
+#define SOCFPGA_TCU_ADDRESS			0x1c003000
+#define SOCFPGA_CCU_IOM_ADDRESS			0x1c004000
+#define SOCFPGA_DCE0_ADDRESS			0x1c005000
+#define SOCFPGA_DCE1_ADDRESS			0x1c006000
+
+#define SOCFPGA_SECREG_NCAIU1AMIGR_REG			0x3c0
+#define SOCFPGA_SECREG_NCAIU1MIFSR_REG			0x3c4
+#define SOCFPGA_SECREG_DII1_MPFE_BAR_REG		0x410
+#define SOCFPGA_SECREG_DII1_MPFE_LR_REG			0x414
+#define SOCFPGA_SECREG_DII1_MPFE_HR_REG			0x418
+#define SOCFPGA_SECREG_NCAIU0_LWSOC2FPGA_BAR_REG	0x440
+#define SOCFPGA_SECREG_NCAIU0_LWSOC2FPGA_LR_REG		0x444
+#define SOCFPGA_SECREG_NCAIU0_LWSOC2FPGA_HR_REG		0x448
+#define SOCFPGA_SECREG_NCAIU0_SOC2FPGA_1G_BAR_REG	0x450
+#define SOCFPGA_SECREG_NCAIU0_SOC2FPGA_1G_LR_REG	0x454
+#define SOCFPGA_SECREG_NCAIU0_SOC2FPGA_1G_HR_REG	0x458
+#define SOCFPGA_SECREG_DMI_SDRAM_2G_BAR_REG		0x460
+#define SOCFPGA_SECREG_DMI_SDRAM_2G_LR_REG		0x464
+#define SOCFPGA_SECREG_DMI_SDRAM_2G_HR_REG		0x468
+#define SOCFPGA_SECREG_NCAIU0_SOC2FPGA_16G_BAR_REG	0x470
+#define SOCFPGA_SECREG_NCAIU0_SOC2FPGA_16G_LR_REG	0x474
+#define SOCFPGA_SECREG_NCAIU0_SOC2FPGA_16G_HR_REG	0x478
+#define SOCFPGA_SECREG_DMI_SDRAM_30G_BAR_REG		0x480
+#define SOCFPGA_SECREG_DMI_SDRAM_30G_LR_REG		0x484
+#define SOCFPGA_SECREG_DMI_SDRAM_30G_HR_REG		0x488
+#define SOCFPGA_SECREG_NCAIU0_SOC2FPGA_256G_BAR_REG	0x490
+#define SOCFPGA_SECREG_NCAIU0_SOC2FPGA_256G_LR_REG	0x494
+#define SOCFPGA_SECREG_NCAIU0_SOC2FPGA_256G_HR_REG	0x498
+#define SOCFPGA_SECREG_DMI_SDRAM_480G_BAR_REG		0x4a0
+#define SOCFPGA_SECREG_DMI_SDRAM_480G_LR_REG		0x4a4
+#define SOCFPGA_SECREG_DMI_SDRAM_480G_HR_REG		0x4a8
+
+#define SOCFPGA_DMI0_ADDRESS			0x1c007000
+#define SOCFPGA_DMI0_DMIUSMCTCR_REG		0x300
+
+#define SOCFPGA_DMI1_ADDRESS			0x1c008000
+#define SOCFPGA_DMI1_DMIUSMCTCR_REG		0x300
+
+#define SOCFPGA_F2SDRAM_MGR_ADDRESS		0x18001000
+#define SOCFPGA_SMMU_ADDRESS			0x16000000
+#define SOCFPGA_OCRAM_FIREWALL_ADDRESS		0x108cc400
+#define SOCFPGA_MAILBOX_ADDRESS			0x10a30000
+#define SOCFPGA_UART0_ADDRESS			0x10c02000
+#define SOCFPGA_UART1_ADDRESS			0x10c02100
+#define SOCFPGA_SPTIMER0_ADDRESS		0x10c03000
+#define SOCFPGA_SPTIMER1_ADDRESS		0x10c03100
+#define SOCFPGA_SYSTIMER0_ADDRESS		0x10d00000
+#define SOCFPGA_SYSTIMER1_ADDRESS		0x10d00100
+#define SOCFPGA_L4WD0_ADDRESS			0x10d00200
+#define SOCFPGA_L4WD1_ADDRESS			0x10d00300
+#define SOCFPGA_L4WD2_ADDRESS			0x10d00400
+#define SOCFPGA_L4WD3_ADDRESS			0x10d00500
+#define SOCFPGA_L4WD4_ADDRESS			0x10d00600
+#define SOCFPGA_GTIMER_SEC_ADDRESS		0x10d01000
+#define SOCFPGA_GTIMER_NSEC_ADDRESS		0x10d02000
+#define SOCFPGA_CLKMGR_ADDRESS			0x10d10000
+#define SOCFPGA_RSTMGR_ADDRESS			0x10d11000
+#define SOCFPGA_SYSMGR_ADDRESS			0x10d12000
+#define SOCFPGA_PINMUX_ADDRESS			0x10d13000
+#define SOCFPGA_OCRAM_ADDRESS			0x00000000
+#define SOCFPGA_MPFE_CSR_ADDRESS		0x18000000
+#define SOCFPGA_FW_DDR_CCU_DMI0_ADDRESS		0x18000800
+#define SOCFPGA_FW_DDR_CCU_DMI1_ADDRESS		0x18000A00
+#define SOCFPGA_FW_TBU2NOC_ADDRESS		0x18000C00
+#define SOCFPGA_FIREWALL_L4_PER_ADDRESS		0x10d21000
+#define SOCFPGA_FIREWALL_L4_PER_NAND_REG	0x0
+#define SOCFPGA_FIREWALL_L4_PER_USB0_REG	0xc
+#define SOCFPGA_FIREWALL_L4_PER_USB1_REG	0x10
+#define SOCFPGA_FIREWALL_L4_PER_SPI_MAIN0_REG	0x1c
+#define SOCFPGA_FIREWALL_L4_PER_SPI_MAIN1_REG	0x20
+#define SOCFPGA_FIREWALL_L4_PER_SPI_SEC0_REG	0x24
+#define SOCFPGA_FIREWALL_L4_PER_SPI_SEC1_REG	0x28
+#define SOCFPGA_FIREWALL_L4_PER_EMAC0_REG	0x2c
+#define SOCFPGA_FIREWALL_L4_PER_EMAC1_REG	0x30
+#define SOCFPGA_FIREWALL_L4_PER_EMAC2_REG	0x34
+#define SOCFPGA_FIREWALL_L4_PER_SDMMC_REG	0x40
+#define SOCFPGA_FIREWALL_L4_PER_GPIO0_REG	0x44
+#define SOCFPGA_FIREWALL_L4_PER_GPIO1_REG	0x48
+#define SOCFPGA_FIREWALL_L4_PER_I2C0_REG	0x50
+#define SOCFPGA_FIREWALL_L4_PER_I2C1_REG	0x54
+#define SOCFPGA_FIREWALL_L4_PER_I2C2_REG	0x58
+#define SOCFPGA_FIREWALL_L4_PER_I2C3_REG	0x5c
+#define SOCFPGA_FIREWALL_L4_PER_I2C4_REG	0x60
+#define SOCFPGA_FIREWALL_L4_PER_SP_TIMER0_REG	0x64
+#define SOCFPGA_FIREWALL_L4_PER_SP_TIMER1_REG	0x68
+#define SOCFPGA_FIREWALL_L4_PER_UART0_REG	0x6c
+#define SOCFPGA_FIREWALL_L4_PER_UART1_REG	0x70
+#define SOCFPGA_FIREWALL_L4_PER_I3C0_REG	0x74
+#define SOCFPGA_FIREWALL_L4_PER_I3C1_REG	0x78
+#define SOCFPGA_FIREWALL_L4_PER_DMA0_REG	0x7c
+#define SOCFPGA_FIREWALL_L4_PER_DMA1_REG	0x80
+#define SOCFPGA_FIREWALL_L4_PER_COMBO_PHY_REG	0x84
+#define SOCFPGA_FIREWALL_L4_PER_NAND_SDMA_REG	0x88
+
+#define SOCFPGA_FIREWALL_L4_SYS_ADDRESS			0x10d21100
+#define SOCFPGA_FIREWALL_L4_SYS_DMA_ECC_REG		0x08
+#define SOCFPGA_FIREWALL_L4_SYS_EMAC0RX_ECC_REG		0x0c
+#define SOCFPGA_FIREWALL_L4_SYS_EMAC0TX_ECC_REG		0x10
+#define SOCFPGA_FIREWALL_L4_SYS_EMAC1RX_ECC_REG		0x14
+#define SOCFPGA_FIREWALL_L4_SYS_EMAC1TX_ECC_REG		0x18
+#define SOCFPGA_FIREWALL_L4_SYS_EMAC2RX_ECC_REG		0x1c
+#define SOCFPGA_FIREWALL_L4_SYS_EMAC2TX_ECC_REG		0x20
+#define SOCFPGA_FIREWALL_L4_SYS_NAND_ECC_REG		0x2c
+#define SOCFPGA_FIREWALL_L4_SYS_NAND_READ_ECC_REG	0x30
+#define SOCFPGA_FIREWALL_L4_SYS_NAND_WRITE_ECC_REG	0x34
+#define SOCFPGA_FIREWALL_L4_SYS_OCRAM_ECC_REG		0x38
+#define SOCFPGA_FIREWALL_L4_SYS_SDMMC_ECC_REG		0x40
+#define SOCFPGA_FIREWALL_L4_SYS_USB0_ECC_REG		0x44
+#define SOCFPGA_FIREWALL_L4_SYS_USB1_CACHEECC_REG	0x48
+#define SOCFPGA_FIREWALL_L4_SYS_CLOCK_MANAGER_REG	0x4c
+#define SOCFPGA_FIREWALL_L4_SYS_IO_MANAGER_REG		0x54
+#define SOCFPGA_FIREWALL_L4_SYS_RESET_MANAGER_REG	0x58
+#define SOCFPGA_FIREWALL_L4_SYS_SYSTEM_MANAGER_REG	0x5c
+#define SOCFPGA_FIREWALL_L4_SYS_OSC0_TIMER_REG		0x60
+#define SOCFPGA_FIREWALL_L4_SYS_OSC1_TIMER0_REG		0x64
+#define SOCFPGA_FIREWALL_L4_SYS_WATCHDOG0_REG		0x68
+#define SOCFPGA_FIREWALL_L4_SYS_WATCHDOG1_REG		0x6c
+#define SOCFPGA_FIREWALL_L4_SYS_WATCHDOG2_REG		0x70
+#define SOCFPGA_FIREWALL_L4_SYS_WATCHDOG3_REG		0x74
+#define SOCFPGA_FIREWALL_L4_SYS_DAP_REG			0x78
+#define SOCFPGA_FIREWALL_L4_SYS_WATCHDOG4_REG		0x7c
+#define SOCFPGA_FIREWALL_L4_SYS_POWER_MANAGER_REG	0x80
+#define SOCFPGA_FIREWALL_L4_SYS_USB1_RXECC_REG		0x84
+#define SOCFPGA_FIREWALL_L4_SYS_USB1_TXECC_REG		0x88
+#define SOCFPGA_FIREWALL_L4_SYS_L4_NOC_PROBES_REG	0x90
+#define SOCFPGA_FIREWALL_L4_SYS_L4_NOC_QOS_REG		0x94
+
+#define SOCFPGA_FIREWALL_SOC2FPGA_ADDRESS	0x10d21200
+#define SOCFPGA_FIREWALL_LWSOC2FPGA_ADDRESS	0x10d21300
+#define SOCFPGA_FIREWALL_TCU_ADDRESS		0x10d21400
+#define GICD_BASE				0x1d000000
+#define GICR_BASE				0x1d060000
+
+#define SOCFPGA_AGILEX5_DDR_BASE		0x80000000
+
+#else
+#define SOCFPGA_CCU_ADDRESS			0xf7000000
+#define SOCFPGA_SDR_SCHEDULER_ADDRESS		0xf8000400
+#define SOCFPGA_HMC_MMR_IO48_ADDRESS		0xf8010000
+#define SOCFPGA_SDR_ADDRESS			0xf8011000
+#define SOCFPGA_FW_MPFE_SCR_ADDRESS		0xf8020000
+#define SOCFPGA_FW_MPU_DDR_SCR_ADDRESS		0xf8020100
+#define SOCFPGA_F2SDRAM_MGR_ADDRESS		0xf8024000
+#define SOCFPGA_SMMU_ADDRESS			0xfa000000
+#define SOCFPGA_MAILBOX_ADDRESS			0xffa30000
+#define SOCFPGA_UART0_ADDRESS			0xffc02000
+#define SOCFPGA_UART1_ADDRESS			0xffc02100
+#define SOCFPGA_SPTIMER0_ADDRESS		0xffc03000
+#define SOCFPGA_SPTIMER1_ADDRESS		0xffc03100
+#define SOCFPGA_SYSTIMER0_ADDRESS		0xffd00000
+#define SOCFPGA_SYSTIMER1_ADDRESS		0xffd00100
+#define SOCFPGA_L4WD0_ADDRESS			0xffd00200
+#define SOCFPGA_L4WD1_ADDRESS			0xffd00300
+#define SOCFPGA_L4WD2_ADDRESS			0xffd00400
+#define SOCFPGA_L4WD3_ADDRESS			0xffd00500
+#define SOCFPGA_GTIMER_SEC_ADDRESS		0xffd01000
+#define SOCFPGA_GTIMER_NSEC_ADDRESS		0xffd02000
+#define SOCFPGA_CLKMGR_ADDRESS			0xffd10000
+#define SOCFPGA_RSTMGR_ADDRESS			0xffd11000
+#define SOCFPGA_SYSMGR_ADDRESS			0xffd12000
+#define SOCFPGA_PINMUX_DEDICATED_IO_ADDRESS	0xffd13000
+#define SOCFPGA_FIREWALL_L4_PER			0xffd21000
+#define SOCFPGA_FIREWALL_L4_SYS			0xffd21100
+#define SOCFPGA_FIREWALL_SOC2FPGA		0xffd21200
+#define SOCFPGA_FIREWALL_LWSOC2FPGA		0xffd21300
+#define SOCFPGA_FIREWALL_TCU			0xffd21400
+#define SOCFPGA_FIREWALL_PRIV_MEMORYMAP_PRIV	0xffd24800
+#define SOCFPGA_DMANONSECURE_ADDRESS		0xffda0000
+#define SOCFPGA_DMASECURE_ADDRESS		0xffda1000
+#define SOCFPGA_OCRAM_ADDRESS			0xffe00000
+#define GICD_BASE				0xfffc1000
+#define GICC_BASE				0xfffc2000
+#endif
+
+#endif /* _SOCFPGA_SOC64_BASE_HARDWARE_H_ */
diff --git a/include/mach/socfpga/soc64-reset-manager.h b/include/mach/socfpga/soc64-reset-manager.h
new file mode 100644
index 0000000000000000000000000000000000000000..d9822ae9bfd9d02581432dc2aeb2051334c149bb
--- /dev/null
+++ b/include/mach/socfpga/soc64-reset-manager.h
@@ -0,0 +1,40 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ *  Copyright (C) 2016-2022 Intel Corporation <www.intel.com>
+ */
+
+#ifndef _RESET_MANAGER_SOC64_H_
+#define _RESET_MANAGER_SOC64_H_
+
+#define RSTMGR_SOC64_STATUS	0x00
+#define RSTMGR_SOC64_HDSKEN	0x10
+#define RSTMGR_SOC64_HDSKREQ	0x14
+#define RSTMGR_SOC64_HDSKACK	0x18
+#define RSTMGR_SOC64_MPUMODRST	0x20
+#define RSTMGR_SOC64_PER0MODRST	0x24
+#define RSTMGR_SOC64_PER1MODRST	0x28
+#define RSTMGR_SOC64_BRGMODRST	0x2c
+
+#define RSTMGR_MPUMODRST_CORE0		0
+#define RSTMGR_PER0MODRST_OCP_MASK	0x0020bf00
+
+#define RSTMGR_BRGMODRST_SOC2FPGA_MASK		BIT(0)
+#define RSTMGR_BRGMODRST_LWSOC2FPGA_MASK	BIT(1)
+#define RSTMGR_BRGMODRST_FPGA2SOC_MASK		BIT(2)
+#define RSTMGR_BRGMODRST_F2SDRAM0_MASK		BIT(3)
+#define RSTMGR_BRGMODRST_F2SDRAM1_MASK		BIT(4)
+#define RSTMGR_BRGMODRST_F2SDRAM2_MASK		BIT(5)
+#define RSTMGR_BRGMODRST_DDRSCH_MASK		BIT(6)
+
+#define RSTMGR_HDSKEN_FPGAHSEN		BIT(2)
+#define RSTMGR_HDSKREQ_FPGAHSREQ	BIT(2)
+
+/* SDM, Watchdogs and MPU warm reset mask */
+#define RSTMGR_STAT_SDMWARMRST		0x2
+#define RSTMGR_STAT_MPU0RST_BITPOS	8
+#define RSTMGR_STAT_L4WD0RST_BITPOS	16
+#define RSTMGR_STAT_L4WD0RST_BIT	0x1F0000
+#define RSTMGR_L4WD_MPU_WARMRESET_MASK	RSTMGR_STAT_SDMWARMRST | \
+		RSTMGR_STAT_L4WD0RST_BIT
+
+#endif /* _RESET_MANAGER_SOC64_H_ */
diff --git a/include/mach/socfpga/soc64-sdram.h b/include/mach/socfpga/soc64-sdram.h
new file mode 100644
index 0000000000000000000000000000000000000000..c84cd7f8253734dfb7066077c3b8401884efb0ed
--- /dev/null
+++ b/include/mach/socfpga/soc64-sdram.h
@@ -0,0 +1,203 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (C) 2017-2023 Intel Corporation <www.intel.com>
+ */
+
+#ifndef	_SDRAM_SOC64_H_
+#define	_SDRAM_SOC64_H_
+
+#include <linux/sizes.h>
+
+struct altera_sdram_plat {
+	void __iomem *mpfe_base_addr;
+	bool dualport;
+	bool dualemif;
+};
+
+/* ECC HMC registers */
+#define DDRIOCTRL			0x8
+#define DDRCALSTAT			0xc
+#define DRAMADDRWIDTH			0xe0
+#define ECCCTRL1			0x100
+#define ECCCTRL2			0x104
+#define ERRINTEN			0x110
+#define ERRINTENS			0x114
+#define INTMODE				0x11c
+#define INTSTAT				0x120
+#define AUTOWB_CORRADDR			0x138
+#define ECC_REG2WRECCDATABUS		0x144
+#define ECC_DIAGON			0x150
+#define ECC_DECSTAT			0x154
+#define HPSINTFCSEL			0x210
+#define RSTHANDSHAKECTRL		0x214
+#define RSTHANDSHAKESTAT		0x218
+
+#define DDR_HMC_DDRIOCTRL_IOSIZE_MSK		0x00000003
+#define DDR_HMC_DDRIOCTRL_MPFE_HMCA_DATA_RATE_MSK BIT(2)
+#define DDR_HMC_DDRIOCTRL_MPFE_HMCA_DATA_RATE_SHIFT 2
+#define DDR_HMC_DDRCALSTAT_CAL_MSK		BIT(0)
+#define DDR_HMC_ECCCTL_AWB_CNT_RST_SET_MSK	BIT(16)
+#define DDR_HMC_ECCCTL_CNT_RST_SET_MSK		BIT(8)
+#define DDR_HMC_ECCCTL_ECC_EN_SET_MSK		BIT(0)
+#define DDR_HMC_ECCCTL2_RMW_EN_SET_MSK		BIT(8)
+#define DDR_HMC_ECCCTL2_AWB_EN_SET_MSK		BIT(0)
+#define DDR_HMC_ECC_DIAGON_ECCDIAGON_EN_SET_MSK	BIT(16)
+#define DDR_HMC_ECC_DIAGON_WRDIAGON_EN_SET_MSK	BIT(0)
+#define DDR_HMC_ERRINTEN_SERRINTEN_EN_SET_MSK	BIT(0)
+#define DDR_HMC_ERRINTEN_DERRINTEN_EN_SET_MSK	BIT(1)
+#define DDR_HMC_INTSTAT_SERRPENA_SET_MSK	BIT(0)
+#define DDR_HMC_INTSTAT_DERRPENA_SET_MSK	BIT(1)
+#define DDR_HMC_INTSTAT_ADDRMTCFLG_SET_MSK	BIT(16)
+#define DDR_HMC_INTMODE_INTMODE_SET_MSK		BIT(0)
+#define DDR_HMC_RSTHANDSHAKE_MASK		0x0000000f
+#define DDR_HMC_CORE2SEQ_INT_REQ		0xF
+#define DDR_HMC_SEQ2CORE_INT_RESP_MASK		BIT(3)
+#define DDR_HMC_HPSINTFCSEL_ENABLE_MASK		0x001f1f1f
+
+#define	DDR_HMC_ERRINTEN_INTMASK				\
+		(DDR_HMC_ERRINTEN_SERRINTEN_EN_SET_MSK |	\
+		 DDR_HMC_ERRINTEN_DERRINTEN_EN_SET_MSK)
+
+/* HMC MMR IO48 registers */
+#define CTRLCFG0			0x28
+#define CTRLCFG1			0x2c
+#define CTRLCFG3                        0x34
+#define CTRLCFG5                        0x3c
+#define CTRLCFG6                        0x40
+#define DRAMTIMING0			0x50
+#define CALTIMING0			0x7c
+#define CALTIMING1			0x80
+#define CALTIMING2			0x84
+#define CALTIMING3			0x88
+#define CALTIMING4			0x8c
+#define CALTIMING9			0xa0
+#define DRAMADDRW			0xa8
+#define DRAMSTS				0xec
+#define NIOSRESERVED0			0x110
+#define NIOSRESERVED1			0x114
+#define NIOSRESERVED2			0x118
+
+#define CTRLCFG3_CFG_CTRL_CMD_RATE_QUARTER	BIT(2)
+#define CTRLCFG5_CFG_CTRL_RC_EN_MASK		BIT(8)
+
+#define DRAMADDRW_CFG_COL_ADDR_WIDTH(x)			\
+	((x) & 0x1F)
+#define DRAMADDRW_CFG_ROW_ADDR_WIDTH(x)			\
+	(((x) >> 5) & 0x1F)
+#define DRAMADDRW_CFG_BANK_ADDR_WIDTH(x)		\
+	(((x) >> 10) & 0xF)
+#define DRAMADDRW_CFG_BANK_GRP_ADDR_WIDTH(x)		\
+	(((x) >> 14) & 0x3)
+#define DRAMADDRW_CFG_CS_ADDR_WIDTH(x)			\
+	(((x) >> 16) & 0x7)
+
+#define CTRLCFG0_CFG_MEMTYPE(x)				\
+	((x) & 0xF)
+#define CTRLCFG0_CFG_DIMM_TYPE(x)			\
+	(((x) >> 4) & 0x7)
+#define CTRLCFG0_CFG_AC_POS(x)				\
+	(((x) >> 7) & 0x3)
+#define CTRLCFG0_CFG_CTRL_BURST_LEN(x)			\
+	(((x) >> 9) & 0x1F)
+
+#define CTRLCFG1_CFG_DBC3_BURST_LEN(x)			\
+	((x) & 0x1F)
+#define CTRLCFG1_CFG_ADDR_ORDER(x)			\
+	(((x) >> 5) & 0x3)
+#define CTRLCFG1_CFG_CTRL_EN_ECC(x)			\
+	(((x) >> 7) & 0x1)
+
+#define CTRLCFG6_CFG_CS_CHIP(x)				\
+	((x) & 0xFFFF)
+
+#define DRAMTIMING0_CFG_TCL(x)				\
+	((x) & 0x7F)
+
+#define CALTIMING0_CFG_ACT_TO_RDWR(x)			\
+	((x) & 0x3F)
+#define CALTIMING0_CFG_ACT_TO_PCH(x)			\
+	(((x) >> 6) & 0x3F)
+#define CALTIMING0_CFG_ACT_TO_ACT(x)			\
+	(((x) >> 12) & 0x3F)
+#define CALTIMING0_CFG_ACT_TO_ACT_DB(x)			\
+	(((x) >> 18) & 0x3F)
+
+#define CALTIMING1_CFG_RD_TO_RD(x)			\
+	((x) & 0x3F)
+#define CALTIMING1_CFG_RD_TO_RD_DC(x)			\
+	(((x) >> 6) & 0x3F)
+#define CALTIMING1_CFG_RD_TO_RD_DB(x)			\
+	(((x) >> 12) & 0x3F)
+#define CALTIMING1_CFG_RD_TO_WR(x)			\
+	(((x) >> 18) & 0x3F)
+#define CALTIMING1_CFG_RD_TO_WR_DC(x)			\
+	(((x) >> 24) & 0x3F)
+
+#define CALTIMING2_CFG_RD_TO_WR_DB(x)			\
+	((x) & 0x3F)
+#define CALTIMING2_CFG_RD_TO_WR_PCH(x)			\
+	(((x) >> 6) & 0x3F)
+#define CALTIMING2_CFG_RD_AP_TO_VALID(x)		\
+	(((x) >> 12) & 0x3F)
+#define CALTIMING2_CFG_WR_TO_WR(x)			\
+	(((x) >> 18) & 0x3F)
+#define CALTIMING2_CFG_WR_TO_WR_DC(x)			\
+	(((x) >> 24) & 0x3F)
+
+#define CALTIMING3_CFG_WR_TO_WR_DB(x)			\
+	((x) & 0x3F)
+#define CALTIMING3_CFG_WR_TO_RD(x)			\
+	(((x) >> 6) & 0x3F)
+#define CALTIMING3_CFG_WR_TO_RD_DC(x)			\
+	(((x) >> 12) & 0x3F)
+#define CALTIMING3_CFG_WR_TO_RD_DB(x)			\
+	(((x) >> 18) & 0x3F)
+#define CALTIMING3_CFG_WR_TO_PCH(x)			\
+	(((x) >> 24) & 0x3F)
+
+#define CALTIMING4_CFG_WR_AP_TO_VALID(x)		\
+	((x) & 0x3F)
+#define CALTIMING4_CFG_PCH_TO_VALID(x)			\
+	(((x) >> 6) & 0x3F)
+#define CALTIMING4_CFG_PCH_ALL_TO_VALID(x)		\
+	(((x) >> 12) & 0x3F)
+#define CALTIMING4_CFG_ARF_TO_VALID(x)			\
+	(((x) >> 18) & 0xFF)
+#define CALTIMING4_CFG_PDN_TO_VALID(x)			\
+	(((x) >> 26) & 0x3F)
+
+#define CALTIMING9_CFG_4_ACT_TO_ACT(x)			\
+	((x) & 0xFF)
+
+/* Firewall DDR scheduler MPFE */
+#define FW_HMC_ADAPTOR_REG_ADDR			0xf8020004
+#define FW_HMC_ADAPTOR_MPU_MASK			BIT(0)
+
+u32 hmc_readl(struct altera_sdram_plat *plat, u32 reg);
+u32 hmc_ecc_readl(struct altera_sdram_plat *plat, u32 reg);
+u32 hmc_ecc_writel(struct altera_sdram_plat *plat,
+		   u32 data, u32 reg);
+u32 ddr_sch_writel(struct altera_sdram_plat *plat, u32 data,
+		   u32 reg);
+int emif_clear(struct altera_sdram_plat *plat);
+int emif_reset(struct altera_sdram_plat *plat);
+int poll_hmc_clock_status(void);
+void sdram_clear_mem(phys_addr_t addr, phys_size_t size);
+//void sdram_set_firewall(struct bd_info *bd);
+phys_size_t sdram_calculate_size(struct altera_sdram_plat *plat);
+int agilex5_ddr_init_full(void);
+
+static inline resource_size_t agilex5_mpfe_sdram_size(void)
+{
+	u32 lower;
+	resource_size_t mem = 0;
+
+	lower = FW_MPU_DDR_DMI0_SCR_READL(SOCFPGA_FW_DDR_CCU_DMI0_ADDRESS +
+					  FW_MPU_DDR_SCR_MPUREGION0ADDR_LIMIT);
+
+	mem = lower;
+
+	return mem;
+}
+
+#endif /* _SDRAM_SOC64_H_ */
diff --git a/include/mach/socfpga/soc64-system-manager.h b/include/mach/socfpga/soc64-system-manager.h
new file mode 100644
index 0000000000000000000000000000000000000000..862e974b190245862dc7975cbeb281ba6b263dc7
--- /dev/null
+++ b/include/mach/socfpga/soc64-system-manager.h
@@ -0,0 +1,176 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+* Copyright (C) 2019-2023 Intel Corporation <www.intel.com>
+ */
+
+#ifndef _SOC64_SYSTEM_MANAGER_H_
+#define _SOC64_SYSTEM_MANAGER_H_
+
+#include <linux/bitops.h>
+
+#define SYSMGR_SOC64_SILICONID_1		0x00
+#define SYSMGR_SOC64_SILICONID_2		0x04
+#define SYSMGR_SOC64_WDDBG			0x08
+#define SYSMGR_SOC64_MPU_STATUS			0x10
+#define SYSMGR_SOC64_SDMMC			0x28
+#define SYSMGR_SOC64_SDMMC_L3MASTER		0x2c
+#define SYSMGR_SOC64_COMBOPHY_DFISEL		0xfc
+#define SYSMGR_SOC64_COMBOPHY_DFISEL_SDMMC	0x1
+#define SYSMGR_SOC64_NANDGRP_L3MASTER		0x34
+#define SYSMGR_SOC64_USB0_L3MASTER		0x38
+#define SYSMGR_SOC64_USB1_L3MASTER		0x3c
+#define SYSMGR_SOC64_TSN_GLOBAL			0x40
+#define SYSMGR_SOC64_TSN_0			0x44
+#define SYSMGR_SOC64_TSN_1			0x48
+#define SYSMGR_SOC64_TSN_2			0x4C
+#define SYSMGR_SOC64_TSN_0_ACE			0x50
+#define SYSMGR_SOC64_TSN_1_ACE			0x54
+#define SYSMGR_SOC64_TSN_2_ACE			0x58
+#define SYSMGR_SOC64_FPGAINTF_EN1		0x68
+#define SYSMGR_SOC64_FPGAINTF_EN2		0x6C
+#define SYSMGR_SOC64_FPGAINTF_EN3		0x70
+#define SYSMGR_SOC64_DMAC0_L3_MASTER		0x74
+#define SYSMGR_SOC64_ETR_L3_MASTER		0x78
+#define SYSMGR_SOC64_DMAC1_L3_MASTER		0x7C
+#define SYSMGR_SOC64_SEC_CTRL_SLT		0x80
+#define SYSMGR_SOC64_OSC_TRIM			0x84
+#define SYSMGR_SOC64_DMAC0_CTRL_STATUS_REG	0x88
+#define SYSMGR_SOC64_DMAC1_CTRL_STATUS_REG	0x8C
+#define SYSMGR_SOC64_ECC_INTMASK_VALUE		0x90
+#define SYSMGR_SOC64_ECC_INTMASK_SET		0x94
+#define SYSMGR_SOC64_ECC_INTMASK_CLR		0x98
+#define SYSMGR_SOC64_ECC_INTMASK_SERR		0x9C
+#define SYSMGR_SOC64_ECC_INTMASK_DERR		0xA0
+#define SYSMGR_SOC64_NOC_TIMEOUT		0xC0
+#define SYSMGR_SOC64_NOC_IDLEREQ_SET		0xc4
+#define SYSMGR_SOC64_NOC_IDLEREQ_CLR		0xc8
+#define SYSMGR_SOC64_NOC_IDLEREQ_VAL		0xcc
+#define SYSMGR_SOC64_NOC_IDLEACK		0xd0
+#define SYSMGR_SOC64_NOC_IDLESTATUS		0xD4
+#define SYSMGR_SOC64_FPGA2SOC_CTRL		0xD8
+#define SYSMGR_SOC64_FPGA_CONFIG		0xDC
+#define SYSMGR_SOC64_BOOT_SCRATCH_COLD0		0x200
+#define SYSMGR_SOC64_BOOT_SCRATCH_COLD1		0x204
+#define SYSMGR_SOC64_BOOT_SCRATCH_COLD2		0x208
+#define SYSMGR_SOC64_BOOT_SCRATCH_COLD3		0x20C
+#define SYSMGR_SOC64_BOOT_SCRATCH_COLD4		0x210
+#define SYSMGR_SOC64_BOOT_SCRATCH_COLD5		0x214
+#define SYSMGR_SOC64_BOOT_SCRATCH_COLD6		0x218
+#define SYSMGR_SOC64_BOOT_SCRATCH_COLD7		0x21C
+#define SYSMGR_SOC64_BOOT_SCRATCH_COLD8		0x220
+#define SYSMGR_SOC64_BOOT_SCRATCH_COLD9		0x224
+#define SYSMGR_SOC64_MPFE_CONFIG		0x228
+#define SYSMGR_SOC64_BOOT_SCRATCH_POR0		0x258
+#define SYSMGR_SOC64_BOOT_SCRATCH_POR1		0x25C
+
+#define SYSMGR_SCRATCH_REG_0_QSPI_REFCLK_MASK		GENMASK(31, 0)
+#define ALT_SYSMGR_SCRATCH_REG_3_DDR_RESET_TYPE_MASK	GENMASK(31, 29)
+#define ALT_SYSMGR_SCRATCH_REG_3_DDR_RESET_TYPE_SHIFT	29
+#define ALT_SYSMGR_SCRATCH_REG_3_DDR_DBE_MASK		BIT(1)
+#define ALT_SYSMGR_SCRATCH_REG_3_OCRAM_DBE_MASK		BIT(0)
+#define ALT_SYSMGR_SCRATCH_REG_POR_0_DDR_PROGRESS_MASK	BIT(0)
+#define ALT_SYSMGR_SCRATCH_REG_POR_1_REVA_WORKAROUND_USER_MODE_MASK	BIT(0)
+#define ALT_SYSMGR_SCRATCH_REG_POR_1_REVA_WORKAROUND_MASK	BIT(1)
+
+#define SYSMGR_SOC64_EMAC_GLOBAL	SYSMGR_SOC64_TSN_GLOBAL
+#define SYSMGR_SOC64_EMAC0		SYSMGR_SOC64_TSN_0
+#define SYSMGR_SOC64_EMAC1		SYSMGR_SOC64_TSN_1
+#define SYSMGR_SOC64_EMAC2		SYSMGR_SOC64_TSN_2
+#define SYSMGR_SOC64_EMAC0_ACE		SYSMGR_SOC64_TSN_0_ACE
+#define SYSMGR_SOC64_EMAC1_ACE		SYSMGR_SOC64_TSN_1_ACE
+#define SYSMGR_SOC64_EMAC2_ACE		SYSMGR_SOC64_TSN_2_ACE
+
+#define SYSMGR_SOC64_PINSEL0			0x1000
+#define SYSMGR_SOC64_IOCTRL0			0x1130
+#define SYSMGR_SOC64_EMAC0_USEFPGA		0x1300
+#define SYSMGR_SOC64_EMAC1_USEFPGA		0x1304
+#define SYSMGR_SOC64_EMAC2_USEFPGA		0x1308
+#define SYSMGR_SOC64_I2C0_USEFPGA		0x130c
+#define SYSMGR_SOC64_I2C1_USEFPGA		0x1310
+#define SYSMGR_SOC64_I2C_EMAC0_USEFPGA		0x1314
+#define SYSMGR_SOC64_I2C_EMAC1_USEFPGA		0x1318
+#define SYSMGR_SOC64_I2C_EMAC2_USEFPGA		0x131c
+#define SYSMGR_SOC64_NAND_USEFPGA		0x1320
+#define SYSMGR_SOC64_SPIM0_USEFPGA		0x1328
+#define SYSMGR_SOC64_SPIM1_USEFPGA		0x132c
+#define SYSMGR_SOC64_SPIS0_USEFPGA		0x1330
+#define SYSMGR_SOC64_SPIS1_USEFPGA		0x1334
+#define SYSMGR_SOC64_UART0_USEFPGA		0x1338
+#define SYSMGR_SOC64_UART1_USEFPGA		0x133c
+#define SYSMGR_SOC64_MDIO0_USEFPGA		0x1340
+#define SYSMGR_SOC64_MDIO1_USEFPGA		0x1344
+#define SYSMGR_SOC64_MDIO2_USEFPGA		0x1348
+#define SYSMGR_SOC64_JTAG_USEFPGA		0x1350
+#define SYSMGR_SOC64_SDMMC_USEFPGA		0x1354
+#define SYSMGR_SOC64_HPS_OSC_CLK		0x1358
+#define SYSMGR_SOC64_IODELAY0			0x1400
+#define SYSMGR_SOC64_PERI			0x15D0
+
+/*
+ * Bits for SYSMGR_SOC64_BOOT_SCRATCH_COLD8
+ * Bit[31] reserved for FSBL to check DBE is triggered (set by SDM to "1") ?
+ *
+ * Bit[30] reserved for FSBL to update the DDR init progress
+ * 1 - means in progress, 0 - haven't started / DDR is up running.
+ *
+* Bit[19] store ATF CPU0 ON OFF value.
+*
+ * Bit[18] reserved for SDM to configure ACF
+ * Bit[17:1] - Setting by Linux EDAC.
+ * Bit[1](ECC_OCRAM), Bit[16](ECC_DDR0), Bit[17](ECC_DDR1)
+ */
+#define ALT_SYSMGR_SCRATCH_REG_8_DDR_DBE_MASK		BIT(31)
+#define ALT_SYSMGR_SCRATCH_REG_8_DDR_PROGRESS_MASK	BIT(30)
+#define SYSMGR_SCRATCH_REG_8_ACF_DDR_RATE_MASK		BIT(18)
+#define SYSMGR_SCRATCH_REG_8_ACF_DDR_RATE_SHIFT		18
+
+#define SYSMGR_SDMMC				SYSMGR_SOC64_SDMMC
+
+#define SYSMGR_ROMCODEGRP_CTRL_WARMRSTCFGPINMUX	BIT(0)
+#define SYSMGR_ROMCODEGRP_CTRL_WARMRSTCFGIO	BIT(1)
+#define SYSMGR_ECC_OCRAM_EN			BIT(0)
+#define SYSMGR_ECC_OCRAM_SERR			BIT(3)
+#define SYSMGR_ECC_OCRAM_DERR			BIT(4)
+#define SYSMGR_FPGACONFIG_FPGA_COMPLETE		BIT(0)
+#define SYSMGR_FPGACONFIG_EARLY_USERMODE	BIT(1)
+#define SYSMGR_FPGACONFIG_READY_MASK	(SYSMGR_FPGACONFIG_FPGA_COMPLETE | \
+					 SYSMGR_FPGACONFIG_EARLY_USERMODE)
+
+#define SYSMGR_FPGAINTF_USEFPGA	0x1
+#define SYSMGR_FPGAINTF_NAND	BIT(4)
+#define SYSMGR_FPGAINTF_SDMMC	BIT(8)
+#define SYSMGR_FPGAINTF_SPIM0	BIT(16)
+#define SYSMGR_FPGAINTF_SPIM1	BIT(24)
+#define SYSMGR_FPGAINTF_EMAC0	BIT(0)
+#define SYSMGR_FPGAINTF_EMAC1	BIT(8)
+#define SYSMGR_FPGAINTF_EMAC2	BIT(16)
+
+#define SYSMGR_SDMMC_SMPLSEL_SHIFT	4
+#define SYSMGR_SDMMC_DRVSEL_SHIFT	0
+
+/* EMAC Group Bit definitions */
+#define SYSMGR_EMACGRP_CTRL_PHYSEL_ENUM_GMII_MII	0x0
+#define SYSMGR_EMACGRP_CTRL_PHYSEL_ENUM_RGMII		0x1
+#define SYSMGR_EMACGRP_CTRL_PHYSEL_ENUM_RMII		0x2
+
+#define SYSMGR_EMACGRP_CTRL_PHYSEL0_LSB			0
+#define SYSMGR_EMACGRP_CTRL_PHYSEL1_LSB			2
+#define SYSMGR_EMACGRP_CTRL_PHYSEL_MASK			0x3
+
+#define SYSMGR_NOC_H2F_MSK		0x00000001
+#define SYSMGR_NOC_LWH2F_MSK		0x00000010
+#define SYSMGR_HMC_CLK_STATUS_MSK	0x00000001
+
+#define SYSMGR_DMA_IRQ_NS		0xFF000000
+#define SYSMGR_DMA_MGR_NS		0x00010000
+
+#define SYSMGR_DMAPERIPH_ALL_NS		0xFFFFFFFF
+
+#define SYSMGR_WDDBG_PAUSE_ALL_CPU	0x0F0F0F0F
+
+void agilex5_security_interleaving_on(void);
+void agilex5_security_interleaving_off(void);
+void agilex5_initialize_security_policies(void);
+void agilex5_sysmgr_pinmux_init(void);
+
+#endif /* _SOC64_SYSTEM_MANAGER_H_ */

-- 
2.46.0



