Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kbV84-0004IW-RM
 for barebox@lists.infradead.org; Sat, 07 Nov 2020 20:48:09 +0000
From: Roland Hieber <rhi@pengutronix.de>
Date: Sat,  7 Nov 2020 21:47:28 +0100
Message-Id: <20201107204728.1900-2-rhi@pengutronix.de>
In-Reply-To: <20201107204728.1900-1-rhi@pengutronix.de>
References: <20201107204728.1900-1-rhi@pengutronix.de>
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
Subject: [PATCH 2/2] mxs: always build mxsimage and mxsboot tools
To: Barebox Mailing List <barebox@lists.infradead.org>
Cc: Roland Hieber <rhi@pengutronix.de>

Both tools are used unconditionally by images/Makefile.mxs. Always
build them for ARCH_MXS, and remove their prompt in the host tools
section, as they are not really useful as stand-alone tools.

Signed-off-by: Roland Hieber <rhi@pengutronix.de>
---
 scripts/Kconfig  | 9 ---------
 scripts/Makefile | 2 +-
 2 files changed, 1 insertion(+), 10 deletions(-)

diff --git a/scripts/Kconfig b/scripts/Kconfig
index 20530b9ae384..b903486ecd8f 100644
--- a/scripts/Kconfig
+++ b/scripts/Kconfig
@@ -20,15 +20,6 @@ config MVEBU_HOSTTOOLS
 	  This enables building the tools kwbimage to create an image suitable
 	  for Marvell mvebu machines and kwboot to boot via UART.
 
-config MXS_HOSTTOOLS
-	bool "mxs hosttools" if COMPILE_HOST_TOOLS
-	depends on ARCH_MXS || COMPILE_HOST_TOOLS
-	default y if ARCH_MXS
-	help
-	  This builds the tools mxsimage and mxsboot which are needed to
-	  create bootable image files for mxs. You need openssl development
-	  files to compile this tool.
-
 config OMAP3_USB_LOADER
 	bool "omap3 USB loader"
 	depends on ARCH_OMAP3 || COMPILE_HOST_TOOLS
diff --git a/scripts/Makefile b/scripts/Makefile
index 30b7ec540cdf..744f4dd0e7e6 100644
--- a/scripts/Makefile
+++ b/scripts/Makefile
@@ -21,7 +21,7 @@ hostprogs-always-$(CONFIG_ARCH_DAVINCI)			+= mkublheader
 HOSTCFLAGS_zynq_mkimage.o = -I$(srctree) -I$(srctree)/arch/arm/mach-zynq/include
 hostprogs-always-$(CONFIG_ARCH_ZYNQ)			+= zynq_mkimage
 hostprogs-always-$(CONFIG_ARCH_SOCFPGA)			+= socfpga_mkimage
-hostprogs-always-$(CONFIG_MXS_HOSTTOOLS)		+= mxsimage mxsboot
+hostprogs-always-$(CONFIG_ARCH_MXS)			+= mxsimage mxsboot
 hostprogs-always-$(CONFIG_ARCH_LAYERSCAPE)		+= pblimage
 hostprogs-always-$(CONFIG_ARCH_STM32MP)			+= stm32image
 KBUILD_HOSTCFLAGS += -I$(srctree)/scripts/include/
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
