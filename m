Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WeiCJ-0008FL-PK
 for barebox@lists.infradead.org; Mon, 28 Apr 2014 09:50:04 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 28 Apr 2014 11:49:35 +0200
Message-Id: <1398678579-17491-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1398678579-17491-1-git-send-email-s.hauer@pengutronix.de>
References: <1398678579-17491-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/6] env: erase/protect in envfs_save
To: barebox@lists.infradead.org

So that the envfs_save is more useful outside of the saveenv command

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/saveenv.c   | 46 +---------------------------------------------
 common/environment.c | 38 ++++++++++++++++++++++++++++++++++++--
 2 files changed, 37 insertions(+), 47 deletions(-)

diff --git a/commands/saveenv.c b/commands/saveenv.c
index 8ead98d..cb2b01d 100644
--- a/commands/saveenv.c
+++ b/commands/saveenv.c
@@ -29,7 +29,7 @@
 
 static int do_saveenv(int argc, char *argv[])
 {
-	int ret, fd;
+	int ret;
 	char *filename, *dirname;
 
 	printf("saving environment\n");
@@ -42,52 +42,8 @@ static int do_saveenv(int argc, char *argv[])
 	else
 		filename = argv[1];
 
-	fd = open(filename, O_WRONLY | O_CREAT);
-	if (fd < 0) {
-		printf("could not open %s: %s\n", filename, errno_str());
-		return 1;
-	}
-
-	ret = protect(fd, ~0, 0, 0);
-
-	/* ENOSYS is no error here, many devices do not need it */
-	if (ret && errno != ENOSYS) {
-		printf("could not unprotect %s: %s\n", filename, errno_str());
-		close(fd);
-		return 1;
-	}
-
-	ret = erase(fd, ~0, 0);
-
-	/* ENOSYS is no error here, many devices do not need it */
-	if (ret && errno != ENOSYS) {
-		printf("could not erase %s: %s\n", filename, errno_str());
-		close(fd);
-		return 1;
-	}
-
-	close(fd);
-
 	ret = envfs_save(filename, dirname);
-	if (ret) {
-		printf("saveenv failed\n");
-		goto out;
-	}
-
-	fd = open(filename, O_WRONLY | O_CREAT);
-
-	ret = protect(fd, ~0, 0, 1);
-
-	/* ENOSYS is no error here, many devices do not need it */
-	if (ret && errno != ENOSYS) {
-		printf("could not protect %s: %s\n", filename, errno_str());
-		close(fd);
-		return 1;
-	}
 
-	ret = 0;
-out:
-	close(fd);
 	return ret;
 }
 
diff --git a/common/environment.c b/common/environment.c
index e55df40..2d1edf8 100644
--- a/common/environment.c
+++ b/common/environment.c
@@ -60,6 +60,16 @@ char *default_environment_path_get(void)
 {
 	return default_environment_path;
 }
+#else
+static inline int protect(int fd, size_t count, unsigned long offset, int prot)
+{
+	return 0;
+}
+
+static inline int erase(int fd, size_t count, unsigned long offset)
+{
+	return 0;
+}
 #endif
 
 static int file_size_action(const char *filename, struct stat *statbuf,
@@ -196,11 +206,27 @@ int envfs_save(const char *filename, const char *dirname)
 
 	envfd = open(filename, O_WRONLY | O_CREAT, S_IRUSR | S_IWUSR);
 	if (envfd < 0) {
-		printf("Open %s %s\n", filename, errno_str());
-		ret = envfd;
+		printf("could not open %s: %s\n", filename, errno_str());
+		ret = -errno;
 		goto out1;
 	}
 
+	ret = protect(envfd, ~0, 0, 0);
+
+	/* ENOSYS is no error here, many devices do not need it */
+	if (ret && errno != ENOSYS) {
+		printf("could not unprotect %s: %s\n", filename, errno_str());
+		goto out;
+	}
+
+	ret = erase(envfd, ~0, 0);
+
+	/* ENOSYS is no error here, many devices do not need it */
+	if (ret && errno != ENOSYS) {
+		printf("could not erase %s: %s\n", filename, errno_str());
+		goto out;
+	}
+
 	size += sizeof(struct envfs_super);
 
 	wbuf = buf;
@@ -216,6 +242,14 @@ int envfs_save(const char *filename, const char *dirname)
 		size -= now;
 	}
 
+	ret = protect(envfd, ~0, 0, 1);
+
+	/* ENOSYS is no error here, many devices do not need it */
+	if (ret && errno != ENOSYS) {
+		printf("could not protect %s: %s\n", filename, errno_str());
+		goto out;
+	}
+
 	ret = 0;
 
 out:
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
