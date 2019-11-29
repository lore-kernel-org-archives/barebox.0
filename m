Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iahz9-0006e0-Sd
 for barebox@lists.infradead.org; Fri, 29 Nov 2019 15:15:14 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>) id 1iahz7-0006u0-Mz
 for barebox@lists.infradead.org; Fri, 29 Nov 2019 16:15:05 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 29 Nov 2019 16:14:27 +0100
Message-Id: <20191129151505.23946-2-l.stach@pengutronix.de>
In-Reply-To: <20191129151505.23946-1-l.stach@pengutronix.de>
References: <20191129151505.23946-1-l.stach@pengutronix.de>
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
Subject: [PATCH 01/39] ARM: imx: add image type choice
To: barebox@lists.infradead.org

ARM32 and ARM64 boards can not be built into the same image. Make this
clear by adding a choice for the different image types. While at it
add a single board option.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/mach-imx/Kconfig | 56 +++++++++++++++++++++++++--------------
 1 file changed, 36 insertions(+), 20 deletions(-)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 6e98e95dbb00..f39d58ecefb2 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -199,10 +199,22 @@ config ARCH_VF610
 	select IMX_OCOTP	# Needed for clock adjustement
 	select CLOCKSOURCE_ARM_GLOBAL_TIMER
 
+choice
+	prompt "Build type"
+
 config IMX_MULTI_BOARDS
-	bool "Allow multiple boards to be selected"
+	bool "Allow multiple ARM32 boards to be selected"
+	select HAVE_PBL_MULTI_IMAGES
+
+config IMX_MULTI_BOARDS64
+	bool "Allow multiple ARM64 boards to be selected"
 	select HAVE_PBL_MULTI_IMAGES
 
+config IMX_SINGLE_BOARD
+	bool "Select single board (legacy)"
+
+endchoice
+
 if IMX_MULTI_BOARDS
 
 config MACH_SCB9328
@@ -461,16 +473,6 @@ config MACH_ZII_RDU2
 	select MACH_ZII_COMMON
 	select ARM_USE_COMPRESSED_DTB
 
-config MACH_ZII_IMX8MQ_DEV
-	bool "ZII i.MX8MQ based devices"
-	select ARCH_IMX8MQ
-	select FIRMWARE_IMX_LPDDR4_PMU_TRAIN
-	select FIRMWARE_IMX8MQ_ATF
-	select ARM_SMCCC
-	select MCI_IMX_ESDHC_PBL
-	select MACH_ZII_COMMON
-	select ARM_USE_COMPRESSED_DTB
-
 config MACH_ZII_VF610_DEV
 	bool "ZII VF610 Dev Family"
 	select ARCH_VF610
@@ -502,6 +504,20 @@ config MACH_NXP_IMX6ULL_EVK
 	bool "NXP i.MX6ull EVK Board"
 	select ARCH_IMX6UL
 
+config MACH_GRINN_LITEBOARD
+	bool "Grinn liteboard"
+	select ARCH_IMX6UL
+
+config MACH_DIGI_CCIMX6ULSBCPRO
+	bool "Digi Internal CC-IMX6UL SBC Pro"
+	select ARCH_IMX6
+	select ARCH_IMX6UL
+	select ARM_USE_COMPRESSED_DTB
+
+endif
+
+if IMX_MULTI_BOARDS64
+
 config MACH_NXP_IMX8MQ_EVK
 	bool "NXP i.MX8MQ EVK Board"
 	select ARCH_IMX8MQ
@@ -518,14 +534,14 @@ config MACH_PHYTEC_SOM_IMX8MQ
 	select ARM_SMCCC
 	select MCI_IMX_ESDHC_PBL
 
-config MACH_GRINN_LITEBOARD
-	bool "Grinn liteboard"
-	select ARCH_IMX6UL
-
-config MACH_DIGI_CCIMX6ULSBCPRO
-	bool "Digi Internal CC-IMX6UL SBC Pro"
-	select ARCH_IMX6
-	select ARCH_IMX6UL
+config MACH_ZII_IMX8MQ_DEV
+	bool "ZII i.MX8MQ based devices"
+	select ARCH_IMX8MQ
+	select FIRMWARE_IMX_LPDDR4_PMU_TRAIN
+	select FIRMWARE_IMX8MQ_ATF
+	select ARM_SMCCC
+	select MCI_IMX_ESDHC_PBL
+	select MACH_ZII_COMMON
 	select ARM_USE_COMPRESSED_DTB
 
 endif
@@ -534,7 +550,7 @@ endif
 
 choice
 	prompt "Select Board"
-	depends on !IMX_MULTI_BOARDS
+	depends on IMX_SINGLE_BOARD
 
 # ----------------------------------------------------------
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
