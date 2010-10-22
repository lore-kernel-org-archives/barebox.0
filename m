Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by casper.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P9KkV-0001xE-UD
	for barebox@lists.infradead.org; Fri, 22 Oct 2010 16:45:50 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Fri, 22 Oct 2010 18:45:24 +0200
Message-Id: <1287765924-1856-33-git-send-email-r.schwebel@pengutronix.de>
In-Reply-To: <1287765924-1856-1-git-send-email-r.schwebel@pengutronix.de>
References: <1287765924-1856-1-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH 32/32] doc: unify documentation for 'delpart'
To: barebox@lists.infradead.org

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 commands/partition.c |   13 ++++---------
 1 files changed, 4 insertions(+), 9 deletions(-)

diff --git a/commands/partition.c b/commands/partition.c
index 89fb519..7c7f5ae 100644
--- a/commands/partition.c
+++ b/commands/partition.c
@@ -183,9 +183,10 @@ static int do_delpart(struct command * cmdtp, int argc, char *argv[])
 	return 1;
 }
 
-static const __maybe_unused char cmd_delpart_help[] =
-"Usage: delpart FILE...\n"
-"Delete partitions previously added to a device with addpart.\n";
+BAREBOX_CMD_HELP_START(delpart)
+BAREBOX_CMD_HELP_USAGE("delpart FILE...\n")
+BAREBOX_CMD_HELP_SHORT("Delete partitions previously added to a device with addpart.\n")
+BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(delpart)
 	.cmd = do_delpart,
@@ -193,9 +194,3 @@ BAREBOX_CMD_START(delpart)
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
