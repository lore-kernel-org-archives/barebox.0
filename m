Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.km20343-01.keymachine.de ([84.19.182.79]
 helo=km20343-01.keymachine.de)
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uat2t-0003ic-Or
 for barebox@lists.infradead.org; Fri, 10 May 2013 19:32:00 +0000
Received: from localhost.localdomain (tmo-104-0.customers.d1-online.com
 [80.187.104.0])
 by km20343-01.keymachine.de (Postfix) with ESMTPA id 884457D416E
 for <barebox@lists.infradead.org>; Fri, 10 May 2013 21:31:34 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Fri, 10 May 2013 21:31:26 +0200
Message-Id: <1368214286-23413-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH] tegra20: add generic board
To: barebox@lists.infradead.org

The Tegra arch will be fully based on device tree and most boards
shouldn't need anything more than the generic drivers and arch code.

Define a dummy board entry and generic defconfig as a strting point for
building a board with DT support.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/configs/tegra20_defconfig | 23 +++++++++++++++++++++++
 arch/arm/mach-tegra/Kconfig        | 12 ++++++++++++
 2 files changed, 35 insertions(+)
 create mode 100644 arch/arm/configs/tegra20_defconfig

diff --git a/arch/arm/configs/tegra20_defconfig b/arch/arm/configs/tegra20_defconfig
new file mode 100644
index 0000000..c18049d
--- /dev/null
+++ b/arch/arm/configs/tegra20_defconfig
@@ -0,0 +1,23 @@
+CONFIG_ARCH_TEGRA=y
+CONFIG_AEABI=y
+CONFIG_CMD_ARM_MMUINFO=y
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_STACK_SIZE=0x10000
+CONFIG_MALLOC_SIZE=0x4000000
+CONFIG_LONGHELP=y
+CONFIG_GLOB=y
+CONFIG_GLOB_SORT=y
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_HUSH_GETOPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_IOMEM=y
+CONFIG_CMD_BOOTZ=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_OFTREE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_CLK=y
+CONFIG_DRIVER_SERIAL_NS16550=y
diff --git a/arch/arm/mach-tegra/Kconfig b/arch/arm/mach-tegra/Kconfig
index 965e7ab..661ec37 100644
--- a/arch/arm/mach-tegra/Kconfig
+++ b/arch/arm/mach-tegra/Kconfig
@@ -52,6 +52,11 @@ config ARCH_TEXT_BASE
 choice
 	prompt "Tegra 20 Board Type"
 
+config MACH_TEGRA20_GENERIC
+	bool "Generic DT based board"
+	help
+	  Say Y here if you are building for a generic DT based board.
+
 config MACH_TOSHIBA_AC100
 	bool "Toshiba AC100"
 	help
@@ -59,6 +64,13 @@ config MACH_TOSHIBA_AC100
 
 endchoice
 
+if MACH_TEGRA20_GENERIC
+
+config BOARDINFO
+	default "Generic Tegra20 board"
+
+endif #MACH_TEGRA20_GENERIC
+
 source arch/arm/boards/toshiba-ac100/Kconfig
 
 endif #ARCH_TEGRA_2x_SOC
-- 
1.8.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
