Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eI96c-0008Jh-1Z
 for barebox@lists.infradead.ORG; Fri, 24 Nov 2017 08:13:18 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 24 Nov 2017 09:12:23 +0100
Message-Id: <20171124081237.6830-8-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/21] net: Use a single gateway
To: Barebox List <barebox@lists.infradead.org>

There is not much point in having a network device specific
gateway. If barebox really is part of such a complicated network
in which it needs multiple gateways, then we probably need a
real routing table. Until this happens, a single gateway should
be enough.

This introduces global.net.gateway which holds the gateway ip. The
previously used device specific <ethx>.gateway variables still exist,
but are only aliases for the single gateway.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/net.h |  2 +-
 net/eth.c     |  3 ++-
 net/ifup.c    |  4 +++-
 net/net.c     | 13 +++++++++----
 4 files changed, 15 insertions(+), 7 deletions(-)

diff --git a/include/net.h b/include/net.h
index 7818bd7145..e75f64fe75 100644
--- a/include/net.h
+++ b/include/net.h
@@ -59,7 +59,6 @@ struct eth_device {
 
 	IPaddr_t ipaddr;
 	IPaddr_t netmask;
-	IPaddr_t gateway;
 	char ethaddr[6];
 	char *bootarg;
 };
@@ -221,6 +220,7 @@ void net_set_nameserver(IPaddr_t ip);
 void net_set_domainname(const char *name);
 IPaddr_t net_get_ip(void);
 IPaddr_t net_get_serverip(void);
+IPaddr_t net_get_gateway(void);
 IPaddr_t net_get_nameserver(void);
 const char *net_get_domainname(void);
 
diff --git a/net/eth.c b/net/eth.c
index 74666bbf22..6dae6b9feb 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -349,6 +349,7 @@ late_initcall(eth_register_of_fixup);
 #endif
 
 extern IPaddr_t net_serverip;
+extern IPaddr_t net_gateway;
 
 int eth_register(struct eth_device *edev)
 {
@@ -382,7 +383,7 @@ int eth_register(struct eth_device *edev)
 
 	dev_add_param_ip(dev, "ipaddr", NULL, NULL, &edev->ipaddr, edev);
 	dev_add_param_ip(dev, "serverip", NULL, NULL, &net_serverip, edev);
-	dev_add_param_ip(dev, "gateway", NULL, NULL, &edev->gateway, edev);
+	dev_add_param_ip(dev, "gateway", NULL, NULL, &net_gateway, edev);
 	dev_add_param_ip(dev, "netmask", NULL, NULL, &edev->netmask, edev);
 	dev_add_param_mac(dev, "ethaddr", eth_param_set_ethaddr, NULL,
 			edev->ethaddr, edev);
diff --git a/net/ifup.c b/net/ifup.c
index 1e14b0f61c..70ecf9c717 100644
--- a/net/ifup.c
+++ b/net/ifup.c
@@ -113,6 +113,7 @@ int ifup(const char *name, unsigned flags)
 	} else if (!strcmp(ip, "static")) {
 		char *bootarg;
 		IPaddr_t serverip;
+		IPaddr_t gateway;
 
 		for (i = 0; i < ARRAY_SIZE(vars); i++) {
 			ret = eth_set_param(dev, vars[i]);
@@ -121,11 +122,12 @@ int ifup(const char *name, unsigned flags)
 		}
 
 		serverip = net_get_serverip();
+		gateway = net_get_gateway();
 
 		bootarg = basprintf("ip=%pI4:%pI4:%pI4:%pI4:::",
 				&edev->ipaddr,
 				&serverip,
-				&edev->gateway,
+				&gateway,
 				&edev->netmask);
 		dev_set_param(dev, "linux.bootargs", bootarg);
 		free(bootarg);
diff --git a/net/net.c b/net/net.c
index 28aeb4417a..5f9535fc40 100644
--- a/net/net.c
+++ b/net/net.c
@@ -42,6 +42,7 @@ unsigned char *NetRxPackets[PKTBUFSRX]; /* Receive packets		*/
 static unsigned int net_ip_id;
 
 IPaddr_t net_serverip;
+IPaddr_t net_gateway;
 static IPaddr_t net_nameserver;
 static char *net_domainname;
 
@@ -181,10 +182,10 @@ static int arp_request(IPaddr_t dest, unsigned char *ether)
 	memset(arp->ar_data + 10, 0, 6);	/* dest ET addr = 0     */
 
 	if ((dest & edev->netmask) != (edev->ipaddr & edev->netmask)) {
-		if (!edev->gateway)
+		if (!net_gateway)
 			arp_wait_ip = dest;
 		else
-			arp_wait_ip = edev->gateway;
+			arp_wait_ip = net_gateway;
 	} else {
 		arp_wait_ip = dest;
 	}
@@ -277,9 +278,12 @@ void net_set_netmask(IPaddr_t nm)
 
 void net_set_gateway(IPaddr_t gw)
 {
-	struct eth_device *edev = eth_get_current();
+	net_gateway = gw;
+}
 
-	edev->gateway = gw;
+IPaddr_t net_get_gateway(void)
+{
+	return net_gateway;
 }
 
 static LIST_HEAD(connection_list);
@@ -607,6 +611,7 @@ static int net_init(void)
 	globalvar_add_simple_ip("net.nameserver", &net_nameserver);
 	globalvar_add_simple_string("net.domainname", &net_domainname);
 	globalvar_add_simple_ip("net.server", &net_serverip);
+	globalvar_add_simple_ip("net.gateway", &net_gateway);
 
 	return 0;
 }
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
