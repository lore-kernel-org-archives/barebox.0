Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hAu1V-0005NG-RO
 for barebox@lists.infradead.org; Mon, 01 Apr 2019 10:18:48 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  1 Apr 2019 12:18:20 +0200
Message-Id: <20190401101822.7392-13-a.fatoum@pengutronix.de>
In-Reply-To: <20190401101822.7392-1-a.fatoum@pengutronix.de>
References: <20190401101822.7392-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH v3 12/15] ARM: dts: microchip-ksz9477-evb: add dummy first
 stage device tree
To: barebox@lists.infradead.org
Cc: sam@ravnborg.org

The existing device tree is too big for the 64K byte constrained
first stage.
Because of the size limitation it might be better to only use
the device tree for the second stage. This increases user-friendliness
by leaving space for PBL_CONSOLE.

For now provide a slightly smaller smaller *-boot-bin.dts device tree
for first stage, which can be further stripped in future commits.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 LICENSES/other/X11                            | 28 +++++++++++++++++++
 arch/arm/dts/Makefile                         |  4 ++-
 .../at91-microchip-ksz9477-evb-boot-bin.dts   | 13 +++++++++
 3 files changed, 44 insertions(+), 1 deletion(-)
 create mode 100644 LICENSES/other/X11
 create mode 100644 arch/arm/dts/at91-microchip-ksz9477-evb-boot-bin.dts

diff --git a/LICENSES/other/X11 b/LICENSES/other/X11
new file mode 100644
index 000000000000..fcbafbf7dc75
--- /dev/null
+++ b/LICENSES/other/X11
@@ -0,0 +1,28 @@
+Valid-License-Identifier: X11
+SPDX-URL: https://spdx.org/licenses/X11.html
+Usage-Guide:
+  To use the X11 put the following SPDX tag/value pair into a comment
+  according to the placement guidelines in the licensing rules
+  documentation:
+    SPDX-License-Identifier: X11
+License-Text:
+
+
+X11 License
+
+Permission is hereby granted, free of charge, to any person obtaining a
+copy of this software and associated documentation files (the "Software"),
+to deal in the Software without restriction, including without limitation
+the rights to use, copy, modify, merge, publish, distribute, sublicense,
+and/or sell copies of the Software, and to permit persons to whom the
+Software is furnished to do so, subject to the following conditions:
+
+The above copyright notice and this permission notice shall be included in
+all copies or substantial portions of the Software.
+
+THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
+IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
+FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
+X CONSORTIUM BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
+IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
+CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 1c6129816daf..64c068334713 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -127,7 +127,9 @@ pbl-dtb-$(CONFIG_MACH_ZII_VF610_DEV) += \
 	vf610-zii-scu4-aib.dtb.o	\
 	vf610-zii-spb4.dtb.o
 pbl-dtb-$(CONFIG_MACH_AT91SAM9263EK_DT) += at91sam9263ek.dtb.o
-pbl-dtb-$(CONFIG_MACH_MICROCHIP_KSZ9477_EVB) += at91-microchip-ksz9477-evb.dtb.o
+pbl-dtb-$(CONFIG_MACH_MICROCHIP_KSZ9477_EVB) += \
+	at91-microchip-ksz9477-evb.dtb.o 	\
+	at91-microchip-ksz9477-evb-boot-bin.dtb.o
 pbl-dtb-$(CONFIG_MACH_AT91SAM9X5EK) += at91sam9x5ek.dtb.o
 pbl-dtb-$(CONFIG_MACH_XILINX_ZCU104) += zynqmp-zcu104-revA.dtb.o
 
diff --git a/arch/arm/dts/at91-microchip-ksz9477-evb-boot-bin.dts b/arch/arm/dts/at91-microchip-ksz9477-evb-boot-bin.dts
new file mode 100644
index 000000000000..8823204bcbc7
--- /dev/null
+++ b/arch/arm/dts/at91-microchip-ksz9477-evb-boot-bin.dts
@@ -0,0 +1,13 @@
+/*
+ * at91-microchip-ksz9477-evb-boot-bin.dts - First Stage Device Tree for EVB-KSZ9477
+ *
+ * Copyright (C) 2019 Ahmad Fatoum <a.fatoum@pengutronix.de>
+ *
+ * SPDX-License-Identifier: (GPL-2.0-only OR X11)
+ */
+#include "at91-microchip-ksz9477-evb.dts"
+
+/delete-node/ &spi1;
+/delete-node/ &macb0;
+/delete-node/ &macb1;
+/delete-node/ &pinctrl_spi_ksz;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
