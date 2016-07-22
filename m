Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bQZcP-0000Qx-NV
 for barebox@lists.infradead.org; Fri, 22 Jul 2016 12:31:55 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.80)
 (envelope-from <l.stach@pengutronix.de>) id 1bQZc2-0007AE-FM
 for barebox@lists.infradead.org; Fri, 22 Jul 2016 14:31:30 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 22 Jul 2016 14:31:26 +0200
Message-Id: <1469190690-14508-2-git-send-email-l.stach@pengutronix.de>
In-Reply-To: <1469190690-14508-1-git-send-email-l.stach@pengutronix.de>
References: <1469190690-14508-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 2/6] ARM: nitrogen6x: use upstream DTs
To: barebox@lists.infradead.org

This gets rid of the (mostly) stub top level DTs in barebox
and switches the compatible to the proper "boundary" one.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/boards/boundarydevices-nitrogen6x/board.c |  8 ++++----
 arch/arm/dts/imx6dl-nitrogen6x.dts                 |  8 +-------
 arch/arm/dts/imx6q-nitrogen6x.dts                  | 12 +-----------
 arch/arm/dts/imx6qdl-nitrogen6x.dtsi               |  2 --
 4 files changed, 6 insertions(+), 24 deletions(-)

diff --git a/arch/arm/boards/boundarydevices-nitrogen6x/board.c b/arch/arm/boards/boundarydevices-nitrogen6x/board.c
index 347fd9128bcd..28dba3af9a15 100644
--- a/arch/arm/boards/boundarydevices-nitrogen6x/board.c
+++ b/arch/arm/boards/boundarydevices-nitrogen6x/board.c
@@ -22,8 +22,8 @@
 
 static int nitrogen6x_devices_init(void)
 {
-	if (!of_machine_is_compatible("fsl,imx6dl-nitrogen6x") &&
-	    !of_machine_is_compatible("fsl,imx6q-nitrogen6x"))
+	if (!of_machine_is_compatible("boundary,imx6dl-nitrogen6x") &&
+	    !of_machine_is_compatible("boundary,imx6q-nitrogen6x"))
 		return 0;
 
 	imx6_bbu_internal_spi_i2c_register_handler("spiflash", "/dev/m25p0.barebox",
@@ -54,8 +54,8 @@ static int ksz9021rn_phy_fixup(struct phy_device *dev)
 
 static int nitrogen6x_coredevices_init(void)
 {
-	if (!of_machine_is_compatible("fsl,imx6dl-nitrogen6x") &&
-	    !of_machine_is_compatible("fsl,imx6q-nitrogen6x"))
+	if (!of_machine_is_compatible("boundary,imx6dl-nitrogen6x") &&
+	    !of_machine_is_compatible("boundary,imx6q-nitrogen6x"))
 		return 0;
 
 	phy_register_fixup_for_uid(PHY_ID_KSZ9021, MICREL_PHY_ID_MASK,
diff --git a/arch/arm/dts/imx6dl-nitrogen6x.dts b/arch/arm/dts/imx6dl-nitrogen6x.dts
index 50267b103866..bc199c31671d 100644
--- a/arch/arm/dts/imx6dl-nitrogen6x.dts
+++ b/arch/arm/dts/imx6dl-nitrogen6x.dts
@@ -11,12 +11,6 @@
  * http://www.gnu.org/copyleft/gpl.html
  */
 
-/dts-v1/;
-#include <arm/imx6dl.dtsi>
+#include <arm/imx6dl-nitrogen6x.dts>
 #include "imx6dl.dtsi"
 #include "imx6qdl-nitrogen6x.dtsi"
-
-/ {
-	model = "Freescale i.MX6 DualLite Nitrogen6x Board";
-	compatible = "fsl,imx6dl-nitrogen6x", "fsl,imx6dl";
-};
diff --git a/arch/arm/dts/imx6q-nitrogen6x.dts b/arch/arm/dts/imx6q-nitrogen6x.dts
index d8906e606381..e4a6a6c29e97 100644
--- a/arch/arm/dts/imx6q-nitrogen6x.dts
+++ b/arch/arm/dts/imx6q-nitrogen6x.dts
@@ -11,16 +11,6 @@
  * http://www.gnu.org/copyleft/gpl.html
  */
 
-/dts-v1/;
-#include <arm/imx6q.dtsi>
+#include <arm/imx6q-nitrogen6x.dts>
 #include "imx6q.dtsi"
 #include "imx6qdl-nitrogen6x.dtsi"
-
-/ {
-	model = "Freescale i.MX6 Quad Nitrogen6x Board";
-	compatible = "fsl,imx6q-nitrogen6x", "fsl,imx6q";
-};
-
-&sata {
-	status = "okay";
-};
diff --git a/arch/arm/dts/imx6qdl-nitrogen6x.dtsi b/arch/arm/dts/imx6qdl-nitrogen6x.dtsi
index 9ff7395f45e7..76e55e057cce 100644
--- a/arch/arm/dts/imx6qdl-nitrogen6x.dtsi
+++ b/arch/arm/dts/imx6qdl-nitrogen6x.dtsi
@@ -16,8 +16,6 @@
 
 / {
 	chosen {
-		linux,stdout-path = &uart2;
-
 		environment@0 {
 			compatible = "barebox,environment";
 			device-path = &flash, "partname:barebox-environment";
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
