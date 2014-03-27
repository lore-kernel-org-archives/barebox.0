Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x230.google.com ([2a00:1450:4010:c03::230])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WTHpg-00025y-0I
 for barebox@lists.infradead.org; Thu, 27 Mar 2014 21:27:32 +0000
Received: by mail-la0-f48.google.com with SMTP id gf5so3031998lab.7
 for <barebox@lists.infradead.org>; Thu, 27 Mar 2014 14:27:06 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 28 Mar 2014 01:26:41 +0400
Message-Id: <1395955604-12826-7-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1395955604-12826-1-git-send-email-antonynpavlov@gmail.com>
References: <1395955604-12826-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 6/9] MIPS: ath79: ar9331: add devicetree files
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/dts/ar9331.dtsi         | 26 ++++++++++++++++++++++++++
 arch/mips/dts/include/dt-bindings |  1 +
 2 files changed, 27 insertions(+)

diff --git a/arch/mips/dts/ar9331.dtsi b/arch/mips/dts/ar9331.dtsi
new file mode 100644
index 0000000..890fda8
--- /dev/null
+++ b/arch/mips/dts/ar9331.dtsi
@@ -0,0 +1,26 @@
+#include <dt-bindings/clock/ar933x-clk.h>
+
+#include "skeleton.dtsi"
+
+/ {
+	soc {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		compatible = "simple-bus";
+		device_type = "soc";
+		ranges;
+
+		serial0: serial@b8020000 {
+			compatible = "qca,ar9330-uart";
+			reg = <0xb8020000 0x14>;
+			clocks = <&ar9331_clk AR933X_CLK_UART>;
+			status = "disabled";
+		};
+
+		ar9331_clk: clock {
+			compatible = "qca,ar933x-clk";
+			reg = <0xb8050000 0x48>;
+			#clock-cells = <1>;
+		};
+	};
+};
diff --git a/arch/mips/dts/include/dt-bindings b/arch/mips/dts/include/dt-bindings
new file mode 120000
index 0000000..0cecb3d
--- /dev/null
+++ b/arch/mips/dts/include/dt-bindings
@@ -0,0 +1 @@
+../../../../include/dt-bindings
\ No newline at end of file
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
