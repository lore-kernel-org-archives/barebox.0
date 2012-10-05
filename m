Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f177.google.com ([209.85.217.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TK71s-000136-Sb
 for barebox@lists.infradead.org; Fri, 05 Oct 2012 12:29:21 +0000
Received: by mail-lb0-f177.google.com with SMTP id gi11so1235889lbb.36
 for <barebox@lists.infradead.org>; Fri, 05 Oct 2012 05:27:56 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri,  5 Oct 2012 16:27:49 +0400
Message-Id: <1349440069-23987-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] davinci_emac: fix comment for the _send function
To: barebox@lists.infradead.org

The _send function should not return the length
of the transmitted packet.

See also

commit 76c4c9e48ffbe35490e1f7d3abcedc04934ac302
Author: Jan Luebbe <jlu@pengutronix.de>
Date:   Fri Sep 28 18:17:44 2012 +0200

    davinci_emac: return 0 on successful transmit

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/net/davinci_emac.c |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/davinci_emac.c b/drivers/net/davinci_emac.c
index 5bd5f30..989e119 100644
--- a/drivers/net/davinci_emac.c
+++ b/drivers/net/davinci_emac.c
@@ -387,8 +387,8 @@ static void davinci_emac_halt(struct eth_device *edev)
 }
 
 /*
- * This function sends a single packet on the network and returns
- * positive number (number of bytes transmitted) or negative for error
+ * This function sends a single packet on the network
+ * and returns 0 on successful transmit or negative for error
  */
 static int davinci_emac_send(struct eth_device *edev, void *packet, int length)
 {
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
