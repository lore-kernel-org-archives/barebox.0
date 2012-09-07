Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 19.mo3.mail-out.ovh.net ([178.32.98.231]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T9xR2-0005rx-Lm
 for barebox@lists.infradead.org; Fri, 07 Sep 2012 12:13:21 +0000
Received: from mail91.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id E7B1FFF87EB
 for <barebox@lists.infradead.org>; Fri,  7 Sep 2012 14:20:59 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri,  7 Sep 2012 14:13:30 +0200
Message-Id: <1347020017-12110-4-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1347020017-12110-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120907120713.GQ20330@game.jcrosoft.org>
 <1347020017-12110-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 04/11] dhcp: add copy_only_if_valid support
To: barebox@lists.infradead.org

This will allow to only update a var if recive a valid data.
This is need for hostname.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 net/dhcp.c |    7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/net/dhcp.c b/net/dhcp.c
index b4f2830..02dc529 100644
--- a/net/dhcp.c
+++ b/net/dhcp.c
@@ -110,6 +110,7 @@ struct dhcp_opt {
 	unsigned char option;
 	/* request automatically the option when creating the DHCP request */
 	bool optional;
+	bool copy_only_if_valid;
 	const char *barebox_var_name;
 	const char *barebox_dhcp_global;
 	void (*handle)(struct dhcp_opt *opt, unsigned char *data, int tlen);
@@ -153,6 +154,9 @@ static void env_str_handle(struct dhcp_opt *opt, unsigned char *popt, int optlen
 	memcpy(tmp, popt, optlen);
 	tmp[optlen] = 0;
 
+	if (opt->copy_only_if_valid && !strlen(tmp))
+		return;
+
 	if (opt->barebox_var_name)
 		setenv(opt->barebox_var_name, tmp);
 	if (opt->barebox_dhcp_global)
@@ -208,6 +212,7 @@ struct dhcp_opt dhcp_options[] = {
 		.barebox_var_name = "net.nameserver",
 	}, {
 		.option = 12,
+		.copy_only_if_valid = 1,
 		.handle = env_str_handle,
 		.barebox_var_name = "global.hostname",
 	}, {
@@ -647,7 +652,7 @@ static void dhcp_reset_env(void)
 
 	for (i = 0; i < ARRAY_SIZE(dhcp_options); i++) {
 		opt = &dhcp_options[i];
-		if (!opt->barebox_var_name)
+		if (!opt->barebox_var_name || opt->copy_only_if_valid)
 			continue;
 
 		setenv(opt->barebox_var_name,"");
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
