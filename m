Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1Nv92G-0003FQ-KO
	for barebox@lists.infradead.org; Fri, 26 Mar 2010 12:53:13 +0000
From: Luotao Fu <l.fu@pengutronix.de>
Date: Fri, 26 Mar 2010 13:52:26 +0100
Message-Id: <1269607949-5336-3-git-send-email-l.fu@pengutronix.de>
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
Subject: [PATCH 2/5] crc value handling and dry run mode in envfs_load
To: sha@pengutronix.de
Cc: barebox@lists.infradead.org, Luotao Fu <l.fu@pengutronix.de>

We add some stuffs to envfs_load to enable handling of multiple environment
partitions:
* envfs_load now accepts a parameter, where the crc value of the environment
partition can be stored.
* Also added "dry run" mode to envfs_load. If the dirname is not set.
envfs_load will now only check the crc values of the partition and returns
without writing to the file system.

Signed-off-by: Luotao Fu <l.fu@pengutronix.de>
---
 commands/loadenv.c    |    4 +++-
 common/environment.c  |   13 +++++++++++--
 include/environment.h |    2 +-
 scripts/bareboxenv.c  |    2 +-
 4 files changed, 16 insertions(+), 5 deletions(-)

diff --git a/commands/loadenv.c b/commands/loadenv.c
index 14fbf1e..3da67d9 100644
--- a/commands/loadenv.c
+++ b/commands/loadenv.c
@@ -35,12 +35,14 @@ static int do_loadenv(struct command *cmdtp, int argc, char *argv[])
 		dirname = "/env";
 	else
 		dirname = argv[2];
+
 	if (argc < 2)
 		filename = "/dev/env0";
 	else
 		filename = argv[1];
 	printf("loading environment from %s\n", filename);
-	return envfs_load(filename, dirname);
+
+	return envfs_load(filename, dirname, NULL);
 }
 
 static const __maybe_unused char cmd_loadenv_help[] =
diff --git a/common/environment.c b/common/environment.c
index 0eb7e6b..e79ec99 100644
--- a/common/environment.c
+++ b/common/environment.c
@@ -159,13 +159,15 @@ EXPORT_SYMBOL(envfs_save);
 /**
  * Restore the last environment into the current one
  * @param[in] filename from where to restore
- * @param[in] dir where to store the last content
+ * @param[in] dir where to store the last content. Function will return crc
+ * value only if dir==NULL.
+ * @param[in] crc pointer to variale, where the crc can be stored.
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
+	/* return crc only if dir is not set */
+	if (!dir)
+		goto out;
+
 	while (size) {
 		struct envfs_inode *inode;
 		uint32_t inode_size, inode_namelen;
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
1.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
