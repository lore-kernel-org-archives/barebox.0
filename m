Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo2.mail-out.ovh.net ([46.105.63.121]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1S4cN4-0007KL-G5
 for barebox@lists.infradead.org; Mon, 05 Mar 2012 18:10:55 +0000
Received: from mail621.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 06D30DC4DA4
 for <barebox@lists.infradead.org>; Mon,  5 Mar 2012 19:13:53 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon,  5 Mar 2012 19:00:34 +0100
Message-Id: <1330970435-2681-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/2 v2] macb: add timeout on send
To: barebox@lists.infradead.org

This will ensure that we send an other packet only when the first one is send.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/net/macb.c |    5 +++++
 1 files changed, 5 insertions(+), 0 deletions(-)

diff --git a/drivers/net/macb.c b/drivers/net/macb.c
index ab0d1af..ea8ae82 100644
--- a/drivers/net/macb.c
+++ b/drivers/net/macb.c
@@ -120,6 +120,11 @@ static int macb_send(struct eth_device *edev, void *packet,
 	barrier();
 	writel(MACB_BIT(TE) | MACB_BIT(RE) | MACB_BIT(TSTART), macb->regs + MACB_NCR);
 
+	wait_on_timeout(100 * MSECOND,
+		!(macb->tx_ring[0].ctrl & TXBUF_USED));
+
+	ctrl = macb->tx_ring[0].ctrl;
+
 	if (ctrl & TXBUF_UNDERRUN)
 		printf("TX underrun\n");
 	if (ctrl & TXBUF_EXHAUSTED)
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
