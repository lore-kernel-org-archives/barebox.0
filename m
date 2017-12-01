Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.4.pengutronix.de ([92.198.50.35])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eKjQ5-0003ue-S2
 for barebox@lists.infradead.ORG; Fri, 01 Dec 2017 11:23:55 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 25/27] net: Add linuxdevname property
Date: Fri,  1 Dec 2017 12:22:54 +0100
Message-Id: <20171201112256.20196-26-s.hauer@pengutronix.de>
In-Reply-To: <20171201112256.20196-1-s.hauer@pengutronix.de>
References: <20171201112256.20196-1-s.hauer@pengutronix.de>
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
To: Barebox List <barebox@lists.infradead.org>

When you have a static network environment but more than one network
device on your machine it is necessary to provide the <device> parameter
to the ip parameter at kernel cmd line.

The device name assigned by Linux cannot in general be predicted as it
depends on driver bind order.

This patch introduces a new property linux.devname to eth devices.
The value is added to bootargs per interface and can be changed in
env/network/INTF

Based on patch by Gavin Schenk <g.schenk@eckelmann.de>.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/net.h |  1 +
 net/eth.c     |  2 ++
 net/ifup.c    | 14 +++++++++++---
 3 files changed, 14 insertions(+), 3 deletions(-)

diff --git a/include/net.h b/include/net.h
index 926d817802..a09cb155a8 100644
--- a/include/net.h
+++ b/include/net.h
@@ -61,6 +61,7 @@ struct eth_device {
 	IPaddr_t netmask;
 	char ethaddr[6];
 	char *bootarg;
+	char *linuxdevname;
 
 	bool ifup;
 #define ETH_MODE_DHCP 0
diff --git a/net/eth.c b/net/eth.c
index a9869f7d9d..5d45a04612 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -390,6 +390,8 @@ int eth_register(struct eth_device *edev)
 			edev->ethaddr, edev);
 	edev->bootarg = xstrdup("");
 	dev_add_param_string(dev, "linux.bootargs", NULL, NULL, &edev->bootarg, NULL);
+	edev->linuxdevname = xstrdup("");
+	dev_add_param_string(dev, "linux.devname", NULL, NULL, &edev->linuxdevname, NULL);
 	dev_add_param_enum(dev, "mode", NULL, NULL, &edev->global_mode,
 				  eth_mode_names, ARRAY_SIZE(eth_mode_names),
 				  NULL);
diff --git a/net/ifup.c b/net/ifup.c
index dc41c47f24..827c5c03d1 100644
--- a/net/ifup.c
+++ b/net/ifup.c
@@ -72,11 +72,12 @@ static int source_env_network(struct eth_device *edev)
 		"serverip",
 		"ethaddr",
 		"ip",
+		"linuxdevname",
 	};
 	IPaddr_t ipaddr, netmask, gateway, serverip;
 	unsigned char ethaddr[6];
 	char *file, *cmd;
-	const char *ethaddrstr, *modestr;
+	const char *ethaddrstr, *modestr, *linuxdevname;
 	int ret, mode, ethaddr_valid = 0, i;
 	struct stat s;
 
@@ -107,6 +108,7 @@ static int source_env_network(struct eth_device *edev)
 	netmask = getenv_ip("netmask");
 	gateway = getenv_ip("gateway");
 	serverip = getenv_ip("serverip");
+	linuxdevname = getenv("linuxdevname");
 	ethaddrstr = getenv("ethaddr");
 	if (ethaddrstr && *ethaddrstr) {
 		ret = string_to_ethaddr(ethaddrstr, ethaddr);
@@ -149,6 +151,11 @@ static int source_env_network(struct eth_device *edev)
 			net_set_serverip(serverip);
 	}
 
+	if (linuxdevname) {
+		free(edev->linuxdevname);
+		edev->linuxdevname = xstrdup(linuxdevname);
+	}
+
 	ret = 0;
 
 out:
@@ -169,11 +176,12 @@ static void set_linux_bootarg(struct eth_device *edev)
 		serverip = net_get_serverip();
 		gateway = net_get_gateway();
 
-		bootarg = basprintf("ip=%pI4:%pI4:%pI4:%pI4:::",
+		bootarg = basprintf("ip=%pI4:%pI4:%pI4:%pI4::%s:",
 				&edev->ipaddr,
 				&serverip,
 				&gateway,
-				&edev->netmask);
+				&edev->netmask,
+				edev->linuxdevname ? edev->linuxdevname : "");
 		dev_set_param(&edev->dev, "linux.bootargs", bootarg);
 		free(bootarg);
 	} else if (edev->global_mode == ETH_MODE_DHCP) {
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
