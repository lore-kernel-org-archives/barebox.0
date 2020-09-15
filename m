Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kIA21-0007nh-U5
 for barebox@lists.infradead.org; Tue, 15 Sep 2020 12:25:59 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 15 Sep 2020 14:25:30 +0200
Message-Id: <20200915122539.18744-2-s.hauer@pengutronix.de>
In-Reply-To: <20200915122539.18744-1-s.hauer@pengutronix.de>
References: <20200915122539.18744-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/10] ARM: dts: beaglebone: Remove unnecessary tps65217.dtsi
To: Barebox List <barebox@lists.infradead.org>

tps65217.dtsi should be used from the upstream dts sources instead.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/tps65217.dtsi | 56 --------------------------------------
 1 file changed, 56 deletions(-)
 delete mode 100644 arch/arm/dts/tps65217.dtsi

diff --git a/arch/arm/dts/tps65217.dtsi b/arch/arm/dts/tps65217.dtsi
deleted file mode 100644
index a63272422d..0000000000
--- a/arch/arm/dts/tps65217.dtsi
+++ /dev/null
@@ -1,56 +0,0 @@
-/*
- * Copyright (C) 2012 Texas Instruments Incorporated - http://www.ti.com/
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- */
-
-/*
- * Integrated Power Management Chip
- * http://www.ti.com/lit/ds/symlink/tps65217.pdf
- */
-
-&tps {
-	compatible = "ti,tps65217";
-
-	regulators {
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		dcdc1_reg: regulator@0 {
-			reg = <0>;
-			regulator-compatible = "dcdc1";
-		};
-
-		dcdc2_reg: regulator@1 {
-			reg = <1>;
-			regulator-compatible = "dcdc2";
-		};
-
-		dcdc3_reg: regulator@2 {
-			reg = <2>;
-			regulator-compatible = "dcdc3";
-		};
-
-		ldo1_reg: regulator@3 {
-			reg = <3>;
-			regulator-compatible = "ldo1";
-		};
-
-		ldo2_reg: regulator@4 {
-			reg = <4>;
-			regulator-compatible = "ldo2";
-		};
-
-		ldo3_reg: regulator@5 {
-			reg = <5>;
-			regulator-compatible = "ldo3";
-		};
-
-		ldo4_reg: regulator@6 {
-			reg = <6>;
-			regulator-compatible = "ldo4";
-		};
-	};
-};
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
