Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by casper.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PSptk-0004Pu-2O
	for barebox@lists.infradead.org; Wed, 15 Dec 2010 11:51:59 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Wed, 15 Dec 2010 12:51:47 +0100
Message-Id: <1292413908-464-34-git-send-email-r.schwebel@pengutronix.de>
In-Reply-To: <1292413908-464-1-git-send-email-r.schwebel@pengutronix.de>
References: <1292413908-464-1-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH 33/34] doc: add documentation for 'memcmp' command
To: barebox@lists.infradead.org

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 Documentation/commands.dox |    2 +-
 commands/mem.c             |   33 +++++++++++++++++++--------------
 2 files changed, 20 insertions(+), 15 deletions(-)

diff --git a/Documentation/commands.dox b/Documentation/commands.dox
index c9a786d..7f5c4f7 100644
--- a/Documentation/commands.dox
+++ b/Documentation/commands.dox
@@ -67,7 +67,7 @@ available in @a Barebox:
 @li @subpage ls_command
 @li @subpage lsmod_command
 @li @subpage md
-@li @subpage memcmp
+@li @subpage memcmp_command
 @li @subpage meminfo_command
 @li @subpage memset
 @li @subpage menu
diff --git a/commands/mem.c b/commands/mem.c
index dc778d3..f9f71a7 100644
--- a/commands/mem.c
+++ b/commands/mem.c
@@ -310,7 +310,7 @@ BAREBOX_CMD_START(mw)
 	BAREBOX_CMD_HELP(cmd_mw_help)
 BAREBOX_CMD_END
 
-static int do_mem_cmp(struct command *cmdtp, int argc, char *argv[])
+static int do_memcmp(struct command *cmdtp, int argc, char *argv[])
 {
 	ulong	addr1, addr2, count = ~0;
 	int	mode  = O_RWSIZE_1;
@@ -400,21 +400,26 @@ out:
 	return ret;
 }
 
-static const __maybe_unused char cmd_memcmp_help[] =
-"Usage: memcmp [OPTIONS] <addr1> <addr2> <count>\n"
-"\n"
-"options:\n"
-"  -b, -w, -l	use byte, halfword, or word accesses\n"
-"  -s <file>    source file (default /dev/mem)\n"
-"  -d <file>    destination file (default /dev/mem)\n"
-"\n"
-"Compare memory regions specified with addr1 and addr2\n"
-"of size <count> bytes. If source is a file count can\n"
-"be left unspecified in which case the whole file is\n"
-"compared\n";
+BAREBOX_CMD_HELP_START(memcmp)
+BAREBOX_CMD_HELP_USAGE("memcmp [OPTIONS] ADDR1 ADDR2 COUNT\n")
+BAREBOX_CMD_HELP_SHORT("Compare memory regions ADDR1 and ADDR2 of COUNT bytes.\n")
+BAREBOX_CMD_HELP_OPT  ("-b, -w, -l", "use byte, halfword or word accesses\n")
+BAREBOX_CMD_HELP_OPT  ("-s <file>", "source file (default: /dev/mem)\n")
+BAREBOX_CMD_HELP_OPT  ("-d <file>", "destination file (default: /dev/mem)\n")
+BAREBOX_CMD_HELP_END
+
+/**
+ * @page memcmp_command
+
+<p> If source is a file, count can be left unspecified. In this case the
+whole file is compared.</p>
+
+\todo Add example.
+
+ */
 
 BAREBOX_CMD_START(memcmp)
-	.cmd		= do_mem_cmp,
+	.cmd		= do_memcmp,
 	.usage		= "memory compare",
 	BAREBOX_CMD_HELP(cmd_memcmp_help)
 BAREBOX_CMD_END
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
