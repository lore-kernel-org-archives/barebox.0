Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Yk7JI-0001jt-QY
 for barebox@lists.infradead.org; Mon, 20 Apr 2015 08:44:09 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Mon, 20 Apr 2015 10:43:36 +0200
Message-Id: <1429519419-20325-2-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1429519419-20325-1-git-send-email-mkl@pengutronix.de>
References: <1429519419-20325-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 2/5] command: timeout: add documentation for option '-v'
To: barebox@lists.infradead.org

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 commands/timeout.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/commands/timeout.c b/commands/timeout.c
index 3dee9606eb5d..c8e930cd5b5b 100644
--- a/commands/timeout.c
+++ b/commands/timeout.c
@@ -110,12 +110,13 @@ BAREBOX_CMD_HELP_OPT("-a", "interrupt on any key")
 BAREBOX_CMD_HELP_OPT("-c", "interrupt on Ctrl-C")
 BAREBOX_CMD_HELP_OPT("-r", "interrupt on RETURN")
 BAREBOX_CMD_HELP_OPT("-s", "silent mode")
+BAREBOX_CMD_HELP_OPT("-v <VARIABLE>", "export pressed key to environment")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(timeout)
 	.cmd		= do_timeout,
 	BAREBOX_CMD_DESC("wait for a specified timeout")
-	BAREBOX_CMD_OPTS("[-acrs] SECONDS")
+	BAREBOX_CMD_OPTS("[-acrsv] SECONDS")
 	BAREBOX_CMD_GROUP(CMD_GRP_CONSOLE)
 	BAREBOX_CMD_HELP(cmd_timeout_help)
 BAREBOX_CMD_END
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
