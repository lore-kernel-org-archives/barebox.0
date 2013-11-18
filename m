Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ViMfa-0007iJ-Jk
 for barebox@lists.infradead.org; Mon, 18 Nov 2013 11:07:07 +0000
From: Philipp Zabel <p.zabel@pengutronix.de>
Date: Mon, 18 Nov 2013 12:06:32 +0100
Message-Id: <1384772798-3297-1-git-send-email-p.zabel@pengutronix.de>
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
Subject: [PATCH 1/6] ARM i.MX6: sabrelite: switch to multiboard support
To: barebox@lists.infradead.org
Cc: Philipp Zabel <p.zabel@pengutronix.de>

Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
---
 arch/arm/boards/freescale-mx6-sabrelite/board.c    | 13 +++++++++++--
 arch/arm/configs/freescale-mx6-sabrelite_defconfig |  2 +-
 arch/arm/mach-imx/Kconfig                          | 10 +++++-----
 3 files changed, 17 insertions(+), 8 deletions(-)

diff --git a/arch/arm/boards/freescale-mx6-sabrelite/board.c b/arch/arm/boards/freescale-mx6-sabrelite/board.c
index eb6eb3c..a8fe7c0 100644
--- a/arch/arm/boards/freescale-mx6-sabrelite/board.c
+++ b/arch/arm/boards/freescale-mx6-sabrelite/board.c
@@ -120,6 +120,9 @@ static void sabrelite_ehci_init(void)
 
 static int sabrelite_devices_init(void)
 {
+	if (!of_machine_is_compatible("fsl,imx6q-sabrelite"))
+		return 0;
+
 	sabrelite_ehci_init();
 
 	armlinux_set_bootparams((void *)0x10000100);
@@ -134,18 +137,24 @@ device_initcall(sabrelite_devices_init);
 
 static int sabrelite_coredevices_init(void)
 {
+	if (!of_machine_is_compatible("fsl,imx6q-sabrelite"))
+		return 0;
+
 	phy_register_fixup_for_uid(PHY_ID_KSZ9021, MICREL_PHY_ID_MASK,
 					   ksz9021rn_phy_fixup);
 	return 0;
 }
 coredevice_initcall(sabrelite_coredevices_init);
 
-static int sabrelite_core_init(void)
+static int sabrelite_postcore_init(void)
 {
+	if (!of_machine_is_compatible("fsl,imx6q-sabrelite"))
+		return 0;
+
 	imx6_init_lowlevel();
 
 	barebox_set_hostname("sabrelite");
 
 	return 0;
 }
-core_initcall(sabrelite_core_init);
+postcore_initcall(sabrelite_postcore_init);
diff --git a/arch/arm/configs/freescale-mx6-sabrelite_defconfig b/arch/arm/configs/freescale-mx6-sabrelite_defconfig
index d4d6cf2..4cbed2a 100644
--- a/arch/arm/configs/freescale-mx6-sabrelite_defconfig
+++ b/arch/arm/configs/freescale-mx6-sabrelite_defconfig
@@ -1,7 +1,7 @@
 CONFIG_BUILTIN_DTB=y
 CONFIG_BUILTIN_DTB_NAME="imx6q-sabrelite"
 CONFIG_ARCH_IMX=y
-CONFIG_ARCH_IMX6=y
+CONFIG_IMX_MULTI_BOARDS=y
 CONFIG_MACH_SABRELITE=y
 CONFIG_IMX_IIM=y
 CONFIG_IMX_IIM_FUSE_BLOW=y
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index e3fd6bd..c7b147e 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -215,6 +215,11 @@ config MACH_TQMA6X
 	bool "TQ tqma6x on mba6x"
 	select ARCH_IMX6
 
+config MACH_SABRELITE
+	bool "Freescale i.MX6 Sabre Lite"
+	select ARCH_IMX6
+	select HAVE_DEFAULT_ENVIRONMENT_NEW
+
 endif
 
 # ----------------------------------------------------------
@@ -444,11 +449,6 @@ config MACH_MX6Q_ARM2
 	bool "Freescale i.MX6q Armadillo2"
 	select ARCH_IMX6
 
-config MACH_SABRELITE
-	bool "Freescale i.MX6 Sabre Lite"
-	select ARCH_IMX6
-	select HAVE_DEFAULT_ENVIRONMENT_NEW
-
 config MACH_SABRESD
 	bool "Freescale i.MX6 SabreSD"
 	select ARCH_IMX6
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
