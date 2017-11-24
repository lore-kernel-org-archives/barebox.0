Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eI96g-0008K7-Mf
 for barebox@lists.infradead.ORG; Fri, 24 Nov 2017 08:13:26 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 24 Nov 2017 09:12:21 +0100
Message-Id: <20171124081237.6830-6-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/21] net: introduce global.net.server
To: Barebox List <barebox@lists.infradead.org>

The server to use is independent of the network device, there is
not much point to make the server specific to a network device.

This introduces global.net.server as the serverip which is
used as standard NFS/tftp server. The previously used eth
device specific parameters still exist, but are only aliases
for the global single variable.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/net.h |  1 -
 net/eth.c     |  4 +++-
 net/ifup.c    |  7 ++++++-
 net/net.c     | 11 +++++------
 4 files changed, 14 insertions(+), 9 deletions(-)

diff --git a/include/net.h b/include/net.h
index 0fcde2f0b3..b3e44c7baa 100644
--- a/include/net.h
+++ b/include/net.h
@@ -58,7 +58,6 @@ struct eth_device {
 	struct list_head list;
 
 	IPaddr_t ipaddr;
-	IPaddr_t serverip;
 	IPaddr_t netmask;
 	IPaddr_t gateway;
 	char ethaddr[6];
diff --git a/net/eth.c b/net/eth.c
index dac2400b81..74666bbf22 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -348,6 +348,8 @@ static int eth_register_of_fixup(void)
 late_initcall(eth_register_of_fixup);
 #endif
 
+extern IPaddr_t net_serverip;
+
 int eth_register(struct eth_device *edev)
 {
 	struct device_d *dev = &edev->dev;
@@ -379,7 +381,7 @@ int eth_register(struct eth_device *edev)
 	edev->devname = xstrdup(dev_name(&edev->dev));
 
 	dev_add_param_ip(dev, "ipaddr", NULL, NULL, &edev->ipaddr, edev);
-	dev_add_param_ip(dev, "serverip", NULL, NULL, &edev->serverip, edev);
+	dev_add_param_ip(dev, "serverip", NULL, NULL, &net_serverip, edev);
 	dev_add_param_ip(dev, "gateway", NULL, NULL, &edev->gateway, edev);
 	dev_add_param_ip(dev, "netmask", NULL, NULL, &edev->netmask, edev);
 	dev_add_param_mac(dev, "ethaddr", eth_param_set_ethaddr, NULL,
diff --git a/net/ifup.c b/net/ifup.c
index 5113d13832..2b13a9f140 100644
--- a/net/ifup.c
+++ b/net/ifup.c
@@ -109,14 +109,19 @@ int ifup(const char *name, unsigned flags)
 		dev_set_param(dev, "linux.bootargs", "ip=dhcp");
 	} else if (!strcmp(ip, "static")) {
 		char *bootarg;
+		IPaddr_t serverip;
+
 		for (i = 0; i < ARRAY_SIZE(vars); i++) {
 			ret = eth_set_param(dev, vars[i]);
 			if (ret)
 				goto out;
 		}
+
+		serverip = net_get_serverip();
+
 		bootarg = basprintf("ip=%pI4:%pI4:%pI4:%pI4:::",
 				&edev->ipaddr,
-				&edev->serverip,
+				&serverip,
 				&edev->gateway,
 				&edev->netmask);
 		dev_set_param(dev, "linux.bootargs", bootarg);
diff --git a/net/net.c b/net/net.c
index 8cb905c66b..552897e6b8 100644
--- a/net/net.c
+++ b/net/net.c
@@ -41,6 +41,7 @@
 unsigned char *NetRxPackets[PKTBUFSRX]; /* Receive packets		*/
 static unsigned int net_ip_id;
 
+IPaddr_t net_serverip;
 static IPaddr_t net_nameserver;
 static char *net_domainname;
 
@@ -242,16 +243,12 @@ static uint16_t net_udp_new_localport(void)
 
 IPaddr_t net_get_serverip(void)
 {
-	struct eth_device *edev = eth_get_current();
-
-	return edev->serverip;
+	return net_serverip;
 }
 
 void net_set_serverip(IPaddr_t ip)
 {
-	struct eth_device *edev = eth_get_current();
-
-	edev->serverip = ip;
+	net_serverip = ip;
 }
 
 void net_set_ip(IPaddr_t ip)
@@ -606,6 +603,7 @@ static int net_init(void)
 
 	globalvar_add_simple_ip("net.nameserver", &net_nameserver);
 	globalvar_add_simple_string("net.domainname", &net_domainname);
+	globalvar_add_simple_ip("net.server", &net_serverip);
 
 	return 0;
 }
@@ -614,3 +612,4 @@ postcore_initcall(net_init);
 
 BAREBOX_MAGICVAR_NAMED(global_net_nameserver, global.net.nameserver, "The DNS server used for resolving host names");
 BAREBOX_MAGICVAR_NAMED(global_net_domainname, global.net.domainname, "Domain name used for DNS requests");
+BAREBOX_MAGICVAR_NAMED(global_net_server, global.net.server, "Standard server used for NFS/TFTP");
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
