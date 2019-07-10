Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hlAbX-00051p-JG
 for barebox@lists.infradead.org; Wed, 10 Jul 2019 11:17:45 +0000
From: Stefan Riedmueller <s.riedmueller@phytec.de>
Date: Wed, 10 Jul 2019 13:17:31 +0200
Message-Id: <1562757455-445159-4-git-send-email-s.riedmueller@phytec.de>
In-Reply-To: <1562757455-445159-1-git-send-email-s.riedmueller@phytec.de>
References: <1562757455-445159-1-git-send-email-s.riedmueller@phytec.de>
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
Subject: [PATCH v2 4/8] ARM: dts: imx6ul: phycore: Add state framework
To: barebox@lists.infradead.org
Cc: Daniel Schultz <d.schultz@phytec.de>

From: Daniel Schultz <d.schultz@phytec.de>

Add the state framework with EEPROM backend.

Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
---
Changes in v2:
 - Added backend-storage-type
 - Added missing Signed-off-by
---
 arch/arm/dts/imx6ul-phytec-phycore-som.dts  |  5 ++
 arch/arm/dts/imx6ul-phytec-state.dtsi       | 82 +++++++++++++++++++++++++++++
 arch/arm/dts/imx6ull-phytec-phycore-som.dts |  5 ++
 3 files changed, 92 insertions(+)
 create mode 100644 arch/arm/dts/imx6ul-phytec-state.dtsi

diff --git a/arch/arm/dts/imx6ul-phytec-phycore-som.dts b/arch/arm/dts/imx6ul-phytec-phycore-som.dts
index 6d1876702d1b..11418ea7f038 100644
--- a/arch/arm/dts/imx6ul-phytec-phycore-som.dts
+++ b/arch/arm/dts/imx6ul-phytec-phycore-som.dts
@@ -14,6 +14,7 @@
 
 #include <arm/imx6ul.dtsi>
 #include "imx6ul-phytec-phycore-som.dtsi"
+#include "imx6ul-phytec-state.dtsi"
 
 / {
 	model = "Phytec phyCORE-i.MX6 Ultra Lite SOM";
@@ -32,6 +33,10 @@
 	status = "okay";
 };
 
+&state {
+	status = "okay";
+};
+
 &uart1 {
 	status = "okay";
 };
diff --git a/arch/arm/dts/imx6ul-phytec-state.dtsi b/arch/arm/dts/imx6ul-phytec-state.dtsi
new file mode 100644
index 000000000000..78a32ed96b03
--- /dev/null
+++ b/arch/arm/dts/imx6ul-phytec-state.dtsi
@@ -0,0 +1,82 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (C) 2019 PHYTEC Messtechnik GmbH,
+ * Author: Stefan Riedmueller <s.riedmueller@phytec.de>
+ */
+
+/ {
+	aliases {
+		state = &state;
+	};
+
+	state: imx6ul_phytec_boot_state {
+		magic = <0x883b86a6>;
+		compatible = "barebox,state";
+		backend-type = "raw";
+		backend = <&backend_update_eeprom>;
+		backend-storage-type = "direct";
+		backend-stridesize = <54>;
+		status = "disabled";
+
+		#address-cells = <1>;
+		#size-cells = <1>;
+		bootstate {
+			#address-cells = <1>;
+			#size-cells = <1>;
+			last_chosen {
+				reg = <0x0 0x4>;
+				type = "uint32";
+			};
+			system0 {
+				#address-cells = <1>;
+				#size-cells = <1>;
+				remaining_attempts {
+					reg = <0x4 0x4>;
+					type = "uint32";
+					default = <3>;
+				};
+				priority {
+					reg = <0x8 0x4>;
+					type = "uint32";
+					default = <21>;
+				};
+				ok {
+					reg = <0xc 0x4>;
+					type = "uint32";
+					default = <0>;
+				};
+			};
+			system1 {
+				#address-cells = <1>;
+				#size-cells = <1>;
+				remaining_attempts {
+					reg = <0x10 0x4>;
+					type = "uint32";
+					default = <3>;
+				};
+				priority {
+					reg = <0x14 0x4>;
+					type = "uint32";
+					default = <20>;
+				};
+				ok {
+					reg = <0x18 0x4>;
+					type = "uint32";
+					default = <0>;
+				};
+			};
+		};
+	};
+};
+
+&eeprom {
+	partitions {
+		compatible = "fixed-partitions";
+		#size-cells = <1>;
+		#address-cells = <1>;
+		backend_update_eeprom: state@0 {
+			reg = <0x0 0x100>;
+			label = "update-eeprom";
+		};
+	};
+};
diff --git a/arch/arm/dts/imx6ull-phytec-phycore-som.dts b/arch/arm/dts/imx6ull-phytec-phycore-som.dts
index 4d73010131ee..86f43a4632a7 100644
--- a/arch/arm/dts/imx6ull-phytec-phycore-som.dts
+++ b/arch/arm/dts/imx6ull-phytec-phycore-som.dts
@@ -14,6 +14,7 @@
 
 #include <arm/imx6ull.dtsi>
 #include "imx6ul-phytec-phycore-som.dtsi"
+#include "imx6ul-phytec-state.dtsi"
 
 / {
 	model = "Phytec phyCORE-i.MX6 ULL SOM";
@@ -32,6 +33,10 @@
 	status = "okay";
 };
 
+&state {
+	status = "okay";
+};
+
 &uart1 {
 	status = "okay";
 };
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
