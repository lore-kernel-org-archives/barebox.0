Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x22a.google.com ([2a00:1450:400c:c03::22a])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X9Ux2-0006Cu-8k
 for barebox@lists.infradead.org; Tue, 22 Jul 2014 07:57:32 +0000
Received: by mail-we0-f170.google.com with SMTP id w62so8578866wes.1
 for <barebox@lists.infradead.org>; Tue, 22 Jul 2014 00:57:08 -0700 (PDT)
From: Holger Schurig <holgerschurig@gmail.com>
Date: Tue, 22 Jul 2014 09:56:45 +0200
Message-Id: <1406015809-20711-2-git-send-email-holgerschurig@gmail.de>
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
Subject: [PATCH 1/5] Documentation: remove "all all" in help's help text.
To: barebox@lists.infradead.org

From: Holger Schurig <holgerschurig@gmail.com>

Signed-off-by: Holger Schurig <holgerschurig@gmail.com>
---
 commands/help.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/help.c b/commands/help.c
index 9c33807..8985335 100644
--- a/commands/help.c
+++ b/commands/help.c
@@ -128,7 +128,7 @@ static int do_help(int argc, char *argv[])
 
 
 BAREBOX_CMD_HELP_START(help)
-BAREBOX_CMD_HELP_TEXT("Without arguments, lists all all commands. With an argument, print help")
+BAREBOX_CMD_HELP_TEXT("Without arguments, lists all commands. With an argument, print help")
 BAREBOX_CMD_HELP_TEXT("about the specified command. If the argument is 'all', then output help")
 BAREBOX_CMD_HELP_TEXT("for all commands.")
 BAREBOX_CMD_HELP_TEXT("")
-- 
1.8.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
