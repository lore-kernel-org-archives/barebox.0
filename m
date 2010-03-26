Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1Nv92Q-0003FR-AG
	for barebox@lists.infradead.org; Fri, 26 Mar 2010 12:53:23 +0000
From: Luotao Fu <l.fu@pengutronix.de>
Date: Fri, 26 Mar 2010 13:52:28 +0100
Message-Id: <1269607949-5336-5-git-send-email-l.fu@pengutronix.de>
In-Reply-To: <1269607949-5336-1-git-send-email-l.fu@pengutronix.de>
References: <1269607949-5336-1-git-send-email-l.fu@pengutronix.de>
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
Subject: [PATCH 4/5] Add multi env support to saveenv and loadenv commands.
To: sha@pengutronix.de
Cc: barebox@lists.infradead.org, Luotao Fu <l.fu@pengutronix.de>

saveenv and loadenv commands now support multiple environments. If
CONFIG_MULTI_ENV_HANDLING is turned on. saveenv will try to save the environment
into all available environment backends, while loadenv will load the environment
from the first loadable backend it will find. Also updated the help text.

Signed-off-by: Luotao Fu <l.fu@pengutronix.de>
---
 commands/loadenv.c |   49 ++++++++++++++++++++++++++++++++++++++--------
 commands/saveenv.c |   54 ++++++++++++++++++++++++++++++++++++++++++++++++---
 2 files changed, 90 insertions(+), 13 deletions(-)

diff --git a/commands/loadenv.c b/commands/loadenv.c
index 3da67d9..cb66bb4 100644
--- a/commands/loadenv.c
+++ b/commands/loadenv.c
@@ -26,31 +26,62 @@
 #include <common.h>
 #include <command.h>
 #include <environment.h>
+#include <fs.h>
+#include <linux/stat.h>
 
 static int do_loadenv(struct command *cmdtp, int argc, char *argv[])
 {
-	char *filename, *dirname;
+	char *dirname;
+	int rc = 0;
+	int i = 0;
+	char file[9 + 5];	/* '/dev/env.....' */
+#ifdef CONFIG_MULTI_ENV_HANDLING
+	struct stat file_info;
+#endif
 
 	if (argc < 3)
 		dirname = "/env";
 	else
 		dirname = argv[2];
 
-	if (argc < 2)
-		filename = "/dev/env0";
-	else
-		filename = argv[1];
-	printf("loading environment from %s\n", filename);
+	if (argc > 1) {
+		rc = envfs_load(argv[1], dirname, NULL);
+		return rc ? 1 : 0;
+	}
+
+#ifdef CONFIG_MULTI_ENV_HANDLING
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
+#else
+	sprintf(file, "/dev/env0");
+	rc = envfs_load(file, dirname);
+#endif
 
-	return envfs_load(filename, dirname, NULL);
+	return rc ? 1 : 0;
 }
 
 static const __maybe_unused char cmd_loadenv_help[] =
 "Usage: loadenv [ENVFS] [DIRECTORY]\n"
 "Load the persistent storage contained in <envfs> to the directory\n"
 "<directory>.\n"
-"If ommitted <directory> defaults to /env and <envfs> defaults to /dev/env0.\n"
-"Note that envfs can only handle files. Directories are skipped silently.\n";
+#ifdef CONFIG_MULTI_ENV_HANDLING
+"If ommitted <directory> defaults the command will scan for available"
+" environment backend storages, if more than one of such storages are"
+" available, the environment will try to load the environment from the"
+" loadable backend in ascending order (env0 -> env1).\n";
+#else
+"If ommitted <directory> defaults to /env and <envfs> defaults to /dev/env0.\n";
+#endif
 
 BAREBOX_CMD_START(loadenv)
 	.cmd		= do_loadenv,
diff --git a/commands/saveenv.c b/commands/saveenv.c
index 42ea58f..668e6ae 100644
--- a/commands/saveenv.c
+++ b/commands/saveenv.c
@@ -29,11 +29,13 @@
 #include <fs.h>
 #include <fcntl.h>
 #include <environment.h>
+#include <linux/stat.h>
 
-static int do_saveenv(struct command *cmdtp, int argc, char *argv[])
+static int saveenv(char *filename, char *dirname)
 {
 	int ret, fd;
-	char *filename, *dirname;
+	char filename[9 + 5];
+	char *dirname;
 
 	printf("saving environment\n");
 	if (argc < 3)
@@ -91,6 +93,44 @@ static int do_saveenv(struct command *cmdtp, int argc, char *argv[])
 	ret = 0;
 out:
 	close(fd);
+
+	return 0;
+}
+
+static int do_saveenv(struct command *cmdtp, int argc, char *argv[])
+{
+	int ret = 0;
+	char *dirname;
+	int i = 0;
+	char file[9 + 5];
+#ifdef CONFIG_MULTI_ENV_HANDLING
+	struct stat file_info;
+#endif
+
+	printf("saving environment\n");
+	if (argc < 3)
+		dirname = "/env";
+	else
+		dirname = argv[2];
+
+	if (argc > 1)
+		return saveenv(argv[1], dirname);
+#ifdef CONFIG_MULTI_ENV_HANDLING
+	/* default filename, save environment to all /dev/env[number] */
+	while (1) {
+		sprintf(file, "/dev/env%d", i);
+		if (stat(file, &file_info))
+			break;
+
+		ret |= saveenv(file, dirname);
+
+		i++;
+	}
+#else
+	sprintf(file, "/dev/env%d", 0);
+	ret = saveenv(file, dirname);
+#endif
+
 	return ret;
 }
 
@@ -98,8 +138,14 @@ static const __maybe_unused char cmd_saveenv_help[] =
 "Usage: saveenv [<envfs>] [<directory>]\n"
 "Save the files in <directory> to the persistent storage device <envfs>.\n"
 "<envfs> is normally a block in flash, but could be any other file.\n"
-"If ommitted <directory> defaults to /env and <envfs> defaults to /dev/env0.\n"
-"Note that envfs can only handle files. Directories are skipped silently.\n";
+#ifdef CONFIG_MULTI_ENV_HANDLING
+"If ommitted <directory> defaults the command will scan for available"
+" environment backend storages, if more than one of such storages are"
+" available, the environment will be stored into all of them ascending"
+" order (env0 -> env1).\n";
+#else
+"If ommitted <directory> defaults to /env and <envfs> defaults to /dev/env0.\n";
+#endif
 
 BAREBOX_CMD_START(saveenv)
 	.cmd		= do_saveenv,
-- 
1.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
