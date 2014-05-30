Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x234.google.com ([2a00:1450:400c:c05::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WqJaX-0001MC-VI
 for barebox@lists.infradead.org; Fri, 30 May 2014 09:59:02 +0000
Received: by mail-wi0-f180.google.com with SMTP id hi2so801048wib.13
 for <barebox@lists.infradead.org>; Fri, 30 May 2014 02:58:39 -0700 (PDT)
From: Holger Schurig <holgerschurig@gmail.com>
Date: Fri, 30 May 2014 12:03:53 +0200
Message-Id: <1401444233-17881-1-git-send-email-holgerschurig@gmail.com>
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
Subject: [PATCH] oftree, of_dump: fix help texts
To: barebox@lists.infradead.org

* don't use <FOO> for options
* don't use \n in BAREBOX_CMD_HELP_OPT
* harmonize Kconfig help text with command help text

Signed-off-by: Holger Schurig <holgerschurig@gmail.com>
---
 commands/Kconfig   |   11 ++++++-----
 commands/of_dump.c |    6 +++---
 commands/oftree.c  |    4 ++--
 3 files changed, 11 insertions(+), 10 deletions(-)

diff --git a/commands/Kconfig b/commands/Kconfig
index 6043cb6..bd058ae 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -1897,7 +1897,7 @@ config CMD_OF_DUMP
 	  Usage: of_dump [-f] [NODE]
 
 	  Options:
-		-f <dtb>	work on <dtb> instead of internal devicetree
+		-f DTB   work on DTB instead of internal devicetree
 
 config CMD_OF_NODE
 	tristate
@@ -1938,12 +1938,13 @@ config CMD_OFTREE
 	help
 	  oftree - handle device trees
 
-	  Usage: oftree [-lpfdn] [DTB]
+	  Usage: oftree [-lspf]
 
 	  Options:
-		  -l		Load DTB to internal device tree
-		  -p		probe devices from stored device tree
-		  -f		free stored device tree
+	  	-l DTB	Load DTB to internal devicetree
+	  	-s DTB	save internal devicetree to DTB
+	  	-p	probe devices from stored device tree
+	  	-f	free stored device tree
 
 config CMD_TIME
 	bool "time"
diff --git a/commands/of_dump.c b/commands/of_dump.c
index e341942..e85d859 100644
--- a/commands/of_dump.c
+++ b/commands/of_dump.c
@@ -95,13 +95,13 @@ out:
 
 BAREBOX_CMD_HELP_START(of_dump)
 BAREBOX_CMD_HELP_TEXT("Options:")
-BAREBOX_CMD_HELP_OPT  ("-f dtb",  "work on dtb instead of internal devicetree\n")
+BAREBOX_CMD_HELP_OPT  ("-f DTB",  "work on dtb instead of internal devicetree")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(of_dump)
 	.cmd		= do_of_dump,
-	BAREBOX_CMD_DESC("dump devicetree nodes")
-	BAREBOX_CMD_OPTS("[-f]")
+	BAREBOX_CMD_DESC("Dump device tree or parts of it.")
+	BAREBOX_CMD_OPTS("[-f] [NODE]")
 	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
 	BAREBOX_CMD_COMPLETE(devicetree_file_complete)
 	BAREBOX_CMD_HELP(cmd_of_dump_help)
diff --git a/commands/oftree.c b/commands/oftree.c
index a3b0e04..1ab86f0 100644
--- a/commands/oftree.c
+++ b/commands/oftree.c
@@ -136,8 +136,8 @@ out:
 
 BAREBOX_CMD_HELP_START(oftree)
 BAREBOX_CMD_HELP_TEXT("Options:")
-BAREBOX_CMD_HELP_OPT ("-l <DTB>",  "Load <DTB> to internal devicetree\n")
-BAREBOX_CMD_HELP_OPT ("-s <DTB>",  "save internal devicetree to <DTB>\n")
+BAREBOX_CMD_HELP_OPT ("-l DTB",  "Load DTB to internal devicetree")
+BAREBOX_CMD_HELP_OPT ("-s DTB",  "save internal devicetree to DTB")
 BAREBOX_CMD_HELP_OPT ("-p",  "probe devices from stored device tree")
 BAREBOX_CMD_HELP_OPT ("-f",  "free stored device tree")
 BAREBOX_CMD_HELP_END
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
