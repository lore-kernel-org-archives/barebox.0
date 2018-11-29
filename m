Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gSJS0-0000q5-HA
 for barebox@lists.infradead.org; Thu, 29 Nov 2018 10:21:42 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 29 Nov 2018 11:21:25 +0100
Message-Id: <20181129102127.17158-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/3] net: dns: Use pr_debug
To: Barebox List <barebox@lists.infradead.org>

Use pr_debug rather than debug and add a pr_fmt string to give
the messages more context. While at it add a debug message which
prints the ip when successfully resolved.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 net/dns.c | 27 +++++++++++++++------------
 1 file changed, 15 insertions(+), 12 deletions(-)

diff --git a/net/dns.c b/net/dns.c
index a8ce7a4484..a3a3b94145 100644
--- a/net/dns.c
+++ b/net/dns.c
@@ -21,7 +21,9 @@
  * can do whatever you want with this stuff. If we meet some day, and you think
  * this stuff is worth it, you can buy me a beer in return.
  */
-//#define DEBUG
+
+#define pr_fmt(fmt) "dns: " fmt
+
 #include <common.h>
 #include <command.h>
 #include <net.h>
@@ -123,7 +125,7 @@ static void dns_recv(struct header *header, unsigned len)
 	int found, stop, dlen;
 	short tmp;
 
-	debug("%s\n", __func__);
+	pr_debug("%s\n", __func__);
 
 	/* We sent 1 query. We want to see more that 1 answer. */
 	if (ntohs(header->nqueries) != 1)
@@ -132,7 +134,7 @@ static void dns_recv(struct header *header, unsigned len)
 	/* Received 0 answers */
 	if (header->nanswers == 0) {
 		dns_state = STATE_DONE;
-		debug("DNS server returned no answers\n");
+		pr_debug("DNS server returned no answers\n");
 		return;
 	}
 
@@ -145,7 +147,7 @@ static void dns_recv(struct header *header, unsigned len)
 	/* We sent query class 1, query type 1 */
 	tmp = p[1] | (p[2] << 8);
 	if (&p[5] > e || ntohs(tmp) != DNS_A_RECORD) {
-		debug("DNS response was not A record\n");
+		pr_debug("DNS response was not A record\n");
 		return;
 	}
 
@@ -161,23 +163,23 @@ static void dns_recv(struct header *header, unsigned len)
 				p++;
 			p--;
 		}
-		debug("Name (Offset in header): %d\n", p[1]);
+		pr_debug("Name (Offset in header): %d\n", p[1]);
 
 		tmp = p[2] | (p[3] << 8);
 		type = ntohs(tmp);
-		debug("type = %d\n", type);
+		pr_debug("type = %d\n", type);
 		if (type == DNS_CNAME_RECORD) {
 			/* CNAME answer. shift to the next section */
 			debug("Found canonical name\n");
 			tmp = p[10] | (p[11] << 8);
 			dlen = ntohs(tmp);
-			debug("dlen = %d\n", dlen);
+			pr_debug("dlen = %d\n", dlen);
 			p += 12 + dlen;
 		} else if (type == DNS_A_RECORD) {
-			debug("Found A-record\n");
+			pr_debug("Found A-record\n");
 			found = stop = 1;
 		} else {
-			debug("Unknown type\n");
+			pr_debug("Unknown type\n");
 			stop = 1;
 		}
 	}
@@ -212,12 +214,11 @@ IPaddr_t resolv(const char *host)
 
 	ip = net_get_nameserver();
 	if (!ip) {
-		printk("%s: no nameserver specified in $net.nameserver\n",
-				__func__);
+		pr_err("no nameserver specified in $net.nameserver\n");
 		return 0;
 	}
 
-	debug("resolving host %s via nameserver %pI4\n", host, &ip);
+	pr_debug("resolving host %s via nameserver %pI4\n", host, &ip);
 
 	dns_con = net_udp_new(ip, DNS_PORT, dns_handler, NULL);
 	if (IS_ERR(dns_con))
@@ -239,6 +240,8 @@ IPaddr_t resolv(const char *host)
 
 	net_unregister(dns_con);
 
+	pr_debug("host %s is at %pI4\n", host, &dns_ip);
+
 	return dns_ip;
 }
 
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
