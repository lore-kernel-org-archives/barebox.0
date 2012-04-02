Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 13.mo3.mail-out.ovh.net ([188.165.33.202]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SEiLQ-00009S-00
 for barebox@lists.infradead.org; Mon, 02 Apr 2012 14:34:57 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 59850FF9855
 for <barebox@lists.infradead.org>; Mon,  2 Apr 2012 16:35:33 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon,  2 Apr 2012 16:19:09 +0200
Message-Id: <1333376350-19506-7-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 7/8] net: dhcp: allow to set transmitted user class
To: barebox@lists.infradead.org

For net boot setups it is useful to submit boot params like server or
bootfile over dhcp. To distinguish diffrent type of OS running on the same hardware,
a custom vendor id can be sent in dhcp discover/request messages.

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
 |         if substring (option user-class,0,4) = "toto" {
 |                 filename "/tftpboot/atmel/at91sam9x5/sam9x5ek/zImage-toto";
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
index e452a92..27a55d0 100644
--- a/net/dhcp.c
+++ b/net/dhcp.c
@@ -258,6 +258,7 @@ static int dhcp_set_string_options(struct dhcp_param *param, u8 *e)
 
 #define DHCP_VENDOR_ID		60
 #define DHCP_CLIENT_ID		61
+#define DHCP_USER_CLASS		77
 #define DHCP_CLIENT_UUID	97
 
 struct dhcp_param dhcp_params[] = {
@@ -270,6 +271,10 @@ struct dhcp_param dhcp_params[] = {
 		.handle = dhcp_set_string_options,
 		.barebox_var_name = "dhcp_client_id",
 	}, {
+		.option = DHCP_USER_CLASS,
+		.handle = dhcp_set_string_options,
+		.barebox_var_name = "dhcp_user_class",
+	}, {
 		.option = DHCP_CLIENT_UUID,
 		.handle = dhcp_set_string_options,
 		.barebox_var_name = "dhcp_client_uuid",
@@ -628,7 +633,7 @@ static int do_dhcp(int argc, char *argv[])
 
 	dhcp_reset_env();
 
-	while((opt = getopt(argc, argv, "v:c:u:")) > 0) {
+	while((opt = getopt(argc, argv, "v:c:u:U:")) > 0) {
 		switch(opt) {
 		case 'v':
 			dhcp_set_param_data(DHCP_VENDOR_ID, optarg);
@@ -639,6 +644,9 @@ static int do_dhcp(int argc, char *argv[])
 		case 'u':
 			dhcp_set_param_data(DHCP_CLIENT_UUID, optarg);
 			break;
+		case 'U':
+			dhcp_set_param_data(DHCP_USER_CLASS, optarg);
+			break;
 		}
 	}
 
@@ -694,6 +702,10 @@ BAREBOX_CMD_HELP_OPT  ("-c <client_id>",
 BAREBOX_CMD_HELP_OPT  ("-u <client_uuid>",
 "DHCP Client UUID (code 97) submitted in DHCP requests. It can\n"
 "be used in the DHCP server's configuration to select options\n"
+"(e.g. bootfile or server) which are valid for barebox clients only.\n")
+BAREBOX_CMD_HELP_OPT  ("-U <user_class>",
+"DHCP User class (code 77) submitted in DHCP requests. It can\n"
+"be used in the DHCP server's configuration to select options\n"
 "(e.g. bootfile or server) which are valid for barebox clients only.\n");
 BAREBOX_CMD_HELP_END
 
@@ -711,4 +723,5 @@ BAREBOX_MAGICVAR(rootpath, "rootpath returned from DHCP request");
 BAREBOX_MAGICVAR(dhcp_vendor_id, "vendor id to send to the DHCP server");
 BAREBOX_MAGICVAR(dhcp_client_uuid, "cliend uuid to send to the DHCP server");
 BAREBOX_MAGICVAR(dhcp_client_id, "cliend id to send to the DHCP server");
+BAREBOX_MAGICVAR(dhcp_user_class, "user class to send to the DHCP server");
 BAREBOX_MAGICVAR(dhcp_tftp_server_name, "TFTP server Name returned from DHCP request");
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
