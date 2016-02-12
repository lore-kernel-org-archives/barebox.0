Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aU9N1-0003cx-QY
 for barebox@lists.infradead.org; Fri, 12 Feb 2016 08:46:32 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 12 Feb 2016 09:46:09 +0100
Message-Id: <1455266769-3834-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] commands: of_dump: Add description for -n option
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/of_dump.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/commands/of_dump.c b/commands/of_dump.c
index b15f54a..7bec0b9 100644
--- a/commands/of_dump.c
+++ b/commands/of_dump.c
@@ -141,12 +141,13 @@ BAREBOX_CMD_HELP_START(of_dump)
 BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT  ("-f dtb",  "work on dtb instead of internal devicetree\n")
 BAREBOX_CMD_HELP_OPT  ("-F",  "return fixed devicetree\n")
+BAREBOX_CMD_HELP_OPT  ("-n",  "Print node names only, no properties\n")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(of_dump)
 	.cmd		= do_of_dump,
 	BAREBOX_CMD_DESC("dump devicetree nodes")
-	BAREBOX_CMD_OPTS("[-fF] [NODE]")
+	BAREBOX_CMD_OPTS("[-fFn] [NODE]")
 	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
 	BAREBOX_CMD_COMPLETE(devicetree_file_complete)
 	BAREBOX_CMD_HELP(cmd_of_dump_help)
-- 
2.7.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
