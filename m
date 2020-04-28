Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTKoH-0001cz-LD
 for barebox@lists.infradead.org; Tue, 28 Apr 2020 07:37:44 +0000
Received: from geraet.fritz.box (i53875677.versanet.de [83.135.86.119])
 (Authenticated sender: ahmad@a3f.at)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id CE90AFF817
 for <barebox@lists.infradead.org>; Tue, 28 Apr 2020 07:37:39 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Tue, 28 Apr 2020 09:37:30 +0200
Message-Id: <20200428073730.34579-11-ahmad@a3f.at>
In-Reply-To: <20200428073730.34579-1-ahmad@a3f.at>
References: <20200428073730.34579-1-ahmad@a3f.at>
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
Subject: [PATCH 11/11] treewide: Kconfig: remove some unused symbols
To: barebox@lists.infradead.org

All these symbols are defined, but unused anywhere in the barebox tree.
Remove them.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/arm/mach-at91/Kconfig    |  3 ---
 arch/arm/mach-omap/Kconfig    |  3 ---
 arch/arm/mach-tegra/Kconfig   |  3 ---
 common/Kconfig                |  3 ---
 drivers/pinctrl/Kconfig       |  2 --
 drivers/pinctrl/mvebu/Kconfig | 15 ---------------
 6 files changed, 29 deletions(-)
 delete mode 100644 drivers/pinctrl/mvebu/Kconfig

diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 121cca2acf11..54fa9b8aa28c 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -6,9 +6,6 @@ config HAVE_AT91_UTMI
 config HAVE_AT91_USB_CLK
 	bool
 
-config HAVE_AT91_PIO4
-	bool
-
 config COMMON_CLK_AT91
 	bool
 	select COMMON_CLK
diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
index e9228809f067..220b6351679c 100644
--- a/arch/arm/mach-omap/Kconfig
+++ b/arch/arm/mach-omap/Kconfig
@@ -19,9 +19,6 @@
 menu "OMAP Features"
 	depends on ARCH_OMAP
 
-config MACH_OMAP
-	bool
-
 config ARCH_OMAP3
 	bool
 	select CPU_V7
diff --git a/arch/arm/mach-tegra/Kconfig b/arch/arm/mach-tegra/Kconfig
index 160732fbefdb..f144d346b4c5 100644
--- a/arch/arm/mach-tegra/Kconfig
+++ b/arch/arm/mach-tegra/Kconfig
@@ -4,9 +4,6 @@ config ARCH_TEXT_BASE
 	hex
 	default 0x0
 
-config BOARDINFO
-	default ""
-
 # ---------------------------------------------------------
 
 config ARCH_TEGRA_2x_SOC
diff --git a/common/Kconfig b/common/Kconfig
index 893bdeaffc9c..97f609d84b0f 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -144,9 +144,6 @@ config LOCALVERSION_AUTO
 
 	  which is done within the script "scripts/setlocalversion".)
 
-config BOARDINFO
-	string
-
 config BANNER
 	bool "display banner"
 	default y
diff --git a/drivers/pinctrl/Kconfig b/drivers/pinctrl/Kconfig
index fd75ea6a4f43..4f05f5d49458 100644
--- a/drivers/pinctrl/Kconfig
+++ b/drivers/pinctrl/Kconfig
@@ -93,8 +93,6 @@ config PINCTRL_TEGRA_XUSB
 	  The pinmux controller found on the Tegra 124 line of SoCs used for
 	  the SerDes lanes.
 
-source "drivers/pinctrl/mvebu/Kconfig"
-
 config PINCTRL_VF610
 	bool
 	default y if ARCH_VF610
diff --git a/drivers/pinctrl/mvebu/Kconfig b/drivers/pinctrl/mvebu/Kconfig
deleted file mode 100644
index af20cad43915..000000000000
--- a/drivers/pinctrl/mvebu/Kconfig
+++ /dev/null
@@ -1,15 +0,0 @@
-config PINCTRL_ARMADA_370
-	default y if ARCH_ARMADA_370
-	bool
-
-config PINCTRL_ARMADA_XP
-	bool
-	default y if ARCH_ARMADA_XP
-
-config PINCTRL_DOVE
-	bool
-	default y if ARCH_DOVE
-
-config PINCTRL_KIRKWOOD
-	bool
-	default y if ARCH_KIRKWOOD
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
