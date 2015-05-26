Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycard.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YxEq8-0002e6-J5
 for barebox@lists.infradead.org; Tue, 26 May 2015 13:24:17 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 94FBEA003F4
 for <barebox@lists.infradead.org>; Tue, 26 May 2015 15:25:12 +0200 (CEST)
From: Wadim Egorov <w.egorov@phytec.de>
Date: Tue, 26 May 2015 15:23:10 +0200
Message-Id: <1432646591-6991-1-git-send-email-w.egorov@phytec.de>
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
Subject: [PATCH v2 1/2] ARM: dts: Add an am33xx include file for MLO size
 reduction
To: barebox@lists.infradead.org

AM335x's MLO size limit is 109K.
The am33xx.dtsi file adds spare and never used nodes to the dtb.
With this patch we add a file to remove the unused nodes and reduce the
size of the dtb.

Including this file will reduce the lzo packed MLO size about 6K.

Signed-off-by: Wadim Egorov <w.egorov@phytec.de>
---
v2:
	- rename file to am33xx-strip.dtsi
	- keep gpio* and uart* nodes
---
 arch/arm/dts/am33xx-strip.dtsi | 48 ++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 48 insertions(+)
 create mode 100644 arch/arm/dts/am33xx-strip.dtsi

diff --git a/arch/arm/dts/am33xx-strip.dtsi b/arch/arm/dts/am33xx-strip.dtsi
new file mode 100644
index 0000000..3dc9a57
--- /dev/null
+++ b/arch/arm/dts/am33xx-strip.dtsi
@@ -0,0 +1,48 @@
+/*
+ * Copyright (C) 2015 PHYTEC Messtechnik GmbH,
+ * Author: Wadim Egorov <w.egorov@phytec.de>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ */
+
+/ {
+	aliases {
+		/delete-property/ i2c1;
+		/delete-property/ i2c2;
+		/delete-property/ mmc0;
+		/delete-property/ mmc1;
+		/delete-property/ mmc2;
+		/delete-property/ d_can0;
+		/delete-property/ d_can1;
+	};
+};
+
+/delete-node/ &i2c1;
+/delete-node/ &i2c2;
+/delete-node/ &mmc2;
+/delete-node/ &mmc3;
+/delete-node/ &hwspinlock;
+/delete-node/ &wdt2;
+/delete-node/ &dcan0;
+/delete-node/ &dcan1;
+/delete-node/ &mailbox;
+/delete-node/ &timer1;
+/delete-node/ &timer2;
+/delete-node/ &timer3;
+/delete-node/ &timer4;
+/delete-node/ &timer5;
+/delete-node/ &timer6;
+/delete-node/ &timer7;
+/delete-node/ &spi1;
+/delete-node/ &epwmss0;
+/delete-node/ &epwmss1;
+/delete-node/ &epwmss2;
+/delete-node/ &lcdc;
+/delete-node/ &tscadc;
+/delete-node/ &sham;
+/delete-node/ &aes;
+/delete-node/ &mcasp0;
+/delete-node/ &mcasp1;
+/delete-node/ &rng;
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
