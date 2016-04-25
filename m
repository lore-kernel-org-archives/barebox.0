Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1auerf-0007rj-9X
 for barebox@lists.infradead.org; Mon, 25 Apr 2016 11:39:43 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 25 Apr 2016 13:39:20 +0200
Message-Id: <1461584360-5891-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] move FLEXIBLE_BOOTARGS from commands/ to common/
To: Barebox List <barebox@lists.infradead.org>

FLEXIBLE_BOOTARGS also works without command support being enabled.
Move this option from commands/Kconfig to common/Kconfig so that
it doesn't depend on COMMAND_SUPPORT.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/Kconfig | 13 -------------
 common/Kconfig   | 12 ++++++++++++
 2 files changed, 12 insertions(+), 13 deletions(-)

diff --git a/commands/Kconfig b/commands/Kconfig
index 875c5f4..13dd9bb 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -266,19 +266,6 @@ endmenu
 
 menu "Boot"
 
-# TODO: isn't a command
-config FLEXIBLE_BOOTARGS
-	bool
-	prompt "flexible Linux bootargs generation"
-	depends on CMD_GLOBAL
-	help
-	  Select this to get a more flexible bootargs generation. With this
-	  option the bootargs are concatenated together from global variables
-	  beginning with 'global.linux.bootargs.' and 'global.linux.mtdparts.'
-	  This allows for more flexible scripting since with it it's possible
-	  to replace parts of the bootargs string without reconstructing it
-	  completely.
-
 config CMD_AT91_BOOT_TEST
 	bool "at91_boot_test"
 	depends on ARCH_AT91
diff --git a/common/Kconfig b/common/Kconfig
index 7c09e8c..d00ca6b 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -536,6 +536,18 @@ config BLSPEC
 	  on a device and it allows the Operating System to install / update
 	  kernels.
 
+config FLEXIBLE_BOOTARGS
+	bool
+	prompt "flexible Linux bootargs generation"
+	depends on GLOBALVAR
+	help
+	  Select this to get a more flexible bootargs generation. With this
+	  option the bootargs are concatenated together from global variables
+	  beginning with 'global.linux.bootargs.' and 'global.linux.mtdparts.'
+	  This allows for more flexible scripting since with it it's possible
+	  to replace parts of the bootargs string without reconstructing it
+	  completely.
+
 config IMD
 	bool "barebox metadata support"
 
-- 
2.8.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
