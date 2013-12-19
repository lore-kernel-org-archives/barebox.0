Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.x-arc.co.uk ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VtZ9B-0007bb-Jf
 for barebox@lists.infradead.org; Thu, 19 Dec 2013 08:40:01 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 647EBBF0ED
 for <barebox@lists.infradead.org>; Thu, 19 Dec 2013 08:40:28 +0100 (CET)
From: Jan Weitzel <j.weitzel@phytec.de>
Date: Thu, 19 Dec 2013 09:39:28 +0100
Message-Id: <1387442368-27731-1-git-send-email-j.weitzel@phytec.de>
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
Subject: [PATCH] oftree command: Allow free stored dtb before load
To: barebox@lists.infradead.org

Don't return after freeing stored devicetree if also loading ist wanted.
Allow  "oftree -f -l my.dtb"

Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>
---
 commands/oftree.c |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/commands/oftree.c b/commands/oftree.c
index 475f019..3fa516c 100644
--- a/commands/oftree.c
+++ b/commands/oftree.c
@@ -88,7 +88,8 @@ static int do_oftree(int argc, char *argv[])
 		if (root)
 			of_delete_node(root);
 
-		return 0;
+		if (!load)
+			return 0;
 	}
 
 	if (optind < argc)
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
