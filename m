Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-f41.google.com ([74.125.82.41])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TFl2R-000644-Pv
 for barebox@lists.infradead.org; Sun, 23 Sep 2012 12:11:56 +0000
Received: by wgbds1 with SMTP id ds1so2048649wgb.0
 for <barebox@lists.infradead.org>; Sun, 23 Sep 2012 05:11:53 -0700 (PDT)
Date: Sun, 23 Sep 2012 14:11:39 +0200
From: Christoph Fritz <chf.fritz@googlemail.com>
Message-ID: <20120923121139.GA10871@mars>
References: <1348328517.25235.5.camel@mars>
 <1348338458-30735-1-git-send-email-plagnioj@jcrosoft.com>
 <1348341957.24868.6.camel@mars>
 <20120922201637.GZ26553@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120922201637.GZ26553@game.jcrosoft.org>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] net: add multiple nameserver support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>, Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Today limit it to 2

Update dhcp support as option 6 allow to get n nameserver
If more than 2 nameserver are provided by the DHCP server ignore them.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Signed-off-by: Christoph Fritz <chf.fritz@googlemail.com>
---
 net/dhcp.c |   24 +++++++++++++++++++-----
 net/dns.c  |   19 +++++++++++++++----
 net/net.c  |   18 +++++++++++++++++-
 3 files changed, 51 insertions(+), 10 deletions(-)

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
index 3ac098f..171e644 100644
--- a/net/net.c
+++ b/net/net.c
@@ -669,6 +669,21 @@ static struct device_d net_device = {
 	.id = DEVICE_ID_SINGLE,
 };
 
+static int net_set_namesrv(struct device_d *dev, struct param_d *param, const char *val)
+{
+	IPaddr_t ip;
+
+	if (!val)
+		return -EINVAL;
+
+	if (string_to_ip(val, &ip))
+		return -EINVAL;
+
+	dev_param_set_generic(dev, param, val);
+
+	return 0;
+}
+
 static int net_init(void)
 {
 	int i;
@@ -677,7 +692,8 @@ static int net_init(void)
 		NetRxPackets[i] = net_alloc_packet();
 
 	register_device(&net_device);
-	dev_add_param(&net_device, "nameserver", NULL, NULL, 0);
+	dev_add_param(&net_device, "nameserver0", net_set_namesrv, NULL, 0);
+	dev_add_param(&net_device, "nameserver1", net_set_namesrv, NULL, 0);
 	dev_add_param(&net_device, "domainname", NULL, NULL, 0);
 
 	return 0;
-- 
1.7.2.5



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
