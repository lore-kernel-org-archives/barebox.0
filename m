Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 13.mo3.mail-out.ovh.net ([188.165.33.202]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SJQ7n-0007jS-Dz
 for barebox@lists.infradead.org; Sun, 15 Apr 2012 14:08:20 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 16B70FF86C1
 for <barebox@lists.infradead.org>; Sun, 15 Apr 2012 15:46:57 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 15 Apr 2012 15:27:39 +0200
Message-Id: <1334496459-11221-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1334462739-17265-1-git-send-email-plagnioj@jcrosoft.com>
References: <1334462739-17265-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/3 v2] net: dhcp: add support to send the hostname to the
 dhcp server
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 net/dhcp.c |   14 ++++++++++++--
 1 files changed, 12 insertions(+), 2 deletions(-)

diff --git a/net/dhcp.c b/net/dhcp.c
index 0116ba4..9dc1c28 100644
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
@@ -614,8 +619,11 @@ static int do_dhcp(int argc, char *argv[])
 
 	dhcp_reset_env();
 
-	while((opt = getopt(argc, argv, "v:c:u:U:")) > 0) {
+	while((opt = getopt(argc, argv, "H:v:c:u:U:")) > 0) {
 		switch(opt) {
+		case 'H':
+			dhcp_set_param_data(DHCP_HOSTNAME, optarg);
+			break;
 		case 'v':
 			dhcp_set_param_data(DHCP_VENDOR_ID, optarg);
 			break;
@@ -672,6 +680,8 @@ out:
 BAREBOX_CMD_HELP_START(dhcp)
 BAREBOX_CMD_HELP_USAGE("dhcp [OPTIONS]\n")
 BAREBOX_CMD_HELP_SHORT("Invoke dhcp client to obtain ip/boot params.\n")
+BAREBOX_CMD_HELP_OPT  ("-H <hostname>",
+"Hostname to send to the DHCP server\n");
 BAREBOX_CMD_HELP_OPT  ("-v <vendor_id>",
 "DHCP Vendor ID (code 60) submitted in DHCP requests. It can\n"
 "be used in the DHCP server's configuration to select options\n"
@@ -698,7 +708,7 @@ BAREBOX_CMD_END
 
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
