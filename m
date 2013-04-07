Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UOq9c-0001Qm-1U
 for barebox@lists.infradead.org; Sun, 07 Apr 2013 14:01:23 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun,  7 Apr 2013 16:00:40 +0200
Message-Id: <1365343255-26497-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1365343255-26497-1-git-send-email-s.hauer@pengutronix.de>
References: <1365343255-26497-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/21] net: store ethernet device parameters in device
To: barebox@lists.infradead.org

Rather than storing the parameters globally and trying to keep them
in sync with the device parameters, store the parameters in the ethernet
device directly. Also, update to dev_add_param_ip().

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/net.h |  7 +++++-
 net/eth.c     | 40 ++++++------------------------
 net/net.c     | 80 ++++++++++++++++++++++++-----------------------------------
 3 files changed, 45 insertions(+), 82 deletions(-)

diff --git a/include/net.h b/include/net.h
index e4f6f86..bb6b8fa 100644
--- a/include/net.h
+++ b/include/net.h
@@ -52,6 +52,12 @@ struct eth_device {
 	struct device_d *parent;
 
 	struct list_head list;
+
+	IPaddr_t ipaddr;
+	IPaddr_t serverip;
+	IPaddr_t netmask;
+	IPaddr_t gateway;
+	char ethaddr[6];
 };
 
 #define dev_to_edev(d) container_of(d, struct eth_device, dev)
@@ -384,7 +390,6 @@ typedef void rx_handler_f(void *ctx, char *packet, unsigned int len);
 void eth_set_current(struct eth_device *eth);
 struct eth_device *eth_get_current(void);
 struct eth_device *eth_get_byname(char *name);
-void net_update_env(void);
 
 /**
  * net_receive - Pass a received packet from an ethernet driver to the protocol stack
diff --git a/net/eth.c b/net/eth.c
index 98ec726..4646dd8 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -86,7 +86,6 @@ void eth_set_current(struct eth_device *eth)
 	}
 
 	eth_current = eth;
-	net_update_env();
 }
 
 struct eth_device * eth_get_current(void)
@@ -210,39 +209,16 @@ int eth_rx(void)
 static int eth_set_ethaddr(struct device_d *dev, struct param_d *param, const char *val)
 {
 	struct eth_device *edev = dev_to_edev(dev);
-	u8 ethaddr[6];
-
-	if (!val)
-		return dev_param_set_generic(dev, param, NULL);
-
-	if (string_to_ethaddr(val, ethaddr) < 0)
-		return -EINVAL;
-
-	dev_param_set_generic(dev, param, val);
-
-	edev->set_ethaddr(edev, ethaddr);
-
-	if (edev == eth_current)
-		net_update_env();
-
-	return 0;
-}
-
-static int eth_set_ipaddr(struct device_d *dev, struct param_d *param, const char *val)
-{
-	struct eth_device *edev = dev_to_edev(dev);
-	IPaddr_t ip;
 
 	if (!val)
 		return dev_param_set_generic(dev, param, NULL);
 
-	if (string_to_ip(val, &ip))
+	if (string_to_ethaddr(val, edev->ethaddr) < 0)
 		return -EINVAL;
 
 	dev_param_set_generic(dev, param, val);
 
-	if (edev == eth_current)
-		net_update_env();
+	edev->set_ethaddr(edev, edev->ethaddr);
 
 	return 0;
 }
@@ -267,11 +243,11 @@ int eth_register(struct eth_device *edev)
 
 	register_device(&edev->dev);
 
-	dev_add_param(dev, "ipaddr", eth_set_ipaddr, NULL, 0);
+	dev_add_param_ip(dev, "ipaddr", NULL, NULL, &edev->ipaddr, edev);
+	dev_add_param_ip(dev, "serverip", NULL, NULL, &edev->serverip, edev);
+	dev_add_param_ip(dev, "gateway", NULL, NULL, &edev->gateway, edev);
+	dev_add_param_ip(dev, "netmask", NULL, NULL, &edev->netmask, edev);
 	dev_add_param(dev, "ethaddr", eth_set_ethaddr, NULL, 0);
-	dev_add_param(dev, "gateway", eth_set_ipaddr, NULL, 0);
-	dev_add_param(dev, "netmask", eth_set_ipaddr, NULL, 0);
-	dev_add_param(dev, "serverip", eth_set_ipaddr, NULL, 0);
 
 	if (edev->init)
 		edev->init(edev);
@@ -296,10 +272,8 @@ int eth_register(struct eth_device *edev)
 		}
 	}
 
-	if (!eth_current) {
+	if (!eth_current)
 		eth_current = edev;
-		net_update_env();
-	}
 
 	return 0;
 }
diff --git a/net/net.c b/net/net.c
index 639bc2d..0bd9084 100644
--- a/net/net.c
+++ b/net/net.c
@@ -36,29 +36,9 @@
 #include <linux/ctype.h>
 #include <linux/err.h>
 
-static IPaddr_t	net_netmask;		/* Our subnet mask (0=unknown)	*/
-static IPaddr_t	net_gateway;		/* Our gateways IP address	*/
-
-static unsigned char net_ether[6];	/* Our ethernet address		*/
-static IPaddr_t	net_ip;			/* Our IP addr (0 = unknown)	*/
-static IPaddr_t	net_serverip;		/* Our IP addr (0 = unknown)	*/
-
 unsigned char *NetRxPackets[PKTBUFSRX]; /* Receive packets		*/
 static unsigned int net_ip_id;
 
-void net_update_env(void)
-{
-	struct eth_device *edev = eth_get_current();
-
-	net_ip = dev_get_param_ip(&edev->dev, "ipaddr");
-	net_serverip = dev_get_param_ip(&edev->dev, "serverip");
-	net_gateway = dev_get_param_ip(&edev->dev, "gateway");
-	net_netmask = dev_get_param_ip(&edev->dev, "netmask");
-
-	string_to_ethaddr(dev_get_param(&edev->dev, "ethaddr"),
-			net_ether);
-}
-
 int net_checksum_ok(unsigned char *ptr, int len)
 {
 	return net_checksum(ptr, len) + 1;
@@ -210,6 +190,7 @@ static void arp_handler(struct arprequest *arp)
 
 static int arp_request(IPaddr_t dest, unsigned char *ether)
 {
+	struct eth_device *edev = eth_get_current();
 	char *pkt;
 	struct arprequest *arp;
 	uint64_t arp_start;
@@ -232,7 +213,7 @@ static int arp_request(IPaddr_t dest, unsigned char *ether)
 	pr_debug("ARP broadcast\n");
 
 	memset(et->et_dest, 0xff, 6);
-	memcpy(et->et_src, net_ether, 6);
+	memcpy(et->et_src, edev->ethaddr, 6);
 	et->et_protlen = htons(PROT_ARP);
 
 	arp = (struct arprequest *)(pkt + ETHER_HDR_SIZE);
@@ -243,15 +224,15 @@ static int arp_request(IPaddr_t dest, unsigned char *ether)
 	arp->ar_pln = 4;
 	arp->ar_op = htons(ARPOP_REQUEST);
 
-	memcpy(arp->ar_data, net_ether, 6);	/* source ET addr	*/
-	net_write_ip(arp->ar_data + 6, net_ip);	/* source IP addr	*/
+	memcpy(arp->ar_data, edev->ethaddr, 6);	/* source ET addr	*/
+	net_write_ip(arp->ar_data + 6, edev->ipaddr);	/* source IP addr	*/
 	memset(arp->ar_data + 10, 0, 6);	/* dest ET addr = 0     */
 
-	if ((dest & net_netmask) != (net_ip & net_netmask)) {
-		if (!net_gateway)
+	if ((dest & edev->netmask) != (edev->ipaddr & edev->netmask)) {
+		if (!edev->gateway)
 			arp_wait_ip = dest;
 		else
-			arp_wait_ip = net_gateway;
+			arp_wait_ip = edev->gateway;
 	} else {
 		arp_wait_ip = dest;
 	}
@@ -310,44 +291,44 @@ static uint16_t net_udp_new_localport(void)
 
 IPaddr_t net_get_serverip(void)
 {
-	return net_serverip;
+	struct eth_device *edev = eth_get_current();
+
+	return edev->serverip;
 }
 
 void net_set_serverip(IPaddr_t ip)
 {
 	struct eth_device *edev = eth_get_current();
 
-	net_serverip = ip;
-	dev_set_param_ip(&edev->dev, "serverip", net_serverip);
+	edev->serverip = ip;
 }
 
 void net_set_ip(IPaddr_t ip)
 {
 	struct eth_device *edev = eth_get_current();
 
-	net_ip = ip;
-	dev_set_param_ip(&edev->dev, "ipaddr", net_ip);
+	edev->ipaddr = ip;
 }
 
 IPaddr_t net_get_ip(void)
 {
-	return net_ip;
+	struct eth_device *edev = eth_get_current();
+
+	return edev->ipaddr;
 }
 
 void net_set_netmask(IPaddr_t nm)
 {
 	struct eth_device *edev = eth_get_current();
 
-	net_netmask = nm;
-	dev_set_param_ip(&edev->dev, "netmask", net_netmask);
+	edev->netmask = nm;
 }
 
 void net_set_gateway(IPaddr_t gw)
 {
 	struct eth_device *edev = eth_get_current();
 
-	net_gateway = gw;
-	dev_set_param_ip(&edev->dev, "gateway", net_gateway);
+	edev->gateway = gw;
 }
 
 static LIST_HEAD(connection_list);
@@ -362,16 +343,16 @@ static struct net_connection *net_new(IPaddr_t dest, rx_handler_f *handler,
 	if (!edev)
 		return ERR_PTR(-ENETDOWN);
 
-	if (!is_valid_ether_addr(net_ether)) {
+	if (!is_valid_ether_addr(edev->ethaddr)) {
 		char str[sizeof("xx:xx:xx:xx:xx:xx")];
-		random_ether_addr(net_ether);
-		ethaddr_to_string(net_ether, str);
+		random_ether_addr(edev->ethaddr);
+		ethaddr_to_string(edev->ethaddr, str);
 		printf("warning: No MAC address set. Using random address %s\n", str);
 		dev_set_param(&edev->dev, "ethaddr", str);
 	}
 
 	/* If we don't have an ip only broadcast is allowed */
-	if (!net_ip && dest != 0xffffffff)
+	if (!edev->ipaddr && dest != 0xffffffff)
 		return ERR_PTR(-ENETDOWN);
 
 	con = xzalloc(sizeof(*con));
@@ -394,14 +375,14 @@ static struct net_connection *net_new(IPaddr_t dest, rx_handler_f *handler,
 	}
 
 	con->et->et_protlen = htons(PROT_IP);
-	memcpy(con->et->et_src, net_ether, 6);
+	memcpy(con->et->et_src, edev->ethaddr, 6);
 
 	con->ip->hl_v = 0x45;
 	con->ip->tos = 0;
 	con->ip->frag_off = htons(0x4000);	/* No fragmentation */;
 	con->ip->ttl = 255;
 	net_copy_ip(&con->ip->daddr, &dest);
-	net_copy_ip(&con->ip->saddr, &net_ip);
+	net_copy_ip(&con->ip->saddr, &edev->ipaddr);
 
 	list_add_tail(&con->list, &connection_list);
 
@@ -479,20 +460,21 @@ static int net_answer_arp(unsigned char *pkt, int len)
 {
 	struct arprequest *arp = (struct arprequest *)(pkt + ETHER_HDR_SIZE);
 	struct ethernet *et = (struct ethernet *)pkt;
+	struct eth_device *edev = eth_get_current();
 	unsigned char *packet;
 	int ret;
 
 	debug("%s\n", __func__);
 
 	memcpy (et->et_dest, et->et_src, 6);
-	memcpy (et->et_src, net_ether, 6);
+	memcpy (et->et_src, edev->ethaddr, 6);
 
 	et->et_protlen = htons(PROT_ARP);
 	arp->ar_op = htons(ARPOP_REPLY);
 	memcpy(&arp->ar_data[10], &arp->ar_data[0], 6);
 	net_copy_ip(&arp->ar_data[16], &arp->ar_data[6]);
-	memcpy(&arp->ar_data[0], net_ether, 6);
-	net_copy_ip(&arp->ar_data[6], &net_ip);
+	memcpy(&arp->ar_data[0], edev->ethaddr, 6);
+	net_copy_ip(&arp->ar_data[6], &edev->ipaddr);
 
 	packet = net_alloc_packet();
 	if (!packet)
@@ -517,6 +499,7 @@ static void net_bad_packet(unsigned char *pkt, int len)
 
 static int net_handle_arp(unsigned char *pkt, int len)
 {
+	struct eth_device *edev = eth_get_current();
 	struct arprequest *arp;
 
 	debug("%s: got arp\n", __func__);
@@ -541,9 +524,9 @@ static int net_handle_arp(unsigned char *pkt, int len)
 		goto bad;
 	if (arp->ar_pln != 4)
 		goto bad;
-	if (net_ip == 0)
+	if (edev->ipaddr == 0)
 		return 0;
-	if (net_read_ip(&arp->ar_data[16]) != net_ip)
+	if (net_read_ip(&arp->ar_data[16]) != edev->ipaddr)
 		return 0;
 
 	switch (ntohs(arp->ar_op)) {
@@ -600,6 +583,7 @@ static int net_handle_icmp(unsigned char *pkt, int len)
 static int net_handle_ip(unsigned char *pkt, int len)
 {
 	struct iphdr *ip = (struct iphdr *)(pkt + ETHER_HDR_SIZE);
+	struct eth_device *edev = eth_get_current();
 	IPaddr_t tmp;
 
 	debug("%s\n", __func__);
@@ -619,7 +603,7 @@ static int net_handle_ip(unsigned char *pkt, int len)
 		goto bad;
 
 	tmp = net_read_ip(&ip->daddr);
-	if (net_ip && tmp != net_ip && tmp != 0xffffffff)
+	if (edev->ipaddr && tmp != edev->ipaddr && tmp != 0xffffffff)
 		return 0;
 
 	switch (ip->protocol) {
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
