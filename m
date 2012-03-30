Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo3.mail-out.ovh.net ([46.105.44.175]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SDTjh-00043Y-Ja
 for barebox@lists.infradead.org; Fri, 30 Mar 2012 04:46:57 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id CFE87FF8A6E
 for <barebox@lists.infradead.org>; Fri, 30 Mar 2012 06:47:21 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 30 Mar 2012 06:31:50 +0200
Message-Id: <1333081913-19168-5-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20120330042713.GX444@game.jcrosoft.org>
References: <20120330042713.GX444@game.jcrosoft.org>
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
Subject: [PATCH 5/8] net: dhcp: allow to set transmitted client uuid
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
 |         option tftp-server-name "192.168.200.98";
 |         option option-150 192.168.200.98;
 |         next-server 192.168.200.98;
 |         option root-path "192.168.200.98:/opt/work/buildroot/build/sam9x5/target";
 | }

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 net/dhcp.c |   14 +++++++++++++-
 1 files changed, 13 insertions(+), 1 deletions(-)

diff --git a/net/dhcp.c b/net/dhcp.c
index 8945587..ae4bdd0 100644
--- a/net/dhcp.c
+++ b/net/dhcp.c
@@ -77,6 +77,7 @@ static IPaddr_t net_dhcp_server_ip;
 static uint64_t dhcp_start;
 static char *client_id;
 static char *vendor_id;
+static char *client_uuid;
 
 static int bootp_check_packet(unsigned char *pkt, unsigned src, unsigned len)
 {
@@ -192,6 +193,7 @@ static int dhcp_extended (u8 *e, int message_type, IPaddr_t ServerID,
 
 	 e += dhcp_set_string_options(e, 60, vendor_id);
 	 e += dhcp_set_string_options(e, 61, client_id);
+	 e += dhcp_set_string_options(e, 97, client_uuid);
 
 	*e++ = 55;		/* Parameter Request List */
 	 cnt = e++;		/* Pointer to count of requested items */
@@ -491,6 +493,7 @@ static int do_dhcp(int argc, char *argv[])
 	int ret, opt;
 	vendor_id = (char*)getenv("dhcp_vendor_id");
 	client_id = (char*)getenv("dhcp_client_id");
+	client_uuid = (char*)getenv("dhcp_client_uuid");
 
 	setenv("bootfile","");
 	setenv("nameserver","");
@@ -501,7 +504,7 @@ static int do_dhcp(int argc, char *argv[])
 	setenv("tftp_server_ip","");
 	setenv("etherboot_file","");
 
-	while((opt = getopt(argc, argv, "v:c:")) > 0) {
+	while((opt = getopt(argc, argv, "v:c:u:")) > 0) {
 		switch(opt) {
 		case 'v':
 			vendor_id = optarg;
@@ -509,11 +512,15 @@ static int do_dhcp(int argc, char *argv[])
 		case 'c':
 			client_id = optarg;
 			break;
+		case 'u':
+			client_uuid = optarg;
+			break;
 		}
 	}
 
 	pr_debug("vendor_id: '%s'\n", vendor_id);
 	pr_debug("client_id: '%s'\n", client_id);
+	pr_debug("client_uuid: '%s'\n", client_uuid);
 
 	dhcp_con = net_udp_new(0xffffffff, PORT_BOOTPS, dhcp_handler, NULL);
 	if (IS_ERR(dhcp_con)) {
@@ -563,6 +570,10 @@ BAREBOX_CMD_HELP_OPT  ("-v <vendor_id>",
 BAREBOX_CMD_HELP_OPT  ("-c <client_id>",
 "DHCP Client ID (code 61) submitted in DHCP requests. It can\n"
 "be used in the DHCP server's configuration to select options\n"
+"(e.g. bootfile or server) which are valid for barebox clients only.\n")
+BAREBOX_CMD_HELP_OPT  ("-u <client_uuid>",
+"DHCP Client UUID (code 97) submitted in DHCP requests. It can\n"
+"be used in the DHCP server's configuration to select options\n"
 "(e.g. bootfile or server) which are valid for barebox clients only.\n");
 BAREBOX_CMD_HELP_END
 
@@ -578,6 +589,7 @@ BAREBOX_MAGICVAR(hostname, "hostname returned from DHCP request");
 BAREBOX_MAGICVAR(domainname, "domainname returned from DHCP request");
 BAREBOX_MAGICVAR(rootpath, "rootpath returned from DHCP request");
 BAREBOX_MAGICVAR(dhcp_vendor_id, "vendor id to send to the DHCP server");
+BAREBOX_MAGICVAR(dhcp_client_uuid, "cliend uuid to send to the DHCP server");
 BAREBOX_MAGICVAR(dhcp_client_id, "cliend id to send to the DHCP server");
 BAREBOX_MAGICVAR(tftp_server_name, "TFTP server Name returned from DHCP request");
 BAREBOX_MAGICVAR(tftp_server_ip, "TFTP server IP returned from DHCP request");
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
