Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Te9li-0001ip-9f
 for barebox@lists.infradead.org; Thu, 29 Nov 2012 19:27:31 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 29 Nov 2012 20:27:26 +0100
Message-Id: <1354217247-4870-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] rm: implement -r
To: barebox@lists.infradead.org

To recursively remove files and directories.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/rm.c          |   28 ++++++++++++++++++++----
 include/fs.h           |    2 ++
 lib/Makefile           |    1 +
 lib/recursive_action.c |    1 -
 lib/unlink-recursive.c |   56 ++++++++++++++++++++++++++++++++++++++++++++++++
 5 files changed, 83 insertions(+), 5 deletions(-)
 create mode 100644 lib/unlink-recursive.c

diff --git a/commands/rm.c b/commands/rm.c
index 4e765ac..5486005 100644
--- a/commands/rm.c
+++ b/commands/rm.c
@@ -19,17 +19,36 @@
 #include <common.h>
 #include <command.h>
 #include <fs.h>
+#include <getopt.h>
 #include <errno.h>
 
 static int do_rm(int argc, char *argv[])
 {
-	int i = 1;
+	int i, opt, recursive = 0;
+
+	while ((opt = getopt(argc, argv, "r")) > 0) {
+		switch (opt) {
+		case 'r':
+			recursive = 1;
+			break;
+		default:
+			return COMMAND_ERROR_USAGE;
+		}
+	}
 
 	if (argc < 2)
 		return COMMAND_ERROR_USAGE;
 
+	i = optind;
+
 	while (i < argc) {
-		if (unlink(argv[i])) {
+		int ret;
+
+		if (recursive)
+			ret = unlink_recursive(argv[i], NULL);
+		else
+			ret = unlink(argv[i]);
+		if (ret) {
 			printf("could not remove %s: %s\n", argv[i], errno_str());
 			return 1;
 		}
@@ -40,8 +59,9 @@ static int do_rm(int argc, char *argv[])
 }
 
 static const __maybe_unused char cmd_rm_help[] =
-"Usage: rm [FILES]\n"
-"Remove files\n";
+"Usage: rm [OPTIONS] [FILES]\n"
+"Remove files\n"
+"-r  remove directories and their contents recursively\n";
 
 BAREBOX_CMD_START(rm)
 	.cmd		= do_rm,
diff --git a/include/fs.h b/include/fs.h
index 3d5714c..8ff7300 100644
--- a/include/fs.h
+++ b/include/fs.h
@@ -182,4 +182,6 @@ void automount_remove(const char *_path);
 int automount_add(const char *path, const char *cmd);
 void automount_print(void);
 
+int unlink_recursive(const char *path, char **failedpath);
+
 #endif /* __FS_H */
diff --git a/lib/Makefile b/lib/Makefile
index eb0af92..635d52e 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -36,3 +36,4 @@ obj-$(CONFIG_BITREV)	+= bitrev.o
 obj-$(CONFIG_QSORT)	+= qsort.o
 obj-y			+= gui/
 obj-$(CONFIG_XYMODEM)	+= xymodem.o
+obj-y			+= unlink-recursive.o
diff --git a/lib/recursive_action.c b/lib/recursive_action.c
index 5bc2595..345d3db 100644
--- a/lib/recursive_action.c
+++ b/lib/recursive_action.c
@@ -130,7 +130,6 @@ int recursive_action(const char *fileName,
 		return 0;
 	return 1;
 done_nak_warn:
-	printf("%s", fileName);
 	return 0;
 }
 
diff --git a/lib/unlink-recursive.c b/lib/unlink-recursive.c
new file mode 100644
index 0000000..a488553
--- /dev/null
+++ b/lib/unlink-recursive.c
@@ -0,0 +1,56 @@
+#include <common.h>
+#include <libbb.h>
+#include <fs.h>
+
+static char unlink_recursive_failedpath[PATH_MAX];
+
+struct data {
+	int error;
+};
+
+static int file_action(const char *filename, struct stat *statbuf,
+			    void *userdata, int depth)
+{
+	struct data *data = userdata;
+	int ret;
+
+	ret = unlink(filename);
+	if (ret) {
+		strcpy(unlink_recursive_failedpath, filename);
+		data->error = ret;
+	}
+
+	return ret ? 0 : 1;
+}
+
+static int dir_action(const char *dirname, struct stat *statbuf,
+			    void *userdata, int depth)
+{
+	struct data *data = userdata;
+	int ret;
+
+	ret = rmdir(dirname);
+	if (ret) {
+		strcpy(unlink_recursive_failedpath, dirname);
+		data->error = ret;
+	}
+
+	return ret ? 0 : 1;
+}
+
+int unlink_recursive(const char *path, char **failedpath)
+{
+	struct data data = {};
+	int ret;
+
+	if (failedpath)
+		*failedpath = NULL;
+
+	ret = recursive_action(path, ACTION_RECURSE | ACTION_DEPTHFIRST,
+			file_action, dir_action, &data, 0);
+
+	if (!ret && failedpath)
+		*failedpath = unlink_recursive_failedpath;
+
+	return ret ? 0 : errno;
+}
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
