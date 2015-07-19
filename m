Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22b.google.com ([2a00:1450:4010:c04::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZGusR-0007ln-Py
 for barebox@lists.infradead.org; Sun, 19 Jul 2015 20:08:01 +0000
Received: by lbbyj8 with SMTP id yj8so84998896lbb.0
 for <barebox@lists.infradead.org>; Sun, 19 Jul 2015 13:07:37 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sun, 19 Jul 2015 23:07:12 +0300
Message-Id: <1437336443-8076-6-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1437336443-8076-1-git-send-email-antonynpavlov@gmail.com>
References: <1437336443-8076-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC v2 05/16] net: change UDP handler function API
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 fs/nfs.c         |  4 +---
 fs/tftp.c        |  9 +++------
 include/net.h    | 15 +++++++++++++--
 net/dhcp.c       |  8 ++------
 net/dns.c        |  7 +++----
 net/net.c        | 12 ++++++++----
 net/netconsole.c |  5 ++---
 net/nfs.c        |  3 +--
 8 files changed, 33 insertions(+), 30 deletions(-)

diff --git a/fs/nfs.c b/fs/nfs.c
index 3824752..6c649c6 100644
--- a/fs/nfs.c
+++ b/fs/nfs.c
@@ -943,10 +943,8 @@ static int nfs_read_req(struct file_priv *priv, uint64_t offset,
 	return 0;
 }
 
-static void nfs_handler(void *ctx, char *packet, unsigned len)
+static void nfs_handler(struct net_connection *con, char *pkt, unsigned len)
 {
-	char *pkt = net_eth_to_udp_payload(packet);
-
 	nfs_state = STATE_DONE;
 	nfs_packet = pkt;
 	nfs_len = len;
diff --git a/fs/tftp.c b/fs/tftp.c
index 56d4365..c854da5 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -368,14 +368,11 @@ static void tftp_recv(struct file_priv *priv,
 	}
 }
 
-static void tftp_handler(void *ctx, char *packet, unsigned len)
+static void tftp_handler(struct net_connection *con, char *packet, unsigned len)
 {
-	struct file_priv *priv = ctx;
-	char *pkt = net_eth_to_udp_payload(packet);
-	struct udphdr *udp = net_eth_to_udphdr(packet);
+	struct file_priv *priv = con->priv;
 
-	(void)len;
-	tftp_recv(priv, pkt, net_eth_to_udplen(packet), udp->uh_sport);
+	tftp_recv(priv, packet, len, getudppeerport(con));
 }
 
 static struct file_priv *tftp_do_open(struct device_d *dev,
diff --git a/include/net.h b/include/net.h
index d7a4751..fa2777e 100644
--- a/include/net.h
+++ b/include/net.h
@@ -405,6 +405,8 @@ static inline int is_valid_ether_addr(const u8 *addr)
 }
 
 typedef void rx_handler_f(void *ctx, char *packet, unsigned int len);
+struct net_connection;
+typedef void udp_rx_handler_f(struct net_connection *con, char *packet, unsigned int len);
 
 void eth_set_current(struct eth_device *eth);
 struct eth_device *eth_get_current(void);
@@ -426,8 +428,9 @@ struct net_connection {
 	struct eth_device *edev;
 	struct icmphdr *icmp;
 	unsigned char *packet;
+	unsigned char *rpacket;
 	struct list_head list;
-	rx_handler_f *handler;
+	void *handler;
 	int proto;
 	void *priv;
 };
@@ -438,7 +441,7 @@ static inline char *net_alloc_packet(void)
 }
 
 struct net_connection *net_udp_new(IPaddr_t dest, uint16_t dport,
-		rx_handler_f *handler, void *ctx);
+		udp_rx_handler_f *handler, void *ctx);
 
 struct net_connection *net_icmp_new(IPaddr_t dest, rx_handler_f *handler,
 		void *ctx);
@@ -467,4 +470,12 @@ void led_trigger_network(enum led_trigger trigger);
 int ifup(const char *name, unsigned flags);
 int ifup_all(unsigned flags);
 
+/* NB! return port in network byte order */
+static inline uint16_t getudppeerport(struct net_connection *con)
+{
+	struct udphdr *udp = net_eth_to_udphdr(con->rpacket);
+
+	return udp->uh_sport;
+}
+
 #endif /* __NET_H__ */
diff --git a/net/dhcp.c b/net/dhcp.c
index e1625ec..d8b6bf7 100644
--- a/net/dhcp.c
+++ b/net/dhcp.c
@@ -588,18 +588,14 @@ static void dhcp_send_request_packet(struct bootp *bp_offer)
 /*
  *	Handle DHCP received packets.
  */
-static void dhcp_handler(void *ctx, char *packet, unsigned int len)
+static void dhcp_handler(struct net_connection *con, char *pkt, unsigned int len)
 {
-	char *pkt = net_eth_to_udp_payload(packet);
-	struct udphdr *udp = net_eth_to_udphdr(packet);
 	struct bootp *bp = (struct bootp *)pkt;
 
-	len = net_eth_to_udplen(packet);
-
 	debug("DHCPHandler: got packet: (len=%d) state: %d\n",
 		len, dhcp_state);
 
-	if (bootp_check_packet(pkt, ntohs(udp->uh_sport), len)) /* Filter out pkts we don't want */
+	if (bootp_check_packet(pkt, ntohs(getudppeerport(con)), len)) /* Filter out pkts we don't want */
 		return;
 
 	switch (dhcp_state) {
diff --git a/net/dns.c b/net/dns.c
index 0e16ea2..05106c6 100644
--- a/net/dns.c
+++ b/net/dns.c
@@ -192,11 +192,10 @@ static void dns_recv(struct header *header, unsigned len)
 	}
 }
 
-static void dns_handler(void *ctx, char *packet, unsigned len)
+static void dns_handler(struct net_connection *con, char *packet, unsigned len)
 {
-	(void)ctx;
-	dns_recv((struct header *)net_eth_to_udp_payload(packet),
-		net_eth_to_udplen(packet));
+	(void)con;
+	dns_recv((struct header *)packet, len);
 }
 
 IPaddr_t resolv(char *host)
diff --git a/net/net.c b/net/net.c
index e5bd9bb..8461caf 100644
--- a/net/net.c
+++ b/net/net.c
@@ -255,7 +255,7 @@ void net_set_gateway(IPaddr_t gw)
 
 static LIST_HEAD(connection_list);
 
-static struct net_connection *net_new(IPaddr_t dest, rx_handler_f *handler,
+static struct net_connection *net_new(IPaddr_t dest, void *handler,
 		void *ctx)
 {
 	struct eth_device *edev = eth_get_current();
@@ -317,7 +317,7 @@ out:
 }
 
 struct net_connection *net_udp_new(IPaddr_t dest, uint16_t dport,
-		rx_handler_f *handler, void *ctx)
+		udp_rx_handler_f *handler, void *ctx)
 {
 	struct net_connection *con = net_new(dest, handler, ctx);
 
@@ -480,7 +480,10 @@ static int net_handle_udp(unsigned char *pkt, int len)
 	port = ntohs(udp->uh_dport);
 	list_for_each_entry(con, &connection_list, list) {
 		if (con->proto == IPPROTO_UDP && port == ntohs(con->udp->uh_sport)) {
-			con->handler(con->priv, pkt, len);
+			udp_rx_handler_f *handler = con->handler;
+			con->rpacket = pkt;
+			handler(con, net_eth_to_udp_payload(pkt),
+						net_eth_to_udplen(pkt));
 			return 0;
 		}
 	}
@@ -495,7 +498,8 @@ static int net_handle_icmp(unsigned char *pkt, int len)
 
 	list_for_each_entry(con, &connection_list, list) {
 		if (con->proto == IPPROTO_ICMP) {
-			con->handler(con->priv, pkt, len);
+			rx_handler_f *handler = con->handler;
+			handler(con->priv, pkt, len);
 			return 0;
 		}
 	}
diff --git a/net/netconsole.c b/net/netconsole.c
index 0ee6a76..e7c722f 100644
--- a/net/netconsole.c
+++ b/net/netconsole.c
@@ -44,12 +44,11 @@ struct nc_priv {
 
 static struct nc_priv *g_priv;
 
-static void nc_handler(void *ctx, char *pkt, unsigned len)
+static void nc_handler(struct net_connection *con, char *pkt, unsigned len)
 {
 	struct nc_priv *priv = g_priv;
-	unsigned char *packet = net_eth_to_udp_payload(pkt);
 
-	kfifo_put(priv->fifo, packet, net_eth_to_udplen(pkt));
+	kfifo_put(priv->fifo, pkt, len);
 }
 
 static int nc_getc(struct console_device *cdev)
diff --git a/net/nfs.c b/net/nfs.c
index 0a30219..5a907d5 100644
--- a/net/nfs.c
+++ b/net/nfs.c
@@ -562,9 +562,8 @@ static int nfs_read_reply(unsigned char *pkt, unsigned len)
 Interfaces of barebox
 **************************************************************************/
 
-static void nfs_handler(void *ctx, char *packet, unsigned len)
+static void nfs_handler(struct net_connection *con, char *pkt, unsigned len)
 {
-	char *pkt = net_eth_to_udp_payload(packet);
 	int ret;
 
 	debug("%s\n", __func__);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
