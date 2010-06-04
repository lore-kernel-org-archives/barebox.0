Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1OKTcO-00034U-Vi
	for barebox@lists.infradead.org; Fri, 04 Jun 2010 09:55:15 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  4 Jun 2010 11:54:57 +0200
Message-Id: <1275645309-9756-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1275645309-9756-1-git-send-email-s.hauer@pengutronix.de>
References: <1275645309-9756-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/13] net: remove need for eth_halt/eth_open
To: barebox@lists.infradead.org

We used to eth_open/eth_halt the network devices during NetLoopInit
which is called whenever the user enters a network command.
Change this behaviour so that the current network device gets opened
when making it the current one.
With this change it's always possible to send packages and we are able
to implement a new network stack in the next step.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/net.c |   20 ++++++++++++--------
 include/net.h  |    1 +
 net/eth.c      |   56 ++++++++++++++++++++++++++++++++++++--------------------
 net/net.c      |   21 +++++++++++++--------
 net/ping.c     |    1 -
 5 files changed, 62 insertions(+), 37 deletions(-)

diff --git a/commands/net.c b/commands/net.c
index 815a566..949963f 100644
--- a/commands/net.c
+++ b/commands/net.c
@@ -39,12 +39,16 @@ void netboot_update_env(void)
 {
 	struct eth_device *eth_current = eth_get_current();
 	char tmp[22];
+	IPaddr_t net_gateway_ip = NetOurGatewayIP;
+	IPaddr_t net_ip = NetOurIP;
+	IPaddr_t net_server_ip = NetServerIP;
+	IPaddr_t netmask = NetOurSubnetMask;
 
-	if (NetOurGatewayIP)
-		dev_set_param_ip(&eth_current->dev, "gateway", NetOurGatewayIP);
+	if (net_gateway_ip)
+		dev_set_param_ip(&eth_current->dev, "gateway", net_gateway_ip);
 
-	if (NetOurSubnetMask)
-		dev_set_param_ip(&eth_current->dev, "netmask", NetOurSubnetMask);
+	if (netmask)
+		dev_set_param_ip(&eth_current->dev, "netmask", netmask);
 
 
 	if (NetOurHostName[0])
@@ -53,11 +57,11 @@ void netboot_update_env(void)
 	if (NetOurRootPath[0])
 		setenv ("rootpath", NetOurRootPath);
 
-	if (NetOurIP)
-		dev_set_param_ip(&eth_current->dev, "ipaddr", NetOurIP);
+	if (net_ip)
+		dev_set_param_ip(&eth_current->dev, "ipaddr", net_ip);
 
-	if (NetServerIP)
-		dev_set_param_ip(&eth_current->dev, "serverip", NetServerIP);
+	if (net_server_ip)
+		dev_set_param_ip(&eth_current->dev, "serverip", net_server_ip);
 
 	if (NetOurDNSIP) {
 		ip_to_string (NetOurDNSIP, tmp);
diff --git a/include/net.h b/include/net.h
index 7353c8f..de78293 100644
--- a/include/net.h
+++ b/include/net.h
@@ -57,6 +57,7 @@ struct device_d;
 struct eth_device {
 	int iobase;
 	int state;
+	int active;
 
 	int  (*init) (struct eth_device*);
 
diff --git a/net/eth.c b/net/eth.c
index 7570198..fc16233 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -36,7 +36,13 @@ static LIST_HEAD(netdev_list);
 
 void eth_set_current(struct eth_device *eth)
 {
+	if (eth_current && eth_current->active) {
+		eth_current->halt(eth_current);
+		eth_current->active = 0;
+	}
+
 	eth_current = eth;
+	net_update_env();
 }
 
 struct eth_device * eth_get_current(void)
@@ -57,37 +63,37 @@ struct eth_device *eth_get_byname(char *ethname)
 	return NULL;
 }
 
-int eth_open(void)
-{
-	if (!eth_current)
-		return -ENODEV;
-
-	return eth_current->open(eth_current);
-}
-
-void eth_halt(void)
-{
-	if (!eth_current)
-		return;
-
-	eth_current->halt(eth_current);
-
-	eth_current->state = ETH_STATE_PASSIVE;
-}
-
 int eth_send(void *packet, int length)
 {
+	int ret;
+
 	if (!eth_current)
 		return -ENODEV;
 
+	if (!eth_current->active) {
+		ret = eth_current->open(eth_current);
+		if (ret)
+			return ret;
+		eth_current->active = 1;
+	}
+
 	return eth_current->send(eth_current, packet, length);
 }
 
 int eth_rx(void)
 {
+	int ret;
+
 	if (!eth_current)
 		return -ENODEV;
 
+	if (!eth_current->active) {
+		ret = eth_current->open(eth_current);
+		if (ret)
+			return ret;
+		eth_current->active = 1;
+	}
+
 	return eth_current->recv(eth_current);
 }
 
@@ -104,11 +110,15 @@ static int eth_set_ethaddr(struct device_d *dev, struct param_d *param, const ch
 
 	edev->set_ethaddr(edev, ethaddr);
 
+	if (edev == eth_current)
+		net_update_env();
+
 	return 0;
 }
 
 static int eth_set_ipaddr(struct device_d *dev, struct param_d *param, const char *val)
 {
+	struct eth_device *edev = dev->type_data;
 	IPaddr_t ip;
 
 	if (string_to_ip(val, &ip))
@@ -117,6 +127,9 @@ static int eth_set_ipaddr(struct device_d *dev, struct param_d *param, const cha
 	free(param->value);
 	param->value = strdup(val);
 
+	if (edev == eth_current)
+		net_update_env();
+
 	return 0;
 }
 
@@ -157,7 +170,7 @@ int eth_register(struct eth_device *edev)
 
 	if (edev->get_ethaddr(edev, ethaddr) == 0) {
 		ethaddr_to_string(ethaddr, ethaddr_str);
-		printf("got MAC address from EEPROM: %s\n",ethaddr_str);
+		printf("got MAC address from EEPROM: %s\n",&ethaddr_str);
 		dev_set_param(dev, "ethaddr", ethaddr_str);
 	}
 
@@ -180,9 +193,12 @@ void eth_unregister(struct eth_device *edev)
 	if (edev->param_serverip.value)
 		free(edev->param_serverip.value);
 
-	if (eth_current == edev)
+	if (eth_current == edev) {
+		eth_current->halt(eth_current);
 		eth_current = NULL;
+	}
 
 	list_del(&edev->list);
 }
 
+
diff --git a/net/net.c b/net/net.c
index 4554d49..28943a0 100644
--- a/net/net.c
+++ b/net/net.c
@@ -228,9 +228,6 @@ int NetLoopInit(proto_t protocol)
 	NetArpWaitTxPacket -= (ulong)NetArpWaitTxPacket % PKTALIGN;
 	NetArpWaitTxPacketSize = 0;
 
-	if (eth_open() < 0)
-		return -1;
-
 	string_to_ethaddr(dev_get_param(&eth_get_current()->dev, "ethaddr"),
 			NetOurEther);
 
@@ -243,8 +240,6 @@ int NetLoopInit(proto_t protocol)
 	NetServerIP = dev_get_param_ip(&eth_current->dev, "serverip");
 
 	ret = net_check_prereq(protocol);
-	if (ret)
-		eth_halt();
 
 	return ret;
 }
@@ -281,7 +276,6 @@ int NetLoop(void)
 		 *	Abort if ctrl-c was pressed.
 		 */
 		if (ctrlc()) {
-			eth_halt();
 			puts ("\nAbort\n");
 			return -1;
 		}
@@ -315,11 +309,9 @@ int NetLoop(void)
 				sprintf(buf, "0x%lx", NetBootFileXferSize);
 				setenv("filesize", buf);
 			}
-			eth_halt();
 			return NetBootFileXferSize;
 
 		case NETLOOP_FAIL:
-			eth_halt();
 			return -1;
 		}
 	}
@@ -959,3 +951,16 @@ void ethaddr_to_string(const unsigned char *enetaddr, char *str)
 		 enetaddr[4], enetaddr[5]);
 }
 
+void net_update_env(void)
+{
+	struct eth_device *edev = eth_get_current();
+
+	NetOurIP = dev_get_param_ip(&edev->dev, "ipaddr");
+	NetServerIP = dev_get_param_ip(&edev->dev, "serverip");
+	NetOurGatewayIP = dev_get_param_ip(&edev->dev, "gateway");
+	NetOurSubnetMask = dev_get_param_ip(&edev->dev, "netmask");
+
+	string_to_ethaddr(dev_get_param(&edev->dev, "ethaddr"),
+			NetOurEther);
+}
+
diff --git a/net/ping.c b/net/ping.c
index 1bc481a..7e21fe4 100644
--- a/net/ping.c
+++ b/net/ping.c
@@ -62,7 +62,6 @@ static int PingSend(void)
 static void
 PingTimeout (void)
 {
-	eth_halt();
 	NetState = NETLOOP_FAIL;	/* we did not get the reply */
 }
 
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
