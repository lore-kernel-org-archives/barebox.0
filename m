Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJZiM-0001a3-7t
 for barebox@lists.infradead.org; Wed, 01 Apr 2020 09:31:15 +0000
Received: from geraet.fritz.box (muedsl-82-207-203-222.citykom.de
 [82.207.203.222]) (Authenticated sender: ahmad@a3f.at)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 94AFC1C0017
 for <barebox@lists.infradead.org>; Wed,  1 Apr 2020 09:31:11 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Wed,  1 Apr 2020 11:31:02 +0200
Message-Id: <20200401093104.959691-3-ahmad@a3f.at>
In-Reply-To: <20200401093104.959691-1-ahmad@a3f.at>
References: <20200401093104.959691-1-ahmad@a3f.at>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [RFC PATCH 2/4] startup: wrap barebox startup in TRY/CATCH
To: barebox@lists.infradead.org

Install a top level exception handler around barebox_main, so we may
catch THROWs that aren't contained in a TRY { } block.

Reviewed-by: Ahmad Fatoum <ahmad@a3f.at>
---
 common/startup.c | 42 +++++++++++++++++++++++++-----------------
 1 file changed, 25 insertions(+), 17 deletions(-)

diff --git a/common/startup.c b/common/startup.c
index c417a4d0781a..41da1359def6 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -348,27 +348,35 @@ void __noreturn start_barebox(void)
 	if (!IS_ENABLED(CONFIG_SHELL_NONE) && IS_ENABLED(CONFIG_COMMAND_SUPPORT))
 		barebox_main = run_init;
 
-	for (initcall = __barebox_initcalls_start;
-			initcall < __barebox_initcalls_end; initcall++) {
-		pr_debug("initcall-> %pS\n", *initcall);
-		result = (*initcall)();
-		if (result)
-			pr_err("initcall %pS failed: %s\n", *initcall,
-					strerror(-result));
-	}
+	TRY {
+		for (initcall = __barebox_initcalls_start;
+				initcall < __barebox_initcalls_end; initcall++) {
+			pr_debug("initcall-> %pS\n", *initcall);
+			result = (*initcall)();
+			if (result)
+				pr_err("initcall %pS failed: %s\n", *initcall,
+						strerror(-result));
+		}
 
-	pr_debug("initcalls done\n");
+		pr_debug("initcalls done\n");
 
-	if (barebox_main)
-		barebox_main();
+		if (barebox_main)
+			barebox_main();
 
-	if (IS_ENABLED(CONFIG_SHELL_NONE)) {
-		pr_err("Nothing left to do\n");
-		hang();
-	} else {
-		while (1)
-			run_shell();
+		if (IS_ENABLED(CONFIG_SHELL_NONE)) {
+			pr_err("Nothing left to do\n");
+			hang();
+		} else {
+			while (1)
+				run_shell();
+		}
+	} CATCH_ALL {
+		panic("Unhandled exception");
 	}
+
+
+	ENDTRY;
+
 }
 
 void __noreturn hang (void)
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
