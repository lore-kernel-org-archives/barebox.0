Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h3eWq-0006tT-El
 for barebox@lists.infradead.org; Tue, 12 Mar 2019 10:21:03 +0000
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Tue, 12 Mar 2019 11:20:54 +0100
Message-Id: <20190312102055.12386-6-m.tretter@pengutronix.de>
In-Reply-To: <20190312102055.12386-1-m.tretter@pengutronix.de>
References: <20190312102055.12386-1-m.tretter@pengutronix.de>
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
Subject: [PATCH 5/6] ARM: zynqmp: add firmware DT node
To: barebox@lists.infradead.org
Cc: Thomas Haemmerle <thomas.haemmerle@wolfvision.net>, Michael Tretter <m.tretter@pengutronix.de>

From: Thomas Haemmerle <thomas.haemmerle@wolfvision.net>

Add firmware DT node in ZynqMP device tree. This node uses bindings as
per new firmware interface driver.

Signed-off-by: Thomas Haemmerle <thomas.haemmerle@wolfvision.net>
Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 arch/arm/dts/zynqmp-zcu104-revA.dts |  1 +
 arch/arm/dts/zynqmp.dtsi            | 17 +++++++++++++++++
 2 files changed, 18 insertions(+)
 create mode 100644 arch/arm/dts/zynqmp.dtsi

diff --git a/arch/arm/dts/zynqmp-zcu104-revA.dts b/arch/arm/dts/zynqmp-zcu104-revA.dts
index 8c467ee970..88f5152c9d 100644
--- a/arch/arm/dts/zynqmp-zcu104-revA.dts
+++ b/arch/arm/dts/zynqmp-zcu104-revA.dts
@@ -8,3 +8,4 @@
  */
 
 #include <arm64/xilinx/zynqmp-zcu104-revA.dts>
+#include "zynqmp.dtsi"
diff --git a/arch/arm/dts/zynqmp.dtsi b/arch/arm/dts/zynqmp.dtsi
new file mode 100644
index 0000000000..59984ee758
--- /dev/null
+++ b/arch/arm/dts/zynqmp.dtsi
@@ -0,0 +1,17 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * dts file for Xilinx ZynqMP
+ *
+ * (C) Copyright 2014 - 2015, Xilinx, Inc.
+ *
+ * Michal Simek <michal.simek@xilinx.com>
+ */
+
+/ {
+	firmware {
+		zynqmp_firmware: zynqmp-firmware {
+			compatible = "xlnx,zynqmp-firmware";
+			method = "smc";
+		};
+	};
+};
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
