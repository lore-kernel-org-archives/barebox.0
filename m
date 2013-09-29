Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VQN7n-00023W-5J
 for barebox@lists.infradead.org; Sun, 29 Sep 2013 19:57:52 +0000
Received: from tellur.localdomain (p54831980.dip0.t-ipconnect.de
 [84.131.25.128]) by lynxeye.de (Postfix) with ESMTPA id 2DBEA26C2002
 for <barebox@lists.infradead.org>; Sun, 29 Sep 2013 21:56:10 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Sun, 29 Sep 2013 21:59:34 +0200
Message-Id: <1380484776-32266-7-git-send-email-dev@lynxeye.de>
In-Reply-To: <1380484776-32266-1-git-send-email-dev@lynxeye.de>
References: <1380484776-32266-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 6/8] tegra: don't force to choose between Tegra arches
To: barebox@lists.infradead.org

There is nothing technically preventing a single Tegra 20/30
image to be built. Don't force this split in Kconfig.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/mach-tegra/Kconfig | 19 ++++++-------------
 1 file changed, 6 insertions(+), 13 deletions(-)

diff --git a/arch/arm/mach-tegra/Kconfig b/arch/arm/mach-tegra/Kconfig
index 4164f56..90c0c0f 100644
--- a/arch/arm/mach-tegra/Kconfig
+++ b/arch/arm/mach-tegra/Kconfig
@@ -5,15 +5,6 @@ config ARCH_TEXT_BASE
 	default 0x0
 
 choice
-	prompt "Tegra processor type"
-
-config ARCH_TEGRA_2x_SOC
-	bool "Tegra 20"
-	select PINCTRL_TEGRA20
-
-endchoice
-
-choice
 	prompt "Tegra debug UART"
 	help
 	  This is the first serial console that gets activated by barebox.
@@ -48,18 +39,22 @@ endchoice
 
 # ---------------------------------------------------------
 
-if ARCH_TEGRA_2x_SOC
+config ARCH_TEGRA_2x_SOC
+	bool
+	select PINCTRL_TEGRA20
 
 choice
-	prompt "Tegra 20 Board Type"
+	prompt "select Tegra Board"
 
 config MACH_TEGRA20_GENERIC
 	bool "Generic DT based board"
+	select ARCH_TEGRA_2x_SOC
 	help
 	  Say Y here if you are building for a generic DT based board.
 
 config MACH_TOSHIBA_AC100
 	bool "Toshiba AC100"
+	select ARCH_TEGRA_2x_SOC
 	help
 	  Say Y here if you are using Toshiba AC100 smartbook.
 
@@ -71,8 +66,6 @@ endif #MACH_TEGRA20_GENERIC
 
 source arch/arm/boards/toshiba-ac100/Kconfig
 
-endif #ARCH_TEGRA_2x_SOC
-
 # ---------------------------------------------------------
 
 endif
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
