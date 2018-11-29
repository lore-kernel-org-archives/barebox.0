Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gSJS0-0000ue-H7
 for barebox@lists.infradead.org; Thu, 29 Nov 2018 10:21:43 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 29 Nov 2018 11:21:27 +0100
Message-Id: <20181129102127.17158-3-s.hauer@pengutronix.de>
In-Reply-To: <20181129102127.17158-1-s.hauer@pengutronix.de>
References: <20181129102127.17158-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/3] net: dns: return error codes
To: Barebox List <barebox@lists.infradead.org>

The resolv() function used to return the IP address. When net_udp_new()
fails we return an error code though which the callers of resolv() take
as an IP address. This is wrong of course and we could return 0 in this
case. Instead we return an error code and pass the resolved IP as a
pointer which allows us to return proper error codes.

This patch also adds error messages and error returns to the various
callers of resolv() which used to just continue with a zero IP and
let the user figure out what went wrong.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/blspec.c |  6 ++++--
 fs/nfs.c        |  6 +++++-
 fs/tftp.c       | 11 ++++++++++-
 include/net.h   |  8 +++-----
 net/dhcp.c      |  6 ++++--
 net/dns.c       | 36 ++++++++++++++++++++++--------------
 net/net.c       |  4 +++-
 net/ping.c      |  6 +++---
 8 files changed, 54 insertions(+), 29 deletions(-)

diff --git a/common/blspec.c b/common/blspec.c
index 2c682e1990..41f2a4c534 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -303,9 +303,11 @@ static char *parse_nfs_url(const char *url)
 		goto out;
 	}
 
-	ip = resolv(host);
-	if (ip == 0)
+	ret = resolv(host, &ip);
+	if (ret) {
+		pr_err("Cannot resolve \"%s\": %s\n", host, strerror(-ret));
 		goto out;
+	}
 
 	hostpath = basprintf("%pI4:%s", &ip, path);
 
diff --git a/fs/nfs.c b/fs/nfs.c
index eb5db344db..d7f156687f 100644
--- a/fs/nfs.c
+++ b/fs/nfs.c
@@ -1293,7 +1293,11 @@ static int nfs_probe(struct device_d *dev)
 
 	npriv->path = xstrdup(path + 1);
 
-	npriv->server = resolv(tmp);
+	ret = resolv(tmp, &npriv->server);
+	if (ret) {
+		printf("cannot resolve \"%s\": %s\n", tmp, strerror(-ret));
+		goto err1;
+	}
 
 	debug("nfs: server: %s path: %s\n", tmp, npriv->path);
 
diff --git a/fs/tftp.c b/fs/tftp.c
index 0d9ee6effd..907adc7434 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -696,10 +696,15 @@ static int tftp_probe(struct device_d *dev)
 	struct tftp_priv *priv = xzalloc(sizeof(struct tftp_priv));
 	struct super_block *sb = &fsdev->sb;
 	struct inode *inode;
+	int ret;
 
 	dev->priv = priv;
 
-	priv->server = resolv(fsdev->backingstore);
+	ret = resolv(fsdev->backingstore, &priv->server);
+	if (ret) {
+		pr_err("Cannot resolve \"%s\": %s\n", fsdev->backingstore, strerror(-ret));
+		goto err;
+	}
 
 	sb->s_op = &tftp_ops;
 
@@ -707,6 +712,10 @@ static int tftp_probe(struct device_d *dev)
 	sb->s_root = d_make_root(inode);
 
 	return 0;
+err:
+	free(priv);
+
+	return ret;
 }
 
 static void tftp_remove(struct device_d *dev)
diff --git a/include/net.h b/include/net.h
index a09cb155a8..6912a557b5 100644
--- a/include/net.h
+++ b/include/net.h
@@ -330,13 +330,11 @@ int string_to_ethaddr(const char *str, u8 enetaddr[6]);
 void ethaddr_to_string(const u8 enetaddr[6], char *str);
 
 #ifdef CONFIG_NET_RESOLV
-IPaddr_t resolv(const char *host);
+int resolv(const char *host, IPaddr_t *ip);
 #else
-static inline IPaddr_t resolv(const char *host)
+static inline int resolv(const char *host, IPaddr_t *ip)
 {
-	IPaddr_t ip = 0;
-	string_to_ip(host, &ip);
-	return ip;
+	return string_to_ip(host, ip);
 }
 #endif
 
diff --git a/net/dhcp.c b/net/dhcp.c
index 79aa75d878..670a6a6422 100644
--- a/net/dhcp.c
+++ b/net/dhcp.c
@@ -562,6 +562,8 @@ out:
 
 int dhcp_set_result(struct eth_device *edev, struct dhcp_result *res)
 {
+	int ret;
+
 	net_set_ip(edev, res->ip);
 	net_set_netmask(edev, res->netmask);
 	net_set_gateway(res->gateway);
@@ -580,8 +582,8 @@ int dhcp_set_result(struct eth_device *edev, struct dhcp_result *res)
 	if (res->tftp_server_name) {
 		IPaddr_t ip;
 
-		ip = resolv(res->tftp_server_name);
-		if (ip)
+		ret = resolv(res->tftp_server_name, &ip);
+		if (!ret)
 			net_set_serverip_empty(ip);
 	} else if (res->serverip) {
 		net_set_serverip_empty(res->serverip);
diff --git a/net/dns.c b/net/dns.c
index a3a3b94145..4516235df2 100644
--- a/net/dns.c
+++ b/net/dns.c
@@ -201,26 +201,27 @@ static void dns_handler(void *ctx, char *packet, unsigned len)
 		net_eth_to_udplen(packet));
 }
 
-IPaddr_t resolv(const char *host)
+int resolv(const char *host, IPaddr_t *ip)
 {
-	IPaddr_t ip;
+	IPaddr_t nameserver;
 
-	if (!string_to_ip(host, &ip))
-		return ip;
+	if (!string_to_ip(host, ip))
+		return 0;
 
 	dns_ip = 0;
+	*ip = 0;
 
 	dns_state = STATE_INIT;
 
-	ip = net_get_nameserver();
-	if (!ip) {
+	nameserver = net_get_nameserver();
+	if (!nameserver) {
 		pr_err("no nameserver specified in $net.nameserver\n");
 		return 0;
 	}
 
-	pr_debug("resolving host %s via nameserver %pI4\n", host, &ip);
+	pr_debug("resolving host %s via nameserver %pI4\n", host, &nameserver);
 
-	dns_con = net_udp_new(ip, DNS_PORT, dns_handler, NULL);
+	dns_con = net_udp_new(nameserver, DNS_PORT, dns_handler, NULL);
 	if (IS_ERR(dns_con))
 		return PTR_ERR(dns_con);
 	dns_timer_start = get_time_ns();
@@ -240,25 +241,32 @@ IPaddr_t resolv(const char *host)
 
 	net_unregister(dns_con);
 
-	pr_debug("host %s is at %pI4\n", host, &dns_ip);
+	if (dns_ip) {
+		pr_debug("host %s is at %pI4\n", host, &dns_ip);
+	} else {
+		pr_debug("host %s not found\n", host);
+		return -ENOENT;
+	}
+
+	*ip = dns_ip;
 
-	return dns_ip;
+	return 0;
 }
 
 #ifdef CONFIG_CMD_HOST
 static int do_host(int argc, char *argv[])
 {
 	IPaddr_t ip;
+	int ret;
 
 	if (argc != 2)
 		return COMMAND_ERROR_USAGE;
 
-	ip = resolv(argv[1]);
-	if (!ip)
+	ret = resolv(argv[1], &ip);
+	if (ret)
 		printf("unknown host %s\n", argv[1]);
-	else {
+	else
 		printf("%s is at %pI4\n", argv[1], &ip);
-	}
 
 	return 0;
 }
diff --git a/net/net.c b/net/net.c
index 63f42fa5cc..f1a7df0298 100644
--- a/net/net.c
+++ b/net/net.c
@@ -107,7 +107,9 @@ IPaddr_t getenv_ip(const char *name)
 	if (!string_to_ip(var, &ip))
 		return ip;
 
-	return resolv((char*)var);
+	resolv(var, &ip);
+
+	return ip;
 }
 
 int setenv_ip(const char *name, IPaddr_t ip)
diff --git a/net/ping.c b/net/ping.c
index b5926280e0..a71f59a805 100644
--- a/net/ping.c
+++ b/net/ping.c
@@ -61,9 +61,9 @@ static int do_ping(int argc, char *argv[])
 	if (argc < 2)
 		return COMMAND_ERROR_USAGE;
 
-	net_ping_ip = resolv(argv[1]);
-	if (!net_ping_ip) {
-		printf("unknown host %s\n", argv[1]);
+	ret = resolv(argv[1], &net_ping_ip);
+	if (ret) {
+		printf("Cannot resolve \"%s\": %s\n", argv[1], strerror(-ret));
 		return 1;
 	}
 
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
