Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo5.mail-out.ovh.net ([178.32.228.5])
 by bombadil.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TCQsN-0006CO-0i
 for barebox@lists.infradead.org; Fri, 14 Sep 2012 08:03:48 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id BAFC5FFA936
 for <barebox@lists.infradead.org>; Fri, 14 Sep 2012 10:05:21 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 14 Sep 2012 09:57:05 +0200
Message-Id: <1347609426-21286-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1347609426-21286-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120914073755.GD20834@game.jcrosoft.org>
 <1347609426-21286-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/3] net: catch error on eth_send
To: barebox@lists.infradead.org


Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 net/net.c |   18 +++++++++++-------
 1 file changed, 11 insertions(+), 7 deletions(-)

diff --git a/net/net.c b/net/net.c
index 54d8c25..d056dd7 100644
--- a/net/net.c
+++ b/net/net.c
@@ -219,6 +219,7 @@ static int arp_request(IPaddr_t dest, unsigned char *ether)
 	static char *arp_packet;
 	struct ethernet *et;
 	unsigned retries = 0;
+	int ret;
 
 	if (!arp_packet) {
 		arp_packet = net_alloc_packet();
@@ -262,7 +263,9 @@ static int arp_request(IPaddr_t dest, unsigned char *ether)
 
 	arp_ether = ether;
 
-	eth_send(arp_packet, ETHER_HDR_SIZE + ARP_HDR_SIZE);
+	ret = eth_send(arp_packet, ETHER_HDR_SIZE + ARP_HDR_SIZE);
+	if (ret)
+		return ret;
 	arp_start = get_time_ns();
 
 	while (arp_wait_ip) {
@@ -272,7 +275,9 @@ static int arp_request(IPaddr_t dest, unsigned char *ether)
 		if (is_timeout(arp_start, 3 * SECOND)) {
 			printf("T ");
 			arp_start = get_time_ns();
-			eth_send(arp_packet, ETHER_HDR_SIZE + ARP_HDR_SIZE);
+			ret = eth_send(arp_packet, ETHER_HDR_SIZE + ARP_HDR_SIZE);
+			if (ret)
+				return ret;
 			retries++;
 		}
 
@@ -454,9 +459,7 @@ static int net_ip_send(struct net_connection *con, int len)
 	con->ip->check = 0;
 	con->ip->check = ~net_checksum((unsigned char *)con->ip, sizeof(struct iphdr));
 
-	eth_send(con->packet, ETHER_HDR_SIZE + sizeof(struct iphdr) + len);
-
-	return 0;
+	return eth_send(con->packet, ETHER_HDR_SIZE + sizeof(struct iphdr) + len);
 }
 
 int net_udp_send(struct net_connection *con, int len)
@@ -480,6 +483,7 @@ static int net_answer_arp(unsigned char *pkt, int len)
 	struct arprequest *arp = (struct arprequest *)(pkt + ETHER_HDR_SIZE);
 	struct ethernet *et = (struct ethernet *)pkt;
 	unsigned char *packet;
+	int ret;
 
 	debug("%s\n", __func__);
 
@@ -497,10 +501,10 @@ static int net_answer_arp(unsigned char *pkt, int len)
 	if (!packet)
 		return 0;
 	memcpy(packet, pkt, ETHER_HDR_SIZE + ARP_HDR_SIZE);
-	eth_send(packet, ETHER_HDR_SIZE + ARP_HDR_SIZE);
+	ret = eth_send(packet, ETHER_HDR_SIZE + ARP_HDR_SIZE);
 	free(packet);
 
-	return 0;
+	return ret;
 }
 
 static void net_bad_packet(unsigned char *pkt, int len)
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
