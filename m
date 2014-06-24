Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WzKEp-0008Ei-0z
 for barebox@lists.infradead.org; Tue, 24 Jun 2014 06:29:52 +0000
Received: from tellur.localdomain (p57B5E0B8.dip0.t-ipconnect.de
 [87.181.224.184]) by lynxeye.de (Postfix) with ESMTPA id 8E30D18B4259
 for <barebox@lists.infradead.org>; Tue, 24 Jun 2014 08:28:53 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Tue, 24 Jun 2014 08:33:15 +0200
Message-Id: <1403591596-13955-2-git-send-email-dev@lynxeye.de>
In-Reply-To: <1403591596-13955-1-git-send-email-dev@lynxeye.de>
References: <1403591596-13955-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 2/3] arm: imx6: rename hummingboard directory to microsom
To: barebox@lists.infradead.org

The rule in barebox is to name the directories after
the modules. As hummingboard is just one of the
carriers for the MicroSOM module, name the directory
accordingly.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/boards/Makefile                                            | 2 +-
 .../boards/{solidrun-hummingboard => solidrun-microsom}/Makefile    | 0
 .../arm/boards/{solidrun-hummingboard => solidrun-microsom}/board.c | 0
 .../flash-header-solidrun-hummingboard.imxcfg                       | 0
 .../boards/{solidrun-hummingboard => solidrun-microsom}/lowlevel.c  | 0
 arch/arm/configs/imx_v7_defconfig                                   | 2 +-
 arch/arm/dts/Makefile                                               | 2 +-
 arch/arm/mach-imx/Kconfig                                           | 4 ++--
 images/Makefile.imx                                                 | 6 +++---
 9 files changed, 8 insertions(+), 8 deletions(-)
 rename arch/arm/boards/{solidrun-hummingboard => solidrun-microsom}/Makefile (100%)
 rename arch/arm/boards/{solidrun-hummingboard => solidrun-microsom}/board.c (100%)
 rename arch/arm/boards/{solidrun-hummingboard => solidrun-microsom}/flash-header-solidrun-hummingboard.imxcfg (100%)
 rename arch/arm/boards/{solidrun-hummingboard => solidrun-microsom}/lowlevel.c (100%)

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index 4eccc92..b8bfb84 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -88,7 +88,7 @@ obj-$(CONFIG_MACH_SAMA5D3_XPLAINED)		+= sama5d3_xplained/
 obj-$(CONFIG_MACH_SCB9328)			+= scb9328/
 obj-$(CONFIG_MACH_SOCFPGA_EBV_SOCRATES)		+= ebv-socrates/
 obj-$(CONFIG_MACH_SOCFPGA_TERASIC_SOCKIT)	+= terasic-sockit/
-obj-$(CONFIG_MACH_SOLIDRUN_HUMMINGBOARD)	+= solidrun-hummingboard/
+obj-$(CONFIG_MACH_SOLIDRUN_MICROSOM)		+= solidrun-microsom/
 obj-$(CONFIG_MACH_TNY_A9260)			+= tny-a926x/
 obj-$(CONFIG_MACH_TNY_A9263)			+= tny-a926x/
 obj-$(CONFIG_MACH_TNY_A9G20)			+= tny-a926x/
diff --git a/arch/arm/boards/solidrun-hummingboard/Makefile b/arch/arm/boards/solidrun-microsom/Makefile
similarity index 100%
rename from arch/arm/boards/solidrun-hummingboard/Makefile
rename to arch/arm/boards/solidrun-microsom/Makefile
diff --git a/arch/arm/boards/solidrun-hummingboard/board.c b/arch/arm/boards/solidrun-microsom/board.c
similarity index 100%
rename from arch/arm/boards/solidrun-hummingboard/board.c
rename to arch/arm/boards/solidrun-microsom/board.c
diff --git a/arch/arm/boards/solidrun-hummingboard/flash-header-solidrun-hummingboard.imxcfg b/arch/arm/boards/solidrun-microsom/flash-header-solidrun-hummingboard.imxcfg
similarity index 100%
rename from arch/arm/boards/solidrun-hummingboard/flash-header-solidrun-hummingboard.imxcfg
rename to arch/arm/boards/solidrun-microsom/flash-header-solidrun-hummingboard.imxcfg
diff --git a/arch/arm/boards/solidrun-hummingboard/lowlevel.c b/arch/arm/boards/solidrun-microsom/lowlevel.c
similarity index 100%
rename from arch/arm/boards/solidrun-hummingboard/lowlevel.c
rename to arch/arm/boards/solidrun-microsom/lowlevel.c
diff --git a/arch/arm/configs/imx_v7_defconfig b/arch/arm/configs/imx_v7_defconfig
index 8e0508e..66fc123 100644
--- a/arch/arm/configs/imx_v7_defconfig
+++ b/arch/arm/configs/imx_v7_defconfig
@@ -15,7 +15,7 @@ CONFIG_MACH_TQMA6X=y
 CONFIG_MACH_SABRELITE=y
 CONFIG_MACH_SABRESD=y
 CONFIG_MACH_NITROGEN6X=y
-CONFIG_MACH_SOLIDRUN_HUMMINGBOARD=y
+CONFIG_MACH_SOLIDRUN_MICROSOM=y
 CONFIG_MACH_EMBEST_RIOTBOARD=y
 CONFIG_MACH_UDOO=y
 CONFIG_MACH_VARISCITE_MX6=y
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index bb6c622..e2f5288 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -67,7 +67,7 @@ pbl-$(CONFIG_MACH_TX25) += imx25-karo-tx25.dtb.o
 pbl-$(CONFIG_MACH_RADXA_ROCK) += rk3188-radxarock.dtb.o
 pbl-$(CONFIG_MACH_SOCFPGA_EBV_SOCRATES) += socfpga_cyclone5_socrates.dtb.o
 pbl-$(CONFIG_MACH_SOCFPGA_TERASIC_SOCKIT) += socfpga_cyclone5_sockit.dtb.o
-pbl-$(CONFIG_MACH_SOLIDRUN_HUMMINGBOARD) += imx6dl-hummingboard.dtb.o
+pbl-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += imx6dl-hummingboard.dtb.o
 pbl-$(CONFIG_MACH_SABRELITE) += imx6q-sabrelite.dtb.o imx6dl-sabrelite.dtb.o
 pbl-$(CONFIG_MACH_SABRESD) += imx6q-sabresd.dtb.o
 pbl-$(CONFIG_MACH_GUF_SANTARO) += imx6q-guf-santaro.dtb.o
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 3b85f45..dfaaeec 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -260,8 +260,8 @@ config MACH_NITROGEN6X
 	bool "BoundaryDevices Nitrogen6x"
 	select ARCH_IMX6
 
-config MACH_SOLIDRUN_HUMMINGBOARD
-	bool "SolidRun Hummingboard"
+config MACH_SOLIDRUN_MICROSOM
+	bool "SolidRun MicroSOM based devices"
 	select ARCH_IMX6
 
 config MACH_EMBEST_RIOTBOARD
diff --git a/images/Makefile.imx b/images/Makefile.imx
index 5085a55..0e96c1f 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -146,10 +146,10 @@ CFG_start_imx6q_sabresd.pblx.imximg = $(board)/freescale-mx6-sabresd/flash-heade
 FILE_barebox-freescale-imx6q-sabresd.img = start_imx6q_sabresd.pblx.imximg
 image-$(CONFIG_MACH_SABRESD) += barebox-freescale-imx6q-sabresd.img
 
-pblx-$(CONFIG_MACH_SOLIDRUN_HUMMINGBOARD) += start_imx6dl_hummingboard
-CFG_start_imx6dl_hummingboard.pblx.imximg = $(board)/solidrun-hummingboard/flash-header-solidrun-hummingboard.imxcfg
+pblx-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += start_imx6dl_hummingboard
+CFG_start_imx6dl_hummingboard.pblx.imximg = $(board)/solidrun-microsom/flash-header-solidrun-hummingboard.imxcfg
 FILE_barebox-solidrun-imx6dl-hummingboard.img = start_imx6dl_hummingboard.pblx.imximg
-image-$(CONFIG_MACH_SOLIDRUN_HUMMINGBOARD) += barebox-solidrun-imx6dl-hummingboard.img
+image-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += barebox-solidrun-imx6dl-hummingboard.img
 
 pblx-$(CONFIG_MACH_NITROGEN6X) += start_imx6q_nitrogen6x_1g
 CFG_start_imx6q_nitrogen6x_1g.pblx.imximg = $(board)/boundarydevices-nitrogen6x/flash-header-nitrogen6x-1g.imxcfg
-- 
1.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
