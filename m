Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-f43.google.com ([74.125.82.43])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XYcxA-0008LN-43
 for barebox@lists.infradead.org; Mon, 29 Sep 2014 15:33:34 +0000
Received: by mail-wg0-f43.google.com with SMTP id a1so2000870wgh.2
 for <barebox@lists.infradead.org>; Mon, 29 Sep 2014 08:33:07 -0700 (PDT)
From: "Wjatscheslaw Stoljarski (Slawa)" <wjatscheslaw.stoljarski@kiwigrid.com>
Date: Mon, 29 Sep 2014 17:32:56 +0200
Message-Id: <1412004776-18993-1-git-send-email-wjatscheslaw.stoljarski@kiwigrid.com>
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
Subject: [PATCH] commands: usb: drop help for force rescan option
To: barebox@lists.infradead.org

From: "Wjatscheslaw Stoljarski" <wjatscheslaw.stoljarski@kiwigrid.com>

Signed-off-by: Wjatscheslaw Stoljarski <wjatscheslaw.stoljarski@kiwigrid.com>
---
 commands/usb.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/commands/usb.c b/commands/usb.c
index a37d503..48c6619 100644
--- a/commands/usb.c
+++ b/commands/usb.c
@@ -138,7 +138,6 @@ BAREBOX_CMD_HELP_START(usb)
 BAREBOX_CMD_HELP_TEXT("Scan for USB devices.")
 BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("Options:")
-BAREBOX_CMD_HELP_OPT("-f", "force rescan")
 BAREBOX_CMD_HELP_OPT("-s", "show devices")
 BAREBOX_CMD_HELP_OPT("-t", "show USB tree")
 BAREBOX_CMD_HELP_END
@@ -146,7 +145,7 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(usb)
 	.cmd		= do_usb,
 	BAREBOX_CMD_DESC("(re-)detect USB devices")
-	BAREBOX_CMD_OPTS("[-fts]")
+	BAREBOX_CMD_OPTS("[-ts]")
 	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
 	BAREBOX_CMD_HELP(cmd_usb_help)
 	BAREBOX_CMD_COMPLETE(empty_complete)
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
