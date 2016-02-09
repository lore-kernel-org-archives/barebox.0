Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aTAjn-0000xK-1P
 for barebox@lists.infradead.org; Tue, 09 Feb 2016 16:02:00 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Tue,  9 Feb 2016 17:01:23 +0100
Message-Id: <1455033684-21067-4-git-send-email-r.schwebel@pengutronix.de>
In-Reply-To: <1455033684-21067-1-git-send-email-r.schwebel@pengutronix.de>
References: <1455033684-21067-1-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH 4/5] ratp: remove unused ratp_close command
To: barebox@lists.infradead.org

This is a leftover from development, remove.

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 common/ratp.c | 16 +---------------
 1 file changed, 1 insertion(+), 15 deletions(-)

diff --git a/common/ratp.c b/common/ratp.c
index 2fef3cc..e879e2b 100644
--- a/common/ratp.c
+++ b/common/ratp.c
@@ -398,20 +398,6 @@ out:
 	ratp_console_unregister(ctx);
 }
 
-static int do_ratp_close(int argc, char *argv[])
-{
-	if (ratp_command_ctx && ratp_command_ctx->cdev)
-		ratp_console_unregister(ratp_command_ctx);
-	else
-		printf("ratp is not active\n");
-
-	return 0;
-}
-
-BAREBOX_CMD_START(ratp_close)
-	.cmd	= do_ratp_close,
-};
-
 int barebox_ratp_fs_call(struct ratp_bb_pkt *tx, struct ratp_bb_pkt **rx)
 {
 	struct ratp_ctx *ctx = ratp_command_ctx;
@@ -508,4 +494,4 @@ static void barebox_ratp_close(void)
 	if (ratp_command_ctx && ratp_command_ctx->cdev)
 		ratp_console_unregister(ratp_command_ctx);
 }
-predevshutdown_exitcall(barebox_ratp_close);
\ No newline at end of file
+predevshutdown_exitcall(barebox_ratp_close);
-- 
2.7.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
