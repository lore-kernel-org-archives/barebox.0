Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hivUN-0005t8-VU
 for barebox@lists.infradead.org; Thu, 04 Jul 2019 06:45:05 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  4 Jul 2019 08:44:52 +0200
Message-Id: <20190704064453.11772-3-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/4] startup: Create boot related variables where they are used
To: Barebox List <barebox@lists.infradead.org>

global.boot.default, global.linux.bootargs.base and global.user are
used in the boot code, so create them there.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/boot.c    | 18 ++++++++++++++----
 common/startup.c | 10 ----------
 2 files changed, 14 insertions(+), 14 deletions(-)

diff --git a/common/boot.c b/common/boot.c
index 84b2ff9677..14d4fe9d64 100644
--- a/common/boot.c
+++ b/common/boot.c
@@ -119,12 +119,22 @@ void boot_set_watchdog_timeout(unsigned int timeout)
 	boot_watchdog_timeout = timeout;
 }
 
-static int init_boot_watchdog_timeout(void)
+static char *global_boot_default;
+static char *global_user;
+
+static int init_boot(void)
 {
-	return globalvar_add_simple_int("boot.watchdog_timeout",
-			&boot_watchdog_timeout, "%u");
+	global_boot_default = xstrdup("net");
+	globalvar_add_simple_string("boot.default", &global_boot_default);
+	globalvar_add_simple_int("boot.watchdog_timeout",
+				 &boot_watchdog_timeout, "%u");
+	globalvar_add_simple("linux.bootargs.base", NULL);
+	global_user = xstrdup("none");
+	globalvar_add_simple_string("user", &global_user);
+
+	return 0;
 }
-late_initcall(init_boot_watchdog_timeout);
+late_initcall(init_boot);
 
 BAREBOX_MAGICVAR_NAMED(global_watchdog_timeout, global.boot.watchdog_timeout,
 		"Watchdog enable timeout in seconds before booting");
diff --git a/common/startup.c b/common/startup.c
index 7e5a167af1..b88c4a00d3 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -152,9 +152,6 @@ static const char * const global_autoboot_abort_keys[] = {
 	"ctrl-c",
 };
 static int global_autoboot_timeout = 3;
-static char *global_boot_default;
-static char *global_linux_bootargs_base;
-static char *global_user;
 
 static bool test_abort(void)
 {
@@ -210,19 +207,12 @@ static int run_init(void)
 		return 0;
 	}
 
-	global_user = xstrdup("none");
-	globalvar_add_simple_string("user", &global_user);
-	global_boot_default = xstrdup("net");
-
 	globalvar_add_simple_enum("autoboot_abort_key",
 				  &global_autoboot_abort_key,
                                   global_autoboot_abort_keys,
 				  ARRAY_SIZE(global_autoboot_abort_keys));
 	globalvar_add_simple_int("autoboot_timeout",
 				 &global_autoboot_timeout, "%u");
-	globalvar_add_simple_string("boot.default", &global_boot_default);
-	globalvar_add_simple_string("linux.bootargs.base",
-				    &global_linux_bootargs_base);
 
 	/* Unblank console cursor */
 	printf("\e[?25h");
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
