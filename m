Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.tricorecenter.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cC2n5-0000uj-Qm
 for barebox@lists.infradead.org; Wed, 30 Nov 2016 11:11:09 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 49B8CA00438
 for <barebox@lists.infradead.org>; Wed, 30 Nov 2016 12:11:30 +0100 (CET)
From: Daniel Schultz <d.schultz@phytec.de>
Date: Wed, 30 Nov 2016 12:10:45 +0100
Message-Id: <1480504245-1822-3-git-send-email-d.schultz@phytec.de>
In-Reply-To: <1480504245-1822-1-git-send-email-d.schultz@phytec.de>
References: <1480504245-1822-1-git-send-email-d.schultz@phytec.de>
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
Subject: [PATCH 3/3] arm: dts: Added ocotp support for i.MX6UL
To: barebox@lists.infradead.org

Ocotp is available for the iMX6(q|sx|sl) SoCs. This patch will extend the
iMX6ul DT from the mainline kernel to support the ocotp driver on the
iMX6ul SoC.

Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
---
 arch/arm/dts/imx6ul-phytec-phycore-som.dts |  1 +
 arch/arm/dts/imx6ul.dtsi                   | 20 ++++++++++++++++++++
 2 files changed, 21 insertions(+)
 create mode 100644 arch/arm/dts/imx6ul.dtsi

diff --git a/arch/arm/dts/imx6ul-phytec-phycore-som.dts b/arch/arm/dts/imx6ul-phytec-phycore-som.dts
index be4556a..285ea62 100644
--- a/arch/arm/dts/imx6ul-phytec-phycore-som.dts
+++ b/arch/arm/dts/imx6ul-phytec-phycore-som.dts
@@ -13,6 +13,7 @@
 /dts-v1/;
 
 #include <arm/imx6ul.dtsi>
+#include "imx6ul.dtsi"
 
 / {
 	model = "Phytec phyCORE-i.MX6 Ultra Lite SOM";
diff --git a/arch/arm/dts/imx6ul.dtsi b/arch/arm/dts/imx6ul.dtsi
new file mode 100644
index 0000000..2e02d27
--- /dev/null
+++ b/arch/arm/dts/imx6ul.dtsi
@@ -0,0 +1,20 @@
+/*
+ * Copyright (C) 2016 PHYTEC Messtechnik GmbH
+ * Author: Daniel Schultz <d.schultz@phytec.de>
+ *
+ * The code contained herein is licensed under the GNU General Public
+ * License. You may obtain a copy of the GNU General Public License
+ * Version 2 or later at the following locations:
+ *
+ * http://www.opensource.org/licenses/gpl-license.html
+ * http://www.gnu.org/copyleft/gpl.html
+ */
+
+&aips2 {
+	ocotp: ocotp-ctrl@21bc000 {
+		compatible = "fsl,imx6ul-ocotp";
+		reg = <0x021bc000 0x4000>;
+		clocks = <&clks IMX6UL_CLK_OCOTP>;
+		barebox,provide-mac-address = <&fec1 0x620 &fec2 0x632>;
+	};
+};
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
