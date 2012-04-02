Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo3.mail-out.ovh.net ([87.98.172.249]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SEiLQ-000095-1Z
 for barebox@lists.infradead.org; Mon, 02 Apr 2012 14:34:58 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 9CA53FF9368
 for <barebox@lists.infradead.org>; Mon,  2 Apr 2012 16:35:32 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon,  2 Apr 2012 16:19:08 +0200
Message-Id: <1333376350-19506-6-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20120402141700.GF8116@game.jcrosoft.org>
References: <20120402141700.GF8116@game.jcrosoft.org>
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
Subject: [PATCH 6/8] net: dhcp: allow to set transmitted client uuid
To: barebox@lists.infradead.org

For net boot setups it is useful to submit boot params like server or
bootfile over dhcp. To distinguish diffrent type of OS running on the same hardware,
a custom client uuid can be sent in dhcp discover/request messages.

E.g. the ISC dhcp server can be configured with

 | option client-uuid code 97 = { unsigned integer 8, string };
 | class "at91sam9x5ek" {
 |         match if substring (option vendor-class-identifier,0,20) = "barebox-at91sam9x5ek";
 |
 |         filename "/tftpboot/atmel/at91sam9x5/sam9x5ek/zImage";
 |         if substring (option dhcp-client-identifier,0,7) = "ser2net" {
 |                 filename "/tftpboot/atmel/at91sam9x5/sam9x5ek/zImage-ser2net";
 |         }
 |         if substring (option client-uuid,0,7) = "test" {
 |                 filename "/tftpboot/atmel/at91sam9x5/sam9x5ek/zImage-ser2net";
 |         }
 |         option tftp-server-name "192.168.200.98";
 |         option option-150 192.168.200.98;
 |         next-server 192.168.200.98;
 |         option root-path "192.168.200.98:/opt/work/buildroot/build/sam9x5/target";
 | }

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 net/dhcp.c |   15 ++++++++++++++-
 1 files changed, 14 insertions(+), 1 deletions(-)

diff --git a/net/dhcp.c b/net/dhcp.c
index 5b1ab5a..e452a92 100644
--- a/net/dhcp.c
+++ b/net/dhcp.c
@@ -258,6 +258,7 @@ static int dhcp_set_string_options(struct dhcp_param *param, u8 *e)
 
 #define DHCP_VENDOR_ID		60
 #define DHCP_CLIENT_ID		61
+#define DHCP_CLIENT_UUID	97
 
 struct dhcp_param dhcp_params[] = {
 	{
@@ -268,6 +269,10 @@ struct dhcp_param dhcp_params[] = {
 		.option = DHCP_CLIENT_ID,
 		.handle = dhcp_set_string_options,
 		.barebox_var_name = "dhcp_client_id",
+	}, {
+		.option = DHCP_CLIENT_UUID,
+		.handle = dhcp_set_string_options,
+		.barebox_var_name = "dhcp_client_uuid",
 	}
 };
 
@@ -623,7 +628,7 @@ static int do_dhcp(int argc, char *argv[])
 
 	dhcp_reset_env();
 
-	while((opt = getopt(argc, argv, "v:c:")) > 0) {
+	while((opt = getopt(argc, argv, "v:c:u:")) > 0) {
 		switch(opt) {
 		case 'v':
 			dhcp_set_param_data(DHCP_VENDOR_ID, optarg);
@@ -631,6 +636,9 @@ static int do_dhcp(int argc, char *argv[])
 		case 'c':
 			dhcp_set_param_data(DHCP_CLIENT_ID, optarg);
 			break;
+		case 'u':
+			dhcp_set_param_data(DHCP_CLIENT_UUID, optarg);
+			break;
 		}
 	}
 
@@ -682,6 +690,10 @@ BAREBOX_CMD_HELP_OPT  ("-v <vendor_id>",
 BAREBOX_CMD_HELP_OPT  ("-c <client_id>",
 "DHCP Client ID (code 61) submitted in DHCP requests. It can\n"
 "be used in the DHCP server's configuration to select options\n"
+"(e.g. bootfile or server) which are valid for barebox clients only.\n")
+BAREBOX_CMD_HELP_OPT  ("-u <client_uuid>",
+"DHCP Client UUID (code 97) submitted in DHCP requests. It can\n"
+"be used in the DHCP server's configuration to select options\n"
 "(e.g. bootfile or server) which are valid for barebox clients only.\n");
 BAREBOX_CMD_HELP_END
 
@@ -697,5 +709,6 @@ BAREBOX_MAGICVAR(hostname, "hostname returned from DHCP request");
 BAREBOX_MAGICVAR(domainname, "domainname returned from DHCP request");
 BAREBOX_MAGICVAR(rootpath, "rootpath returned from DHCP request");
 BAREBOX_MAGICVAR(dhcp_vendor_id, "vendor id to send to the DHCP server");
+BAREBOX_MAGICVAR(dhcp_client_uuid, "cliend uuid to send to the DHCP server");
 BAREBOX_MAGICVAR(dhcp_client_id, "cliend id to send to the DHCP server");
 BAREBOX_MAGICVAR(dhcp_tftp_server_name, "TFTP server Name returned from DHCP request");
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
