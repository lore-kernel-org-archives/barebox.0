Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PDGdU-0002Xn-OA
	for barebox@lists.infradead.org; Tue, 02 Nov 2010 13:10:51 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Tue,  2 Nov 2010 14:10:39 +0100
Message-Id: <1288703442-5032-11-git-send-email-r.schwebel@pengutronix.de>
In-Reply-To: <1288703442-5032-1-git-send-email-r.schwebel@pengutronix.de>
References: <1288703442-5032-1-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH 10/13] doc: unify documentation for 'linux16'
To: barebox@lists.infradead.org

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 commands/linux16.c |   25 ++++++++++++-------------
 1 files changed, 12 insertions(+), 13 deletions(-)

diff --git a/commands/linux16.c b/commands/linux16.c
index b15812f..ec859a7 100644
--- a/commands/linux16.c
+++ b/commands/linux16.c
@@ -288,14 +288,22 @@ on_error:
 	return rc;
 }
 
-static const __maybe_unused char cmd_linux16_help[] =
-"Usage: linux16 <file>\n"
-"Boot a linux kernel via real mode code\n";
+BAREBOX_CMD_HELP_START(linux16)
+BAREBOX_CMD_HELP_USAGE("linux16 <file>\n")
+BAREBOX_CMD_HELP_SHORT("Boot a kernel on x86 via real mode code.\n")
+BAREBOX_CMD_HELP_END
 
+/**
+ * @page linux16_command
+
+<p> Only kernel images in bzImage format are supported by now. See \ref
+x86_boot_preparation for more info about how to use this command.</p>
+
+ */
 
 BAREBOX_CMD_START(linux16)
 	.cmd		= do_linux16,
-	.usage		= "boot linux kernel",
+	.usage		= "boot a linux kernel",
 	BAREBOX_CMD_HELP(cmd_linux16_help)
 BAREBOX_CMD_END
 
@@ -305,15 +313,6 @@ BAREBOX_CMD_END
  */
 
 /**
- * @page linux16_command linux16: Boot a bzImage kernel on x86
- *
- * Usage is: linux16 \<file\>
- *
- * Boot a linux kernel via real mode code. Only kernel images in the
- * @p bzImage format are supported.
- */
-
-/**
  * @page x86_boot_preparation Linux Preparation on x86
  *
  * Due to some real mode constraints, starting Linux is somehow tricky.
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
