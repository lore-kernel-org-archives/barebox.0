Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.x-arc.de ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VlET2-0005Qh-M5
 for barebox@lists.infradead.org; Tue, 26 Nov 2013 08:58:01 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id B604BBF0F0
 for <barebox@lists.infradead.org>; Tue, 26 Nov 2013 08:58:04 +0100 (CET)
From: Jan Weitzel <j.weitzel@phytec.de>
Date: Tue, 26 Nov 2013 09:57:33 +0100
Message-Id: <1385456253-5399-1-git-send-email-j.weitzel@phytec.de>
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
Subject: [PATCH] commands: of_node fix descripion
To: barebox@lists.infradead.org

Remove copy and paste error

Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>
---
 commands/Kconfig |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/commands/Kconfig b/commands/Kconfig
index 9738ec4..1e07b5b 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -559,7 +559,7 @@ config CMD_OF_NODE
 	select OFTREE
 	prompt "of_node"
 	help
-	  The of_property command allows adding and removing devicetree nodes.
+	  The of_node command allows adding and removing devicetree nodes.
 
 endmenu
 
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
