Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlqZn-0001xH-2z
 for barebox@lists.infradead.org; Thu, 18 Jun 2020 09:11:18 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 18 Jun 2020 11:11:00 +0200
Message-Id: <20200618091102.30150-14-a.fatoum@pengutronix.de>
In-Reply-To: <20200618091102.30150-1-a.fatoum@pengutronix.de>
References: <20200618091102.30150-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 13/15] ARM: zynqmp: dts: drop now superfluous zynqmp.dtsi
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

zynqmp.dtsi's only node is now available in the upstream dtsi at same
path and same contents, so we can drop the file again.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/dts/zynqmp-zcu104-revA.dts |  1 -
 arch/arm/dts/zynqmp.dtsi            | 17 -----------------
 2 files changed, 18 deletions(-)
 delete mode 100644 arch/arm/dts/zynqmp.dtsi

diff --git a/arch/arm/dts/zynqmp-zcu104-revA.dts b/arch/arm/dts/zynqmp-zcu104-revA.dts
index c03112d7a02d..8b8dd84c1dc3 100644
--- a/arch/arm/dts/zynqmp-zcu104-revA.dts
+++ b/arch/arm/dts/zynqmp-zcu104-revA.dts
@@ -8,5 +8,4 @@
  */
 
 #include <arm64/xilinx/zynqmp-zcu104-revA.dts>
-#include "zynqmp.dtsi"
 #include "zynqmp-clk.dtsi"
diff --git a/arch/arm/dts/zynqmp.dtsi b/arch/arm/dts/zynqmp.dtsi
deleted file mode 100644
index 59984ee75891..000000000000
--- a/arch/arm/dts/zynqmp.dtsi
+++ /dev/null
@@ -1,17 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0+
-/*
- * dts file for Xilinx ZynqMP
- *
- * (C) Copyright 2014 - 2015, Xilinx, Inc.
- *
- * Michal Simek <michal.simek@xilinx.com>
- */
-
-/ {
-	firmware {
-		zynqmp_firmware: zynqmp-firmware {
-			compatible = "xlnx,zynqmp-firmware";
-			method = "smc";
-		};
-	};
-};
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
