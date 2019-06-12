Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hazUD-00069Z-Ni
 for barebox@lists.infradead.org; Wed, 12 Jun 2019 09:24:06 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 12 Jun 2019 11:24:00 +0200
Message-Id: <20190612092400.4879-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] startup: Do not overwrite global.linux.bootargs.console
To: Barebox List <barebox@lists.infradead.org>
Cc: bst@pengutronix.de

global.linux.bootargs.console already exists. It is created during
console registration with a value, so do not overwrite it with an
empty value during init sequence. Instead create the variable if it
doesn't exist, but keep the old value if it does exist.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/startup.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/common/startup.c b/common/startup.c
index 9fac0eabbd..bbfa1edce0 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -155,7 +155,6 @@ static int global_autoboot_timeout = 3;
 static char *global_boot_default;
 static char *global_editcmd;
 static char *global_linux_bootargs_base;
-static char *global_linux_bootargs_console;
 static char *global_linux_bootargs_dyn_ip;
 static char *global_linux_bootargs_dyn_root;
 static char *global_user;
@@ -228,8 +227,7 @@ static int run_init(void)
 	globalvar_add_simple_string("editcmd", &global_editcmd);
 	globalvar_add_simple_string("linux.bootargs.base",
 				    &global_linux_bootargs_base);
-	globalvar_add_simple_string("linux.bootargs.console",
-				    &global_linux_bootargs_console);
+	globalvar_add_simple("linux.bootargs.console", NULL);
 	globalvar_add_simple_string("linux.bootargs.dyn.ip",
 				    &global_linux_bootargs_dyn_ip);
 	globalvar_add_simple_string("linux.bootargs.dyn.root",
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
