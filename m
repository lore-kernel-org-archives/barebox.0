Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22c.google.com ([2a00:1450:4010:c04::22c])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XRcYP-0003wN-Qx
 for barebox@lists.infradead.org; Wed, 10 Sep 2014 07:43:03 +0000
Received: by mail-lb0-f172.google.com with SMTP id w7so5381667lbi.17
 for <barebox@lists.infradead.org>; Wed, 10 Sep 2014 00:42:39 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 10 Sep 2014 11:42:19 +0400
Message-Id: <1410334946-12922-3-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1410334946-12922-1-git-send-email-antonynpavlov@gmail.com>
References: <1410334946-12922-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 2/9] MIPS: dts: use physical addresses (as Linux does)
To: barebox@lists.infradead.org

With IOMEM() adapted for MIPS we can use physical addresses
in device tree reg property.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/dts/ar9331.dtsi       | 10 +++++-----
 arch/mips/dts/dlink-dir-320.dts |  4 ++--
 arch/mips/dts/jz4755.dtsi       | 30 +++++++++++++++---------------
 arch/mips/dts/ls1b.dtsi         | 16 ++++++++--------
 arch/mips/dts/qemu-malta.dts    | 14 +++++++-------
 5 files changed, 37 insertions(+), 37 deletions(-)

diff --git a/arch/mips/dts/ar9331.dtsi b/arch/mips/dts/ar9331.dtsi
index 8280588..8e7afcd 100644
--- a/arch/mips/dts/ar9331.dtsi
+++ b/arch/mips/dts/ar9331.dtsi
@@ -10,24 +10,24 @@
 		device_type = "soc";
 		ranges;
 
-		serial0: serial@b8020000 {
+		serial0: serial@18020000 {
 			compatible = "qca,ar9330-uart";
-			reg = <0xb8020000 0x14>;
+			reg = <0x18020000 0x14>;
 			clocks = <&ar9331_clk AR933X_CLK_UART>;
 			status = "disabled";
 		};
 
 		ar9331_clk: clock {
 			compatible = "qca,ar933x-clk";
-			reg = <0xb8050000 0x48>;
+			reg = <0x18050000 0x48>;
 			#clock-cells = <1>;
 		};
 
-		spi: spi@bf000000{
+		spi: spi@1f000000{
 			#address-cells = <1>;
 			#size-cells = <0>;
 			compatible = "qca,ath79-spi";
-			reg = <0xbf000000 0x01000000>;
+			reg = <0x1f000000 0x01000000>;
 			status = "disabled";
 		};
 	};
diff --git a/arch/mips/dts/dlink-dir-320.dts b/arch/mips/dts/dlink-dir-320.dts
index bad41d9..b961c9d 100644
--- a/arch/mips/dts/dlink-dir-320.dts
+++ b/arch/mips/dts/dlink-dir-320.dts
@@ -17,9 +17,9 @@
 		device_type = "soc";
 		ranges;
 
-		serial0: serial@b8000300 {
+		serial0: serial@18000300 {
 			compatible = "ns16550a";
-			reg = <0xb8000300 0x08>;
+			reg = <0x18000300 0x08>;
 			reg-shift = <0>;
 			clock-frequency = <25804800>;
 			status = "disabled";
diff --git a/arch/mips/dts/jz4755.dtsi b/arch/mips/dts/jz4755.dtsi
index b83d884..137156d 100644
--- a/arch/mips/dts/jz4755.dtsi
+++ b/arch/mips/dts/jz4755.dtsi
@@ -8,35 +8,35 @@
 		#size-cells = <1>;
 		ranges;
 
-		wdt: wdt@b0002000 {
+		wdt: wdt@10002000 {
 			compatible = "ingenic,jz4740-wdt";
-			reg = <0xb0002000 0x10>;
+			reg = <0x10002000 0x10>;
 		};
 
 		rtc: rtc@10003000 {
 			compatible = "ingenic,jz4740-rtc";
-			reg = <0xb0003000 0x38>;
+			reg = <0x10003000 0x38>;
 		};
 
-		serial0: serial@b0030000 {
+		serial0: serial@10030000 {
 			compatible = "ingenic,jz4740-uart";
-			reg = <0xb0030000 0x20>;
+			reg = <0x10030000 0x20>;
 			reg-shift = <2>;
 			clock-frequency = <12000000>;
 			status = "disabled";
 		};
 
-		serial1: serial@b0031000 {
+		serial1: serial@10031000 {
 			compatible = "ingenic,jz4740-uart";
-			reg = <0xb0031000 0x20>;
+			reg = <0x10031000 0x20>;
 			reg-shift = <2>;
 			clock-frequency = <12000000>;
 			status = "disabled";
 		};
 
-		serial2: serial@b0032000 {
+		serial2: serial@10032000 {
 			compatible = "ingenic,jz4740-uart";
-			reg = <0xb0032000 0x20>;
+			reg = <0x10032000 0x20>;
 			reg-shift = <2>;
 			clock-frequency = <12000000>;
 			status = "disabled";
@@ -45,42 +45,42 @@
 		gpio0: gpio@10010000 {
 			compatible = "ingenic,jz4740-gpio";
 			gpio-controller;
-			reg = <0xb0010000 0x100>;
+			reg = <0x10010000 0x100>;
 			#gpio-cells = <2>;
 		};
 
 		gpio1: gpio@10010100 {
 			compatible = "ingenic,jz4740-gpio";
 			gpio-controller;
-			reg = <0xb0010100 0x100>;
+			reg = <0x10010100 0x100>;
 			#gpio-cells = <2>;
 		};
 
 		gpio2: gpio@10010200 {
 			compatible = "ingenic,jz4740-gpio";
 			gpio-controller;
-			reg = <0xb0010200 0x100>;
+			reg = <0x10010200 0x100>;
 			#gpio-cells = <2>;
 		};
 
 		gpio3: gpio@10010300 {
 			compatible = "ingenic,jz4740-gpio";
 			gpio-controller;
-			reg = <0xb0010300 0x100>;
+			reg = <0x10010300 0x100>;
 			#gpio-cells = <2>;
 		};
 
 		gpio4: gpio@10010400 {
 			compatible = "ingenic,jz4740-gpio";
 			gpio-controller;
-			reg = <0xb0010400 0x100>;
+			reg = <0x10010400 0x100>;
 			#gpio-cells = <2>;
 		};
 
 		gpio5: gpio@10010500 {
 			compatible = "ingenic,jz4740-gpio";
 			gpio-controller;
-			reg = <0xb0010500 0x100>;
+			reg = <0x10010500 0x100>;
 			#gpio-cells = <2>;
 		};
 	};
diff --git a/arch/mips/dts/ls1b.dtsi b/arch/mips/dts/ls1b.dtsi
index f4ff8b6..af7119f 100644
--- a/arch/mips/dts/ls1b.dtsi
+++ b/arch/mips/dts/ls1b.dtsi
@@ -8,33 +8,33 @@
 		device_type = "soc";
 		ranges;
 
-		serial0: serial@bfe40000 {
+		serial0: serial@1fe40000 {
 			compatible = "ns16550a";
-			reg = <0xbfe40000 0x8>;
+			reg = <0x1fe40000 0x8>;
 			reg-shift = <0>;
 			clock-frequency = <83000000>;
 			status = "disabled";
 		};
 
-		serial1: serial@bfe44000 {
+		serial1: serial@1fe44000 {
 			compatible = "ns16550a";
-			reg = <0xbfe44000 0x8>;
+			reg = <0x1fe44000 0x8>;
 			reg-shift = <0>;
 			clock-frequency = <83000000>;
 			status = "disabled";
 		};
 
-		serial2: serial@bfe48000 {
+		serial2: serial@1fe48000 {
 			compatible = "ns16550a";
-			reg = <0xbfe48000 0x8>;
+			reg = <0x1fe48000 0x8>;
 			reg-shift = <0>;
 			clock-frequency = <83000000>;
 			status = "disabled";
 		};
 
-		serial3: serial@bfe4c000 {
+		serial3: serial@1fe4c000 {
 			compatible = "ns16550a";
-			reg = <0xbfe4c000 0x8>;
+			reg = <0x1fe4c000 0x8>;
 			reg-shift = <0>;
 			clock-frequency = <83000000>;
 			status = "disabled";
diff --git a/arch/mips/dts/qemu-malta.dts b/arch/mips/dts/qemu-malta.dts
index cc1c960..9b0c594 100644
--- a/arch/mips/dts/qemu-malta.dts
+++ b/arch/mips/dts/qemu-malta.dts
@@ -17,9 +17,9 @@
 		reg = <0x00000000 0x10000000>;
 	};
 
-	uart0: serial@b80003f8 {
+	uart0: serial@180003f8 {
 		compatible = "ns16550a";
-		reg = <0xb80003f8 0x08>;
+		reg = <0x180003f8 0x08>;
 		reg-shift = <0>;
 		/* no matter for emulated port */
 		clock-frequency = <1843200>;
@@ -28,7 +28,7 @@
 	gpio: gpio@1f000b00 {
 		compatible = "mti,malta-fpga-i2c-gpio";
 		gpio-controller;
-		reg = <0xbf000b00 0x20>;
+		reg = <0x1f000b00 0x20>;
 		#gpio-cells = <2>;
 	};
 
@@ -44,19 +44,19 @@
 		status = "disabled";
 	};
 
-	uart2: serial@bf000900 {
+	uart2: serial@1f000900 {
 		compatible = "ns16550a";
-		reg = <0xbf000900 0x40>;
+		reg = <0x1f000900 0x40>;
 		reg-shift = <3>;
 		/* no matter for emulated port */
 		clock-frequency = <1843200>;
 	};
 
-	nor0: flash@be000000 {
+	nor0: flash@1e000000 {
 		#address-cells = <1>;
 		#size-cells = <1>;
 		compatible = "cfi-flash";
-		reg = <0xbe000000 0x00400000>;
+		reg = <0x1e000000 0x00400000>;
 
 		partition@0 {
 			label = "barebox";
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
