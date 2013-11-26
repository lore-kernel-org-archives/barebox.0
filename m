Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VlLma-0004qf-Am
 for barebox@lists.infradead.org; Tue, 26 Nov 2013 16:46:41 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 26 Nov 2013 17:46:06 +0100
Message-Id: <1385484367-15366-17-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1385484367-15366-1-git-send-email-s.hauer@pengutronix.de>
References: <1385484367-15366-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 16/17] ARM: OMAP: introduce multiboard support and move am33xx
 boards to it
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/am335x_beaglebone_defconfig     |  1 +
 arch/arm/configs/am335x_beaglebone_mlo_defconfig |  1 +
 arch/arm/configs/pcm051_defconfig                |  1 +
 arch/arm/configs/pcm051_mlo_defconfig            |  1 +
 arch/arm/mach-omap/Kconfig                       | 36 ++++++++++++++----------
 5 files changed, 25 insertions(+), 15 deletions(-)

diff --git a/arch/arm/configs/am335x_beaglebone_defconfig b/arch/arm/configs/am335x_beaglebone_defconfig
index 38e19ef..857b89c 100644
--- a/arch/arm/configs/am335x_beaglebone_defconfig
+++ b/arch/arm/configs/am335x_beaglebone_defconfig
@@ -1,4 +1,5 @@
 CONFIG_ARCH_OMAP=y
+CONFIG_OMAP_MULTI_BOARDS=y
 CONFIG_MACH_BEAGLEBONE=y
 CONFIG_THUMB2_BAREBOX=y
 CONFIG_CMD_ARM_MMUINFO=y
diff --git a/arch/arm/configs/am335x_beaglebone_mlo_defconfig b/arch/arm/configs/am335x_beaglebone_mlo_defconfig
index ac682cc..905cc6d 100644
--- a/arch/arm/configs/am335x_beaglebone_mlo_defconfig
+++ b/arch/arm/configs/am335x_beaglebone_mlo_defconfig
@@ -1,6 +1,7 @@
 CONFIG_ARCH_OMAP=y
 # CONFIG_OMAP_GPMC is not set
 CONFIG_OMAP_BUILD_IFT=y
+CONFIG_OMAP_MULTI_BOARDS=y
 CONFIG_MACH_BEAGLEBONE=y
 CONFIG_THUMB2_BAREBOX=y
 # CONFIG_CMD_ARM_CPUINFO is not set
diff --git a/arch/arm/configs/pcm051_defconfig b/arch/arm/configs/pcm051_defconfig
index 949c82f..d7e510b 100644
--- a/arch/arm/configs/pcm051_defconfig
+++ b/arch/arm/configs/pcm051_defconfig
@@ -1,5 +1,6 @@
 CONFIG_ARCH_OMAP=y
 CONFIG_BAREBOX_UPDATE_AM33XX_SPI_NOR_MLO=y
+CONFIG_OMAP_MULTI_BOARDS=y
 CONFIG_MACH_PCM051=y
 CONFIG_THUMB2_BAREBOX=y
 CONFIG_ARM_BOARD_APPEND_ATAG=y
diff --git a/arch/arm/configs/pcm051_mlo_defconfig b/arch/arm/configs/pcm051_mlo_defconfig
index dc4165a..ae5764b 100644
--- a/arch/arm/configs/pcm051_mlo_defconfig
+++ b/arch/arm/configs/pcm051_mlo_defconfig
@@ -1,5 +1,6 @@
 CONFIG_ARCH_OMAP=y
 CONFIG_OMAP_BUILD_IFT=y
+CONFIG_OMAP_MULTI_BOARDS=y
 CONFIG_MACH_PCM051=y
 CONFIG_THUMB2_BAREBOX=y
 # CONFIG_CMD_ARM_CPUINFO is not set
diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
index 3a53333..12b9c1f 100644
--- a/arch/arm/mach-omap/Kconfig
+++ b/arch/arm/mach-omap/Kconfig
@@ -114,8 +114,29 @@ config CMD_BOOT_ORDER
 	help
 	  A command to choose the next boot device on a warm reset.
 
+config OMAP_MULTI_BOARDS
+	bool "Allow multiple boards to be selected"
+	select HAVE_DEFAULT_ENVIRONMENT_NEW
+	select HAVE_PBL_MULTI_IMAGES
+
+if OMAP_MULTI_BOARDS
+
+config MACH_BEAGLEBONE
+	bool "Texas Instrument's Beagle Bone"
+	select ARCH_AM33XX
+	help
+	  Say Y here if you are using Beagle Bone
+
+config MACH_PCM051
+	bool "Phytec phyCORE pcm051"
+	select ARCH_AM33XX
+	help
+	  Say Y here if you are using Phytecs phyCORE pcm051 board
+endif
+
 choice
 	prompt "Select OMAP board"
+	depends on !OMAP_MULTI_BOARDS
 
 config MACH_OMAP343xSDP
 	bool "Texas Instrument's SDP343x"
@@ -130,13 +151,6 @@ config MACH_BEAGLE
 	help
 	  Say Y here if you are using Beagle Board
 
-config MACH_BEAGLEBONE
-	bool "Texas Instrument's Beagle Bone"
-	select ARCH_AM33XX
-	select HAVE_PBL_MULTI_IMAGES
-	help
-	  Say Y here if you are using Beagle Bone
-
 config MACH_OMAP3EVM
 	bool "Texas Instrument's OMAP3 EVM"
 	select ARCH_OMAP3
@@ -175,14 +189,6 @@ config MACH_PCAAXL2
 	help
 	  Say Y here if you are using a phyCARD-A-XL1 PCA-A-XL1
 
-config MACH_PCM051
-	bool "Phytec phyCORE pcm051"
-	select HAVE_DEFAULT_ENVIRONMENT_NEW
-	select ARCH_AM33XX
-	select HAVE_PBL_MULTI_IMAGES
-	help
-	  Say Y here if you are using Phytecs phyCORE pcm051 board
-
 endchoice
 
 if ARCH_OMAP
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
