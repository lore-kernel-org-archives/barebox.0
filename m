Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hJF7A-0008UA-Qr
 for barebox@lists.infradead.org; Wed, 24 Apr 2019 10:27:00 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 24 Apr 2019 12:26:50 +0200
Message-Id: <20190424102650.9257-4-s.hauer@pengutronix.de>
In-Reply-To: <20190424102650.9257-1-s.hauer@pengutronix.de>
References: <20190424102650.9257-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/4] defaultenv: Convert init script to C
To: Barebox List <barebox@lists.infradead.org>

It's hard to get more complicated things right in hush. This commit
converts the /env/bin/init script to C code. With this we get a better
error handling and better control what is being done.

If /env/bin/init exists in the environment then it is still executed
instead of the corresponding C code.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/startup.c                      | 188 +++++++++++++++++++++++---
 defaultenv/defaultenv-2-base/bin/init |  79 -----------
 2 files changed, 169 insertions(+), 98 deletions(-)
 delete mode 100644 defaultenv/defaultenv-2-base/bin/init

diff --git a/common/startup.c b/common/startup.c
index 28edee4fce..9fac0eabbd 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -42,6 +42,9 @@
 #include <asm/sections.h>
 #include <uncompress.h>
 #include <globalvar.h>
+#include <console_countdown.h>
+#include <environment.h>
+#include <linux/ctype.h>
 
 extern initcall_t __barebox_initcalls_start[], __barebox_early_initcalls_end[],
 		  __barebox_initcalls_end[];
@@ -143,16 +146,172 @@ static int load_environment(void)
 environment_initcall(load_environment);
 #endif
 
+static int global_autoboot_abort_key;
+static const char * const global_autoboot_abort_keys[] = {
+	"any",
+	"ctrl-c",
+};
+static int global_autoboot_timeout = 3;
+static char *global_boot_default;
+static char *global_editcmd;
+static char *global_linux_bootargs_base;
+static char *global_linux_bootargs_console;
+static char *global_linux_bootargs_dyn_ip;
+static char *global_linux_bootargs_dyn_root;
+static char *global_user;
+
+static bool test_abort(void)
+{
+	bool do_abort = false;
+	int c, ret;
+	char key;
+
+	while (tstc()) {
+		c = getchar();
+		if (tolower(c) == 'q' || c == 3)
+			do_abort = true;
+	}
+
+	if (!do_abort)
+		return false;
+
+	printf("Abort init sequence? (y/n)\n"
+	       "Will continue with init sequence in:");
+
+	ret = console_countdown(5, CONSOLE_COUNTDOWN_EXTERN, "yYnN", &key);
+	if (!ret)
+		return false;
+
+	if (tolower(key) == 'y')
+		return true;
+
+	return false;
+}
+
+static int run_init(void)
+{
+	DIR *dir;
+	struct dirent *d;
+	const char *initfile = "/env/bin/init";
+	const char *initdir = "/env/init";
+	const char *menufile = "/env/menu/mainmenu";
+	struct stat s;
+	unsigned flags = CONSOLE_COUNTDOWN_EXTERN;
+	unsigned char outkey;
+	int ret;
+	bool menu_exists;
+	bool env_bin_init_exists;
+	char *abortkeys = NULL;
+
+	setenv("PATH", "/env/bin");
+
+	/* Run legacy /env/bin/init if it exists */
+	env_bin_init_exists = stat(initfile, &s) == 0;
+	if (env_bin_init_exists) {
+		pr_info("running %s...\n", initfile);
+		run_command(initfile);
+		return 0;
+	}
+
+	global_editcmd = xstrdup("sedit");
+	global_user = xstrdup("none");
+	globalvar_add_simple_string("user", &global_user);
+	global_boot_default = xstrdup("net");
+
+	globalvar_add_simple_enum("autoboot_abort_key",
+				  &global_autoboot_abort_key,
+                                  global_autoboot_abort_keys,
+				  ARRAY_SIZE(global_autoboot_abort_keys));
+	globalvar_add_simple_int("autoboot_timeout",
+				 &global_autoboot_timeout, "%u");
+	globalvar_add_simple_string("boot.default", &global_boot_default);
+	globalvar_add_simple_string("editcmd", &global_editcmd);
+	globalvar_add_simple_string("linux.bootargs.base",
+				    &global_linux_bootargs_base);
+	globalvar_add_simple_string("linux.bootargs.console",
+				    &global_linux_bootargs_console);
+	globalvar_add_simple_string("linux.bootargs.dyn.ip",
+				    &global_linux_bootargs_dyn_ip);
+	globalvar_add_simple_string("linux.bootargs.dyn.root",
+				    &global_linux_bootargs_dyn_root);
+
+	/* Unblank console cursor */
+	printf("\e[?25h");
+
+	if (test_abort()) {
+		pr_info("Init sequence aborted\n");
+		return -EINTR;
+	}
+
+	/* Run scripts in /env/init/ */
+	dir = opendir(initdir);
+	if (dir) {
+		char *scr;
+
+		while ((d = readdir(dir))) {
+			if (*d->d_name == '.')
+				continue;
+
+			pr_debug("Executing '%s/%s'...\n", initdir, d->d_name);
+			scr = basprintf("source %s/%s", initdir, d->d_name);
+			run_command(scr);
+			free(scr);
+		}
+
+		closedir(dir);
+	}
+
+	menu_exists = stat(menufile, &s) == 0;
+
+	if (menu_exists) {
+		printf("\nHit m for menu or %s to stop autoboot: ",
+		       global_autoboot_abort_keys[global_autoboot_abort_key]);
+		abortkeys = "m";
+	} else {
+		printf("\nHit %s to stop autoboot: ",
+		       global_autoboot_abort_keys[global_autoboot_abort_key]);
+	}
+
+	switch (global_autoboot_abort_key) {
+	case 0:
+		flags |= CONSOLE_COUNTDOWN_ANYKEY;
+		break;
+	case 1:
+		flags |= CONSOLE_COUNTDOWN_CTRLC;
+		break;
+	default:
+		break;
+	}
+
+	ret = console_countdown(global_autoboot_timeout, flags, abortkeys,
+				&outkey);
+
+	if (ret == 0)
+		run_command("boot");
+
+	console_ctrlc_allow();
+
+	if (menu_exists) {
+		if (outkey == 'm')
+			run_command(menufile);
+
+		printf("Enter 'exit' to get back to the menu\n");
+		run_shell();
+		run_command(menufile);
+	}
+
+	return 0;
+}
+
 int (*barebox_main)(void);
 
 void __noreturn start_barebox(void)
 {
 	initcall_t *initcall;
 	int result;
-	struct stat s;
 
-	if (!IS_ENABLED(CONFIG_SHELL_NONE))
-		barebox_main = run_shell;
+	if (!IS_ENABLED(CONFIG_SHELL_NONE) && IS_ENABLED(CONFIG_COMMAND_SUPPORT))
+		barebox_main = run_init;
 
 	for (initcall = __barebox_initcalls_start;
 			initcall < __barebox_initcalls_end; initcall++) {
@@ -165,25 +324,16 @@ void __noreturn start_barebox(void)
 
 	pr_debug("initcalls done\n");
 
-	if (IS_ENABLED(CONFIG_COMMAND_SUPPORT)) {
-		pr_info("running /env/bin/init...\n");
-
-		if (!stat("/env/bin/init", &s))
-			run_command("source /env/bin/init");
-		else
-			pr_err("/env/bin/init not found\n");
-	}
+	if (barebox_main)
+		barebox_main();
 
-	if (!barebox_main) {
-		pr_err("No main function! aborting.\n");
+	if (IS_ENABLED(CONFIG_SHELL_NONE)) {
+		pr_err("Nothing left to do\n");
 		hang();
+	} else {
+		while (1)
+			run_shell();
 	}
-
-	/* main_loop() can return to retry autoboot, if so just run it again. */
-	for (;;)
-		barebox_main();
-
-	/* NOTREACHED - no way out of command loop except booting */
 }
 
 void __noreturn hang (void)
diff --git a/defaultenv/defaultenv-2-base/bin/init b/defaultenv/defaultenv-2-base/bin/init
deleted file mode 100644
index a5d3a984f7..0000000000
--- a/defaultenv/defaultenv-2-base/bin/init
+++ /dev/null
@@ -1,79 +0,0 @@
-#!/bin/sh
-
-export PATH=/env/bin
-
-global hostname
-global user
-global autoboot_timeout
-global autoboot_abort_key
-global boot.default
-global linux.bootargs.base
-global linux.bootargs.console
-#linux.bootargs.dyn.* will be cleared at the beginning of boot
-global linux.bootargs.dyn.ip
-global linux.bootargs.dyn.root
-global editcmd
-
-[ -z "${global.hostname}" ] && global.hostname=generic
-[ -z "${global.user}" ] && global.user=none
-magicvar -a global.user "username (used in network filenames)"
-[ -z "${global.autoboot_timeout}" ] && global.autoboot_timeout=3
-magicvar -a global.autoboot_timeout "timeout in seconds before automatic booting"
-[ -z "${global.autoboot_abort_key}" ] && global.autoboot_abort_key=any
-magicvar -a global.autoboot_abort_key "key to abort automatic booting (valid options: any, ctrl-c)"
-[ -z "${global.boot.default}" ] && global.boot.default=net
-[ -z "${global.editcmd}" ] && global.editcmd=sedit
-
-[ -e /env/config-board ] && /env/config-board
-/env/config
-
-# allow to stop the boot before execute the /env/init/*
-# but without waiting
-timeout -s -a -v key 0
-autoboot="$?"
-
-echo -e -n "\e[?25h"
-if [ "${key}" = "q" ]; then
-	exit
-fi
-
-for i in /env/init/*; do
-	. $i
-done
-
-if [ "${global.autoboot_abort_key}" = "ctrl-c" ]; then
-	abort_string="ctrl-c"
-	abort_args="-c"
-else
-	abort_string="any key"
-	abort_args="-a"
-fi
-
-if [ -e /env/menu ]; then
-	echo -e -n "\nHit m for menu or $abort_string to stop autoboot: "
-else
-	echo -e -n "\nHit $abort_string to stop autoboot: "
-fi
-
-if [ "$autoboot" = 0 ]; then
-	timeout $abort_args $global.autoboot_timeout -v key
-	autoboot="$?"
-fi
-
-global.console.ctrlc_allowed=true
-
-if [ "${key}" = "q" ]; then
-	exit
-fi
-
-if [ "$autoboot" = 0 ]; then
-	boot
-fi
-
-if [ -e /env/menu ]; then
-	if [ "${key}" != "m" ]; then
-		echo -e "\ntype exit to get to the menu"
-		sh
-	fi
-	/env/menu/mainmenu
-fi
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
