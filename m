Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PCpq5-0007oI-V8
	for barebox@lists.infradead.org; Mon, 01 Nov 2010 08:34:10 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Mon,  1 Nov 2010 09:33:48 +0100
Message-Id: <1288600434-6112-16-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH 15/21] doc: unify documentation for 'delpart'
To: barebox@lists.infradead.org

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 commands/partition.c |   35 +++++++++++++++++++++--------------
 1 files changed, 21 insertions(+), 14 deletions(-)

diff --git a/commands/partition.c b/commands/partition.c
index dd37bc2..db9b9fb 100644
--- a/commands/partition.c
+++ b/commands/partition.c
@@ -158,11 +158,12 @@ BAREBOX_CMD_HELP_END
 
 /**
  * @page addpart_command
-Size and offset can be given in decimal hex (prefixed with 0x).  Both
-can have an optional suffix K, M or G. The size of the last partition
-can be specified as '-' for the remaining space on the device. This
-format is the same as used by the Linux kernel or cmdline mtd
-partitions.
+
+The size and the offset can be given in decimal (without any prefix) and
+in hex (prefixed with 0x). Both can have an optional suffix K, M or G.
+The size of the last partition can be specified as '-' for the remaining
+space on the device.  This format is the same as used by the Linux
+kernel or cmdline mtd partitions.
 
 \todo This command has to be reworked and will probably change it's API.
 */
@@ -188,9 +189,21 @@ static int do_delpart(struct command * cmdtp, int argc, char *argv[])
 	return 1;
 }
 
-static const __maybe_unused char cmd_delpart_help[] =
-"Usage: delpart FILE...\n"
-"Delete partitions previously added to a device with addpart.\n";
+BAREBOX_CMD_HELP_START(delpart)
+BAREBOX_CMD_HELP_USAGE("delpart <part 1> [<part n>] \n")
+BAREBOX_CMD_HELP_SHORT("Delete partitions previously added to a device with addpart.\n")
+BAREBOX_CMD_HELP_END
+
+/**
+ * @page delpart_command
+
+Partitions are created by adding their description with the addpart
+command. If you want to get rid of a partition again, use delpart. The
+argument list is taken as a list of partitions to be deleted.
+
+\todo Add an example
+
+ */
 
 BAREBOX_CMD_START(delpart)
 	.cmd = do_delpart,
@@ -198,9 +211,3 @@ BAREBOX_CMD_START(delpart)
 	BAREBOX_CMD_HELP(cmd_delpart_help)
 BAREBOX_CMD_END
 
-/** @page delpart_command delpart Delete a partition
- *
- * Usage is: delpart \<partions>
- *
- * Delete a partition previously added to a device with addpart.
- */
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
