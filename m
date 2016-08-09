Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bX6IE-00078p-QD
 for barebox@lists.infradead.org; Tue, 09 Aug 2016 12:38:06 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Tue,  9 Aug 2016 14:37:29 +0200
Message-Id: <1470746252-3146-4-git-send-email-s.trumtrar@pengutronix.de>
In-Reply-To: <1470746252-3146-1-git-send-email-s.trumtrar@pengutronix.de>
References: <1470746252-3146-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 4/7] socfpga: remove dt entries that are upstream
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/dts/socfpga_cyclone5_socrates.dts | 34 ------------------------------
 1 file changed, 34 deletions(-)

diff --git a/arch/arm/dts/socfpga_cyclone5_socrates.dts b/arch/arm/dts/socfpga_cyclone5_socrates.dts
index 95cdf5d3d5bd..12b3fa5dae40 100644
--- a/arch/arm/dts/socfpga_cyclone5_socrates.dts
+++ b/arch/arm/dts/socfpga_cyclone5_socrates.dts
@@ -19,43 +19,9 @@
 #include "socfpga.dtsi"
 
 / {
-	model = "EBV SoCrates";
-	compatible = "ebv,socrates", "altr,socfpga";
-
 	chosen {
 		stdout-path = &uart0;
 	};
-
-	leds: gpio-leds {
-	};
-};
-
-&gpio0 {
-	status = "okay";
-};
-
-&gpio1 {
-	status = "okay";
-};
-
-&leds {
-	compatible = "gpio-leds";
-
-	led@0 {
-		label = "0";
-		gpios = <&porta 28 1>;
-		linux,default-trigger = "heartbeat";
-	};
-
-	led@1 {
-		label = "1";
-		gpios = <&portb 19 1>;
-	};
-
-	led@2 {
-		label = "2";
-		gpios = <&portb 25 1>;
-	};
 };
 
 &qspi {
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
