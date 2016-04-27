Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1avKzj-0005os-8W
 for barebox@lists.infradead.org; Wed, 27 Apr 2016 08:38:51 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 27 Apr 2016 10:38:24 +0200
Message-Id: <1461746305-31995-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1461746305-31995-1-git-send-email-s.hauer@pengutronix.de>
References: <1461746305-31995-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/3] Kconfig: Make ENV_HANDLING visible
To: Barebox List <barebox@lists.infradead.org>

ENV_HANDLING is usable even without explicit loadenv/saveenv command
support. Instead of selecting this option from loadenv/saveenv, make
this option visible. loadenv/saveenv can then depend on ENV_HANDLING
rather than selecting it. This reduces Kconfig dependencies hassles.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/Kconfig |  4 ++--
 common/Kconfig   | 16 +++++++++++-----
 2 files changed, 13 insertions(+), 7 deletions(-)

diff --git a/commands/Kconfig b/commands/Kconfig
index 39a2df5..56b9542 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -761,7 +761,7 @@ config CMD_GLOBAL
 
 config CMD_LOADENV
 	tristate
-	select ENV_HANDLING
+	depends on ENV_HANDLING
 	prompt "loadenv"
 	help
 	  Load environment from ENVFS
@@ -805,7 +805,7 @@ config CMD_MAGICVAR_HELP
 
 config CMD_SAVEENV
 	tristate
-	select ENV_HANDLING
+	depends on ENV_HANDLING
 	prompt "saveenv"
 	help
 	  Save environment to persistent storage
diff --git a/common/Kconfig b/common/Kconfig
index 503f43a..12f6e84 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -21,10 +21,6 @@ config HAS_KALLSYMS
 config HAS_MODULES
 	bool
 
-config ENV_HANDLING
-	select CRC32
-	bool
-
 config HAS_CACHE
 	bool
 	help
@@ -646,10 +642,20 @@ config PARTITION
 
 source common/partitions/Kconfig
 
+config ENV_HANDLING
+	select CRC32
+	bool "Support environment files storage"
+	default y if !SHELL_NONE
+	help
+	  Enabling this option will give you environment files which can be stored
+	  over reboots. The "saveenv" command will store all files under /env/ to
+	  the persistent environment, the "loadenv" command (also executed during
+	  startup) will bring them back. If unsure, say yes.
+
 config DEFAULT_ENVIRONMENT
 	bool
 	default y
-	select ENV_HANDLING
+	depends on ENV_HANDLING
 	prompt "Compile in default environment"
 	help
 	  Enabling this option will give you a default environment when
-- 
2.8.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
