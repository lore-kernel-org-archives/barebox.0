Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.x-arc.de ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VGNmt-0007RT-51
 for barebox@lists.infradead.org; Mon, 02 Sep 2013 06:39:00 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 169D1BF0E8
 for <barebox@lists.infradead.org>; Mon,  2 Sep 2013 08:29:36 +0200 (CEST)
From: Christian Hemp <c.hemp@phytec.de>
Date: Mon, 2 Sep 2013 08:38:29 +0200
Message-Id: <1378103909-5335-1-git-send-email-c.hemp@phytec.de>
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
Subject: [PATCH] commands: Fix memtest return value
To: barebox@lists.infradead.org

Signed-off-by: Christian Hemp <c.hemp@phytec.de>
---
 commands/memtest.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/commands/memtest.c b/commands/memtest.c
index d2a1487..c82badc 100644
--- a/commands/memtest.c
+++ b/commands/memtest.c
@@ -236,7 +236,7 @@ out:
 		return 1;
 	} else {
 		printf("Memtest successful.\n");
-		return 1;
+		return 0;
 	}
 }
 
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
