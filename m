Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Srx1u-0004KP-Nq
 for barebox@lists.infradead.org; Thu, 19 Jul 2012 20:09:01 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1Srx1r-0007Be-7v
 for barebox@lists.infradead.org; Thu, 19 Jul 2012 22:08:55 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <jbe@pengutronix.de>) id 1Srx1r-00010Z-6Z
 for barebox@lists.infradead.org; Thu, 19 Jul 2012 22:08:55 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Thu, 19 Jul 2012 22:08:53 +0200
Message-Id: <1342728533-3750-2-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1342728533-3750-1-git-send-email-jbe@pengutronix.de>
References: <1342728533-3750-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH] ARM/Samsung: add the vendor FriendlyARM to the board's
 directory name
To: barebox@lists.infradead.org

Since a look into "arch/arm/boards/" offers various boards starting with the
vendor's name in their directory name (like 'eukrea' and 'freescale').
This patch does the same with the currently existing FriendlyARM boards
Mini2440 and Tiny210. More boards of this vendor will follow.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 arch/arm/Makefile                                                  |    4 ++--
 arch/arm/boards/{mini2440 => friendlyarm-mini2440}/Kconfig         |    0
 arch/arm/boards/{mini2440 => friendlyarm-mini2440}/Makefile        |    0
 arch/arm/boards/{mini2440 => friendlyarm-mini2440}/config.h        |    0
 arch/arm/boards/{mini2440 => friendlyarm-mini2440}/env/config      |    0
 arch/arm/boards/{mini2440 => friendlyarm-mini2440}/lowlevel_init.S |    0
 arch/arm/boards/{mini2440 => friendlyarm-mini2440}/mini2440.c      |    0
 arch/arm/boards/{tiny210 => friendlyarm-tiny210}/Makefile          |    0
 arch/arm/boards/{tiny210 => friendlyarm-tiny210}/config.h          |    0
 arch/arm/boards/{tiny210 => friendlyarm-tiny210}/lowlevel.c        |    0
 arch/arm/boards/{tiny210 => friendlyarm-tiny210}/tiny210.c         |    0
 .../configs/{mini2440_defconfig => friendlyarm_mini2440_defconfig} |    2 +-
 .../configs/{tiny210_defconfig => friendlyarm_tiny210_defconfig}   |    0
 arch/arm/mach-samsung/Kconfig                                      |    2 +-
 14 files changed, 4 insertions(+), 4 deletions(-)
 rename arch/arm/boards/{mini2440 => friendlyarm-mini2440}/Kconfig (100%)
 rename arch/arm/boards/{mini2440 => friendlyarm-mini2440}/Makefile (100%)
 rename arch/arm/boards/{mini2440 => friendlyarm-mini2440}/config.h (100%)
 rename arch/arm/boards/{mini2440 => friendlyarm-mini2440}/env/config (100%)
 rename arch/arm/boards/{mini2440 => friendlyarm-mini2440}/lowlevel_init.S (100%)
 rename arch/arm/boards/{mini2440 => friendlyarm-mini2440}/mini2440.c (100%)
 rename arch/arm/boards/{tiny210 => friendlyarm-tiny210}/Makefile (100%)
 rename arch/arm/boards/{tiny210 => friendlyarm-tiny210}/config.h (100%)
 rename arch/arm/boards/{tiny210 => friendlyarm-tiny210}/lowlevel.c (100%)
 rename arch/arm/boards/{tiny210 => friendlyarm-tiny210}/tiny210.c (100%)
 rename arch/arm/configs/{mini2440_defconfig => friendlyarm_mini2440_defconfig} (92%)
 rename arch/arm/configs/{tiny210_defconfig => friendlyarm_tiny210_defconfig} (100%)

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 9488359..8d661a4 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -122,7 +122,7 @@ board-$(CONFIG_MACH_FREESCALE_MX51_PDK)		:= freescale-mx51-pdk
 board-$(CONFIG_MACH_FREESCALE_MX53_LOCO)	:= freescale-mx53-loco
 board-$(CONFIG_MACH_FREESCALE_MX53_SMD)		:= freescale-mx53-smd
 board-$(CONFIG_MACH_GUF_CUPID)			:= guf-cupid
-board-$(CONFIG_MACH_MINI2440)			:= mini2440
+board-$(CONFIG_MACH_MINI2440)			:= friendlyarm-mini2440
 board-$(CONFIG_MACH_QIL_A9260)			:= qil-a9260
 board-$(CONFIG_MACH_TNY_A9260)			:= tny-a926x
 board-$(CONFIG_MACH_TNY_A9263)			:= tny-a926x
@@ -137,7 +137,7 @@ board-$(CONFIG_MACH_TX51)			:= karo-tx51
 board-$(CONFIG_MACH_MX6Q_ARM2)			:= freescale-mx6-arm2
 board-$(CONFIG_MACH_TOSHIBA_AC100)		:= toshiba-ac100
 board-$(CONFIG_MACH_CCMX51)			:= ccxmx51
-board-$(CONFIG_MACH_TINY210)			:= tiny210
+board-$(CONFIG_MACH_TINY210)			:= friendlyarm-tiny210
 
 machdirs := $(patsubst %,arch/arm/mach-%/,$(machine-y))
 
diff --git a/arch/arm/boards/mini2440/Kconfig b/arch/arm/boards/friendlyarm-mini2440/Kconfig
similarity index 100%
rename from arch/arm/boards/mini2440/Kconfig
rename to arch/arm/boards/friendlyarm-mini2440/Kconfig
diff --git a/arch/arm/boards/mini2440/Makefile b/arch/arm/boards/friendlyarm-mini2440/Makefile
similarity index 100%
rename from arch/arm/boards/mini2440/Makefile
rename to arch/arm/boards/friendlyarm-mini2440/Makefile
diff --git a/arch/arm/boards/mini2440/config.h b/arch/arm/boards/friendlyarm-mini2440/config.h
similarity index 100%
rename from arch/arm/boards/mini2440/config.h
rename to arch/arm/boards/friendlyarm-mini2440/config.h
diff --git a/arch/arm/boards/mini2440/env/config b/arch/arm/boards/friendlyarm-mini2440/env/config
similarity index 100%
rename from arch/arm/boards/mini2440/env/config
rename to arch/arm/boards/friendlyarm-mini2440/env/config
diff --git a/arch/arm/boards/mini2440/lowlevel_init.S b/arch/arm/boards/friendlyarm-mini2440/lowlevel_init.S
similarity index 100%
rename from arch/arm/boards/mini2440/lowlevel_init.S
rename to arch/arm/boards/friendlyarm-mini2440/lowlevel_init.S
diff --git a/arch/arm/boards/mini2440/mini2440.c b/arch/arm/boards/friendlyarm-mini2440/mini2440.c
similarity index 100%
rename from arch/arm/boards/mini2440/mini2440.c
rename to arch/arm/boards/friendlyarm-mini2440/mini2440.c
diff --git a/arch/arm/boards/tiny210/Makefile b/arch/arm/boards/friendlyarm-tiny210/Makefile
similarity index 100%
rename from arch/arm/boards/tiny210/Makefile
rename to arch/arm/boards/friendlyarm-tiny210/Makefile
diff --git a/arch/arm/boards/tiny210/config.h b/arch/arm/boards/friendlyarm-tiny210/config.h
similarity index 100%
rename from arch/arm/boards/tiny210/config.h
rename to arch/arm/boards/friendlyarm-tiny210/config.h
diff --git a/arch/arm/boards/tiny210/lowlevel.c b/arch/arm/boards/friendlyarm-tiny210/lowlevel.c
similarity index 100%
rename from arch/arm/boards/tiny210/lowlevel.c
rename to arch/arm/boards/friendlyarm-tiny210/lowlevel.c
diff --git a/arch/arm/boards/tiny210/tiny210.c b/arch/arm/boards/friendlyarm-tiny210/tiny210.c
similarity index 100%
rename from arch/arm/boards/tiny210/tiny210.c
rename to arch/arm/boards/friendlyarm-tiny210/tiny210.c
diff --git a/arch/arm/configs/mini2440_defconfig b/arch/arm/configs/friendlyarm_mini2440_defconfig
similarity index 92%
rename from arch/arm/configs/mini2440_defconfig
rename to arch/arm/configs/friendlyarm_mini2440_defconfig
index efe76e4..5551ffe 100644
--- a/arch/arm/configs/mini2440_defconfig
+++ b/arch/arm/configs/friendlyarm_mini2440_defconfig
@@ -12,7 +12,7 @@ CONFIG_GLOB=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/mini2440/env"
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/friendlyarm-mini2440/env"
 CONFIG_DEBUG_INFO=y
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
diff --git a/arch/arm/configs/tiny210_defconfig b/arch/arm/configs/friendlyarm_tiny210_defconfig
similarity index 100%
rename from arch/arm/configs/tiny210_defconfig
rename to arch/arm/configs/friendlyarm_tiny210_defconfig
diff --git a/arch/arm/mach-samsung/Kconfig b/arch/arm/mach-samsung/Kconfig
index 90cda30..b28cf1f 100644
--- a/arch/arm/mach-samsung/Kconfig
+++ b/arch/arm/mach-samsung/Kconfig
@@ -80,7 +80,7 @@ config MACH_A9M2410DEV
 
 endchoice
 
-source arch/arm/boards/mini2440/Kconfig
+source arch/arm/boards/friendlyarm-mini2440/Kconfig
 
 endmenu
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
