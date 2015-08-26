Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZUa3L-0005rh-GL
 for barebox@lists.infradead.org; Wed, 26 Aug 2015 12:43:44 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 26 Aug 2015 14:43:20 +0200
Message-Id: <1440593000-11676-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: pfla02: Add module revison detection
To: Barebox List <barebox@lists.infradead.org>

From: Christian Hemp <c.hemp@phytec.de>

The pin SD4_DAT4 until SD4_DAT7 are used as revison control.
The pins will be internally pulled up so we read a 1111 for revison 1.
For revison two the first pin (bit) is pulled down (see schematic pfla-02
page 4 "SDIO, NAND-Flash".
On Module rev 1 the pins are connected to the NAND but we have only 8bit NAND
also the i.MX6 only can handle 8bit NAND flashs.

Revisions:
	Rev 1:  0xF
	Rev 2:  0xE
		.
		.
		.
	Rev 15: 0x1
	Rev 16: 0x0

Signed-off-by: Christian Hemp <c.hemp@phytec.de>
Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/phytec-phyflex-imx6/board.c | 24 ++++++++++++++++++++++++
 arch/arm/dts/imx6qdl-phytec-pfla02.dtsi     | 13 +++++++++++++
 2 files changed, 37 insertions(+)

diff --git a/arch/arm/boards/phytec-phyflex-imx6/board.c b/arch/arm/boards/phytec-phyflex-imx6/board.c
index 5f65261..f0c4fe2 100644
--- a/arch/arm/boards/phytec-phyflex-imx6/board.c
+++ b/arch/arm/boards/phytec-phyflex-imx6/board.c
@@ -16,6 +16,7 @@
  * Foundation.
  *
  */
+#define pr_fmt(fmt) "phyFLEX-i.MX6: " fmt
 
 #include <malloc.h>
 #include <envfs.h>
@@ -27,12 +28,16 @@
 #include <of.h>
 #include <mach/bbu.h>
 #include <fec.h>
+#include <globalvar.h>
 
 #include <linux/micrel_phy.h>
 
 #include <mach/iomux-mx6.h>
 #include <mach/imx6.h>
 
+#define PHYFLEX_MODULE_REV_1	0x1
+#define PHYFLEX_MODULE_REV_2	0x2
+
 #define GPIO_2_11_PD_CTL	MX6_PAD_CTL_PUS_100K_DOWN | MX6_PAD_CTL_PUE | MX6_PAD_CTL_PKE | \
 				MX6_PAD_CTL_SPEED_MED | MX6_PAD_CTL_DSE_40ohm | MX6_PAD_CTL_HYS
 
@@ -64,6 +69,20 @@ static void phyflex_err006282_workaround(void)
 	gpio_direction_input(MX6_PHYFLEX_ERR006282);
 }
 
+static unsigned int pfla02_module_revision;
+
+static unsigned int get_module_rev(void)
+{
+	unsigned int val = 0;
+
+	val = gpio_get_value(IMX_GPIO_NR(2, 12));
+	val |= (gpio_get_value(IMX_GPIO_NR(2, 13)) << 1);
+	val |= (gpio_get_value(IMX_GPIO_NR(2, 14)) << 2);
+	val |= (gpio_get_value(IMX_GPIO_NR(2, 15)) << 3);
+
+	return 16 - val;
+}
+
 static int phytec_pfla02_init(void)
 {
 	int ret;
@@ -78,6 +97,11 @@ static int phytec_pfla02_init(void)
 
 	imx6_bbu_nand_register_handler("nand", BBU_HANDLER_FLAG_DEFAULT);
 
+	pfla02_module_revision = get_module_rev();
+	globalvar_add_simple_int("board.revision", &pfla02_module_revision, "%u");
+
+	pr_info("Module Revision: %u\n", pfla02_module_revision);
+
 	switch (bootsource_get()) {
 	case BOOTSOURCE_MMC:
 		environment_path = asprintf("/chosen/environment-sd%d",
diff --git a/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi b/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
index 63c1e7f..b79ce2c 100644
--- a/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
+++ b/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
@@ -130,7 +130,20 @@
 };
 
 &iomuxc {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_hog>, <&pinctrl_rev>;
+
 	imx6q-phytec-pfla02 {
+		pinctrl_rev: revgrp {
+			fsl,pins = <
+				MX6QDL_PAD_SD4_DAT3__GPIO2_IO11 0x80000000
+				MX6QDL_PAD_SD4_DAT4__GPIO2_IO12	0x80000000
+				MX6QDL_PAD_SD4_DAT5__GPIO2_IO13	0x80000000
+				MX6QDL_PAD_SD4_DAT6__GPIO2_IO14	0x80000000
+				MX6QDL_PAD_SD4_DAT7__GPIO2_IO15	0x80000000
+			>;
+		};
+
 		pinctrl_gpmi_nand: gpminandgrp {
 			fsl,pins = <
 				MX6QDL_PAD_NANDF_CLE__NAND_CLE     0xb0b1
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
