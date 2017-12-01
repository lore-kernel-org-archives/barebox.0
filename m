Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eKjPe-0003oA-D9
 for barebox@lists.infradead.ORG; Fri, 01 Dec 2017 11:23:40 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  1 Dec 2017 12:22:44 +0100
Message-Id: <20171201112256.20196-16-s.hauer@pengutronix.de>
In-Reply-To: <20171201112256.20196-1-s.hauer@pengutronix.de>
References: <20171201112256.20196-1-s.hauer@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 15/27] net: dhcp: rework
To: Barebox List <barebox@lists.infradead.org>

The DHCP code is a mess. It is not clear which options are sent to the
server and which options are returned from the server. Also environment
variables are read from and written to all over the place.

This patch cleans this up. There now is struct dhcp_req_param which is
used for options sent to the server and struct dhcp_result which contains
the values sent from the server. The values from the server are written
to the barebox variables in a single place. Also it's now possible to
call the dhcp code without modifying barebox variables at all, storing
the result only in the dhcp result struct.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/dhcp.c |  15 +-
 include/dhcp.h  |  22 ++-
 net/dhcp.c      | 532 ++++++++++++++++++++++----------------------------------
 3 files changed, 234 insertions(+), 335 deletions(-)

diff --git a/commands/dhcp.c b/commands/dhcp.c
index ce4a78830d..1f07b2f2ce 100644
--- a/commands/dhcp.c
+++ b/commands/dhcp.c
@@ -20,14 +20,10 @@
 static int do_dhcp(int argc, char *argv[])
 {
 	int ret, opt;
-	int retries = DHCP_DEFAULT_RETRY;
-	struct dhcp_req_param dhcp_param;
+	struct dhcp_req_param dhcp_param = {};
 	struct eth_device *edev;
 	const char *edevname;
 
-	memset(&dhcp_param, 0, sizeof(struct dhcp_req_param));
-	getenv_uint("global.dhcp.retries", &retries);
-
 	while ((opt = getopt(argc, argv, "H:v:c:u:U:r:")) > 0) {
 		switch (opt) {
 		case 'H':
@@ -46,7 +42,7 @@ static int do_dhcp(int argc, char *argv[])
 			dhcp_param.user_class = optarg;
 			break;
 		case 'r':
-			retries = simple_strtoul(optarg, NULL, 10);
+			dhcp_param.retries = simple_strtoul(optarg, NULL, 10);
 			break;
 		default:
 			return COMMAND_ERROR_USAGE;
@@ -64,12 +60,7 @@ static int do_dhcp(int argc, char *argv[])
 		return 1;
 	}
 
-	if (!retries) {
-		printf("retries is set to zero, set it to %d\n", DHCP_DEFAULT_RETRY);
-		retries = DHCP_DEFAULT_RETRY;
-	}
-
-	ret = dhcp(edev, retries, &dhcp_param);
+	ret = dhcp(edev, &dhcp_param);
 
 	return ret;
 }
diff --git a/include/dhcp.h b/include/dhcp.h
index 20a523250f..0977ff42da 100644
--- a/include/dhcp.h
+++ b/include/dhcp.h
@@ -18,10 +18,30 @@ struct dhcp_req_param {
 	char *client_id;
 	char *user_class;
 	char *client_uuid;
+	int retries;
+};
+
+struct dhcp_result {
+	IPaddr_t ip;
+	IPaddr_t netmask;
+	IPaddr_t gateway;
+	IPaddr_t nameserver;
+	IPaddr_t serverip;
+	char *hostname;
+	char *domainname;
+	char *rootpath;
+	char *devicetree;
+	char *bootfile;
+	char *tftp_server_name;
+	uint32_t leasetime;
 };
 
 struct eth_device;
 
-int dhcp(struct eth_device *edev, int retries, struct dhcp_req_param *param);
+int dhcp_request(struct eth_device *edev, const struct dhcp_req_param *param,
+		 struct dhcp_result **res);
+int dhcp_set_result(struct eth_device *edev, struct dhcp_result *res);
+void dhcp_result_free(struct dhcp_result *res);
+int dhcp(struct eth_device *edev, const struct dhcp_req_param *param);
 
 #endif
diff --git a/net/dhcp.c b/net/dhcp.c
index 08eb407d22..76dab5ef55 100644
--- a/net/dhcp.c
+++ b/net/dhcp.c
@@ -76,244 +76,30 @@ typedef enum {
 
 static uint32_t Bootp_id;
 static dhcp_state_t dhcp_state;
-static uint32_t dhcp_leasetime;
 static IPaddr_t net_dhcp_server_ip;
 static uint64_t dhcp_start;
 static struct eth_device *dhcp_edev;
-static char dhcp_tftpname[256];
-
-static const char* dhcp_get_barebox_global(const char * var)
-{
-	char * var_global = basprintf("global.dhcp.%s", var);
-	const char *val;
-
-	if (!var_global)
-		return NULL;
-
-	val = getenv(var_global);
-	free(var_global);
-	return val;
-}
-
-static int dhcp_set_barebox_global(const char * var, char *val)
-{
-	char * var_global = basprintf("global.dhcp.%s", var);
-	int ret;
-
-	if (!var_global)
-		return -ENOMEM;
-
-	ret = setenv(var_global, val);
-	free(var_global);
-	return ret;
-}
-
-struct dhcp_opt {
-	unsigned char option;
-	/* request automatically the option when creating the DHCP request */
-	bool optional;
-	bool copy_only_if_valid;
-	const char *barebox_var_name;
-	const char *barebox_dhcp_global;
-	void (*handle)(struct dhcp_opt *opt, unsigned char *data, int tlen);
-	int (*handle_param)(struct dhcp_opt *dhcp_opt, u8 *e);
-	void *data;
-
-	struct bootp *bp;
+struct dhcp_req_param dhcp_param;
+struct dhcp_result *dhcp_result;
+
+struct dhcp_receivce_opts {
+	IPaddr_t netmask;
+	IPaddr_t gateway;
+	IPaddr_t nameserver;
+	IPaddr_t serverip;
+	char *hostname;
+	char *domainname;
+	char *rootpath;
+	char *devicetree;
+	char *bootfile;
 };
 
-static void netmask_handle(struct dhcp_opt *opt, unsigned char *popt, int optlen)
-{
-	IPaddr_t ip;
-
-	ip = net_read_ip(popt);
-	net_set_netmask(dhcp_edev, ip);
-}
-
-static void gateway_handle(struct dhcp_opt *opt, unsigned char *popt, int optlen)
-{
-	IPaddr_t ip;
-
-	ip = net_read_ip(popt);
-	net_set_gateway(ip);
-}
-
-static void env_ip_handle(struct dhcp_opt *opt, unsigned char *popt, int optlen)
-{
-	IPaddr_t ip;
-
-	ip = net_read_ip(popt);
-	if (IS_ENABLED(CONFIG_ENVIRONMENT_VARIABLES))
-		setenv_ip(opt->barebox_var_name, ip);
-}
-
-static void env_str_handle(struct dhcp_opt *opt, unsigned char *popt, int optlen)
-{
-	char str[256];
-	char *tmp = str;
-
-	if (opt->data)
-		tmp = opt->data;
-
-	memcpy(tmp, popt, optlen);
-	tmp[optlen] = 0;
-
-	if (opt->copy_only_if_valid && !strlen(tmp))
-		return;
-	if (opt->barebox_var_name && IS_ENABLED(CONFIG_ENVIRONMENT_VARIABLES))
-		setenv(opt->barebox_var_name, tmp);
-	if (opt->barebox_dhcp_global && IS_ENABLED(CONFIG_GLOBALVAR))
-		dhcp_set_barebox_global(opt->barebox_dhcp_global, tmp);
-
-}
-
-static void copy_uint32_handle(struct dhcp_opt *opt, unsigned char *popt, int optlen)
-{
-	net_copy_uint32(opt->data, (uint32_t *)popt);
-};
-
-static void copy_ip_handle(struct dhcp_opt *opt, unsigned char *popt, int optlen)
-{
-	net_copy_ip(opt->data, popt);
-};
-
-static void bootfile_vendorex_handle(struct dhcp_opt *opt, unsigned char *popt, int optlen)
-{
-	if (opt->bp->bp_file[0] != '\0')
-		return;
-
-	/*
-	 * only use vendor boot file if we didn't
-	 * receive a boot file in the main non-vendor
-	 * part of the packet - god only knows why
-	 * some vendors chose not to use this perfectly
-	 * good spot to store the boot file (join on
-	 * Tru64 Unix) it seems mind bogglingly crazy
-	 * to me
-	 */
-	pr_warn("*** WARNING: using vendor optional boot file\n");
-
-	/*
-	 * I can't use dhcp_vendorex_proc here because I need
-	 * to write into the bootp packet - even then I had to
-	 * pass the bootp packet pointer into here as the
-	 * second arg
-	 */
-	env_str_handle(opt, popt, optlen);
-}
-
-static int dhcp_set_string_options(struct dhcp_opt *param, u8 *e)
-{
-	int str_len;
-	const char *str = param->data;
-
-	if (!str && param->barebox_var_name && IS_ENABLED(CONFIG_ENVIRONMENT_VARIABLES))
-		str = getenv(param->barebox_var_name);
-
-	if (!str && param->barebox_dhcp_global && IS_ENABLED(CONFIG_GLOBALVAR))
-		str = dhcp_get_barebox_global(param->barebox_dhcp_global);
-
-	if (!str)
-		return 0;
-
-	str_len = strlen(str);
-	if (!str_len)
-		return 0;
-
-	*e++ = param->option;
-	*e++ = str_len;
-	memcpy(e, str, str_len);
-
-	return str_len + 2;
-}
-
 #define DHCP_HOSTNAME		12
 #define DHCP_VENDOR_ID		60
 #define DHCP_CLIENT_ID		61
 #define DHCP_USER_CLASS		77
 #define DHCP_CLIENT_UUID	97
 
-struct dhcp_opt dhcp_options[] = {
-	{
-		.option = 1,
-		.handle = netmask_handle,
-	}, {
-		.option = 3,
-		.handle = gateway_handle,
-	}, {
-		.option = 6,
-		.handle = env_ip_handle,
-		.barebox_var_name = "global.net.nameserver",
-	}, {
-		.option = DHCP_HOSTNAME,
-		.copy_only_if_valid = 1,
-		.handle = env_str_handle,
-		.handle_param = dhcp_set_string_options,
-		.barebox_var_name = "global.hostname",
-	}, {
-		.option = 15,
-		.handle = env_str_handle,
-		.barebox_var_name = "global.net.domainname",
-	}, {
-		.option = 17,
-		.handle = env_str_handle,
-		.barebox_dhcp_global = "rootpath",
-	}, {
-		.option = 51,
-		.handle = copy_uint32_handle,
-		.data = &dhcp_leasetime,
-	}, {
-		.option = 54,
-		.handle = copy_ip_handle,
-		.data = &net_dhcp_server_ip,
-		.optional = true,
-	}, {
-		.option = DHCP_VENDOR_ID,
-		.handle_param = dhcp_set_string_options,
-		.barebox_dhcp_global = "vendor_id",
-	},{
-		.option = 66,
-		.handle = env_str_handle,
-		.barebox_dhcp_global = "tftp_server_name",
-		.data = dhcp_tftpname,
-	}, {
-		.option = 67,
-		.handle = bootfile_vendorex_handle,
-		.barebox_dhcp_global = "bootfile",
-	}, {
-		.option = DHCP_CLIENT_ID,
-		.handle_param = dhcp_set_string_options,
-		.barebox_dhcp_global = "client_id",
-	}, {
-		.option = DHCP_USER_CLASS,
-		.handle_param = dhcp_set_string_options,
-		.barebox_dhcp_global = "user_class",
-	}, {
-		.option = DHCP_CLIENT_UUID,
-		.handle_param = dhcp_set_string_options,
-		.barebox_dhcp_global = "client_uuid",
-	}, {
-		.option = 224,
-		.handle = env_str_handle,
-		.barebox_dhcp_global = "oftree_file",
-	},
-};
-
-static void dhcp_set_param_data(int option, void* data)
-{
-	struct dhcp_opt *opt;
-	int i;
-
-	for (i = 0; i < ARRAY_SIZE(dhcp_options); i++) {
-		opt = &dhcp_options[i];
-
-		if (opt->option == option) {
-			opt->data = data;
-			return;
-		}
-	}
-}
-
 static int dhcp_set_ip_options(int option, u8 *e, IPaddr_t ip)
 {
 	int tmp;
@@ -367,23 +153,30 @@ static int bootp_check_packet(unsigned char *pkt, unsigned src, unsigned len)
  */
 static void bootp_copy_net_params(struct bootp *bp)
 {
-	IPaddr_t tmp_ip;
 
-	tmp_ip = net_read_ip(&bp->bp_yiaddr);
-	net_set_ip(dhcp_edev, tmp_ip);
+	dhcp_result->ip = net_read_ip(&bp->bp_yiaddr);
+	dhcp_result->serverip = net_read_ip(&bp->bp_siaddr);
+
+	if (strlen(bp->bp_file) > 0)
+		dhcp_result->bootfile = xstrdup(bp->bp_file);
+}
 
-	tmp_ip = net_read_ip(&bp->bp_siaddr);
-	if (tmp_ip != 0)
-		net_set_serverip_empty(tmp_ip);
+static int dhcp_set_string_options(int option, const char *str, u8 *e)
+{
+	int str_len;
 
-	if (strlen(bp->bp_file) > 0) {
-		if (IS_ENABLED(CONFIG_ENVIRONMENT_VARIABLES))
-			setenv("bootfile", bp->bp_file);
-		if (IS_ENABLED(CONFIG_GLOBALVAR))
-			dhcp_set_barebox_global("bootfile", bp->bp_file);
-	}
+	if (!str)
+		return 0;
 
-	debug("bootfile: %s\n", bp->bp_file);
+	str_len = strlen(str);
+	if (!str_len)
+		return 0;
+
+	*e++ = option;
+	*e++ = str_len;
+	memcpy(e, str, str_len);
+
+	return str_len + 2;
 }
 
 /*
@@ -392,10 +185,11 @@ static void bootp_copy_net_params(struct bootp *bp)
 static int dhcp_extended(u8 *e, int message_type, IPaddr_t ServerID,
 			  IPaddr_t RequestedIP)
 {
-	struct dhcp_opt *opt;
 	int i;
 	u8 *start = e;
 	u8 *cnt;
+	u8 dhcp_options[] = {1, 3, 6, DHCP_HOSTNAME, 15, 17, 51, DHCP_VENDOR_ID, 66, 67, DHCP_CLIENT_ID,
+			     DHCP_USER_CLASS, DHCP_CLIENT_UUID, 224};
 
 	*e++ = 99;		/* RFC1048 Magic Cookie */
 	*e++ = 130;
@@ -414,22 +208,20 @@ static int dhcp_extended(u8 *e, int message_type, IPaddr_t ServerID,
 	e += dhcp_set_ip_options(50, e, RequestedIP);
 	e += dhcp_set_ip_options(54, e, ServerID);
 
-	for (i = 0; i < ARRAY_SIZE(dhcp_options); i++) {
-		opt = &dhcp_options[i];
-		if (opt->handle_param)
-			e += opt->handle_param(opt, e);
-	}
+	e += dhcp_set_string_options(DHCP_HOSTNAME, dhcp_param.hostname, e);
+	e += dhcp_set_string_options(DHCP_VENDOR_ID, dhcp_param.vendor_id, e);
+	e += dhcp_set_string_options(DHCP_CLIENT_ID, dhcp_param.client_id, e);
+	e += dhcp_set_string_options(DHCP_USER_CLASS, dhcp_param.user_class, e);
+	e += dhcp_set_string_options(DHCP_CLIENT_UUID, dhcp_param.client_uuid, e);
 
 	*e++ = 55;		/* Parameter Request List */
-	 cnt = e++;		/* Pointer to count of requested items */
-	*cnt = 0;
-
-	for (i = 0; i < ARRAY_SIZE(dhcp_options); i++) {
-		if (dhcp_options[i].optional)
-			continue;
-		*e++  = dhcp_options[i].option;
-		*cnt += 1;
-	}
+	cnt = e++;		/* Pointer to count of requested items */
+
+	for (i = 0; i < ARRAY_SIZE(dhcp_options); i++)
+		*e++ = dhcp_options[i];
+
+	*cnt = ARRAY_SIZE(dhcp_options);
+
 	*e++  = 255;		/* End of the list */
 
 	/* Pad to minimal length */
@@ -484,20 +276,44 @@ static int bootp_request(void)
 static void dhcp_options_handle(unsigned char option, void *popt,
 			       int optlen, struct bootp *bp)
 {
-	int i;
-	struct dhcp_opt *opt;
-
-	for (i = 0; i < ARRAY_SIZE(dhcp_options); i++) {
-		opt = &dhcp_options[i];
-		if (opt->option == option) {
-			opt->bp = bp;
-			if (opt->handle)
-				opt->handle(opt, popt, optlen);
-			return;
-		}
+	switch (option) {
+		case 1:
+			dhcp_result->netmask = net_read_ip(popt);
+			break;
+		case 3:
+			dhcp_result->gateway = net_read_ip(popt);
+			break;
+		case 6:
+			dhcp_result->nameserver = net_read_ip(popt);
+			break;
+		case DHCP_HOSTNAME:
+			dhcp_result->hostname = xstrndup(popt, optlen);
+			break;
+		case 15:
+			dhcp_result->domainname = xstrndup(popt, optlen);
+			break;
+		case 17:
+			dhcp_result->rootpath = xstrndup(popt, optlen);
+			break;
+		case 51:
+			net_copy_uint32(&dhcp_result->leasetime, popt);
+			break;
+		case 54:
+			dhcp_result->serverip = net_read_ip(popt);
+			break;
+		case 66:
+			dhcp_result->tftp_server_name = xstrndup(popt, optlen);
+			break;
+		case 67:
+			if (!dhcp_result->bootfile)
+				dhcp_result->bootfile = xstrndup(popt, optlen);
+			break;
+		case 224:
+			dhcp_result->devicetree = xstrndup(popt, optlen);
+			break;
+		default:
+			debug("*** Unhandled DHCP Option in OFFER/ACK: %d\n", option);
 	}
-
-	debug("*** Unhandled DHCP Option in OFFER/ACK: %d\n", option);
 }
 
 static void dhcp_options_process(unsigned char *popt, struct bootp *bp)
@@ -611,13 +427,11 @@ static void dhcp_handler(void *ctx, char *packet, unsigned int len)
 		debug("%s: State REQUESTING\n", __func__);
 
 		if (dhcp_message_type((u8 *)bp->bp_vend) == DHCP_ACK ) {
-			IPaddr_t ip;
 			if (net_read_uint32(&bp->bp_vend[0]) == htonl(BOOTP_VENDOR_MAGIC))
 				dhcp_options_process(&bp->bp_vend[4], bp);
 			bootp_copy_net_params(bp); /* Store net params from reply */
 			dhcp_state = BOUND;
-			ip = net_get_ip(dhcp_edev);
-			printf("DHCP client bound to address %pI4\n", &ip);
+			dev_info(&dhcp_edev->dev, "DHCP client bound to address %pI4\n", &dhcp_result->ip);
 			return;
 		}
 		break;
@@ -627,39 +441,48 @@ static void dhcp_handler(void *ctx, char *packet, unsigned int len)
 	}
 }
 
-static void dhcp_reset_env(void)
-{
-	struct dhcp_opt *opt;
-	int i;
+static char *global_dhcp_user_class;
+static char *global_dhcp_vendor_id;
+static char *global_dhcp_client_uuid;
+static char *global_dhcp_client_id;
+static char *global_dhcp_bootfile;
+static char *global_dhcp_oftree_file;
+static char *global_dhcp_rootpath;
+static char *global_dhcp_tftp_server_name;
 
-	for (i = 0; i < ARRAY_SIZE(dhcp_options); i++) {
-		opt = &dhcp_options[i];
-		if (!opt->barebox_var_name || opt->copy_only_if_valid)
-			continue;
+static void set_res(char **var, const char *res)
+{
+	free(*var);
 
-		if (IS_ENABLED(CONFIG_ENVIRONMENT_VARIABLES))
-			setenv(opt->barebox_var_name, "");
-		if (opt->barebox_dhcp_global && IS_ENABLED(CONFIG_GLOBALVAR))
-			dhcp_set_barebox_global(opt->barebox_dhcp_global, "");
-	}
+	if (res)
+		*var = xstrdup(res);
+	else
+		*var = xstrdup("");
 }
 
-int dhcp(struct eth_device *edev, int retries, struct dhcp_req_param *param)
+int dhcp_request(struct eth_device *edev, const struct dhcp_req_param *param,
+		 struct dhcp_result **res)
 {
 	int ret = 0;
 
-	dhcp_reset_env();
-
 	dhcp_edev = edev;
-
-	dhcp_set_param_data(DHCP_HOSTNAME, param->hostname);
-	dhcp_set_param_data(DHCP_VENDOR_ID, param->vendor_id);
-	dhcp_set_param_data(DHCP_CLIENT_ID, param->client_id);
-	dhcp_set_param_data(DHCP_USER_CLASS, param->user_class);
-	dhcp_set_param_data(DHCP_CLIENT_UUID, param->client_uuid);
-
-	if (!retries)
-		retries = DHCP_DEFAULT_RETRY;
+	if (param)
+		dhcp_param = *param;
+	else
+		memset(&dhcp_param, 0, sizeof(dhcp_param));
+
+	dhcp_result = xzalloc(sizeof(*dhcp_result));
+
+	if (!dhcp_param.user_class)
+		dhcp_param.user_class = global_dhcp_user_class;
+	if (!dhcp_param.vendor_id)
+		dhcp_param.vendor_id = global_dhcp_vendor_id;
+	if (!dhcp_param.client_uuid)
+		dhcp_param.client_uuid = global_dhcp_client_uuid;
+	if (!dhcp_param.client_id)
+		dhcp_param.client_id = global_dhcp_client_id;
+	if (!dhcp_param.retries)
+		dhcp_param.retries = DHCP_DEFAULT_RETRY;
 
 	dhcp_con = net_udp_eth_new(edev, IP_BROADCAST, PORT_BOOTPS, dhcp_handler, NULL);
 	if (IS_ERR(dhcp_con)) {
@@ -671,7 +494,7 @@ int dhcp(struct eth_device *edev, int retries, struct dhcp_req_param *param)
 	if (ret)
 		goto out1;
 
-	net_set_ip(dhcp_edev, 0);
+	net_set_ip(edev, 0);
 
 	dhcp_start = get_time_ns();
 	ret = bootp_request(); /* Basically same as BOOTP */
@@ -683,7 +506,7 @@ int dhcp(struct eth_device *edev, int retries, struct dhcp_req_param *param)
 			ret = -EINTR;
 			goto out1;
 		}
-		if (!retries) {
+		if (!dhcp_param.retries) {
 			ret = -ETIMEDOUT;
 			goto out1;
 		}
@@ -693,56 +516,122 @@ int dhcp(struct eth_device *edev, int retries, struct dhcp_req_param *param)
 			printf("T ");
 			ret = bootp_request();
 			/* no need to check if retries > 0 as we check if != 0 */
-			retries--;
+			dhcp_param.retries--;
 			if (ret)
 				goto out1;
 		}
 	}
 
-	if (dhcp_tftpname[0] != 0) {
-		IPaddr_t tftpserver = resolv(dhcp_tftpname);
-		if (tftpserver)
-			net_set_serverip_empty(tftpserver);
-	}
+	pr_debug("DHCP result:\n"
+		"  ip: %pI4\n"
+		"  netmask: %pI4\n"
+		"  gateway: %pI4\n"
+		"  serverip: %pI4\n"
+		"  nameserver: %pI4\n"
+		"  hostname: %s\n"
+		"  domainname: %s\n"
+		"  rootpath: %s\n"
+		"  devicetree: %s\n"
+		"  tftp_server_name: %s\n",
+		&dhcp_result->ip,
+		&dhcp_result->netmask,
+		&dhcp_result->gateway,
+		&dhcp_result->serverip,
+		&dhcp_result->nameserver,
+		dhcp_result->hostname ? dhcp_result->hostname : "",
+		dhcp_result->domainname ? dhcp_result->domainname : "",
+		dhcp_result->rootpath ? dhcp_result->rootpath : "",
+		dhcp_result->devicetree ? dhcp_result->devicetree : "",
+		dhcp_result->tftp_server_name ? dhcp_result->tftp_server_name : "");
 
 out1:
 	net_unregister(dhcp_con);
 out:
-	if (ret)
+	if (ret) {
 		debug("dhcp failed: %s\n", strerror(-ret));
+		free(dhcp_result);
+	} else {
+		*res = dhcp_result;
+	}
 
 	return ret;
 }
 
-#ifdef CONFIG_GLOBALVAR
-static void dhcp_global_add(const char *var)
+int dhcp_set_result(struct eth_device *edev, struct dhcp_result *res)
 {
-	char *var_global = basprintf("dhcp.%s", var);
+	net_set_ip(edev, res->ip);
+	net_set_netmask(edev, res->netmask);
+	net_set_gateway(res->gateway);
+	net_set_nameserver(res->nameserver);
+
+	set_res(&global_dhcp_bootfile, res->bootfile);
+	set_res(&global_dhcp_oftree_file, res->devicetree);
+	set_res(&global_dhcp_rootpath, res->rootpath);
+	set_res(&global_dhcp_tftp_server_name, res->tftp_server_name);
+
+	if (res->hostname)
+		barebox_set_hostname(res->hostname);
+	if (res->domainname)
+		net_set_domainname(res->domainname);
+
+	if (res->serverip) {
+		net_set_serverip_empty(res->serverip);
+	} else if (res->tftp_server_name) {
+		IPaddr_t ip;
+
+		ip = resolv(res->tftp_server_name);
+		if (ip)
+			net_set_serverip_empty(ip);
+	}
 
-	if (!var_global)
-		return;
+	return 0;
+}
 
-	globalvar_add_simple(var_global, NULL);
-	free(var_global);
+void dhcp_result_free(struct dhcp_result *res)
+{
+	free(res->hostname);
+	free(res->domainname);
+	free(res->rootpath);
+	free(res->devicetree);
+	free(res->bootfile);
+	free(res->tftp_server_name);
+
+	free(res);
 }
 
-static int dhcp_global_init(void)
+int dhcp(struct eth_device *edev, const struct dhcp_req_param *param)
 {
-	struct dhcp_opt *opt;
-	int i;
+	struct dhcp_result *res;
+	int ret;
 
-	for (i = 0; i < ARRAY_SIZE(dhcp_options); i++) {
-		opt = &dhcp_options[i];
+	ret = dhcp_request(edev, param, &res);
+	if (ret)
+		return ret;
 
-		if (!opt->barebox_dhcp_global)
-			continue;
+	ret = dhcp_set_result(edev, res);
 
-		dhcp_global_add(opt->barebox_dhcp_global);
-	}
+	dhcp_result_free(res);
+
+	return ret;
+}
+
+#ifdef CONFIG_GLOBALVAR
+
+static int dhcp_global_init(void)
+{
+	globalvar_add_simple_string("dhcp.bootfile", &global_dhcp_bootfile);
+	globalvar_add_simple_string("dhcp.rootpath", &global_dhcp_rootpath);
+	globalvar_add_simple_string("dhcp.vendor_id", &global_dhcp_vendor_id);
+	globalvar_add_simple_string("dhcp.client_uuid", &global_dhcp_client_uuid);
+	globalvar_add_simple_string("dhcp.client_id", &global_dhcp_client_id);
+	globalvar_add_simple_string("dhcp.user_class", &global_dhcp_user_class);
+	globalvar_add_simple_string("dhcp.oftree_file", &global_dhcp_oftree_file);
+	globalvar_add_simple_string("dhcp.tftp_server_name", &global_dhcp_tftp_server_name);
 
 	return 0;
 }
 late_initcall(dhcp_global_init);
+#endif
 
 BAREBOX_MAGICVAR_NAMED(global_dhcp_bootfile, global.dhcp.bootfile, "bootfile returned from DHCP request");
 BAREBOX_MAGICVAR_NAMED(global_dhcp_rootpath, global.dhcp.rootpath, "rootpath returned from DHCP request");
@@ -753,4 +642,3 @@ BAREBOX_MAGICVAR_NAMED(global_dhcp_user_class, global.dhcp.user_class, "user cla
 BAREBOX_MAGICVAR_NAMED(global_dhcp_tftp_server_name, global.dhcp.tftp_server_name, "TFTP server Name returned from DHCP request");
 BAREBOX_MAGICVAR_NAMED(global_dhcp_oftree_file, global.dhcp.oftree_file, "OF tree returned from DHCP request (option 224)");
 BAREBOX_MAGICVAR_NAMED(global_dhcp_retries, global.dhcp.retries, "retry limit");
-#endif
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
