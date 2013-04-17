Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1USSDc-0004Ow-7p
 for barebox@lists.infradead.org; Wed, 17 Apr 2013 13:16:13 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Wed, 17 Apr 2013 15:16:05 +0200
Message-Id: <1366204565-28823-1-git-send-email-jlu@pengutronix.de>
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
Subject: [PATCH] environment: support redundant environments
To: barebox@lists.infradead.org

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 arch/arm/mach-omap/omap_generic.c | 14 +++++++++++--
 commands/loadenv.c                | 23 ++++++++++++++-------
 commands/saveenv.c                | 42 ++++++++++++++++++++++++++++-----------
 common/environment.c              |  7 ++++++-
 common/startup.c                  | 17 ++++++++++------
 include/envfs.h                   |  2 +-
 6 files changed, 76 insertions(+), 29 deletions(-)

diff --git a/arch/arm/mach-omap/omap_generic.c b/arch/arm/mach-omap/omap_generic.c
index 580ed3e..6d7f371 100644
--- a/arch/arm/mach-omap/omap_generic.c
+++ b/arch/arm/mach-omap/omap_generic.c
@@ -31,6 +31,16 @@ enum omap_boot_src omap_bootsrc(void)
 #endif
 }
 
+static char *ift_environment_paths[] = {
+	"/dev/defaultenv",
+	NULL,
+};
+
+static char *sd_environment_paths[] = {
+	"/boot/barebox.env",
+	NULL,
+};
+
 #if defined(CONFIG_DEFAULT_ENVIRONMENT) && defined(CONFIG_MCI_STARTUP)
 static int omap_env_init(void)
 {
@@ -55,9 +65,9 @@ static int omap_env_init(void)
 	}
 
 	if (IS_ENABLED(CONFIG_OMAP_BUILD_IFT))
-		default_environment_path = "/dev/defaultenv";
+		environment_paths = ift_environment_paths;
 	else
-		default_environment_path = "/boot/barebox.env";
+		environment_paths = sd_environment_paths;
 
 	return 0;
 }
diff --git a/commands/loadenv.c b/commands/loadenv.c
index 14b9643..197e957 100644
--- a/commands/loadenv.c
+++ b/commands/loadenv.c
@@ -30,7 +30,7 @@ static int do_loadenv(int argc, char *argv[])
 {
 	char *filename, *dirname;
 	unsigned flags = 0;
-	int opt;
+	int opt, ret;
 	int scrub = 0;
 
 	while ((opt = getopt(argc, argv, "ns")) > 0) {
@@ -52,13 +52,11 @@ static int do_loadenv(int argc, char *argv[])
 		dirname = argv[optind + 1];
 
 	if (argc - optind < 1)
-		filename = default_environment_path;
+		filename = NULL;
 	else
 		filename = argv[optind];
 
 	if (scrub) {
-		int ret;
-
 		ret = unlink_recursive(dirname, NULL);
 		if (ret) {
 			eprintf("cannot remove %s: %s\n", dirname,
@@ -74,9 +72,20 @@ static int do_loadenv(int argc, char *argv[])
 		}
 	}
 
-	printf("loading environment from %s\n", filename);
-
-	return envfs_load(filename, dirname, flags);
+	if (filename) {
+		printf("loading environment from %s\n", filename);
+		return envfs_load(filename, dirname, flags);
+	} else {
+		char **paths = environment_paths;
+		while (*paths) {
+			printf("loading environment from %s\n", *paths);
+			ret = envfs_load(*paths, dirname, flags);
+			if (!ret)
+				return ret;
+			paths++;
+		}
+		return ret;
+	}
 }
 
 BAREBOX_CMD_HELP_START(loadenv)
diff --git a/commands/saveenv.c b/commands/saveenv.c
index 7f371a8..ad783e6 100644
--- a/commands/saveenv.c
+++ b/commands/saveenv.c
@@ -27,20 +27,10 @@
 #include <fcntl.h>
 #include <envfs.h>
 
-static int do_saveenv(int argc, char *argv[])
-{
+static int single_saveenv(char *filename, char *dirname) {
 	int ret, fd;
-	char *filename, *dirname;
 
-	printf("saving environment\n");
-	if (argc < 3)
-		dirname = "/env";
-	else
-		dirname = argv[2];
-	if (argc < 2)
-		filename = default_environment_path;
-	else
-		filename = argv[1];
+	printf("saving environment to %s\n", filename);
 
 	fd = open(filename, O_WRONLY | O_CREAT);
 	if (fd < 0) {
@@ -91,6 +81,34 @@ out:
 	return ret;
 }
 
+static int do_saveenv(int argc, char *argv[])
+{
+	int ret;
+	char *filename, *dirname;
+
+	if (argc < 3)
+		dirname = "/env";
+	else
+		dirname = argv[2];
+	if (argc < 2)
+		filename = NULL;
+	else
+		filename = argv[1];
+
+	if (filename) {
+		ret = single_saveenv(filename, dirname);
+	} else {
+		char **paths = environment_paths;
+		ret = 1;
+		while (*paths) {
+			ret = single_saveenv(*paths, dirname) && ret;
+			paths++;
+		}
+	}
+
+	return ret;
+}
+
 BAREBOX_CMD_HELP_START(saveenv)
 BAREBOX_CMD_HELP_USAGE("saveenv [envfs] [directory]\n")
 BAREBOX_CMD_HELP_SHORT("Save the files in <directory> to the persistent storage device <envfs>.\n")
diff --git a/common/environment.c b/common/environment.c
index 78cd45c..300fa57 100644
--- a/common/environment.c
+++ b/common/environment.c
@@ -48,7 +48,12 @@ struct action_data {
 };
 #define PAD4(x) ((x + 3) & ~3)
 
-char *default_environment_path = "/dev/env0";
+static char *default_environment_paths[] = {
+	"/dev/env0",
+	NULL,
+};
+
+char **environment_paths = default_environment_paths;
 
 static int file_size_action(const char *filename, struct stat *statbuf,
 			    void *userdata, int depth)
diff --git a/common/startup.c b/common/startup.c
index 52a8996..1525c69 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -115,14 +115,19 @@ void __noreturn start_barebox(void)
 	debug("initcalls done\n");
 
 	if (IS_ENABLED(CONFIG_ENV_HANDLING)) {
-		int ret;
-
-		ret = envfs_load(default_environment_path, "/env", 0);
+		char **paths = environment_paths;
+		int ret = -ENOENT;
+
+		while (*paths) {
+			printf("loading environment from %s\n", *paths);
+			ret = envfs_load(*paths, "/env", 0);
+			if (!ret)
+				break;
+			paths++;
+		}
 
 		if (ret && IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT)) {
-			printf("no valid environment found on %s. "
-				"Using default environment\n",
-				default_environment_path);
+			printf("using default environment\n");
 			envfs_load("/dev/defaultenv", "/env", 0);
 		}
 	}
diff --git a/include/envfs.h b/include/envfs.h
index e9372b3..981a190 100644
--- a/include/envfs.h
+++ b/include/envfs.h
@@ -94,7 +94,7 @@ int envfs_load(char *filename, char *dirname, unsigned flags);
 int envfs_save(char *filename, char *dirname);
 
 /* defaults to /dev/env0 */
-extern char *default_environment_path;
+extern char **environment_paths;
 
 int envfs_register_partition(const char *devname, unsigned int partnr);
 
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
