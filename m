Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x241.google.com ([2a00:1450:4010:c07::241])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1bCa95-0001y6-CL
 for barebox@lists.infradead.org; Mon, 13 Jun 2016 22:15:49 +0000
Received: by mail-lf0-x241.google.com with SMTP id w130so9244611lfd.2
 for <barebox@lists.infradead.org>; Mon, 13 Jun 2016 15:15:28 -0700 (PDT)
Received: from localhost.localdomain (ppp109-252-109-196.pppoe.spdop.ru.
 [109.252.109.196])
 by smtp.gmail.com with ESMTPSA id k6sm1295064lbd.49.2016.06.13.15.15.26
 for <barebox@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 13 Jun 2016 15:15:26 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 14 Jun 2016 01:15:06 +0300
Message-Id: <1465856107-24133-6-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1465856107-24133-1-git-send-email-antonynpavlov@gmail.com>
References: <1465856107-24133-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 5/6] MIPS: ath79: dts: tplink-mr3020.dts: sync with linux
 v4.7-rc2
To: barebox@lists.infradead.org

Also sync black-swift.dts with tplink-mr3020.dts.

And also see this linux kernel commit:

    commit 2c3694d2e6ead3964aafb31e4e529de219ced92b
    Author: Antony Pavlov <antonynpavlov@gmail.com>
    Date:   Thu Mar 17 06:34:19 2016 +0300

        MIPS: ath79: add initial support for TP-LINK MR3020

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/dts/black-swift.dts   | 16 +++++++++-------
 arch/mips/dts/tplink-mr3020.dts | 20 +++++++++++---------
 2 files changed, 20 insertions(+), 16 deletions(-)

diff --git a/arch/mips/dts/black-swift.dts b/arch/mips/dts/black-swift.dts
index 6be228d..51e805a 100644
--- a/arch/mips/dts/black-swift.dts
+++ b/arch/mips/dts/black-swift.dts
@@ -1,21 +1,23 @@
 /dts-v1/;
 
-#include "ar9331.dtsi"
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/input/input.h>
 
+#include "ar9331.dtsi"
+
 / {
 	model = "Black Swift";
 	compatible = "smartlx,black-swift";
 
-	memory {
-		reg = <0x00000000 0x4000000>;
-	};
-
 	aliases {
 		spiflash = &spiflash;
 	};
 
+	memory@0 {
+		device_type = "memory";
+		reg = <0x00000000 0x4000000>;
+	};
+
 	buttons {
 		compatible = "gpio-keys";
 
@@ -54,10 +56,10 @@
 	status = "okay";
 
 	/* Winbond W25Q128FV SPI flash */
-	spiflash: m25p80@0 {
+	spiflash: w25q128@0 {
 		#address-cells = <1>;
 		#size-cells = <1>;
-		compatible = "m25p80";
+		compatible = "winbond,w25q128", "jedec,spi-nor";
 		spi-max-frequency = <104000000>;
 		reg = <0>;
 	};
diff --git a/arch/mips/dts/tplink-mr3020.dts b/arch/mips/dts/tplink-mr3020.dts
index f6799f1..a9c3f11 100644
--- a/arch/mips/dts/tplink-mr3020.dts
+++ b/arch/mips/dts/tplink-mr3020.dts
@@ -1,20 +1,22 @@
 /dts-v1/;
 
-#include "ar9331.dtsi"
 #include <dt-bindings/gpio/gpio.h>
 
-/ {
-	model = "TP-LINK MR3020";
-	compatible = "tplink,mr3020";
+#include "ar9331.dtsi"
 
-	memory {
-		reg = <0x00000000 0x2000000>;
-	};
+/ {
+	model = "TP-Link TL-MR3020";
+	compatible = "tplink,tl-mr3020";
 
 	aliases {
 		spiflash = &spiflash;
 	};
 
+	memory@0 {
+		device_type = "memory";
+		reg = <0x00000000 0x2000000>;
+	};
+
 	leds {
 		compatible = "gpio-leds";
 
@@ -61,10 +63,10 @@
 	status = "okay";
 
 	/* Spansion S25FL032PIF SPI flash */
-	spiflash: m25p80@0 {
+	spiflash: s25sl032p@0 {
 		#address-cells = <1>;
 		#size-cells = <1>;
-		compatible = "m25p80";
+		compatible = "spansion,s25sl032p", "jedec,spi-nor";
 		spi-max-frequency = <104000000>;
 		reg = <0>;
 	};
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
