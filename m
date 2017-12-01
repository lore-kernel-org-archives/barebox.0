Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eKjPe-0003o5-D4
 for barebox@lists.infradead.ORG; Fri, 01 Dec 2017 11:23:33 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  1 Dec 2017 12:22:40 +0100
Message-Id: <20171201112256.20196-12-s.hauer@pengutronix.de>
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
Subject: [PATCH 11/27] net: allow udp connections on specified network device
To: Barebox List <barebox@lists.infradead.org>

This allows the DHCP code to configure specific network
devices so that DHCP no longer depends on any "current"
network device.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/net.h |  4 ++++
 net/net.c     | 32 ++++++++++++++++++++------------
 2 files changed, 24 insertions(+), 12 deletions(-)

diff --git a/include/net.h b/include/net.h
index 95fa828e84..8e3b0aff5a 100644
--- a/include/net.h
+++ b/include/net.h
@@ -446,6 +446,10 @@ static inline char *net_alloc_packet(void)
 struct net_connection *net_udp_new(IPaddr_t dest, uint16_t dport,
 		rx_handler_f *handler, void *ctx);
 
+struct net_connection *net_udp_eth_new(struct eth_device *edev, IPaddr_t dest,
+                                       uint16_t dport, rx_handler_f *handler,
+                                       void *ctx);
+
 struct net_connection *net_icmp_new(IPaddr_t dest, rx_handler_f *handler,
 		void *ctx);
 
diff --git a/net/net.c b/net/net.c
index f63d25531e..6cdffa4b8d 100644
--- a/net/net.c
+++ b/net/net.c
@@ -144,9 +144,8 @@ static void arp_handler(struct arprequest *arp)
 	}
 }
 
-static int arp_request(IPaddr_t dest, unsigned char *ether)
+static int arp_request(struct eth_device *edev, IPaddr_t dest, unsigned char *ether)
 {
-	struct eth_device *edev = eth_get_current();
 	char *pkt;
 	struct arprequest *arp;
 	uint64_t arp_start;
@@ -295,15 +294,17 @@ IPaddr_t net_get_gateway(void)
 
 static LIST_HEAD(connection_list);
 
-static struct net_connection *net_new(IPaddr_t dest, rx_handler_f *handler,
-		void *ctx)
+static struct net_connection *net_new(struct eth_device *edev, IPaddr_t dest,
+				      rx_handler_f *handler, void *ctx)
 {
-	struct eth_device *edev = eth_get_current();
 	struct net_connection *con;
 	int ret;
 
-	if (!edev)
-		return ERR_PTR(-ENETDOWN);
+	if (!edev) {
+		edev = eth_get_current();
+		if (!edev)
+			return ERR_PTR(-ENETDOWN);
+	}
 
 	if (!is_valid_ether_addr(edev->ethaddr)) {
 		char str[sizeof("xx:xx:xx:xx:xx:xx")];
@@ -332,7 +333,7 @@ static struct net_connection *net_new(IPaddr_t dest, rx_handler_f *handler,
 	if (dest == IP_BROADCAST) {
 		memset(con->et->et_dest, 0xff, 6);
 	} else {
-		ret = arp_request(dest, con->et->et_dest);
+		ret = arp_request(edev, dest, con->et->et_dest);
 		if (ret)
 			goto out;
 	}
@@ -356,10 +357,11 @@ out:
 	return ERR_PTR(ret);
 }
 
-struct net_connection *net_udp_new(IPaddr_t dest, uint16_t dport,
-		rx_handler_f *handler, void *ctx)
+struct net_connection *net_udp_eth_new(struct eth_device *edev, IPaddr_t dest,
+				       uint16_t dport, rx_handler_f *handler,
+				       void *ctx)
 {
-	struct net_connection *con = net_new(dest, handler, ctx);
+	struct net_connection *con = net_new(edev, dest, handler, ctx);
 
 	if (IS_ERR(con))
 		return con;
@@ -372,10 +374,16 @@ struct net_connection *net_udp_new(IPaddr_t dest, uint16_t dport,
 	return con;
 }
 
+struct net_connection *net_udp_new(IPaddr_t dest, uint16_t dport,
+		rx_handler_f *handler, void *ctx)
+{
+	return net_udp_eth_new(NULL, dest, dport, handler, ctx);
+}
+
 struct net_connection *net_icmp_new(IPaddr_t dest, rx_handler_f *handler,
 		void *ctx)
 {
-	struct net_connection *con = net_new(dest, handler, ctx);
+	struct net_connection *con = net_new(NULL, dest, handler, ctx);
 
 	if (IS_ERR(con))
 		return con;
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
