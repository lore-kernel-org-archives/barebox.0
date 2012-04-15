Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 10.mo3.mail-out.ovh.net ([87.98.165.232]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SJH04-00021E-HV
 for barebox@lists.infradead.org; Sun, 15 Apr 2012 04:23:45 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 82B47FF8492
 for <barebox@lists.infradead.org>; Sun, 15 Apr 2012 06:24:54 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 15 Apr 2012 06:05:38 +0200
Message-Id: <1334462739-17265-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1334462739-17265-1-git-send-email-plagnioj@jcrosoft.com>
References: <1334462739-17265-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/3] net: dhcp: allow to user env var as user class too
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 net/dhcp.c |   11 +++++++++--
 1 files changed, 9 insertions(+), 2 deletions(-)

diff --git a/net/dhcp.c b/net/dhcp.c
index c3c41a0..ecff819 100644
--- a/net/dhcp.c
+++ b/net/dhcp.c
@@ -211,6 +211,7 @@ struct dhcp_opt dhcp_options[] = {
 struct dhcp_param {
 	unsigned char option;
 	const char *barebox_var_name;
+	const char *barebox_var_alt_name;
 	int (*handle)(struct dhcp_param *param, u8 *e);
 	void *data;
 };
@@ -220,8 +221,12 @@ static int dhcp_set_string_options(struct dhcp_param *param, u8 *e)
 	int str_len;
 	char* str = param->data;
 
-	if (!str && param->barebox_var_name)
-		str = (char*)getenv(param->barebox_var_name);
+	if (!str) {
+		if (param->barebox_var_name)
+			str = (char*)getenv(param->barebox_var_name);
+		else if (param->barebox_var_alt_name)
+			str = (char*)getenv(param->barebox_var_alt_name);
+	}
 
 	if (!str)
 		return 0;
@@ -260,6 +265,7 @@ struct dhcp_param dhcp_params[] = {
 		.option = DHCP_USER_CLASS,
 		.handle = dhcp_set_string_options,
 		.barebox_var_name = "dhcp_user_class",
+		.barebox_var_alt_name = "user",
 	}, {
 		.option = DHCP_CLIENT_UUID,
 		.handle = dhcp_set_string_options,
@@ -712,5 +718,6 @@ BAREBOX_MAGICVAR(dhcp_vendor_id, "vendor id to send to the DHCP server");
 BAREBOX_MAGICVAR(dhcp_client_uuid, "cliend uuid to send to the DHCP server");
 BAREBOX_MAGICVAR(dhcp_client_id, "cliend id to send to the DHCP server");
 BAREBOX_MAGICVAR(dhcp_user_class, "user class to send to the DHCP server");
+BAREBOX_MAGICVAR(user, "user class to send to the DHCP server");
 BAREBOX_MAGICVAR(dhcp_tftp_server_name, "TFTP server Name returned from DHCP request");
 BAREBOX_MAGICVAR(dhcp_oftree_file, "OF tree returned from DHCP request (option 224)");
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
