Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22c.google.com ([2a00:1450:4010:c04::22c])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WX49O-0006of-EN
 for barebox@lists.infradead.org; Mon, 07 Apr 2014 07:39:27 +0000
Received: by mail-lb0-f172.google.com with SMTP id c11so4455486lbj.31
 for <barebox@lists.infradead.org>; Mon, 07 Apr 2014 00:39:04 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon,  7 Apr 2014 11:38:47 +0400
Message-Id: <1396856329-17464-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1396856329-17464-1-git-send-email-antonynpavlov@gmail.com>
References: <1396856329-17464-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 1/3] MIPS: add Longson LS1B SoC dtsi file
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/dts/ls1b.dtsi | 43 +++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 43 insertions(+)

diff --git a/arch/mips/dts/ls1b.dtsi b/arch/mips/dts/ls1b.dtsi
new file mode 100644
index 0000000..f4ff8b6
--- /dev/null
+++ b/arch/mips/dts/ls1b.dtsi
@@ -0,0 +1,43 @@
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
+		serial0: serial@bfe40000 {
+			compatible = "ns16550a";
+			reg = <0xbfe40000 0x8>;
+			reg-shift = <0>;
+			clock-frequency = <83000000>;
+			status = "disabled";
+		};
+
+		serial1: serial@bfe44000 {
+			compatible = "ns16550a";
+			reg = <0xbfe44000 0x8>;
+			reg-shift = <0>;
+			clock-frequency = <83000000>;
+			status = "disabled";
+		};
+
+		serial2: serial@bfe48000 {
+			compatible = "ns16550a";
+			reg = <0xbfe48000 0x8>;
+			reg-shift = <0>;
+			clock-frequency = <83000000>;
+			status = "disabled";
+		};
+
+		serial3: serial@bfe4c000 {
+			compatible = "ns16550a";
+			reg = <0xbfe4c000 0x8>;
+			reg-shift = <0>;
+			clock-frequency = <83000000>;
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
