Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp28.mail.ru ([94.100.176.181])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Skols-0001O2-Tr
 for barebox@lists.infradead.org; Sat, 30 Jun 2012 03:54:58 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sat, 30 Jun 2012 07:56:01 +0400
Message-Id: <1341028561-13963-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH] commands: uncompress: fix description
To: barebox@lists.infradead.org

Command "uncompress" can handle not only with LZO-format, so we just
changed description for command.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 commands/uncompress.c |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/commands/uncompress.c b/commands/uncompress.c
index e96928b..179d525 100644
--- a/commands/uncompress.c
+++ b/commands/uncompress.c
@@ -1,5 +1,5 @@
 /*
- * uncompress.c - uncompress a lzo compressed file
+ * uncompress.c - uncompress a compressed file
  *
  * Copyright (c) 2010 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
  *
@@ -64,7 +64,7 @@ static const __maybe_unused char cmd_uncompress_help[] =
 
 BAREBOX_CMD_START(uncompress)
         .cmd            = do_uncompress,
-        .usage          = "lzop <infile> <outfile>",
+        .usage          = "uncompress a compressed file",
         BAREBOX_CMD_HELP(cmd_uncompress_help)
 BAREBOX_CMD_END
 
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
