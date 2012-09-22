Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo5.mail-out.ovh.net ([188.165.57.91]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TFUSx-0008BC-Af
 for barebox@lists.infradead.org; Sat, 22 Sep 2012 18:30:14 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id EE018FF9FA9
 for <barebox@lists.infradead.org>; Sat, 22 Sep 2012 20:36:04 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat, 22 Sep 2012 20:27:38 +0200
Message-Id: <1348338458-30735-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1348328517.25235.5.camel@mars>
References: <1348328517.25235.5.camel@mars>
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
Subject: [PATCH 1/1] net: add multiple nameserver support
To: barebox@lists.infradead.org

Today limit it to 2

Update dhcp support as option 6 allow to get n nameserver
If more than 2 nameserver are provided by the DHCP server ignore them.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 net/dhcp.c |   22 ++++++++++++++++++----
 net/dns.c  |   19 +++++++++++++++----
 net/net.c  |    3 ++-
 3 files changed, 35 insertions(+), 9 deletions(-)

diff --git a/net/dhcp.c b/net/dhcp.c
index 768255e..91d436f 100644
--- a/net/dhcp.c
+++ b/net/dhcp.c
@@ -137,12 +137,24 @@ static void gateway_handle(struct dhcp_opt *opt, unsigned char *popt, int optlen
 	net_set_gateway(ip);
 }
 
-static void env_ip_handle(struct dhcp_opt *opt, unsigned char *popt, int optlen)
+static void env_ip_multiple_handle(struct dhcp_opt *opt, unsigned char *popt, int optlen)
 {
+	char *var_name;
 	IPaddr_t ip;
+	int i;
+	int max = (int)opt->data;
 
-	ip = net_read_ip(popt);
-	setenv_ip(opt->barebox_var_name, ip);
+	for (i = 0 ; optlen > 0 && i < max; i++) {
+		var_name = asprintf("%s%d", opt->barebox_var_name, i);
+		if (!var_name)
+			return;
+
+		ip = net_read_ip(popt);
+		setenv_ip(var_name, ip);
+		optlen -= 4;
+		popt += 4;
+		free(var_name);
+	}
 }
 
 static void env_str_handle(struct dhcp_opt *opt, unsigned char *popt, int optlen)
@@ -210,8 +222,10 @@ struct dhcp_opt dhcp_options[] = {
 		.handle = gateway_handle,
 	}, {
 		.option = 6,
-		.handle = env_ip_handle,
+		.handle = env_ip_multiple_handle,
 		.barebox_var_name = "net.nameserver",
+		/* max today supported, ignore if more */
+		.data = (void*)2,
 	}, {
 		.option = 12,
 		.copy_only_if_valid = 1,
diff --git a/net/dns.c b/net/dns.c
index eb96c57..5cd29a5 100644
--- a/net/dns.c
+++ b/net/dns.c
@@ -194,7 +194,7 @@ static void dns_handler(void *ctx, char *packet, unsigned len)
 	}
 }
 
-IPaddr_t resolv(char *host)
+static IPaddr_t resolv_on(char *host, const char* nameserver)
 {
 	IPaddr_t ip;
 	const char *ns;
@@ -206,10 +206,10 @@ IPaddr_t resolv(char *host)
 
 	dns_state = STATE_INIT;
 
-	ns = getenv("net.nameserver");
+	ns = getenv(nameserver);
 	if (!ns || !*ns) {
-		printk("%s: no nameserver specified in $net.nameserver\n",
-				__func__);
+		printk("%s: no nameserver specified in $%s\n",
+				__func__, nameserver);
 		return 0;
 	}
 
@@ -241,6 +241,17 @@ IPaddr_t resolv(char *host)
 	return dns_ip;
 }
 
+IPaddr_t resolv(char *host)
+{
+	IPaddr_t ip;
+
+	ip = resolv_on(host, "net.nameserver0");
+	if (ip == 0)
+		ip = resolv_on(host, "net.nameserver1");
+
+	return ip;
+}
+
 static int do_host(int argc, char *argv[])
 {
 	IPaddr_t ip;
diff --git a/net/net.c b/net/net.c
index 3ac098f..edadf51 100644
--- a/net/net.c
+++ b/net/net.c
@@ -677,7 +677,8 @@ static int net_init(void)
 		NetRxPackets[i] = net_alloc_packet();
 
 	register_device(&net_device);
-	dev_add_param(&net_device, "nameserver", NULL, NULL, 0);
+	dev_add_param(&net_device, "nameserver0", NULL, NULL, 0);
+	dev_add_param(&net_device, "nameserver1", NULL, NULL, 0);
 	dev_add_param(&net_device, "domainname", NULL, NULL, 0);
 
 	return 0;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
