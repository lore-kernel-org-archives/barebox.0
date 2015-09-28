Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.tricorecenter.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZgVzu-0001Qa-NE
 for barebox@lists.infradead.org; Mon, 28 Sep 2015 10:49:32 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 916CFA003FE
 for <barebox@lists.infradead.org>; Mon, 28 Sep 2015 12:49:14 +0200 (CEST)
From: Wadim Egorov <w.egorov@phytec.de>
Date: Mon, 28 Sep 2015 12:48:01 +0200
Message-Id: <1443437281-33316-3-git-send-email-w.egorov@phytec.de>
In-Reply-To: <1443437281-33316-1-git-send-email-w.egorov@phytec.de>
References: <1443437281-33316-1-git-send-email-w.egorov@phytec.de>
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
Subject: [PATCH 3/3] net: dhcp: Fix CONFIG variable name
To: barebox@lists.infradead.org

Signed-off-by: Wadim Egorov <w.egorov@phytec.de>
---
 net/dhcp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/dhcp.c b/net/dhcp.c
index e1625ec..fb8a713 100644
--- a/net/dhcp.c
+++ b/net/dhcp.c
@@ -158,7 +158,7 @@ static void env_str_handle(struct dhcp_opt *opt, unsigned char *popt, int optlen
 
 	if (opt->copy_only_if_valid && !strlen(tmp))
 		return;
-	if (opt->barebox_var_name && IS_ENABLED(EVIRONMENT_VARIABLES))
+	if (opt->barebox_var_name && IS_ENABLED(CONFIG_ENVIRONMENT_VARIABLES))
 		setenv(opt->barebox_var_name, tmp);
 	if (opt->barebox_dhcp_global && IS_ENABLED(CONFIG_GLOBALVAR))
 		dhcp_set_barebox_global(opt->barebox_dhcp_global, tmp);
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
