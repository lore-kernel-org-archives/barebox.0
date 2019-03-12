Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h3eWq-0006tQ-El
 for barebox@lists.infradead.org; Tue, 12 Mar 2019 10:21:02 +0000
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Tue, 12 Mar 2019 11:20:55 +0100
Message-Id: <20190312102055.12386-7-m.tretter@pengutronix.de>
In-Reply-To: <20190312102055.12386-1-m.tretter@pengutronix.de>
References: <20190312102055.12386-1-m.tretter@pengutronix.de>
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
Subject: [PATCH 6/6] ARM: zynqmp: switch to firmware clock driver
To: barebox@lists.infradead.org
Cc: Michael Tretter <m.tretter@pengutronix.de>

In the device tree, the clock controller is a subnode of the firmware
node. Devices refer to the clocks by an id that is shared between the
ATF and the driver.

While the bindings for the clock controller are already upstream, the
device in mainline Linux does not use them, yet. Add them in the Barebox
device tree for now.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 arch/arm/dts/zynqmp-clk.dtsi        | 155 ++++++++++++++++++++++++++++
 arch/arm/dts/zynqmp-zcu104-revA.dts |   1 +
 2 files changed, 156 insertions(+)
 create mode 100644 arch/arm/dts/zynqmp-clk.dtsi

diff --git a/arch/arm/dts/zynqmp-clk.dtsi b/arch/arm/dts/zynqmp-clk.dtsi
new file mode 100644
index 0000000000..8d5ec37125
--- /dev/null
+++ b/arch/arm/dts/zynqmp-clk.dtsi
@@ -0,0 +1,155 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Clock specification for Xilinx ZynqMP
+ *
+ * (C) Copyright 2017, Xilinx, Inc.
+ *
+ * Michal Simek <michal.simek@xilinx.com>
+ */
+
+#include <dt-bindings/clock/xlnx,zynqmp-clk.h>
+
+&zynqmp_firmware {
+       zynqmp_clk: clock-controller {
+               #clock-cells = <1>;
+               compatible = "xlnx,zynqmp-clk";
+               clocks = <&pss_ref_clk>, <&video_clk>, <&pss_alt_ref_clk>, <&aux_ref_clk>, <&gt_crx_ref_clk>;
+               clock-names = "pss_ref_clk", "video_clk", "pss_alt_ref_clk", "aux_ref_clk", "gt_crx_ref_clk";
+       };
+};
+
+/ {
+	pss_ref_clk: pss_ref_clk {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <33333333>;
+	};
+
+	video_clk: video_clk {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <27000000>;
+	};
+
+	pss_alt_ref_clk: pss_alt_ref_clk {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <0>;
+	};
+
+	gt_crx_ref_clk: gt_crx_ref_clk {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <108000000>;
+	};
+
+	aux_ref_clk: aux_ref_clk {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <27000000>;
+	};
+};
+
+&can0 {
+	clocks = <&zynqmp_clk CAN0_REF>, <&zynqmp_clk LPD_LSBUS>;
+};
+
+&can1 {
+	clocks = <&zynqmp_clk CAN1_REF>, <&zynqmp_clk LPD_LSBUS>;
+};
+
+&cpu0 {
+	clocks = <&zynqmp_clk ACPU>;
+};
+
+&gem0 {
+	clocks = <&zynqmp_clk LPD_LSBUS>, <&zynqmp_clk LPD_LSBUS>, <&zynqmp_clk GEM0_TX>, <&zynqmp_clk GEM0_REF>, <&zynqmp_clk GEM_TSU>;
+	clock-names = "pclk", "hclk", "tx_clk", "rx_clk", "tsu_clk";
+};
+
+&gem1 {
+	clocks = <&zynqmp_clk LPD_LSBUS>, <&zynqmp_clk LPD_LSBUS>, <&zynqmp_clk GEM1_TX>, <&zynqmp_clk GEM1_REF>, <&zynqmp_clk GEM_TSU>;
+	clock-names = "pclk", "hclk", "tx_clk", "rx_clk", "tsu_clk";
+};
+
+&gem2 {
+	clocks = <&zynqmp_clk LPD_LSBUS>, <&zynqmp_clk LPD_LSBUS>, <&zynqmp_clk GEM2_TX>, <&zynqmp_clk GEM2_REF>, <&zynqmp_clk GEM_TSU>;
+	clock-names = "pclk", "hclk", "tx_clk", "rx_clk", "tsu_clk";
+};
+
+&gem3 {
+	clocks = <&zynqmp_clk LPD_LSBUS>, <&zynqmp_clk LPD_LSBUS>, <&zynqmp_clk GEM3_TX>, <&zynqmp_clk GEM3_REF>, <&zynqmp_clk GEM_TSU>;
+	clock-names = "pclk", "hclk", "tx_clk", "rx_clk", "tsu_clk";
+};
+
+&gpio {
+	clocks = <&zynqmp_clk LPD_LSBUS>;
+};
+
+&i2c0 {
+	clocks = <&zynqmp_clk I2C0_REF>;
+};
+
+&i2c1 {
+	clocks = <&zynqmp_clk I2C1_REF>;
+};
+
+&pcie {
+	clocks = <&zynqmp_clk PCIE_REF>;
+};
+
+&sata {
+	clocks = <&zynqmp_clk SATA_REF>;
+};
+
+&sdhci0 {
+	clocks = <&zynqmp_clk SDIO0_REF>, <&zynqmp_clk LPD_LSBUS>;
+};
+
+&sdhci1 {
+	clocks = <&zynqmp_clk SDIO1_REF>, <&zynqmp_clk LPD_LSBUS>;
+};
+
+&spi0 {
+	clocks = <&zynqmp_clk SPI0_REF>, <&zynqmp_clk LPD_LSBUS>;
+};
+
+&spi1 {
+	clocks = <&zynqmp_clk SPI0_REF>, <&zynqmp_clk LPD_LSBUS>;
+};
+
+&ttc0 {
+	clocks = <&zynqmp_clk LPD_LSBUS>;
+};
+
+&ttc1 {
+	clocks = <&zynqmp_clk LPD_LSBUS>;
+};
+
+&ttc2 {
+	clocks = <&zynqmp_clk LPD_LSBUS>;
+};
+
+&ttc3 {
+	clocks = <&zynqmp_clk LPD_LSBUS>;
+};
+
+&uart0 {
+	clocks = <&zynqmp_clk UART0_REF>, <&zynqmp_clk LPD_LSBUS>;
+};
+
+&uart1 {
+	clocks = <&zynqmp_clk UART1_REF>, <&zynqmp_clk LPD_LSBUS>;
+};
+
+&usb0 {
+	clocks = <&zynqmp_clk USB0_BUS_REF>, <&zynqmp_clk USB3_DUAL_REF>;
+};
+
+&usb1 {
+	clocks = <&zynqmp_clk USB1_BUS_REF>, <&zynqmp_clk USB3_DUAL_REF>;
+};
+
+&watchdog0 {
+	clocks = <&zynqmp_clk WDT>;
+};
diff --git a/arch/arm/dts/zynqmp-zcu104-revA.dts b/arch/arm/dts/zynqmp-zcu104-revA.dts
index 88f5152c9d..c03112d7a0 100644
--- a/arch/arm/dts/zynqmp-zcu104-revA.dts
+++ b/arch/arm/dts/zynqmp-zcu104-revA.dts
@@ -9,3 +9,4 @@
 
 #include <arm64/xilinx/zynqmp-zcu104-revA.dts>
 #include "zynqmp.dtsi"
+#include "zynqmp-clk.dtsi"
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
