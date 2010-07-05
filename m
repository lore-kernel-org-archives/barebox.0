Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OVmB7-0006U1-KD
	for barebox@lists.infradead.org; Mon, 05 Jul 2010 13:57:47 +0000
From: Luotao Fu <l.fu@pengutronix.de>
Date: Mon,  5 Jul 2010 15:57:40 +0200
Message-Id: <1278338260-29454-5-git-send-email-l.fu@pengutronix.de>
In-Reply-To: <1278338260-29454-1-git-send-email-l.fu@pengutronix.de>
References: <1278338260-29454-1-git-send-email-l.fu@pengutronix.de>
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
Subject: [PATCH V2 4/4] add general check_and_erase callback to environment
	handling
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org, Luotao Fu <l.fu@pengutronix.de>

Checking and erasing the envfs partition prior to saving the environment is
required both in start initial environment loading and saveenv commands. Hence
we add a general callback to do this task. This callback is barebox only and
cannot be used in the script utils.

Signed-off-by: Luotao Fu <l.fu@pengutronix.de>
---
V2 Changes:
* fixed error handling in file_check_and_erase
* fixed error handling in saveenv

 commands/saveenv.c    |   41 +++++++++--------------------------------
 common/environment.c  |   36 ++++++++++++++++++++++++++++++++++++
 common/startup.c      |    7 +++++++
 include/environment.h |    1 +
 4 files changed, 53 insertions(+), 32 deletions(-)

diff --git a/commands/saveenv.c b/commands/saveenv.c
index fa81d80..2c89778 100644
--- a/commands/saveenv.c
+++ b/commands/saveenv.c
@@ -33,37 +33,17 @@
 
 static int saveenv(char *filename, char *dirname)
 {
-	int ret, fd;
-
-	printf("saving environment\n");
-
-	fd = open(filename, O_WRONLY | O_CREAT);
-	if (fd < 0) {
-		printf("could not open %s: %s\n", filename, errno_str());
-		ret = -ENODEV;
-		goto out_ret;
-	}
-
-	ret = protect(fd, ~0, 0, 0);
-	/* ENOSYS is no error here, many devices do not need it */
-	if (ret && errno != -ENOSYS) {
-		printf("could not unprotect %s: %s\n", filename, errno_str());
-		goto out_close;
-	}
-
-	ret = erase(fd, ~0, 0);
-	/* ENOSYS is no error here, many devices do not need it */
-	if (ret && errno != -ENOSYS) {
-		printf("could not erase %s: %s\n", filename, errno_str());
-		goto out_close;
-	}
+	int ret = 0;
+	int fd;
 
-	close(fd);
+	ret = file_check_and_erase(filename);
+	if (ret)
+		return ret;
 
 	ret = envfs_save(filename, dirname);
 	if (ret) {
 		printf("saveenv failed\n");
-		goto out_ret;
+		return ret;
 	}
 
 	fd = open(filename, O_WRONLY | O_CREAT);
@@ -71,15 +51,12 @@ static int saveenv(char *filename, char *dirname)
 	/* ENOSYS is no error here, many devices do not need it */
 	if (ret && errno != -ENOSYS) {
 		printf("could not protect %s: %s\n", filename, errno_str());
-		goto out_close;
+		close(fd);
+		return ret;
 	}
 
-	ret = 0;
-
-out_close:
 	close(fd);
-out_ret:
-	return ret;
+	return 0;
 }
 
 static int do_saveenv(struct command *cmdtp, int argc, char *argv[])
diff --git a/common/environment.c b/common/environment.c
index e79ec99..341b1f3 100644
--- a/common/environment.c
+++ b/common/environment.c
@@ -93,6 +93,42 @@ out:
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
+		ret = -ENODEV;
+		goto out_ret;
+	}
+
+	ret = protect(fd, ~0, 0, 0);
+	/* ENOSYS is no error here, many devices do not need it */
+	if (ret && errno != -ENOSYS) {
+		printf("could not unprotect %s: %s\n", filename, errno_str());
+		goto out_close;
+	}
+
+	ret = erase(fd, ~0, 0);
+	/* ENOSYS is no error here, many devices do not need it */
+	if (ret && errno != -ENOSYS) {
+		printf("could not erase %s: %s\n", filename, errno_str());
+		goto out_ret;
+	}
+
+	ret = 0;
+
+out_close:
+	close(fd);
+out_ret:
+	return ret;
+}
+#endif /* __BAREBOX__ */
+
 /**
  * Make the current environment persistent
  * @param[in] filename where to store
diff --git a/common/startup.c b/common/startup.c
index b57a712..b8ae29a 100644
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
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
