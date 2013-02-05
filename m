Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 11.mo3.mail-out.ovh.net ([87.98.184.158]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U2fZf-0001Mp-MS
 for barebox@lists.infradead.org; Tue, 05 Feb 2013 10:16:25 +0000
Received: from mail412.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 135FEFFA804
 for <barebox@lists.infradead.org>; Tue,  5 Feb 2013 11:30:45 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue,  5 Feb 2013 11:15:05 +0100
Message-Id: <1360059306-31118-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1360059306-31118-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130205101236.GA19322@game.jcrosoft.org>
 <1360059306-31118-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/4] macb: report timeout on send
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/net/macb.c |    6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/net/macb.c b/drivers/net/macb.c
index 8eac4a8..641b365 100644
--- a/drivers/net/macb.c
+++ b/drivers/net/macb.c
@@ -111,6 +111,7 @@ static int macb_send(struct eth_device *edev, void *packet,
 {
 	struct macb_device *macb = edev->priv;
 	unsigned long ctrl;
+	int ret;
 
 	dev_dbg(macb->dev, "%s\n", __func__);
 
@@ -132,9 +133,10 @@ static int macb_send(struct eth_device *edev, void *packet,
 		dev_err(macb->dev, "TX underrun\n");
 	if (ctrl & TXBUF_EXHAUSTED)
 		dev_err(macb->dev, "TX buffers exhausted in mid frame\n");
+	if (ret)
+		dev_err(macb->dev,"TX timeout\n");
 
-	/* No one cares anyway */
-	return 0;
+	return ret;
 }
 
 static void reclaim_rx_buffers(struct macb_device *macb,
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
