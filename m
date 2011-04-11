Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q9Hwy-000663-Kj
	for barebox@lists.infradead.org; Mon, 11 Apr 2011 14:18:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 11 Apr 2011 16:18:36 +0200
Message-Id: <1302531521-7439-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1302531521-7439-1-git-send-email-s.hauer@pengutronix.de>
References: <1302531521-7439-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/7] net: add a context to the packet handler
To: barebox@lists.infradead.org

This is not yet used, but with this the different network
commands can get rid of their global data.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/net.h    |    8 +++++---
 net/dhcp.c       |    4 ++--
 net/dns.c        |    4 ++--
 net/net.c        |   17 ++++++++++-------
 net/netconsole.c |    4 ++--
 net/nfs.c        |    4 ++--
 net/ping.c       |    4 ++--
 net/tftp.c       |    4 ++--
 8 files changed, 27 insertions(+), 22 deletions(-)

diff --git a/include/net.h b/include/net.h
index 33d8a32..31bf6a2 100644
--- a/include/net.h
+++ b/include/net.h
@@ -363,7 +363,7 @@ static inline int is_valid_ether_addr(const u8 *addr)
 	return !is_multicast_ether_addr(addr) && !is_zero_ether_addr(addr);
 }
 
-typedef void rx_handler_f(char *packet, unsigned int len);
+typedef void rx_handler_f(void *ctx, char *packet, unsigned int len);
 
 void eth_set_current(struct eth_device *eth);
 struct eth_device *eth_get_current(void);
@@ -388,6 +388,7 @@ struct net_connection {
 	struct list_head list;
 	rx_handler_f *handler;
 	int proto;
+	void *priv;
 };
 
 static inline char *net_alloc_packet(void)
@@ -396,9 +397,10 @@ static inline char *net_alloc_packet(void)
 }
 
 struct net_connection *net_udp_new(IPaddr_t dest, uint16_t dport,
-		rx_handler_f *handler);
+		rx_handler_f *handler, void *ctx);
 
-struct net_connection *net_icmp_new(IPaddr_t dest, rx_handler_f *handler);
+struct net_connection *net_icmp_new(IPaddr_t dest, rx_handler_f *handler,
+		void *ctx);
 
 void net_unregister(struct net_connection *con);
 
diff --git a/net/dhcp.c b/net/dhcp.c
index 0771964..d1781bc 100644
--- a/net/dhcp.c
+++ b/net/dhcp.c
@@ -381,7 +381,7 @@ static void dhcp_send_request_packet(struct bootp *bp_offer)
 /*
  *	Handle DHCP received packets.
  */
-static void dhcp_handler(char *packet, unsigned int len)
+static void dhcp_handler(void *ctx, char *packet, unsigned int len)
 {
 	char *pkt = net_eth_to_udp_payload(packet);
 	struct udphdr *udp = net_eth_to_udphdr(packet);
@@ -439,7 +439,7 @@ static int do_dhcp(struct command *cmdtp, int argc, char *argv[])
 {
 	int ret;
 
-	dhcp_con = net_udp_new(0xffffffff, PORT_BOOTPS, dhcp_handler);
+	dhcp_con = net_udp_new(0xffffffff, PORT_BOOTPS, dhcp_handler, NULL);
 	if (IS_ERR(dhcp_con)) {
 		ret = PTR_ERR(dhcp_con);
 		goto out;
diff --git a/net/dns.c b/net/dns.c
index 1ee270b..4db5bbc 100644
--- a/net/dns.c
+++ b/net/dns.c
@@ -116,7 +116,7 @@ static int dns_send(char *name)
 	return ret;
 }
 
-static void dns_handler(char *packet, unsigned len)
+static void dns_handler(void *ctx, char *packet, unsigned len)
 {
 	struct header *header;
 	unsigned char *p, *e, *s;
@@ -211,7 +211,7 @@ IPaddr_t resolv(char *host)
 
 	debug("resolving host %s via nameserver %s\n", host, getenv("nameserver"));
 
-	dns_con = net_udp_new(ip, DNS_PORT, dns_handler);
+	dns_con = net_udp_new(ip, DNS_PORT, dns_handler, NULL);
 	if (IS_ERR(dns_con))
 		return PTR_ERR(dns_con);
 	dns_timer_start = get_time_ns();
diff --git a/net/net.c b/net/net.c
index 7495357..f1ab667 100644
--- a/net/net.c
+++ b/net/net.c
@@ -343,7 +343,8 @@ void net_set_gateway(IPaddr_t gw)
 
 static LIST_HEAD(connection_list);
 
-static struct net_connection *net_new(IPaddr_t dest, rx_handler_f *handler)
+static struct net_connection *net_new(IPaddr_t dest, rx_handler_f *handler,
+		void *ctx)
 {
 	struct eth_device *edev = eth_get_current();
 	struct net_connection *con;
@@ -366,6 +367,7 @@ static struct net_connection *net_new(IPaddr_t dest, rx_handler_f *handler)
 
 	con = xzalloc(sizeof(*con));
 	con->packet = xmemalign(32, PKTSIZE);
+	con->priv = ctx;
 	memset(con->packet, 0, PKTSIZE);
 
 	con->et = (struct ethernet *)con->packet;
@@ -402,9 +404,9 @@ out:
 }
 
 struct net_connection *net_udp_new(IPaddr_t dest, uint16_t dport,
-		rx_handler_f *handler)
+		rx_handler_f *handler, void *ctx)
 {
-	struct net_connection *con = net_new(dest, handler);
+	struct net_connection *con = net_new(dest, handler, ctx);
 
 	if (IS_ERR(con))
 		return con;
@@ -417,9 +419,10 @@ struct net_connection *net_udp_new(IPaddr_t dest, uint16_t dport,
 	return con;
 }
 
-struct net_connection *net_icmp_new(IPaddr_t dest, rx_handler_f *handler)
+struct net_connection *net_icmp_new(IPaddr_t dest, rx_handler_f *handler,
+		void *ctx)
 {
-	struct net_connection *con = net_new(dest, handler);
+	struct net_connection *con = net_new(dest, handler, ctx);
 
 	if (IS_ERR(con))
 		return con;
@@ -564,7 +567,7 @@ static int net_handle_udp(unsigned char *pkt, int len)
 	port = ntohs(udp->uh_dport);
 	list_for_each_entry(con, &connection_list, list) {
 		if (con->proto == IPPROTO_UDP && port == ntohs(con->udp->uh_sport)) {
-			con->handler(pkt, len);
+			con->handler(con->priv, pkt, len);
 			return 0;
 		}
 	}
@@ -579,7 +582,7 @@ static int net_handle_icmp(unsigned char *pkt, int len)
 
 	list_for_each_entry(con, &connection_list, list) {
 		if (con->proto == IPPROTO_ICMP) {
-			con->handler(pkt, len);
+			con->handler(con->priv, pkt, len);
 			return 0;
 		}
 	}
diff --git a/net/netconsole.c b/net/netconsole.c
index fda524e..2ac3e64 100644
--- a/net/netconsole.c
+++ b/net/netconsole.c
@@ -50,7 +50,7 @@ struct nc_priv {
 
 static struct nc_priv *g_priv;
 
-static void nc_handler(char *pkt, unsigned len)
+static void nc_handler(void *ctx, char *pkt, unsigned len)
 {
 	struct nc_priv *priv = g_priv;
 	unsigned char *packet = net_eth_to_udp_payload(pkt);
@@ -65,7 +65,7 @@ static int nc_init(void)
 	if (priv->con)
 		net_unregister(priv->con);
 
-	priv->con = net_udp_new(priv->ip, priv->port, nc_handler);
+	priv->con = net_udp_new(priv->ip, priv->port, nc_handler, NULL);
 	if (IS_ERR(priv->con)) {
 		int ret = PTR_ERR(priv->con);
 		priv->con = NULL;
diff --git a/net/nfs.c b/net/nfs.c
index 4ca1d6e..0a4b787 100644
--- a/net/nfs.c
+++ b/net/nfs.c
@@ -562,7 +562,7 @@ static int nfs_read_reply(unsigned char *pkt, unsigned len)
 Interfaces of barebox
 **************************************************************************/
 
-static void nfs_handler(char *packet, unsigned len)
+static void nfs_handler(void *ctx, char *packet, unsigned len)
 {
 	char *pkt = net_eth_to_udp_payload(packet);
 	int ret;
@@ -689,7 +689,7 @@ static int do_nfs(struct command *cmdtp, int argc, char *argv[])
 		return 1;
 	}
 
-	nfs_con = net_udp_new(net_get_serverip(), 0, nfs_handler);
+	nfs_con = net_udp_new(net_get_serverip(), 0, nfs_handler, NULL);
 	if (IS_ERR(nfs_con)) {
 		nfs_err = PTR_ERR(nfs_con);
 		goto err_udp;
diff --git a/net/ping.c b/net/ping.c
index d414784..8aad7af 100644
--- a/net/ping.c
+++ b/net/ping.c
@@ -40,7 +40,7 @@ static int ping_send(void)
 	return net_icmp_send(ping_con, 9);
 }
 
-static void ping_handler(char *pkt, unsigned len)
+static void ping_handler(void *ctx, char *pkt, unsigned len)
 {
 	IPaddr_t tmp;
 	struct iphdr *ip = net_eth_to_iphdr(pkt);
@@ -66,7 +66,7 @@ static int do_ping(struct command *cmdtp, int argc, char *argv[])
 		return 1;
 	}
 
-	ping_con = net_icmp_new(net_ping_ip, ping_handler);
+	ping_con = net_icmp_new(net_ping_ip, ping_handler, NULL);
 	if (IS_ERR(ping_con)) {
 		ret = PTR_ERR(ping_con);
 		goto out;
diff --git a/net/tftp.c b/net/tftp.c
index 0f38b6b..ee11468 100644
--- a/net/tftp.c
+++ b/net/tftp.c
@@ -141,7 +141,7 @@ static int tftp_send(void)
 	return ret;
 }
 
-static void tftp_handler(char *packet, unsigned len)
+static void tftp_handler(void *ctx, char *packet, unsigned len)
 {
 	uint16_t proto;
 	uint16_t *s;
@@ -314,7 +314,7 @@ static int do_tftpb(struct command *cmdtp, int argc, char *argv[])
 		return 1;
 	}
 
-	tftp_con = net_udp_new(net_get_serverip(), TFTP_PORT, tftp_handler);
+	tftp_con = net_udp_new(net_get_serverip(), TFTP_PORT, tftp_handler, NULL);
 	if (IS_ERR(tftp_con)) {
 		tftp_err = PTR_ERR(tftp_con);
 		goto out_close;
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
