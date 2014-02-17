Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x243.google.com ([2a00:1450:400c:c00::243])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WFWJ1-0006nC-HG
 for barebox@lists.infradead.org; Mon, 17 Feb 2014 22:04:52 +0000
Received: by mail-wg0-f67.google.com with SMTP id n12so1282346wgh.10
 for <barebox@lists.infradead.org>; Mon, 17 Feb 2014 14:04:26 -0800 (PST)
From: =?UTF-8?q?Rapha=C3=ABl=20POGGI?= <poggi.raph@gmail.com>
Date: Mon, 17 Feb 2014 14:04:13 -0800
Message-Id: <1392674653-26759-2-git-send-email-poggi.raph@gmail.com>
In-Reply-To: <1392674653-26759-1-git-send-email-poggi.raph@gmail.com>
References: <1392674653-26759-1-git-send-email-poggi.raph@gmail.com>
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
Subject: [PATCH 2/2] ARM: Rework device tree of UDOO Board to be more flexible.
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Rapha=C3=ABl=20POGGI?= <poggi.raph@gmail.com>

Device tree of UDOO Board have to be more flexible.
There are a dual imx6 and a quad imx6 boards, with this patch
we can have a same device tree file as a base: arch/arm/dts/imx6qdl-udoo.dtsi
and an other device tree file for specific configuration depending of the board.

Signed-off-by: Raphael Poggi <poggi.raph@gmail.com>
---
 arch/arm/boards/udoo/board.c   | 6 +++---
 arch/arm/dts/imx6q-udoo.dts    | 3 ++-
 arch/arm/dts/imx6qdl-udoo.dtsi | 5 +++--
 3 files changed, 8 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boards/udoo/board.c b/arch/arm/boards/udoo/board.c
index 5853f36..3cbc0f5 100644
--- a/arch/arm/boards/udoo/board.c
+++ b/arch/arm/boards/udoo/board.c
@@ -166,7 +166,7 @@ static void udoo_epit_init(void)
 
 static int udoo_devices_init(void)
 {
-	if (!of_machine_is_compatible("fsl,imx6q-udoo"))
+	if (!of_machine_is_compatible("udoo,imx6qdl-udoo"))
 		   return 0;
 
 	setup_iomux_wdog();
@@ -181,7 +181,7 @@ device_initcall(udoo_devices_init);
 
 static int udoo_coredevices_init(void)
 {
-	if (!of_machine_is_compatible("fsl,imx6q-udoo"))
+	if (!of_machine_is_compatible("udoo,imx6qdl-udoo"))
 		   return 0;
 
 	phy_register_fixup_for_uid(PHY_ID_KSZ9021, MICREL_PHY_ID_MASK,
@@ -192,7 +192,7 @@ coredevice_initcall(udoo_coredevices_init);
 
 static int udoo_postcore_init(void)
 {
-	if (!of_machine_is_compatible("fsl,imx6q-udoo"))
+	if (!of_machine_is_compatible("udoo,imx6qdl-udoo"))
 		   return 0;
 
 	imx6_init_lowlevel();
diff --git a/arch/arm/dts/imx6q-udoo.dts b/arch/arm/dts/imx6q-udoo.dts
index 2e95978..106a0be 100644
--- a/arch/arm/dts/imx6q-udoo.dts
+++ b/arch/arm/dts/imx6q-udoo.dts
@@ -13,10 +13,11 @@
 
 /dts-v1/;
 
+#include "imx6q.dtsi"
 #include "imx6qdl-udoo.dtsi"
 
 / {
        model = "Freescale i.MX6 Quad UDOO Board";
-       compatible = "fsl,imx6q-udoo", "fsl,imx6q";
+       compatible = "udoo,imx6q-udoo", "udoo,imx6qdl-udoo", "fsl,imx6q";
 };
 
diff --git a/arch/arm/dts/imx6qdl-udoo.dtsi b/arch/arm/dts/imx6qdl-udoo.dtsi
index 6220751..4cb6572 100644
--- a/arch/arm/dts/imx6qdl-udoo.dtsi
+++ b/arch/arm/dts/imx6qdl-udoo.dtsi
@@ -11,12 +11,13 @@
  * http://www.gnu.org/copyleft/gpl.html
  */
 
-#include "imx6q.dtsi"
-
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/input/input.h>
 
 / {
+       model = "Freescale i.MX6 UDOO Board";
+       compatible = "udoo,imx6qdl-udoo", "fsl,imx6q";
+
        chosen {
                linux,stdout-path = &uart2;
 
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
