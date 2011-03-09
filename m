Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PxL8p-00059R-9A
	for barebox@lists.infradead.org; Wed, 09 Mar 2011 15:17:36 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Wed,  9 Mar 2011 16:17:23 +0100
Message-Id: <1299683846-20616-3-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 2/5] CRC value handling and dry run mode in 'envfs_load'
To: barebox@lists.infradead.org
Cc: Luotao Fu <l.fu@pengutronix.de>

From: Luotao Fu <l.fu@pengutronix.de>

In order to check if two environments contains the same content, extend the
'envfs_load' to support a crc sum. This change is required to add support
for multiple environments later on.

* envfs_load now accepts a parameter, where the crc value of the environment
  partition can be stored.
* add a "dry run" mode to envfs_load. If the dirname is not set, 'envfs_load'
  will now check only the crc values of the partition and returns without
  writing to the file system.

Signed-off-by: Luotao Fu <l.fu@pengutronix.de>
Acked-by: Juergen Beisert <jbe@pengutronix.de>
---
 commands/loadenv.c    |    2 +-
 common/environment.c  |   13 +++++++++++--
 common/startup.c      |    4 ++--
 include/environment.h |    2 +-
 scripts/bareboxenv.c  |    2 +-
 5 files changed, 16 insertions(+), 7 deletions(-)

diff --git a/commands/loadenv.c b/commands/loadenv.c
index c33c34f..5f4c195 100644
--- a/commands/loadenv.c
+++ b/commands/loadenv.c
@@ -40,7 +40,7 @@ static int do_loadenv(struct command *cmdtp, int argc, char *argv[])
 	else
 		filename = argv[1];
 	printf("loading environment from %s\n", filename);
-	return envfs_load(filename, dirname);
+	return envfs_load(filename, dirname, NULL);
 }
 
 BAREBOX_CMD_HELP_START(loadenv)
diff --git a/common/environment.c b/common/environment.c
index e5f24ec..eb8278f 100644
--- a/common/environment.c
+++ b/common/environment.c
@@ -159,13 +159,15 @@ EXPORT_SYMBOL(envfs_save);
 /**
  * Restore the last environment into the current one
  * @param[in] filename from where to restore
- * @param[in] dir where to store the last content
+ * @param[in] dir Where to store the last content. Function will return CRC
+ * value only if 'dir' == NULL.
+ * @param[in] crc Where to store the CRC
  * @return 0 on success, anything else in case of failure
  *
  * Note: This function will also be used on the host! See note in the header
  * of this file.
  */
-int envfs_load(char *filename, char *dir)
+int envfs_load(char *filename, char *dir, int *crc)
 {
 	struct envfs_super super;
 	void *buf = NULL, *buf_free = NULL;
@@ -219,6 +221,13 @@ int envfs_load(char *filename, char *dir)
 		goto out;
 	}
 
+	if (crc != NULL)
+		*crc = ENVFS_32(super.crc);
+
+	/* return CRC only if dir is not set */
+	if (!dir)
+		goto out;
+
 	while (size) {
 		struct envfs_inode *inode;
 		uint32_t inode_size, inode_namelen;
diff --git a/common/startup.c b/common/startup.c
index c39b08e..32a8aa0 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -116,13 +116,13 @@ static void __maybe_unused load_default_environment(void)
 {
 #ifdef CONFIG_DEFAULT_ENVIRONMENT
 	printf("No valid environment found. Using default environment.\n");
-	envfs_load("/dev/defaultenv", "/env");
+	envfs_load("/dev/defaultenv", "/env", NULL);
 #endif
 }
 
 static int __maybe_unused init_single_envfs_load(void)
 {
-	if (envfs_load("/dev/env0", "/env"))
+	if (envfs_load("/dev/env0", "/env", NULL))
 		load_default_environment();
 
 	return 0;
diff --git a/include/environment.h b/include/environment.h
index 21a7ffa..2b1f5d9 100644
--- a/include/environment.h
+++ b/include/environment.h
@@ -50,7 +50,7 @@ int setenv(const char *, const char *);
 int env_pop_context(void);
 int env_push_context(void);
 
-int envfs_load(char *filename, char *dirname);
+int envfs_load(char *filename, char *dirname, int *crc);
 int envfs_save(char *filename, char *dirname);
 
 int export(const char *);
diff --git a/scripts/bareboxenv.c b/scripts/bareboxenv.c
index 5c7f10e..af012e8 100644
--- a/scripts/bareboxenv.c
+++ b/scripts/bareboxenv.c
@@ -186,7 +186,7 @@ int main(int argc, char *argv[])
 
 	if (load) {
 		printf("loading env from file %s to %s\n", filename, dirname);
-		envfs_load(filename, dirname);
+		envfs_load(filename, dirname, NULL);
 	}
 	if (save) {
 		printf("saving contents of %s to file %s\n", dirname, filename);
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
