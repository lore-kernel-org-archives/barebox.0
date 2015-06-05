Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycore.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Z0nF5-0001kB-93
 for barebox@lists.infradead.org; Fri, 05 Jun 2015 08:44:44 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 84EE0A00243
 for <barebox@lists.infradead.org>; Fri,  5 Jun 2015 10:45:44 +0200 (CEST)
From: Wadim Egorov <w.egorov@phytec.de>
Date: Fri, 5 Jun 2015 10:43:20 +0200
Message-Id: <1433493800-23732-1-git-send-email-w.egorov@phytec.de>
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
Subject: [PATCH] net: dhcp: Fix CONFIG_ENVIRONMENT_VARIABLES check
To: barebox@lists.infradead.org

Please squash this patch into
[PATCH v3 2/3] net: dhcp: Split dhcp funcionality & add dhcp command

Signed-off-by: Wadim Egorov <w.egorov@phytec.de>
---
 net/dhcp.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/net/dhcp.c b/net/dhcp.c
index eb4bb38..e1625ec 100644
--- a/net/dhcp.c
+++ b/net/dhcp.c
@@ -141,7 +141,7 @@ static void env_ip_handle(struct dhcp_opt *opt, unsigned char *popt, int optlen)
 	IPaddr_t ip;
 
 	ip = net_read_ip(popt);
-	if (IS_ENABLED(ENVIRONMENT_VARIABLES))
+	if (IS_ENABLED(CONFIG_ENVIRONMENT_VARIABLES))
 		setenv_ip(opt->barebox_var_name, ip);
 }
 
@@ -262,7 +262,7 @@ static int dhcp_set_string_options(struct dhcp_param *param, u8 *e)
 	int str_len;
 	char* str = param->data;
 
-	if (!str && param->barebox_var_name && IS_ENABLED(ENVIRONMENT_VARIABLES))
+	if (!str && param->barebox_var_name && IS_ENABLED(CONFIG_ENVIRONMENT_VARIABLES))
 		str = (char*)getenv(param->barebox_var_name);
 
 	if (!str && param->barebox_dhcp_global && IS_ENABLED(CONFIG_GLOBALVAR))
@@ -390,7 +390,7 @@ static void bootp_copy_net_params(struct bootp *bp)
 		net_set_serverip(tmp_ip);
 
 	if (strlen(bp->bp_file) > 0) {
-		if (IS_ENABLED(ENVIRONMENT_VARIABLES))
+		if (IS_ENABLED(CONFIG_ENVIRONMENT_VARIABLES))
 			setenv("bootfile", bp->bp_file);
 		if (IS_ENABLED(CONFIG_GLOBALVAR))
 			dhcp_set_barebox_global("bootfile", bp->bp_file);
@@ -652,7 +652,7 @@ static void dhcp_reset_env(void)
 		if (!opt->barebox_var_name || opt->copy_only_if_valid)
 			continue;
 
-		if (IS_ENABLED(ENVIRONMENT_VARIABLES))
+		if (IS_ENABLED(CONFIG_ENVIRONMENT_VARIABLES))
 			setenv(opt->barebox_var_name, "");
 		if (opt->barebox_dhcp_global && IS_ENABLED(CONFIG_GLOBALVAR))
 			dhcp_set_barebox_global(opt->barebox_dhcp_global, "");
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
