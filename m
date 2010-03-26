Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1Nv92G-0003FS-KJ
	for barebox@lists.infradead.org; Fri, 26 Mar 2010 12:53:13 +0000
From: Luotao Fu <l.fu@pengutronix.de>
Date: Fri, 26 Mar 2010 13:52:29 +0100
Message-Id: <1269607949-5336-6-git-send-email-l.fu@pengutronix.de>
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
Subject: [PATCH 5/5] add general check_and_erase callback to environment
	handling
To: sha@pengutronix.de
Cc: barebox@lists.infradead.org, Luotao Fu <l.fu@pengutronix.de>

Checking and erasing the envfs partition prior to saving the environment is
required both in start initial environment loading and saveenv commands. Hence
we add a general callback to do this task. This callback is barebox only and
cannot be used in the script utils.

Signed-off-by: Luotao Fu <l.fu@pengutronix.de>
---
 commands/saveenv.c    |   46 +++++-----------------------------------------
 common/environment.c  |   34 ++++++++++++++++++++++++++++++++++
 common/startup.c      |    7 +++++++
 include/environment.h |    1 +
 4 files changed, 47 insertions(+), 41 deletions(-)

diff --git a/commands/saveenv.c b/commands/saveenv.c
index 668e6ae..efc89bd 100644
--- a/commands/saveenv.c
+++ b/commands/saveenv.c
@@ -33,50 +33,17 @@
 
 static int saveenv(char *filename, char *dirname)
 {
-	int ret, fd;
-	char filename[9 + 5];
-	char *dirname;
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
-
-	ret = protect(fd, ~0, 0, 0);
-
-	/* ENOSYS is no error here, many devices do not need it */
-	if (ret && errno != -ENOSYS) {
-		printf("could not unprotect %s: %s\n", filename, errno_str());
-		close(fd);
-		return 1;
-	}
-
-	ret = erase(fd, ~0, 0);
+	int ret = 0;
+	int fd;
 
-	/* ENOSYS is no error here, many devices do not need it */
-	if (ret && errno != -ENOSYS) {
-		printf("could not erase %s: %s\n", filename, errno_str());
-		close(fd);
+	ret = file_check_and_erase(filename);
+	if (ret)
 		return 1;
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
@@ -90,10 +57,7 @@ static int saveenv(char *filename, char *dirname)
 		return 1;
 	}
 
-	ret = 0;
-out:
 	close(fd);
-
 	return 0;
 }
 
diff --git a/common/environment.c b/common/environment.c
index e79ec99..da34069 100644
--- a/common/environment.c
+++ b/common/environment.c
@@ -93,6 +93,40 @@ out:
 	return 1;
 }
 
+#ifdef __BAREBOX__
+int file_check_and_erase(char *filename)
+{
+	int fd;
+	int ret;
+
+	fd = open(filename, O_WRONLY | O_CREAT);
+	if (fd < 0) {
+		printf("could not open %s: %s\n", filename, errno_str());
+		return errno;
+	}
+
+	ret = protect(fd, ~0, 0, 0);
+
+	/* ENOSYS is no error here, many devices do not need it */
+	if (ret && errno != -ENOSYS) {
+		printf("could not unprotect %s: %s\n", filename, errno_str());
+		return errno;
+	}
+
+	ret = erase(fd, ~0, 0);
+
+	/* ENOSYS is no error here, many devices do not need it */
+	if (ret && errno != -ENOSYS) {
+		printf("could not erase %s: %s\n", filename, errno_str());
+		close(fd);
+		return errno;
+	}
+
+	close(fd);
+	return 0;
+}
+#endif /* __BAREBOX__ */
+
 /**
  * Make the current environment persistent
  * @param[in] filename where to store
diff --git a/common/startup.c b/common/startup.c
index af929f8..c589646 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -150,6 +150,10 @@ static int init_envfs_load(void)
 	/* Now try to restore, if any, the previous failed partitions */
 	for (j = 0; j < i; j++) {
 		sprintf(file, "/dev/env%d", j);
+
+		if (file_check_and_erase(file))
+			continue;
+
 		if (envfs_save(file, dirname))
 			printf("failed to sync environment on %s\n", file);
 	}
@@ -166,6 +170,9 @@ static int init_envfs_load(void)
 		 * the reference*/
 		rc = envfs_load(file, NULL, &crc);
 		if (rc != 0 || crc != crc_ref) {
+			if (file_check_and_erase(file))
+				continue;
+
 			if (envfs_save(file, dirname))
 				printf("failed to sync environment on %s\n",
 						file);
diff --git a/include/environment.h b/include/environment.h
index 2b1f5d9..b2b95e0 100644
--- a/include/environment.h
+++ b/include/environment.h
@@ -58,6 +58,7 @@ int export(const char *);
 struct stat;
 int file_size_action(const char *, struct stat *, void *, int);
 int file_save_action(const char *, struct stat *, void *, int);
+int file_check_and_erase(char *filename);
 
 #endif /* __BAREBOX__ */
 
-- 
1.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
