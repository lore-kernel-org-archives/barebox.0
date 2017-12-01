Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eKjPe-0003o4-DB
 for barebox@lists.infradead.ORG; Fri, 01 Dec 2017 11:23:26 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  1 Dec 2017 12:22:34 +0100
Message-Id: <20171201112256.20196-6-s.hauer@pengutronix.de>
In-Reply-To: <20171201112256.20196-1-s.hauer@pengutronix.de>
References: <20171201112256.20196-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/27] net: Add and use IP_BROADCAST
To: Barebox List <barebox@lists.infradead.org>

Rather than using the hardcoded value 0xffffffff in several places
add a define for the broadcast IP.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/net.h | 2 ++
 net/dhcp.c    | 2 +-
 net/net.c     | 6 +++---
 3 files changed, 6 insertions(+), 4 deletions(-)

diff --git a/include/net.h b/include/net.h
index 632b6d5410..4649947916 100644
--- a/include/net.h
+++ b/include/net.h
@@ -114,6 +114,8 @@ struct ethernet {
 #define IPPROTO_ICMP	 1	/* Internet Control Message Protocol	*/
 #define IPPROTO_UDP	17	/* User Datagram Protocol		*/
 
+#define IP_BROADCAST    0xffffffff /* Broadcast IP aka 255.255.255.255 */
+
 /*
  *	Internet Protocol (IP) header.
  */
diff --git a/net/dhcp.c b/net/dhcp.c
index c5386fe942..4d74733d37 100644
--- a/net/dhcp.c
+++ b/net/dhcp.c
@@ -661,7 +661,7 @@ int dhcp(int retries, struct dhcp_req_param *param)
 	if (!retries)
 		retries = DHCP_DEFAULT_RETRY;
 
-	dhcp_con = net_udp_new(0xffffffff, PORT_BOOTPS, dhcp_handler, NULL);
+	dhcp_con = net_udp_new(IP_BROADCAST, PORT_BOOTPS, dhcp_handler, NULL);
 	if (IS_ERR(dhcp_con)) {
 		ret = PTR_ERR(dhcp_con);
 		goto out;
diff --git a/net/net.c b/net/net.c
index 12e63c664e..205543a425 100644
--- a/net/net.c
+++ b/net/net.c
@@ -276,7 +276,7 @@ static struct net_connection *net_new(IPaddr_t dest, rx_handler_f *handler,
 	}
 
 	/* If we don't have an ip only broadcast is allowed */
-	if (!edev->ipaddr && dest != 0xffffffff)
+	if (!edev->ipaddr && dest != IP_BROADCAST)
 		return ERR_PTR(-ENETDOWN);
 
 	con = xzalloc(sizeof(*con));
@@ -291,7 +291,7 @@ static struct net_connection *net_new(IPaddr_t dest, rx_handler_f *handler,
 	con->icmp = (struct icmphdr *)(con->packet + ETHER_HDR_SIZE + sizeof(struct iphdr));
 	con->handler = handler;
 
-	if (dest == 0xffffffff) {
+	if (dest == IP_BROADCAST) {
 		memset(con->et->et_dest, 0xff, 6);
 	} else {
 		ret = arp_request(dest, con->et->et_dest);
@@ -525,7 +525,7 @@ static int net_handle_ip(struct eth_device *edev, unsigned char *pkt, int len)
 		goto bad;
 
 	tmp = net_read_ip(&ip->daddr);
-	if (edev->ipaddr && tmp != edev->ipaddr && tmp != 0xffffffff)
+	if (edev->ipaddr && tmp != edev->ipaddr && tmp != IP_BROADCAST)
 		return 0;
 
 	switch (ip->protocol) {
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
