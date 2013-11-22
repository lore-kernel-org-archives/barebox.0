Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vjs8P-0008Ey-PN
 for barebox@lists.infradead.org; Fri, 22 Nov 2013 14:55:08 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 22 Nov 2013 15:54:28 +0100
Message-Id: <1385132083-7484-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1385132083-7484-1-git-send-email-s.hauer@pengutronix.de>
References: <1385132083-7484-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/16] ARM: OMAP: select SoC variant from boards
To: barebox@lists.infradead.org

To be able to compile multiple SoC types later.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-omap/Kconfig | 31 +++++++++++++------------------
 1 file changed, 13 insertions(+), 18 deletions(-)

diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
index b2eec30..79e75d8 100644
--- a/arch/arm/mach-omap/Kconfig
+++ b/arch/arm/mach-omap/Kconfig
@@ -22,11 +22,8 @@ menu "OMAP Features"
 config MACH_OMAP
 	bool
 
-choice
-	prompt "Select OMAP Variant"
-
 config ARCH_OMAP3
-	bool "OMAP3"
+	bool
 	select CPU_V7
 	select GENERIC_GPIO
 	select OMAP_CLOCK_SOURCE_S32K
@@ -34,7 +31,7 @@ config ARCH_OMAP3
 	  Say Y here if you are using Texas Instrument's OMAP343x based platform
 
 config ARCH_OMAP4
-	bool "OMAP4"
+	bool
 	select CPU_V7
 	select GENERIC_GPIO
 	select OMAP_CLOCK_SOURCE_S32K
@@ -42,15 +39,13 @@ config ARCH_OMAP4
 	  Say Y here if you are using Texas Instrument's OMAP4 based platform
 
 config ARCH_AM33XX
-	bool "AM33xx"
+	bool
 	select CPU_V7
 	select GENERIC_GPIO
 	select OMAP_CLOCK_SOURCE_DMTIMER0
 	help
 	  Say Y here if you are using Texas Instrument's AM33xx based platform
 
-endchoice
-
 # Blind enable all possible clocks.. think twice before you do this.
 config OMAP_CLOCK_SOURCE_S32K
 	bool
@@ -124,65 +119,65 @@ choice
 
 config MACH_OMAP343xSDP
 	bool "Texas Instrument's SDP343x"
-	depends on ARCH_OMAP3
+	select ARCH_OMAP3
 	help
 	  Say Y here if you are using SDP343x platform
 
 config MACH_BEAGLE
 	bool "Texas Instrument's Beagle Board"
 	select HAVE_DEFAULT_ENVIRONMENT_NEW
-	depends on ARCH_OMAP3
+	select ARCH_OMAP3
 	help
 	  Say Y here if you are using Beagle Board
 
 config MACH_BEAGLEBONE
 	bool "Texas Instrument's Beagle Bone"
-	depends on ARCH_AM33XX
+	select ARCH_AM33XX
 	help
 	  Say Y here if you are using Beagle Bone
 
 config MACH_OMAP3EVM
 	bool "Texas Instrument's OMAP3 EVM"
-	depends on ARCH_OMAP3
+	select ARCH_OMAP3
 	help
 	  Say Y here if you are using OMAP3EVM
 
 config MACH_PANDA
 	bool "Texas Instrument's Panda Board"
 	select HAVE_DEFAULT_ENVIRONMENT_NEW
-	depends on ARCH_OMAP4
+	select ARCH_OMAP4
 	help
 	  Say Y here if you are using OMAP4 Panda board
 
 config MACH_ARCHOSG9
 	bool "Archos G9 tablets"
-	depends on ARCH_OMAP4
+	select ARCH_OMAP4
 	help
 	  Say Y here if you are using OMAP4-based Archos G9 tablet
 
 config MACH_PCM049
 	bool "Phytec phyCORE pcm049"
-	depends on ARCH_OMAP4
+	select ARCH_OMAP4
 	help
 	  Say Y here if you are using Phytecs phyCORE pcm049 board
 	  based on OMAP4
 
 config MACH_PCAAL1
 	bool "Phytec phyCARD-A-L1"
-	depends on ARCH_OMAP3
+	select ARCH_OMAP3
 	help
 	  Say Y here if you are using a phyCARD-A-L1 PCA-A-L1
 
 config MACH_PCAAXL2
 	bool "Phytec phyCARD XL2"
-	depends on ARCH_OMAP4
+	select ARCH_OMAP4
 	help
 	  Say Y here if you are using a phyCARD-A-XL1 PCA-A-XL1
 
 config MACH_PCM051
 	bool "Phytec phyCORE pcm051"
 	select HAVE_DEFAULT_ENVIRONMENT_NEW
-	depends on ARCH_AM33XX
+	select ARCH_AM33XX
 	help
 	  Say Y here if you are using Phytecs phyCORE pcm051 board
 
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
