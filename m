Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Ypynx-0004Ui-L3
 for barebox@lists.infradead.org; Wed, 06 May 2015 12:52:04 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Wed,  6 May 2015 14:51:31 +0200
Message-Id: <1430916691-12459-6-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1430916691-12459-1-git-send-email-mkl@pengutronix.de>
References: <1430916691-12459-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 6/6] startup: introduce postenvironment_initcall
To: barebox@lists.infradead.org

From: Sascha Hauer <s.hauer@pengutronix.de>

To allow init code that depends on the environment being loaded.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 common/startup.c                  | 28 ++++++++++++++++++----------
 include/asm-generic/barebox.lds.h |  4 +++-
 include/init.h                    |  2 ++
 3 files changed, 23 insertions(+), 11 deletions(-)

diff --git a/common/startup.c b/common/startup.c
index e59b06d533e6..6178fc53531b 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -62,6 +62,24 @@ static int mount_root(void)
 fs_initcall(mount_root);
 #endif
 
+#ifdef CONFIG_ENV_HANDLING
+static int load_environment(void)
+{
+	const char *default_environment_path;
+
+	default_environment_path = default_environment_path_get();
+
+	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT))
+		defaultenv_load("/env", 0);
+
+	envfs_load(default_environment_path, "/env", 0);
+	nvvar_load();
+
+	return 0;
+}
+environment_initcall(load_environment);
+#endif
+
 int (*barebox_main)(void);
 
 void __noreturn start_barebox(void)
@@ -84,16 +102,6 @@ void __noreturn start_barebox(void)
 
 	pr_debug("initcalls done\n");
 
-	if (IS_ENABLED(CONFIG_ENV_HANDLING)) {
-		char *default_environment_path = default_environment_path_get();
-
-		if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT))
-			defaultenv_load("/env", 0);
-
-		envfs_load(default_environment_path, "/env", 0);
-		nvvar_load();
-	}
-
 	if (IS_ENABLED(CONFIG_COMMAND_SUPPORT)) {
 		pr_info("running /env/bin/init...\n");
 
diff --git a/include/asm-generic/barebox.lds.h b/include/asm-generic/barebox.lds.h
index e359187d7f85..254397ee97b3 100644
--- a/include/asm-generic/barebox.lds.h
+++ b/include/asm-generic/barebox.lds.h
@@ -34,7 +34,9 @@
 	KEEP(*(.initcall.9))			\
 	KEEP(*(.initcall.10))			\
 	KEEP(*(.initcall.11))			\
-	KEEP(*(.initcall.12))
+	KEEP(*(.initcall.12))			\
+	KEEP(*(.initcall.13))			\
+	KEEP(*(.initcall.14))
 
 #define BAREBOX_CMDS	KEEP(*(SORT_BY_NAME(.barebox_cmd*)))
 
diff --git a/include/init.h b/include/init.h
index 37c7eedf6747..f619c951d377 100644
--- a/include/init.h
+++ b/include/init.h
@@ -39,6 +39,8 @@ typedef int (*initcall_t)(void);
 #define device_initcall(fn)		__define_initcall("10",fn,10)
 #define crypto_initcall(fn)		__define_initcall("11",fn,11)
 #define late_initcall(fn)		__define_initcall("12",fn,12)
+#define environment_initcall(fn)	__define_initcall("13",fn,13)
+#define postenvironment_initcall(fn)	__define_initcall("14",fn,14)
 
 /* section for code used very early when
  * - we're not running from where we linked at
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
