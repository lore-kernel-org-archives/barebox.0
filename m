Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x230.google.com ([2a00:1450:4010:c04::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XRcYU-0003xO-NO
 for barebox@lists.infradead.org; Wed, 10 Sep 2014 07:43:07 +0000
Received: by mail-lb0-f176.google.com with SMTP id z11so6884417lbi.35
 for <barebox@lists.infradead.org>; Wed, 10 Sep 2014 00:42:44 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 10 Sep 2014 11:42:23 +0400
Message-Id: <1410334946-12922-7-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 6/9] MIPS: dts: add jz4780.dtsi
To: barebox@lists.infradead.org

Based on file from https://github.com/MIPS/CI20_linux/tree/ci20-v3.16

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/dts/jz4780.dtsi | 56 +++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 56 insertions(+)

diff --git a/arch/mips/dts/jz4780.dtsi b/arch/mips/dts/jz4780.dtsi
new file mode 100644
index 0000000..9f0de5d
--- /dev/null
+++ b/arch/mips/dts/jz4780.dtsi
@@ -0,0 +1,56 @@
+#include "skeleton.dtsi"
+
+/ {
+	soc {
+		model = "Ingenic JZ4780";
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
+			clock-frequency = <48000000>;
+			status = "disabled";
+		};
+
+		uart1: serial@10031000 {
+			compatible = "ingenic,jz4740-uart";
+			reg = <0x10031000 0x100>;
+			reg-shift = <2>;
+			clock-frequency = <48000000>;
+			status = "disabled";
+		};
+
+		uart2: serial@10032000 {
+			compatible = "ingenic,jz4740-uart";
+			reg = <0x10032000 0x100>;
+			reg-shift = <2>;
+			clock-frequency = <48000000>;
+			status = "disabled";
+		};
+
+		uart3: serial@10033000 {
+			compatible = "ingenic,jz4740-uart";
+			reg = <0x10033000 0x100>;
+			reg-shift = <2>;
+			clock-frequency = <48000000>;
+			status = "disabled";
+		};
+
+		uart4: serial@10034000 {
+			compatible = "ingenic,jz4740-uart";
+			reg = <0x10034000 0x100>;
+			reg-shift = <2>;
+			clock-frequency = <48000000>;
+			status = "disabled";
+		};
+	};
+};
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
