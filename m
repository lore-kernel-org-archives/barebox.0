Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 17.mo3.mail-out.ovh.net ([87.98.178.58]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SEiLJ-00005q-A0
 for barebox@lists.infradead.org; Mon, 02 Apr 2012 14:34:50 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id A40ACFF993E
 for <barebox@lists.infradead.org>; Mon,  2 Apr 2012 16:35:26 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon,  2 Apr 2012 16:19:03 +0200
Message-Id: <1333376350-19506-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/8] net: dhcp: factorise option recption handling
To: barebox@lists.infradead.org

Instead of using a static switch case the handle the received option
use an array of supported option.

This will allow to unset the env var without duplicating the code.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 net/dhcp.c |  264 ++++++++++++++++++++++++++++++++++++++++--------------------
 1 files changed, 176 insertions(+), 88 deletions(-)

diff --git a/net/dhcp.c b/net/dhcp.c
index 53eed6c..3b035d7 100644
--- a/net/dhcp.c
+++ b/net/dhcp.c
@@ -76,6 +76,147 @@ static uint32_t dhcp_leasetime;
 static IPaddr_t net_dhcp_server_ip;
 static uint64_t dhcp_start;
 
+struct dhcp_opt {
+	unsigned char option;
+	const char *barebox_var_name;
+	void (*handle)(struct dhcp_opt *opt, unsigned char *data, int tlen);
+	void *data;
+
+	/* request automatically the option when creating the DHCP request */
+	bool optinal;
+
+	struct bootp *bp;
+};
+
+static void netmask_handle(struct dhcp_opt *opt, unsigned char *popt, int optlen)
+{
+	IPaddr_t ip;
+
+	ip = net_read_ip(popt);
+	net_set_netmask(ip);
+}
+
+static void gateway_handle(struct dhcp_opt *opt, unsigned char *popt, int optlen)
+{
+	IPaddr_t ip;
+
+	ip = net_read_ip(popt);
+	net_set_gateway(ip);
+}
+
+static void env_ip_handle(struct dhcp_opt *opt, unsigned char *popt, int optlen)
+{
+	IPaddr_t ip;
+
+	if (!opt->barebox_var_name) {
+		pr_err("dhcp: %s: option %d no barebox_var_name set\n",
+		       __func__, opt->option);
+		return;
+	}
+
+	ip = net_read_ip(popt);
+	setenv_ip(opt->barebox_var_name, ip);
+}
+
+static void env_str_handle(struct dhcp_opt *opt, unsigned char *popt, int optlen)
+{
+	char str[256];
+
+	if (!opt->barebox_var_name) {
+		pr_err("dhcp: %s: option %d no barebox_var_name set\n",
+		       __func__, opt->option);
+		return;
+	}
+
+	memcpy(str, popt, optlen);
+	str[optlen] = 0;
+	setenv(opt->barebox_var_name, str);
+}
+
+static void copy_uint32_handle(struct dhcp_opt *opt, unsigned char *popt, int optlen)
+{
+	if (!opt->data) {
+		pr_err("dhcp: %s: option %d no data set\n", __func__, opt->option);
+		return;
+	}
+
+	net_copy_uint32(opt->data, (uint32_t *)popt);
+};
+
+static void copy_ip_handle(struct dhcp_opt *opt, unsigned char *popt, int optlen)
+{
+	if (!opt->data) {
+		pr_err("dhcp: %s: option %d no data set\n", __func__, opt->option);
+		return;
+	}
+
+	net_copy_ip(opt->data, popt);
+};
+
+static void bootfile_vendorex_handle(struct dhcp_opt *opt, unsigned char *popt, int optlen)
+{
+	if (opt->bp->bp_file[0] != '\0')
+		return;
+
+	/*
+	 * only use vendor boot file if we didn't
+	 * receive a boot file in the main non-vendor
+	 * part of the packet - god only knows why
+	 * some vendors chose not to use this perfectly
+	 * good spot to store the boot file (join on
+	 * Tru64 Unix) it seems mind bogglingly crazy
+	 * to me
+	 */
+	pr_warn("*** WARNING: using vendor optional boot file\n");
+
+	/*
+	 * I can't use dhcp_vendorex_proc here because I need
+	 * to write into the bootp packet - even then I had to
+	 * pass the bootp packet pointer into here as the
+	 * second arg
+	 */
+	env_str_handle(opt, popt, optlen);
+}
+
+struct dhcp_opt dhcp_options[] = {
+	{
+		.option = 1,
+		.handle = netmask_handle,
+	}, {
+		.option = 3,
+		.handle = gateway_handle,
+	}, {
+		.option = 6,
+		.handle = env_ip_handle,
+		.barebox_var_name = "nameserver",
+	}, {
+		.option = 12,
+		.handle = env_str_handle,
+		.barebox_var_name = "hostname",
+	}, {
+		.option = 15,
+		.handle = env_str_handle,
+		.barebox_var_name = "domainname",
+	}, {
+		.option = 17,
+		.handle = env_str_handle,
+		.barebox_var_name = "rootpath",
+	}, {
+		.option = 51,
+		.handle = copy_uint32_handle,
+		.data = &dhcp_leasetime,
+	}, {
+		.option = 54,
+		.handle = copy_ip_handle,
+		.data = &net_dhcp_server_ip,
+		.optinal = true,
+	}, {
+		.option = 67,
+		.handle = bootfile_vendorex_handle,
+		.barebox_var_name = "bootfile",
+	},
+};
+
 static int bootp_check_packet(unsigned char *pkt, unsigned src, unsigned len)
 {
 	struct bootp *bp = (struct bootp *) pkt;
@@ -131,6 +272,7 @@ static void bootp_copy_net_params(struct bootp *bp)
 static int dhcp_extended (u8 *e, int message_type, IPaddr_t ServerID,
 			  IPaddr_t RequestedIP, char *vendor_id)
 {
+	int i;
 	u8 *start = e;
 	u8 *cnt;
 	int vendor_id_len = vendor_id ? strlen(vendor_id) : 0;
@@ -181,18 +323,13 @@ static int dhcp_extended (u8 *e, int message_type, IPaddr_t ServerID,
 	*e++ = 55;		/* Parameter Request List */
 	 cnt = e++;		/* Pointer to count of requested items */
 	*cnt = 0;
-	*e++  = 1;		/* Subnet Mask */
-	*cnt += 1;
-	*e++  = 3;		/* Router Option */
-	*cnt += 1;
-	*e++  = 6;		/* DNS Server(s) */
-	*cnt += 1;
-	*e++  = 12;		/* Hostname */
-	*cnt += 1;
-	*e++  = 15;		/* domain name */
-	*cnt += 1;
-	*e++  = 17;		/* Boot path */
-	*cnt += 1;
+
+	for (i = 0; i < ARRAY_SIZE(dhcp_options); i++) {
+		if (dhcp_options[i].optinal)
+			continue;
+		*e++  = dhcp_options[i].option;
+		*cnt += 1;
+	}
 	*e++  = 255;		/* End of the list */
 
 	/* Pad to minimal length */
@@ -246,89 +383,40 @@ static int bootp_request(void)
 	return ret;
 }
 
+static int dhcp_options_handle(unsigned char option, unsigned char *popt,
+			       int optlen, struct bootp *bp)
+{
+	int i;
+	struct dhcp_opt *opt;
+
+	for (i = 0; i < ARRAY_SIZE(dhcp_options); i++) {
+		opt = &dhcp_options[i];
+		if (opt->option == option) {
+			opt->bp = bp;
+			opt->handle(opt, popt, optlen);
+			goto end;
+		}
+	}
+
+end:
+	return i;
+}
+
 static void dhcp_options_process(unsigned char *popt, struct bootp *bp)
 {
 	unsigned char *end = popt + sizeof(*bp) + OPT_SIZE;
 	int oplen;
-	IPaddr_t ip;
-	char str[256];
+	unsigned char option;
+	int i;
 
 	while (popt < end && *popt != 0xff) {
 		oplen = *(popt + 1);
-		switch (*popt) {
-		case 1:
-			ip = net_read_ip(popt + 2);
-			net_set_netmask(ip);
-			break;
-		case 3:
-			ip = net_read_ip(popt + 2);
-			net_set_gateway(ip);
-			break;
-		case 6:
-			ip = net_read_ip(popt + 2);
-			setenv_ip("nameserver", ip);
-			break;
-		case 12:
-			memcpy(str, popt + 2, oplen);
-			str[oplen] = 0;
-			setenv("hostname", str);
-			break;
-		case 15:
-			memcpy(str, popt + 2, oplen);
-			str[oplen] = 0;
-			setenv("domainname", str);
-			break;
-		case 17:
-			memcpy(str, popt + 2, oplen);
-			str[oplen] = 0;
-			setenv("rootpath", str);
-			break;
-		case 51:
-			net_copy_uint32 (&dhcp_leasetime, (uint32_t *)(popt + 2));
-			break;
-		case 53:	/* Ignore Message Type Option */
-			break;
-		case 54:
-			net_copy_ip(&net_dhcp_server_ip, (popt + 2));
-			break;
-		case 58:	/* Ignore Renewal Time Option */
-			break;
-		case 59:	/* Ignore Rebinding Time Option */
-			break;
-		case 66:	/* Ignore TFTP server name */
-			break;
-		case 67:	/* vendor opt bootfile */
-			/*
-			 * I can't use dhcp_vendorex_proc here because I need
-			 * to write into the bootp packet - even then I had to
-			 * pass the bootp packet pointer into here as the
-			 * second arg
-			 */
-			memcpy(str, popt + 2, oplen);
-			str[oplen] = 0;
-			if (bp->bp_file[0] == '\0') {
-				/*
-				 * only use vendor boot file if we didn't
-				 * receive a boot file in the main non-vendor
-				 * part of the packet - god only knows why
-				 * some vendors chose not to use this perfectly
-				 * good spot to store the boot file (join on
-				 * Tru64 Unix) it seems mind bogglingly crazy
-				 * to me
-				 */
-				printf("*** WARNING: using vendor "
-					"optional boot file\n");
-					setenv("bootfile", str);
-			}
-			break;
-		default:
-#ifdef CONFIG_BOOTP_VENDOREX
-			if (dhcp_vendorex_proc (popt))
-				break;
-#endif
-			debug("*** Unhandled DHCP Option in OFFER/ACK: %d\n", *popt);
-			break;
-		}
+		option = *popt;
+
+		i = dhcp_options_handle(option, popt + 2, oplen, bp);
+		if (i == ARRAY_SIZE(dhcp_options))
+			debug("*** Unhandled DHCP Option in OFFER/ACK: %d\n", option);
+
 		popt += oplen + 2;	/* Process next option */
 	}
 }
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
