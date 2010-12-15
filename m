Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PSptm-0001uV-J4
	for barebox@lists.infradead.org; Wed, 15 Dec 2010 11:52:07 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Wed, 15 Dec 2010 12:51:32 +0100
Message-Id: <1292413908-464-19-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH 18/34] doc: add documentation for 'pwd' command
To: barebox@lists.infradead.org

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 Documentation/commands.dox |    2 +-
 commands/pwd.c             |    5 +++++
 2 files changed, 6 insertions(+), 1 deletions(-)

diff --git a/Documentation/commands.dox b/Documentation/commands.dox
index 887c58f..cf91a49 100644
--- a/Documentation/commands.dox
+++ b/Documentation/commands.dox
@@ -83,7 +83,7 @@ available in @a Barebox:
 @li @subpage ping
 @li @subpage printenv_command
 @li @subpage protect_command
-@li @subpage pwd
+@li @subpage pwd_command
 @li @subpage readline_command
 @li @subpage reset
 @li @subpage rarpboot
diff --git a/commands/pwd.c b/commands/pwd.c
index d51fa1a..2d5afb5 100644
--- a/commands/pwd.c
+++ b/commands/pwd.c
@@ -29,6 +29,11 @@ static int do_pwd(struct command *cmdtp, int argc, char *argv[])
 	return 0;
 }
 
+BAREBOX_CMD_HELP_START(pwd)
+BAREBOX_CMD_HELP_USAGE("pwd\n")
+BAREBOX_CMD_HELP_SHORT("Print working directory.\n")
+BAREBOX_CMD_HELP_END
+
 BAREBOX_CMD_START(pwd)
 	.cmd		= do_pwd,
 	.usage		= "print working directory",
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
