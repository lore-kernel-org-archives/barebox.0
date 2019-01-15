Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gjKaY-0002jZ-V5
 for barebox@lists.infradead.org; Tue, 15 Jan 2019 09:00:52 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>) id 1gjKaX-0007uy-3P
 for barebox@lists.infradead.org; Tue, 15 Jan 2019 10:00:49 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue, 15 Jan 2019 10:00:49 +0100
Message-Id: <20190115090049.8361-1-l.stach@pengutronix.de>
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
Subject: [PATCH] fixup! ARM: imx8mq: use upstream devicetree
To: barebox@lists.infradead.org

---
 arch/arm/dts/imx8mq-ddrc.dtsi | 2 +-
 arch/arm/dts/imx8mq-evk.dts   | 3 ++-
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm/dts/imx8mq-ddrc.dtsi b/arch/arm/dts/imx8mq-ddrc.dtsi
index 26d3da857951..64826b03735f 100644
--- a/arch/arm/dts/imx8mq-ddrc.dtsi
+++ b/arch/arm/dts/imx8mq-ddrc.dtsi
@@ -7,7 +7,7 @@
 
 	/delete-node/ memory@40000000;
 
-	peripherals@0 {
+	soc@0 {
 		ddrc@3d400000 {
 			compatible = "fsl,imx8mq-ddrc";
 			reg = <0x3d400000 0x400000>;
diff --git a/arch/arm/dts/imx8mq-evk.dts b/arch/arm/dts/imx8mq-evk.dts
index 9593c555f926..8ef2c984ac6f 100644
--- a/arch/arm/dts/imx8mq-evk.dts
+++ b/arch/arm/dts/imx8mq-evk.dts
@@ -8,6 +8,7 @@
 
 #include <arm64/freescale/imx8mq-evk.dts>
 #include "imx8mq.dtsi"
+#include "imx8mq-ddrc.dtsi"
 
 / {
 	chosen {
@@ -56,4 +57,4 @@
 
 &ocotp {
 	barebox,provide-mac-address = <&fec1 0x640>;
-};
\ No newline at end of file
+};
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
