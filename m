Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRADf-0003FA-RL
 for barebox@lists.infradead.org; Wed, 22 Apr 2020 07:54:58 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 22 Apr 2020 09:54:50 +0200
Message-Id: <20200422075452.25226-10-s.hauer@pengutronix.de>
In-Reply-To: <20200422075452.25226-1-s.hauer@pengutronix.de>
References: <20200422075452.25226-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 09/11] net: reply to ping requests
To: Barebox List <barebox@lists.infradead.org>
Cc: Edmund Henniges <eh@emlix.com>, =?UTF-8?q?Daniel=20Gl=C3=B6ckner?= <dg@emlix.com>

Now that we have the network receive function running in a poller we
can reasonably well answer to ping requests. Implement this feature.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 net/net.c | 46 ++++++++++++++++++++++++++++++++++++++++++++--
 1 file changed, 44 insertions(+), 2 deletions(-)

diff --git a/net/net.c b/net/net.c
index 6eb604e5dc..e0cded5783 100644
--- a/net/net.c
+++ b/net/net.c
@@ -573,12 +573,54 @@ static int net_handle_udp(unsigned char *pkt, int len)
 	return -EINVAL;
 }
 
-static int net_handle_icmp(unsigned char *pkt, int len)
+static int ping_reply(struct eth_device *edev, unsigned char *pkt, int len)
+{
+	struct ethernet *et = (struct ethernet *)pkt;
+	struct icmphdr *icmp;
+	struct iphdr *ip = (struct iphdr *)(pkt + ETHER_HDR_SIZE);
+	unsigned char *packet;
+	int ret;
+
+	memcpy(et->et_dest, et->et_src, 6);
+	memcpy(et->et_src, edev->ethaddr, 6);
+	et->et_protlen = htons(PROT_IP);
+
+	icmp = net_eth_to_icmphdr(pkt);
+
+	icmp->type = ICMP_ECHO_REPLY;
+	icmp->checksum = 0;
+	icmp->checksum = ~net_checksum((unsigned char *)icmp,
+				       len - sizeof(struct iphdr) - ETHER_HDR_SIZE);
+	ip->check = 0;
+	ip->frag_off = 0;
+	net_copy_ip((void *)&ip->daddr, &ip->saddr);
+	net_copy_ip((void *)&ip->saddr, &edev->ipaddr);
+	ip->check = ~net_checksum((unsigned char *)ip, sizeof(struct iphdr));
+
+	packet = net_alloc_packet();
+	if (!packet)
+		return 0;
+
+	memcpy(packet, pkt, ETHER_HDR_SIZE + len);
+
+	ret = eth_send(edev, packet, ETHER_HDR_SIZE + len);
+
+	free(packet);
+
+	return 0;
+}
+
+static int net_handle_icmp(struct eth_device *edev, unsigned char *pkt, int len)
 {
 	struct net_connection *con;
+	struct icmphdr *icmp;
 
 	pr_debug("%s\n", __func__);
 
+	icmp = net_eth_to_icmphdr(pkt);
+	if (icmp->type == ICMP_ECHO_REQUEST)
+		ping_reply(edev, pkt, len);
+
 	list_for_each_entry(con, &connection_list, list) {
 		if (con->proto == IPPROTO_ICMP) {
 			con->handler(con->priv, pkt, len);
@@ -615,7 +657,7 @@ static int net_handle_ip(struct eth_device *edev, unsigned char *pkt, int len)
 
 	switch (ip->protocol) {
 	case IPPROTO_ICMP:
-		return net_handle_icmp(pkt, len);
+		return net_handle_icmp(edev, pkt, len);
 	case IPPROTO_UDP:
 		return net_handle_udp(pkt, len);
 	}
-- 
2.26.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
