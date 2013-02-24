Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo2.mail-out.ovh.net ([46.105.58.226]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U9XxP-00047P-MS
 for barebox@lists.infradead.org; Sun, 24 Feb 2013 09:33:21 +0000
Received: from mail416.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 0E3FCDC0F89
 for <barebox@lists.infradead.org>; Sun, 24 Feb 2013 10:44:01 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 24 Feb 2013 10:32:13 +0100
Message-Id: <1361698333-2727-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] smc911111: fix send and recv return value
To: barebox@lists.infradead.org

on error send error code and 0 on success

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/net/smc91111.c |   12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/net/smc91111.c b/drivers/net/smc91111.c
index 695fa7d..48183dd 100644
--- a/drivers/net/smc91111.c
+++ b/drivers/net/smc91111.c
@@ -935,7 +935,7 @@ static int smc91c111_eth_send(struct eth_device *edev, void *packet,
 
 	if (numPages > 7) {
 		printf ("%s: Far too big packet error. \n", SMC_DEV_NAME);
-		return 0;
+		return -EOVERFLOW;
 	}
 
 	/* now, try to allocate the memory */
@@ -965,7 +965,7 @@ again:
 		if (try < SMC_ALLOC_MAX_TRY)
 			goto again;
 		else
-			return 0;
+			return -ETIMEDOUT;
 	}
 
 	PRINTK2 ("%s: memory allocation, try %d succeeded ...\n",
@@ -980,7 +980,7 @@ again:
 	if (packet_no & AR_FAILED) {
 		/* or isn't there?  BAD CHIP! */
 		printf ("%s: Memory allocation failed. \n", SMC_DEV_NAME);
-		return 0;
+		return -ENOMEM;
 	}
 
 	/* we have a packet address, so tell the card to use it */
@@ -1046,7 +1046,7 @@ again:
 	SMC_outb(priv, saved_pnr, PN_REG );
 	SMC_outw(priv, saved_ptr, PTR_REG );
 
-	return length;
+	return 0;
 }
 
 static void smc91c111_eth_halt(struct eth_device *edev)
@@ -1152,10 +1152,10 @@ static int smc91c111_eth_rx(struct eth_device *edev)
 	if (!is_error) {
 		/* Pass the packet up to the protocol layers. */
 		net_receive(NetRxPackets[0], packet_length);
-		return packet_length;
+		return 0;
 	}
 
-	return 0;
+	return -EINVAL;
 }
 
 static int smc91c111_get_ethaddr(struct eth_device *edev, unsigned char *m)
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
