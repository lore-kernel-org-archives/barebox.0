Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x229.google.com ([2a00:1450:4013:c00::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wk81F-00021p-4l
 for barebox@lists.infradead.org; Tue, 13 May 2014 08:25:02 +0000
Received: by mail-ee0-f41.google.com with SMTP id t10so127207eei.0
 for <barebox@lists.infradead.org>; Tue, 13 May 2014 01:24:39 -0700 (PDT)
From: Holger Schurig <holgerschurig@gmail.com>
Date: Tue, 13 May 2014 10:28:59 +0200
Message-Id: <1399969739-10355-20-git-send-email-holgerschurig@gmail.com>
In-Reply-To: <1399969739-10355-1-git-send-email-holgerschurig@gmail.com>
References: <1399969739-10355-1-git-send-email-holgerschurig@gmail.com>
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
Subject: [PATCH 19/19] commands: move CONFIG_LONGHELP to commands/Kconfig
To: barebox@lists.infradead.org

Signed-off-by: Holger Schurig <holgerschurig@gmail.com>
---
 commands/Kconfig |   37 +++++++++++++++++++++++++++++++++++++
 common/Kconfig   |    5 -----
 2 files changed, 37 insertions(+), 5 deletions(-)

diff --git a/commands/Kconfig b/commands/Kconfig
index e105b84..9b61b57 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -105,6 +105,43 @@ config CMD_HELP
 	  	-a	output help on all commands
 	  	-v	verbose
 
+config LONGHELP
+	bool
+	depends on !SHELL_NONE && CMD_HELP
+	prompt "Long help texts"
+	help
+	  This make the "help" command of barebox spit out much more information,
+	  but (obviously) also makes barebox bigger.
+
+	  Example with CONFIG_LONGHELP:
+
+	  -----------------------------
+	  barebox:/ help ls
+
+	  ls - list a file or directory
+
+	  Usage: ls [-lCR] [FILEDIR...]
+
+	  List information about the specified files or directories.
+
+	  Options:
+	          -l      long format
+	          -C      column format (opposite of long format)
+	          -R      list subdirectories recursively
+	  -----------------------------
+
+	  And now without CONFIG_LONGHELP:
+
+	  -----------------------------
+	  barebox:/ help ls
+
+	  ls - list a file or directory
+
+	  Usage: ls [-lCR] [FILEDIR...]
+	  -----------------------------
+
+	  With my specific .config, the binary size increased from 461500 to 481980.
+
 config CMD_IOMEM
 	tristate
 	prompt "iomem and ioport"
diff --git a/common/Kconfig b/common/Kconfig
index 7a92a59..1afee93 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -294,11 +294,6 @@ config SIMPLE_READLINE
 	default y
 	depends on !CMDLINE_EDITING
 
-config LONGHELP
-	bool
-	depends on !SHELL_NONE
-	prompt "Enable long help texts"
-
 config CBSIZE
 	int
 	prompt "Buffer size for input from the Console"
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
