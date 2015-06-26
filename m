Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Z8Z2w-0001Yk-QH
 for barebox@lists.infradead.org; Fri, 26 Jun 2015 19:12:20 +0000
Received: from tellur.intern.lynxeye.de (p57B5F16F.dip0.t-ipconnect.de
 [87.181.241.111]) by lynxeye.de (Postfix) with ESMTPA id A7D3D26C2003
 for <barebox@lists.infradead.org>; Fri, 26 Jun 2015 20:59:27 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Fri, 26 Jun 2015 20:59:22 +0200
Message-Id: <1435345163-16565-3-git-send-email-dev@lynxeye.de>
In-Reply-To: <1435345163-16565-1-git-send-email-dev@lynxeye.de>
References: <1435345163-16565-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 3/4] parameter: always build MAC dev param functions
To: barebox@lists.infradead.org

The MAC dev parameter functions would only be built when CONFIG_NET is
set. This was okay as long as only network devices were using MAC dev
params. This has changed with the merge of the state framework, so
always compile them in if CONFIG_PARAMETER is set.

This moves some trivial functions to the header, to avoid the need to
also build net/eth.c in that case.

Fixes:
common/built-in.o: In function `state_mac_create':
common/state.c:387: undefined reference to `dev_add_param_mac'

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 include/net.h   | 30 ++++++++++++++++++++++++++++--
 lib/parameter.c |  2 --
 net/net.c       | 29 -----------------------------
 3 files changed, 28 insertions(+), 33 deletions(-)

diff --git a/include/net.h b/include/net.h
index 364011b..245d2b5 100644
--- a/include/net.h
+++ b/include/net.h
@@ -310,8 +310,34 @@ int string_to_ip(const char *s, IPaddr_t *ip);
 IPaddr_t getenv_ip(const char *name);
 int setenv_ip(const char *name, IPaddr_t ip);
 
-int string_to_ethaddr(const char *str, u8 enetaddr[6]);
-void ethaddr_to_string(const u8 enetaddr[6], char *str);
+static inline int string_to_ethaddr(const char *str, u8 enetaddr[6])
+{
+	int reg;
+	char *e;
+
+	if (!str || strlen(str) != 17) {
+		memset(enetaddr, 0, 6);
+		return -EINVAL;
+	}
+
+	if (str[2] != ':' || str[5] != ':' || str[8] != ':' ||
+	    str[11] != ':' || str[14] != ':')
+		return -EINVAL;
+
+	for (reg = 0; reg < 6; ++reg) {
+		enetaddr[reg] = simple_strtoul (str, &e, 16);
+		str = e + 1;
+	}
+
+	return 0;
+}
+
+static inline void ethaddr_to_string(const u8 enetaddr[6], char *str)
+{
+	sprintf(str, "%02x:%02x:%02x:%02x:%02x:%02x",
+		enetaddr[0], enetaddr[1], enetaddr[2], enetaddr[3],
+		enetaddr[4], enetaddr[5]);
+}
 
 #ifdef CONFIG_NET_RESOLV
 IPaddr_t resolv(char *host);
diff --git a/lib/parameter.c b/lib/parameter.c
index 865ad9f..f39b98d 100644
--- a/lib/parameter.c
+++ b/lib/parameter.c
@@ -575,7 +575,6 @@ struct param_d *dev_add_param_llint_ro(struct device_d *dev, const char *name,
 	return &piro->param;
 }
 
-#ifdef CONFIG_NET
 struct param_ip {
 	struct param_d param;
 	IPaddr_t *ip;
@@ -739,7 +738,6 @@ struct param_d *dev_add_param_mac(struct device_d *dev, const char *name,
 
 	return &pm->param;
 }
-#endif
 
 /**
  * dev_remove_param - remove a parameter from a device and free its
diff --git a/net/net.c b/net/net.c
index 07350ad..867ec07 100644
--- a/net/net.c
+++ b/net/net.c
@@ -136,35 +136,6 @@ void print_IPaddr (IPaddr_t x)
 	puts(ip_to_string(x));
 }
 
-int string_to_ethaddr(const char *str, u8 enetaddr[6])
-{
-	int reg;
-	char *e;
-
-        if (!str || strlen(str) != 17) {
-		memset(enetaddr, 0, 6);
-		return -EINVAL;
-	}
-
-        if (str[2] != ':' || str[5] != ':' || str[8] != ':' ||
-                        str[11] != ':' || str[14] != ':')
-                return -EINVAL;
-
-	for (reg = 0; reg < 6; ++reg) {
-		enetaddr[reg] = simple_strtoul (str, &e, 16);
-			str = e + 1;
-	}
-
-	return 0;
-}
-
-void ethaddr_to_string(const u8 enetaddr[6], char *str)
-{
-	sprintf(str, "%02x:%02x:%02x:%02x:%02x:%02x",
-		 enetaddr[0], enetaddr[1], enetaddr[2], enetaddr[3],
-		 enetaddr[4], enetaddr[5]);
-}
-
 static unsigned char *arp_ether;
 static IPaddr_t arp_wait_ip;
 
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
