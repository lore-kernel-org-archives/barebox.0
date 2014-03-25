Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x229.google.com ([2a00:1450:4010:c04::229])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WSUZX-0001pP-Vh
 for barebox@lists.infradead.org; Tue, 25 Mar 2014 16:51:32 +0000
Received: by mail-lb0-f169.google.com with SMTP id q8so602287lbi.0
 for <barebox@lists.infradead.org>; Tue, 25 Mar 2014 09:51:09 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 25 Mar 2014 20:50:52 +0400
Message-Id: <1395766259-31866-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1395766259-31866-1-git-send-email-antonynpavlov@gmail.com>
References: <1395766259-31866-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v3 1/8] MIPS: dts: rzx50: move jz4755 description to the
 separate file
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/dts/jz4755.dtsi | 35 +++++++++++++++++++++++++++++++++++
 arch/mips/dts/rzx50.dts   |  8 +++++++-
 2 files changed, 42 insertions(+), 1 deletion(-)

diff --git a/arch/mips/dts/jz4755.dtsi b/arch/mips/dts/jz4755.dtsi
new file mode 100644
index 0000000..44ff912
--- /dev/null
+++ b/arch/mips/dts/jz4755.dtsi
@@ -0,0 +1,35 @@
+#include "skeleton.dtsi"
+
+/ {
+	soc {
+		compatible = "simple-bus";
+		model = "Ingenic JZ4755";
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges;
+
+		serial0: serial@b0030000 {
+			compatible = "ingenic,jz4740-uart";
+			reg = <0xb0030000 0x20>;
+			reg-shift = <2>;
+			clock-frequency = <12000000>;
+			status = "disabled";
+		};
+
+		serial1: serial@b0031000 {
+			compatible = "ingenic,jz4740-uart";
+			reg = <0xb0031000 0x20>;
+			reg-shift = <2>;
+			clock-frequency = <12000000>;
+			status = "disabled";
+		};
+
+		serial2: serial@b0032000 {
+			compatible = "ingenic,jz4740-uart";
+			reg = <0xb0032000 0x20>;
+			reg-shift = <2>;
+			clock-frequency = <12000000>;
+			status = "disabled";
+		};
+	};
+};
diff --git a/arch/mips/dts/rzx50.dts b/arch/mips/dts/rzx50.dts
index 69320dd..78103e3 100644
--- a/arch/mips/dts/rzx50.dts
+++ b/arch/mips/dts/rzx50.dts
@@ -1,6 +1,6 @@
 /dts-v1/;
 
-/include/ "skeleton.dtsi"
+#include "jz4755.dtsi"
 
 / {
 	model = "Ritmix RZX-50";
@@ -9,4 +9,10 @@
 	memory {
 		reg = <0x00000000 0x4000000>;
 	};
+
+	soc {
+		serial1: serial@b0031000 {
+			status = "okay";
+		};
+	};
 };
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
