Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1avKze-0005oJ-8Q
 for barebox@lists.infradead.org; Wed, 27 Apr 2016 08:38:46 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 27 Apr 2016 10:38:23 +0200
Message-Id: <1461746305-31995-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/3] Kconfig: Make GLOBALVAR visible
To: Barebox List <barebox@lists.infradead.org>

Currently global environment variables are only enabled when the
"global" command is enabled. In fact, they could be used even with
the "global" command disabled, so make the GLOBALVAR option visible.
While at it, add a help text for this option.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/Kconfig |  5 ++---
 common/Kconfig   | 12 +++++++++---
 2 files changed, 11 insertions(+), 6 deletions(-)

diff --git a/commands/Kconfig b/commands/Kconfig
index 875c5f4..39a2df5 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -348,7 +348,7 @@ config CMD_BOOTM
 	select UIMAGE
 	select UNCOMPRESS
 	select FILETYPE
-	select GLOBALVAR
+	depends on GLOBALVAR
 	prompt "bootm"
 	help
 	  Boot an application image
@@ -741,13 +741,12 @@ config CMD_EXPORT
 
 config CMD_DEFAULTENV
 	tristate
-	select ENV_HANDLING
 	prompt "defaultenv"
 	help
 	  restore environment from default environment
 
 config CMD_GLOBAL
-	select GLOBALVAR
+	depends on GLOBALVAR
 	tristate
 	prompt "global"
 	help
diff --git a/common/Kconfig b/common/Kconfig
index 7c09e8c..503f43a 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -78,9 +78,6 @@ config FITIMAGE_SIGNATURE
 config LOGBUF
 	bool
 
-config GLOBALVAR
-	bool
-
 config STDDEV
 	bool
 
@@ -159,6 +156,15 @@ config MEMINFO
 config ENVIRONMENT_VARIABLES
 	bool "environment variables support"
 
+config GLOBALVAR
+	bool "global environment variables support"
+	default y if !SHELL_NONE
+	help
+	  Global environment variables begin with "global.". Unlike normal
+	  shell variables they have the same values in all contexts. Global
+	  variables are used to control several aspects of the system behaviour.
+	  If unsure, say yes here.
+
 menu "memory layout"
 
 source "pbl/Kconfig"
-- 
2.8.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
