Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo2.mail-out.ovh.net ([188.165.53.149]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UD28z-0003zp-Su
 for barebox@lists.infradead.org; Wed, 06 Mar 2013 00:23:42 +0000
Received: from mail180.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 1F87DDC1DEE
 for <barebox@lists.infradead.org>; Wed,  6 Mar 2013 01:34:44 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed,  6 Mar 2013 01:22:42 +0100
Message-Id: <1362529364-20651-4-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1362529364-20651-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130306002138.GQ23022@game.jcrosoft.org>
 <1362529364-20651-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 4/6] startup: switch to pr_xxx
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/startup.c |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/common/startup.c b/common/startup.c
index 52a8996..e49cc4c 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -105,14 +105,14 @@ void __noreturn start_barebox(void)
 
 	for (initcall = __barebox_initcalls_start;
 			initcall < __barebox_initcalls_end; initcall++) {
-		debug("initcall-> %pS\n", *initcall);
+		pr_debug("initcall-> %pS\n", *initcall);
 		result = (*initcall)();
 		if (result)
 			pr_err("initcall %pS failed: %s\n", *initcall,
 					strerror(-result));
 	}
 
-	debug("initcalls done\n");
+	pr_debug("initcalls done\n");
 
 	if (IS_ENABLED(CONFIG_ENV_HANDLING)) {
 		int ret;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
