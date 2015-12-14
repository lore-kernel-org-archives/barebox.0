Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a8QZa-0008Kb-GH
 for barebox@lists.infradead.org; Mon, 14 Dec 2015 10:41:45 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 14 Dec 2015 11:41:14 +0100
Message-Id: <1450089674-25721-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1450089674-25721-1-git-send-email-s.hauer@pengutronix.de>
References: <1450089674-25721-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/4] net: resolv: Make argument const
To: Barebox List <barebox@lists.infradead.org>

resolv() is not allowed to change the hostname argument, make it const.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/net.h | 4 ++--
 net/dns.c     | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/include/net.h b/include/net.h
index 2a37a43..13e335a 100644
--- a/include/net.h
+++ b/include/net.h
@@ -315,9 +315,9 @@ int string_to_ethaddr(const char *str, u8 enetaddr[6]);
 void ethaddr_to_string(const u8 enetaddr[6], char *str);
 
 #ifdef CONFIG_NET_RESOLV
-IPaddr_t resolv(char *host);
+IPaddr_t resolv(const char *host);
 #else
-static inline IPaddr_t resolv(char *host)
+static inline IPaddr_t resolv(const char *host)
 {
 	IPaddr_t ip = 0;
 	string_to_ip(host, &ip);
diff --git a/net/dns.c b/net/dns.c
index 0e16ea2..5488e9f 100644
--- a/net/dns.c
+++ b/net/dns.c
@@ -59,7 +59,7 @@ static uint64_t dns_timer_start;
 static int dns_state;
 static IPaddr_t dns_ip;
 
-static int dns_send(char *name)
+static int dns_send(const char *name)
 {
 	int ret;
 	struct header *header;
@@ -199,7 +199,7 @@ static void dns_handler(void *ctx, char *packet, unsigned len)
 		net_eth_to_udplen(packet));
 }
 
-IPaddr_t resolv(char *host)
+IPaddr_t resolv(const char *host)
 {
 	IPaddr_t ip;
 	const char *ns;
-- 
2.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
