Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x231.google.com ([2a00:1450:4010:c03::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YgiGY-0001zC-FI
 for barebox@lists.infradead.org; Fri, 10 Apr 2015 23:23:15 +0000
Received: by laat2 with SMTP id t2so23357902laa.1
 for <barebox@lists.infradead.org>; Fri, 10 Apr 2015 16:22:52 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sat, 11 Apr 2015 02:22:57 +0300
Message-Id: <1428708181-12506-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1428708181-12506-1-git-send-email-antonynpavlov@gmail.com>
References: <1428708181-12506-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 1/5] MIPS: xburst: add JZ4770 SoC support
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/dts/jz4770.dtsi     | 90 +++++++++++++++++++++++++++++++++++++++++++
 arch/mips/include/asm/cpu.h   |  1 +
 arch/mips/lib/cpu-probe.c     |  1 +
 arch/mips/mach-xburst/Kconfig |  6 +++
 4 files changed, 98 insertions(+)

diff --git a/arch/mips/dts/jz4770.dtsi b/arch/mips/dts/jz4770.dtsi
new file mode 100644
index 0000000..3823d9a
--- /dev/null
+++ b/arch/mips/dts/jz4770.dtsi
@@ -0,0 +1,90 @@
+#include "skeleton.dtsi"
+
+/ {
+	soc {
+		model = "Ingenic JZ4770";
+		#address-cells = <1>;
+		#size-cells = <1>;
+		compatible = "simple-bus";
+		ranges = <>;
+
+		wdt: wdt@10002000 {
+			compatible = "ingenic,jz4740-wdt";
+			reg = <0x10002000 0x10>;
+		};
+
+		uart0: serial@10030000 {
+			compatible = "ingenic,jz4740-uart";
+			reg = <0x10030000 0x100>;
+			reg-shift = <2>;
+			clock-frequency = <12000000>;
+			status = "disabled";
+		};
+
+		uart1: serial@10031000 {
+			compatible = "ingenic,jz4740-uart";
+			reg = <0x10031000 0x100>;
+			reg-shift = <2>;
+			clock-frequency = <12000000>;
+			status = "disabled";
+		};
+
+		uart2: serial@10032000 {
+			compatible = "ingenic,jz4740-uart";
+			reg = <0x10032000 0x100>;
+			reg-shift = <2>;
+			clock-frequency = <12000000>;
+			status = "disabled";
+		};
+
+		uart3: serial@10033000 {
+			compatible = "ingenic,jz4740-uart";
+			reg = <0x10033000 0x100>;
+			reg-shift = <2>;
+			clock-frequency = <12000000>;
+			status = "disabled";
+		};
+
+		gpio0: gpio@10010000 {
+			compatible = "ingenic,jz4740-gpio";
+			gpio-controller;
+			reg = <0x10010000 0x100>;
+			#gpio-cells = <2>;
+		};
+
+		gpio1: gpio@10010100 {
+			compatible = "ingenic,jz4740-gpio";
+			gpio-controller;
+			reg = <0x10010100 0x100>;
+			#gpio-cells = <2>;
+		};
+
+		gpio2: gpio@10010200 {
+			compatible = "ingenic,jz4740-gpio";
+			gpio-controller;
+			reg = <0x10010200 0x100>;
+			#gpio-cells = <2>;
+		};
+
+		gpio3: gpio@10010300 {
+			compatible = "ingenic,jz4740-gpio";
+			gpio-controller;
+			reg = <0x10010300 0x100>;
+			#gpio-cells = <2>;
+		};
+
+		gpio4: gpio@10010400 {
+			compatible = "ingenic,jz4740-gpio";
+			gpio-controller;
+			reg = <0x10010400 0x100>;
+			#gpio-cells = <2>;
+		};
+
+		gpio5: gpio@10010500 {
+			compatible = "ingenic,jz4740-gpio";
+			gpio-controller;
+			reg = <0x10010500 0x100>;
+			#gpio-cells = <2>;
+		};
+	};
+};
diff --git a/arch/mips/include/asm/cpu.h b/arch/mips/include/asm/cpu.h
index 572cabb..02a4446 100644
--- a/arch/mips/include/asm/cpu.h
+++ b/arch/mips/include/asm/cpu.h
@@ -27,6 +27,7 @@
 #define PRID_COMP_MIPS		0x010000
 #define PRID_COMP_BROADCOM	0x020000
 #define PRID_COMP_INGENIC	0xd00000
+#define PRID_COMP_INGENIC_JZ4770	0xd10000
 #define PRID_COMP_INGENIC2	0xe10000
 
 /*
diff --git a/arch/mips/lib/cpu-probe.c b/arch/mips/lib/cpu-probe.c
index 4622bcd..13f9586 100644
--- a/arch/mips/lib/cpu-probe.c
+++ b/arch/mips/lib/cpu-probe.c
@@ -158,6 +158,7 @@ void cpu_probe(void)
 		cpu_probe_broadcom(c);
 		break;
 	case PRID_COMP_INGENIC:
+	case PRID_COMP_INGENIC_JZ4770:
 	case PRID_COMP_INGENIC2:
 		cpu_probe_ingenic(c);
 		break;
diff --git a/arch/mips/mach-xburst/Kconfig b/arch/mips/mach-xburst/Kconfig
index 2598c41..1fadf3f 100644
--- a/arch/mips/mach-xburst/Kconfig
+++ b/arch/mips/mach-xburst/Kconfig
@@ -10,6 +10,12 @@ config CPU_JZ4755
 	select WATCHDOG
 	select WATCHDOG_JZ4740
 
+config CPU_JZ4770
+	bool
+	select SYS_HAS_CPU_MIPS32_R2
+	select WATCHDOG
+	select WATCHDOG_JZ4740
+
 config CPU_JZ4780
 	bool
 	select SYS_HAS_CPU_MIPS32_R2
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
