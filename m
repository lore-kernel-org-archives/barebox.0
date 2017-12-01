Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eKjPf-0003o2-BV
 for barebox@lists.infradead.ORG; Fri, 01 Dec 2017 11:23:39 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  1 Dec 2017 12:22:36 +0100
Message-Id: <20171201112256.20196-8-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/27] net: Add functions to get/set nameserver and domainname
To: Barebox List <barebox@lists.infradead.org>

It's more convenient to have getter/setter functions for
variables rather than using the detour around global vars
which use string matching and all kinds of overhead in the
background.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/net.h |  4 ++++
 net/dns.c     |  8 ++------
 net/net.c     | 24 ++++++++++++++++++++++++
 3 files changed, 30 insertions(+), 6 deletions(-)

diff --git a/include/net.h b/include/net.h
index 4649947916..817e29cd9b 100644
--- a/include/net.h
+++ b/include/net.h
@@ -220,8 +220,12 @@ void net_set_ip(IPaddr_t ip);
 void net_set_serverip(IPaddr_t ip);
 void net_set_netmask(IPaddr_t ip);
 void net_set_gateway(IPaddr_t ip);
+void net_set_nameserver(IPaddr_t ip);
+void net_set_domainname(const char *name);
 IPaddr_t net_get_ip(void);
 IPaddr_t net_get_serverip(void);
+IPaddr_t net_get_nameserver(void);
+const char *net_get_domainname(void);
 
 /* Do the work */
 void net_poll(void);
diff --git a/net/dns.c b/net/dns.c
index 69b8a24861..a8ce7a4484 100644
--- a/net/dns.c
+++ b/net/dns.c
@@ -202,7 +202,6 @@ static void dns_handler(void *ctx, char *packet, unsigned len)
 IPaddr_t resolv(const char *host)
 {
 	IPaddr_t ip;
-	const char *ns;
 
 	if (!string_to_ip(host, &ip))
 		return ip;
@@ -211,16 +210,13 @@ IPaddr_t resolv(const char *host)
 
 	dns_state = STATE_INIT;
 
-	ns = getenv("global.net.nameserver");
-	if (!ns || !*ns) {
+	ip = net_get_nameserver();
+	if (!ip) {
 		printk("%s: no nameserver specified in $net.nameserver\n",
 				__func__);
 		return 0;
 	}
 
-	if (string_to_ip(ns, &ip))
-		return 0;
-
 	debug("resolving host %s via nameserver %pI4\n", host, &ip);
 
 	dns_con = net_udp_new(ip, DNS_PORT, dns_handler, NULL);
diff --git a/net/net.c b/net/net.c
index 30977321ff..1ebf0008cb 100644
--- a/net/net.c
+++ b/net/net.c
@@ -47,6 +47,30 @@ static unsigned int net_ip_id;
 static IPaddr_t net_nameserver;
 static char *net_domainname;
 
+void net_set_nameserver(IPaddr_t nameserver)
+{
+	net_nameserver = nameserver;
+}
+
+IPaddr_t net_get_nameserver(void)
+{
+	return net_nameserver;
+}
+
+void net_set_domainname(const char *name)
+{
+	free(net_domainname);
+	if (name)
+		net_domainname = xstrdup(name);
+	else
+		net_domainname = xstrdup("");
+};
+
+const char *net_get_domainname(void)
+{
+	return net_domainname;
+}
+
 int net_checksum_ok(unsigned char *ptr, int len)
 {
 	return net_checksum(ptr, len) == 0xffff;
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
