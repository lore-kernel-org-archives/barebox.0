Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x22c.google.com ([2a00:1450:400c:c03::22c])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XPZDG-0008G3-Rx
 for barebox@lists.infradead.org; Thu, 04 Sep 2014 15:44:43 +0000
Received: by mail-we0-f172.google.com with SMTP id q59so10430570wes.17
 for <barebox@lists.infradead.org>; Thu, 04 Sep 2014 08:44:18 -0700 (PDT)
From: Rostislav Lisovy <lisovy@gmail.com>
Date: Thu,  4 Sep 2014 17:44:11 +0200
Message-Id: <1409845451-13238-1-git-send-email-lisovy@gmail.com>
In-Reply-To: <1409844799-10338-1-git-send-email-lisovy@gmail.com>
References: <1409844799-10338-1-git-send-email-lisovy@gmail.com>
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
Subject: [PATCH] ARM: dts: i.MX53: voipac: Provide NAND flash partition table
To: barebox@lists.infradead.org
Cc: Rostislav Lisovy <lisovy@gmail.com>, Pavel Pisa <pisa@cmp.felk.cvut.cz>

Signed-off-by: Rostislav Lisovy <lisovy@gmail.com>
---
This is a bit embarrassing but please ignore my previous email.
Everything works just fine, I was constantly flashing the old binary
without the partition table :-)

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
