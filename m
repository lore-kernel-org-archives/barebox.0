Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hivUe-00074E-2h
 for barebox@lists.infradead.org; Thu, 04 Jul 2019 06:45:24 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  4 Jul 2019 08:44:53 +0200
Message-Id: <20190704064453.11772-4-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/4] startup: Factor out the autoboot counter to separate
 function
To: Barebox List <barebox@lists.infradead.org>

The autoboot countdown is part of the init function. This patch factors
out this code to a separate function to allow boards to call it at a
different time. Also boards can set the autoboot state manually in case
they have its own idea how to interrupt the autoboot process.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/startup.c | 134 +++++++++++++++++++++++++++++++----------------
 include/common.h |  10 ++++
 2 files changed, 98 insertions(+), 46 deletions(-)

diff --git a/common/startup.c b/common/startup.c
index b88c4a00d3..92bf94f849 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -182,20 +182,95 @@ static bool test_abort(void)
 }
 
 #define INITFILE "/env/bin/init"
+#define MENUFILE "/env/menu/mainmenu"
+
+static enum autoboot_state autoboot_state = AUTOBOOT_UNKNOWN;
+
+/**
+ * set_autoboot_state - set the autoboot state
+ * @autoboot: the state to set
+ *
+ * This functions sets the autoboot state to the given state. This can be called
+ * by boards which have its own idea when and how the autoboot shall be aborted.
+ */
+void set_autoboot_state(enum autoboot_state autoboot)
+{
+	autoboot_state = autoboot;
+}
+
+/**
+ * do_autoboot_countdown - print autoboot countdown to console
+ *
+ * This prints the autoboot countdown to the console and waits for input. This
+ * evaluates the global.autoboot_about_key to determine which keys are allowed
+ * to interrupt booting and also global.autoboot_timeout to determine the timeout
+ * for the counter. This function can be called multiple times, it is executed
+ * only the first time.
+ *
+ * Returns an enum autoboot_state value containing the user input.
+ */
+enum autoboot_state do_autoboot_countdown(void)
+{
+	unsigned flags = CONSOLE_COUNTDOWN_EXTERN;
+	int ret;
+	struct stat s;
+	bool menu_exists;
+	char *abortkeys = NULL;
+	unsigned char outkey;
+
+	if (autoboot_state != AUTOBOOT_UNKNOWN)
+		return autoboot_state;
+
+	globalvar_add_simple_enum("autoboot_abort_key",
+				  &global_autoboot_abort_key,
+                                  global_autoboot_abort_keys,
+				  ARRAY_SIZE(global_autoboot_abort_keys));
+	globalvar_add_simple_int("autoboot_timeout",
+				 &global_autoboot_timeout, "%u");
+
+	menu_exists = stat(MENUFILE, &s) == 0;
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
+		autoboot_state = AUTOBOOT_BOOT;
+	else if (menu_exists && outkey == 'm')
+		autoboot_state = AUTOBOOT_MENU;
+	else
+		autoboot_state = AUTOBOOT_ABORT;
+
+	return autoboot_state;
+}
 
 static int run_init(void)
 {
 	DIR *dir;
 	struct dirent *d;
 	const char *initdir = "/env/init";
-	const char *menufile = "/env/menu/mainmenu";
-	struct stat s;
-	unsigned flags = CONSOLE_COUNTDOWN_EXTERN;
-	unsigned char outkey;
-	int ret;
-	bool menu_exists;
 	bool env_bin_init_exists;
-	char *abortkeys = NULL;
+	enum autoboot_state autoboot;
+	struct stat s;
 
 	setenv("PATH", "/env/bin");
 
@@ -207,13 +282,6 @@ static int run_init(void)
 		return 0;
 	}
 
-	globalvar_add_simple_enum("autoboot_abort_key",
-				  &global_autoboot_abort_key,
-                                  global_autoboot_abort_keys,
-				  ARRAY_SIZE(global_autoboot_abort_keys));
-	globalvar_add_simple_int("autoboot_timeout",
-				 &global_autoboot_timeout, "%u");
-
 	/* Unblank console cursor */
 	printf("\e[?25h");
 
@@ -240,44 +308,18 @@ static int run_init(void)
 		closedir(dir);
 	}
 
-	menu_exists = stat(menufile, &s) == 0;
-
-	if (menu_exists) {
-		printf("\nHit m for menu or %s to stop autoboot: ",
-		       global_autoboot_abort_keys[global_autoboot_abort_key]);
-		abortkeys = "m";
-	} else {
-		printf("\nHit %s to stop autoboot: ",
-		       global_autoboot_abort_keys[global_autoboot_abort_key]);
-	}
-
-	switch (global_autoboot_abort_key) {
-	case 0:
-		flags |= CONSOLE_COUNTDOWN_ANYKEY;
-		break;
-	case 1:
-		flags |= CONSOLE_COUNTDOWN_CTRLC;
-		break;
-	default:
-		break;
-	}
-
-	ret = console_countdown(global_autoboot_timeout, flags, abortkeys,
-				&outkey);
+	autoboot = do_autoboot_countdown();
 
-	if (ret == 0)
+	if (autoboot == AUTOBOOT_BOOT)
 		run_command("boot");
 
 	console_ctrlc_allow();
 
-	if (menu_exists) {
-		if (outkey == 'm')
-			run_command(menufile);
+	if (autoboot == AUTOBOOT_MENU)
+		run_command(MENUFILE);
 
-		printf("Enter 'exit' to get back to the menu\n");
-		run_shell();
-		run_command(menufile);
-	}
+	run_shell();
+	run_command(MENUFILE);
 
 	return 0;
 }
diff --git a/include/common.h b/include/common.h
index b1294978d7..08f79a54af 100644
--- a/include/common.h
+++ b/include/common.h
@@ -93,6 +93,16 @@ unsigned long long strtoull_suffix(const char *str, char **endp, int base);
  */
 extern int (*barebox_main)(void);
 
+enum autoboot_state {
+	AUTOBOOT_UNKNOWN,
+	AUTOBOOT_ABORT,
+	AUTOBOOT_MENU,
+	AUTOBOOT_BOOT,
+};
+
+void set_autoboot_state(enum autoboot_state autoboot);
+enum autoboot_state do_autoboot_countdown(void);
+
 void __noreturn start_barebox(void);
 void shutdown_barebox(void);
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
