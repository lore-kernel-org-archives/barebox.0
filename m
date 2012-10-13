Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-f169.google.com ([209.85.212.169])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TN0Yy-0003Ch-FY
 for barebox@lists.infradead.org; Sat, 13 Oct 2012 12:11:28 +0000
Received: by mail-wi0-f169.google.com with SMTP id hq4so108775wib.0
 for <barebox@lists.infradead.org>; Sat, 13 Oct 2012 05:11:27 -0700 (PDT)
From: Carlo Caione <carlo.caione@gmail.com>
Date: Sat, 13 Oct 2012 14:11:16 +0200
Message-Id: <1350130276-24333-1-git-send-email-carlo.caione@gmail.com>
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
Subject: [PATCH] cosmetic: extra new line in automount usage command
To: barebox@lists.infradead.org

Signed-off-by: Carlo Caione <carlo.caione@gmail.com>
---
 commands/automount.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/automount.c b/commands/automount.c
index 4f7aa0e..4713932 100644
--- a/commands/automount.c
+++ b/commands/automount.c
@@ -65,7 +65,7 @@ BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(automount)
 	.cmd		= do_automount,
-	.usage		= "automount [OPTIONS] <PATH> <cmd>\n",
+	.usage		= "automount [OPTIONS] <PATH> <cmd>",
 	BAREBOX_CMD_HELP(cmd_automount_help)
 BAREBOX_CMD_END
 
-- 
1.7.12.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
