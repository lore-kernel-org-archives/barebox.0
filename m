Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PCpq6-0007oJ-40
	for barebox@lists.infradead.org; Mon, 01 Nov 2010 08:34:12 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Mon,  1 Nov 2010 09:33:46 +0100
Message-Id: <1288600434-6112-14-git-send-email-r.schwebel@pengutronix.de>
In-Reply-To: <1288600434-6112-1-git-send-email-r.schwebel@pengutronix.de>
References: <1288600434-6112-1-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH 13/21] doc: unify documentation for 'addpart'
To: barebox@lists.infradead.org

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 commands/partition.c |   50 +++++++++++++++++---------------------------------
 1 files changed, 17 insertions(+), 33 deletions(-)

diff --git a/commands/partition.c b/commands/partition.c
index a1edcf6..dd37bc2 100644
--- a/commands/partition.c
+++ b/commands/partition.c
@@ -149,19 +149,23 @@ static int do_addpart(struct command * cmdtp, int argc, char *argv[])
 	return 0;
 }
 
-static const __maybe_unused char cmd_addpart_help[] =
-"Usage: addpart <device> <partition description>\n"
-"\n"
-"addpart adds a partition description to a device. The partition description\n"
-"has the form\n"
-"size1[@offset1](name1)[ro],size2[@offset2](name2)[ro],...\n"
-"<device> is the device name under. Size and offset can be given in decimal\n"
-"or - if prefixed with 0x in hex. Both can have an optional suffix K,M,G.\n"
-"The size of the last partition can be specified as '-' for the remaining\n"
-"space of the device.\n"
-"This format is the same as used in the Linux kernel for cmdline mtd partitions.\n"
-"\n"
-"Note: That this command has to be reworked and will probably change it's API.";
+BAREBOX_CMD_HELP_START(addpart)
+BAREBOX_CMD_HELP_USAGE("addpart <device> <part_desc>\n")
+BAREBOX_CMD_HELP_SHORT("Add a partition description to a device.\n")
+BAREBOX_CMD_HELP_OPT  ("<device>",    "device being worked on\n")
+BAREBOX_CMD_HELP_OPT  ("<part_desc>", "size1[@offset1](name1)[ro],size2[@offset2](name2)[ro],...\n")
+BAREBOX_CMD_HELP_END
+
+/**
+ * @page addpart_command
+Size and offset can be given in decimal hex (prefixed with 0x).  Both
+can have an optional suffix K, M or G. The size of the last partition
+can be specified as '-' for the remaining space on the device. This
+format is the same as used by the Linux kernel or cmdline mtd
+partitions.
+
+\todo This command has to be reworked and will probably change it's API.
+*/
 
 BAREBOX_CMD_START(addpart)
 	.cmd = do_addpart,
@@ -169,26 +173,6 @@ BAREBOX_CMD_START(addpart)
 	BAREBOX_CMD_HELP(cmd_addpart_help)
 BAREBOX_CMD_END
 
-/** @page addpart_command addpart Add a partition to a device
- *
- * Usage is: addpart \<device> \<partition description>
- *
- * Adds a partition description to a device. The partition description has the
- * form
- *
- * size1[\@offset1](name1)[ro],size2[\@offset2](name2)[ro],...
- *
- * \<device> is the device name under. Size and offset can be given in decimal
- * or - if prefixed with 0x - in hex. Both can have an optional suffix K,M,G.
- * The size of the last partition can be specified as '-' for the remaining
- * space of the device.
- *
- * @note The format is the same as used in the Linux kernel for cmdline mtd
- * partitions.
- *
- * @note This command has to be reworked and will probably change it's API.
- */
-
 static int do_delpart(struct command * cmdtp, int argc, char *argv[])
 {
 	int i, err;
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
