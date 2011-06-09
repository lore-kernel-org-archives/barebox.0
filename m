Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 26.97.mail-out.ovh.net ([46.105.34.183]
	helo=97.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QUgrD-0000BS-Cr
	for barebox@lists.infradead.org; Thu, 09 Jun 2011 15:09:16 +0000
Received: from mail185.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by 97.mail-out.ovh.net (Postfix) with SMTP id D75774AA434
	for <barebox@lists.infradead.org>;
	Thu,  9 Jun 2011 17:09:48 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu,  9 Jun 2011 16:55:52 +0200
Message-Id: <1307631354-5553-4-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20110609145028.GH17584@game.jcrosoft.org>
References: <20110609145028.GH17584@game.jcrosoft.org>
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
Subject: [PATCH 4/6] complete: add help complete support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/help.c |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/commands/help.c b/commands/help.c
index f8387bd..cfc79f5 100644
--- a/commands/help.c
+++ b/commands/help.c
@@ -23,6 +23,7 @@
 
 #include <common.h>
 #include <command.h>
+#include <complete.h>
 
 /*
  * Use puts() instead of printf() to avoid printf buffer overflow
@@ -66,5 +67,6 @@ BAREBOX_CMD_START(help)
 	.aliases	= help_aliases,
 	.usage		= "print online help",
 	BAREBOX_CMD_HELP(cmd_help_help)
+	BAREBOX_CMD_COMPLETE(command_complete)
 BAREBOX_CMD_END
 
-- 
1.7.4.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
