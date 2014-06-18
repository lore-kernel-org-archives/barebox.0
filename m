Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WxLjh-0007PM-8R
 for barebox@lists.infradead.org; Wed, 18 Jun 2014 19:41:34 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Wed, 18 Jun 2014 21:41:02 +0200
Message-Id: <1403120463-24005-1-git-send-email-jlu@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] commands: ls: add ll as an alias for ls -l
To: barebox@lists.infradead.org

This saves one second of user time on every interactive boot.

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 commands/ls.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/commands/ls.c b/commands/ls.c
index 3440790..f8144ae 100644
--- a/commands/ls.c
+++ b/commands/ls.c
@@ -127,6 +127,9 @@ static int do_ls(int argc, char *argv[])
 	ulong flags = LS_COLUMN;
 	struct string_list sl;
 
+	if (!strcmp(argv[0], "ll"))
+		flags &= ~LS_COLUMN;
+
 	while((opt = getopt(argc, argv, "RCl")) > 0) {
 		switch(opt) {
 		case 'R':
@@ -219,3 +222,11 @@ BAREBOX_CMD_START(ls)
 	BAREBOX_CMD_GROUP(CMD_GRP_FILE)
 	BAREBOX_CMD_HELP(cmd_ls_help)
 BAREBOX_CMD_END
+
+BAREBOX_CMD_START(ll)
+	.cmd		= do_ls,
+	BAREBOX_CMD_DESC("list a file or directory with details")
+	BAREBOX_CMD_OPTS("[-lCR] [FILEDIR...]")
+	BAREBOX_CMD_GROUP(CMD_GRP_FILE)
+	BAREBOX_CMD_HELP(cmd_ls_help)
+BAREBOX_CMD_END
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
