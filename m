Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WkpDb-0000rQ-3T
 for barebox@lists.infradead.org; Thu, 15 May 2014 06:32:40 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 15 May 2014 08:32:14 +0200
Message-Id: <1400135535-29312-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1400135535-29312-1-git-send-email-s.hauer@pengutronix.de>
References: <1400135535-29312-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/4] net: Allow to use multiple network interfaces at once
To: barebox@lists.infradead.org

In barebox network packets always go out at the current ethernet
device and are expected to be received from the current interface.
This has some side effects. When for example an NFS is mounted when
one interface is active and the interface is changed afterwards the
NFS packets leave the new interface, but the NFS server won't be
reachable there.

Instead of changing the whole network traffic to the current ethernet
interface we now initialize a network connection with the current
network interface, but then the connection will continue to use that
interface even when the current interface is changed.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/net.h |  3 ++-
 net/eth.c     | 58 +++++++++++++++++++++++++++++++---------------------------
 net/net.c     | 19 +++++++++----------
 3 files changed, 42 insertions(+), 38 deletions(-)

diff --git a/include/net.h b/include/net.h
index a166552..c0f7517 100644
--- a/include/net.h
+++ b/include/net.h
@@ -68,7 +68,7 @@ struct eth_device {
 int eth_register(struct eth_device* dev);    /* Register network device		*/
 void eth_unregister(struct eth_device* dev); /* Unregister network device	*/
 
-int eth_send(void *packet, int length);	   /* Send a packet		*/
+int eth_send(struct eth_device *edev, void *packet, int length);	   /* Send a packet		*/
 int eth_rx(void);			/* Check for received packets	*/
 
 /* associate a MAC address to a ethernet device. Should be called by
@@ -419,6 +419,7 @@ struct net_connection {
 	struct ethernet *et;
 	struct iphdr *ip;
 	struct udphdr *udp;
+	struct eth_device *edev;
 	struct icmphdr *icmp;
 	unsigned char *packet;
 	struct list_head list;
diff --git a/net/eth.c b/net/eth.c
index 3ced3cd..26a5ff7 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -131,11 +131,6 @@ void of_eth_register_ethaddr(struct device_node *node, const char *ethaddr)
 
 void eth_set_current(struct eth_device *eth)
 {
-	if (eth_current && eth_current->active) {
-		eth_current->halt(eth_current);
-		eth_current->active = 0;
-	}
-
 	eth_current = eth;
 }
 
@@ -178,83 +173,92 @@ int eth_complete(struct string_list *sl, char *instr)
 /*
  * Check for link if we haven't done so for longer.
  */
-static int eth_carrier_check(int force)
+static int eth_carrier_check(struct eth_device *edev, int force)
 {
 	int ret;
 
 	if (!IS_ENABLED(CONFIG_PHYLIB))
 		return 0;
 
-	if (!eth_current->phydev)
+	if (!edev->phydev)
 		return 0;
 
 	if (force)
-		phy_wait_aneg_done(eth_current->phydev);
+		phy_wait_aneg_done(edev->phydev);
 
 	if (force || is_timeout(last_link_check, 5 * SECOND) ||
-			!eth_current->phydev->link) {
-		ret = phy_update_status(eth_current->phydev);
+			!edev->phydev->link) {
+		ret = phy_update_status(edev->phydev);
 		if (ret)
 			return ret;
 		last_link_check = get_time_ns();
 	}
 
-	return eth_current->phydev->link ? 0 : -ENETDOWN;
+	return edev->phydev->link ? 0 : -ENETDOWN;
 }
 
 /*
  * Check if we have a current ethernet device and
  * eventually open it if we have to.
  */
-static int eth_check_open(void)
+static int eth_check_open(struct eth_device *edev)
 {
 	int ret;
 
-	if (!eth_current)
-		return -ENODEV;
-
-	if (eth_current->active)
+	if (edev->active)
 		return 0;
 
-	ret = eth_current->open(eth_current);
+	ret = edev->open(eth_current);
 	if (ret)
 		return ret;
 
-	eth_current->active = 1;
+	edev->active = 1;
 
-	return eth_carrier_check(1);
+	return eth_carrier_check(edev, 1);
 }
 
-int eth_send(void *packet, int length)
+int eth_send(struct eth_device *edev, void *packet, int length)
 {
 	int ret;
 
-	ret = eth_check_open();
+	ret = eth_check_open(edev);
 	if (ret)
 		return ret;
 
-	ret = eth_carrier_check(0);
+	ret = eth_carrier_check(edev, 0);
 	if (ret)
 		return ret;
 
 	led_trigger_network(LED_TRIGGER_NET_TX);
 
-	return eth_current->send(eth_current, packet, length);
+	return edev->send(eth_current, packet, length);
 }
 
-int eth_rx(void)
+static int __eth_rx(struct eth_device *edev)
 {
 	int ret;
 
-	ret = eth_check_open();
+	ret = eth_check_open(edev);
 	if (ret)
 		return ret;
 
-	ret = eth_carrier_check(0);
+	ret = eth_carrier_check(edev, 0);
 	if (ret)
 		return ret;
 
-	return eth_current->recv(eth_current);
+	return edev->recv(eth_current);
+}
+
+int eth_rx(void)
+{
+	struct eth_device *edev;
+
+	list_for_each_entry(edev, &netdev_list, list) {
+		if (edev->active)
+			__eth_rx(edev);
+	}
+
+	return 0;
 }
 
 static int eth_set_ethaddr(struct param_d *param, void *priv)
diff --git a/net/net.c b/net/net.c
index e43a3ab..f54267a 100644
--- a/net/net.c
+++ b/net/net.c
@@ -241,7 +241,7 @@ static int arp_request(IPaddr_t dest, unsigned char *ether)
 
 	arp_ether = ether;
 
-	ret = eth_send(arp_packet, ETHER_HDR_SIZE + ARP_HDR_SIZE);
+	ret = eth_send(edev, arp_packet, ETHER_HDR_SIZE + ARP_HDR_SIZE);
 	if (ret)
 		return ret;
 	arp_start = get_time_ns();
@@ -253,7 +253,7 @@ static int arp_request(IPaddr_t dest, unsigned char *ether)
 		if (is_timeout(arp_start, 3 * SECOND)) {
 			printf("T ");
 			arp_start = get_time_ns();
-			ret = eth_send(arp_packet, ETHER_HDR_SIZE + ARP_HDR_SIZE);
+			ret = eth_send(edev, arp_packet, ETHER_HDR_SIZE + ARP_HDR_SIZE);
 			if (ret)
 				return ret;
 			retries++;
@@ -358,6 +358,7 @@ static struct net_connection *net_new(IPaddr_t dest, rx_handler_f *handler,
 	con = xzalloc(sizeof(*con));
 	con->packet = net_alloc_packet();
 	con->priv = ctx;
+	con->edev = edev;
 	memset(con->packet, 0, PKTSIZE);
 
 	con->et = (struct ethernet *)con->packet;
@@ -437,7 +438,7 @@ static int net_ip_send(struct net_connection *con, int len)
 	con->ip->check = 0;
 	con->ip->check = ~net_checksum((unsigned char *)con->ip, sizeof(struct iphdr));
 
-	return eth_send(con->packet, ETHER_HDR_SIZE + sizeof(struct iphdr) + len);
+	return eth_send(con->edev, con->packet, ETHER_HDR_SIZE + sizeof(struct iphdr) + len);
 }
 
 int net_udp_send(struct net_connection *con, int len)
@@ -480,7 +481,7 @@ static int net_answer_arp(unsigned char *pkt, int len)
 	if (!packet)
 		return 0;
 	memcpy(packet, pkt, ETHER_HDR_SIZE + ARP_HDR_SIZE);
-	ret = eth_send(packet, ETHER_HDR_SIZE + ARP_HDR_SIZE);
+	ret = eth_send(edev, packet, ETHER_HDR_SIZE + ARP_HDR_SIZE);
 	free(packet);
 
 	return ret;
@@ -497,9 +498,8 @@ static void net_bad_packet(unsigned char *pkt, int len)
 #endif
 }
 
-static int net_handle_arp(unsigned char *pkt, int len)
+static int net_handle_arp(struct eth_device *edev, unsigned char *pkt, int len)
 {
-	struct eth_device *edev = eth_get_current();
 	struct arprequest *arp;
 
 	debug("%s: got arp\n", __func__);
@@ -580,10 +580,9 @@ static int net_handle_icmp(unsigned char *pkt, int len)
 	return 0;
 }
 
-static int net_handle_ip(unsigned char *pkt, int len)
+static int net_handle_ip(struct eth_device *edev, unsigned char *pkt, int len)
 {
 	struct iphdr *ip = (struct iphdr *)(pkt + ETHER_HDR_SIZE);
-	struct eth_device *edev = eth_get_current();
 	IPaddr_t tmp;
 
 	debug("%s\n", __func__);
@@ -634,10 +633,10 @@ int net_receive(struct eth_device *edev, unsigned char *pkt, int len)
 
 	switch (et_protlen) {
 	case PROT_ARP:
-		ret = net_handle_arp(pkt, len);
+		ret = net_handle_arp(edev, pkt, len);
 		break;
 	case PROT_IP:
-		ret = net_handle_ip(pkt, len);
+		ret = net_handle_ip(edev, pkt, len);
 		break;
 	default:
 		debug("%s: got unknown protocol type: %d\n", __func__, et_protlen);
-- 
2.0.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
