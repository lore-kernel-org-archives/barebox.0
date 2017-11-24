Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eI96j-0008KB-V7
 for barebox@lists.infradead.ORG; Fri, 24 Nov 2017 08:13:26 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 24 Nov 2017 09:12:25 +0100
Message-Id: <20171124081237.6830-10-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/21] net: dhcp: Allow to specify network device
To: Barebox List <barebox@lists.infradead.org>

Instead of allowing to DHCP only on the "current" network
device, allow to specify the desired network device. This
is a first step to get rid of the concept of a "current"
network device.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/dhcp.c | 20 +++++++++++++++++---
 include/dhcp.h  |  4 +++-
 include/net.h   |  6 +++---
 net/dhcp.c      | 15 +++++++++------
 net/ifup.c      |  5 ++++-
 net/net.c       | 12 +++---------
 6 files changed, 39 insertions(+), 23 deletions(-)

diff --git a/commands/dhcp.c b/commands/dhcp.c
index 4f4f5490c5..ce4a78830d 100644
--- a/commands/dhcp.c
+++ b/commands/dhcp.c
@@ -15,12 +15,15 @@
 #include <environment.h>
 #include <getopt.h>
 #include <dhcp.h>
+#include <net.h>
 
 static int do_dhcp(int argc, char *argv[])
 {
 	int ret, opt;
 	int retries = DHCP_DEFAULT_RETRY;
 	struct dhcp_req_param dhcp_param;
+	struct eth_device *edev;
+	const char *edevname;
 
 	memset(&dhcp_param, 0, sizeof(struct dhcp_req_param));
 	getenv_uint("global.dhcp.retries", &retries);
@@ -50,12 +53,23 @@ static int do_dhcp(int argc, char *argv[])
 		}
 	}
 
+	if (optind == argc)
+		edevname = "eth0";
+	else
+		edevname = argv[optind];
+
+	edev = eth_get_byname(edevname);
+	if (!edev) {
+		printf("No such network device: %s\n", edevname);
+		return 1;
+	}
+
 	if (!retries) {
 		printf("retries is set to zero, set it to %d\n", DHCP_DEFAULT_RETRY);
 		retries = DHCP_DEFAULT_RETRY;
 	}
 
-	ret = dhcp(retries, &dhcp_param);
+	ret = dhcp(edev, retries, &dhcp_param);
 
 	return ret;
 }
@@ -73,8 +87,8 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(dhcp)
 	.cmd		= do_dhcp,
 	BAREBOX_CMD_DESC("DHCP client to obtain IP or boot params")
-	BAREBOX_CMD_OPTS("[-HvcuUr]")
+	BAREBOX_CMD_OPTS("[-HvcuUr] [device]")
 	BAREBOX_CMD_GROUP(CMD_GRP_NET)
 	BAREBOX_CMD_HELP(cmd_dhcp_help)
-	BAREBOX_CMD_COMPLETE(empty_complete)
+	BAREBOX_CMD_COMPLETE(eth_complete)
 BAREBOX_CMD_END
diff --git a/include/dhcp.h b/include/dhcp.h
index 0796b30cf1..20a523250f 100644
--- a/include/dhcp.h
+++ b/include/dhcp.h
@@ -20,6 +20,8 @@ struct dhcp_req_param {
 	char *client_uuid;
 };
 
-int dhcp(int retries, struct dhcp_req_param *param);
+struct eth_device;
+
+int dhcp(struct eth_device *edev, int retries, struct dhcp_req_param *param);
 
 #endif
diff --git a/include/net.h b/include/net.h
index 6788f14cb0..416fcde761 100644
--- a/include/net.h
+++ b/include/net.h
@@ -212,13 +212,13 @@ struct icmphdr {
 
 extern unsigned char *NetRxPackets[PKTBUFSRX];/* Receive packets		*/
 
-void net_set_ip(IPaddr_t ip);
+void net_set_ip(struct eth_device *edev, IPaddr_t ip);
 void net_set_serverip(IPaddr_t ip, bool overwrite);
-void net_set_netmask(IPaddr_t ip);
+void net_set_netmask(struct eth_device *edev, IPaddr_t ip);
 void net_set_gateway(IPaddr_t ip);
 void net_set_nameserver(IPaddr_t ip);
 void net_set_domainname(const char *name);
-IPaddr_t net_get_ip(void);
+IPaddr_t net_get_ip(struct eth_device *edev);
 IPaddr_t net_get_serverip(void);
 IPaddr_t net_get_gateway(void);
 IPaddr_t net_get_nameserver(void);
diff --git a/net/dhcp.c b/net/dhcp.c
index 61abf49272..270fe91ac1 100644
--- a/net/dhcp.c
+++ b/net/dhcp.c
@@ -79,6 +79,7 @@ static dhcp_state_t dhcp_state;
 static uint32_t dhcp_leasetime;
 static IPaddr_t net_dhcp_server_ip;
 static uint64_t dhcp_start;
+static struct eth_device *dhcp_edev;
 static char dhcp_tftpname[256];
 
 static const char* dhcp_get_barebox_global(const char * var)
@@ -126,7 +127,7 @@ static void netmask_handle(struct dhcp_opt *opt, unsigned char *popt, int optlen
 	IPaddr_t ip;
 
 	ip = net_read_ip(popt);
-	net_set_netmask(ip);
+	net_set_netmask(dhcp_edev, ip);
 }
 
 static void gateway_handle(struct dhcp_opt *opt, unsigned char *popt, int optlen)
@@ -369,7 +370,7 @@ static void bootp_copy_net_params(struct bootp *bp)
 	IPaddr_t tmp_ip;
 
 	tmp_ip = net_read_ip(&bp->bp_yiaddr);
-	net_set_ip(tmp_ip);
+	net_set_ip(dhcp_edev, tmp_ip);
 
 	tmp_ip = net_read_ip(&bp->bp_siaddr);
 	if (tmp_ip != 0)
@@ -618,7 +619,7 @@ static void dhcp_handler(void *ctx, char *packet, unsigned int len)
 				dhcp_options_process((u8 *)&bp->bp_vend[4], bp);
 			bootp_copy_net_params(bp); /* Store net params from reply */
 			dhcp_state = BOUND;
-			ip = net_get_ip();
+			ip = net_get_ip(dhcp_edev);
 			printf("DHCP client bound to address %pI4\n", &ip);
 			return;
 		}
@@ -646,12 +647,14 @@ static void dhcp_reset_env(void)
 	}
 }
 
-int dhcp(int retries, struct dhcp_req_param *param)
+int dhcp(struct eth_device *edev, int retries, struct dhcp_req_param *param)
 {
 	int ret = 0;
 
 	dhcp_reset_env();
 
+	dhcp_edev = edev;
+
 	dhcp_set_param_data(DHCP_HOSTNAME, param->hostname);
 	dhcp_set_param_data(DHCP_VENDOR_ID, param->vendor_id);
 	dhcp_set_param_data(DHCP_CLIENT_ID, param->client_id);
@@ -661,7 +664,7 @@ int dhcp(int retries, struct dhcp_req_param *param)
 	if (!retries)
 		retries = DHCP_DEFAULT_RETRY;
 
-	dhcp_con = net_udp_new(0xffffffff, PORT_BOOTPS, dhcp_handler, NULL);
+	dhcp_con = net_udp_eth_new(edev, 0xffffffff, PORT_BOOTPS, dhcp_handler, NULL);
 	if (IS_ERR(dhcp_con)) {
 		ret = PTR_ERR(dhcp_con);
 		goto out;
@@ -671,7 +674,7 @@ int dhcp(int retries, struct dhcp_req_param *param)
 	if (ret)
 		goto out1;
 
-	net_set_ip(0);
+	net_set_ip(dhcp_edev, 0);
 
 	dhcp_start = get_time_ns();
 	ret = bootp_request(); /* Basically same as BOOTP */
diff --git a/net/ifup.c b/net/ifup.c
index 70ecf9c717..6c298d8501 100644
--- a/net/ifup.c
+++ b/net/ifup.c
@@ -101,12 +101,15 @@ int ifup(const char *name, unsigned flags)
 
 	if (!strcmp(ip, "dhcp")) {
 		IPaddr_t serverip;
+		char *dhcp_cmd;
 
 		serverip = getenv_ip("serverip");
 		if (serverip)
 			net_set_serverip(serverip, false);
 
-		ret = run_command("dhcp");
+		dhcp_cmd = basprintf("dhcp %s", name);
+		ret = run_command(dhcp_cmd);
+		free(dhcp_cmd);
 		if (ret)
 			goto out;
 		dev_set_param(dev, "linux.bootargs", "ip=dhcp");
diff --git a/net/net.c b/net/net.c
index 1d47bb449a..cf1d0b32fa 100644
--- a/net/net.c
+++ b/net/net.c
@@ -254,24 +254,18 @@ void net_set_serverip(IPaddr_t ip, bool overwrite)
 	net_serverip = ip;
 }
 
-void net_set_ip(IPaddr_t ip)
+void net_set_ip(struct eth_device *edev, IPaddr_t ip)
 {
-	struct eth_device *edev = eth_get_current();
-
 	edev->ipaddr = ip;
 }
 
-IPaddr_t net_get_ip(void)
+IPaddr_t net_get_ip(struct eth_device *edev)
 {
-	struct eth_device *edev = eth_get_current();
-
 	return edev->ipaddr;
 }
 
-void net_set_netmask(IPaddr_t nm)
+void net_set_netmask(struct eth_device *edev, IPaddr_t nm)
 {
-	struct eth_device *edev = eth_get_current();
-
 	edev->netmask = nm;
 }
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
