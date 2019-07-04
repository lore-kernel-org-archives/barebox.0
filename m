Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hivUW-0006ev-6M
 for barebox@lists.infradead.org; Thu, 04 Jul 2019 06:45:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  4 Jul 2019 08:44:51 +0200
Message-Id: <20190704064453.11772-2-s.hauer@pengutronix.de>
In-Reply-To: <20190704064453.11772-1-s.hauer@pengutronix.de>
References: <20190704064453.11772-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/4] startup: Create global.linux.bootargs.dyn.* variables
 where they are needed
To: Barebox List <barebox@lists.infradead.org>

global.linux.bootargs.dyn.* variables are exclusively used in boot
scripts, so create them right before executing a script. This moves
the corresponding code from the unrelated startup code to the place
where the variables are used.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/boot.c    | 2 ++
 common/startup.c | 6 ------
 2 files changed, 2 insertions(+), 6 deletions(-)

diff --git a/common/boot.c b/common/boot.c
index 974eaf5d02..84b2ff9677 100644
--- a/common/boot.c
+++ b/common/boot.c
@@ -92,6 +92,8 @@ static int bootscript_boot(struct bootentry *entry, int verbose, int dryrun)
 		return 0;
 	}
 
+	globalvar_add_simple("linux.bootargs.dyn.ip", NULL);
+	globalvar_add_simple("linux.bootargs.dyn.root", NULL);
 	globalvar_set_match("linux.bootargs.dyn.", "");
 
 	ret = run_command(bs->scriptpath);
diff --git a/common/startup.c b/common/startup.c
index 749db18e5a..7e5a167af1 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -154,8 +154,6 @@ static const char * const global_autoboot_abort_keys[] = {
 static int global_autoboot_timeout = 3;
 static char *global_boot_default;
 static char *global_linux_bootargs_base;
-static char *global_linux_bootargs_dyn_ip;
-static char *global_linux_bootargs_dyn_root;
 static char *global_user;
 
 static bool test_abort(void)
@@ -225,10 +223,6 @@ static int run_init(void)
 	globalvar_add_simple_string("boot.default", &global_boot_default);
 	globalvar_add_simple_string("linux.bootargs.base",
 				    &global_linux_bootargs_base);
-	globalvar_add_simple_string("linux.bootargs.dyn.ip",
-				    &global_linux_bootargs_dyn_ip);
-	globalvar_add_simple_string("linux.bootargs.dyn.root",
-				    &global_linux_bootargs_dyn_root);
 
 	/* Unblank console cursor */
 	printf("\e[?25h");
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
