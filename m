Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 15.mo3.mail-out.ovh.net ([87.98.150.177]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SJ5i7-0000qx-II
 for barebox@lists.infradead.org; Sat, 14 Apr 2012 16:20:28 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 53372FF882C
 for <barebox@lists.infradead.org>; Sat, 14 Apr 2012 18:21:36 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat, 14 Apr 2012 18:02:21 +0200
Message-Id: <1334419343-1121-4-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20120414155623.GA30672@game.jcrosoft.org>
References: <20120414155623.GA30672@game.jcrosoft.org>
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
Subject: [PATCH 4/6] net: use net_alloc_packet to allocate packet
To: barebox@lists.infradead.org

Was missing in net_init and net_new.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 net/net.c |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/net/net.c b/net/net.c
index 046ddd4..c6bc8a1 100644
--- a/net/net.c
+++ b/net/net.c
@@ -378,7 +378,7 @@ static struct net_connection *net_new(IPaddr_t dest, rx_handler_f *handler,
 		return ERR_PTR(-ENETDOWN);
 
 	con = xzalloc(sizeof(*con));
-	con->packet = xmemalign(32, PKTSIZE);
+	con->packet = net_alloc_packet();
 	con->priv = ctx;
 	memset(con->packet, 0, PKTSIZE);
 
@@ -673,7 +673,7 @@ static int net_init(void)
 	int i;
 
 	for (i = 0; i < PKTBUFSRX; i++)
-		NetRxPackets[i] =  xmemalign(32, PKTSIZE);
+		NetRxPackets[i] = net_alloc_packet();
 
 	return 0;
 }
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
