Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x242.google.com ([2a00:1450:4010:c07::242])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1btVKo-0003Ye-9Y
 for barebox@lists.infradead.org; Mon, 10 Oct 2016 07:49:20 +0000
Received: by mail-lf0-x242.google.com with SMTP id b75so8506932lfg.3
 for <barebox@lists.infradead.org>; Mon, 10 Oct 2016 00:48:57 -0700 (PDT)
From: yegorslists@googlemail.com
Date: Mon, 10 Oct 2016 09:48:40 +0200
Message-Id: <1476085720-2752-1-git-send-email-yegorslists@googlemail.com>
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
Subject: [PATCH] boot: add '-w' parameter to usage help text
To: barebox@lists.infradead.org

From: Yegor Yefremov <yegorslists@googlemail.com>

Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
---
 commands/boot.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/boot.c b/commands/boot.c
index 102ca07..5d81d79 100644
--- a/commands/boot.c
+++ b/commands/boot.c
@@ -141,7 +141,7 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(boot)
 	.cmd	= do_boot,
 	BAREBOX_CMD_DESC("boot from script, device, ...")
-	BAREBOX_CMD_OPTS("[-vdlmt] [BOOTSRC...]")
+	BAREBOX_CMD_OPTS("[-vdlmwt] [BOOTSRC...]")
 	BAREBOX_CMD_GROUP(CMD_GRP_BOOT)
 	BAREBOX_CMD_HELP(cmd_boot_help)
 BAREBOX_CMD_END
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
