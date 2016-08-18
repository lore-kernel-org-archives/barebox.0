Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.x-arc.co.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.85_2 #1 (Red Hat Linux))
 id 1baMML-0003f4-1b
 for barebox@lists.infradead.org; Thu, 18 Aug 2016 12:23:45 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id F3FF1A00317
 for <barebox@lists.infradead.org>; Thu, 18 Aug 2016 14:23:18 +0200 (CEST)
From: Christian Hemp <c.hemp@phytec.de>
Date: Thu, 18 Aug 2016 14:21:16 +0200
Message-Id: <1471522876-38747-1-git-send-email-c.hemp@phytec.de>
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
Subject: [PATCH] commands/Kconfig: fix typo in CMD_OF_FIXUP_STATUS help
To: barebox@lists.infradead.org

The command is of_fixup_status and not of_fixup_node.

Signed-off-by: Christian Hemp <c.hemp@phytec.de>
---
 commands/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/Kconfig b/commands/Kconfig
index decd45d..3c79831 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -2058,7 +2058,7 @@ config CMD_OF_FIXUP_STATUS
 	help
 	  Register a fixup to enable or disable node
 
-	  Usage: of_fixup_node [-d] path
+	  Usage: of_fixup_status [-d] path
 
 	  Options:
 		  -d		disable node
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
