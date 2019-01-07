Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ggPWF-0001AH-Pr
 for barebox@lists.infradead.org; Mon, 07 Jan 2019 07:40:28 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  7 Jan 2019 08:40:05 +0100
Message-Id: <20190107074008.3797-7-s.hauer@pengutronix.de>
In-Reply-To: <20190107074008.3797-1-s.hauer@pengutronix.de>
References: <20190107074008.3797-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 6/9] net: Allow hostnames for global.net.server
To: Barebox List <barebox@lists.infradead.org>

Additional to IPv4 addresses add support for global.net.server being a
hostname.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Documentation/user/networking.rst |  4 ++--
 net/eth.c                         |  4 ++--
 net/net.c                         | 19 ++++++++++++++-----
 3 files changed, 18 insertions(+), 9 deletions(-)

diff --git a/Documentation/user/networking.rst b/Documentation/user/networking.rst
index 6bb99b0da2..9231ebde56 100644
--- a/Documentation/user/networking.rst
+++ b/Documentation/user/networking.rst
@@ -45,8 +45,8 @@ device:
 |                              |              | any directly visible subnet. May be set        |
 |                              |              | automatically by DHCP.                         |
 +------------------------------+--------------+------------------------------------------------+
-| global.net.server            | ipv4 host    | The default server address. If unspecified, may|
-|                              |              | be set by DHCP                                 |
+| global.net.server            | hostname or  | The default server. If unspecified, may be set |
+|                              | ipv4 address | by DHCP                                        |
 +------------------------------+--------------+------------------------------------------------+
 | global.net.nameserver        | ipv4 address | The DNS server used for resolving host names.  |
 |                              |              | May be set by DHCP                             |
diff --git a/net/eth.c b/net/eth.c
index b3e81247c2..53d24baa16 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -344,7 +344,7 @@ static int eth_register_of_fixup(void)
 late_initcall(eth_register_of_fixup);
 #endif
 
-extern IPaddr_t net_serverip;
+extern char *net_server;
 extern IPaddr_t net_gateway;
 
 static const char * const eth_mode_names[] = {
@@ -384,7 +384,7 @@ int eth_register(struct eth_device *edev)
 	edev->devname = xstrdup(dev_name(&edev->dev));
 
 	dev_add_param_ip(dev, "ipaddr", NULL, NULL, &edev->ipaddr, edev);
-	dev_add_param_ip(dev, "serverip", NULL, NULL, &net_serverip, edev);
+	dev_add_param_string(dev, "serverip", NULL, NULL, &net_server, edev);
 	dev_add_param_ip(dev, "gateway", NULL, NULL, &net_gateway, edev);
 	dev_add_param_ip(dev, "netmask", NULL, NULL, &edev->netmask, edev);
 	dev_add_param_mac(dev, "ethaddr", eth_param_set_ethaddr, NULL,
diff --git a/net/net.c b/net/net.c
index f1a7df0298..0d889ddb52 100644
--- a/net/net.c
+++ b/net/net.c
@@ -44,7 +44,7 @@
 unsigned char *NetRxPackets[PKTBUFSRX]; /* Receive packets		*/
 static unsigned int net_ip_id;
 
-IPaddr_t net_serverip;
+char *net_server;
 IPaddr_t net_gateway;
 static IPaddr_t net_nameserver;
 static char *net_domainname;
@@ -271,17 +271,26 @@ static uint16_t net_udp_new_localport(void)
 
 IPaddr_t net_get_serverip(void)
 {
-	return net_serverip;
+	IPaddr_t ip;
+	int ret;
+
+	ret = resolv(net_server, &ip);
+	if (ret)
+		return 0;
+
+	return ip;
 }
 
 void net_set_serverip(IPaddr_t ip)
 {
-	net_serverip = ip;
+	free(net_server);
+
+	net_server = xasprintf("%pI4", &ip);
 }
 
 void net_set_serverip_empty(IPaddr_t ip)
 {
-	if (net_serverip)
+	if (net_server && *net_server)
 		return;
 
 	net_set_serverip(ip);
@@ -647,7 +656,7 @@ static int net_init(void)
 
 	globalvar_add_simple_ip("net.nameserver", &net_nameserver);
 	globalvar_add_simple_string("net.domainname", &net_domainname);
-	globalvar_add_simple_ip("net.server", &net_serverip);
+	globalvar_add_simple_string("net.server", &net_server);
 	globalvar_add_simple_ip("net.gateway", &net_gateway);
 
 	return 0;
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
