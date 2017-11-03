Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.visioncatalog.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.87 #1 (Red Hat Linux))
 id 1eAZWr-0005gl-8t
 for barebox@lists.infradead.org; Fri, 03 Nov 2017 10:48:56 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 24457A008AF
 for <barebox@lists.infradead.org>; Fri,  3 Nov 2017 11:50:26 +0100 (CET)
From: Daniel Schultz <d.schultz@phytec.de>
Date: Fri, 3 Nov 2017 11:48:24 +0100
Message-Id: <1509706109-41478-2-git-send-email-d.schultz@phytec.de>
In-Reply-To: <1509706109-41478-1-git-send-email-d.schultz@phytec.de>
References: <1509706109-41478-1-git-send-email-d.schultz@phytec.de>
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
Subject: [PATCH v3 2/7] ARM: dts: AM335x: Add state framework
To: barebox@lists.infradead.org

This patch adds the state framework with an EEPROM partition and two
nodes for MAC addresses. It will be available for all phycore AM335x
images with EEPROMs.

Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
---
 arch/arm/dts/am335x-phytec-phycore-som-emmc.dts    |  1 +
 .../dts/am335x-phytec-phycore-som-nand-no-spi.dts  |  1 +
 arch/arm/dts/am335x-phytec-phycore-som-nand.dts    |  1 +
 arch/arm/dts/am335x-phytec-state.dtsi              | 52 ++++++++++++++++++++++
 4 files changed, 55 insertions(+)
 create mode 100644 arch/arm/dts/am335x-phytec-state.dtsi

diff --git a/arch/arm/dts/am335x-phytec-phycore-som-emmc.dts b/arch/arm/dts/am335x-phytec-phycore-som-emmc.dts
index 880700e..f264498 100644
--- a/arch/arm/dts/am335x-phytec-phycore-som-emmc.dts
+++ b/arch/arm/dts/am335x-phytec-phycore-som-emmc.dts
@@ -16,6 +16,7 @@
 
 #include "am33xx.dtsi"
 #include "am335x-phytec-phycore-som.dtsi"
+#include "am335x-phytec-state.dtsi"
 
 / {
 	model = "Phytec phyCORE EMMC AM335x";
diff --git a/arch/arm/dts/am335x-phytec-phycore-som-nand-no-spi.dts b/arch/arm/dts/am335x-phytec-phycore-som-nand-no-spi.dts
index 2c2fab0..b35294c 100644
--- a/arch/arm/dts/am335x-phytec-phycore-som-nand-no-spi.dts
+++ b/arch/arm/dts/am335x-phytec-phycore-som-nand-no-spi.dts
@@ -9,6 +9,7 @@
 
 #include "am33xx.dtsi"
 #include "am335x-phytec-phycore-som.dtsi"
+#include "am335x-phytec-state.dtsi"
 
 / {
 	model = "Phytec phyCORE AM335x";
diff --git a/arch/arm/dts/am335x-phytec-phycore-som-nand.dts b/arch/arm/dts/am335x-phytec-phycore-som-nand.dts
index 6ff2447..4d7606b 100644
--- a/arch/arm/dts/am335x-phytec-phycore-som-nand.dts
+++ b/arch/arm/dts/am335x-phytec-phycore-som-nand.dts
@@ -9,6 +9,7 @@
 
 #include "am33xx.dtsi"
 #include "am335x-phytec-phycore-som.dtsi"
+#include "am335x-phytec-state.dtsi"
 
 / {
 	model = "Phytec phyCORE AM335x";
diff --git a/arch/arm/dts/am335x-phytec-state.dtsi b/arch/arm/dts/am335x-phytec-state.dtsi
new file mode 100644
index 0000000..fbc35b9
--- /dev/null
+++ b/arch/arm/dts/am335x-phytec-state.dtsi
@@ -0,0 +1,52 @@
+/*
+ * Copyright (C) 2017 PHYTEC Messtechnik GmbH,
+ * Author: Daniel Schultz <d.schultz@phytec.de>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * version 2 as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+/ {
+	aliases {
+		am335x_phytec_mac_state = &am335x_phytec_mac_state;
+	};
+
+	am335x_phytec_mac_state: am335x_phytec_mac_state {
+		magic = <0x3f45620e>;
+		compatible = "barebox,state";
+		backend-type = "raw";
+		backend = <&backend_state_eeprom>;
+		backend-stridesize = <40>;
+
+		#address-cells = <1>;
+		#size-cells = <1>;
+		mac0 {
+			reg = <0x0 0x6>;
+			type = "mac";
+		};
+		mac1 {
+			reg = <0x6 0x6>;
+			type = "mac";
+		};
+
+	};
+};
+
+&eeprom {
+	status = "okay";
+	partitions {
+		compatible = "fixed-partitions";
+		#size-cells = <1>;
+		#address-cells = <1>;
+		backend_state_eeprom: state@0 {
+			reg = <0x000 0x120>;
+			label = "state-eeprom";
+		};
+	};
+};
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
