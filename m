Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eI96c-0008Jm-1a
 for barebox@lists.infradead.ORG; Fri, 24 Nov 2017 08:13:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 24 Nov 2017 09:12:22 +0100
Message-Id: <20171124081237.6830-7-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/21] net: dhcp: Do not overwrite serverip if it is valid
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
 include/net.h | 2 +-
 net/dhcp.c    | 4 ++--
 net/ifup.c    | 9 ++++++---
 net/net.c     | 5 ++++-
 4 files changed, 13 insertions(+), 7 deletions(-)

diff --git a/include/net.h b/include/net.h
index b3e44c7baa..7818bd7145 100644
--- a/include/net.h
+++ b/include/net.h
@@ -214,7 +214,7 @@ struct icmphdr {
 extern unsigned char *NetRxPackets[PKTBUFSRX];/* Receive packets		*/
 
 void net_set_ip(IPaddr_t ip);
-void net_set_serverip(IPaddr_t ip);
+void net_set_serverip(IPaddr_t ip, bool overwrite);
 void net_set_netmask(IPaddr_t ip);
 void net_set_gateway(IPaddr_t ip);
 void net_set_nameserver(IPaddr_t ip);
diff --git a/net/dhcp.c b/net/dhcp.c
index dfa593a7d1..61abf49272 100644
--- a/net/dhcp.c
+++ b/net/dhcp.c
@@ -373,7 +373,7 @@ static void bootp_copy_net_params(struct bootp *bp)
 
 	tmp_ip = net_read_ip(&bp->bp_siaddr);
 	if (tmp_ip != 0)
-		net_set_serverip(tmp_ip);
+		net_set_serverip(tmp_ip, false);
 
 	if (strlen(bp->bp_file) > 0) {
 		if (IS_ENABLED(CONFIG_ENVIRONMENT_VARIABLES))
@@ -702,7 +702,7 @@ int dhcp(int retries, struct dhcp_req_param *param)
 	if (dhcp_tftpname[0] != 0) {
 		IPaddr_t tftpserver = resolv(dhcp_tftpname);
 		if (tftpserver)
-			net_set_serverip(tftpserver);
+			net_set_serverip(tftpserver, false);
 	}
 
 out1:
diff --git a/net/ifup.c b/net/ifup.c
index 2b13a9f140..1e14b0f61c 100644
--- a/net/ifup.c
+++ b/net/ifup.c
@@ -100,12 +100,15 @@ int ifup(const char *name, unsigned flags)
 		ip = "";
 
 	if (!strcmp(ip, "dhcp")) {
+		IPaddr_t serverip;
+
+		serverip = getenv_ip("serverip");
+		if (serverip)
+			net_set_serverip(serverip, false);
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
index 552897e6b8..28aeb4417a 100644
--- a/net/net.c
+++ b/net/net.c
@@ -246,8 +246,11 @@ IPaddr_t net_get_serverip(void)
 	return net_serverip;
 }
 
-void net_set_serverip(IPaddr_t ip)
+void net_set_serverip(IPaddr_t ip, bool overwrite)
 {
+	if (net_serverip && !overwrite)
+		return;
+
 	net_serverip = ip;
 }
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
