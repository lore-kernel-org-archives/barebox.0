Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJLvb-0002lq-Kc
 for barebox@lists.infradead.org; Tue, 31 Mar 2020 18:48:02 +0000
Received: by mail-pf1-x441.google.com with SMTP id 22so10734354pfa.9
 for <barebox@lists.infradead.org>; Tue, 31 Mar 2020 11:47:57 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 31 Mar 2020 11:47:17 -0700
Message-Id: <20200331184722.22707-19-andrew.smirnov@gmail.com>
In-Reply-To: <20200331184722.22707-1-andrew.smirnov@gmail.com>
References: <20200331184722.22707-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 18/23] ARM: imx8mq: Drop redundant DT nodes
To: Barebox List <barebox@lists.infradead.org>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Drop all of the aliases and themrmal-zone nodes in imx8mq.dtsi since
those nodes are now present in upstream DT file.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/dts/imx8mq.dtsi | 97 ----------------------------------------
 1 file changed, 97 deletions(-)

diff --git a/arch/arm/dts/imx8mq.dtsi b/arch/arm/dts/imx8mq.dtsi
index 936e48610..44a86c715 100644
--- a/arch/arm/dts/imx8mq.dtsi
+++ b/arch/arm/dts/imx8mq.dtsi
@@ -4,108 +4,11 @@
  * Copyright (C) 2017 Pengutronix, Lucas Stach <kernel@pengutronix.de>
  */
 
-#include <dt-bindings/reset/imx8mq-reset.h>
-#include <dt-bindings/thermal/thermal.h>
-
 / {
 	aliases {
-		gpio0 = &gpio1;
-		gpio1 = &gpio2;
-		gpio2 = &gpio3;
-		gpio3 = &gpio4;
-		gpio4 = &gpio5;
 		mmc0 = &usdhc1;
 		mmc1 = &usdhc2;
 	};
-
-	thermal-zones {
-		cpu-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <2000>;
-			thermal-sensors = <&tmu>;
-
-			trips {
-				cpu_alert0: trip0 {
-					temperature = <85000>;
-					hysteresis = <2000>;
-					type = "passive";
-				};
-
-				cpu_crit0: trip1 {
-					temperature = <95000>;
-					hysteresis = <2000>;
-					type = "critical";
-				};
-			};
-
-			cooling-maps {
-				map0 {
-					trip = <&cpu_alert0>;
-					cooling-device = <&A53_0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
-				};
-			};
-		};
-	};
-
-	soc@0 {
-		bus@30000000 {
-			tmu: tmu@30260000 {
-				compatible = "fsl,imx8mq-tmu";
-				reg = <0x30260000 0x10000>;
-				interrupt = <GIC_SPI 49 IRQ_TYPE_LEVEL_HIGH>;
-				little-endian;
-				fsl,tmu-range = <0xb0000 0xa0026 0x80048 0x70061>;
-				fsl,tmu-calibration = <0x00000000 0x00000023
-				                       0x00000001 0x00000029
-				                       0x00000002 0x0000002f
-				                       0x00000003 0x00000035
-				                       0x00000004 0x0000003d
-				                       0x00000005 0x00000043
-				                       0x00000006 0x0000004b
-				                       0x00000007 0x00000051
-				                       0x00000008 0x00000057
-				                       0x00000009 0x0000005f
-				                       0x0000000a 0x00000067
-				                       0x0000000b 0x0000006f
-
-				                       0x00010000 0x0000001b
-				                       0x00010001 0x00000023
-				                       0x00010002 0x0000002b
-				                       0x00010003 0x00000033
-				                       0x00010004 0x0000003b
-				                       0x00010005 0x00000043
-				                       0x00010006 0x0000004b
-				                       0x00010007 0x00000055
-				                       0x00010008 0x0000005d
-				                       0x00010009 0x00000067
-				                       0x0001000a 0x00000070
-
-				                       0x00020000 0x00000017
-				                       0x00020001 0x00000023
-				                       0x00020002 0x0000002d
-				                       0x00020003 0x00000037
-				                       0x00020004 0x00000041
-				                       0x00020005 0x0000004b
-				                       0x00020006 0x00000057
-				                       0x00020007 0x00000063
-				                       0x00020008 0x0000006f
-
-				                       0x00030000 0x00000015
-				                       0x00030001 0x00000021
-				                       0x00030002 0x0000002d
-				                       0x00030003 0x00000039
-				                       0x00030004 0x00000045
-				                       0x00030005 0x00000053
-				                       0x00030006 0x0000005f
-				                       0x00030007 0x00000071>;
-				#thermal-sensor-cells =  <0>;
-			};
-		};
-	};
-};
-
-&A53_0 {
-	#cooling-cells = <2>;
 };
 
 &clk {
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
