Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eI96c-0008Jk-1S
 for barebox@lists.infradead.ORG; Fri, 24 Nov 2017 08:13:18 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 24 Nov 2017 09:12:19 +0100
Message-Id: <20171124081237.6830-4-s.hauer@pengutronix.de>
In-Reply-To: <20171124081237.6830-1-s.hauer@pengutronix.de>
References: <20171124081237.6830-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/21] net: Make domainname and nameserver globalvars
To: Barebox List <barebox@lists.infradead.org>

Register domainname and nameserver as globalvars rather than attaching
them to a dedicated net device. the global device already exists and
already contains much of the barebox configuration, so no need to add
an extra device for network config.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 net/dhcp.c |  4 ++--
 net/dns.c  |  4 ++--
 net/net.c  | 25 ++++++++++---------------
 3 files changed, 14 insertions(+), 19 deletions(-)

diff --git a/net/dhcp.c b/net/dhcp.c
index c5386fe942..dfa593a7d1 100644
--- a/net/dhcp.c
+++ b/net/dhcp.c
@@ -242,7 +242,7 @@ struct dhcp_opt dhcp_options[] = {
 	}, {
 		.option = 6,
 		.handle = env_ip_handle,
-		.barebox_var_name = "net.nameserver",
+		.barebox_var_name = "global.net.nameserver",
 	}, {
 		.option = DHCP_HOSTNAME,
 		.copy_only_if_valid = 1,
@@ -252,7 +252,7 @@ struct dhcp_opt dhcp_options[] = {
 	}, {
 		.option = 15,
 		.handle = env_str_handle,
-		.barebox_var_name = "net.domainname",
+		.barebox_var_name = "global.net.domainname",
 	}, {
 		.option = 17,
 		.handle = env_str_handle,
diff --git a/net/dns.c b/net/dns.c
index 700c6b0259..69b8a24861 100644
--- a/net/dns.c
+++ b/net/dns.c
@@ -77,7 +77,7 @@ static int dns_send(const char *name)
 	header->nauth    = 0;
 	header->nother   = 0;
 
-	domain = getenv("net.domainname");
+	domain = getenv("global.net.domainname");
 
 	if (!strchr(name, '.') && domain && *domain)
 		fullname = basprintf(".%s.%s.", name, domain);
@@ -211,7 +211,7 @@ IPaddr_t resolv(const char *host)
 
 	dns_state = STATE_INIT;
 
-	ns = getenv("net.nameserver");
+	ns = getenv("global.net.nameserver");
 	if (!ns || !*ns) {
 		printk("%s: no nameserver specified in $net.nameserver\n",
 				__func__);
diff --git a/net/net.c b/net/net.c
index 19b081f6cf..ea302ce0b0 100644
--- a/net/net.c
+++ b/net/net.c
@@ -33,12 +33,17 @@
 #include <errno.h>
 #include <malloc.h>
 #include <init.h>
+#include <globalvar.h>
+#include <magicvar.h>
 #include <linux/ctype.h>
 #include <linux/err.h>
 
 unsigned char *NetRxPackets[PKTBUFSRX]; /* Receive packets		*/
 static unsigned int net_ip_id;
 
+static IPaddr_t net_nameserver;
+static char *net_domainname;
+
 int net_checksum_ok(unsigned char *ptr, int len)
 {
 	return net_checksum(ptr, len) == 0xffff;
@@ -568,14 +573,6 @@ out:
 	return ret;
 }
 
-static struct device_d net_device = {
-	.name = "net",
-	.id = DEVICE_ID_SINGLE,
-};
-
-static char *net_nameserver;
-static char *net_domainname;
-
 static int net_init(void)
 {
 	int i;
@@ -583,15 +580,13 @@ static int net_init(void)
 	for (i = 0; i < PKTBUFSRX; i++)
 		NetRxPackets[i] = net_alloc_packet();
 
-	register_device(&net_device);
-	net_nameserver = xstrdup("");
-	dev_add_param_string(&net_device, "nameserver", NULL, NULL,
-			     &net_nameserver, NULL);
-	net_domainname = xstrdup("");
-	dev_add_param_string(&net_device, "domainname", NULL, NULL,
-			     &net_domainname, NULL);
+	globalvar_add_simple_ip("net.nameserver", &net_nameserver);
+	globalvar_add_simple_string("net.domainname", &net_domainname);
 
 	return 0;
 }
 
 postcore_initcall(net_init);
+
+BAREBOX_MAGICVAR_NAMED(global_net_nameserver, global.net.nameserver, "The DNS server used for resolving host names");
+BAREBOX_MAGICVAR_NAMED(global_net_domainname, global.net.domainname, "Domain name used for DNS requests");
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
