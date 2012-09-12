Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 11.mo5.mail-out.ovh.net ([46.105.47.167]
 helo=mo5.mail-out.ovh.net)
 by bombadil.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TBoLQ-0005LR-VO
 for barebox@lists.infradead.org; Wed, 12 Sep 2012 14:55:13 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 69AB5FFA028
 for <barebox@lists.infradead.org>; Wed, 12 Sep 2012 16:56:42 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 12 Sep 2012 16:48:26 +0200
Message-Id: <1347461308-24208-5-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1347461308-24208-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120912142743.GR31207@game.jcrosoft.org>
 <1347461308-24208-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 5/7] dhcp: add copy_only_if_valid support
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
