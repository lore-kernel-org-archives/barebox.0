Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q9Hwy-000664-LK
	for barebox@lists.infradead.org; Mon, 11 Apr 2011 14:18:49 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 11 Apr 2011 16:18:37 +0200
Message-Id: <1302531521-7439-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1302531521-7439-1-git-send-email-s.hauer@pengutronix.de>
References: <1302531521-7439-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/7] environment: make default env path configurable
To: barebox@lists.infradead.org

Normally the default path to save the environment is /dev/env0. However,
we can't map a file in a fat filesystem to /dev/env0. So if we want to
store the environment in a file in fat we have to make it configurable.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/loadenv.c    |    2 +-
 commands/saveenv.c    |    2 +-
 common/environment.c  |    2 ++
 common/startup.c      |    7 ++++---
 include/environment.h |    3 +++
 5 files changed, 11 insertions(+), 5 deletions(-)

diff --git a/commands/loadenv.c b/commands/loadenv.c
index c33c34f..5568ace 100644
--- a/commands/loadenv.c
+++ b/commands/loadenv.c
@@ -36,7 +36,7 @@ static int do_loadenv(struct command *cmdtp, int argc, char *argv[])
 	else
 		dirname = argv[2];
 	if (argc < 2)
-		filename = "/dev/env0";
+		filename = default_environment_path;
 	else
 		filename = argv[1];
 	printf("loading environment from %s\n", filename);
diff --git a/commands/saveenv.c b/commands/saveenv.c
index 2f969fe..11a9fee 100644
--- a/commands/saveenv.c
+++ b/commands/saveenv.c
@@ -41,7 +41,7 @@ static int do_saveenv(struct command *cmdtp, int argc, char *argv[])
 	else
 		dirname = argv[2];
 	if (argc < 2)
-		filename = "/dev/env0";
+		filename = default_environment_path;
 	else
 		filename = argv[1];
 
diff --git a/common/environment.c b/common/environment.c
index e5f24ec..0fdbd03 100644
--- a/common/environment.c
+++ b/common/environment.c
@@ -44,6 +44,8 @@
 #define EXPORT_SYMBOL(x)
 #endif
 
+char *default_environment_path = "/dev/env0";
+
 int file_size_action(const char *filename, struct stat *statbuf,
 			    void *userdata, int depth)
 {
diff --git a/common/startup.c b/common/startup.c
index 3808709..00bc9a0 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -144,10 +144,11 @@ void start_barebox (void)
 	display_meminfo();
 
 #ifdef CONFIG_ENV_HANDLING
-	if (envfs_load("/dev/env0", "/env")) {
+	if (envfs_load(default_environment_path, "/env")) {
 #ifdef CONFIG_DEFAULT_ENVIRONMENT
-		printf("no valid environment found on /dev/env0. "
-			"Using default environment\n");
+		printf("no valid environment found on %s. "
+			"Using default environment\n",
+			default_environment_path);
 		envfs_load("/dev/defaultenv", "/env");
 #endif
 	}
diff --git a/include/environment.h b/include/environment.h
index 1f22fcb..da032e2 100644
--- a/include/environment.h
+++ b/include/environment.h
@@ -62,6 +62,9 @@ static inline int setenv(const char *var, const char *val)
 int env_pop_context(void);
 int env_push_context(void);
 
+/* defaults to /dev/env0 */
+extern char *default_environment_path;
+
 int envfs_load(char *filename, char *dirname);
 int envfs_save(char *filename, char *dirname);
 
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
