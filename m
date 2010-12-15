Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by casper.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PSptm-0004Q5-N8
	for barebox@lists.infradead.org; Wed, 15 Dec 2010 11:52:01 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Wed, 15 Dec 2010 12:51:48 +0100
Message-Id: <1292413908-464-35-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH 34/34] doc: add documentation for 'md' command
To: barebox@lists.infradead.org

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 Documentation/commands.dox |    2 +-
 commands/mem.c             |   37 ++++++++++++++++++++-----------------
 2 files changed, 21 insertions(+), 18 deletions(-)

diff --git a/Documentation/commands.dox b/Documentation/commands.dox
index 7f5c4f7..1148e3d 100644
--- a/Documentation/commands.dox
+++ b/Documentation/commands.dox
@@ -66,7 +66,7 @@ available in @a Barebox:
 @li @subpage login
 @li @subpage ls_command
 @li @subpage lsmod_command
-@li @subpage md
+@li @subpage md_command
 @li @subpage memcmp_command
 @li @subpage meminfo_command
 @li @subpage memset
diff --git a/commands/mem.c b/commands/mem.c
index f9f71a7..76bfa0a 100644
--- a/commands/mem.c
+++ b/commands/mem.c
@@ -212,24 +212,27 @@ out:
 	return errno;
 }
 
-static const __maybe_unused char cmd_md_help[] =
-"Usage md [OPTIONS] <region>\n"
-"display (hexdump) a memory region.\n"
-"options:\n"
-"  -s <file>   display file (default /dev/mem)\n"
-"  -b          output in bytes\n"
-"  -w          output in halfwords (16bit)\n"
-"  -l          output in words (32bit)\n"
-"\n"
-"Memory regions:\n"
-"Memory regions can be specified in two different forms: start+size\n"
-"or start-end, If <start> is ommitted it defaults to 0. If end is ommited it\n"
-"defaults to the end of the device, except for interactive commands like md\n"
-"and mw for which it defaults to 0x100.\n"
-"Sizes can be specified as decimal, or if prefixed with 0x as hexadecimal.\n"
-"an optional suffix of k, M or G is for kibibytes, Megabytes or Gigabytes,\n"
-"respectively\n";
 
+BAREBOX_CMD_HELP_START(md)
+BAREBOX_CMD_HELP_USAGE("md [OPTIONS] <region>\n")
+BAREBOX_CMD_HELP_SHORT("Display (hexdump) a memory region.\n")
+BAREBOX_CMD_HELP_OPT  ("-s <file>", "display file (default: /dev/mem)\n")
+BAREBOX_CMD_HELP_OPT  ("-b", "output in bytes\n")
+BAREBOX_CMD_HELP_OPT  ("-w", "output in halfwords (16 bit)\n")
+BAREBOX_CMD_HELP_OPT  ("-l", "output in words (32 bit)\n")
+BAREBOX_CMD_HELP_END
+
+/**
+ * @page md_command
+
+<p> Memory regions can be specified in two different forms: start+size
+or start-end, If <start> is ommitted it defaults to 0. If end is ommited
+it defaults to the end of the device, except for interactive commands
+like md and mw for which it defaults to 0x100. Sizes can be specified as
+decimal, or if prefixed with 0x as hexadecimal. an optional suffix of k,
+M or G is for kibibytes, Megabytes or Gigabytes, respectively. </p>
+
+ */
 
 BAREBOX_CMD_START(md)
 	.cmd		= do_mem_md,
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
