Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SJPTI-0006KW-H1
 for barebox@lists.infradead.org; Sun, 15 Apr 2012 13:26:29 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 15 Apr 2012 15:26:17 +0200
Message-Id: <1334496380-4091-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1334496380-4091-1-git-send-email-s.hauer@pengutronix.de>
References: <1334496380-4091-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/6] net: add nameserver and domainname to net devices
To: barebox@lists.infradead.org

This adds nameserver and domainname to net devices. This may not
be 100% correct since the nameserver and domainname are not network
device specific. However, we currently do not have the possibility
for global variables. DNS support depends on the nameserver/domainname
to be set correctly. When we set both inside a script the variables
will not be available to the parent context, so use device parameters
which are global.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/net.h |    4 ++++
 net/eth.c     |    2 ++
 net/net.c     |   45 ++++++++++++++++++++++++++++-----------------
 3 files changed, 34 insertions(+), 17 deletions(-)

diff --git a/include/net.h b/include/net.h
index 01e4b22..8031d52 100644
--- a/include/net.h
+++ b/include/net.h
@@ -189,8 +189,12 @@ void net_set_ip(IPaddr_t ip);
 void net_set_serverip(IPaddr_t ip);
 void net_set_netmask(IPaddr_t ip);
 void net_set_gateway(IPaddr_t ip);
+void net_set_nameserver(IPaddr_t ip);
+void net_set_domainname(const char *domain);
 IPaddr_t net_get_ip(void);
 IPaddr_t net_get_serverip(void);
+IPaddr_t net_get_nameserver(void);
+const char *net_get_domainname(void);
 
 /* Do the work */
 void net_poll(void);
diff --git a/net/eth.c b/net/eth.c
index f62d24a..38957bb 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -210,6 +210,8 @@ int eth_register(struct eth_device *edev)
 	dev_add_param(dev, "gateway", eth_set_ipaddr, NULL, 0);
 	dev_add_param(dev, "netmask", eth_set_ipaddr, NULL, 0);
 	dev_add_param(dev, "serverip", eth_set_ipaddr, NULL, 0);
+	dev_add_param(dev, "nameserver", eth_set_ipaddr, NULL, 0);
+	dev_add_param(dev, "domainname", NULL, NULL, 0);
 
 	edev->init(edev);
 
diff --git a/net/net.c b/net/net.c
index d164992..3b3aeaa 100644
--- a/net/net.c
+++ b/net/net.c
@@ -45,6 +45,7 @@ static IPaddr_t	net_gateway;		/* Our gateways IP address	*/
 static unsigned char net_ether[6];	/* Our ethernet address		*/
 static IPaddr_t	net_ip;			/* Our IP addr (0 = unknown)	*/
 static IPaddr_t	net_serverip;		/* Our IP addr (0 = unknown)	*/
+static IPaddr_t net_nameserver;		/* Our nameserver		*/
 
 unsigned char *NetRxPackets[PKTBUFSRX]; /* Receive packets		*/
 static unsigned int net_ip_id;
@@ -129,23 +130,6 @@ int string_to_ip(const char *s, IPaddr_t *ip)
 	return 0;
 }
 
-IPaddr_t getenv_ip_dns(const char *name, int dns)
-{
-	IPaddr_t ip;
-	const char *var = getenv(name);
-
-	if (!var)
-		return 0;
-
-	if (!string_to_ip(var, &ip))
-		return ip;
-
-	if (!dns)
-		return 0;
-
-	return resolv((char*)var);
-}
-
 int setenv_ip(const char *name, IPaddr_t ip)
 {
 	const char *str;
@@ -314,6 +298,18 @@ IPaddr_t net_get_serverip(void)
 	return net_serverip;
 }
 
+IPaddr_t net_get_nameserver(void)
+{
+	return net_nameserver;
+}
+
+const char *net_get_domainname(void)
+{
+	struct eth_device *edev = eth_get_current();
+
+	return dev_get_param(&edev->dev, "domainname");
+}
+
 void net_set_serverip(IPaddr_t ip)
 {
 	struct eth_device *edev = eth_get_current();
@@ -322,6 +318,13 @@ void net_set_serverip(IPaddr_t ip)
 	dev_set_param_ip(&edev->dev, "serverip", net_serverip);
 }
 
+void net_set_domainname(const char *domain)
+{
+	struct eth_device *edev = eth_get_current();
+
+	dev_set_param(&edev->dev, "domainname", domain);
+}
+
 void net_set_ip(IPaddr_t ip)
 {
 	struct eth_device *edev = eth_get_current();
@@ -351,6 +354,14 @@ void net_set_gateway(IPaddr_t gw)
 	dev_set_param_ip(&edev->dev, "gateway", net_gateway);
 }
 
+void net_set_nameserver(IPaddr_t ns)
+{
+	struct eth_device *edev = eth_get_current();
+
+	net_nameserver = ns;
+	dev_set_param_ip(&edev->dev, "nameserver", net_nameserver);
+}
+
 static LIST_HEAD(connection_list);
 
 static struct net_connection *net_new(IPaddr_t dest, rx_handler_f *handler,
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
