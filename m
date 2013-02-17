Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp30.i.mail.ru ([94.100.177.90])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U78We-000320-Ev
 for barebox@lists.infradead.org; Sun, 17 Feb 2013 17:59:46 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sun, 17 Feb 2013 21:59:37 +0400
Message-Id: <1361123977-18443-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH] commands: automount: Added help string about "-d" option
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 commands/automount.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/commands/automount.c b/commands/automount.c
index 4713932..511d18b 100644
--- a/commands/automount.c
+++ b/commands/automount.c
@@ -60,6 +60,7 @@ BAREBOX_CMD_HELP_START(automount)
 BAREBOX_CMD_HELP_USAGE("automount [OPTIONS] <PATH> <cmd>\n")
 BAREBOX_CMD_HELP_SHORT("execute <cmd> when <PATH> is first accessed\n")
 BAREBOX_CMD_HELP_OPT("-l", "List currently registered automountpoints\n")
+BAREBOX_CMD_HELP_OPT("-d", "Create the mount path\n")
 BAREBOX_CMD_HELP_OPT("-r <PATH>", "remove an automountpoint\n")
 BAREBOX_CMD_HELP_END
 
-- 
1.7.12.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
