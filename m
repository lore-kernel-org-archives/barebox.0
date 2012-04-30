Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 16.mo4.mail-out.ovh.net ([188.165.55.104]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SOq0V-00043U-Px
 for barebox@lists.infradead.org; Mon, 30 Apr 2012 12:47:12 +0000
Received: from mail97.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 9E9711050564
 for <barebox@lists.infradead.org>; Mon, 30 Apr 2012 14:48:29 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 30 Apr 2012 14:25:59 +0200
Message-Id: <1335788764-30430-6-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20120430122334.GE2992@game.jcrosoft.org>
References: <20120430122334.GE2992@game.jcrosoft.org>
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
Subject: [PATCH 06/11] complete: add help complete support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/help.c |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/commands/help.c b/commands/help.c
index 706b905..d7d9ba2 100644
--- a/commands/help.c
+++ b/commands/help.c
@@ -23,6 +23,7 @@
 
 #include <common.h>
 #include <command.h>
+#include <complete.h>
 
 /*
  * Use puts() instead of printf() to avoid printf buffer overflow
@@ -68,5 +69,6 @@ BAREBOX_CMD_START(help)
 	.aliases	= help_aliases,
 	.usage		= "print online help",
 	BAREBOX_CMD_HELP(cmd_help_help)
+	BAREBOX_CMD_COMPLETE(command_complete)
 BAREBOX_CMD_END
 
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
