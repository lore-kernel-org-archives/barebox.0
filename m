Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1johQr-0006lH-Jz
 for barebox@lists.infradead.org; Fri, 26 Jun 2020 06:01:51 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 26 Jun 2020 08:01:34 +0200
Message-Id: <20200626060134.19836-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] startup: register autoboot vars in initcall
To: Barebox List <barebox@lists.infradead.org>

globalvars should be registered early so that code modifying them also
updates the backing store pointer. Move registering of
global.autoboot_abort_key, global.autoboot_timeout and global.autoboot
to an initcall.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/startup.c | 26 ++++++++++++++------------
 1 file changed, 14 insertions(+), 12 deletions(-)

diff --git a/common/startup.c b/common/startup.c
index 511675ed55..7e0f7d6b64 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -281,19 +281,8 @@ enum autoboot_state do_autoboot_countdown(void)
 	return autoboot_state;
 }
 
-static int run_init(void)
+static int register_autoboot_vars(void)
 {
-	DIR *dir;
-	struct dirent *d;
-	const char *initdir = "/env/init";
-	bool env_bin_init_exists;
-	enum autoboot_state autoboot;
-	struct stat s;
-
-	/*
-	 * Register autoboot variables here as they might be altered by
-	 * init scripts.
-	 */
 	globalvar_add_simple_enum("autoboot_abort_key",
 				  &global_autoboot_abort_key,
                                   global_autoboot_abort_keys,
@@ -305,6 +294,19 @@ static int run_init(void)
 				  global_autoboot_states,
 				  ARRAY_SIZE(global_autoboot_states));
 
+	return 0;
+}
+postcore_initcall(register_autoboot_vars);
+
+static int run_init(void)
+{
+	DIR *dir;
+	struct dirent *d;
+	const char *initdir = "/env/init";
+	bool env_bin_init_exists;
+	enum autoboot_state autoboot;
+	struct stat s;
+
 	setenv("PATH", "/env/bin");
 
 	/* Run legacy /env/bin/init if it exists */
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
