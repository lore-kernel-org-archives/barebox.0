Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x241.google.com ([2a00:1450:4010:c07::241])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1bCa95-0001y8-CJ
 for barebox@lists.infradead.org; Mon, 13 Jun 2016 22:15:49 +0000
Received: by mail-lf0-x241.google.com with SMTP id l184so2570086lfl.1
 for <barebox@lists.infradead.org>; Mon, 13 Jun 2016 15:15:29 -0700 (PDT)
Received: from localhost.localdomain (ppp109-252-109-196.pppoe.spdop.ru.
 [109.252.109.196])
 by smtp.gmail.com with ESMTPSA id k6sm1295064lbd.49.2016.06.13.15.15.26
 for <barebox@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 13 Jun 2016 15:15:27 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 14 Jun 2016 01:15:07 +0300
Message-Id: <1465856107-24133-7-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1465856107-24133-1-git-send-email-antonynpavlov@gmail.com>
References: <1465856107-24133-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 6/6] MIPS: ath79: dts: use ar9331.dtsi from linux v4.7-rc2
To: barebox@lists.infradead.org

Nowadays we have AR9331 devicetree from linux v4.7-rc2
in the file dts/src/mips/qca/ar9331.dtsi.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/dts/ar9331.dtsi       | 59 -----------------------------------------
 arch/mips/dts/black-swift.dts   |  2 +-
 arch/mips/dts/tplink-mr3020.dts |  2 +-
 3 files changed, 2 insertions(+), 61 deletions(-)

diff --git a/arch/mips/dts/ar9331.dtsi b/arch/mips/dts/ar9331.dtsi
deleted file mode 100644
index 6e20bc5..0000000
--- a/arch/mips/dts/ar9331.dtsi
+++ /dev/null
@@ -1,59 +0,0 @@
-#include <dt-bindings/clock/ath79-clk.h>
-
-#include "skeleton.dtsi"
-
-/ {
-	ref: ref {
-		compatible = "fixed-clock";
-		#clock-cells = <0>;
-	};
-
-	soc {
-		#address-cells = <1>;
-		#size-cells = <1>;
-		compatible = "simple-bus";
-		device_type = "soc";
-		ranges;
-
-		uart: uart@18020000 {
-			compatible = "qca,ar9330-uart";
-			reg = <0x18020000 0x14>;
-			clocks = <&ref>;
-			clock-names = "uart";
-			status = "disabled";
-		};
-
-		gpio: gpio@18040000 {
-			compatible = "qca,ar7100-gpio";
-			gpio-controller;
-			reg = <0x18040000 0x100>;
-			#gpio-cells = <2>;
-
-			ngpios = <30>;
-			status = "disabled";
-		};
-
-		pll: pll-controller@18050000 {
-			compatible = "qca,ar9330-pll";
-			reg = <0x18050000 0x100>;
-
-			clocks = <&ref>;
-			clock-names = "ref";
-
-			#clock-cells = <1>;
-		};
-
-		spi: spi@1f000000 {
-			compatible = "qca,ar7100-spi";
-			reg = <0x1f000000 0x01000000>;
-
-			clocks = <&pll ATH79_CLK_AHB>;
-			clock-names = "ahb";
-
-			#address-cells = <1>;
-			#size-cells = <0>;
-
-			status = "disabled";
-		};
-	};
-};
diff --git a/arch/mips/dts/black-swift.dts b/arch/mips/dts/black-swift.dts
index 51e805a..af817db 100644
--- a/arch/mips/dts/black-swift.dts
+++ b/arch/mips/dts/black-swift.dts
@@ -3,7 +3,7 @@
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/input/input.h>
 
-#include "ar9331.dtsi"
+#include <mips/qca/ar9331.dtsi>
 
 / {
 	model = "Black Swift";
diff --git a/arch/mips/dts/tplink-mr3020.dts b/arch/mips/dts/tplink-mr3020.dts
index a9c3f11..831fab8 100644
--- a/arch/mips/dts/tplink-mr3020.dts
+++ b/arch/mips/dts/tplink-mr3020.dts
@@ -2,7 +2,7 @@
 
 #include <dt-bindings/gpio/gpio.h>
 
-#include "ar9331.dtsi"
+#include <mips/qca/ar9331.dtsi>
 
 / {
 	model = "TP-Link TL-MR3020";
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
