Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1S26Bx-0000KP-BA
 for barebox@lists.infradead.org; Mon, 27 Feb 2012 19:25:02 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 27 Feb 2012 20:24:51 +0100
Message-Id: <1330370693-1591-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1330370693-1591-1-git-send-email-s.hauer@pengutronix.de>
References: <1330370693-1591-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/3] command: do not allow abbreviated commands anymore
To: barebox@lists.infradead.org

abbreviated commands are derived from U-Boot and are only
partly useful. Noone expects from a shell to support this,
also we have tab completion. They also have some funny
side effects. For example we have a 'time' command. If this
command is not compiled in, the time command is interpreted
as an abbreviated version of the 'timeout' command. So remove
support for abbreviated commands and safe the binary space.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/command.c |   22 +++-------------------
 1 files changed, 3 insertions(+), 19 deletions(-)

diff --git a/common/command.c b/common/command.c
index de2c3a9..c9bab2a 100644
--- a/common/command.c
+++ b/common/command.c
@@ -159,26 +159,10 @@ EXPORT_SYMBOL(register_command);
 struct command *find_cmd (const char *cmd)
 {
 	struct command *cmdtp;
-	struct command *cmdtp_temp = &__barebox_cmd_start;	/*Init value */
-	int len;
-	int n_found = 0;
-	len = strlen (cmd);
 
-	cmdtp = list_entry(&command_list, struct command, list);
-
-	for_each_command(cmdtp) {
-		if (strncmp (cmd, cmdtp->name, len) == 0) {
-			if (len == strlen (cmdtp->name))
-				return cmdtp;		/* full match */
-
-			cmdtp_temp = cmdtp;		/* abbreviated command ? */
-			n_found++;
-		}
-	}
-
-	if (n_found == 1) {			/* exactly one match */
-		return cmdtp_temp;
-	}
+	for_each_command(cmdtp)
+		if (!strcmp(cmd, cmdtp->name))
+			return cmdtp;
 
 	return NULL;	/* not found or ambiguous command */
 }
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
