Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SUY4W-0005xe-G2
 for barebox@lists.infradead.org; Wed, 16 May 2012 06:50:58 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 16 May 2012 08:50:50 +0200
Message-Id: <1337151050-5455-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] dns: fix recursive loop
To: barebox@lists.infradead.org

resolv() uses getenv_ip() which in turn calls resolv(). Fix
this inifinite loop by not using getenv_ip directly.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 net/dns.c |   11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/net/dns.c b/net/dns.c
index e13d654..eb96c57 100644
--- a/net/dns.c
+++ b/net/dns.c
@@ -197,6 +197,7 @@ static void dns_handler(void *ctx, char *packet, unsigned len)
 IPaddr_t resolv(char *host)
 {
 	IPaddr_t ip;
+	const char *ns;
 
 	if (!string_to_ip(host, &ip))
 		return ip;
@@ -205,8 +206,14 @@ IPaddr_t resolv(char *host)
 
 	dns_state = STATE_INIT;
 
-	ip = getenv_ip("net.nameserver");
-	if (!ip)
+	ns = getenv("net.nameserver");
+	if (!ns || !*ns) {
+		printk("%s: no nameserver specified in $net.nameserver\n",
+				__func__);
+		return 0;
+	}
+
+	if (string_to_ip(ns, &ip))
 		return 0;
 
 	debug("resolving host %s via nameserver %s\n", host, ip_to_string(ip));
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
