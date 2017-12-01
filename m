Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eKjPf-0003o7-Cz
 for barebox@lists.infradead.ORG; Fri, 01 Dec 2017 11:23:40 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  1 Dec 2017 12:22:38 +0100
Message-Id: <20171201112256.20196-10-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/27] net: dhcp: Do not overwrite serverip if it is valid
To: Barebox List <barebox@lists.infradead.org>

Some DHCP servers provide the wrong serverip in which case
it is desired to specify it manually and won't let the dhcp
command overwrite it.
This has previously been done by setting the serverip again
to the desired value after dhcp has been executed. With this
patch we do not overwrite it in the first place if it is valid
already. This is necessary when the serverip is not set via
/env/network/eth* but via nv.net.server.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/net.h | 1 +
 net/dhcp.c    | 4 ++--
 net/ifup.c    | 9 ++++++---
 net/net.c     | 8 ++++++++
 4 files changed, 17 insertions(+), 5 deletions(-)

diff --git a/include/net.h b/include/net.h
index 37ddf2db18..06390732fb 100644
--- a/include/net.h
+++ b/include/net.h
@@ -217,6 +217,7 @@ extern unsigned char *NetRxPackets[PKTBUFSRX];/* Receive packets		*/
 
 void net_set_ip(IPaddr_t ip);
 void net_set_serverip(IPaddr_t ip);
+void net_set_serverip_empty(IPaddr_t ip);
 void net_set_netmask(IPaddr_t ip);
 void net_set_gateway(IPaddr_t ip);
 void net_set_nameserver(IPaddr_t ip);
diff --git a/net/dhcp.c b/net/dhcp.c
index 68696d69e8..37aad8f1ff 100644
--- a/net/dhcp.c
+++ b/net/dhcp.c
@@ -373,7 +373,7 @@ static void bootp_copy_net_params(struct bootp *bp)
 
 	tmp_ip = net_read_ip(&bp->bp_siaddr);
 	if (tmp_ip != 0)
-		net_set_serverip(tmp_ip);
+		net_set_serverip_empty(tmp_ip);
 
 	if (strlen(bp->bp_file) > 0) {
 		if (IS_ENABLED(CONFIG_ENVIRONMENT_VARIABLES))
@@ -702,7 +702,7 @@ int dhcp(int retries, struct dhcp_req_param *param)
 	if (dhcp_tftpname[0] != 0) {
 		IPaddr_t tftpserver = resolv(dhcp_tftpname);
 		if (tftpserver)
-			net_set_serverip(tftpserver);
+			net_set_serverip_empty(tftpserver);
 	}
 
 out1:
diff --git a/net/ifup.c b/net/ifup.c
index 2b13a9f140..2d1feeb74a 100644
--- a/net/ifup.c
+++ b/net/ifup.c
@@ -100,12 +100,15 @@ int ifup(const char *name, unsigned flags)
 		ip = "";
 
 	if (!strcmp(ip, "dhcp")) {
+		IPaddr_t serverip;
+
+		serverip = getenv_ip("serverip");
+		if (serverip)
+			net_set_serverip_empty(serverip);
+
 		ret = run_command("dhcp");
 		if (ret)
 			goto out;
-		ret = eth_set_param(dev, "serverip");
-		if (ret)
-			goto out;
 		dev_set_param(dev, "linux.bootargs", "ip=dhcp");
 	} else if (!strcmp(ip, "static")) {
 		char *bootarg;
diff --git a/net/net.c b/net/net.c
index 5e6e8f1940..10ddd61879 100644
--- a/net/net.c
+++ b/net/net.c
@@ -253,6 +253,14 @@ void net_set_serverip(IPaddr_t ip)
 	net_serverip = ip;
 }
 
+void net_set_serverip_empty(IPaddr_t ip)
+{
+	if (net_serverip)
+		return;
+
+	net_set_serverip(ip);
+}
+
 void net_set_ip(IPaddr_t ip)
 {
 	struct eth_device *edev = eth_get_current();
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
