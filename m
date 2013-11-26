Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VlLJI-0008DS-W8
 for barebox@lists.infradead.org; Tue, 26 Nov 2013 16:16:26 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 26 Nov 2013 17:15:58 +0100
Message-Id: <1385482559-6068-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] common Kconfig: Add missing depends on
To: barebox@lists.infradead.org

CONFIG_MAXARGS is only used with the simple console support, so add
a 'depends on'. While at it, move it below the shell selection.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/Kconfig | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/common/Kconfig b/common/Kconfig
index ccfbc80..f47602e 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -292,11 +292,6 @@ config CBSIZE
 	prompt "Buffer size for input from the Console"
 	default 1024
 
-config MAXARGS
-	int
-	prompt "max. Number of arguments accepted for monitor commands"
-	default 16
-
 choice
 	prompt "Select your shell"
 
@@ -328,6 +323,12 @@ choice
 		  at the end of the barebox startup process.
 endchoice
 
+config MAXARGS
+	int
+	depends on SHELL_SIMPLE
+	prompt "max. Number of arguments accepted for monitor commands"
+	default 16
+
 config GLOB
 	bool
 	prompt "hush globbing support"
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
