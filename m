Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SJQRV-0003kv-MN
 for barebox@lists.infradead.org; Sun, 15 Apr 2012 14:28:42 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 15 Apr 2012 16:28:31 +0200
Message-Id: <1334500111-26382-9-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 8/8] net: remove unused getenv_ip_dns
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/net.h |    6 +-----
 net/net.c     |    5 +----
 2 files changed, 2 insertions(+), 9 deletions(-)

diff --git a/include/net.h b/include/net.h
index 01e4b22..25d7b6e 100644
--- a/include/net.h
+++ b/include/net.h
@@ -279,11 +279,7 @@ char *ip_to_string (IPaddr_t x);
 /* Convert a string to ip address */
 int string_to_ip(const char *s, IPaddr_t *ip);
 
-IPaddr_t getenv_ip_dns(const char *name, int dns);
-static inline IPaddr_t getenv_ip(const char *name)
-{
-	return getenv_ip_dns(name, 0);
-}
+IPaddr_t getenv_ip(const char *name);
 int setenv_ip(const char *name, IPaddr_t ip);
 
 int string_to_ethaddr(const char *str, char *enetaddr);
diff --git a/net/net.c b/net/net.c
index 6e2c14b..783f3d1 100644
--- a/net/net.c
+++ b/net/net.c
@@ -129,7 +129,7 @@ int string_to_ip(const char *s, IPaddr_t *ip)
 	return 0;
 }
 
-IPaddr_t getenv_ip_dns(const char *name, int dns)
+IPaddr_t getenv_ip(const char *name)
 {
 	IPaddr_t ip;
 	const char *var = getenv(name);
@@ -140,9 +140,6 @@ IPaddr_t getenv_ip_dns(const char *name, int dns)
 	if (!string_to_ip(var, &ip))
 		return ip;
 
-	if (!dns)
-		return 0;
-
 	return resolv((char*)var);
 }
 
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
