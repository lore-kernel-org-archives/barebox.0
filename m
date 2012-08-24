Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo2.mail-out.ovh.net ([87.98.181.248]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T4m6Y-0007Kq-Pz
 for barebox@lists.infradead.org; Fri, 24 Aug 2012 05:06:47 +0000
Received: from mail21.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 31088DC0F68
 for <barebox@lists.infradead.org>; Fri, 24 Aug 2012 07:11:44 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 24 Aug 2012 07:06:51 +0200
Message-Id: <1345784816-31344-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1345784816-31344-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120824050332.GK6271@game.jcrosoft.org>
 <1345784816-31344-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/7] dhcp: add alternative var support
To: barebox@lists.infradead.org

This is need for the defaultenv-2 to add the bootp suppport.
As now the hostname is store in global.hostname not hostname.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 net/dhcp.c |   17 ++++++++++++++++-
 1 file changed, 16 insertions(+), 1 deletion(-)

diff --git a/net/dhcp.c b/net/dhcp.c
index 51c4283..b32af6a 100644
--- a/net/dhcp.c
+++ b/net/dhcp.c
@@ -110,6 +110,7 @@ struct dhcp_opt {
 	unsigned char option;
 	/* request automatically the option when creating the DHCP request */
 	bool optional;
+	bool copy_only_if_valid;
 	const char *barebox_var_name;
 	const char *barebox_var_alt_name;
 	const char *barebox_dhcp_global;
@@ -153,7 +154,13 @@ static void env_str_handle(struct dhcp_opt *opt, unsigned char *popt, int optlen
 
 	memcpy(tmp, popt, optlen);
 	tmp[optlen] = 0;
+
+	if (opt->copy_only_if_valid && !strlen(tmp))
+		return;
+
 	setenv(opt->barebox_var_name, tmp);
+	if (opt->barebox_var_alt_name)
+		setenv(opt->barebox_var_alt_name, tmp);
 	if (opt->barebox_dhcp_global)
 		dhcp_set_barebox_global(opt->barebox_dhcp_global, tmp);
 
@@ -207,8 +214,10 @@ struct dhcp_opt dhcp_options[] = {
 		.barebox_var_name = "net.nameserver",
 	}, {
 		.option = 12,
+		.copy_only_if_valid = 1,
 		.handle = env_str_handle,
 		.barebox_var_name = "hostname",
+		.barebox_var_alt_name = "global.hostname",
 	}, {
 		.option = 15,
 		.handle = env_str_handle,
@@ -263,6 +272,9 @@ static int dhcp_set_string_options(struct dhcp_param *param, u8 *e)
 	if (!str && param->barebox_var_name)
 		str = (char*)getenv(param->barebox_var_name);
 
+	if (!str && param->barebox_var_alt_name)
+		str = (char*)getenv(param->barebox_var_alt_name);
+
 	if (!str && param->barebox_dhcp_global)
 		str = (char*)dhcp_get_barebox_global(param->barebox_dhcp_global);
 
@@ -291,6 +303,7 @@ struct dhcp_param dhcp_params[] = {
 		.option = DHCP_HOSTNAME,
 		.handle = dhcp_set_string_options,
 		.barebox_var_name = "hostname",
+		.barebox_var_alt_name = "global.hostname",
 	}, {
 		.option = DHCP_VENDOR_ID,
 		.handle = dhcp_set_string_options,
@@ -655,10 +668,12 @@ static void dhcp_reset_env(void)
 
 	for (i = 0; i < ARRAY_SIZE(dhcp_options); i++) {
 		opt = &dhcp_options[i];
-		if (!opt->barebox_var_name)
+		if (!opt->barebox_var_name || opt->copy_only_if_valid)
 			continue;
 
 		setenv(opt->barebox_var_name,"");
+		if (opt->barebox_var_alt_name)
+			setenv(opt->barebox_var_alt_name,"");
 		if (opt->barebox_dhcp_global)
 			dhcp_set_barebox_global(opt->barebox_dhcp_global,"");
 	}
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
