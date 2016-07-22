Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bQZcP-0000R1-NZ
 for barebox@lists.infradead.org; Fri, 22 Jul 2016 12:31:58 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.80)
 (envelope-from <l.stach@pengutronix.de>) id 1bQZc2-0007AE-Le
 for barebox@lists.infradead.org; Fri, 22 Jul 2016 14:31:30 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 22 Jul 2016 14:31:30 +0200
Message-Id: <1469190690-14508-6-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 6/6] ARM: nitrogen: rename to nitrogen6
To: barebox@lists.infradead.org

Now that the MAX variant of the board is also supported by the
same code, rename the board directory to the more generic nitrogen6.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/boards/Makefile                           |  2 +-
 .../1066mhz_4x128mx16.imxcfg                       |  0
 .../1066mhz_4x256mx16.imxcfg                       |  0
 .../1066mhz_4x512mx16-qp.imxcfg                    |  0
 .../800mhz_4x128mx16.imxcfg                        |  0
 .../800mhz_4x256mx16.imxcfg                        |  0
 .../Makefile                                       |  0
 .../board.c                                        |  0
 .../flash-header-nitrogen6dl-1g.imxcfg             |  0
 .../flash-header-nitrogen6dl-2g.imxcfg             |  0
 .../flash-header-nitrogen6q-1g.imxcfg              |  0
 .../flash-header-nitrogen6q-2g.imxcfg              |  0
 .../flash-header-nitrogen6qp-max.imxcfg            |  0
 .../lowlevel.c                                     |  0
 .../ram-base.imxcfg                                |  0
 arch/arm/configs/imx_v7_defconfig                  |  2 +-
 arch/arm/dts/Makefile                              |  2 +-
 arch/arm/mach-imx/Kconfig                          |  4 +--
 images/Makefile.imx                                | 30 +++++++++++-----------
 19 files changed, 20 insertions(+), 20 deletions(-)
 rename arch/arm/boards/{boundarydevices-nitrogen6x => boundarydevices-nitrogen6}/1066mhz_4x128mx16.imxcfg (100%)
 rename arch/arm/boards/{boundarydevices-nitrogen6x => boundarydevices-nitrogen6}/1066mhz_4x256mx16.imxcfg (100%)
 rename arch/arm/boards/{boundarydevices-nitrogen6x => boundarydevices-nitrogen6}/1066mhz_4x512mx16-qp.imxcfg (100%)
 rename arch/arm/boards/{boundarydevices-nitrogen6x => boundarydevices-nitrogen6}/800mhz_4x128mx16.imxcfg (100%)
 rename arch/arm/boards/{boundarydevices-nitrogen6x => boundarydevices-nitrogen6}/800mhz_4x256mx16.imxcfg (100%)
 rename arch/arm/boards/{boundarydevices-nitrogen6x => boundarydevices-nitrogen6}/Makefile (100%)
 rename arch/arm/boards/{boundarydevices-nitrogen6x => boundarydevices-nitrogen6}/board.c (100%)
 rename arch/arm/boards/{boundarydevices-nitrogen6x => boundarydevices-nitrogen6}/flash-header-nitrogen6dl-1g.imxcfg (100%)
 rename arch/arm/boards/{boundarydevices-nitrogen6x => boundarydevices-nitrogen6}/flash-header-nitrogen6dl-2g.imxcfg (100%)
 rename arch/arm/boards/{boundarydevices-nitrogen6x => boundarydevices-nitrogen6}/flash-header-nitrogen6q-1g.imxcfg (100%)
 rename arch/arm/boards/{boundarydevices-nitrogen6x => boundarydevices-nitrogen6}/flash-header-nitrogen6q-2g.imxcfg (100%)
 rename arch/arm/boards/{boundarydevices-nitrogen6x => boundarydevices-nitrogen6}/flash-header-nitrogen6qp-max.imxcfg (100%)
 rename arch/arm/boards/{boundarydevices-nitrogen6x => boundarydevices-nitrogen6}/lowlevel.c (100%)
 rename arch/arm/boards/{boundarydevices-nitrogen6x => boundarydevices-nitrogen6}/ram-base.imxcfg (100%)

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index e3dcc6a61507..35b636f0cfbb 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -15,7 +15,7 @@ obj-$(CONFIG_MACH_BEAGLE)			+= beagle/
 obj-$(CONFIG_MACH_BEAGLEBONE)			+= beaglebone/
 obj-$(CONFIG_MACH_CANON_A1100)			+= canon-a1100/
 obj-$(CONFIG_MACH_CM_FX6)			+= cm-fx6/
-obj-$(CONFIG_MACH_NITROGEN6X)			+= boundarydevices-nitrogen6x/
+obj-$(CONFIG_MACH_NITROGEN6)			+= boundarydevices-nitrogen6/
 obj-$(CONFIG_MACH_CCMX51)			+= ccxmx51/
 obj-$(CONFIG_MACH_CCMX53)			+= ccxmx53/
 obj-$(CONFIG_MACH_CFA10036)			+= crystalfontz-cfa10036/
diff --git a/arch/arm/boards/boundarydevices-nitrogen6x/1066mhz_4x128mx16.imxcfg b/arch/arm/boards/boundarydevices-nitrogen6/1066mhz_4x128mx16.imxcfg
similarity index 100%
rename from arch/arm/boards/boundarydevices-nitrogen6x/1066mhz_4x128mx16.imxcfg
rename to arch/arm/boards/boundarydevices-nitrogen6/1066mhz_4x128mx16.imxcfg
diff --git a/arch/arm/boards/boundarydevices-nitrogen6x/1066mhz_4x256mx16.imxcfg b/arch/arm/boards/boundarydevices-nitrogen6/1066mhz_4x256mx16.imxcfg
similarity index 100%
rename from arch/arm/boards/boundarydevices-nitrogen6x/1066mhz_4x256mx16.imxcfg
rename to arch/arm/boards/boundarydevices-nitrogen6/1066mhz_4x256mx16.imxcfg
diff --git a/arch/arm/boards/boundarydevices-nitrogen6x/1066mhz_4x512mx16-qp.imxcfg b/arch/arm/boards/boundarydevices-nitrogen6/1066mhz_4x512mx16-qp.imxcfg
similarity index 100%
rename from arch/arm/boards/boundarydevices-nitrogen6x/1066mhz_4x512mx16-qp.imxcfg
rename to arch/arm/boards/boundarydevices-nitrogen6/1066mhz_4x512mx16-qp.imxcfg
diff --git a/arch/arm/boards/boundarydevices-nitrogen6x/800mhz_4x128mx16.imxcfg b/arch/arm/boards/boundarydevices-nitrogen6/800mhz_4x128mx16.imxcfg
similarity index 100%
rename from arch/arm/boards/boundarydevices-nitrogen6x/800mhz_4x128mx16.imxcfg
rename to arch/arm/boards/boundarydevices-nitrogen6/800mhz_4x128mx16.imxcfg
diff --git a/arch/arm/boards/boundarydevices-nitrogen6x/800mhz_4x256mx16.imxcfg b/arch/arm/boards/boundarydevices-nitrogen6/800mhz_4x256mx16.imxcfg
similarity index 100%
rename from arch/arm/boards/boundarydevices-nitrogen6x/800mhz_4x256mx16.imxcfg
rename to arch/arm/boards/boundarydevices-nitrogen6/800mhz_4x256mx16.imxcfg
diff --git a/arch/arm/boards/boundarydevices-nitrogen6x/Makefile b/arch/arm/boards/boundarydevices-nitrogen6/Makefile
similarity index 100%
rename from arch/arm/boards/boundarydevices-nitrogen6x/Makefile
rename to arch/arm/boards/boundarydevices-nitrogen6/Makefile
diff --git a/arch/arm/boards/boundarydevices-nitrogen6x/board.c b/arch/arm/boards/boundarydevices-nitrogen6/board.c
similarity index 100%
rename from arch/arm/boards/boundarydevices-nitrogen6x/board.c
rename to arch/arm/boards/boundarydevices-nitrogen6/board.c
diff --git a/arch/arm/boards/boundarydevices-nitrogen6x/flash-header-nitrogen6dl-1g.imxcfg b/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6dl-1g.imxcfg
similarity index 100%
rename from arch/arm/boards/boundarydevices-nitrogen6x/flash-header-nitrogen6dl-1g.imxcfg
rename to arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6dl-1g.imxcfg
diff --git a/arch/arm/boards/boundarydevices-nitrogen6x/flash-header-nitrogen6dl-2g.imxcfg b/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6dl-2g.imxcfg
similarity index 100%
rename from arch/arm/boards/boundarydevices-nitrogen6x/flash-header-nitrogen6dl-2g.imxcfg
rename to arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6dl-2g.imxcfg
diff --git a/arch/arm/boards/boundarydevices-nitrogen6x/flash-header-nitrogen6q-1g.imxcfg b/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6q-1g.imxcfg
similarity index 100%
rename from arch/arm/boards/boundarydevices-nitrogen6x/flash-header-nitrogen6q-1g.imxcfg
rename to arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6q-1g.imxcfg
diff --git a/arch/arm/boards/boundarydevices-nitrogen6x/flash-header-nitrogen6q-2g.imxcfg b/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6q-2g.imxcfg
similarity index 100%
rename from arch/arm/boards/boundarydevices-nitrogen6x/flash-header-nitrogen6q-2g.imxcfg
rename to arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6q-2g.imxcfg
diff --git a/arch/arm/boards/boundarydevices-nitrogen6x/flash-header-nitrogen6qp-max.imxcfg b/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6qp-max.imxcfg
similarity index 100%
rename from arch/arm/boards/boundarydevices-nitrogen6x/flash-header-nitrogen6qp-max.imxcfg
rename to arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6qp-max.imxcfg
diff --git a/arch/arm/boards/boundarydevices-nitrogen6x/lowlevel.c b/arch/arm/boards/boundarydevices-nitrogen6/lowlevel.c
similarity index 100%
rename from arch/arm/boards/boundarydevices-nitrogen6x/lowlevel.c
rename to arch/arm/boards/boundarydevices-nitrogen6/lowlevel.c
diff --git a/arch/arm/boards/boundarydevices-nitrogen6x/ram-base.imxcfg b/arch/arm/boards/boundarydevices-nitrogen6/ram-base.imxcfg
similarity index 100%
rename from arch/arm/boards/boundarydevices-nitrogen6x/ram-base.imxcfg
rename to arch/arm/boards/boundarydevices-nitrogen6/ram-base.imxcfg
diff --git a/arch/arm/configs/imx_v7_defconfig b/arch/arm/configs/imx_v7_defconfig
index 8594965b5418..e3a8f478d2f4 100644
--- a/arch/arm/configs/imx_v7_defconfig
+++ b/arch/arm/configs/imx_v7_defconfig
@@ -18,7 +18,7 @@ CONFIG_MACH_TX6X=y
 CONFIG_MACH_SABRELITE=y
 CONFIG_MACH_SABRESD=y
 CONFIG_MACH_FREESCALE_IMX6SX_SABRESDB=y
-CONFIG_MACH_NITROGEN6X=y
+CONFIG_MACH_NITROGEN6=y
 CONFIG_MACH_SOLIDRUN_MICROSOM=y
 CONFIG_MACH_TECHNEXION_WANDBOARD=y
 CONFIG_MACH_EMBEST_RIOTBOARD=y
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 7a59402106c4..09bf68ea2be7 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -29,7 +29,7 @@ pbl-dtb-$(CONFIG_MACH_GW_VENTANA) += imx6q-gw54xx.dtb.o
 pbl-dtb-$(CONFIG_MACH_LENOVO_IX4_300D) += armada-xp-lenovo-ix4-300d-bb.dtb.o
 pbl-dtb-$(CONFIG_MACH_MARVELL_ARMADA_XP_GP) += armada-xp-gp-bb.dtb.o
 pbl-dtb-$(CONFIG_MACH_NETGEAR_RN104) += armada-370-rn104-bb.dtb.o
-pbl-dtb-$(CONFIG_MACH_NITROGEN6X) += imx6q-nitrogen6x.dtb.o imx6dl-nitrogen6x.dtb.o imx6qp-nitrogen6_max.dtb.o
+pbl-dtb-$(CONFIG_MACH_NITROGEN6) += imx6q-nitrogen6x.dtb.o imx6dl-nitrogen6x.dtb.o imx6qp-nitrogen6_max.dtb.o
 pbl-dtb-$(CONFIG_MACH_NVIDIA_BEAVER) += tegra30-beaver.dtb.o
 pbl-dtb-$(CONFIG_MACH_NVIDIA_JETSON) += tegra124-jetson-tk1.dtb.o
 pbl-dtb-$(CONFIG_MACH_PCA100) += imx27-phytec-phycard-s-rdk-bb.dtb.o
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 80f8fd80aecc..82fc945d5b88 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -279,8 +279,8 @@ config MACH_FREESCALE_IMX6SX_SABRESDB
 	select I2C
 	select I2C_IMX
 
-config MACH_NITROGEN6X
-	bool "BoundaryDevices Nitrogen6x"
+config MACH_NITROGEN6
+	bool "BoundaryDevices Nitrogen6 boards"
 	select ARCH_IMX6
 
 config MACH_SOLIDRUN_MICROSOM
diff --git a/images/Makefile.imx b/images/Makefile.imx
index 166bb8ee4dfe..b02fdff4b17f 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -268,30 +268,30 @@ CFG_start_hummingboard_microsom_i4.pblx.imximg = $(board)/solidrun-microsom/flas
 FILE_barebox-solidrun-hummingboard-microsom-i4.img = start_hummingboard_microsom_i4.pblx.imximg
 image-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += barebox-solidrun-hummingboard-microsom-i4.img
 
-pblx-$(CONFIG_MACH_NITROGEN6X) += start_imx6q_nitrogen6x_1g
-CFG_start_imx6q_nitrogen6x_1g.pblx.imximg = $(board)/boundarydevices-nitrogen6x/flash-header-nitrogen6q-1g.imxcfg
+pblx-$(CONFIG_MACH_NITROGEN6) += start_imx6q_nitrogen6x_1g
+CFG_start_imx6q_nitrogen6x_1g.pblx.imximg = $(board)/boundarydevices-nitrogen6/flash-header-nitrogen6q-1g.imxcfg
 FILE_barebox-boundarydevices-imx6q-nitrogen6x-1g.img = start_imx6q_nitrogen6x_1g.pblx.imximg
-image-$(CONFIG_MACH_NITROGEN6X) += barebox-boundarydevices-imx6q-nitrogen6x-1g.img
+image-$(CONFIG_MACH_NITROGEN6) += barebox-boundarydevices-imx6q-nitrogen6x-1g.img
 
-pblx-$(CONFIG_MACH_NITROGEN6X) += start_imx6q_nitrogen6x_2g
-CFG_start_imx6q_nitrogen6x_2g.pblx.imximg = $(board)/boundarydevices-nitrogen6x/flash-header-nitrogen6q-2g.imxcfg
+pblx-$(CONFIG_MACH_NITROGEN6) += start_imx6q_nitrogen6x_2g
+CFG_start_imx6q_nitrogen6x_2g.pblx.imximg = $(board)/boundarydevices-nitrogen6/flash-header-nitrogen6q-2g.imxcfg
 FILE_barebox-boundarydevices-imx6q-nitrogen6x-2g.img = start_imx6q_nitrogen6x_2g.pblx.imximg
-image-$(CONFIG_MACH_NITROGEN6X) += barebox-boundarydevices-imx6q-nitrogen6x-2g.img
+image-$(CONFIG_MACH_NITROGEN6) += barebox-boundarydevices-imx6q-nitrogen6x-2g.img
 
-pblx-$(CONFIG_MACH_NITROGEN6X) += start_imx6dl_nitrogen6x_1g
-CFG_start_imx6dl_nitrogen6x_1g.pblx.imximg = $(board)/boundarydevices-nitrogen6x/flash-header-nitrogen6dl-1g.imxcfg
+pblx-$(CONFIG_MACH_NITROGEN6) += start_imx6dl_nitrogen6x_1g
+CFG_start_imx6dl_nitrogen6x_1g.pblx.imximg = $(board)/boundarydevices-nitrogen6/flash-header-nitrogen6dl-1g.imxcfg
 FILE_barebox-boundarydevices-imx6dl-nitrogen6x-1g.img = start_imx6dl_nitrogen6x_1g.pblx.imximg
-image-$(CONFIG_MACH_NITROGEN6X) += barebox-boundarydevices-imx6dl-nitrogen6x-1g.img
+image-$(CONFIG_MACH_NITROGEN6) += barebox-boundarydevices-imx6dl-nitrogen6x-1g.img
 
-pblx-$(CONFIG_MACH_NITROGEN6X) += start_imx6dl_nitrogen6x_2g
-CFG_start_imx6dl_nitrogen6x_2g.pblx.imximg = $(board)/boundarydevices-nitrogen6x/flash-header-nitrogen6dl-2g.imxcfg
+pblx-$(CONFIG_MACH_NITROGEN6) += start_imx6dl_nitrogen6x_2g
+CFG_start_imx6dl_nitrogen6x_2g.pblx.imximg = $(board)/boundarydevices-nitrogen6/flash-header-nitrogen6dl-2g.imxcfg
 FILE_barebox-boundarydevices-imx6dl-nitrogen6x-2g.img = start_imx6dl_nitrogen6x_2g.pblx.imximg
-image-$(CONFIG_MACH_NITROGEN6X) += barebox-boundarydevices-imx6dl-nitrogen6x-2g.img
+image-$(CONFIG_MACH_NITROGEN6) += barebox-boundarydevices-imx6dl-nitrogen6x-2g.img
 
-pblx-$(CONFIG_MACH_NITROGEN6X) += start_imx6qp_nitrogen6_max
-CFG_start_imx6qp_nitrogen6_max.pblx.imximg = $(board)/boundarydevices-nitrogen6x/flash-header-nitrogen6qp-max.imxcfg
+pblx-$(CONFIG_MACH_NITROGEN6) += start_imx6qp_nitrogen6_max
+CFG_start_imx6qp_nitrogen6_max.pblx.imximg = $(board)/boundarydevices-nitrogen6/flash-header-nitrogen6qp-max.imxcfg
 FILE_barebox-boundarydevices-imx6qp-nitrogen6_max.img = start_imx6qp_nitrogen6_max.pblx.imximg
-image-$(CONFIG_MACH_NITROGEN6X) += barebox-boundarydevices-imx6qp-nitrogen6_max.img
+image-$(CONFIG_MACH_NITROGEN6) += barebox-boundarydevices-imx6qp-nitrogen6_max.img
 
 pblx-$(CONFIG_MACH_TX6X) += start_imx6dl_tx6x_512m
 CFG_start_imx6dl_tx6x_512m.pblx.imximg = $(board)/karo-tx6x/flash-header-tx6dl-512m.imxcfg
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
