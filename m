Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKmLA-000655-Kk
 for barebox@lists.infradead.org; Wed, 16 Oct 2019 16:40:02 +0000
From: Robert Karszniewicz <r.karszniewicz@phytec.de>
Date: Wed, 16 Oct 2019 18:39:57 +0200
Message-Id: <1571243997-278445-1-git-send-email-r.karszniewicz@phytec.de>
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
Subject: [PATCH] cp: complete command help
To: barebox@lists.infradead.org

Signed-off-by: Robert Karszniewicz <r.karszniewicz@phytec.de>
---
 commands/cp.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/commands/cp.c b/commands/cp.c
index 54934dd..845dae6 100644
--- a/commands/cp.c
+++ b/commands/cp.c
@@ -100,13 +100,14 @@ BAREBOX_CMD_HELP_START(cp)
 BAREBOX_CMD_HELP_TEXT("Copy file from SRC to DEST.")
 BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT ("-r", "recursive")
 BAREBOX_CMD_HELP_OPT ("-v", "verbose")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(cp)
 	.cmd		= do_cp,
 	BAREBOX_CMD_DESC("copy files")
-	BAREBOX_CMD_OPTS("[-v] SRC DEST")
+	BAREBOX_CMD_OPTS("[-rv] SRC DEST")
 	BAREBOX_CMD_GROUP(CMD_GRP_FILE)
 	BAREBOX_CMD_HELP(cmd_cp_help)
 BAREBOX_CMD_END
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
