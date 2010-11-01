Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PCpq5-0007o7-25
	for barebox@lists.infradead.org; Mon, 01 Nov 2010 08:34:04 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Mon,  1 Nov 2010 09:33:37 +0100
Message-Id: <1288600434-6112-5-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH 04/21] doc: add documentation for 'clear'
To: barebox@lists.infradead.org

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 Documentation/commands.dox |    1 +
 commands/clear.c           |    5 +++++
 2 files changed, 6 insertions(+), 0 deletions(-)

diff --git a/Documentation/commands.dox b/Documentation/commands.dox
index ac280d6..b065ca4 100644
--- a/Documentation/commands.dox
+++ b/Documentation/commands.dox
@@ -5,6 +5,7 @@
 @li @subpage bmp_command
 @li @subpage cat_command
 @li @subpage cd_command
+@li @subpage clear_command
 @li @subpage cp_command
 @li @subpage delpart_command
 @li @subpage devinfo_command
diff --git a/commands/clear.c b/commands/clear.c
index 7589a0c..6a6b6c5 100644
--- a/commands/clear.c
+++ b/commands/clear.c
@@ -31,6 +31,11 @@ static int do_clear(struct command *cmdtp, int argc, char *argv[])
 	return 0;
 }
 
+BAREBOX_CMD_HELP_START(clear)
+BAREBOX_CMD_HELP_USAGE("clear\n")
+BAREBOX_CMD_HELP_SHORT("Clear the screen.\n")
+BAREBOX_CMD_HELP_END
+
 BAREBOX_CMD_START(clear)
 	.cmd		= do_clear,
 	.usage		= "clear screen",
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
