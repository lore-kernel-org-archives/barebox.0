Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Te9lp-0001js-Tu
 for barebox@lists.infradead.org; Thu, 29 Nov 2012 19:27:38 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 29 Nov 2012 20:27:27 +0100
Message-Id: <1354217247-4870-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1354217247-4870-1-git-send-email-s.hauer@pengutronix.de>
References: <1354217247-4870-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/2] loadenv: allow more fine grained environment loading
To: barebox@lists.infradead.org

This implements two new options for the loadenv command:

-s: removes (scrubs) old directory contents to be able to
    create a fresh environment from for example /dev/defaultenv
-n: no overwrite. Do not overwrite existing files. This allows
    to keep parts of the old environment.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/loadenv.c    |   53 +++++++++++++++++++++++++++++++++++++++++++------
 common/environment.c  |   12 +++++++++--
 common/startup.c      |    4 ++--
 include/environment.h |    7 ++++---
 scripts/bareboxenv.c  |    2 +-
 5 files changed, 64 insertions(+), 14 deletions(-)

diff --git a/commands/loadenv.c b/commands/loadenv.c
index 5bf1740..48284d7 100644
--- a/commands/loadenv.c
+++ b/commands/loadenv.c
@@ -21,27 +21,68 @@
  */
 
 #include <common.h>
+#include <getopt.h>
 #include <command.h>
 #include <environment.h>
+#include <fs.h>
 
 static int do_loadenv(int argc, char *argv[])
 {
 	char *filename, *dirname;
+	unsigned flags = 0;
+	int opt;
+	int scrub = 0;
 
-	if (argc < 3)
+	while ((opt = getopt(argc, argv, "ns")) > 0) {
+		switch (opt) {
+		case 'n':
+			flags |= ENV_FLAG_NO_OVERWRITE;
+			break;
+		case 's':
+			scrub = 1;
+			break;
+		default:
+			return COMMAND_ERROR_USAGE;
+		}
+	}
+
+	if (argc - optind < 2)
 		dirname = "/env";
 	else
-		dirname = argv[2];
-	if (argc < 2)
+		dirname = argv[optind + 1];
+
+	if (argc - optind < 1)
 		filename = default_environment_path;
 	else
-		filename = argv[1];
+		filename = argv[optind];
+
+	if (scrub) {
+		int ret;
+
+		ret = unlink_recursive(dirname, NULL);
+		if (ret) {
+			eprintf("cannot remove %s: %s\n", dirname,
+					strerror(-ret));
+			return 1;
+		}
+
+		ret = mkdir(dirname, 0);
+		if (ret) {
+			eprintf("cannot create %s: %s\n", dirname,
+					strerror(-ret));
+			return ret;
+		}
+	}
+
 	printf("loading environment from %s\n", filename);
-	return envfs_load(filename, dirname);
+
+	return envfs_load(filename, dirname, flags);
 }
 
 BAREBOX_CMD_HELP_START(loadenv)
-BAREBOX_CMD_HELP_USAGE("loadenv [ENVFS] [DIRECTORY]\n")
+BAREBOX_CMD_HELP_USAGE("loadenv OPTIONS [ENVFS] [DIRECTORY]\n")
+BAREBOX_CMD_HELP_OPT("-n", "do not overwrite existing files\n")
+BAREBOX_CMD_HELP_OPT("-s", "scrub old environment\n")
 BAREBOX_CMD_HELP_SHORT("Load environment from ENVFS into DIRECTORY (default: /dev/env0 -> /env).\n")
 BAREBOX_CMD_HELP_END
 
diff --git a/common/environment.c b/common/environment.c
index 69c4c0a..e11cd9d 100644
--- a/common/environment.c
+++ b/common/environment.c
@@ -206,7 +206,7 @@ EXPORT_SYMBOL(envfs_save);
  * Note: This function will also be used on the host! See note in the header
  * of this file.
  */
-int envfs_load(char *filename, char *dir)
+int envfs_load(char *filename, char *dir, unsigned flags)
 {
 	struct envfs_super super;
 	void *buf = NULL, *buf_free = NULL;
@@ -316,6 +316,14 @@ int envfs_load(char *filename, char *dir)
 			}
 			free(str);
 		} else {
+			struct stat s;
+
+			if (flags & ENV_FLAG_NO_OVERWRITE &&
+					!stat(str, &s)) {
+				printf("skip %s\n", str);
+				goto skip;
+			}
+
 			fd = open(str, O_WRONLY | O_CREAT | O_TRUNC, 0644);
 			free(str);
 			if (fd < 0) {
@@ -333,7 +341,7 @@ int envfs_load(char *filename, char *dir)
 			}
 			close(fd);
 		}
-
+skip:
 		buf += PAD4(inode_size);
 		size -= headerlen_full + PAD4(inode_size) +
 				sizeof(struct envfs_inode);
diff --git a/common/startup.c b/common/startup.c
index 7bb3c73..14409a2 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -108,12 +108,12 @@ void start_barebox (void)
 	debug("initcalls done\n");
 
 #ifdef CONFIG_ENV_HANDLING
-	if (envfs_load(default_environment_path, "/env")) {
+	if (envfs_load(default_environment_path, "/env", 0)) {
 #ifdef CONFIG_DEFAULT_ENVIRONMENT
 		printf("no valid environment found on %s. "
 			"Using default environment\n",
 			default_environment_path);
-		envfs_load("/dev/defaultenv", "/env");
+		envfs_load("/dev/defaultenv", "/env", 0);
 #endif
 	}
 #endif
diff --git a/include/environment.h b/include/environment.h
index 4184977..096c169 100644
--- a/include/environment.h
+++ b/include/environment.h
@@ -75,9 +75,6 @@ int env_push_context(void);
 /* defaults to /dev/env0 */
 extern char *default_environment_path;
 
-int envfs_load(char *filename, char *dirname);
-int envfs_save(char *filename, char *dirname);
-
 int export(const char *);
 
 struct stat;
@@ -86,6 +83,10 @@ int file_save_action(const char *, struct stat *, void *, int);
 
 #endif /* __BAREBOX__ */
 
+#define ENV_FLAG_NO_OVERWRITE	(1 << 0)
+int envfs_load(char *filename, char *dirname, unsigned flags);
+int envfs_save(char *filename, char *dirname);
+
 /* This part is used for the host and the target */
 struct action_data {
 	int fd;
diff --git a/scripts/bareboxenv.c b/scripts/bareboxenv.c
index 5fdc62e..707d63d 100644
--- a/scripts/bareboxenv.c
+++ b/scripts/bareboxenv.c
@@ -191,7 +191,7 @@ int main(int argc, char *argv[])
 	if (load) {
 		if (verbose)
 			printf("loading env from file %s to %s\n", filename, dirname);
-		envfs_load(filename, dirname);
+		envfs_load(filename, dirname, 0);
 	}
 	if (save) {
 		if (verbose)
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
