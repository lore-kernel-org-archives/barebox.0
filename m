Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XmMfS-00034g-Lx
 for barebox@lists.infradead.org; Thu, 06 Nov 2014 13:00:05 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  6 Nov 2014 13:59:31 +0100
Message-Id: <1415278778-20826-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1415278778-20826-1-git-send-email-s.hauer@pengutronix.de>
References: <1415278778-20826-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/11] environment: Only save changes to the defaultenv
To: barebox@lists.infradead.org

Instead of storing the complete files with a 'saveenv' command
only store the files that have changes to the default environment.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/environment.c | 111 ++++++++++++++++++++++++++++++++++++++++++++++++---
 common/startup.c     |  11 ++---
 2 files changed, 108 insertions(+), 14 deletions(-)

diff --git a/common/environment.c b/common/environment.c
index 985adc1..a04b1fa 100644
--- a/common/environment.c
+++ b/common/environment.c
@@ -36,6 +36,8 @@
 #include <libbb.h>
 #include <libgen.h>
 #include <environment.h>
+#include <globalvar.h>
+#include <libfile.h>
 #else
 # define errno_str(x) ("void")
 #define EXPORT_SYMBOL(x)
@@ -57,6 +59,9 @@ struct action_data {
 #define PAD4(x) ((x + 3) & ~3)
 
 #ifdef __BAREBOX__
+
+#define TMPDIR "/.defaultenv"
+
 static char *default_environment_path = "/dev/env0";
 
 void default_environment_path_set(char *path)
@@ -68,6 +73,21 @@ char *default_environment_path_get(void)
 {
 	return default_environment_path;
 }
+
+static int do_compare_file(const char *filename, const char *base)
+{
+	int ret;
+	char *cmp;
+	const char *relname = filename + strlen(base) + 1;
+
+	cmp = asprintf("%s/%s", TMPDIR, relname);
+	ret = compare_file(cmp, filename);
+
+	free(cmp);
+
+	return ret;
+}
+
 #else
 static inline int protect(int fd, size_t count, unsigned long offset, int prot)
 {
@@ -78,6 +98,11 @@ static inline int erase(int fd, size_t count, unsigned long offset)
 {
 	return 0;
 }
+
+static int do_compare_file(const char *filename, const char *base)
+{
+	return 1;
+}
 #endif
 
 static int file_action(const char *filename, struct stat *statbuf,
@@ -87,6 +112,9 @@ static int file_action(const char *filename, struct stat *statbuf,
 	struct envfs_entry *env;
 	int fd, ret;
 
+	if (!do_compare_file(filename, data->base))
+		return 1;
+
 	env = xzalloc(sizeof(*env));
 	env->name = strdup(filename + strlen(data->base));
 	env->size = statbuf->st_size;
@@ -153,6 +181,60 @@ static void envfs_save_inode(struct action_data *data, struct envfs_entry *env)
 	data->writep += PAD4(env->size);
 }
 
+#ifdef __BAREBOX__
+static int file_remove_action(const char *filename, struct stat *statbuf,
+		void *userdata, int depth)
+{
+	struct action_data *data = userdata;
+	char *envname;
+	struct stat s;
+	int ret;
+	struct envfs_entry *env;
+
+	filename += sizeof(TMPDIR) - 1;
+
+	envname = asprintf("%s/%s", data->base, filename);
+
+	ret = stat(envname, &s);
+	if (ret) {
+		char *base;
+
+		base = basename(envname);
+
+		env = xzalloc(sizeof(*env));
+		env->name = strdup(filename);
+		env->size = strlen(base) + 1;
+
+		env->buf = strdup(base);
+		if (!env->buf)
+			goto out;
+
+		env->mode = S_IRWXU | S_IRWXG | S_IRWXO | S_IFLNK;
+
+		env->next = data->env;
+		data->env = env;
+	}
+out:
+	free(envname);
+
+	return 1;
+}
+#else
+static int file_remove_action(const char *filename, struct stat *statbuf,
+		void *userdata, int depth)
+{
+	return 0;
+}
+#endif
+
+static int dir_remove_action(const char *filename, struct stat *statbuf,
+		void *userdata, int depth)
+{
+	rmdir(filename);
+
+	return 1;
+}
+
 /**
  * Make the current environment persistent
  * @param[in] filename where to store
@@ -174,12 +256,18 @@ int envfs_save(const char *filename, const char *dirname, unsigned flags)
 	data.writep = NULL;
 	data.base = dirname;
 
+#ifdef __BAREBOX__
+	defaultenv_load(TMPDIR, 0);
+#endif
+
 	if (flags & ENVFS_FLAGS_FORCE_BUILT_IN) {
 		size = 0; /* force no content */
 	} else {
 		/* first pass: calculate size */
 		recursive_action(dirname, ACTION_RECURSE, file_action,
 				NULL, &data, 0);
+		recursive_action("/.defaultenv", ACTION_RECURSE,
+				file_remove_action, NULL, &data, 0);
 		size = 0;
 
 		for (env = data.env; env; env = env->next) {
@@ -270,6 +358,9 @@ out:
 	close(envfd);
 out1:
 	free(buf);
+#ifdef __BAREBOX__
+	unlink_recursive(TMPDIR, NULL);
+#endif
 	return ret;
 }
 EXPORT_SYMBOL(envfs_save);
@@ -346,9 +437,6 @@ static int envfs_load_data(struct envfs_super *super, void *buf, size_t size,
 			inode_size, namelen, inode_headerlen);
 
 		str = concat_path_file(dir, inode->data);
-		tmp = strdup(str);
-		make_directory(dirname(tmp));
-		free(tmp);
 
 		headerlen_full = PAD4(inode_headerlen);
 		buf += headerlen_full;
@@ -359,11 +447,19 @@ static int envfs_load_data(struct envfs_super *super, void *buf, size_t size,
 			goto out;
 		}
 
+		tmp = strdup(str);
+		make_directory(dirname(tmp));
+		free(tmp);
+
 		if (S_ISLNK(ENVFS_32(inode_end->mode))) {
 			debug("symlink: %s -> %s\n", str, (char*)buf);
-			if (symlink(buf, str) < 0) {
-				printf("symlink: %s -> %s :", str, (char*)buf);
-				perror("");
+			if (!strcmp(buf, basename(str))) {
+				unlink(str);
+			} else {
+				ret = symlink(buf, str);
+				if (ret < 0)
+					printf("symlink: %s -> %s : %s\n",
+							str, (char*)buf, strerror(-errno));
 			}
 			free(str);
 		} else {
@@ -398,6 +494,9 @@ skip:
 				sizeof(struct envfs_inode);
 	}
 
+	recursive_action(dir, ACTION_RECURSE | ACTION_DEPTHFIRST, NULL,
+			dir_remove_action, NULL, 0);
+
 	ret = 0;
 out:
 	return ret;
diff --git a/common/startup.c b/common/startup.c
index ceb597b..f164142 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -78,17 +78,12 @@ void __noreturn start_barebox(void)
 	pr_debug("initcalls done\n");
 
 	if (IS_ENABLED(CONFIG_ENV_HANDLING)) {
-		int ret;
 		char *default_environment_path = default_environment_path_get();
 
-		ret = envfs_load(default_environment_path, "/env", 0);
-
-		if (ret && IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT)) {
-			pr_err("no valid environment found on %s. "
-				"Using default environment\n",
-				default_environment_path);
+		if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT))
 			defaultenv_load("/env", 0);
-		}
+
+		envfs_load(default_environment_path, "/env", 0);
 	}
 
 	if (IS_ENABLED(CONFIG_COMMAND_SUPPORT)) {
-- 
2.1.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
