Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WUdg3-0003R7-5f
 for barebox@lists.infradead.org; Mon, 31 Mar 2014 14:59:08 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 31 Mar 2014 16:58:43 +0200
Message-Id: <1396277923-25059-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: Panda: Fix board selection in panda defconfig files
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/panda_defconfig       | 4 +---
 arch/arm/configs/panda_xload_defconfig | 2 +-
 2 files changed, 2 insertions(+), 4 deletions(-)

diff --git a/arch/arm/configs/panda_defconfig b/arch/arm/configs/panda_defconfig
index 7be86ac..c42140a 100644
--- a/arch/arm/configs/panda_defconfig
+++ b/arch/arm/configs/panda_defconfig
@@ -1,5 +1,5 @@
 CONFIG_ARCH_OMAP=y
-CONFIG_ARCH_OMAP4=y
+CONFIG_MACH_PANDA=y
 CONFIG_THUMB2_BAREBOX=y
 CONFIG_CMD_ARM_MMUINFO=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
@@ -29,9 +29,7 @@ CONFIG_CMD_READLINE=y
 CONFIG_CMD_MENU=y
 CONFIG_CMD_MENU_MANAGEMENT=y
 CONFIG_CMD_TIME=y
-CONFIG_CMD_DIRNAME=y
 CONFIG_CMD_LN=y
-CONFIG_CMD_READLINK=y
 CONFIG_CMD_TFTP=y
 CONFIG_CMD_ECHO_E=y
 CONFIG_CMD_MEMINFO=y
diff --git a/arch/arm/configs/panda_xload_defconfig b/arch/arm/configs/panda_xload_defconfig
index 5cedcff..29a2afd 100644
--- a/arch/arm/configs/panda_xload_defconfig
+++ b/arch/arm/configs/panda_xload_defconfig
@@ -1,7 +1,7 @@
 CONFIG_ARCH_OMAP=y
-CONFIG_ARCH_OMAP4=y
 # CONFIG_OMAP_GPMC is not set
 CONFIG_OMAP_BUILD_IFT=y
+CONFIG_MACH_PANDA=y
 CONFIG_THUMB2_BAREBOX=y
 # CONFIG_CMD_ARM_CPUINFO is not set
 CONFIG_MMU=y
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
