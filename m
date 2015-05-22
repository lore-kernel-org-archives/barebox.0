Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.tricorecenter.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YvlmB-0003G8-7s
 for barebox@lists.infradead.org; Fri, 22 May 2015 12:10:08 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 7270DA00320
 for <barebox@lists.infradead.org>; Fri, 22 May 2015 14:11:06 +0200 (CEST)
From: Wadim Egorov <w.egorov@phytec.de>
Date: Fri, 22 May 2015 14:09:14 +0200
Message-Id: <1432296555-48594-1-git-send-email-w.egorov@phytec.de>
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
Subject: [PATCH 1/2] ARM: dts: Add an am33xx include file for MLO size
 reduction
To: barebox@lists.infradead.org

AM335x's MLO size limit is 109K.
The am33xx.dtsi file adds spare and never used nodes to the dtb.
With this patch we add a file to remove the unused nodes and reduce the
size of the dtb.

Including this file will reduce the lzo packed MLO size about 8K.

Signed-off-by: Wadim Egorov <w.egorov@phytec.de>
---
 arch/arm/dts/strip-am33xx.dtsi | 66 ++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 66 insertions(+)
 create mode 100644 arch/arm/dts/strip-am33xx.dtsi

diff --git a/arch/arm/dts/strip-am33xx.dtsi b/arch/arm/dts/strip-am33xx.dtsi
new file mode 100644
index 0000000..fe34edc
--- /dev/null
+++ b/arch/arm/dts/strip-am33xx.dtsi
@@ -0,0 +1,66 @@
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
+		/delete-property/ gpio0;
+		/delete-property/ gpio1;
+		/delete-property/ gpio2;
+		/delete-property/ gpio3;
+		/delete-property/ serial1;
+		/delete-property/ serial2;
+		/delete-property/ serial3;
+		/delete-property/ serial4;
+		/delete-property/ serial5;
+		/delete-property/ d_can0;
+		/delete-property/ d_can1;
+	};
+};
+
+/delete-node/ &gpio0;
+/delete-node/ &gpio1;
+/delete-node/ &gpio2;
+/delete-node/ &gpio3;
+/delete-node/ &uart1;
+/delete-node/ &uart2;
+/delete-node/ &uart3;
+/delete-node/ &uart4;
+/delete-node/ &uart5;
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
