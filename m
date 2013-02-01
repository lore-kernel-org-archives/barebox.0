Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U1BXT-0000jo-WB
 for barebox@lists.infradead.org; Fri, 01 Feb 2013 08:00:00 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  1 Feb 2013 08:59:29 +0100
Message-Id: <1359705587-9762-17-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1359705587-9762-1-git-send-email-s.hauer@pengutronix.de>
References: <1359705587-9762-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 16/34] ARM clep7212: switch to barebox_arm_entry
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Kconfig                    |    2 ++
 arch/arm/boards/clep7212/lowlevel.c |    3 ++-
 arch/arm/mach-clps711x/Kconfig      |    2 --
 3 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 3197f8b..6ed9bf0 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -44,6 +44,8 @@ config ARCH_CLPS711X
 	bool "Cirrus Logic EP711x/EP721x/EP731x"
 	select CLKDEV_LOOKUP
 	select CPU_32v4T
+	select MACH_HAS_LOWLEVEL_INIT
+	select MACH_DO_LOWLEVEL_INIT
 
 config ARCH_EP93XX
 	bool "Cirrus Logic EP93xx"
diff --git a/arch/arm/boards/clep7212/lowlevel.c b/arch/arm/boards/clep7212/lowlevel.c
index 9b7e241..7465a42 100644
--- a/arch/arm/boards/clep7212/lowlevel.c
+++ b/arch/arm/boards/clep7212/lowlevel.c
@@ -9,6 +9,7 @@
 
 #include <common.h>
 #include <init.h>
+#include <sizes.h>
 
 #include <asm/io.h>
 #include <asm/barebox-arm.h>
@@ -52,5 +53,5 @@ void __naked __bare_init reset(void)
 	writel(SDCONF_CASLAT_3 | SDCONF_SIZE_256 | SDCONF_WIDTH_16 |
 	       SDCONF_CLKCTL | SDCONF_ACTIVE, SDCONF);
 
-	board_init_lowlevel_return();
+	barebox_arm_entry(SDRAM0_BASE, SZ_32M, 0);
 }
diff --git a/arch/arm/mach-clps711x/Kconfig b/arch/arm/mach-clps711x/Kconfig
index 469ca72..f0adeda 100644
--- a/arch/arm/mach-clps711x/Kconfig
+++ b/arch/arm/mach-clps711x/Kconfig
@@ -5,8 +5,6 @@ choice
 
 config MACH_CLEP7212
 	bool "Cirrus Logic CLEP7212"
-	select MACH_HAS_LOWLEVEL_INIT
-	select MACH_DO_LOWLEVEL_INIT
 	help
 	  Boards based on the Cirrus Logic 7212/7312 CPU.
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
