Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo3.mail-out.ovh.net ([46.105.44.175]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SDTjh-00043K-2Q
 for barebox@lists.infradead.org; Fri, 30 Mar 2012 04:46:56 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 4ABDEFF8B2A
 for <barebox@lists.infradead.org>; Fri, 30 Mar 2012 06:47:21 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 30 Mar 2012 06:31:49 +0200
Message-Id: <1333081913-19168-4-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 4/8] net: dhcp: allow to set transmitted client id
To: barebox@lists.infradead.org

For net boot setups it is useful to submit boot params like server or
bootfile over dhcp. To distinguish diffrent type of OS running on the same hardware,
a custom vendor id can be sent in dhcp discover/request messages.

E.g. the ISC dhcp server can be configured with

 | class "at91sam9x5ek" {
 |         match if substring (option vendor-class-identifier,0,20) = "barebox-at91sam9x5ek";
 |
 |         filename "/tftpboot/atmel/at91sam9x5/sam9x5ek/zImage";
 |         if substring (option dhcp-client-identifier,0,7) = "ser2net" {
 |                 filename "/tftpboot/atmel/at91sam9x5/sam9x5ek/zImage-ser2net";
 |         }
 |         option tftp-server-name "192.168.200.98";
 |         option option-150 192.168.200.98;
 |         next-server 192.168.200.98;
 |         option root-path "192.168.200.98:/opt/work/buildroot/build/sam9x5/target";
 | }

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 net/dhcp.c |   54 ++++++++++++++++++++++++++++++++++++++++--------------
 1 files changed, 40 insertions(+), 14 deletions(-)

diff --git a/net/dhcp.c b/net/dhcp.c
index adfb4a0..8945587 100644
--- a/net/dhcp.c
+++ b/net/dhcp.c
@@ -75,6 +75,8 @@ static dhcp_state_t dhcp_state;
 static uint32_t dhcp_leasetime;
 static IPaddr_t net_dhcp_server_ip;
 static uint64_t dhcp_start;
+static char *client_id;
+static char *vendor_id;
 
 static int bootp_check_packet(unsigned char *pkt, unsigned src, unsigned len)
 {
@@ -125,15 +127,32 @@ static void bootp_copy_net_params(struct bootp *bp)
 	debug("bootfile: %s\n", bp->bp_file);
 }
 
+static int dhcp_set_string_options(u8 *e, int option, char* str)
+{
+	int str_len;
+
+	if (!str)
+		return 0;
+
+	str_len = strlen(str);
+	if (!str_len)
+		return 0;
+
+	*e++ = option;
+	*e++ = str_len;
+	memcpy(e, str, str_len);
+
+	return str_len + 2;
+}
+
 /*
  * Initialize BOOTP extension fields in the request.
  */
 static int dhcp_extended (u8 *e, int message_type, IPaddr_t ServerID,
-			  IPaddr_t RequestedIP, char *vendor_id)
+			  IPaddr_t RequestedIP)
 {
 	u8 *start = e;
 	u8 *cnt;
-	int vendor_id_len = vendor_id ? strlen(vendor_id) : 0;
 
 	*e++ = 99;		/* RFC1048 Magic Cookie */
 	*e++ = 130;
@@ -171,12 +190,8 @@ static int dhcp_extended (u8 *e, int message_type, IPaddr_t ServerID,
 		*e++ = tmp & 0xff;
 	}
 
-	if (vendor_id_len > 0) {
-		*e++ = 60;
-		*e++ = vendor_id_len;
-		memcpy(e, vendor_id, vendor_id_len);
-		 e  += vendor_id_len;
-	}
+	 e += dhcp_set_string_options(e, 60, vendor_id);
+	 e += dhcp_set_string_options(e, 61, client_id);
 
 	*e++ = 55;		/* Parameter Request List */
 	 cnt = e++;		/* Pointer to count of requested items */
@@ -237,8 +252,7 @@ static int bootp_request(void)
 		safe_strncpy (bp->bp_file, bfile, sizeof(bp->bp_file));
 
 	/* Request additional information from the BOOTP/DHCP server */
-	ext_len = dhcp_extended((u8 *)bp->bp_vend, DHCP_DISCOVER, 0, 0,
-				dhcp_con->priv);
+	ext_len = dhcp_extended((u8 *)bp->bp_vend, DHCP_DISCOVER, 0, 0);
 
 	Bootp_id = (uint32_t)get_time_ns();
 	net_copy_uint32(&bp->bp_id, &Bootp_id);
@@ -409,7 +423,7 @@ static void dhcp_send_request_packet(struct bootp *bp_offer)
 	 */
 	net_copy_ip(&OfferedIP, &bp->bp_yiaddr);
 	extlen = dhcp_extended((u8 *)bp->bp_vend, DHCP_REQUEST, net_dhcp_server_ip,
-				OfferedIP, dhcp_con->priv);
+				OfferedIP);
 
 	debug("Transmitting DHCPREQUEST packet\n");
 	net_udp_send(dhcp_con, sizeof(*bp) + extlen);
@@ -475,7 +489,8 @@ static void dhcp_handler(void *ctx, char *packet, unsigned int len)
 static int do_dhcp(int argc, char *argv[])
 {
 	int ret, opt;
-	char *vendor_id = (char*)getenv("dhcp_vendor_id");
+	vendor_id = (char*)getenv("dhcp_vendor_id");
+	client_id = (char*)getenv("dhcp_client_id");
 
 	setenv("bootfile","");
 	setenv("nameserver","");
@@ -486,15 +501,21 @@ static int do_dhcp(int argc, char *argv[])
 	setenv("tftp_server_ip","");
 	setenv("etherboot_file","");
 
-	while((opt = getopt(argc, argv, "v:")) > 0) {
+	while((opt = getopt(argc, argv, "v:c:")) > 0) {
 		switch(opt) {
 		case 'v':
 			vendor_id = optarg;
 			break;
+		case 'c':
+			client_id = optarg;
+			break;
 		}
 	}
 
-	dhcp_con = net_udp_new(0xffffffff, PORT_BOOTPS, dhcp_handler, vendor_id);
+	pr_debug("vendor_id: '%s'\n", vendor_id);
+	pr_debug("client_id: '%s'\n", client_id);
+
+	dhcp_con = net_udp_new(0xffffffff, PORT_BOOTPS, dhcp_handler, NULL);
 	if (IS_ERR(dhcp_con)) {
 		ret = PTR_ERR(dhcp_con);
 		goto out;
@@ -538,6 +559,10 @@ BAREBOX_CMD_HELP_SHORT("Invoke dhcp client to obtain ip/boot params.\n")
 BAREBOX_CMD_HELP_OPT  ("-v <vendor_id>",
 "DHCP Vendor ID (code 60) submitted in DHCP requests. It can\n"
 "be used in the DHCP server's configuration to select options\n"
+"(e.g. bootfile or server) which are valid for barebox clients only.\n")
+BAREBOX_CMD_HELP_OPT  ("-c <client_id>",
+"DHCP Client ID (code 61) submitted in DHCP requests. It can\n"
+"be used in the DHCP server's configuration to select options\n"
 "(e.g. bootfile or server) which are valid for barebox clients only.\n");
 BAREBOX_CMD_HELP_END
 
@@ -553,6 +578,7 @@ BAREBOX_MAGICVAR(hostname, "hostname returned from DHCP request");
 BAREBOX_MAGICVAR(domainname, "domainname returned from DHCP request");
 BAREBOX_MAGICVAR(rootpath, "rootpath returned from DHCP request");
 BAREBOX_MAGICVAR(dhcp_vendor_id, "vendor id to send to the DHCP server");
+BAREBOX_MAGICVAR(dhcp_client_id, "cliend id to send to the DHCP server");
 BAREBOX_MAGICVAR(tftp_server_name, "TFTP server Name returned from DHCP request");
 BAREBOX_MAGICVAR(tftp_server_ip, "TFTP server IP returned from DHCP request");
 BAREBOX_MAGICVAR(etherboot_file, "Etherboot File returned from DHCP request");
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
