Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hivUH-0005gb-PC
 for barebox@lists.infradead.org; Thu, 04 Jul 2019 06:44:59 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  4 Jul 2019 08:44:50 +0200
Message-Id: <20190704064453.11772-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/4] startup: remove unused editcmd variable
To: Barebox List <barebox@lists.infradead.org>

Nobody uses global.editcmd, so remove it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/startup.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/common/startup.c b/common/startup.c
index 5686c0fb32..749db18e5a 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -153,7 +153,6 @@ static const char * const global_autoboot_abort_keys[] = {
 };
 static int global_autoboot_timeout = 3;
 static char *global_boot_default;
-static char *global_editcmd;
 static char *global_linux_bootargs_base;
 static char *global_linux_bootargs_dyn_ip;
 static char *global_linux_bootargs_dyn_root;
@@ -213,7 +212,6 @@ static int run_init(void)
 		return 0;
 	}
 
-	global_editcmd = xstrdup("sedit");
 	global_user = xstrdup("none");
 	globalvar_add_simple_string("user", &global_user);
 	global_boot_default = xstrdup("net");
@@ -225,7 +223,6 @@ static int run_init(void)
 	globalvar_add_simple_int("autoboot_timeout",
 				 &global_autoboot_timeout, "%u");
 	globalvar_add_simple_string("boot.default", &global_boot_default);
-	globalvar_add_simple_string("editcmd", &global_editcmd);
 	globalvar_add_simple_string("linux.bootargs.base",
 				    &global_linux_bootargs_base);
 	globalvar_add_simple_string("linux.bootargs.dyn.ip",
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
