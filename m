Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YTWuG-0004iO-4y
 for barebox@lists.infradead.org; Thu, 05 Mar 2015 14:37:45 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Thu,  5 Mar 2015 15:37:14 +0100
Message-Id: <1425566234-32189-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH] environment: envfs_{load,
 save}: add possibility to call with filename and dirname == NULL
To: barebox@lists.infradead.org

This patch moves fallback to default into the envfs_{load,save} functions.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 commands/saveenv.c   | 10 +++-------
 common/environment.c | 12 ++++++++++++
 2 files changed, 15 insertions(+), 7 deletions(-)

diff --git a/commands/saveenv.c b/commands/saveenv.c
index 43f16dc49059..6f210b7ec109 100644
--- a/commands/saveenv.c
+++ b/commands/saveenv.c
@@ -27,7 +27,7 @@ static int do_saveenv(int argc, char *argv[])
 {
 	int ret, opt;
 	unsigned envfs_flags = 0;
-	char *filename, *dirname;
+	char *filename = NULL, *dirname = NULL;
 
 	printf("saving environment\n");
 	while ((opt = getopt(argc, argv, "z")) > 0) {
@@ -39,15 +39,11 @@ static int do_saveenv(int argc, char *argv[])
 	}
 
 	/* destination and source are given? */
-	if (argc - optind < 2)
-		dirname = "/env";
-	else
+	if (argc - optind > 1)
 		dirname = argv[optind + 1];
 
 	/* destination only given? */
-	if (argc - optind < 1)
-		filename = default_environment_path_get();
-	else
+	if (argc - optind > 0)
 		filename = argv[optind];
 
 	ret = envfs_save(filename, dirname, envfs_flags);
diff --git a/common/environment.c b/common/environment.c
index 7e176b3a7eea..f6fd781a8ab8 100644
--- a/common/environment.c
+++ b/common/environment.c
@@ -256,6 +256,12 @@ int envfs_save(const char *filename, const char *dirname, unsigned flags)
 	void *buf = NULL, *wbuf;
 	struct envfs_entry *env;
 
+	if (!filename)
+		filename = default_environment_path_get();
+
+	if (!dirname)
+		dirname = "/env";
+
 	data.writep = NULL;
 	data.base = dirname;
 
@@ -543,6 +549,12 @@ int envfs_load(const char *filename, const char *dir, unsigned flags)
 	int ret = 0;
 	size_t size, rsize;
 
+	if (!filename)
+		filename = default_environment_path_get();
+
+	if (!dir)
+		dir = "/env";
+
 	envfd = open(filename, O_RDONLY);
 	if (envfd < 0) {
 		printf("environment load %s: %s\n", filename, errno_str());
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
