Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 10.mo3.mail-out.ovh.net ([87.98.165.232]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SJH04-00021D-HU
 for barebox@lists.infradead.org; Sun, 15 Apr 2012 04:23:45 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 10DFCFF8452
 for <barebox@lists.infradead.org>; Sun, 15 Apr 2012 06:24:54 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 15 Apr 2012 06:05:37 +0200
Message-Id: <1334462739-17265-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/3] net: dhcp: add support to send the hostname to the dhcp
 server
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 net/dhcp.c |   11 +++++++++--
 1 files changed, 9 insertions(+), 2 deletions(-)

diff --git a/net/dhcp.c b/net/dhcp.c
index 0116ba4..c3c41a0 100644
--- a/net/dhcp.c
+++ b/net/dhcp.c
@@ -237,6 +237,7 @@ static int dhcp_set_string_options(struct dhcp_param *param, u8 *e)
 	return str_len + 2;
 }
 
+#define DHCP_HOSTNAME		12
 #define DHCP_VENDOR_ID		60
 #define DHCP_CLIENT_ID		61
 #define DHCP_USER_CLASS		77
@@ -244,6 +245,10 @@ static int dhcp_set_string_options(struct dhcp_param *param, u8 *e)
 
 struct dhcp_param dhcp_params[] = {
 	{
+		.option = DHCP_HOSTNAME,
+		.handle = dhcp_set_string_options,
+		.barebox_var_name = "hostname",
+	}, {
 		.option = DHCP_VENDOR_ID,
 		.handle = dhcp_set_string_options,
 		.barebox_var_name = "dhcp_vendor_id",
@@ -614,8 +619,10 @@ static int do_dhcp(int argc, char *argv[])
 
 	dhcp_reset_env();
 
-	while((opt = getopt(argc, argv, "v:c:u:U:")) > 0) {
+	while((opt = getopt(argc, argv, "h:v:c:u:U:")) > 0) {
 		switch(opt) {
+		case 'U':
+			dhcp_set_param_data(DHCP_HOSTNAME, optarg);
 		case 'v':
 			dhcp_set_param_data(DHCP_VENDOR_ID, optarg);
 			break;
@@ -698,7 +705,7 @@ BAREBOX_CMD_END
 
 BAREBOX_MAGICVAR(bootfile, "bootfile returned from DHCP request");
 BAREBOX_MAGICVAR(nameserver, "Nameserver returned from DHCP request");
-BAREBOX_MAGICVAR(hostname, "hostname returned from DHCP request");
+BAREBOX_MAGICVAR(hostname, "hostname to send or returned from DHCP request");
 BAREBOX_MAGICVAR(domainname, "domainname returned from DHCP request");
 BAREBOX_MAGICVAR(rootpath, "rootpath returned from DHCP request");
 BAREBOX_MAGICVAR(dhcp_vendor_id, "vendor id to send to the DHCP server");
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
