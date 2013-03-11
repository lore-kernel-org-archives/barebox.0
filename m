Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UF9rE-0003Sx-RY
 for barebox@lists.infradead.org; Mon, 11 Mar 2013 21:02:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 11 Mar 2013 22:01:55 +0100
Message-Id: <1363035716-13386-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1363035716-13386-1-git-send-email-s.hauer@pengutronix.de>
References: <1363035716-13386-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/5] ARM: Add initial i.MX27 dts files
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/Makefile                 |   1 +
 arch/arm/dts/imx27-phytec-phycore.dts | 106 ++++++++++++++
 arch/arm/dts/imx27.dtsi               | 250 ++++++++++++++++++++++++++++++++++
 arch/arm/mach-imx/imx27.c             |   3 +
 4 files changed, 360 insertions(+)
 create mode 100644 arch/arm/dts/imx27-phytec-phycore.dts
 create mode 100644 arch/arm/dts/imx27.dtsi

diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 2b25fdf..9e816c4 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -1,3 +1,4 @@
+dtb-$(CONFIG_ARCH_IMX27) += imx27-phytec-phycore.dtb
 
 BUILTIN_DTB := $(patsubst "%",%,$(CONFIG_BUILTIN_DTB)).dtb.o
 ifneq ($(CONFIG_BUILTIN_DTB),"")
diff --git a/arch/arm/dts/imx27-phytec-phycore.dts b/arch/arm/dts/imx27-phytec-phycore.dts
new file mode 100644
index 0000000..0a7222f
--- /dev/null
+++ b/arch/arm/dts/imx27-phytec-phycore.dts
@@ -0,0 +1,106 @@
+/*
+ * Copyright 2012 Sascha Hauer, Pengutronix
+ *
+ * The code contained herein is licensed under the GNU General Public
+ * License. You may obtain a copy of the GNU General Public License
+ * Version 2 or later at the following locations:
+ *
+ * http://www.opensource.org/licenses/gpl-license.html
+ * http://www.gnu.org/copyleft/gpl.html
+ */
+
+/dts-v1/;
+/include/ "imx27.dtsi"
+
+/ {
+	model = "Phytec pcm038";
+	compatible = "phytec,imx27-pcm038", "fsl,imx27";
+
+	aliases {
+		bareboxenv = &bareboxenv;
+	};
+
+	memory {
+		reg = <0xa0000000 0x08000000>;
+	};
+
+	chosen {
+		linux,stdout-path = &uart1;
+	};
+
+	soc {
+		aipi@10000000 { /* aipi */
+
+			serial@1000a000 {
+				fsl,uart-has-rtscts;
+				status = "okay";
+			};
+
+			serial@1000b000 {
+				fsl,uart-has-rtscts;
+				status = "okay";
+			};
+
+			serial@1000c000 {
+				fsl,uart-has-rtscts;
+				status = "okay";
+			};
+
+			cspi@1000e000 {
+				status = "okay";
+				fsl,spi-num-chipselects = <1>;
+				cs-gpios = <&gpio4 28 0>;
+				pmic:mc13783@0 {
+					#address-cells = <1>;
+					#size-cells = <0>;
+					compatible = "fsl,mc13783";
+					spi-max-frequency = <6000000>;
+					reg = <0>;
+				};
+			};
+
+			i2c@1001d000 {
+				clock-frequency = <400000>;
+				status = "okay";
+				at24@4c {
+					compatible = "at,24c32";
+					pagesize = <32>;
+					reg = <0x52>;
+				};
+				pcf8563@51 {
+					compatible = "nxp,pcf8563";
+					reg = <0x51>;
+				};
+				lm75@4a {
+					compatible = "national,lm75";
+					reg = <0x4a>;
+				};
+			};
+		};
+	};
+
+	nand@d8000000 {
+		status = "okay";
+	};
+
+	nor_flash@c0000000 {
+		compatible = "cfi-flash";
+		bank-width = <2>;
+		reg = <0xc0000000 0x02000000>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		partition@0 {
+			label = "bootloader";
+			reg = <0x0 0x80000>;
+		};
+		bareboxenv: partition@80000 {
+			label = "bootloader-environment";
+			reg = <0x80000 0x80000>;
+		};
+	};
+};
+
+&fec {
+	status = "okay";
+};
diff --git a/arch/arm/dts/imx27.dtsi b/arch/arm/dts/imx27.dtsi
new file mode 100644
index 0000000..0b7d7a2
--- /dev/null
+++ b/arch/arm/dts/imx27.dtsi
@@ -0,0 +1,250 @@
+/*
+ * Copyright 2012 Sascha Hauer, Pengutronix
+ *
+ * The code contained herein is licensed under the GNU General Public
+ * License. You may obtain a copy of the GNU General Public License
+ * Version 2 or later at the following locations:
+ *
+ * http://www.opensource.org/licenses/gpl-license.html
+ * http://www.gnu.org/copyleft/gpl.html
+ */
+
+/include/ "skeleton.dtsi"
+
+/ {
+	aliases {
+		serial0 = &uart1;
+		serial1 = &uart2;
+		serial2 = &uart3;
+		serial3 = &uart4;
+		serial4 = &uart5;
+		serial5 = &uart6;
+		gpio0 = &gpio1;
+		gpio1 = &gpio2;
+		gpio2 = &gpio3;
+		gpio3 = &gpio4;
+		gpio4 = &gpio5;
+		gpio5 = &gpio6;
+	};
+
+	avic: avic-interrupt-controller@e0000000 {
+		compatible = "fsl,imx27-avic", "fsl,avic";
+		interrupt-controller;
+		#interrupt-cells = <1>;
+		reg = <0x10040000 0x1000>;
+	};
+
+	clocks {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		osc26m {
+			compatible = "fsl,imx-osc26m", "fixed-clock";
+			clock-frequency = <26000000>;
+		};
+	};
+
+	soc {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		compatible = "simple-bus";
+		interrupt-parent = <&avic>;
+		ranges;
+
+		aipi@10000000 { /* AIPI1 */
+			compatible = "fsl,aipi-bus", "simple-bus";
+			#address-cells = <1>;
+			#size-cells = <1>;
+			reg = <0x10000000 0x20000>;
+			ranges;
+
+			wdog: wdog@10002000 {
+				compatible = "fsl,imx27-wdt", "fsl,imx21-wdt";
+				reg = <0x10002000 0x1000>;
+				interrupts = <27>;
+			};
+
+			timer@10003000 {
+				compatible = "fsl,imx27-gpt", "fsl,imx1-gpt";
+				reg = <0x10003000 0x1000>;
+			};
+
+			uart1: serial@1000a000 {
+				compatible = "fsl,imx27-uart", "fsl,imx21-uart";
+				reg = <0x1000a000 0x1000>;
+				interrupts = <20>;
+				status = "disabled";
+			};
+
+			uart2: serial@1000b000 {
+				compatible = "fsl,imx27-uart", "fsl,imx21-uart";
+				reg = <0x1000b000 0x1000>;
+				interrupts = <19>;
+				status = "disabled";
+			};
+
+			uart3: serial@1000c000 {
+				compatible = "fsl,imx27-uart", "fsl,imx21-uart";
+				reg = <0x1000c000 0x1000>;
+				interrupts = <18>;
+				status = "disabled";
+			};
+
+			uart4: serial@1000d000 {
+				compatible = "fsl,imx27-uart", "fsl,imx21-uart";
+				reg = <0x1000d000 0x1000>;
+				interrupts = <17>;
+				status = "disabled";
+			};
+
+			cspi1: cspi@1000e000 {
+				#address-cells = <1>;
+				#size-cells = <0>;
+				compatible = "fsl,imx27-cspi";
+				reg = <0x1000e000 0x1000>;
+				interrupts = <16>;
+				status = "disabled";
+			};
+
+			cspi2: cspi@1000f000 {
+				#address-cells = <1>;
+				#size-cells = <0>;
+				compatible = "fsl,imx27-cspi";
+				reg = <0x1000f000 0x1000>;
+				interrupts = <15>;
+				status = "disabled";
+			};
+
+			i2c1: i2c@10012000 {
+				#address-cells = <1>;
+				#size-cells = <0>;
+				compatible = "fsl,imx27-i2c", "fsl,imx21-i2c";
+				reg = <0x10012000 0x1000>;
+				interrupts = <12>;
+				status = "disabled";
+			};
+
+			gpio1: gpio@10015000 {
+				compatible = "fsl,imx27-gpio", "fsl,imx21-gpio";
+				reg = <0x10015000 0x100>;
+				interrupts = <8>;
+				gpio-controller;
+				#gpio-cells = <2>;
+				interrupt-controller;
+				#interrupt-cells = <2>;
+			};
+
+			gpio2: gpio@10015100 {
+				compatible = "fsl,imx27-gpio", "fsl,imx21-gpio";
+				reg = <0x10015100 0x100>;
+				interrupts = <8>;
+				gpio-controller;
+				#gpio-cells = <2>;
+				interrupt-controller;
+				#interrupt-cells = <2>;
+			};
+
+			gpio3: gpio@10015200 {
+				compatible = "fsl,imx27-gpio", "fsl,imx21-gpio";
+				reg = <0x10015200 0x100>;
+				interrupts = <8>;
+				gpio-controller;
+				#gpio-cells = <2>;
+				interrupt-controller;
+				#interrupt-cells = <2>;
+			};
+
+			gpio4: gpio@10015300 {
+				compatible = "fsl,imx27-gpio", "fsl,imx21-gpio";
+				reg = <0x10015300 0x100>;
+				interrupts = <8>;
+				gpio-controller;
+				#gpio-cells = <2>;
+				interrupt-controller;
+				#interrupt-cells = <2>;
+			};
+
+			gpio5: gpio@10015400 {
+				compatible = "fsl,imx27-gpio", "fsl,imx21-gpio";
+				reg = <0x10015400 0x100>;
+				interrupts = <8>;
+				gpio-controller;
+				#gpio-cells = <2>;
+				interrupt-controller;
+				#interrupt-cells = <2>;
+			};
+
+			gpio6: gpio@10015500 {
+				compatible = "fsl,imx27-gpio", "fsl,imx21-gpio";
+				reg = <0x10015500 0x100>;
+				interrupts = <8>;
+				gpio-controller;
+				#gpio-cells = <2>;
+				interrupt-controller;
+				#interrupt-cells = <2>;
+			};
+
+			cspi3: cspi@10017000 {
+				#address-cells = <1>;
+				#size-cells = <0>;
+				compatible = "fsl,imx27-cspi";
+				reg = <0x10017000 0x1000>;
+				interrupts = <6>;
+				status = "disabled";
+			};
+
+			uart5: serial@1001b000 {
+				compatible = "fsl,imx27-uart", "fsl,imx21-uart";
+				reg = <0x1001b000 0x1000>;
+				interrupts = <49>;
+				status = "disabled";
+			};
+
+			uart6: serial@1001c000 {
+				compatible = "fsl,imx27-uart", "fsl,imx21-uart";
+				reg = <0x1001c000 0x1000>;
+				interrupts = <48>;
+				status = "disabled";
+			};
+
+			i2c2: i2c@1001d000 {
+				#address-cells = <1>;
+				#size-cells = <0>;
+				compatible = "fsl,imx27-i2c", "fsl,imx21-i2c";
+				reg = <0x1001d000 0x1000>;
+				interrupts = <1>;
+				status = "disabled";
+			};
+
+			ccm@10027000 {
+				compatible = "fsl,imx27-ccm";
+				reg = <0x10027000 0x1000>;
+			};
+		};
+
+		aipi@10020000 { /* AIPI2 */
+			compatible = "fsl,aipi-bus", "simple-bus";
+			#address-cells = <1>;
+			#size-cells = <1>;
+			reg = <0x10020000 0x20000>;
+			ranges;
+
+			fec: ethernet@1002b000 {
+				compatible = "fsl,imx27-fec";
+				reg = <0x1002b000 0x4000>;
+				interrupts = <50>;
+				status = "disabled";
+			};
+		};
+
+		nfc: nand@d8000000 {
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			compatible = "fsl,imx27-nand";
+			reg = <0xd8000000 0x1000>;
+			interrupts = <29>;
+			status = "disabled";
+		};
+	};
+};
diff --git a/arch/arm/mach-imx/imx27.c b/arch/arm/mach-imx/imx27.c
index e9d6197..ef8b20c 100644
--- a/arch/arm/mach-imx/imx27.c
+++ b/arch/arm/mach-imx/imx27.c
@@ -108,6 +108,9 @@ static int imx27_init(void)
 
 	imx27_init_max();
 
+	if (of_get_root_node())
+		return 0;
+
 	add_generic_device("imx27-ccm", DEVICE_ID_SINGLE, NULL,
 			   MX27_CCM_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx1-gpt", 0, NULL, MX27_GPT1_BASE_ADDR, 0x100, IORESOURCE_MEM, NULL);
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
