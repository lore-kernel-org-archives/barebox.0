Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-eopbgr140052.outbound.protection.outlook.com
 ([40.107.14.52] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNaKX-0004BG-HR
 for barebox@lists.infradead.org; Thu, 24 Oct 2019 10:26:59 +0000
From: =?iso-8859-1?Q?Thomas_H=E4mmerle?= <Thomas.Haemmerle@wolfvision.net>
Date: Thu, 24 Oct 2019 10:26:50 +0000
Message-ID: <1571912781-17152-2-git-send-email-thomas.haemmerle@wolfvision.net>
References: <1571912781-17152-1-git-send-email-thomas.haemmerle@wolfvision.net>
In-Reply-To: <1571912781-17152-1-git-send-email-thomas.haemmerle@wolfvision.net>
Content-Language: en-US
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
Subject: [PATCH 1/5] ARM: zynqmp: dts: move firmware node to src tree
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Cc: Michael Tretter <m.tretter@pengutronix.de>

From: Michael Tretter <m.tretter@pengutronix.de>

The firmware node will be added to the mainline device tree. As it will
eventually enter Barebox via a device tree sync, add it to the src tree
already.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 arch/arm/dts/zynqmp-zcu104-revA.dts |  1 -
 arch/arm/dts/zynqmp.dtsi            | 17 -----------------
 dts/src/arm64/xilinx/zynqmp.dtsi    |  7 +++++++
 3 files changed, 7 insertions(+), 18 deletions(-)
 delete mode 100644 arch/arm/dts/zynqmp.dtsi

diff --git a/arch/arm/dts/zynqmp-zcu104-revA.dts b/arch/arm/dts/zynqmp-zcu104-revA.dts
index c03112d..8b8dd84 100644
--- a/arch/arm/dts/zynqmp-zcu104-revA.dts
+++ b/arch/arm/dts/zynqmp-zcu104-revA.dts
@@ -8,5 +8,4 @@
  */
 
 #include <arm64/xilinx/zynqmp-zcu104-revA.dts>
-#include "zynqmp.dtsi"
 #include "zynqmp-clk.dtsi"
diff --git a/arch/arm/dts/zynqmp.dtsi b/arch/arm/dts/zynqmp.dtsi
deleted file mode 100644
index 59984ee..0000000
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
diff --git a/dts/src/arm64/xilinx/zynqmp.dtsi b/dts/src/arm64/xilinx/zynqmp.dtsi
index 9aa6734..9115eae 100644
--- a/dts/src/arm64/xilinx/zynqmp.dtsi
+++ b/dts/src/arm64/xilinx/zynqmp.dtsi
@@ -115,6 +115,13 @@
 		method = "smc";
 	};
 
+	firmware {
+		zynqmp_firmware: zynqmp-firmware {
+			compatible = "xlnx,zynqmp-firmware";
+			method = "smc";
+		};
+	};
+
 	timer {
 		compatible = "arm,armv8-timer";
 		interrupt-parent = <&gic>;
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
