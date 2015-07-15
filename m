Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22d.google.com ([2a00:1450:4010:c04::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZFT4Z-0006Nl-8I
 for barebox@lists.infradead.org; Wed, 15 Jul 2015 20:14:32 +0000
Received: by lbbpo10 with SMTP id po10so31616005lbb.3
 for <barebox@lists.infradead.org>; Wed, 15 Jul 2015 13:14:09 -0700 (PDT)
Received: from localhost.localdomain (ppp79-139-249-41.pppoe.spdop.ru.
 [79.139.249.41])
 by smtp.gmail.com with ESMTPSA id ao8sm531319lac.38.2015.07.15.13.14.08
 for <barebox@lists.infradead.org>
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 15 Jul 2015 13:14:08 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 15 Jul 2015 23:13:44 +0300
Message-Id: <1436991230-14251-7-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1436991230-14251-1-git-send-email-antonynpavlov@gmail.com>
References: <1436991230-14251-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC 06/12] WIP: net/dns: convert to picotcp
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 net/dns.c | 101 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++-----
 1 file changed, 94 insertions(+), 7 deletions(-)

diff --git a/net/dns.c b/net/dns.c
index 0e16ea2..2a35e3b 100644
--- a/net/dns.c
+++ b/net/dns.c
@@ -29,6 +29,10 @@
 #include <environment.h>
 #include <linux/err.h>
 
+#include <pico_socket.h>
+#include <pico_ipv4.h>
+#include <poller.h>
+
 #define DNS_PORT 53
 
 /* http://en.wikipedia.org/wiki/List_of_DNS_record_types */
@@ -59,15 +63,24 @@ static uint64_t dns_timer_start;
 static int dns_state;
 static IPaddr_t dns_ip;
 
+static struct pico_socket *sock;
+static uint8_t *pkt;
+
 static int dns_send(char *name)
 {
 	int ret;
 	struct header *header;
 	enum dns_query_type qtype = DNS_A_RECORD;
-	unsigned char *packet = net_udp_get_payload(dns_con);
+	unsigned char *packet;
 	unsigned char *p, *s, *fullname, *dotptr;
 	const unsigned char *domain;
 
+	if (IS_ENABLED(CONFIG_NET_LEGACY)) {
+		packet = net_udp_get_payload(dns_con);
+	} else if (IS_ENABLED(CONFIG_NET_PICOTCP)) {
+		packet = pkt;
+	}
+
 	/* Prepare DNS packet header */
 	header           = (struct header *)packet;
 	header->tid      = 1;
@@ -109,7 +122,16 @@ static int dns_send(char *name)
 	*p++ = 0;
 	*p++ = 1;				/* Class: inet, 0x0001 */
 
-	ret = net_udp_send(dns_con, p - packet);
+	if (IS_ENABLED(CONFIG_NET_LEGACY)) {
+		ret = net_udp_send(dns_con, p - packet);
+	} else if (IS_ENABLED(CONFIG_NET_PICOTCP)) {
+		uint16_t remote_port;
+
+		remote_port = htons(DNS_PORT);
+		pico_socket_send(sock, pkt, p - packet);
+		/* FIXME */
+		ret = 0;
+	}
 
 	free(fullname);
 
@@ -199,6 +221,44 @@ static void dns_handler(void *ctx, char *packet, unsigned len)
 		net_eth_to_udplen(packet));
 }
 
+static void dns_cb(uint16_t ev, struct pico_socket *sock)
+{
+	union pico_address ep;
+	uint16_t remote_port;
+	int len;
+
+	if (ev == PICO_SOCK_EV_ERR) {
+		printf("              >>>>>> PICO_SOCK_EV_ERR <<<<<<< \n");
+		return;
+	}
+
+	/* FIXME: 1500 */
+	len = pico_socket_recvfrom(sock, pkt, 1500, &ep, &remote_port);
+
+	dns_recv((struct header *)pkt, len);
+}
+
+static struct pico_socket *dns_socket_open(uint16_t localport)
+{
+	struct pico_socket *sock;
+	union pico_address local_address;
+
+	sock = pico_socket_open(PICO_PROTO_IPV4, PICO_PROTO_UDP, dns_cb);
+	if (!sock)
+		return NULL;
+
+	localport = htons(localport);
+
+	/* FIXME: use local_address == PICO_IPV4_INADDR_ANY */
+	memset(&local_address, 0, sizeof(union pico_address));
+	if (pico_socket_bind(sock, &local_address, &localport) < 0) {
+		pico_socket_close(sock);
+		return NULL;
+	}
+
+	return sock;
+}
+
 IPaddr_t resolv(char *host)
 {
 	IPaddr_t ip;
@@ -223,9 +283,26 @@ IPaddr_t resolv(char *host)
 
 	debug("resolving host %s via nameserver %s\n", host, ip_to_string(ip));
 
-	dns_con = net_udp_new(ip, DNS_PORT, dns_handler, NULL);
-	if (IS_ERR(dns_con))
-		return PTR_ERR(dns_con);
+	if (IS_ENABLED(CONFIG_NET_LEGACY)) {
+		dns_con = net_udp_new(ip, DNS_PORT, dns_handler, NULL);
+		if (IS_ERR(dns_con))
+			return PTR_ERR(dns_con);
+	} else if (IS_ENABLED(CONFIG_NET_PICOTCP)) {
+		static union pico_address pico_dns_ip;
+
+		pico_string_to_ipv4(ns, &pico_dns_ip.ip4.addr);
+
+		sock = dns_socket_open(0);
+		if (!sock)
+			return 0;
+
+		if (pico_socket_connect(sock, &pico_dns_ip, htons(DNS_PORT)) < 0)
+			return 0;
+
+		/* FIXME: 2048 */
+		pkt = xzalloc(2048);
+	}
+
 	dns_timer_start = get_time_ns();
 	dns_send(host);
 
@@ -233,7 +310,13 @@ IPaddr_t resolv(char *host)
 		if (ctrlc()) {
 			break;
 		}
-		net_poll();
+
+		if (IS_ENABLED(CONFIG_NET_LEGACY)) {
+			net_poll();
+		} else if (IS_ENABLED(CONFIG_NET_PICOTCP)) {
+			poller_call();
+		}
+
 		if (is_timeout(dns_timer_start, SECOND)) {
 			dns_timer_start = get_time_ns();
 			printf("T ");
@@ -241,7 +324,11 @@ IPaddr_t resolv(char *host)
 		}
 	}
 
-	net_unregister(dns_con);
+	if (IS_ENABLED(CONFIG_NET_LEGACY)) {
+		net_unregister(dns_con);
+	} else if (IS_ENABLED(CONFIG_NET_PICOTCP)) {
+		free(pkt);
+	}
 
 	return dns_ip;
 }
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
