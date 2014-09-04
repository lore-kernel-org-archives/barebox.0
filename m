Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x232.google.com ([2a00:1450:400c:c00::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XPZ2m-0003Rh-N8
 for barebox@lists.infradead.org; Thu, 04 Sep 2014 15:33:53 +0000
Received: by mail-wg0-f50.google.com with SMTP id x12so10460289wgg.9
 for <barebox@lists.infradead.org>; Thu, 04 Sep 2014 08:33:24 -0700 (PDT)
From: Rostislav Lisovy <lisovy@gmail.com>
Date: Thu,  4 Sep 2014 17:33:19 +0200
Message-Id: <1409844799-10338-1-git-send-email-lisovy@gmail.com>
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
Subject: [RFC] ARM: dts: i.MX53: voipac: Provide NAND flash partition table
To: barebox@lists.infradead.org
Cc: Rostislav Lisovy <lisovy@gmail.com>, Pavel Pisa <pisa@cmp.felk.cvut.cz>

Signed-off-by: Rostislav Lisovy <lisovy@gmail.com>
---
When compiled and loaded with the "imx-usb-loader" to RAM, the command
"saveenv" and "loadenv" do work properly (i.e. "loading environment
from /dev/nand0.environment.bb"). When I flash the barebox to the NAND
with the "barebox_update" command and reboot the device, the message
"environment load /dev/env0: No such file or directory" is provided
during boot. "saveenv" and "loadenv" do not know anything about
"/dev/nand0.environment.bb" anymore and try to access the "/dev/env0".
What am I doing wrong?


 arch/arm/dts/imx53-voipac-bsb.dts      |  1 +
 arch/arm/dts/imx53-voipac-dmm-668.dtsi | 33 +++++++++++++++++++++++++++++++++
 2 files changed, 34 insertions(+)
 create mode 100644 arch/arm/dts/imx53-voipac-dmm-668.dtsi

diff --git a/arch/arm/dts/imx53-voipac-bsb.dts b/arch/arm/dts/imx53-voipac-bsb.dts
index 54c8bcd..12ce592 100644
--- a/arch/arm/dts/imx53-voipac-bsb.dts
+++ b/arch/arm/dts/imx53-voipac-bsb.dts
@@ -10,4 +10,5 @@
  */
 
 #include <arm/imx53-voipac-bsb.dts>
+#include "imx53-voipac-dmm-668.dtsi"
 #include "imx53.dtsi"
diff --git a/arch/arm/dts/imx53-voipac-dmm-668.dtsi b/arch/arm/dts/imx53-voipac-dmm-668.dtsi
new file mode 100644
index 0000000..dfff1c2
--- /dev/null
+++ b/arch/arm/dts/imx53-voipac-dmm-668.dtsi
@@ -0,0 +1,33 @@
+/ {
+	chosen {
+		linux,stdout-path = &uart1;
+
+		environment@0 {
+			compatible = "barebox,environment";
+			device-path = &nfc, "partname:environment";
+		};
+	};
+};
+
+&nfc {
+	partition@0 {
+		label = "barebox";
+		reg = <0x0 0x80000>;
+	};
+
+	partition@1 {
+		label = "environment";
+		reg = <0x80000 0x80000>;
+	};
+
+	partition@2 {
+		label = "kernel";
+		reg = <0x100000 0x400000>;
+	};
+
+	partition@3 {
+		label = "rootfs";
+		reg = <0x500000 0x07B00000>;
+	};
+};
+
-- 
2.0.0.rc4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
