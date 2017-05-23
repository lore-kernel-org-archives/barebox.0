Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dD4XE-0005Yc-MM
 for barebox@lists.infradead.org; Tue, 23 May 2017 07:47:18 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 23 May 2017 09:46:53 +0200
Message-Id: <20170523074653.32180-2-s.hauer@pengutronix.de>
In-Reply-To: <20170523074653.32180-1-s.hauer@pengutronix.de>
References: <20170523074653.32180-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] state: Add working example dtsi file
To: Barebox List <barebox@lists.infradead.org>

This adds a working example dtsi file for the state framework. It can
be directly included by the Phytec phyFLEX i.MX6 board. The board has
been chosen because it has a wide range of different storage devices
suitable for state: SD, NAND, SPI NOR and i2c EEPROM.

This example can be used for testing and also as a template for others
to copy.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/imx6qdl-phytec-pbab01.dtsi |   4 +
 arch/arm/dts/state-example.dtsi         | 128 ++++++++++++++++++++++++++++++++
 2 files changed, 132 insertions(+)
 create mode 100644 arch/arm/dts/state-example.dtsi

diff --git a/arch/arm/dts/imx6qdl-phytec-pbab01.dtsi b/arch/arm/dts/imx6qdl-phytec-pbab01.dtsi
index 86ab991c91..991c7e4fab 100644
--- a/arch/arm/dts/imx6qdl-phytec-pbab01.dtsi
+++ b/arch/arm/dts/imx6qdl-phytec-pbab01.dtsi
@@ -14,3 +14,7 @@
 &uart1 {
 	status = "okay";
 };
+
+#ifdef USE_STATE_EXAMPLE
+#include "state-example.dtsi"
+#endif
diff --git a/arch/arm/dts/state-example.dtsi b/arch/arm/dts/state-example.dtsi
new file mode 100644
index 0000000000..490ee7840b
--- /dev/null
+++ b/arch/arm/dts/state-example.dtsi
@@ -0,0 +1,128 @@
+/*
+ * This code is released using a dual license strategy: BSD/GPL
+ * You can choose the licence that better fits your requirements.
+ *
+ * Released under the terms of 3-clause BSD License
+ * Released under the terms of GNU General Public License Version 2.0
+ *
+ */
+
+/*
+ * This contains an example how to use the state framework. This file
+ * can be directly included by imx6qdl-phytec-pbab01.dtsi, other boards
+ * need adjustments. Note that this example may use the partitions in
+ * other ways than intended by phytec, so before using this see below
+ * if it will overwrite some precious data.
+ */
+
+#define STATE_VARS \
+	#address-cells = <1>;				\
+	#size-cells = <1>;				\
+	mac {						\
+		reg = <0x0 0x6>;			\
+		type = "mac";				\
+	};						\
+							\
+	number {					\
+		reg = <0x8 0x4>;			\
+		type = "uint32";			\
+	};						\
+							\
+	name {						\
+		reg = <0xc 0x10>;			\
+		type = "string";			\
+	};						\
+							\
+	fruit {						\
+		reg = <0x1c 0x4>;			\
+		type = "enum32";			\
+		names = "apple", "pear", "banana";	\
+	}
+
+/ {
+	aliases {
+		state_nor = &state_nor;
+		state_nand = &state_nand;
+		state_sd = &state_sd;
+		state_eeprom = &state_eeprom;
+	};
+
+	state_nor: state_nor {
+		magic = <0x512890a0>;
+		compatible = "barebox,state";
+		backend-type = "raw";
+		backend = <&backend_state_nor>;
+		backend-storage-type = "circular";
+
+		STATE_VARS;
+	};
+
+	state_nand: state_nand {
+		magic = <0xab67421f>;
+		compatible = "barebox,state";
+		backend-type = "raw";
+		backend = <&backend_state_nand>;
+		backend-storage-type = "circular";
+
+		STATE_VARS;
+	};
+
+	state_sd: state_sd {
+		magic = <0xef784236>;
+		compatible = "barebox,state";
+		backend-type = "raw";
+		backend = <&backend_state_usdhc>;
+		backend-stridesize = <1024>;
+
+		STATE_VARS;
+	};
+
+	state_eeprom: state_eeprom {
+		magic = <0x344682db>;
+		compatible = "barebox,state";
+		backend-type = "raw";
+		backend = <&backend_state_eeprom>;
+		backend-stridesize = <64>;
+
+		STATE_VARS;
+	};
+
+};
+
+&ecspi3 {
+	flash@0 {
+		backend_state_nor: partition@120000 {
+		};
+	};
+};
+
+&gpmi {
+	backend_state_nand: partition@500000 {
+	};
+};
+
+&i2c1 {
+	eeprom@50 {
+		partitions {
+			compatible = "fixed-partitions";
+			#size-cells = <1>;
+			#address-cells = <1>;
+			backend_state_eeprom: state@400 {
+				reg = <0x400 0x400>;
+				label = "state-eeprom";
+			};
+		};
+	};
+};
+
+&usdhc2 {
+	partitions {
+		compatible = "fixed-partitions";
+		#size-cells = <1>;
+		#address-cells = <1>;
+		backend_state_usdhc: state@0x80000 {
+			reg = <0x80000 0x80000>;
+			label = "state-sd";
+		};
+	};
+};
\ No newline at end of file
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
