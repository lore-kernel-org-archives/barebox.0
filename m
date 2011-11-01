Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 82-148-208-25.fiber.unet.nl ([82.148.208.25]
	helo=berilia.team-embedded.nl)
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RLBI2-0000zw-9W
	for barebox@lists.infradead.org; Tue, 01 Nov 2011 10:09:56 +0000
Received: from keppler ([192.168.0.13] helo=localhost.localdomain)
	by berilia.team-embedded.nl with esmtp (Exim 4.69)
	(envelope-from <mark.vels@team-embedded.nl>) id 1RLBCp-0005eI-U4
	for barebox@lists.infradead.org; Tue, 01 Nov 2011 11:04:31 +0100
From: Mark Vels <mark.vels@team-embedded.nl>
Date: Tue,  1 Nov 2011 11:09:37 +0100
Message-Id: <f35f17e5a6067a62ed66c24f7f276a0b2187c85f.1320141619.git.mark.vels@team-embedded.nl>
In-Reply-To: <cover.1320141619.git.mark.vels@team-embedded.nl>
References: <cover.1320141619.git.mark.vels@team-embedded.nl>
In-Reply-To: <cover.1320141619.git.mark.vels@team-embedded.nl>
References: <cover.1320141619.git.mark.vels@team-embedded.nl>
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
Subject: [PATCH 1/9] trivial: relocate doxygen help page for time command
To: barebox@lists.infradead.org


Signed-off-by: Mark Vels <mark.vels@team-embedded.nl>
---
 Documentation/commands.dox |    1 +
 commands/time.c            |   10 ++++++++--
 2 files changed, 9 insertions(+), 2 deletions(-)

diff --git a/Documentation/commands.dox b/Documentation/commands.dox
index 5ef7829..2b5bc44 100644
--- a/Documentation/commands.dox
+++ b/Documentation/commands.dox
@@ -96,6 +96,7 @@ available in @a Barebox:
 @li @subpage sleep
 @li @subpage source
 @li @subpage test
+@li @subpage time_command
 @li @subpage timeout
 @li @subpage true
 @li @subpage tftp_command
diff --git a/commands/time.c b/commands/time.c
index 9a76945..2fcaac0 100644
--- a/commands/time.c
+++ b/commands/time.c
@@ -46,10 +46,16 @@ static int do_time(struct command *cmdtp, int argc, char *argv[])
 
 BAREBOX_CMD_HELP_START(time)
 BAREBOX_CMD_HELP_USAGE("time <command>\n")
-BAREBOX_CMD_HELP_SHORT("note: This command depends on <command> being interruptible,\n")
-BAREBOX_CMD_HELP_SHORT("Otherwise the timer may overrun resulting in incorrect results\n")
+BAREBOX_CMD_HELP_SHORT("measure execution time of a command. Requires <command> to be interruptible!\n")
 BAREBOX_CMD_HELP_END
 
+/**
+ * @page time_command
+
+\note	@li This command depends on <command> being interruptible, otherwise the timer may overrun resulting in incorrect results.
+	@li This command is available only if enabled in menuconfig.
+ */
+
 BAREBOX_CMD_START(time)
 	.cmd		= do_time,
 	.usage		= "measure execution time of a command",
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
