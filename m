Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x236.google.com ([2a00:1450:400c:c09::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aAMLE-0001J9-EZ
 for barebox@lists.infradead.org; Sat, 19 Dec 2015 18:34:53 +0000
Received: by mail-wm0-x236.google.com with SMTP id l126so23222459wml.0
 for <barebox@lists.infradead.org>; Sat, 19 Dec 2015 10:34:31 -0800 (PST)
From: Alexander Aring <alex.aring@gmail.com>
Date: Sat, 19 Dec 2015 19:33:58 +0100
Message-Id: <1450550044-14674-2-git-send-email-alex.aring@gmail.com>
In-Reply-To: <1450550044-14674-1-git-send-email-alex.aring@gmail.com>
References: <1450550044-14674-1-git-send-email-alex.aring@gmail.com>
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
Subject: [PATCH 1/7] memtest: fix missing arguments in help string
To: barebox@lists.infradead.org
Cc: dthompson@nexusisp.com, carlo.caione@gmail.com

This patch adds some missing arguments in help string of memtest.

Signed-off-by: Alexander Aring <alex.aring@gmail.com>
---
 commands/memtest.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/memtest.c b/commands/memtest.c
index d784a5c..99d4864 100644
--- a/commands/memtest.c
+++ b/commands/memtest.c
@@ -191,7 +191,7 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(memtest)
 	.cmd		= do_memtest,
 	BAREBOX_CMD_DESC("extensive memory test")
-	BAREBOX_CMD_OPTS("[-ib]")
+	BAREBOX_CMD_OPTS("[-ibcut]")
 	BAREBOX_CMD_GROUP(CMD_GRP_MEM)
 	BAREBOX_CMD_HELP(cmd_memtest_help)
 BAREBOX_CMD_END
-- 
2.6.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
