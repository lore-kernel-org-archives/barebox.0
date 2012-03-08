Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo2.mail-out.ovh.net ([46.105.58.226]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1S5e6j-0003Ar-CK
 for barebox@lists.infradead.org; Thu, 08 Mar 2012 14:14:19 +0000
Received: from mail621.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 93E63DC824F
 for <barebox@lists.infradead.org>; Thu,  8 Mar 2012 15:17:22 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu,  8 Mar 2012 15:03:26 +0100
Message-Id: <1331215406-10548-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] net: dhcp: allow to set transmitted vendor id
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>

From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>

For net boot setups it is useful to submit boot params like server or
bootfile over dhcp. To distinguish barebox from e.g. pxe machines,
a custom vendor id can be sent in dhcp discover/request messages.

E.g. the ISC dhcp server can be configured with

| if substring(option vendor-class-identifier,0,8) = "barebox:" {
|       next-server             192.168.3.24;
|       server-name             "192.168.3.24";
|       option tftp-server-name "192.168.3.24";
|       option root-path = concat("/srv/sysroots/by-mac/",
|          binary-to-ascii (16, 8, "-", substring (hardware, 1, 6)));
| }

to sent boot params which are valid for barebox hosts only.

Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Jean-Christophe PLAGNIOL-VILLARD:
 - update the use dhcp command option
 - support to set the vendor via env dhcp_vendor_id
Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 defaultenv/config |    1 +
 net/dhcp.c        |   42 +++++++++++++++++++++++++++++++++++++-----
 2 files changed, 38 insertions(+), 5 deletions(-)

diff --git a/defaultenv/config b/defaultenv/config
index 9866273..63fc059 100644
--- a/defaultenv/config
+++ b/defaultenv/config
@@ -9,6 +9,7 @@ machine=FIXME
 # use 'dhcp' to do dhcp in barebox and in kernel
 # use 'none' if you want to skip kernel ip autoconfiguration
 ip=dhcp
+dhcp_vendor_id=barebox
 
 # or set your networking parameters here
 #eth0.ipaddr=a.b.c.d
diff --git a/net/dhcp.c b/net/dhcp.c
index d86f9a9..53eed6c 100644
--- a/net/dhcp.c
+++ b/net/dhcp.c
@@ -17,6 +17,7 @@
 #include <errno.h>
 #include <magicvar.h>
 #include <linux/err.h>
+#include <getopt.h>
 
 #define OPT_SIZE 312	/* Minimum DHCP Options size per RFC2131 - results in 576 byte pkt */
 
@@ -127,10 +128,12 @@ static void bootp_copy_net_params(struct bootp *bp)
 /*
  * Initialize BOOTP extension fields in the request.
  */
-static int dhcp_extended (u8 *e, int message_type, IPaddr_t ServerID, IPaddr_t RequestedIP)
+static int dhcp_extended (u8 *e, int message_type, IPaddr_t ServerID,
+			  IPaddr_t RequestedIP, char *vendor_id)
 {
 	u8 *start = e;
 	u8 *cnt;
+	int vendor_id_len = vendor_id ? strlen(vendor_id) : 0;
 
 	*e++ = 99;		/* RFC1048 Magic Cookie */
 	*e++ = 130;
@@ -168,6 +171,13 @@ static int dhcp_extended (u8 *e, int message_type, IPaddr_t ServerID, IPaddr_t R
 		*e++ = tmp & 0xff;
 	}
 
+	if (vendor_id_len > 0) {
+		*e++ = 60;
+		*e++ = vendor_id_len;
+		memcpy(e, vendor_id, vendor_id_len);
+		 e  += vendor_id_len;
+	}
+
 	*e++ = 55;		/* Parameter Request List */
 	 cnt = e++;		/* Pointer to count of requested items */
 	*cnt = 0;
@@ -223,7 +233,8 @@ static int bootp_request(void)
 		safe_strncpy (bp->bp_file, bfile, sizeof(bp->bp_file));
 
 	/* Request additional information from the BOOTP/DHCP server */
-	ext_len = dhcp_extended((u8 *)bp->bp_vend, DHCP_DISCOVER, 0, 0);
+	ext_len = dhcp_extended((u8 *)bp->bp_vend, DHCP_DISCOVER, 0, 0,
+				dhcp_con->priv);
 
 	Bootp_id = (uint32_t)get_time_ns();
 	net_copy_uint32(&bp->bp_id, &Bootp_id);
@@ -373,7 +384,8 @@ static void dhcp_send_request_packet(struct bootp *bp_offer)
 	 * Copy options from OFFER packet if present
 	 */
 	net_copy_ip(&OfferedIP, &bp->bp_yiaddr);
-	extlen = dhcp_extended((u8 *)bp->bp_vend, DHCP_REQUEST, net_dhcp_server_ip, OfferedIP);
+	extlen = dhcp_extended((u8 *)bp->bp_vend, DHCP_REQUEST, net_dhcp_server_ip,
+				OfferedIP, dhcp_con->priv);
 
 	debug("Transmitting DHCPREQUEST packet\n");
 	net_udp_send(dhcp_con, sizeof(*bp) + extlen);
@@ -438,9 +450,18 @@ static void dhcp_handler(void *ctx, char *packet, unsigned int len)
 
 static int do_dhcp(int argc, char *argv[])
 {
-	int ret;
+	int ret, opt;
+	char *vendor_id = (char*)getenv("dhcp_vendor_id");
+
+	while((opt = getopt(argc, argv, "v:")) > 0) {
+		switch(opt) {
+		case 'v':
+			vendor_id = optarg;
+			break;
+		}
+	}
 
-	dhcp_con = net_udp_new(0xffffffff, PORT_BOOTPS, dhcp_handler, NULL);
+	dhcp_con = net_udp_new(0xffffffff, PORT_BOOTPS, dhcp_handler, vendor_id);
 	if (IS_ERR(dhcp_con)) {
 		ret = PTR_ERR(dhcp_con);
 		goto out;
@@ -478,9 +499,19 @@ out:
 	return ret ? 1 : 0;
 }
 
+BAREBOX_CMD_HELP_START(dhcp)
+BAREBOX_CMD_HELP_USAGE("dhcp [OPTIONS]\n")
+BAREBOX_CMD_HELP_SHORT("Invoke dhcp client to obtain ip/boot params.\n")
+BAREBOX_CMD_HELP_OPT  ("-v <vendor_id>",
+"DHCP Vendor ID (code 60) submitted in DHCP requests. It can\n"
+"be used in the DHCP server's configuration to select options\n"
+"(e.g. bootfile or server) which are valid for barebox clients only.\n");
+BAREBOX_CMD_HELP_END
+
 BAREBOX_CMD_START(dhcp)
 	.cmd		= do_dhcp,
 	.usage		= "invoke dhcp client to obtain ip/boot params",
+	BAREBOX_CMD_HELP(cmd_dhcp_help)
 BAREBOX_CMD_END
 
 BAREBOX_MAGICVAR(bootfile, "bootfile returned from DHCP request");
@@ -488,3 +519,4 @@ BAREBOX_MAGICVAR(nameserver, "Nameserver returned from DHCP request");
 BAREBOX_MAGICVAR(hostname, "hostname returned from DHCP request");
 BAREBOX_MAGICVAR(domainname, "domainname returned from DHCP request");
 BAREBOX_MAGICVAR(rootpath, "rootpath returned from DHCP request");
+BAREBOX_MAGICVAR(dhcp_vendor_id, "vendor id to send to the DHCP server");
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
