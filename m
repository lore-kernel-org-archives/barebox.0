Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo2.mail-out.ovh.net ([188.165.48.182]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TjBrB-0007qu-6f
 for barebox@lists.infradead.org; Thu, 13 Dec 2012 16:42:00 +0000
Received: from mail426.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id CC6E6DC1FBA
 for <barebox@lists.infradead.org>; Thu, 13 Dec 2012 17:50:24 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 13 Dec 2012 17:40:06 +0100
Message-Id: <1355416810-26555-5-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1355416810-26555-1-git-send-email-plagnioj@jcrosoft.com>
References: <20121213163758.GB26483@game.jcrosoft.org>
 <1355416810-26555-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 5/9] startup: switch to pr_xxx
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/startup.c |   10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/common/startup.c b/common/startup.c
index 14409a2..1a6352d 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -98,19 +98,19 @@ void start_barebox (void)
 
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
 
 #ifdef CONFIG_ENV_HANDLING
 	if (envfs_load(default_environment_path, "/env", 0)) {
 #ifdef CONFIG_DEFAULT_ENVIRONMENT
-		printf("no valid environment found on %s. "
+		pr_info("no valid environment found on %s. "
 			"Using default environment\n",
 			default_environment_path);
 		envfs_load("/dev/defaultenv", "/env", 0);
@@ -118,12 +118,12 @@ void start_barebox (void)
 	}
 #endif
 #ifdef CONFIG_COMMAND_SUPPORT
-	printf("running /env/bin/init...\n");
+	pr_info("running /env/bin/init...\n");
 
 	if (!stat("/env/bin/init", &s)) {
 		run_command("source /env/bin/init", 0);
 	} else {
-		printf("not found\n");
+		pr_err("not found\n");
 	}
 #endif
 	/* main_loop() can return to retry autoboot, if so just run it again. */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
