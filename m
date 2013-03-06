Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.mo4.mail-out.ovh.net ([188.165.54.143]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UD9si-0006TQ-0g
 for barebox@lists.infradead.org; Wed, 06 Mar 2013 08:39:25 +0000
Received: from mail413.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 98A42104E4DE
 for <barebox@lists.infradead.org>; Wed,  6 Mar 2013 09:50:26 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed,  6 Mar 2013 09:34:56 +0100
Message-Id: <1362558901-11146-4-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1362558901-11146-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130306083347.GB4401@game.jcrosoft.org>
 <1362558901-11146-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 4/9] startup: switch to pr_xxx
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
