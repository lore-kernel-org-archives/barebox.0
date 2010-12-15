Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PSpti-0001uR-L1
	for barebox@lists.infradead.org; Wed, 15 Dec 2010 11:52:00 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Wed, 15 Dec 2010 12:51:33 +0100
Message-Id: <1292413908-464-20-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH 19/34] doc: add documentation for 'false' command
To: barebox@lists.infradead.org

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 Documentation/commands.dox |    2 +-
 commands/false.c           |    5 +++++
 2 files changed, 6 insertions(+), 1 deletions(-)

diff --git a/Documentation/commands.dox b/Documentation/commands.dox
index cf91a49..087ab4e 100644
--- a/Documentation/commands.dox
+++ b/Documentation/commands.dox
@@ -43,7 +43,7 @@ available in @a Barebox:
 @li @subpage exec
 @li @subpage exit
 @li @subpage export_command
-@li @subpage false
+@li @subpage false_command
 @li @subpage getopt
 @li @subpage gpio_get_value_command
 @li @subpage gpio_set_value_command
diff --git a/commands/false.c b/commands/false.c
index a90eadc..b7e3983 100644
--- a/commands/false.c
+++ b/commands/false.c
@@ -29,6 +29,11 @@ static int do_false(struct command *cmdtp, int argc, char *argv[])
 	return 1;
 }
 
+BAREBOX_CMD_HELP_START(false)
+BAREBOX_CMD_HELP_USAGE("false\n")
+BAREBOX_CMD_HELP_SHORT("Do nothing, unsuccessfully.\n")
+BAREBOX_CMD_HELP_END
+
 BAREBOX_CMD_START(false)
 	.cmd		= do_false,
 	.usage		= "do nothing, unsuccessfully",
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
