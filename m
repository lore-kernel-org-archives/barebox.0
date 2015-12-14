Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a8QZV-0008HI-G3
 for barebox@lists.infradead.org; Mon, 14 Dec 2015 10:41:39 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 14 Dec 2015 11:41:11 +0100
Message-Id: <1450089674-25721-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/4] net: dhcp: unify options and params
To: Barebox List <barebox@lists.infradead.org>

The dhcp code distinguishes between options and params. If sent to the
server they are params, if received from the server they are options.
Unify them all to be options. If it has a handle_param callback it's
a param, if it has a handle callback it's an option.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 net/dhcp.c | 134 ++++++++++++++++++++++++++-----------------------------------
 1 file changed, 57 insertions(+), 77 deletions(-)

diff --git a/net/dhcp.c b/net/dhcp.c
index fb8a713..fa4c4d1 100644
--- a/net/dhcp.c
+++ b/net/dhcp.c
@@ -115,6 +115,7 @@ struct dhcp_opt {
 	const char *barebox_var_name;
 	const char *barebox_dhcp_global;
 	void (*handle)(struct dhcp_opt *opt, unsigned char *data, int tlen);
+	int (*handle_param)(struct dhcp_opt *dhcp_opt, u8 *e);
 	void *data;
 
 	struct bootp *bp;
@@ -200,6 +201,37 @@ static void bootfile_vendorex_handle(struct dhcp_opt *opt, unsigned char *popt,
 	env_str_handle(opt, popt, optlen);
 }
 
+static int dhcp_set_string_options(struct dhcp_opt *param, u8 *e)
+{
+	int str_len;
+	char* str = param->data;
+
+	if (!str && param->barebox_var_name && IS_ENABLED(CONFIG_ENVIRONMENT_VARIABLES))
+		str = (char*)getenv(param->barebox_var_name);
+
+	if (!str && param->barebox_dhcp_global && IS_ENABLED(CONFIG_GLOBALVAR))
+		str = (char*)dhcp_get_barebox_global(param->barebox_dhcp_global);
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
+#define DHCP_HOSTNAME		12
+#define DHCP_VENDOR_ID		60
+#define DHCP_CLIENT_ID		61
+#define DHCP_USER_CLASS		77
+#define DHCP_CLIENT_UUID	97
+
 struct dhcp_opt dhcp_options[] = {
 	{
 		.option = 1,
@@ -212,9 +244,10 @@ struct dhcp_opt dhcp_options[] = {
 		.handle = env_ip_handle,
 		.barebox_var_name = "net.nameserver",
 	}, {
-		.option = 12,
+		.option = DHCP_HOSTNAME,
 		.copy_only_if_valid = 1,
 		.handle = env_str_handle,
+		.handle_param = dhcp_set_string_options,
 		.barebox_var_name = "global.hostname",
 	}, {
 		.option = 15,
@@ -234,6 +267,10 @@ struct dhcp_opt dhcp_options[] = {
 		.data = &net_dhcp_server_ip,
 		.optional = true,
 	}, {
+		.option = DHCP_VENDOR_ID,
+		.handle_param = dhcp_set_string_options,
+		.barebox_dhcp_global = "vendor_id",
+	},{
 		.option = 66,
 		.handle = env_str_handle,
 		.barebox_dhcp_global = "tftp_server_name",
@@ -243,85 +280,34 @@ struct dhcp_opt dhcp_options[] = {
 		.handle = bootfile_vendorex_handle,
 		.barebox_dhcp_global = "bootfile",
 	}, {
-		.option = 224,
-		.handle = env_str_handle,
-		.barebox_dhcp_global = "oftree_file",
-	},
-};
-
-struct dhcp_param {
-	unsigned char option;
-	const char *barebox_var_name;
-	const char *barebox_dhcp_global;
-	int (*handle)(struct dhcp_param *param, u8 *e);
-	void *data;
-};
-
-static int dhcp_set_string_options(struct dhcp_param *param, u8 *e)
-{
-	int str_len;
-	char* str = param->data;
-
-	if (!str && param->barebox_var_name && IS_ENABLED(CONFIG_ENVIRONMENT_VARIABLES))
-		str = (char*)getenv(param->barebox_var_name);
-
-	if (!str && param->barebox_dhcp_global && IS_ENABLED(CONFIG_GLOBALVAR))
-		str = (char*)dhcp_get_barebox_global(param->barebox_dhcp_global);
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
-#define DHCP_HOSTNAME		12
-#define DHCP_VENDOR_ID		60
-#define DHCP_CLIENT_ID		61
-#define DHCP_USER_CLASS		77
-#define DHCP_CLIENT_UUID	97
-
-struct dhcp_param dhcp_params[] = {
-	{
-		.option = DHCP_HOSTNAME,
-		.handle = dhcp_set_string_options,
-		.barebox_var_name = "global.hostname",
-	}, {
-		.option = DHCP_VENDOR_ID,
-		.handle = dhcp_set_string_options,
-		.barebox_dhcp_global = "vendor_id",
-	}, {
 		.option = DHCP_CLIENT_ID,
-		.handle = dhcp_set_string_options,
+		.handle_param = dhcp_set_string_options,
 		.barebox_dhcp_global = "client_id",
 	}, {
 		.option = DHCP_USER_CLASS,
-		.handle = dhcp_set_string_options,
+		.handle_param = dhcp_set_string_options,
 		.barebox_dhcp_global = "user_class",
 	}, {
 		.option = DHCP_CLIENT_UUID,
-		.handle = dhcp_set_string_options,
+		.handle_param = dhcp_set_string_options,
 		.barebox_dhcp_global = "client_uuid",
-	}
+	}, {
+		.option = 224,
+		.handle = env_str_handle,
+		.barebox_dhcp_global = "oftree_file",
+	},
 };
 
 static void dhcp_set_param_data(int option, void* data)
 {
-	struct dhcp_param *param;
+	struct dhcp_opt *opt;
 	int i;
 
-	for (i = 0; i < ARRAY_SIZE(dhcp_params); i++) {
-		param = &dhcp_params[i];
+	for (i = 0; i < ARRAY_SIZE(dhcp_options); i++) {
+		opt = &dhcp_options[i];
 
-		if (param->option == option) {
-			param->data = data;
+		if (opt->option == option) {
+			opt->data = data;
 			return;
 		}
 	}
@@ -405,6 +391,7 @@ static void bootp_copy_net_params(struct bootp *bp)
 static int dhcp_extended (u8 *e, int message_type, IPaddr_t ServerID,
 			  IPaddr_t RequestedIP)
 {
+	struct dhcp_opt *opt;
 	int i;
 	u8 *start = e;
 	u8 *cnt;
@@ -427,8 +414,11 @@ static int dhcp_extended (u8 *e, int message_type, IPaddr_t ServerID,
 	e += dhcp_set_ip_options(50, e, RequestedIP);
 	e += dhcp_set_ip_options(54, e, ServerID);
 
-	for (i = 0; i < ARRAY_SIZE(dhcp_params); i++)
-		e += dhcp_params[i].handle(&dhcp_params[i], e);
+	for (i = 0; i < ARRAY_SIZE(dhcp_options); i++) {
+		opt = &dhcp_options[i];
+		if (opt->handle_param)
+			e += opt->handle_param(opt, e);
+	}
 
 	*e++ = 55;		/* Parameter Request List */
 	 cnt = e++;		/* Pointer to count of requested items */
@@ -742,7 +732,6 @@ static void dhcp_global_add(const char *var)
 static int dhcp_global_init(void)
 {
 	struct dhcp_opt *opt;
-	struct dhcp_param *param;
 	int i;
 
 	for (i = 0; i < ARRAY_SIZE(dhcp_options); i++) {
@@ -754,15 +743,6 @@ static int dhcp_global_init(void)
 		dhcp_global_add(opt->barebox_dhcp_global);
 	}
 
-	for (i = 0; i < ARRAY_SIZE(dhcp_params); i++) {
-		param = &dhcp_params[i];
-
-		if (!param->barebox_dhcp_global)
-			continue;
-
-		dhcp_global_add(param->barebox_dhcp_global);
-	}
-
 	return 0;
 }
 late_initcall(dhcp_global_init);
-- 
2.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
