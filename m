Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by casper.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PSptk-0004Q1-2Q
	for barebox@lists.infradead.org; Wed, 15 Dec 2010 11:52:01 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Wed, 15 Dec 2010 12:51:44 +0100
Message-Id: <1292413908-464-31-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH 30/34] doc: add documentation for 'passwd' command
To: barebox@lists.infradead.org

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 Documentation/commands.dox |    2 +-
 commands/passwd.c          |   18 +++++++++++++-----
 2 files changed, 14 insertions(+), 6 deletions(-)

diff --git a/Documentation/commands.dox b/Documentation/commands.dox
index 7a515c5..44a72da 100644
--- a/Documentation/commands.dox
+++ b/Documentation/commands.dox
@@ -79,7 +79,7 @@ available in @a Barebox:
 @li @subpage nand
 @li @subpage nand_boot_test
 @li @subpage nfs_command
-@li @subpage passwd
+@li @subpage passwd_command
 @li @subpage ping_command
 @li @subpage printenv_command
 @li @subpage protect_command
diff --git a/commands/passwd.c b/commands/passwd.c
index 9435091..092d7e9 100644
--- a/commands/passwd.c
+++ b/commands/passwd.c
@@ -85,11 +85,19 @@ disable:
 	return ret;
 }
 
-static const __maybe_unused char cmd_passwd_help[] =
-"Usage: passwd\n"
-"passwd allow you to specify a password\n"
-"to disable it put an empty password\n"
-;
+BAREBOX_CMD_HELP_START(passwd)
+BAREBOX_CMD_HELP_USAGE("passwd\n")
+BAREBOX_CMD_HELP_SHORT("Allows you to specify a password.\n")
+BAREBOX_CMD_HELP_END
+
+/**
+ * @page passwd_command
+
+To disable the password, specify an empty one.
+
+\todo Add an example.
+
+ */
 
 BAREBOX_CMD_START(passwd)
 	.cmd		= do_passwd,
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
