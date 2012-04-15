Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SJPTH-0006KT-Ui
 for barebox@lists.infradead.org; Sun, 15 Apr 2012 13:26:28 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 15 Apr 2012 15:26:18 +0200
Message-Id: <1334496380-4091-5-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/6] dhcp: set global domainname and nameserver
To: barebox@lists.infradead.org

nameserver and domainname are now netdevice parameters. Use them.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 net/dhcp.c |   21 +++++++++++++--------
 1 file changed, 13 insertions(+), 8 deletions(-)

diff --git a/net/dhcp.c b/net/dhcp.c
index 0116ba4..82ab100 100644
--- a/net/dhcp.c
+++ b/net/dhcp.c
@@ -104,12 +104,21 @@ static void gateway_handle(struct dhcp_opt *opt, unsigned char *popt, int optlen
 	net_set_gateway(ip);
 }
 
-static void env_ip_handle(struct dhcp_opt *opt, unsigned char *popt, int optlen)
+static void nameserver_handle(struct dhcp_opt *opt, unsigned char *popt, int optlen)
 {
 	IPaddr_t ip;
 
 	ip = net_read_ip(popt);
-	setenv_ip(opt->barebox_var_name, ip);
+	net_set_nameserver(ip);
+}
+
+static void domainname_handle(struct dhcp_opt *opt, unsigned char *popt, int optlen)
+{
+	char str[256];
+
+	memcpy(str, popt, optlen);
+	str[optlen] = 0;
+	net_set_domainname(str);
 }
 
 static void env_str_handle(struct dhcp_opt *opt, unsigned char *popt, int optlen)
@@ -169,16 +178,14 @@ struct dhcp_opt dhcp_options[] = {
 		.handle = gateway_handle,
 	}, {
 		.option = 6,
-		.handle = env_ip_handle,
-		.barebox_var_name = "nameserver",
+		.handle = nameserver_handle,
 	}, {
 		.option = 12,
 		.handle = env_str_handle,
 		.barebox_var_name = "hostname",
 	}, {
 		.option = 15,
-		.handle = env_str_handle,
-		.barebox_var_name = "domainname",
+		.handle = domainname_handle,
 	}, {
 		.option = 17,
 		.handle = env_str_handle,
@@ -697,9 +704,7 @@ BAREBOX_CMD_START(dhcp)
 BAREBOX_CMD_END
 
 BAREBOX_MAGICVAR(bootfile, "bootfile returned from DHCP request");
-BAREBOX_MAGICVAR(nameserver, "Nameserver returned from DHCP request");
 BAREBOX_MAGICVAR(hostname, "hostname returned from DHCP request");
-BAREBOX_MAGICVAR(domainname, "domainname returned from DHCP request");
 BAREBOX_MAGICVAR(rootpath, "rootpath returned from DHCP request");
 BAREBOX_MAGICVAR(dhcp_vendor_id, "vendor id to send to the DHCP server");
 BAREBOX_MAGICVAR(dhcp_client_uuid, "cliend uuid to send to the DHCP server");
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
