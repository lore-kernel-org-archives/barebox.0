Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PSptm-0001uO-5F
	for barebox@lists.infradead.org; Wed, 15 Dec 2010 11:52:05 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Wed, 15 Dec 2010 12:51:23 +0100
Message-Id: <1292413908-464-10-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH 09/34] doc: add documentation for 'sleep' command
To: barebox@lists.infradead.org

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 Documentation/commands.dox |    2 +-
 commands/sleep.c           |    5 +++++
 2 files changed, 6 insertions(+), 1 deletions(-)

diff --git a/Documentation/commands.dox b/Documentation/commands.dox
index 9348743..6598002 100644
--- a/Documentation/commands.dox
+++ b/Documentation/commands.dox
@@ -93,7 +93,7 @@ available in @a Barebox:
 @li @subpage saveenv_command
 @li @subpage setenv_command
 @li @subpage sh
-@li @subpage sleep
+@li @subpage sleep_command
 @li @subpage source
 @li @subpage test
 @li @subpage timeout_command
diff --git a/commands/sleep.c b/commands/sleep.c
index 40a3a47..972afd6 100644
--- a/commands/sleep.c
+++ b/commands/sleep.c
@@ -43,6 +43,11 @@ static int do_sleep(struct command *cmdtp, int argc, char *argv[])
 	return 0;
 }
 
+BAREBOX_CMD_HELP_START(sleep)
+BAREBOX_CMD_HELP_USAGE("sleep <n>\n")
+BAREBOX_CMD_HELP_SHORT("Delay execution for <n> seconds.\n")
+BAREBOX_CMD_HELP_END
+
 BAREBOX_CMD_START(sleep)
 	.cmd		= do_sleep,
 	.usage		= "delay execution for n seconds",
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
