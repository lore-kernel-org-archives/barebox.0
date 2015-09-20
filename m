Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22b.google.com ([2a00:1450:4010:c04::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZdnyA-0006E2-Es
 for barebox@lists.infradead.org; Sun, 20 Sep 2015 23:24:31 +0000
Received: by lbpo4 with SMTP id o4so43633200lbp.2
 for <barebox@lists.infradead.org>; Sun, 20 Sep 2015 16:24:08 -0700 (PDT)
Received: from localhost.localdomain (ppp79-139-254-180.pppoe.spdop.ru.
 [79.139.254.180])
 by smtp.gmail.com with ESMTPSA id x1sm3091424lbb.32.2015.09.20.16.24.08
 for <barebox@lists.infradead.org>
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 20 Sep 2015 16:24:08 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon, 21 Sep 2015 02:23:53 +0300
Message-Id: <1442791433-10892-11-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1442791433-10892-1-git-send-email-antonynpavlov@gmail.com>
References: <1442791433-10892-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC v2 10/10] WIP: MIPS: black-swift: use GPIO
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/boot/start.S        |  2 ++
 arch/mips/dts/black-swift.dts | 26 ++++++++++++++++++++++++++
 2 files changed, 28 insertions(+)

diff --git a/arch/mips/boot/start.S b/arch/mips/boot/start.S
index 1ddce95..d6449e1 100644
--- a/arch/mips/boot/start.S
+++ b/arch/mips/boot/start.S
@@ -34,6 +34,8 @@ EXPORT(_start)
 
 	mips_disable_interrupts
 
+	pbl_reg_set (1 << 18), 0xb80600ac
+
 	copy_to_link_location _start
 
 	stack_setup
diff --git a/arch/mips/dts/black-swift.dts b/arch/mips/dts/black-swift.dts
index 270374d..e2d1271 100644
--- a/arch/mips/dts/black-swift.dts
+++ b/arch/mips/dts/black-swift.dts
@@ -1,6 +1,8 @@
 /dts-v1/;
 
 #include "ar9331.dtsi"
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
 
 / {
 	model = "Black Swift";
@@ -13,6 +15,26 @@
 	aliases {
 		spiflash = &spiflash;
 	};
+
+	buttons {
+		compatible = "gpio-keys";
+
+		s1 {
+			label = "S1";
+			gpios = <&gpio 11 GPIO_ACTIVE_LOW>;
+			linux,code = <KEY_UP>;
+		};
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		s1 {
+			label = "LED1";
+			gpios = <&gpio 27 GPIO_ACTIVE_LOW>;
+			default-state = "off";
+		};
+	};
 };
 
 &serial0 {
@@ -32,3 +54,7 @@
 		reg = <0>;
 	};
 };
+
+&gpio {
+	status = "okay";
+};
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
