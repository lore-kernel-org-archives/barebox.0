Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WzKEp-0008Ej-1D
 for barebox@lists.infradead.org; Tue, 24 Jun 2014 06:29:52 +0000
Received: from tellur.localdomain (p57B5E0B8.dip0.t-ipconnect.de
 [87.181.224.184]) by lynxeye.de (Postfix) with ESMTPA id 2C09818B4257
 for <barebox@lists.infradead.org>; Tue, 24 Jun 2014 08:28:53 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Tue, 24 Jun 2014 08:33:14 +0200
Message-Id: <1403591596-13955-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 1/3] arm: imx6: move imx6_init_lowlevel to single initcall
To: barebox@lists.infradead.org

Instead of repeating the same lowlevel init for every board
move it to it's own initcall.

Avoids code bloat and shaves off almost 1.5kB of uncompressed
barebox size for a default imx_v7_defconfig build.

For boards wherethe hostname setup was done in  the postcore
initcall we move this to a device initcall to get it out of
the way.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/boards/boundarydevices-nitrogen6x/board.c | 16 ++----------
 arch/arm/boards/datamodul-edm-qmx6/board.c         | 13 +---------
 arch/arm/boards/embest-riotboard/board.c           | 13 +---------
 arch/arm/boards/freescale-mx6-sabrelite/board.c    | 13 +---------
 arch/arm/boards/freescale-mx6-sabresd/board.c      | 14 +---------
 arch/arm/boards/gk802/board.c                      | 13 +---------
 arch/arm/boards/guf-santaro/board.c                | 11 --------
 arch/arm/boards/phytec-phycard-imx6/board.c        | 11 --------
 arch/arm/boards/phytec-phyflex-imx6/board.c        | 11 --------
 arch/arm/boards/solidrun-hummingboard/board.c      | 15 ++---------
 arch/arm/boards/tqma6x/board.c                     | 13 ++--------
 arch/arm/boards/udoo/board.c                       | 14 +---------
 arch/arm/boards/variscite-mx6/board.c              | 13 ----------
 arch/arm/mach-imx/Makefile                         |  2 +-
 arch/arm/mach-imx/imx6-of-initcalls.c              | 30 ++++++++++++++++++++++
 15 files changed, 43 insertions(+), 159 deletions(-)
 create mode 100644 arch/arm/mach-imx/imx6-of-initcalls.c

diff --git a/arch/arm/boards/boundarydevices-nitrogen6x/board.c b/arch/arm/boards/boundarydevices-nitrogen6x/board.c
index 95c8567..347fd91 100644
--- a/arch/arm/boards/boundarydevices-nitrogen6x/board.c
+++ b/arch/arm/boards/boundarydevices-nitrogen6x/board.c
@@ -29,6 +29,8 @@ static int nitrogen6x_devices_init(void)
 	imx6_bbu_internal_spi_i2c_register_handler("spiflash", "/dev/m25p0.barebox",
 			BBU_HANDLER_FLAG_DEFAULT);
 
+	barebox_set_hostname("nitrogen6x");
+
 	return 0;
 }
 device_initcall(nitrogen6x_devices_init);
@@ -61,17 +63,3 @@ static int nitrogen6x_coredevices_init(void)
 	return 0;
 }
 coredevice_initcall(nitrogen6x_coredevices_init);
-
-static int nitrogen6x_postcore_init(void)
-{
-	if (!of_machine_is_compatible("fsl,imx6dl-nitrogen6x") &&
-	    !of_machine_is_compatible("fsl,imx6q-nitrogen6x"))
-		return 0;
-
-	imx6_init_lowlevel();
-
-	barebox_set_hostname("nitrogen6x");
-
-	return 0;
-}
-postcore_initcall(nitrogen6x_postcore_init);
diff --git a/arch/arm/boards/datamodul-edm-qmx6/board.c b/arch/arm/boards/datamodul-edm-qmx6/board.c
index 26757eb..e388e28 100644
--- a/arch/arm/boards/datamodul-edm-qmx6/board.c
+++ b/arch/arm/boards/datamodul-edm-qmx6/board.c
@@ -135,19 +135,8 @@ static int realq7_device_init(void)
 		break;
 	}
 
-	return 0;
-}
-device_initcall(realq7_device_init);
-
-static int realq7_postcore_init(void)
-{
-	if (!of_machine_is_compatible("dmo,imx6q-edmqmx6"))
-		return 0;
-
 	barebox_set_hostname("eDM-QMX6");
 
-	imx6_init_lowlevel();
-
 	return 0;
 }
-postcore_initcall(realq7_postcore_init);
+device_initcall(realq7_device_init);
diff --git a/arch/arm/boards/embest-riotboard/board.c b/arch/arm/boards/embest-riotboard/board.c
index 3c28aa1..3f5b4de 100644
--- a/arch/arm/boards/embest-riotboard/board.c
+++ b/arch/arm/boards/embest-riotboard/board.c
@@ -72,19 +72,8 @@ static int riotboard_device_init(void)
 	imx6_bbu_internal_mmc_register_handler("emmc", "/dev/mmc3.barebox",
 			BBU_HANDLER_FLAG_DEFAULT);
 
-	return 0;
-}
-device_initcall(riotboard_device_init);
-
-static int riotboard_lwl_init(void)
-{
-	if (!of_machine_is_compatible("embest,riotboard"))
-		return 0;
-
 	barebox_set_hostname("riotboard");
 
-	imx6_init_lowlevel();
-
 	return 0;
 }
-postcore_initcall(riotboard_lwl_init);
+device_initcall(riotboard_device_init);
diff --git a/arch/arm/boards/freescale-mx6-sabrelite/board.c b/arch/arm/boards/freescale-mx6-sabrelite/board.c
index 178fed6..1f26548 100644
--- a/arch/arm/boards/freescale-mx6-sabrelite/board.c
+++ b/arch/arm/boards/freescale-mx6-sabrelite/board.c
@@ -179,20 +179,9 @@ static int sabrelite_coredevices_init(void)
 
 	phy_register_fixup_for_uid(PHY_ID_KSZ9021, MICREL_PHY_ID_MASK,
 					   ksz9021rn_phy_fixup);
-	return 0;
-}
-coredevice_initcall(sabrelite_coredevices_init);
-
-static int sabrelite_postcore_init(void)
-{
-	if (!of_machine_is_compatible("fsl,imx6q-sabrelite") &&
-	    !of_machine_is_compatible("fsl,imx6dl-sabrelite"))
-		return 0;
-
-	imx6_init_lowlevel();
 
 	barebox_set_hostname("sabrelite");
 
 	return 0;
 }
-postcore_initcall(sabrelite_postcore_init);
+coredevice_initcall(sabrelite_coredevices_init);
diff --git a/arch/arm/boards/freescale-mx6-sabresd/board.c b/arch/arm/boards/freescale-mx6-sabresd/board.c
index 4e4ce7a..53aada7 100644
--- a/arch/arm/boards/freescale-mx6-sabresd/board.c
+++ b/arch/arm/boards/freescale-mx6-sabresd/board.c
@@ -69,6 +69,7 @@ static int sabresd_devices_init(void)
 		return 0;
 
 	armlinux_set_architecture(3980);
+	barebox_set_hostname("sabresd");
 
 	return 0;
 }
@@ -89,16 +90,3 @@ static int sabresd_coredevices_init(void)
  * gpios are available.
  */
 coredevice_initcall(sabresd_coredevices_init);
-
-static int sabresd_postcore_init(void)
-{
-	if (!of_machine_is_compatible("fsl,imx6q-sabresd"))
-		return 0;
-
-	imx6_init_lowlevel();
-
-	barebox_set_hostname("sabresd");
-
-	return 0;
-}
-postcore_initcall(sabresd_postcore_init);
diff --git a/arch/arm/boards/gk802/board.c b/arch/arm/boards/gk802/board.c
index facb923..9dd2253 100644
--- a/arch/arm/boards/gk802/board.c
+++ b/arch/arm/boards/gk802/board.c
@@ -69,19 +69,8 @@ static int gk802_env_init(void)
 	devfs_add_partition(bootsource_name, 0x00000, SZ_512K, DEVFS_PARTITION_FIXED, barebox_name);
 	devfs_add_partition(bootsource_name, SZ_512K, SZ_512K, DEVFS_PARTITION_FIXED, default_environment_name);
 
-	return 0;
-}
-late_initcall(gk802_env_init);
-
-static int gk802_console_init(void)
-{
-	if (!of_machine_is_compatible("zealz,imx6q-gk802"))
-		return 0;
-
 	barebox_set_hostname("gk802");
 
-	imx6_init_lowlevel();
-
 	return 0;
 }
-postcore_initcall(gk802_console_init);
+late_initcall(gk802_env_init);
diff --git a/arch/arm/boards/guf-santaro/board.c b/arch/arm/boards/guf-santaro/board.c
index 9b5d09d..8fbfe26 100644
--- a/arch/arm/boards/guf-santaro/board.c
+++ b/arch/arm/boards/guf-santaro/board.c
@@ -26,17 +26,6 @@
 #include <mach/bbu.h>
 #include <mach/imx6.h>
 
-static int santaro_postcore_init(void)
-{
-	if (!of_machine_is_compatible("guf,imx6q-santaro"))
-		return 0;
-
-	imx6_init_lowlevel();
-
-	return 0;
-}
-postcore_initcall(santaro_postcore_init);
-
 static int santaro_device_init(void)
 {
 	uint32_t flag_sd = 0, flag_emmc = 0;
diff --git a/arch/arm/boards/phytec-phycard-imx6/board.c b/arch/arm/boards/phytec-phycard-imx6/board.c
index 6ed431a..d425b48 100644
--- a/arch/arm/boards/phytec-phycard-imx6/board.c
+++ b/arch/arm/boards/phytec-phycard-imx6/board.c
@@ -47,14 +47,3 @@ static int phytec_pcaaxl3_init(void)
 	return 0;
 }
 device_initcall(phytec_pcaaxl3_init);
-
-static int phytec_pcaaxl3_core_init(void)
-{
-	if (!of_machine_is_compatible("phytec,imx6q-pcaaxl3"))
-		return 0;
-
-	imx6_init_lowlevel();
-
-	return 0;
-}
-postcore_initcall(phytec_pcaaxl3_core_init);
diff --git a/arch/arm/boards/phytec-phyflex-imx6/board.c b/arch/arm/boards/phytec-phyflex-imx6/board.c
index c11f4c4..59e3f24 100644
--- a/arch/arm/boards/phytec-phyflex-imx6/board.c
+++ b/arch/arm/boards/phytec-phyflex-imx6/board.c
@@ -71,14 +71,3 @@ static int phytec_pfla02_init(void)
 	return 0;
 }
 device_initcall(phytec_pfla02_init);
-
-static int phytec_pfla02_core_init(void)
-{
-	if (!of_machine_is_compatible("phytec,imx6x-pbab01"))
-		return 0;
-
-	imx6_init_lowlevel();
-
-	return 0;
-}
-postcore_initcall(phytec_pfla02_core_init);
diff --git a/arch/arm/boards/solidrun-hummingboard/board.c b/arch/arm/boards/solidrun-hummingboard/board.c
index 25b3c94..4b0ea32 100644
--- a/arch/arm/boards/solidrun-hummingboard/board.c
+++ b/arch/arm/boards/solidrun-hummingboard/board.c
@@ -72,6 +72,8 @@ static int hummingboard_device_init(void)
 	gpio_direction_output(IMX_GPIO_NR(3, 22), 1);
 	gpio_direction_output(IMX_GPIO_NR(1, 0), 1);
 
+	barebox_set_hostname("hummingboard");
+
 	return 0;
 }
 device_initcall(hummingboard_device_init);
@@ -87,16 +89,3 @@ static int hummingboard_late_init(void)
 	return 0;
 }
 late_initcall(hummingboard_late_init);
-
-static int hummingboard_lwl_init(void)
-{
-	if (!of_machine_is_compatible("solidrun,hummingboard"))
-		return 0;
-
-	barebox_set_hostname("hummingboard");
-
-	imx6_init_lowlevel();
-
-	return 0;
-}
-postcore_initcall(hummingboard_lwl_init);
diff --git a/arch/arm/boards/tqma6x/board.c b/arch/arm/boards/tqma6x/board.c
index 6c574ea..2118fb2 100644
--- a/arch/arm/boards/tqma6x/board.c
+++ b/arch/arm/boards/tqma6x/board.c
@@ -113,17 +113,8 @@ static int tqma6x_env_init(void)
 
 	default_environment_path_set("/dev/mmc2.boot1");
 
-	return 0;
-}
-late_initcall(tqma6x_env_init);
-
-static int tqma6x_core_init(void)
-{
-	if (!of_machine_is_compatible("tq,mba6x"))
-		return 0;
-
-	imx6_init_lowlevel();
+	barebox_set_hostname("mba6x");
 
 	return 0;
 }
-postcore_initcall(tqma6x_core_init);
+late_initcall(tqma6x_env_init);
diff --git a/arch/arm/boards/udoo/board.c b/arch/arm/boards/udoo/board.c
index 3846d4b..d2f558e 100644
--- a/arch/arm/boards/udoo/board.c
+++ b/arch/arm/boards/udoo/board.c
@@ -164,6 +164,7 @@ static int udoo_devices_init(void)
 	udoo_epit_init();
 
 	armlinux_set_bootparams((void *)0x10000100);
+	barebox_set_hostname("udoo");
 
 	return 0;
 }
@@ -179,16 +180,3 @@ static int udoo_coredevices_init(void)
 	return 0;
 }
 coredevice_initcall(udoo_coredevices_init);
-
-static int udoo_postcore_init(void)
-{
-	if (!of_machine_is_compatible("udoo,imx6qdl-udoo"))
-		return 0;
-
-	imx6_init_lowlevel();
-
-	barebox_set_hostname("udoo");
-
-	return 0;
-}
-postcore_initcall(udoo_postcore_init);
diff --git a/arch/arm/boards/variscite-mx6/board.c b/arch/arm/boards/variscite-mx6/board.c
index 592b111..ce1284f 100644
--- a/arch/arm/boards/variscite-mx6/board.c
+++ b/arch/arm/boards/variscite-mx6/board.c
@@ -120,16 +120,3 @@ static int variscite_custom_init(void)
 	return 0;
 }
 device_initcall(variscite_custom_init);
-
-static int variscite_custom_core_init(void)
-{
-	if (!of_machine_is_compatible("variscite,imx6q-custom"))
-		return 0;
-
-	imx6_init_lowlevel();
-
-	pr_debug("Completing custom_core_init()\n");
-
-	return 0;
-}
-postcore_initcall(variscite_custom_core_init);
diff --git a/arch/arm/mach-imx/Makefile b/arch/arm/mach-imx/Makefile
index 03e5b10..f8796a2 100644
--- a/arch/arm/mach-imx/Makefile
+++ b/arch/arm/mach-imx/Makefile
@@ -9,7 +9,7 @@ obj-$(CONFIG_ARCH_IMX51) += imx51.o imx5.o clk-imx5.o
 pbl-$(CONFIG_ARCH_IMX51) += imx51.o imx5.o
 obj-$(CONFIG_ARCH_IMX53) += imx53.o imx5.o clk-imx5.o esdctl-v4.o
 pbl-$(CONFIG_ARCH_IMX53) += imx53.o imx5.o esdctl-v4.o
-obj-$(CONFIG_ARCH_IMX6) += imx6.o usb-imx6.o clk-imx6.o
+obj-$(CONFIG_ARCH_IMX6) += imx6.o usb-imx6.o clk-imx6.o imx6-of-initcalls.o
 lwl-$(CONFIG_ARCH_IMX6) += imx6-mmdc.o
 obj-$(CONFIG_IMX_IIM)	+= iim.o
 obj-$(CONFIG_IMX_OCOTP)	+= ocotp.o
diff --git a/arch/arm/mach-imx/imx6-of-initcalls.c b/arch/arm/mach-imx/imx6-of-initcalls.c
new file mode 100644
index 0000000..297b964
--- /dev/null
+++ b/arch/arm/mach-imx/imx6-of-initcalls.c
@@ -0,0 +1,30 @@
+/*
+ * Copyright (C) 2014 Lucas Stach <l.stach@pengutronix.de>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+#include <common.h>
+#include <init.h>
+#include <mach/imx6.h>
+#include <of.h>
+
+static int imx6_postcore_init(void)
+{
+	if (!of_machine_is_compatible("fsl,imx6dl") &&
+	    !of_machine_is_compatible("fsl,imx6q"))
+		return 0;
+
+	imx6_init_lowlevel();
+
+	return 0;
+}
+postcore_initcall(imx6_postcore_init);
-- 
1.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
