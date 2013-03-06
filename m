Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 11.mo4.mail-out.ovh.net ([46.105.34.195]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UD9sj-0006UM-Pw
 for barebox@lists.infradead.org; Wed, 06 Mar 2013 08:39:27 +0000
Received: from mail413.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id E49CF104E4EC
 for <barebox@lists.infradead.org>; Wed,  6 Mar 2013 09:50:27 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed,  6 Mar 2013 09:35:00 +0100
Message-Id: <1362558901-11146-8-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 8/9] startup: switch to pr_xxx
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/startup.c |    8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/common/startup.c b/common/startup.c
index e49cc4c..ff00ca7 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -120,7 +120,7 @@ void __noreturn start_barebox(void)
 		ret = envfs_load(default_environment_path, "/env", 0);
 
 		if (ret && IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT)) {
-			printf("no valid environment found on %s. "
+			pr_err("no valid environment found on %s. "
 				"Using default environment\n",
 				default_environment_path);
 			envfs_load("/dev/defaultenv", "/env", 0);
@@ -128,17 +128,17 @@ void __noreturn start_barebox(void)
 	}
 
 	if (IS_ENABLED(CONFIG_COMMAND_SUPPORT)) {
-		printf("running /env/bin/init...\n");
+		pr_info("running /env/bin/init...\n");
 
 		if (!stat("/env/bin/init", &s)) {
 			run_command("source /env/bin/init", 0);
 		} else {
-			printf("not found\n");
+			pr_err("/env/bin/init not found\n");
 		}
 	}
 
 	if (!barebox_main) {
-		printf("No main function! aborting.\n");
+		pr_err("No main function! aborting.\n");
 		hang();
 	}
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
