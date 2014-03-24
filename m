Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22f.google.com ([2a00:1450:4010:c04::22f])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WSBGN-0002Ph-LU
 for barebox@lists.infradead.org; Mon, 24 Mar 2014 20:14:28 +0000
Received: by mail-lb0-f175.google.com with SMTP id w7so3999313lbi.6
 for <barebox@lists.infradead.org>; Mon, 24 Mar 2014 13:14:05 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 25 Mar 2014 00:13:48 +0400
Message-Id: <1395692034-5821-3-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1395692034-5821-1-git-send-email-antonynpavlov@gmail.com>
References: <1395692034-5821-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v2 2/8] MIPS: dts: rzx50: move jz4755 description to the
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
