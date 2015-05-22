Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.visioncatalog.com ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Yvlo9-0004hE-Te
 for barebox@lists.infradead.org; Fri, 22 May 2015 12:12:12 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id B13DAA00320
 for <barebox@lists.infradead.org>; Fri, 22 May 2015 14:13:10 +0200 (CEST)
From: Wadim Egorov <w.egorov@phytec.de>
Date: Fri, 22 May 2015 14:11:17 +0200
Message-Id: <1432296678-375-2-git-send-email-w.egorov@phytec.de>
In-Reply-To: <1432296678-375-1-git-send-email-w.egorov@phytec.de>
References: <1432296678-375-1-git-send-email-w.egorov@phytec.de>
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
Subject: [RFC 2/3] net: dhcp: Split dhcp funcionality & add dhcp command
To: barebox@lists.infradead.org

dhcp/bootp was bound to the command functionality.
This patch splits the dhcp command.
We are now able to use bootp without a shell.

This patch adds also a check for environment variables and globalvar.
So only when ENVIRONMENT_VARIABLES and GLOBALVAR is set, all received
dhcp data will be stored.

Signed-off-by: Wadim Egorov <w.egorov@phytec.de>
---
 commands/Kconfig  |   1 +
 commands/Makefile |   1 +
 commands/dhcp.c   |  77 +++++++++++++++++++++++++
 include/dhcp.h    |  23 ++++++++
 net/Kconfig       |   4 ++
 net/Makefile      |   2 +-
 net/dhcp.c        | 164 +++++++++++++++++++++---------------------------------
 7 files changed, 171 insertions(+), 101 deletions(-)
 create mode 100644 commands/dhcp.c
 create mode 100644 include/dhcp.h

diff --git a/commands/Kconfig b/commands/Kconfig
index 847ff76..102c3cc 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -1183,6 +1183,7 @@ menu "Network"
 
 config CMD_DHCP
 	bool
+	depends on NET_DHCP
 	prompt "dhcp"
 	help
 	  DHCP client to obtain IP or boot params
diff --git a/commands/Makefile b/commands/Makefile
index b902f58..3698347 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -111,3 +111,4 @@ obj-$(CONFIG_CMD_CMP)		+= cmp.o
 obj-$(CONFIG_CMD_NV)		+= nv.o
 obj-$(CONFIG_CMD_DEFAULTENV)	+= defaultenv.o
 obj-$(CONFIG_CMD_STATE)		+= state.o
+obj-$(CONFIG_CMD_DHCP)		+= dhcp.o
diff --git a/commands/dhcp.c b/commands/dhcp.c
new file mode 100644
index 0000000..9bad9d8
--- /dev/null
+++ b/commands/dhcp.c
@@ -0,0 +1,77 @@
+/*
+ * Copyright (C) 2015 PHYTEC Messtechnik GmbH,
+ * Author: Wadim Egorov <w.egorov@phytec.de>
+ *
+ * Based on work of Sascha Hauer <s.hauer@pengutronix.de>.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ */
+
+#include <common.h>
+#include <command.h>
+#include <complete.h>
+#include <environment.h>
+#include <getopt.h>
+#include <dhcp.h>
+
+static int do_dhcp(int argc, char *argv[])
+{
+	int ret, opt;
+	int retries = DHCP_DEFAULT_RETRY;
+	struct dhcp_req_param dhcp_param;
+
+	getenv_uint("global.dhcp.retries", &retries);
+
+	while ((opt = getopt(argc, argv, "H:v:c:u:U:r:")) > 0) {
+		switch (opt) {
+		case 'H':
+			dhcp_param.hostname = optarg;
+			break;
+		case 'v':
+			dhcp_param.vendor_id = optarg;
+			break;
+		case 'c':
+			dhcp_param.client_id = optarg;
+			break;
+		case 'u':
+			dhcp_param.client_uuid = optarg;
+			break;
+		case 'U':
+			dhcp_param.user_class = optarg;
+			break;
+		case 'r':
+			retries = simple_strtoul(optarg, NULL, 10);
+			break;
+		}
+	}
+
+	if (!retries) {
+		printf("retries is set to zero, set it to %d\n", DHCP_DEFAULT_RETRY);
+		retries = DHCP_DEFAULT_RETRY;
+	}
+
+	ret = dhcp(retries, &dhcp_param);
+
+	return ret;
+}
+
+BAREBOX_CMD_HELP_START(dhcp)
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT("-H HOSTNAME", "hostname to send to the DHCP server")
+BAREBOX_CMD_HELP_OPT("-v ID\t", "DHCP Vendor ID (code 60) submitted in DHCP requests")
+BAREBOX_CMD_HELP_OPT("-c ID\t", "DHCP Client ID (code 61) submitted in DHCP requests")
+BAREBOX_CMD_HELP_OPT("-u UUID\t", "DHCP Client UUID (code 97) submitted in DHCP requests")
+BAREBOX_CMD_HELP_OPT("-U CLASS", "DHCP User class (code 77) submitted in DHCP requests")
+BAREBOX_CMD_HELP_OPT("-r RETRY", "retry limit (default 20)");
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(dhcp)
+	.cmd		= do_dhcp,
+	BAREBOX_CMD_DESC("DHCP client to obtain IP or boot params")
+	BAREBOX_CMD_OPTS("[-HvcuUr]")
+	BAREBOX_CMD_GROUP(CMD_GRP_NET)
+	BAREBOX_CMD_HELP(cmd_dhcp_help)
+	BAREBOX_CMD_COMPLETE(empty_complete)
+BAREBOX_CMD_END
diff --git a/include/dhcp.h b/include/dhcp.h
new file mode 100644
index 0000000..2ed11da
--- /dev/null
+++ b/include/dhcp.h
@@ -0,0 +1,23 @@
+/*
+ * Copyright (C) 2015 PHYTEC Messtechnik GmbH,
+ * Author: Wadim Egorov <w.egorov@phytec.de>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ */
+
+#ifndef __DHCP_H__
+#define __DHCP_H__
+
+struct dhcp_req_param {
+	char *hostname;
+	char *vendor_id;
+	char *client_id;
+	char *user_class;
+	char *client_uuid;
+};
+
+int dhcp(int retries, struct dhcp_req_param *param);
+
+#endif
diff --git a/net/Kconfig b/net/Kconfig
index 918d776..a890492 100644
--- a/net/Kconfig
+++ b/net/Kconfig
@@ -22,4 +22,8 @@ config NET_IFUP
 	default y
 	bool
 
+config NET_DHCP
+	bool
+	prompt "dhcp support"
+
 endif
diff --git a/net/Makefile b/net/Makefile
index 907dc28..58bf143 100644
--- a/net/Makefile
+++ b/net/Makefile
@@ -1,7 +1,7 @@
 obj-$(CONFIG_NET)	+= eth.o
 obj-$(CONFIG_NET)	+= net.o
 obj-$(CONFIG_NET_NFS)	+= nfs.o
-obj-$(CONFIG_CMD_DHCP)	+= dhcp.o
+obj-$(CONFIG_NET_DHCP)	+= dhcp.o
 obj-$(CONFIG_CMD_PING)	+= ping.o
 obj-$(CONFIG_NET_RESOLV)+= dns.o
 obj-$(CONFIG_NET_NETCONSOLE) += netconsole.o
diff --git a/net/dhcp.c b/net/dhcp.c
index 19a8462..2baba7a 100644
--- a/net/dhcp.c
+++ b/net/dhcp.c
@@ -21,9 +21,9 @@
 #include <getopt.h>
 #include <globalvar.h>
 #include <init.h>
+#include <dhcp.h>
 
 #define DHCP_DEFAULT_RETRY 20
-
 #define OPT_SIZE 312	/* Minimum DHCP Options size per RFC2131 - results in 576 byte pkt */
 
 struct bootp {
@@ -142,7 +142,8 @@ static void env_ip_handle(struct dhcp_opt *opt, unsigned char *popt, int optlen)
 	IPaddr_t ip;
 
 	ip = net_read_ip(popt);
-	setenv_ip(opt->barebox_var_name, ip);
+	if (IS_ENABLED(ENVIRONMENT_VARIABLES))
+		setenv_ip(opt->barebox_var_name, ip);
 }
 
 static void env_str_handle(struct dhcp_opt *opt, unsigned char *popt, int optlen)
@@ -158,10 +159,9 @@ static void env_str_handle(struct dhcp_opt *opt, unsigned char *popt, int optlen
 
 	if (opt->copy_only_if_valid && !strlen(tmp))
 		return;
-
-	if (opt->barebox_var_name)
+	if (opt->barebox_var_name && IS_ENABLED(EVIRONMENT_VARIABLES))
 		setenv(opt->barebox_var_name, tmp);
-	if (opt->barebox_dhcp_global)
+	if (opt->barebox_dhcp_global && IS_ENABLED(CONFIG_GLOBALVAR))
 		dhcp_set_barebox_global(opt->barebox_dhcp_global, tmp);
 
 }
@@ -263,10 +263,10 @@ static int dhcp_set_string_options(struct dhcp_param *param, u8 *e)
 	int str_len;
 	char* str = param->data;
 
-	if (!str && param->barebox_var_name)
+	if (!str && param->barebox_var_name && IS_ENABLED(ENVIRONMENT_VARIABLES))
 		str = (char*)getenv(param->barebox_var_name);
 
-	if (!str && param->barebox_dhcp_global)
+	if (!str && param->barebox_dhcp_global && IS_ENABLED(CONFIG_GLOBALVAR))
 		str = (char*)dhcp_get_barebox_global(param->barebox_dhcp_global);
 
 	if (!str)
@@ -391,8 +391,10 @@ static void bootp_copy_net_params(struct bootp *bp)
 		net_set_serverip(tmp_ip);
 
 	if (strlen(bp->bp_file) > 0) {
-		setenv("bootfile", bp->bp_file);
-		dhcp_set_barebox_global("bootfile", bp->bp_file);
+		if (IS_ENABLED(ENVIRONMENT_VARIABLES))
+			setenv("bootfile", bp->bp_file);
+		if (IS_ENABLED(CONFIG_GLOBALVAR))
+			dhcp_set_barebox_global("bootfile", bp->bp_file);
 	}
 
 	debug("bootfile: %s\n", bp->bp_file);
@@ -651,87 +653,27 @@ static void dhcp_reset_env(void)
 		if (!opt->barebox_var_name || opt->copy_only_if_valid)
 			continue;
 
-		setenv(opt->barebox_var_name,"");
-		if (opt->barebox_dhcp_global)
-			dhcp_set_barebox_global(opt->barebox_dhcp_global,"");
-	}
-}
-
-static void dhcp_global_add(const char *var)
-{
-	char * var_global = asprintf("dhcp.%s", var);
-
-	if (!var_global)
-		return;
-
-	globalvar_add_simple(var_global, NULL);
-	free(var_global);
-}
-
-static int dhcp_global_init(void)
-{
-	struct dhcp_opt *opt;
-	struct dhcp_param *param;
-	int i;
-
-	for (i = 0; i < ARRAY_SIZE(dhcp_options); i++) {
-		opt = &dhcp_options[i];
-
-		if (!opt->barebox_dhcp_global)
-			continue;
-
-		dhcp_global_add(opt->barebox_dhcp_global);
-	}
-
-	for (i = 0; i < ARRAY_SIZE(dhcp_params); i++) {
-		param = &dhcp_params[i];
-
-		if (!param->barebox_dhcp_global)
-			continue;
-
-		dhcp_global_add(param->barebox_dhcp_global);
+		if (IS_ENABLED(ENVIRONMENT_VARIABLES))
+			setenv(opt->barebox_var_name, "");
+		if (opt->barebox_dhcp_global && IS_ENABLED(CONFIG_GLOBALVAR))
+			dhcp_set_barebox_global(opt->barebox_dhcp_global, "");
 	}
-
-	return 0;
 }
-late_initcall(dhcp_global_init);
 
-static int do_dhcp(int argc, char *argv[])
+int dhcp(int retries, struct dhcp_req_param *param)
 {
-	int ret, opt;
-	int retries = DHCP_DEFAULT_RETRY;
+	int ret = 0;
 
 	dhcp_reset_env();
 
-	getenv_uint("global.dhcp.retries", &retries);
-
-	while((opt = getopt(argc, argv, "H:v:c:u:U:r:")) > 0) {
-		switch(opt) {
-		case 'H':
-			dhcp_set_param_data(DHCP_HOSTNAME, optarg);
-			break;
-		case 'v':
-			dhcp_set_param_data(DHCP_VENDOR_ID, optarg);
-			break;
-		case 'c':
-			dhcp_set_param_data(DHCP_CLIENT_ID, optarg);
-			break;
-		case 'u':
-			dhcp_set_param_data(DHCP_CLIENT_UUID, optarg);
-			break;
-		case 'U':
-			dhcp_set_param_data(DHCP_USER_CLASS, optarg);
-			break;
-		case 'r':
-			retries = simple_strtoul(optarg, NULL, 10);
-			break;
-		}
-	}
+	dhcp_set_param_data(DHCP_HOSTNAME, param->hostname);
+	dhcp_set_param_data(DHCP_VENDOR_ID, param->vendor_id);
+	dhcp_set_param_data(DHCP_CLIENT_ID, param->client_id);
+	dhcp_set_param_data(DHCP_USER_CLASS, param->user_class);
+	dhcp_set_param_data(DHCP_CLIENT_UUID, param->client_uuid);
 
-	if (!retries) {
-		printf("retries is set to zero, set it to %d\n", DHCP_DEFAULT_RETRY);
+	if (!retries)
 		retries = DHCP_DEFAULT_RETRY;
-	}
 
 	dhcp_con = net_udp_new(0xffffffff, PORT_BOOTPS, dhcp_handler, NULL);
 	if (IS_ERR(dhcp_con)) {
@@ -781,29 +723,50 @@ out1:
 	net_unregister(dhcp_con);
 out:
 	if (ret)
-		printf("dhcp failed: %s\n", strerror(-ret));
+		debug("dhcp failed: %s\n", strerror(-ret));
 
 	return ret;
 }
 
-BAREBOX_CMD_HELP_START(dhcp)
-BAREBOX_CMD_HELP_TEXT("Options:")
-BAREBOX_CMD_HELP_OPT ("-H HOSTNAME", "hostname to send to the DHCP server")
-BAREBOX_CMD_HELP_OPT ("-v ID\t", "DHCP Vendor ID (code 60) submitted in DHCP requests")
-BAREBOX_CMD_HELP_OPT ("-c ID\t", "DHCP Client ID (code 61) submitted in DHCP requests")
-BAREBOX_CMD_HELP_OPT ("-u UUID\t", "DHCP Client UUID (code 97) submitted in DHCP requests")
-BAREBOX_CMD_HELP_OPT ("-U CLASS", "DHCP User class (code 77) submitted in DHCP requests")
-BAREBOX_CMD_HELP_OPT ("-r RETRY", "retry limit (default 20)");
-BAREBOX_CMD_HELP_END
-
-BAREBOX_CMD_START(dhcp)
-	.cmd		= do_dhcp,
-	BAREBOX_CMD_DESC("DHCP client to obtain IP or boot params")
-	BAREBOX_CMD_OPTS("[-HvcuUr]")
-	BAREBOX_CMD_GROUP(CMD_GRP_NET)
-	BAREBOX_CMD_HELP(cmd_dhcp_help)
-	BAREBOX_CMD_COMPLETE(empty_complete)
-BAREBOX_CMD_END
+#ifdef CONFIG_GLOBALVAR
+static void dhcp_global_add(const char *var)
+{
+	char *var_global = asprintf("dhcp.%s", var);
+
+	if (!var_global)
+		return;
+
+	globalvar_add_simple(var_global, NULL);
+	free(var_global);
+}
+
+static int dhcp_global_init(void)
+{
+	struct dhcp_opt *opt;
+	struct dhcp_param *param;
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(dhcp_options); i++) {
+		opt = &dhcp_options[i];
+
+		if (!opt->barebox_dhcp_global)
+			continue;
+
+		dhcp_global_add(opt->barebox_dhcp_global);
+	}
+
+	for (i = 0; i < ARRAY_SIZE(dhcp_params); i++) {
+		param = &dhcp_params[i];
+
+		if (!param->barebox_dhcp_global)
+			continue;
+
+		dhcp_global_add(param->barebox_dhcp_global);
+	}
+
+	return 0;
+}
+late_initcall(dhcp_global_init);
 
 BAREBOX_MAGICVAR_NAMED(global_dhcp_bootfile, global.dhcp.bootfile, "bootfile returned from DHCP request");
 BAREBOX_MAGICVAR_NAMED(global_dhcp_rootpath, global.dhcp.rootpath, "rootpath returned from DHCP request");
@@ -814,3 +777,4 @@ BAREBOX_MAGICVAR_NAMED(global_dhcp_user_class, global.dhcp.user_class, "user cla
 BAREBOX_MAGICVAR_NAMED(global_dhcp_tftp_server_name, global.dhcp.tftp_server_name, "TFTP server Name returned from DHCP request");
 BAREBOX_MAGICVAR_NAMED(global_dhcp_oftree_file, global.dhcp.oftree_file, "OF tree returned from DHCP request (option 224)");
 BAREBOX_MAGICVAR_NAMED(global_dhcp_retries, global.dhcp.retries, "retry limit");
+#endif
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
