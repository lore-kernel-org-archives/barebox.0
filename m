Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hctEg-0000S0-M4
 for barebox@lists.infradead.org; Mon, 17 Jun 2019 15:08:01 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1hctEe-0000iy-UI
 for barebox@lists.infradead.org; Mon, 17 Jun 2019 17:07:52 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1hctEe-0002G6-Ed
 for barebox@lists.infradead.org; Mon, 17 Jun 2019 17:07:52 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 17 Jun 2019 17:07:41 +0200
Message-Id: <20190617150751.3421-3-a.fatoum@pengutronix.de>
In-Reply-To: <20190617150751.3421-1-a.fatoum@pengutronix.de>
References: <20190617150751.3421-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH v1 02/12] ARM: dts: stm32mp: factor out common DK nodes into
 dtsi
To: barebox@lists.infradead.org

The DK2 appears to be just the DK1 with a display, thus factor out the
barebox-specifics into a new stm32mp157a-dk1.dtsi, which we can include
in both device trees after including the upstream device tree.

As the updated device tree introduced new nodes, the now duplicates
(&ethernet0, &uart4, /chosen and /aliases) are dropped from the barebox
device as part of this commit as well.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/dts/stm32mp157a-dk1.dts  | 58 ++-----------------------------
 arch/arm/dts/stm32mp157a-dk1.dtsi | 23 ++++++++++++
 arch/arm/dts/stm32mp157c-dk2.dts  | 10 ++----
 3 files changed, 27 insertions(+), 64 deletions(-)
 create mode 100644 arch/arm/dts/stm32mp157a-dk1.dtsi

diff --git a/arch/arm/dts/stm32mp157a-dk1.dts b/arch/arm/dts/stm32mp157a-dk1.dts
index 62c28d396f00..f2cafae66b9b 100644
--- a/arch/arm/dts/stm32mp157a-dk1.dts
+++ b/arch/arm/dts/stm32mp157a-dk1.dts
@@ -4,59 +4,5 @@
  * Author: Alexandre Torgue <alexandre.torgue@st.com>.
  */
 
-/dts-v1/;
-
-#include <arm/stm32mp157c.dtsi>
-#include <arm/stm32mp157-pinctrl.dtsi>
-#include "stm32mp157c.dtsi"
-
-/ {
-	model = "STMicroelectronics STM32MP157A-DK1 Discovery Board";
-	compatible = "st,stm32mp157a-dk1", "st,stm32mp157";
-
-	aliases {
-		ethernet0 = &ethernet0;
-		serial0 = &uart4;
-	};
-
-	chosen {
-		stdout-path = "serial0:115200n8";
-	};
-
-	sram: sram@10050000 {
-		compatible = "mmio-sram";
-		reg = <0x10050000 0x10000>;
-		#address-cells = <1>;
-		#size-cells = <1>;
-		ranges = <0 0x10050000 0x10000>;
-
-		dma_pool: dma_pool@0 {
-			reg = <0x0 0x10000>;
-			pool;
-		};
-	};
-};
-
-&ethernet0 {
-	status = "okay";
-	pinctrl-0 = <&ethernet0_rgmii_pins_a>;
-	pinctrl-names = "default", "sleep";
-	phy-mode = "rgmii";
-	max-speed = <1000>;
-	phy-handle = <&phy0>;
-
-	mdio0 {
-		#address-cells = <1>;
-		#size-cells = <0>;
-		compatible = "snps,dwmac-mdio";
-		phy0: ethernet-phy@0 {
-			reg = <0>;
-		};
-	};
-};
-
-&uart4 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&uart4_pins_a>;
-	status = "okay";
-};
+#include <arm/stm32mp157a-dk1.dts>
+#include "stm32mp157a-dk1.dtsi"
diff --git a/arch/arm/dts/stm32mp157a-dk1.dtsi b/arch/arm/dts/stm32mp157a-dk1.dtsi
new file mode 100644
index 000000000000..8cc70129b215
--- /dev/null
+++ b/arch/arm/dts/stm32mp157a-dk1.dtsi
@@ -0,0 +1,23 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR BSD-3-Clause)
+/*
+ * Copyright (C) STMicroelectronics 2018 - All Rights Reserved
+ * Author: Alexandre Torgue <alexandre.torgue@st.com>.
+ */
+
+#include "stm32mp157c.dtsi"
+#include <dt-bindings/gpio/gpio.h>
+
+/ {
+	sram: sram@10050000 {
+		compatible = "mmio-sram";
+		reg = <0x10050000 0x10000>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges = <0 0x10050000 0x10000>;
+
+		dma_pool: dma_pool@0 {
+			reg = <0x0 0x10000>;
+			pool;
+		};
+	};
+};
diff --git a/arch/arm/dts/stm32mp157c-dk2.dts b/arch/arm/dts/stm32mp157c-dk2.dts
index 7565cabc3d92..6e73162ea4bd 100644
--- a/arch/arm/dts/stm32mp157c-dk2.dts
+++ b/arch/arm/dts/stm32mp157c-dk2.dts
@@ -4,11 +4,5 @@
  * Author: Alexandre Torgue <alexandre.torgue@st.com>.
  */
 
-/dts-v1/;
-
-#include "stm32mp157a-dk1.dts"
-
-/ {
-	model = "STMicroelectronics STM32MP157C-DK2 Discovery Board";
-	compatible = "st,stm32mp157c-dk2", "st,stm32mp157";
-};
+#include <arm/stm32mp157c-dk2.dts>
+#include "stm32mp157a-dk1.dtsi"
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
