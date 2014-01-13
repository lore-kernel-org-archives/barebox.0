Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W2VDk-00011b-1S
 for barebox@lists.infradead.org; Mon, 13 Jan 2014 00:17:39 +0000
Received: from tellur.localdomain (p57B5EF0F.dip0.t-ipconnect.de
 [87.181.239.15]) by lynxeye.de (Postfix) with ESMTPA id BF8CE18B4263
 for <barebox@lists.infradead.org>; Mon, 13 Jan 2014 01:16:38 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Mon, 13 Jan 2014 01:17:28 +0100
Message-Id: <1389572250-1482-7-git-send-email-dev@lynxeye.de>
In-Reply-To: <1389572250-1482-1-git-send-email-dev@lynxeye.de>
References: <1389572250-1482-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 7/9] ARM: imx6: add support for DL variant of SabreLite Board
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/boards/freescale-mx6-sabrelite/board.c    |  9 ++++++---
 arch/arm/boards/freescale-mx6-sabrelite/lowlevel.c | 15 ++++++++++++++-
 arch/arm/dts/Makefile                              |  3 ++-
 arch/arm/dts/imx6dl-sabrelite.dts                  | 20 ++++++++++++++++++++
 images/Makefile.imx                                | 11 ++++++++---
 5 files changed, 50 insertions(+), 8 deletions(-)
 create mode 100644 arch/arm/dts/imx6dl-sabrelite.dts

diff --git a/arch/arm/boards/freescale-mx6-sabrelite/board.c b/arch/arm/boards/freescale-mx6-sabrelite/board.c
index badfd9e..2d79c36 100644
--- a/arch/arm/boards/freescale-mx6-sabrelite/board.c
+++ b/arch/arm/boards/freescale-mx6-sabrelite/board.c
@@ -116,7 +116,8 @@ static void sabrelite_ehci_init(void)
 
 static int sabrelite_devices_init(void)
 {
-	if (!of_machine_is_compatible("fsl,imx6q-sabrelite"))
+	if (!of_machine_is_compatible("fsl,imx6q-sabrelite") &&
+	    !of_machine_is_compatible("fsl,imx6dl-sabrelite"))
 		return 0;
 
 	sabrelite_ehci_init();
@@ -132,7 +133,8 @@ device_initcall(sabrelite_devices_init);
 
 static int sabrelite_coredevices_init(void)
 {
-	if (!of_machine_is_compatible("fsl,imx6q-sabrelite"))
+	if (!of_machine_is_compatible("fsl,imx6q-sabrelite") &&
+	    !of_machine_is_compatible("fsl,imx6dl-sabrelite"))
 		return 0;
 
 	phy_register_fixup_for_uid(PHY_ID_KSZ9021, MICREL_PHY_ID_MASK,
@@ -143,7 +145,8 @@ coredevice_initcall(sabrelite_coredevices_init);
 
 static int sabrelite_postcore_init(void)
 {
-	if (!of_machine_is_compatible("fsl,imx6q-sabrelite"))
+	if (!of_machine_is_compatible("fsl,imx6q-sabrelite") &&
+	    !of_machine_is_compatible("fsl,imx6dl-sabrelite"))
 		return 0;
 
 	imx6_init_lowlevel();
diff --git a/arch/arm/boards/freescale-mx6-sabrelite/lowlevel.c b/arch/arm/boards/freescale-mx6-sabrelite/lowlevel.c
index b36a39c..14a7f32 100644
--- a/arch/arm/boards/freescale-mx6-sabrelite/lowlevel.c
+++ b/arch/arm/boards/freescale-mx6-sabrelite/lowlevel.c
@@ -5,7 +5,7 @@
 
 extern char __dtb_imx6q_sabrelite_start[];
 
-ENTRY_FUNCTION(start_imx6_sabrelite, r0, r1, r2)
+ENTRY_FUNCTION(start_imx6q_sabrelite, r0, r1, r2)
 {
 	uint32_t fdt;
 
@@ -15,3 +15,16 @@ ENTRY_FUNCTION(start_imx6_sabrelite, r0, r1, r2)
 
 	barebox_arm_entry(0x10000000, SZ_1G, fdt);
 }
+
+extern char __dtb_imx6dl_sabrelite_start[];
+
+ENTRY_FUNCTION(start_imx6dl_sabrelite, r0, r1, r2)
+{
+	uint32_t fdt;
+
+	arm_cpu_lowlevel_init();
+
+	fdt = (uint32_t)__dtb_imx6dl_sabrelite_start - get_runtime_offset();
+
+	barebox_arm_entry(0x10000000, SZ_1G, fdt);
+}
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index bc314e9..90ac28d 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -11,6 +11,7 @@ dtb-$(CONFIG_ARCH_IMX6) += imx6q-gk802.dtb \
 	imx6q-dfi-fs700-m60-6q.dtb \
 	imx6q-dmo-realq7.dtb \
 	imx6q-sabrelite.dtb \
+	imx6dl-sabrelite.dtb \
 	imx6q-sabresd.dtb \
 	imx6dl-mba6x.dtb \
 	imx6q-mba6x.dtb \
@@ -43,7 +44,7 @@ pbl-$(CONFIG_MACH_TQMA6X) += imx6dl-mba6x.dtb.o imx6q-mba6x.dtb.o
 pbl-$(CONFIG_MACH_SOCFPGA_EBV_SOCRATES) += socfpga_cyclone5_socrates.dtb.o
 pbl-$(CONFIG_MACH_SOCFPGA_TERASIC_SOCKIT) += socfpga_cyclone5_sockit.dtb.o
 pbl-$(CONFIG_MACH_SOLIDRUN_CARRIER1) += imx6dl-cubox-i-carrier-1.dtb.o
-pbl-$(CONFIG_MACH_SABRELITE) += imx6q-sabrelite.dtb.o
+pbl-$(CONFIG_MACH_SABRELITE) += imx6q-sabrelite.dtb.o imx6dl-sabrelite.dtb.o
 
 .SECONDARY: $(obj)/$(BUILTIN_DTB).dtb.S
 .SECONDARY: $(patsubst %,$(obj)/%.S,$(dtb-y))
diff --git a/arch/arm/dts/imx6dl-sabrelite.dts b/arch/arm/dts/imx6dl-sabrelite.dts
new file mode 100644
index 0000000..2de0447
--- /dev/null
+++ b/arch/arm/dts/imx6dl-sabrelite.dts
@@ -0,0 +1,20 @@
+/*
+ * Copyright 2011 Freescale Semiconductor, Inc.
+ * Copyright 2011 Linaro Ltd.
+ *
+ * The code contained herein is licensed under the GNU General Public
+ * License. You may obtain a copy of the GNU General Public License
+ * Version 2 or later at the following locations:
+ *
+ * http://www.opensource.org/licenses/gpl-license.html
+ * http://www.gnu.org/copyleft/gpl.html
+ */
+
+/dts-v1/;
+#include "imx6dl.dtsi"
+#include "imx6qdl-sabrelite.dtsi"
+
+/ {
+	model = "Freescale i.MX6 DualLite SABRE Lite Board";
+	compatible = "fsl,imx6dl-sabrelite", "fsl,imx6dl";
+};
diff --git a/images/Makefile.imx b/images/Makefile.imx
index 49c7e3e..e98204f 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -72,11 +72,16 @@ CFG_start_imx6q_dfi_fs700_m60_6q.pblx.imximg = $(board)/dfi-fs700-m60/flash-head
 FILE_barebox-dfi-fs700-m60-6q.img = start_imx6q_dfi_fs700_m60_6q.pblx.imximg
 image-$(CONFIG_MACH_DFI_FS700_M60) += barebox-dfi-fs700-m60-6q.img
 
-pblx-$(CONFIG_MACH_SABRELITE) += start_imx6_sabrelite
-CFG_start_imx6_sabrelite.pblx.imximg = $(board)/freescale-mx6-sabrelite/flash-header-mx6-sabrelite.imxcfg
-FILE_barebox-freescale-imx6q-sabrelite.img = start_imx6_sabrelite.pblx.imximg
+pblx-$(CONFIG_MACH_SABRELITE) += start_imx6q_sabrelite
+CFG_start_imx6q_sabrelite.pblx.imximg = $(board)/freescale-mx6-sabrelite/flash-header-mx6-sabrelite.imxcfg
+FILE_barebox-freescale-imx6q-sabrelite.img = start_imx6q_sabrelite.pblx.imximg
 image-$(CONFIG_MACH_SABRELITE) += barebox-freescale-imx6q-sabrelite.img
 
+pblx-$(CONFIG_MACH_SABRELITE) += start_imx6dl_sabrelite
+CFG_start_imx6dl_sabrelite.pblx.imximg = $(board)/freescale-mx6-sabrelite/flash-header-mx6-sabrelite.imxcfg
+FILE_barebox-freescale-imx6dl-sabrelite.img = start_imx6dl_sabrelite.pblx.imximg
+image-$(CONFIG_MACH_SABRELITE) += barebox-freescale-imx6dl-sabrelite.img
+
 pblx-$(CONFIG_MACH_SOLIDRUN_CARRIER1) += start_imx6dl_cubox_i_carrier_1
 CFG_start_imx6dl_cubox_i_carrier_1.pblx.imximg = $(board)/solidrun-carrier-1/flash-header-solidrun-carrier-1.imxcfg
 FILE_barebox-cubox-i-carrier-1.img = start_imx6dl_cubox_i_carrier_1.pblx.imximg
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
