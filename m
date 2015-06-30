Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x230.google.com ([2a00:1450:4010:c04::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZA3A1-00020e-2c
 for barebox@lists.infradead.org; Tue, 30 Jun 2015 21:33:45 +0000
Received: by lbnk3 with SMTP id k3so1631047lbn.1
 for <barebox@lists.infradead.org>; Tue, 30 Jun 2015 14:33:22 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed,  1 Jul 2015 00:32:54 +0300
Message-Id: <1435699974-20530-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] dns: handle incoming packets in the separate dns_recv()
 function
To: barebox@lists.infradead.org

The separation of incoming packets handling makes it much easier
to run barebox dns client on top of picotcp network stack in the future.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 net/dns.c | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/net/dns.c b/net/dns.c
index 0a8ce8b..0e16ea2 100644
--- a/net/dns.c
+++ b/net/dns.c
@@ -116,9 +116,8 @@ static int dns_send(char *name)
 	return ret;
 }
 
-static void dns_handler(void *ctx, char *packet, unsigned len)
+static void dns_recv(struct header *header, unsigned len)
 {
-	struct header *header;
 	unsigned char *p, *e, *s;
 	u16 type;
 	int found, stop, dlen;
@@ -127,7 +126,6 @@ static void dns_handler(void *ctx, char *packet, unsigned len)
 	debug("%s\n", __func__);
 
 	/* We sent 1 query. We want to see more that 1 answer. */
-	header = (struct header *)net_eth_to_udp_payload(packet);
 	if (ntohs(header->nqueries) != 1)
 		return;
 
@@ -140,7 +138,7 @@ static void dns_handler(void *ctx, char *packet, unsigned len)
 
 	/* Skip host name */
 	s = &header->data[0];
-	e = packet + len;
+	e = ((uint8_t *)header) + len;
 	for (p = s; p < e && *p != '\0'; p++)
 		continue;
 
@@ -194,6 +192,13 @@ static void dns_handler(void *ctx, char *packet, unsigned len)
 	}
 }
 
+static void dns_handler(void *ctx, char *packet, unsigned len)
+{
+	(void)ctx;
+	dns_recv((struct header *)net_eth_to_udp_payload(packet),
+		net_eth_to_udplen(packet));
+}
+
 IPaddr_t resolv(char *host)
 {
 	IPaddr_t ip;
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
