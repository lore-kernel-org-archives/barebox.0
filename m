Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eKjPe-0003o1-DA
 for barebox@lists.infradead.ORG; Fri, 01 Dec 2017 11:23:24 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  1 Dec 2017 12:22:33 +0100
Message-Id: <20171201112256.20196-5-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/27] net: use pr_* functions for messages
To: Barebox List <barebox@lists.infradead.org>

Use pr_* functions in the networking code rather than printf() and
debug(). Also Add a "net: " prefix to messages to give them some more
context.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 net/net.c | 26 ++++++++++++++------------
 1 file changed, 14 insertions(+), 12 deletions(-)

diff --git a/net/net.c b/net/net.c
index 19b081f6cf..12e63c664e 100644
--- a/net/net.c
+++ b/net/net.c
@@ -23,6 +23,9 @@
  * GNU General Public License for more details.
  *
  */
+
+#define pr_fmt(fmt) "net: " fmt
+
 #include <common.h>
 #include <clock.h>
 #include <command.h>
@@ -132,7 +135,7 @@ static int arp_request(IPaddr_t dest, unsigned char *ether)
 
 	arp_wait_ip = dest;
 
-	pr_debug("ARP broadcast\n");
+	pr_debug("send ARP broadcast for %pI4\n", &dest);
 
 	memset(et->et_dest, 0xff, 6);
 	memcpy(et->et_src, edev->ethaddr, 6);
@@ -187,10 +190,9 @@ static int arp_request(IPaddr_t dest, unsigned char *ether)
 		net_poll();
 	}
 
-	pr_debug("Got ARP REPLY, set server/gtwy eth addr (%02x:%02x:%02x:%02x:%02x:%02x)\n",
-		ether[0], ether[1],
-		ether[2], ether[3],
-		ether[4], ether[5]);
+	pr_debug("Got ARP REPLY for %pI4: %02x:%02x:%02x:%02x:%02x:%02x\n",
+		 &dest, ether[0], ether[1], ether[2], ether[3], ether[4],
+		 ether[5]);
 	return 0;
 }
 
@@ -269,7 +271,7 @@ static struct net_connection *net_new(IPaddr_t dest, rx_handler_f *handler,
 		char str[sizeof("xx:xx:xx:xx:xx:xx")];
 		random_ether_addr(edev->ethaddr);
 		ethaddr_to_string(edev->ethaddr, str);
-		printf("warning: No MAC address set. Using random address %s\n", str);
+		pr_warn("warning: No MAC address set. Using random address %s\n", str);
 		eth_set_ethaddr(edev, edev->ethaddr);
 	}
 
@@ -386,7 +388,7 @@ static int net_answer_arp(struct eth_device *edev, unsigned char *pkt, int len)
 	unsigned char *packet;
 	int ret;
 
-	debug("%s\n", __func__);
+	pr_debug("%s\n", __func__);
 
 	memcpy (et->et_dest, et->et_src, 6);
 	memcpy (et->et_src, edev->ethaddr, 6);
@@ -423,7 +425,7 @@ static int net_handle_arp(struct eth_device *edev, unsigned char *pkt, int len)
 {
 	struct arprequest *arp;
 
-	debug("%s: got arp\n", __func__);
+	pr_debug("%s: got arp\n", __func__);
 
 	/*
 	 * We have to deal with two types of ARP packets:
@@ -490,7 +492,7 @@ static int net_handle_icmp(unsigned char *pkt, int len)
 {
 	struct net_connection *con;
 
-	debug("%s\n", __func__);
+	pr_debug("%s\n", __func__);
 
 	list_for_each_entry(con, &connection_list, list) {
 		if (con->proto == IPPROTO_ICMP) {
@@ -506,11 +508,11 @@ static int net_handle_ip(struct eth_device *edev, unsigned char *pkt, int len)
 	struct iphdr *ip = (struct iphdr *)(pkt + ETHER_HDR_SIZE);
 	IPaddr_t tmp;
 
-	debug("%s\n", __func__);
+	pr_debug("%s\n", __func__);
 
 	if (len < sizeof(struct ethernet) + sizeof(struct iphdr) ||
 		len < ETHER_HDR_SIZE + ntohs(ip->tot_len)) {
-		debug("%s: bad len\n", __func__);
+		pr_debug("%s: bad len\n", __func__);
 		goto bad;
 	}
 
@@ -560,7 +562,7 @@ int net_receive(struct eth_device *edev, unsigned char *pkt, int len)
 		ret = net_handle_ip(edev, pkt, len);
 		break;
 	default:
-		debug("%s: got unknown protocol type: %d\n", __func__, et_protlen);
+		pr_debug("%s: got unknown protocol type: %d\n", __func__, et_protlen);
 		ret = 1;
 		break;
 	}
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
