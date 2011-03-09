Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PxL8l-00058e-Cs
	for barebox@lists.infradead.org; Wed, 09 Mar 2011 15:17:34 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Wed,  9 Mar 2011 16:17:25 +0100
Message-Id: <1299683846-20616-5-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1299683846-20616-1-git-send-email-jbe@pengutronix.de>
References: <1299683846-20616-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 4/5] Add multi environment support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Acked-by: Juergen Beisert <jbe@pengutronix.de>
---
 commands/loadenv.c |   53 ++++++++++++++++++++++++-
 commands/saveenv.c |  110 ++++++++++++++++++++++++++++++++-------------------
 2 files changed, 120 insertions(+), 43 deletions(-)

diff --git a/commands/loadenv.c b/commands/loadenv.c
index 5f4c195..a6d93cd 100644
--- a/commands/loadenv.c
+++ b/commands/loadenv.c
@@ -26,8 +26,11 @@
 #include <common.h>
 #include <command.h>
 #include <environment.h>
+#include <fs.h>
+#include <linux/stat.h>
 
-static int do_loadenv(struct command *cmdtp, int argc, char *argv[])
+static int __maybe_unused do_single_loadenv(struct command *cmdtp, int argc,
+							char *argv[])
 {
 	char *filename, *dirname;
 
@@ -43,9 +46,51 @@ static int do_loadenv(struct command *cmdtp, int argc, char *argv[])
 	return envfs_load(filename, dirname, NULL);
 }
 
+static int __maybe_unused do_multi_loadenv(struct command *cmdtp, int argc,
+							char *argv[])
+{
+	char *dirname;
+	int rc;
+	int i = 0;
+	char file[9 + 5];	/* '/dev/env.....' */
+	struct stat file_info;
+
+	if (argc < 3)
+		dirname = "/env";
+	else
+		dirname = argv[2];
+
+	if (argc > 1) {
+		rc = envfs_load(argv[1], dirname, NULL);
+		return rc ? 1 : 0;
+	}
+
+	rc = 1;
+
+	/* default filename, loop over all /dev/env[number] till one succeeds */
+	while (1) {
+		sprintf(file, "/dev/env%d", i);
+
+		if (stat(file, &file_info) != 0)
+			break;
+
+		rc = envfs_load(file, dirname, NULL);
+		if (!rc)
+			break;
+		i++;
+	}
+
+	return rc ? 1 : 0;
+}
+
 BAREBOX_CMD_HELP_START(loadenv)
 BAREBOX_CMD_HELP_USAGE("loadenv [ENVFS] [DIRECTORY]\n")
 BAREBOX_CMD_HELP_SHORT("Load environment from ENVFS into DIRECTORY (default: /dev/env0 -> /env).\n")
+#ifdef CONFIG_MULTI_ENV_HANDLING
+BAREBOX_CMD_HELP_SHORT("If more than one environment backend storage is available, and the access to\n")
+BAREBOX_CMD_HELP_SHORT("the first storage fails, this command automatically uses the next available\n")
+BAREBOX_CMD_HELP_SHORT("environment backend storage (env0 -> env1).\n")
+#endif
 BAREBOX_CMD_HELP_END
 
 /**
@@ -58,7 +103,11 @@ ENVFS can only handle files, directories are skipped silently.
  */
 
 BAREBOX_CMD_START(loadenv)
-	.cmd		= do_loadenv,
+#ifdef CONFIG_MULTI_ENV_HANDLING
+	.cmd		= do_multi_loadenv,
+#else
+	.cmd		= do_single_loadenv,
+#endif
 	.usage		= "Load environment from ENVFS into DIRECTORY (default: /dev/env0 -> /env).",
 	BAREBOX_CMD_HELP(cmd_loadenv_help)
 BAREBOX_CMD_END
diff --git a/commands/saveenv.c b/commands/saveenv.c
index 2f969fe..980ce7f 100644
--- a/commands/saveenv.c
+++ b/commands/saveenv.c
@@ -29,52 +29,22 @@
 #include <fs.h>
 #include <fcntl.h>
 #include <environment.h>
+#include <linux/ctype.h>
+#include <linux/stat.h>
 
-static int do_saveenv(struct command *cmdtp, int argc, char *argv[])
+static int saveenv(char *filename, char *dirname)
 {
-	int ret, fd;
-	char *filename, *dirname;
-
-	printf("saving environment\n");
-	if (argc < 3)
-		dirname = "/env";
-	else
-		dirname = argv[2];
-	if (argc < 2)
-		filename = "/dev/env0";
-	else
-		filename = argv[1];
-
-	fd = open(filename, O_WRONLY | O_CREAT);
-	if (fd < 0) {
-		printf("could not open %s: %s\n", filename, errno_str());
-		return 1;
-	}
+	int ret = 0;
+	int fd;
 
-	ret = protect(fd, ~0, 0, 0);
-
-	/* ENOSYS is no error here, many devices do not need it */
-	if (ret && errno != -ENOSYS) {
-		printf("could not unprotect %s: %s\n", filename, errno_str());
-		close(fd);
+	ret = file_check_and_erase(filename);
+	if (ret)
 		return 1;
-	}
-
-	ret = erase(fd, ~0, 0);
-
-	/* ENOSYS is no error here, many devices do not need it */
-	if (ret && errno != -ENOSYS) {
-		printf("could not erase %s: %s\n", filename, errno_str());
-		close(fd);
-		return 1;
-	}
-
-	close(fd);
 
 	ret = envfs_save(filename, dirname);
 	if (ret) {
 		printf("saveenv failed\n");
-		goto out;
+		return 1;
 	}
 
 	fd = open(filename, O_WRONLY | O_CREAT);
@@ -88,19 +58,74 @@ static int do_saveenv(struct command *cmdtp, int argc, char *argv[])
 		return 1;
 	}
 
-	ret = 0;
-out:
 	close(fd);
+
+	return 0;
+}
+
+static int __maybe_unused do_single_saveenv(struct command *cmdtp, int argc,
+							char *argv[])
+{
+	char *filename, *dirname;
+
+	printf("saving environment\n");
+	if (argc < 3)
+		dirname = "/env";
+	else
+		dirname = argv[2];
+	if (argc < 2)
+		filename = "/dev/env0";
+	else
+		filename = argv[1];
+
+	return saveenv(filename, dirname);
+}
+
+static int __maybe_unused do_multi_saveenv(struct command *cmdtp, int argc,
+							char *argv[])
+{
+	int ret = 0;
+	char *dirname;
+	int i = 0;
+	char file[9 + 5];
+	struct stat file_info;
+
+	printf("saving environment\n");
+	if (argc < 3)
+		dirname = "/env";
+	else
+		dirname = argv[2];
+
+	if (argc > 1)
+		return saveenv(argv[1], dirname);
+
+	/* default filename, save environment to all /dev/env[number] */
+	while (1) {
+		sprintf(file, "/dev/env%d", i);
+		if (stat(file, &file_info))
+			break;
+		ret |= saveenv(file, dirname);
+		i++;
+	}
+
 	return ret;
 }
 
 BAREBOX_CMD_HELP_START(saveenv)
 BAREBOX_CMD_HELP_USAGE("saveenv [envfs] [directory]\n")
 BAREBOX_CMD_HELP_SHORT("Save the files in <directory> to the persistent storage device <envfs>.\n")
+#ifdef CONFIG_MULTI_ENV_HANDLING
+BAREBOX_CMD_HELP_SHORT("If more than one environment backend storage is available it will get stored\n")
+BAREBOX_CMD_HELP_SHORT("in all of them in ascending order (env0 -> env1).\n")
+#endif
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(saveenv)
-	.cmd		= do_saveenv,
+#ifdef CONFIG_MULTI_ENV_HANDLING
+	.cmd		= do_multi_saveenv,
+#else
+	.cmd		= do_single_saveenv,
+#endif
 	.usage		= "save environment to persistent storage",
 	BAREBOX_CMD_HELP(cmd_saveenv_help)
 BAREBOX_CMD_END
@@ -112,6 +137,9 @@ BAREBOX_CMD_END
 ommitted, \<directory> defaults to /env and \<envfs> defaults to
 /dev/env0. Note that envfs can only handle files, directories are being
 skipped silently.</p>
+Only if CONFIG_MULTI_ENV_HANDLING is enabled:
+If more than one environment backend storage is available it will get stored
+in all of them in ascending order (env0 -> env1).
 
 \todo What does 'block in flash' mean? Add example.
 
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
