Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 16.mo3.mail-out.ovh.net ([188.165.56.217]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SEiLM-00006i-1D
 for barebox@lists.infradead.org; Mon, 02 Apr 2012 14:34:53 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id ACA69FF946C
 for <barebox@lists.infradead.org>; Mon,  2 Apr 2012 16:35:28 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon,  2 Apr 2012 16:19:05 +0200
Message-Id: <1333376350-19506-3-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/8] net: dhcp: add support of tftp name server
To: barebox@lists.infradead.org

if the DNS is enable resolve it. The server ip will be set if no server ip it
is set in the bootp.
Export it via env dhcp_tftp_server_name.

E.g. the ISC dhcp server can be configured with

   | class "at91sam9x5ek" {
   |         match if substring (option vendor-class-identifier,0,20) = "barebox-at91sam9x
   |
   |         filename "/tftpboot/atmel/at91sam9x5/sam9x5ek/zImage";
   |         option tftp-server-name "192.168.200.98";
   |         option root-path "192.168.200.98:/opt/work/buildroot/build/sam9x5/target";
   |         }
   | }

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 net/dhcp.c |   20 +++++++++++++++++---
 1 files changed, 17 insertions(+), 3 deletions(-)

diff --git a/net/dhcp.c b/net/dhcp.c
index 3c48aaa..12df542 100644
--- a/net/dhcp.c
+++ b/net/dhcp.c
@@ -75,6 +75,7 @@ static dhcp_state_t dhcp_state;
 static uint32_t dhcp_leasetime;
 static IPaddr_t net_dhcp_server_ip;
 static uint64_t dhcp_start;
+static char dhcp_tftpname[256];
 
 struct dhcp_opt {
 	unsigned char option;
@@ -121,6 +122,7 @@ static void env_ip_handle(struct dhcp_opt *opt, unsigned char *popt, int optlen)
 static void env_str_handle(struct dhcp_opt *opt, unsigned char *popt, int optlen)
 {
 	char str[256];
+	char *tmp = str;
 
 	if (!opt->barebox_var_name) {
 		pr_err("dhcp: %s: option %d no barebox_var_name set\n",
@@ -128,9 +130,12 @@ static void env_str_handle(struct dhcp_opt *opt, unsigned char *popt, int optlen
 		return;
 	}
 
-	memcpy(str, popt, optlen);
-	str[optlen] = 0;
-	setenv(opt->barebox_var_name, str);
+	if (opt->data)
+		tmp = opt->data;
+
+	memcpy(tmp, popt, optlen);
+	tmp[optlen] = 0;
+	setenv(opt->barebox_var_name, tmp);
 }
 
 static void copy_uint32_handle(struct dhcp_opt *opt, unsigned char *popt, int optlen)
@@ -211,6 +216,11 @@ struct dhcp_opt dhcp_options[] = {
 		.data = &net_dhcp_server_ip,
 		.optinal = true,
 	}, {
+		.option = 66,
+		.handle = env_str_handle,
+		.barebox_var_name = "dhcp_tftp_server_name",
+		.data = dhcp_tftpname,
+	}, {
 		.option = 67,
 		.handle = bootfile_vendorex_handle,
 		.barebox_var_name = "bootfile",
@@ -419,6 +429,9 @@ static void dhcp_options_process(unsigned char *popt, struct bootp *bp)
 
 		popt += oplen + 2;	/* Process next option */
 	}
+
+	if (dhcp_tftpname[0] != 0)
+		net_set_serverip(resolv(dhcp_tftpname));
 }
 
 static int dhcp_message_type(unsigned char *popt)
@@ -624,3 +637,4 @@ BAREBOX_MAGICVAR(hostname, "hostname returned from DHCP request");
 BAREBOX_MAGICVAR(domainname, "domainname returned from DHCP request");
 BAREBOX_MAGICVAR(rootpath, "rootpath returned from DHCP request");
 BAREBOX_MAGICVAR(dhcp_vendor_id, "vendor id to send to the DHCP server");
+BAREBOX_MAGICVAR(dhcp_tftp_server_name, "TFTP server Name returned from DHCP request");
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
