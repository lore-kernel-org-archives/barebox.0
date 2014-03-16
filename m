Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22a.google.com ([2a00:1450:4010:c03::22a])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WPBRC-0003QW-9A
 for barebox@lists.infradead.org; Sun, 16 Mar 2014 13:49:15 +0000
Received: by mail-la0-f42.google.com with SMTP id ec20so3027253lab.29
 for <barebox@lists.infradead.org>; Sun, 16 Mar 2014 06:48:54 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sun, 16 Mar 2014 17:48:17 +0400
Message-Id: <1394977701-5889-7-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1394977701-5889-1-git-send-email-antonynpavlov@gmail.com>
References: <1394977701-5889-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v2 06/10] ARM: dts: Add TI TMS320DM365 devicetree file
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/arm/dts/dm365.dtsi | 28 ++++++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/arch/arm/dts/dm365.dtsi b/arch/arm/dts/dm365.dtsi
new file mode 100644
index 0000000..ea69007
--- /dev/null
+++ b/arch/arm/dts/dm365.dtsi
@@ -0,0 +1,28 @@
+#include "skeleton.dtsi"
+
+/ {
+	soc {
+		compatible = "simple-bus";
+		model = "TI TMS320DM365";
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges = <0x0 0x01c00000 0x400000>;
+
+		serial0: serial@1c20000 {
+			compatible = "ns16550a";
+			reg = <0x20000 0x400>;
+			reg-shift = <2>;
+			clock-frequency = <24000000>;
+			status = "disabled";
+		};
+
+		gpio: gpio@1c67000 {
+			compatible = "ti,dm6441-gpio";
+			gpio-controller;
+			reg = <0x67000 0x800>;
+			#gpio-cells = <2>;
+			ti,ngpio = <107>;
+			status = "disabled";
+		};
+	};
+};
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
