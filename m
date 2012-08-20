Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 16.mo1.mail-out.ovh.net ([178.33.104.224]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T3Qnm-0007JK-EW
 for barebox@lists.infradead.org; Mon, 20 Aug 2012 12:09:51 +0000
Received: from mail31.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 1BB7EFF8E5E
 for <barebox@lists.infradead.org>; Mon, 20 Aug 2012 14:16:46 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 20 Aug 2012 14:09:55 +0200
Message-Id: <1345464595-14688-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] arm: do not enable the previous bootz command
To: barebox@lists.infradead.org

as we now support via bootm

on ixp4xx we still need it so keep it so far.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/Kconfig |    1 -
 1 file changed, 1 deletion(-)

diff --git a/commands/Kconfig b/commands/Kconfig
index 92a8152..9e1c957 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -406,7 +406,6 @@ config CMD_UIMAGE
 
 config CMD_BOOTZ
 	tristate
-	default y
 	depends on ARM
 	prompt "bootz"
 	help
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
