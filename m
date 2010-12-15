Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PSpti-0001uJ-Kp
	for barebox@lists.infradead.org; Wed, 15 Dec 2010 11:51:57 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Wed, 15 Dec 2010 12:51:22 +0100
Message-Id: <1292413908-464-9-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH 08/34] doc: add documentation for 'true' command
To: barebox@lists.infradead.org

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 Documentation/commands.dox |    2 +-
 commands/true.c            |    5 +++++
 2 files changed, 6 insertions(+), 1 deletions(-)

diff --git a/Documentation/commands.dox b/Documentation/commands.dox
index e25dda0..9348743 100644
--- a/Documentation/commands.dox
+++ b/Documentation/commands.dox
@@ -97,7 +97,7 @@ available in @a Barebox:
 @li @subpage source
 @li @subpage test
 @li @subpage timeout_command
-@li @subpage true
+@li @subpage true_command
 @li @subpage tftp_command
 @li @subpage ubiattach_command
 @li @subpage ubimkvol_command
diff --git a/commands/true.c b/commands/true.c
index 8c77dec..d77a365 100644
--- a/commands/true.c
+++ b/commands/true.c
@@ -29,6 +29,11 @@ static int do_true(struct command *cmdtp, int argc, char *argv[])
 	return 0;
 }
 
+BAREBOX_CMD_HELP_START(true)
+BAREBOX_CMD_HELP_USAGE("true\n")
+BAREBOX_CMD_HELP_SHORT("Do nothing, successfully.\n")
+BAREBOX_CMD_HELP_END
+
 BAREBOX_CMD_START(true)
 	.cmd		= do_true,
 	.usage		= "do nothing, successfully",
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
