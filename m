Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo2.mail-out.ovh.net ([87.98.172.75]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1S3XEq-0005Pi-PG
 for barebox@lists.infradead.org; Fri, 02 Mar 2012 18:29:57 +0000
Received: from mail621.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id E0AEADC3FCE
 for <barebox@lists.infradead.org>; Fri,  2 Mar 2012 19:32:50 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri,  2 Mar 2012 19:20:10 +0100
Message-Id: <1330712410-26479-5-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1330712410-26479-1-git-send-email-plagnioj@jcrosoft.com>
References: <1330712410-26479-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 5/5] macb: add timeout on send
To: barebox@lists.infradead.org

This will ensure that we send an other packet only when the first one is send.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/net/macb.c |    5 +++++
 1 files changed, 5 insertions(+), 0 deletions(-)

diff --git a/drivers/net/macb.c b/drivers/net/macb.c
index 9b54afa..3835dba 100644
--- a/drivers/net/macb.c
+++ b/drivers/net/macb.c
@@ -121,6 +121,11 @@ static int macb_send(struct eth_device *edev, void *packet,
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
