Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1erT7Q-0003cP-4A
 for barebox@lists.infradead.org; Thu, 01 Mar 2018 18:39:54 +0000
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Thu,  1 Mar 2018 19:39:24 +0100
Message-Id: <20180301183924.4126-1-linux@rempel-privat.de>
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
Subject: [PATCH] MIPS: ath79: fix different typos
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

the CONFIG typos was not real issue.
The defconfig typo i detected only after clean compile.
I hope we can migrate barebox MIPS to multiimage soon.

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
---
 arch/mips/Makefile                                | 4 ++--
 arch/mips/configs/dptechnics-dpt-module_defconfig | 2 +-
 arch/mips/mach-ath79/Kconfig                      | 4 ++--
 3 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/mips/Makefile b/arch/mips/Makefile
index c53c3767b..3342e0eaf 100644
--- a/arch/mips/Makefile
+++ b/arch/mips/Makefile
@@ -79,8 +79,8 @@ machine-$(CONFIG_MACH_MIPS_AR231X)	:= ar231x
 board-$(CONFIG_BOARD_NETGEAR_WG102)	:= netgear-wg102
 
 machine-$(CONFIG_MACH_MIPS_ATH79)	:= ath79
-board-$(CONFIG_BOARC_8DEVICES_LIMA)	:= 8devices-lima
-board-$(CONFIG_BOARC_DPTECHNICS_DPT_MODULE)	:= dptechnics-dpt-module
+board-$(CONFIG_BOARD_8DEVICES_LIMA)	:= 8devices-lima
+board-$(CONFIG_BOARD_DPTECHNICS_DPT_MODULE)	:= dptechnics-dpt-module
 board-$(CONFIG_BOARD_TPLINK_MR3020)	:= tplink-mr3020
 board-$(CONFIG_BOARD_TPLINK_WDR4300)	:= tplink-wdr4300
 board-$(CONFIG_BOARD_BLACK_SWIFT)	:= black-swift
diff --git a/arch/mips/configs/dptechnics-dpt-module_defconfig b/arch/mips/configs/dptechnics-dpt-module_defconfig
index dbad08fe6..c01b22b98 100644
--- a/arch/mips/configs/dptechnics-dpt-module_defconfig
+++ b/arch/mips/configs/dptechnics-dpt-module_defconfig
@@ -1,7 +1,7 @@
 CONFIG_BUILTIN_DTB=y
 CONFIG_BUILTIN_DTB_NAME="ar9331-dptechnics-dpt-module"
 CONFIG_MACH_MIPS_ATH79=y
-CONFIG_BOARC_QCA_AR9331_GENERIC=y
+CONFIG_BOARD_DPTECHNICS_DPT_MODULE=y
 CONFIG_PBL_IMAGE=y
 CONFIG_IMAGE_COMPRESSION_XZKERN=y
 CONFIG_MMU=y
diff --git a/arch/mips/mach-ath79/Kconfig b/arch/mips/mach-ath79/Kconfig
index 3434e38ed..e4e10a2f6 100644
--- a/arch/mips/mach-ath79/Kconfig
+++ b/arch/mips/mach-ath79/Kconfig
@@ -13,7 +13,7 @@ config SOC_QCA_AR9344
 choice
 	prompt "Board type"
 
-config BOARC_8DEVICES_LIMA
+config BOARD_8DEVICES_LIMA
 	bool "8devices LIMA"
 	select SOC_QCA_QCA4531
 	select HAVE_PBL_IMAGE
@@ -21,7 +21,7 @@ config BOARC_8DEVICES_LIMA
 	select HAS_NMON
 	select HAS_NO_BOARD_HL_CODE
 
-config BOARC_DPTECHNICS_DPT_MODULE
+config BOARD_DPTECHNICS_DPT_MODULE
 	bool "DPTechnics DPT-Module"
 	select SOC_QCA_AR9331
 	select HAVE_PBL_IMAGE
-- 
2.14.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
