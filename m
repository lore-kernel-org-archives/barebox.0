Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SJQRV-0003kw-MS
 for barebox@lists.infradead.org; Sun, 15 Apr 2012 14:28:42 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 15 Apr 2012 16:28:29 +0200
Message-Id: <1334500111-26382-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1334500111-26382-1-git-send-email-s.hauer@pengutronix.de>
References: <1334500111-26382-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/8] dns: use global nameserver/domainname
To: barebox@lists.infradead.org

nameserver and domainname are now globally available in the 'net' device.
use these variables.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 net/dns.c |    6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/net/dns.c b/net/dns.c
index 0d6c337..e13d654 100644
--- a/net/dns.c
+++ b/net/dns.c
@@ -77,7 +77,7 @@ static int dns_send(char *name)
 	header->nauth    = 0;
 	header->nother   = 0;
 
-	domain = getenv("domainname");
+	domain = getenv("net.domainname");
 
 	if (!strchr(name, '.') && domain && *domain)
 		fullname = asprintf(".%s.%s.", name, domain);
@@ -205,11 +205,11 @@ IPaddr_t resolv(char *host)
 
 	dns_state = STATE_INIT;
 
-	ip = getenv_ip_dns("nameserver", 0);
+	ip = getenv_ip("net.nameserver");
 	if (!ip)
 		return 0;
 
-	debug("resolving host %s via nameserver %s\n", host, getenv("nameserver"));
+	debug("resolving host %s via nameserver %s\n", host, ip_to_string(ip));
 
 	dns_con = net_udp_new(ip, DNS_PORT, dns_handler, NULL);
 	if (IS_ERR(dns_con))
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
