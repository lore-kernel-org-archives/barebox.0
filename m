Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 13.mo3.mail-out.ovh.net ([188.165.33.202]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SEiLM-00007A-SY
 for barebox@lists.infradead.org; Mon, 02 Apr 2012 14:34:54 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 6A27BFF99C9
 for <barebox@lists.infradead.org>; Mon,  2 Apr 2012 16:35:29 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon,  2 Apr 2012 16:19:06 +0200
Message-Id: <1333376350-19506-4-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 4/8] net: dhcp: factorise setting option code
To: barebox@lists.infradead.org

This will allow to add more easly new option with less impact in the binary.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 net/dhcp.c |  121 +++++++++++++++++++++++++++++++++++++++++++-----------------
 1 files changed, 87 insertions(+), 34 deletions(-)

diff --git a/net/dhcp.c b/net/dhcp.c
index 12df542..7d01d4b 100644
--- a/net/dhcp.c
+++ b/net/dhcp.c
@@ -227,6 +227,79 @@ struct dhcp_opt dhcp_options[] = {
 	},
 };
 
+struct dhcp_param {
+	unsigned char option;
+	const char *barebox_var_name;
+	int (*handle)(struct dhcp_param *param, u8 *e);
+	void *data;
+};
+
+static int dhcp_set_string_options(struct dhcp_param *param, u8 *e)
+{
+	int str_len;
+	char* str = param->data;
+
+	if (!str && param->barebox_var_name)
+		str = (char*)getenv(param->barebox_var_name);
+
+	if (!str)
+		return 0;
+
+	str_len = strlen(str);
+	if (!str_len)
+		return 0;
+
+	*e++ = param->option;
+	*e++ = str_len;
+	memcpy(e, str, str_len);
+
+	return str_len + 2;
+}
+
+#define DHCP_VENDOR_ID		60
+
+struct dhcp_param dhcp_params[] = {
+	{
+		.option = DHCP_VENDOR_ID,
+		.handle = dhcp_set_string_options,
+		.barebox_var_name = "dhcp_vendor_id",
+	}
+};
+
+static void dhcp_set_param_data(int option, void* data)
+{
+	struct dhcp_param *param;
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(dhcp_params); i++) {
+		param = &dhcp_params[i];
+
+		if (param->option == option) {
+			param->data = data;
+			return;
+		}
+	}
+}
+
+static int dhcp_set_ip_options(int option, u8 *e, IPaddr_t ip)
+{
+	int tmp;
+
+	if (!ip)
+		return 0;
+
+	tmp = ntohl(ip);
+
+	*e++ = option;
+	*e++ = 4;
+	*e++ = tmp >> 24;
+	*e++ = tmp >> 16;
+	*e++ = tmp >> 8;
+	*e++ = tmp & 0xff;
+
+	return 6;
+}
+
 static int bootp_check_packet(unsigned char *pkt, unsigned src, unsigned len)
 {
 	struct bootp *bp = (struct bootp *) pkt;
@@ -280,12 +353,11 @@ static void bootp_copy_net_params(struct bootp *bp)
  * Initialize BOOTP extension fields in the request.
  */
 static int dhcp_extended (u8 *e, int message_type, IPaddr_t ServerID,
-			  IPaddr_t RequestedIP, char *vendor_id)
+			  IPaddr_t RequestedIP)
 {
 	int i;
 	u8 *start = e;
 	u8 *cnt;
-	int vendor_id_len = vendor_id ? strlen(vendor_id) : 0;
 
 	*e++ = 99;		/* RFC1048 Magic Cookie */
 	*e++ = 130;
@@ -301,34 +373,12 @@ static int dhcp_extended (u8 *e, int message_type, IPaddr_t ServerID,
 	*e++ = (576 - 312 + OPT_SIZE) >> 8;
 	*e++ = (576 - 312 + OPT_SIZE) & 0xff;
 
-	if (ServerID) {
-		int tmp = ntohl (ServerID);
-
-		*e++ = 54;	/* ServerID */
-		*e++ = 4;
-		*e++ = tmp >> 24;
-		*e++ = tmp >> 16;
-		*e++ = tmp >> 8;
-		*e++ = tmp & 0xff;
-	}
 
-	if (RequestedIP) {
-		int tmp = ntohl (RequestedIP);
+	e += dhcp_set_ip_options(50, e, RequestedIP);
+	e += dhcp_set_ip_options(54, e, ServerID);
 
-		*e++ = 50;	/* Requested IP */
-		*e++ = 4;
-		*e++ = tmp >> 24;
-		*e++ = tmp >> 16;
-		*e++ = tmp >> 8;
-		*e++ = tmp & 0xff;
-	}
-
-	if (vendor_id_len > 0) {
-		*e++ = 60;
-		*e++ = vendor_id_len;
-		memcpy(e, vendor_id, vendor_id_len);
-		 e  += vendor_id_len;
-	}
+	for (i = 0; i < ARRAY_SIZE(dhcp_params); i++)
+		e += dhcp_params[i].handle(&dhcp_params[i], e);
 
 	*e++ = 55;		/* Parameter Request List */
 	 cnt = e++;		/* Pointer to count of requested items */
@@ -380,8 +430,7 @@ static int bootp_request(void)
 		safe_strncpy (bp->bp_file, bfile, sizeof(bp->bp_file));
 
 	/* Request additional information from the BOOTP/DHCP server */
-	ext_len = dhcp_extended((u8 *)bp->bp_vend, DHCP_DISCOVER, 0, 0,
-				dhcp_con->priv);
+	ext_len = dhcp_extended((u8 *)bp->bp_vend, DHCP_DISCOVER, 0, 0);
 
 	Bootp_id = (uint32_t)get_time_ns();
 	net_copy_uint32(&bp->bp_id, &Bootp_id);
@@ -486,7 +535,7 @@ static void dhcp_send_request_packet(struct bootp *bp_offer)
 	 */
 	net_copy_ip(&OfferedIP, &bp->bp_yiaddr);
 	extlen = dhcp_extended((u8 *)bp->bp_vend, DHCP_REQUEST, net_dhcp_server_ip,
-				OfferedIP, dhcp_con->priv);
+				OfferedIP);
 
 	debug("Transmitting DHCPREQUEST packet\n");
 	net_udp_send(dhcp_con, sizeof(*bp) + extlen);
@@ -566,19 +615,18 @@ static void dhcp_reset_env(void)
 static int do_dhcp(int argc, char *argv[])
 {
 	int ret, opt;
-	char *vendor_id = (char*)getenv("dhcp_vendor_id");
 
 	dhcp_reset_env();
 
 	while((opt = getopt(argc, argv, "v:")) > 0) {
 		switch(opt) {
 		case 'v':
-			vendor_id = optarg;
+			dhcp_set_param_data(DHCP_VENDOR_ID, optarg);
 			break;
 		}
 	}
 
-	dhcp_con = net_udp_new(0xffffffff, PORT_BOOTPS, dhcp_handler, vendor_id);
+	dhcp_con = net_udp_new(0xffffffff, PORT_BOOTPS, dhcp_handler, NULL);
 	if (IS_ERR(dhcp_con)) {
 		ret = PTR_ERR(dhcp_con);
 		goto out;
@@ -622,6 +670,10 @@ BAREBOX_CMD_HELP_SHORT("Invoke dhcp client to obtain ip/boot params.\n")
 BAREBOX_CMD_HELP_OPT  ("-v <vendor_id>",
 "DHCP Vendor ID (code 60) submitted in DHCP requests. It can\n"
 "be used in the DHCP server's configuration to select options\n"
+"(e.g. bootfile or server) which are valid for barebox clients only.\n")
+BAREBOX_CMD_HELP_OPT  ("-c <client_id>",
+"DHCP Client ID (code 61) submitted in DHCP requests. It can\n"
+"be used in the DHCP server's configuration to select options\n"
 "(e.g. bootfile or server) which are valid for barebox clients only.\n");
 BAREBOX_CMD_HELP_END
 
@@ -637,4 +689,5 @@ BAREBOX_MAGICVAR(hostname, "hostname returned from DHCP request");
 BAREBOX_MAGICVAR(domainname, "domainname returned from DHCP request");
 BAREBOX_MAGICVAR(rootpath, "rootpath returned from DHCP request");
 BAREBOX_MAGICVAR(dhcp_vendor_id, "vendor id to send to the DHCP server");
+BAREBOX_MAGICVAR(dhcp_client_id, "cliend id to send to the DHCP server");
 BAREBOX_MAGICVAR(dhcp_tftp_server_name, "TFTP server Name returned from DHCP request");
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
