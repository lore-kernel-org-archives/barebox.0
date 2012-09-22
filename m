Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-f49.google.com ([209.85.214.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TFRqM-0001fn-RV
 for barebox@lists.infradead.org; Sat, 22 Sep 2012 15:42:11 +0000
Received: by bkcji2 with SMTP id ji2so2144010bkc.36
 for <barebox@lists.infradead.org>; Sat, 22 Sep 2012 08:42:08 -0700 (PDT)
From: Christoph Fritz <chf.fritz@googlemail.com>
In-Reply-To: <20120922114346.GT26553@game.jcrosoft.org>
References: <1348311530.3917.5.camel@mars>
 <20120922114346.GT26553@game.jcrosoft.org>
Date: Sat, 22 Sep 2012 17:41:57 +0200
Message-ID: <1348328517.25235.5.camel@mars>
Mime-Version: 1.0
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
Subject: [PATCH 1/2][v2] net: add nameserver IPs to kernel-parameter ip=
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

Kernel-parameter "ip=" is used to assign network configuration.
With linux kernel 3.7 it is also possible to set nameserver IPs.

This patch adds two new variables (nameserver0 and nameserver1) to
barebox's $net configuration.

Signed-off-by: Christoph Fritz <chf.fritz@googlemail.com>
---
 net/dhcp.c |    2 +-
 net/dns.c  |    4 ++--
 net/net.c  |   18 +++++++++++++++++-
 3 files changed, 20 insertions(+), 4 deletions(-)

diff --git a/net/dhcp.c b/net/dhcp.c
index 768255e..118a5a6 100644
--- a/net/dhcp.c
+++ b/net/dhcp.c
@@ -211,7 +211,7 @@ struct dhcp_opt dhcp_options[] = {
 	}, {
 		.option = 6,
 		.handle = env_ip_handle,
-		.barebox_var_name = "net.nameserver",
+		.barebox_var_name = "net.nameserver0",
 	}, {
 		.option = 12,
 		.copy_only_if_valid = 1,
diff --git a/net/dns.c b/net/dns.c
index eb96c57..e832f97 100644
--- a/net/dns.c
+++ b/net/dns.c
@@ -206,9 +206,9 @@ IPaddr_t resolv(char *host)
 
 	dns_state = STATE_INIT;
 
-	ns = getenv("net.nameserver");
+	ns = getenv("net.nameserver0");
 	if (!ns || !*ns) {
-		printk("%s: no nameserver specified in $net.nameserver\n",
+		printk("%s: no nameserver specified in $net.nameserver0\n",
 				__func__);
 		return 0;
 	}
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
