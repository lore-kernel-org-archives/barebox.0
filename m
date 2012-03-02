Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo2.mail-out.ovh.net ([46.105.63.121]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1S3XEq-0005Pe-P1
 for barebox@lists.infradead.org; Fri, 02 Mar 2012 18:29:58 +0000
Received: from mail621.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 92D13DC3FBC
 for <barebox@lists.infradead.org>; Fri,  2 Mar 2012 19:32:48 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri,  2 Mar 2012 19:20:06 +0100
Message-Id: <1330712410-26479-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/5] net: use net_alloc_packet to allocate packet
To: barebox@lists.infradead.org

Was missing in net_init and net_new.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 net/net.c |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/net/net.c b/net/net.c
index 2752884..cbcac40 100644
--- a/net/net.c
+++ b/net/net.c
@@ -370,7 +370,7 @@ static struct net_connection *net_new(IPaddr_t dest, rx_handler_f *handler,
 		return ERR_PTR(-ENETDOWN);
 
 	con = xzalloc(sizeof(*con));
-	con->packet = xmemalign(32, PKTSIZE);
+	con->packet = net_alloc_packet();
 	con->priv = ctx;
 	memset(con->packet, 0, PKTSIZE);
 
@@ -665,7 +665,7 @@ static int net_init(void)
 	int i;
 
 	for (i = 0; i < PKTBUFSRX; i++)
-		NetRxPackets[i] =  xmemalign(32, PKTSIZE);
+		NetRxPackets[i] = net_alloc_packet();
 
 	return 0;
 }
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
