Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo2.mail-out.ovh.net ([46.105.63.121]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1S3XEq-0005Pd-P3
 for barebox@lists.infradead.org; Fri, 02 Mar 2012 18:29:59 +0000
Received: from mail621.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 92DFEDC3FC2
 for <barebox@lists.infradead.org>; Fri,  2 Mar 2012 19:32:49 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri,  2 Mar 2012 19:20:07 +0100
Message-Id: <1330712410-26479-2-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/5] net: introduce net_free_packet to free the packet
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 include/net.h |    5 +++++
 net/net.c     |    6 +++---
 2 files changed, 8 insertions(+), 3 deletions(-)

diff --git a/include/net.h b/include/net.h
index d0f8341..c7da380 100644
--- a/include/net.h
+++ b/include/net.h
@@ -401,6 +401,11 @@ static inline char *net_alloc_packet(void)
 	return xmemalign(32, PKTSIZE);
 }
 
+static inline void net_free_packet(void *packet)
+{
+	free(packet);
+}
+
 struct net_connection *net_udp_new(IPaddr_t dest, uint16_t dport,
 		rx_handler_f *handler, void *ctx);
 
diff --git a/net/net.c b/net/net.c
index cbcac40..07fc23a 100644
--- a/net/net.c
+++ b/net/net.c
@@ -402,7 +402,7 @@ static struct net_connection *net_new(IPaddr_t dest, rx_handler_f *handler,
 
 	return con;
 out:
-	free(con->packet);
+	net_free_packet(con->packet);
 	free(con);
 	return ERR_PTR(ret);
 }
@@ -440,7 +440,7 @@ struct net_connection *net_icmp_new(IPaddr_t dest, rx_handler_f *handler,
 void net_unregister(struct net_connection *con)
 {
 	list_del(&con->list);
-	free(con->packet);
+	net_free_packet(con->packet);
 	free(con);
 }
 
@@ -495,7 +495,7 @@ static int net_answer_arp(unsigned char *pkt, int len)
 		return 0;
 	memcpy(packet, pkt, ETHER_HDR_SIZE + ARP_HDR_SIZE);
 	eth_send(packet, ETHER_HDR_SIZE + ARP_HDR_SIZE);
-	free(packet);
+	net_free_packet(packet);
 
 	return 0;
 }
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
