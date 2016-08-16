Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x241.google.com ([2a00:1450:400c:c09::241])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bZm2K-000257-9n
 for barebox@lists.infradead.org; Tue, 16 Aug 2016 21:36:41 +0000
Received: by mail-wm0-x241.google.com with SMTP id o80so18653840wme.0
 for <barebox@lists.infradead.org>; Tue, 16 Aug 2016 14:36:19 -0700 (PDT)
Received: from localhost.localdomain
 (broadband-95-84-154-9.nationalcablenetworks.ru. [95.84.154.9])
 by smtp.gmail.com with ESMTPSA id 90sm4470077lfs.7.2016.08.16.14.36.17
 for <barebox@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 16 Aug 2016 14:36:17 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 17 Aug 2016 00:36:09 +0300
Message-Id: <1471383369-23015-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] MIPS: dts: reuse TP-LINK MR3020 dts file from linux
To: barebox@lists.infradead.org

At the moment barebox tplink-mr3020.dts file has almost
the same content as linux ar9331_tl_mr3020.dts file
so we can reuse linux dts-file and drop duplicated lines
from barebox dts-file.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/dts/tplink-mr3020.dts | 68 +----------------------------------------
 1 file changed, 1 insertion(+), 67 deletions(-)

diff --git a/arch/mips/dts/tplink-mr3020.dts b/arch/mips/dts/tplink-mr3020.dts
index 831fab8..1e843ee 100644
--- a/arch/mips/dts/tplink-mr3020.dts
+++ b/arch/mips/dts/tplink-mr3020.dts
@@ -1,73 +1,7 @@
-/dts-v1/;
-
-#include <dt-bindings/gpio/gpio.h>
-
-#include <mips/qca/ar9331.dtsi>
+#include <mips/qca/ar9331_tl_mr3020.dts>
 
 / {
-	model = "TP-Link TL-MR3020";
-	compatible = "tplink,tl-mr3020";
-
 	aliases {
 		spiflash = &spiflash;
 	};
-
-	memory@0 {
-		device_type = "memory";
-		reg = <0x00000000 0x2000000>;
-	};
-
-	leds {
-		compatible = "gpio-leds";
-
-		wlan {
-			label = "tp-link:green:wlan";
-			gpios = <&gpio 0 GPIO_ACTIVE_HIGH>;
-			default-state = "off";
-		};
-
-		lan {
-			label = "tp-link:green:lan";
-			gpios = <&gpio 17 GPIO_ACTIVE_LOW>;
-			default-state = "off";
-		};
-
-		wps {
-			label = "tp-link:green:wps";
-			gpios = <&gpio 26 GPIO_ACTIVE_LOW>;
-			default-state = "off";
-		};
-
-		led3g {
-			label = "tp-link:green:3g";
-			gpios = <&gpio 27 GPIO_ACTIVE_LOW>;
-			default-state = "off";
-		};
-	};
-};
-
-&ref {
-	clock-frequency = <25000000>;
-};
-
-&uart {
-	status = "okay";
-};
-
-&gpio {
-	status = "okay";
-};
-
-&spi {
-	num-chipselects = <1>;
-	status = "okay";
-
-	/* Spansion S25FL032PIF SPI flash */
-	spiflash: s25sl032p@0 {
-		#address-cells = <1>;
-		#size-cells = <1>;
-		compatible = "spansion,s25sl032p", "jedec,spi-nor";
-		spi-max-frequency = <104000000>;
-		reg = <0>;
-	};
 };
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
