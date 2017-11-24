Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eI96c-0008Jn-1d
 for barebox@lists.infradead.ORG; Fri, 24 Nov 2017 08:13:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 24 Nov 2017 09:12:29 +0100
Message-Id: <20171124081237.6830-14-s.hauer@pengutronix.de>
In-Reply-To: <20171124081237.6830-1-s.hauer@pengutronix.de>
References: <20171124081237.6830-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 13/21] net: Pick network device based on IP settings
To: Barebox List <barebox@lists.infradead.org>

The IP/netmask/gateway settings contain all informations
needed to pick the correct network device. This patch
adds support for that and makes specifying the "current"
network interface using the ethact command unnecessary.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 net/net.c | 29 ++++++++++++++++++++++++++---
 1 file changed, 26 insertions(+), 3 deletions(-)

diff --git a/net/net.c b/net/net.c
index cf1d0b32fa..efe6a6369f 100644
--- a/net/net.c
+++ b/net/net.c
@@ -141,6 +141,24 @@ static void arp_handler(struct arprequest *arp)
 	}
 }
 
+static struct eth_device *net_route(IPaddr_t dest)
+{
+	struct eth_device *edev;
+
+	for_each_netdev(edev) {
+		if ((dest & edev->netmask) == (edev->ipaddr & edev->netmask)) {
+			debug("Route: Using %s (ip=%pI4, nm=%pI4) to reach %pI4\n",
+			      dev_name(&edev->dev), &edev->ipaddr, &edev->netmask,
+				       &dest);
+			return edev;
+		}
+	}
+
+	debug("Route: No device found for %pI4\n", &dest);
+
+	return NULL;
+}
+
 static int arp_request(struct eth_device *edev, IPaddr_t dest, unsigned char *ether)
 {
 	char *pkt;
@@ -151,6 +169,9 @@ static int arp_request(struct eth_device *edev, IPaddr_t dest, unsigned char *et
 	unsigned retries = 0;
 	int ret;
 
+	if (!edev)
+		return -EHOSTUNREACH;
+
 	if (!arp_packet) {
 		arp_packet = net_alloc_packet();
 		if (!arp_packet)
@@ -288,9 +309,11 @@ static struct net_connection *net_new(struct eth_device *edev, IPaddr_t dest,
 	int ret;
 
 	if (!edev) {
-		edev = eth_get_current();
+		edev = net_route(dest);
+		if (!edev && net_gateway)
+			edev = net_route(net_gateway);
 		if (!edev)
-			return ERR_PTR(-ENETDOWN);
+			return ERR_PTR(-EHOSTUNREACH);
 	}
 
 	if (!is_valid_ether_addr(edev->ethaddr)) {
@@ -348,7 +371,7 @@ struct net_connection *net_udp_eth_new(struct eth_device *edev, IPaddr_t dest,
 				       uint16_t dport, rx_handler_f *handler,
 				       void *ctx)
 {
-	struct net_connection *con = net_new(edev, 0xffffffff, handler, ctx);
+	struct net_connection *con = net_new(edev, dest, handler, ctx);
 
 	if (IS_ERR(con))
 		return con;
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
