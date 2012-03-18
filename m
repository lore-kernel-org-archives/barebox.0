Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1S9I74-0002h0-HZ
 for barebox@lists.infradead.org; Sun, 18 Mar 2012 15:33:44 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 18 Mar 2012 16:33:29 +0100
Message-Id: <1332084809-31819-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] defenv: remove bogus defaultenv from defconfigs
To: barebox@lists.infradead.org

When CONFIG_DEFAULT_ENVIRONMENT_GENERIC is set the Make system
will automatically compile in defaultenv/ into the environment. Some
boards explicitely add this path again in their defconfig which is
not needed. Remove it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/cupid_defconfig                  |    2 +-
 arch/arm/configs/eukrea_cpuimx51_defconfig        |    2 +-
 arch/arm/configs/freescale_mx51_babbage_defconfig |    2 +-
 arch/arm/configs/freescale_mx53_loco_defconfig    |    2 +-
 arch/arm/configs/freescale_mx53_smd_defconfig     |    2 +-
 arch/arm/configs/nhk8815_defconfig                |    2 +-
 arch/arm/configs/phycard_a_l1_defconfig           |    2 +-
 arch/arm/configs/tqma53_defconfig                 |    2 +-
 8 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/arch/arm/configs/cupid_defconfig b/arch/arm/configs/cupid_defconfig
index a311e27..28d199b 100644
--- a/arch/arm/configs/cupid_defconfig
+++ b/arch/arm/configs/cupid_defconfig
@@ -18,7 +18,7 @@ CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="defaultenv arch/arm/boards/guf-cupid/env"
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/guf-cupid/env"
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
diff --git a/arch/arm/configs/eukrea_cpuimx51_defconfig b/arch/arm/configs/eukrea_cpuimx51_defconfig
index 7a746cc..76119cf 100644
--- a/arch/arm/configs/eukrea_cpuimx51_defconfig
+++ b/arch/arm/configs/eukrea_cpuimx51_defconfig
@@ -11,7 +11,7 @@ CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="defaultenv arch/arm/boards/eukrea_cpuimx51/env"
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/eukrea_cpuimx51/env"
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
diff --git a/arch/arm/configs/freescale_mx51_babbage_defconfig b/arch/arm/configs/freescale_mx51_babbage_defconfig
index dbdb76d..19e49ef 100644
--- a/arch/arm/configs/freescale_mx51_babbage_defconfig
+++ b/arch/arm/configs/freescale_mx51_babbage_defconfig
@@ -16,7 +16,7 @@ CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="defaultenv arch/arm/boards/freescale-mx51-pdk/env/"
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/freescale-mx51-pdk/env/"
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
diff --git a/arch/arm/configs/freescale_mx53_loco_defconfig b/arch/arm/configs/freescale_mx53_loco_defconfig
index bd2bdbe..f31d5bf 100644
--- a/arch/arm/configs/freescale_mx53_loco_defconfig
+++ b/arch/arm/configs/freescale_mx53_loco_defconfig
@@ -16,7 +16,7 @@ CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="defaultenv arch/arm/boards/freescale-mx53-loco/env/"
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/freescale-mx53-loco/env/"
 CONFIG_DEBUG_INFO=y
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
diff --git a/arch/arm/configs/freescale_mx53_smd_defconfig b/arch/arm/configs/freescale_mx53_smd_defconfig
index f37df56..1ede9ac 100644
--- a/arch/arm/configs/freescale_mx53_smd_defconfig
+++ b/arch/arm/configs/freescale_mx53_smd_defconfig
@@ -17,7 +17,7 @@ CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="defaultenv arch/arm/boards/freescale-mx53-smd/env/"
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/freescale-mx53-smd/env/"
 CONFIG_DEBUG_INFO=y
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
diff --git a/arch/arm/configs/nhk8815_defconfig b/arch/arm/configs/nhk8815_defconfig
index 597e9dd..cec50d5 100644
--- a/arch/arm/configs/nhk8815_defconfig
+++ b/arch/arm/configs/nhk8815_defconfig
@@ -11,7 +11,7 @@ CONFIG_MENU=y
 CONFIG_PASSWD_SUM_SHA1=y
 CONFIG_PARTITION=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="defaultenv arch/arm/boards/nhk8815/env"
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/nhk8815/env"
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
diff --git a/arch/arm/configs/phycard_a_l1_defconfig b/arch/arm/configs/phycard_a_l1_defconfig
index 64afcc2..cf980f7 100644
--- a/arch/arm/configs/phycard_a_l1_defconfig
+++ b/arch/arm/configs/phycard_a_l1_defconfig
@@ -63,7 +63,7 @@ CONFIG_PARTITION=y
 CONFIG_PARTITION_DISK=y
 CONFIG_PARTITION_DISK_DOS=y
 CONFIG_DEFAULT_ENVIRONMENT=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="defaultenv ./arch/arm/boards/phycard-a-l1/env"
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/phycard-a-l1/env"
 CONFIG_COMMAND_SUPPORT=y
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
diff --git a/arch/arm/configs/tqma53_defconfig b/arch/arm/configs/tqma53_defconfig
index 5d9573d..a126f30 100644
--- a/arch/arm/configs/tqma53_defconfig
+++ b/arch/arm/configs/tqma53_defconfig
@@ -16,7 +16,7 @@ CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="defaultenv arch/arm/boards/tqma53/env/"
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/tqma53/env/"
 CONFIG_DEBUG_INFO=y
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
