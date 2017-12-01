Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eKjPm-0003oY-WA
 for barebox@lists.infradead.ORG; Fri, 01 Dec 2017 11:23:46 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  1 Dec 2017 12:22:45 +0100
Message-Id: <20171201112256.20196-17-s.hauer@pengutronix.de>
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
Subject: [PATCH 16/27] net: Pick network device based on IP settings
To: Barebox List <barebox@lists.infradead.org>

The IP/netmask/gateway settings contain all informations
needed to pick the correct network device. This patch
adds support for that and makes specifying the "current"
network interface using the ethact command unnecessary.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/net.h |  1 +
 net/net.c     | 30 ++++++++++++++++++++++++++++--
 2 files changed, 29 insertions(+), 2 deletions(-)

diff --git a/include/net.h b/include/net.h
index b7555c0de6..3faecff5d7 100644
--- a/include/net.h
+++ b/include/net.h
@@ -226,6 +226,7 @@ IPaddr_t net_get_serverip(void);
 IPaddr_t net_get_gateway(void);
 IPaddr_t net_get_nameserver(void);
 const char *net_get_domainname(void);
+struct eth_device *net_route(IPaddr_t ip);
 
 /* Do the work */
 void net_poll(void);
diff --git a/net/net.c b/net/net.c
index 33d6e2c5b0..94954677c5 100644
--- a/net/net.c
+++ b/net/net.c
@@ -144,6 +144,27 @@ static void arp_handler(struct arprequest *arp)
 	}
 }
 
+struct eth_device *net_route(IPaddr_t dest)
+{
+	struct eth_device *edev;
+
+	for_each_netdev(edev) {
+		if (!edev->ipaddr)
+			continue;
+
+		if ((dest & edev->netmask) == (edev->ipaddr & edev->netmask)) {
+			pr_debug("Route: Using %s (ip=%pI4, nm=%pI4) to reach %pI4\n",
+			      dev_name(&edev->dev), &edev->ipaddr, &edev->netmask,
+				       &dest);
+			return edev;
+		}
+	}
+
+	pr_debug("Route: No device found for %pI4\n", &dest);
+
+	return NULL;
+}
+
 static int arp_request(struct eth_device *edev, IPaddr_t dest, unsigned char *ether)
 {
 	char *pkt;
@@ -154,6 +175,9 @@ static int arp_request(struct eth_device *edev, IPaddr_t dest, unsigned char *et
 	unsigned retries = 0;
 	int ret;
 
+	if (!edev)
+		return -EHOSTUNREACH;
+
 	if (!arp_packet) {
 		arp_packet = net_alloc_packet();
 		if (!arp_packet)
@@ -295,9 +319,11 @@ static struct net_connection *net_new(struct eth_device *edev, IPaddr_t dest,
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
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
