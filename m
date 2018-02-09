Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1ek5hz-0006Cn-7A
 for barebox@lists.infradead.org; Fri, 09 Feb 2018 10:15:09 +0000
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Fri,  9 Feb 2018 11:14:43 +0100
Message-Id: <20180209101444.2477-1-linux@rempel-privat.de>
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
Subject: [PATCH 1/2] MIPS: add initial qca4531 support
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

The QCA4531 is a two stream (2x2) 802.11b/g/n single-band programmable
Wi-Fi System-on-Chip (SoC) for the Internet of Things (IoT).
https://www.qualcomm.com/products/qca4531

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
---
 arch/mips/dts/qca4531.dtsi                         | 89 ++++++++++++++++++++++
 .../mach-ath79/include/mach/pbl_ll_init_qca4531.h  | 70 +++++++++++++++++
 2 files changed, 159 insertions(+)
 create mode 100644 arch/mips/dts/qca4531.dtsi
 create mode 100644 arch/mips/mach-ath79/include/mach/pbl_ll_init_qca4531.h

diff --git a/arch/mips/dts/qca4531.dtsi b/arch/mips/dts/qca4531.dtsi
new file mode 100644
index 000000000..2b0bcd816
--- /dev/null
+++ b/arch/mips/dts/qca4531.dtsi
@@ -0,0 +1,89 @@
+#include <dt-bindings/clock/ath79-clk.h>
+
+/ {
+	compatible = "qca,qca4531";
+
+	#address-cells = <1>;
+	#size-cells = <1>;
+
+	cpus {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		cpu@0 {
+			device_type = "cpu";
+			compatible = "mips,mips24Kc";
+			clocks = <&pll ATH79_CLK_CPU>;
+			reg = <0>;
+		};
+	};
+
+	ref: ref {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+	};
+
+	ahb {
+		compatible = "simple-bus";
+		ranges;
+
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		apb {
+			compatible = "simple-bus";
+			ranges;
+
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			uart0: uart@18020000 {
+				compatible = "ns16550a", "qca,qca4531-uart0", "qca,ar9344-uart0";
+				reg = <0x18020000 0x20>;
+
+				reg-shift = <2>;
+				reg-io-width = <4>;
+				big-endian;
+
+				status = "disabled";
+			};
+
+			pll: pll-controller@18050000 {
+				compatible = "qca,qca4531-pll";
+				reg = <0x18050000 0x100>;
+
+				clocks = <&ref>;
+				clock-names = "ref";
+
+				#clock-cells = <1>;
+			};
+
+			wdt0: wdt@18060008 {
+				compatible = "qca,qca4531-wdt", "qca,ar9344-wdt";
+				reg = <0x18060008 0x8>;
+				clocks = <&pll ATH79_CLK_CPU>;
+				status = "disabled";
+			};
+
+			spi: spi@1f000000 {
+				compatible = "qca,qca4531-spi", "qca,ar7100-spi";
+				reg = <0x1f000000 0x1c>;
+
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				status = "disabled";
+			};
+		};
+
+		mac0: mac@19000000 {
+			compatible = "qca,qca4531-gmac0", "qca,ar9344-gmac0";
+			reg = <0x18070000 0x00000100>,
+			      <0x19000000 0x01000000>;
+			reg-names = "gmac", "ge0";
+			phy-mode = "rgmii";
+
+			status = "disabled";
+		};
+	};
+};
diff --git a/arch/mips/mach-ath79/include/mach/pbl_ll_init_qca4531.h b/arch/mips/mach-ath79/include/mach/pbl_ll_init_qca4531.h
new file mode 100644
index 000000000..002778b3e
--- /dev/null
+++ b/arch/mips/mach-ath79/include/mach/pbl_ll_init_qca4531.h
@@ -0,0 +1,70 @@
+#ifndef __ASM_MACH_ATH79_PBL_LL_INIT_QCA4531_H
+#define __ASM_MACH_ATH79_PBL_LL_INIT_QCA4531_H
+
+#include <asm/addrspace.h>
+#include <asm/regdef.h>
+
+
+.macro	pbl_qca4531_ddr2_550_550_init
+	.set	push
+	.set	noreorder
+
+	pbl_reg_writel 0xfeceffff , 0xb806001c
+	pbl_reg_writel 0xeeceffff , 0xb806001c
+	pbl_reg_writel 0xe6ceffff , 0xb806001c
+	pbl_reg_writel 0x633c8176 , 0xb8116c40
+	pbl_reg_writel 0x10200000 , 0xb8116c44
+	pbl_reg_writel 0x4b962100 , 0xb81162c0
+	pbl_reg_writel 0x480      , 0xb81162c4
+	pbl_reg_writel 0x04000144 , 0xb81162c8
+	pbl_reg_writel 0x54086000 , 0xb81161c4
+	pbl_reg_writel 0x54086000 , 0xb8116244
+	pbl_reg_writel 0x0131001c , 0xb8050008
+	pbl_reg_writel 0x40001580 , 0xb8050000
+	pbl_reg_writel 0x40015800 , 0xb8050004
+	pbl_reg_writel 0x0131001c , 0xb8050008
+	pbl_reg_writel 0x00001580 , 0xb8050000
+	pbl_reg_writel 0x00015800 , 0xb8050004
+	pbl_reg_writel 0x01310000 , 0xb8050008
+	pbl_reg_writel 0x781003ff , 0xb8050044
+	pbl_reg_writel 0x003c103f , 0xb8050048
+	pbl_reg_writel 0x401f0042 , 0xb8000108
+	pbl_reg_writel 0x0000166d , 0xb80000b8
+	pbl_reg_writel 0xcfaaf33b , 0xb8000000
+	pbl_reg_writel 0x0000000f , 0xb800015c
+	pbl_reg_writel 0xa272efa8 , 0xb8000004
+	pbl_reg_writel 0x000ffff  , 0xb8000018
+	pbl_reg_writel 0x74444444 , 0xb80000c4
+	pbl_reg_writel 0x00000444 , 0xb80000c8
+	pbl_reg_writel 0xa210ee28 , 0xb8000004
+	pbl_reg_writel 0xa2b2e1a8 , 0xb8000004
+	pbl_reg_writel 0x8        , 0xb8000010
+	pbl_reg_writel 0x0        , 0xb80000bc
+	pbl_reg_writel 0x10       , 0xb8000010
+	pbl_reg_writel 0x0        , 0xb80000c0
+	pbl_reg_writel 0x40       , 0xb8000010
+	pbl_reg_writel 0x2        , 0xb800000c
+	pbl_reg_writel 0x2        , 0xb8000010
+	pbl_reg_writel 0xb43      , 0xb8000008
+	pbl_reg_writel 0x1        , 0xb8000010
+	pbl_reg_writel 0x8        , 0xb8000010
+	pbl_reg_writel 0x4        , 0xb8000010
+	pbl_reg_writel 0x4        , 0xb8000010
+	pbl_reg_writel 0xa43      , 0xb8000008
+	pbl_reg_writel 0x1        , 0xb8000010
+	pbl_reg_writel 0x382      , 0xb800000c
+	pbl_reg_writel 0x2        , 0xb8000010
+	pbl_reg_writel 0x402      , 0xb800000c
+	pbl_reg_writel 0x2        , 0xb8000010
+	pbl_reg_writel 0x40be     , 0xb8000014
+	pbl_reg_writel 0x20       , 0xb800001C
+	pbl_reg_writel 0x20       , 0xb8000020
+	pbl_reg_writel 0xfffff    , 0xb80000cc
+	pbl_reg_writel 0xff30b    , 0xb8040000
+	pbl_reg_writel 0x908      , 0xb8040044
+	pbl_reg_writel 0x160000   , 0xb8040034
+
+	.set	pop
+.endm
+
+#endif /* __ASM_MACH_ATH79_PBL_LL_INIT_QCA4531_H */
-- 
2.14.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
