Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gK5Nb-0007ey-Om
 for barebox@lists.infradead.org; Tue, 06 Nov 2018 17:43:09 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>) id 1gK5NO-0000gK-Vd
 for barebox@lists.infradead.org; Tue, 06 Nov 2018 18:42:55 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue,  6 Nov 2018 18:42:54 +0100
Message-Id: <20181106174254.21371-2-l.stach@pengutronix.de>
In-Reply-To: <20181106174254.21371-1-l.stach@pengutronix.de>
References: <20181106174254.21371-1-l.stach@pengutronix.de>
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
Subject: [PATCH 2/2] ARM: nxp-imx8mq-evk: add barebox and env partitions
To: barebox@lists.infradead.org

So we can have a persistent env and a bit safer barebox update. Also
switch the environment and update default depending on the bootsource,
as this is really helpful on an eval board where one might want to
have totally different systems on eMMC and SD card.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/boards/nxp-imx8mq-evk/board.c | 20 +++++++++++---
 arch/arm/dts/imx8mq-evk.dts            | 37 ++++++++++++++++++++++++++
 2 files changed, 54 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boards/nxp-imx8mq-evk/board.c b/arch/arm/boards/nxp-imx8mq-evk/board.c
index 7918b5fb3e36..299d056e2777 100644
--- a/arch/arm/boards/nxp-imx8mq-evk/board.c
+++ b/arch/arm/boards/nxp-imx8mq-evk/board.c
@@ -17,11 +17,12 @@
  *
  */
 
+#include <asm/memory.h>
+#include <bootsource.h>
 #include <common.h>
 #include <init.h>
-#include <asm/memory.h>
-#include <linux/sizes.h>
 #include <linux/phy.h>
+#include <linux/sizes.h>
 #include <mach/bbu.h>
 
 #include <envfs.h>
@@ -47,12 +48,25 @@ static int ar8031_phy_fixup(struct phy_device *phydev)
 
 static int nxp_imx8mq_evk_init(void)
 {
+	int flags;
+
 	if (!of_machine_is_compatible("fsl,imx8mq-evk"))
 		return 0;
 
 	barebox_set_hostname("imx8mq-evk");
 
-	imx8mq_bbu_internal_mmc_register_handler("eMMC", "/dev/mmc0", 0);
+	flags = bootsource_get_instance() == 0 ? BBU_HANDLER_FLAG_DEFAULT : 0;
+	imx8mq_bbu_internal_mmc_register_handler("eMMC",
+						 "/dev/mmc0.barebox", flags);
+
+	flags = bootsource_get_instance() == 1 ? BBU_HANDLER_FLAG_DEFAULT : 0;
+	imx8mq_bbu_internal_mmc_register_handler("SD",
+						 "/dev/mmc1.barebox", flags);
+
+	if (bootsource_get_instance() == 0)
+		of_device_enable_path("/chosen/environment-emmc");
+	else
+		of_device_enable_path("/chosen/environment-sd");
 
 	phy_register_fixup_for_uid(PHY_ID_AR8031, AR_PHY_ID_MASK,
 				   ar8031_phy_fixup);
diff --git a/arch/arm/dts/imx8mq-evk.dts b/arch/arm/dts/imx8mq-evk.dts
index a6e724e2e2a5..56a35173a04f 100644
--- a/arch/arm/dts/imx8mq-evk.dts
+++ b/arch/arm/dts/imx8mq-evk.dts
@@ -15,6 +15,17 @@
 
 	chosen {
 		stdout-path = &uart1;
+
+		environment-emmc {
+			compatible = "barebox,environment";
+			device-path = &usdhc1, "partname:barebox-environment";
+			status = "disabled";
+		};
+		environment-sd {
+			compatible = "barebox,environment";
+			device-path = &usdhc2, "partname:barebox-environment";
+			status = "disabled";
+		};
 	};
 
 	reg_usdhc2_vmmc: regulator-vsd-3v3 {
@@ -177,6 +188,19 @@
 	no-sd;
 	no-sdio;
 	status = "okay";
+
+	#address-cells = <1>;
+	#size-cells = <1>;
+
+	partition@0 {
+		label = "barebox";
+		reg = <0x0 0xe0000>;
+	};
+
+	partition@e0000 {
+		label = "barebox-environment";
+		reg = <0xe0000 0x20000>;
+	};
 };
 
 &usdhc2 {
@@ -190,6 +214,19 @@
 	cd-gpios = <&gpio2 12 GPIO_ACTIVE_LOW>;
 	vmmc-supply = <&reg_usdhc2_vmmc>;
 	status = "okay";
+
+	#address-cells = <1>;
+	#size-cells = <1>;
+
+	partition@0 {
+		label = "barebox";
+		reg = <0x0 0xe0000>;
+	};
+
+	partition@e0000 {
+		label = "barebox-environment";
+		reg = <0xe0000 0x20000>;
+	};
 };
 
 &wdog1 {
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
