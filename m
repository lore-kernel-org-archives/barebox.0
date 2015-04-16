Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Yije0-0003KQ-Dt
 for barebox@lists.infradead.org; Thu, 16 Apr 2015 13:15:49 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Thu, 16 Apr 2015 15:15:22 +0200
Message-Id: <1429190122-21490-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH] command: state: harmonize in-barebox documentation
To: barebox@lists.infradead.org

According to this patch by Holger Schurig:

    f1f532084a6e commands: harmonize in-barebox documentation

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 commands/state.c | 16 +++++++++-------
 1 file changed, 9 insertions(+), 7 deletions(-)

diff --git a/commands/state.c b/commands/state.c
index 82c29d00c880..59d1eb850215 100644
--- a/commands/state.c
+++ b/commands/state.c
@@ -62,16 +62,18 @@ static int do_state(int argc, char *argv[])
 	return ret;
 }
 
-static const __maybe_unused char cmd_state_help[] =
-"Usage: state [OPTIONS] [STATENAME]\n"
-"\n"
-"options:\n"
-"-s        save state\n"
-"-l        load state\n";
+BAREBOX_CMD_HELP_START(state)
+BAREBOX_CMD_HELP_TEXT("Usage: state [OPTIONS] [STATENAME]")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("options:")
+BAREBOX_CMD_HELP_OPT ("-s", "save state")
+BAREBOX_CMD_HELP_OPT ("-l", "load state")
+BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(state)
 	.cmd		= do_state,
-	BAREBOX_CMD_DESC("handle state information")
+	BAREBOX_CMD_DESC("load and save state information")
+	BAREBOX_CMD_OPTS("[-sl] [STATENAME]")
 	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
 	BAREBOX_CMD_HELP(cmd_state_help)
 BAREBOX_CMD_END
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
