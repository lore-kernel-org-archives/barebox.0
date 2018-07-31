Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fkS9F-00084o-1c
 for barebox@lists.infradead.org; Tue, 31 Jul 2018 10:45:07 +0000
Received: from unicorn.hi.pengutronix.de
 ([2001:67c:670:100:a61f:72ff:fe69:16d] helo=unicorn)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <str@pengutronix.de>) id 1fkS91-0001CT-Ng
 for barebox@lists.infradead.org; Tue, 31 Jul 2018 12:44:47 +0200
Received: from str by unicorn with local (Exim 4.89)
 (envelope-from <str@pengutronix.de>) id 1fkS99-0000es-4i
 for barebox@lists.infradead.org; Tue, 31 Jul 2018 12:44:55 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Tue, 31 Jul 2018 12:44:36 +0200
Message-Id: <20180731104442.2451-14-s.trumtrar@pengutronix.de>
In-Reply-To: <20180731104442.2451-1-s.trumtrar@pengutronix.de>
References: <20180731104442.2451-1-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 13/19] ARM: dts: socfpga: Fix achilles dtc warnings
To: Barebox List <barebox@lists.infradead.org>

The newer dtc has stricter checks on devicetrees. Fix the warnings.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/dts/socfpga_arria10_achilles.dts | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm/dts/socfpga_arria10_achilles.dts b/arch/arm/dts/socfpga_arria10_achilles.dts
index dd991318e249..0af7809adcce 100644
--- a/arch/arm/dts/socfpga_arria10_achilles.dts
+++ b/arch/arm/dts/socfpga_arria10_achilles.dts
@@ -26,16 +26,16 @@
 	};
 
 	chosen {
-		linux,stdout-path = &uart0;
+		stdout-path = &uart0;
 
-		environment@0 {
+		environment {
 			compatible = "barebox,environment";
 			device-path = &mmc, "partname:1";
 			file-path = "barebox.env";
 		};
 	};
 
-	memory {
+	memory@0 {
 		name = "memory";
 		device_type = "memory";
 		reg = <0x0 0xc0000000>;
@@ -93,17 +93,17 @@
 &i2c0 {
 	status = "okay";
 
-	tempsensor: ti,tmp102@0x48 {
+	tempsensor: ti,tmp102@48 {
 		compatible = "ti,tmp102";
 		reg = <0x48>;
 	};
 
-	rtc: nxp,pcf8563@0x51 {
+	rtc: nxp,pcf8563@51 {
 		compatible = "nxp,pcf8563";
 		reg = <0x51>;
 	};
 
-	eeprom: at24@0x54 {
+	eeprom: at24@54 {
 		compatible = "at24";
 		reg = <0x54>;
 		bytelen = <256>;
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
