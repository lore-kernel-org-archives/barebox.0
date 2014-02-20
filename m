Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WGU0h-0007Rh-Pz
 for barebox@lists.infradead.org; Thu, 20 Feb 2014 13:49:57 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 20 Feb 2014 14:49:28 +0100
Message-Id: <1392904169-786-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1392904169-786-1-git-send-email-s.hauer@pengutronix.de>
References: <1392904169-786-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/4] environment: Add function to load envfs from buffer
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/environment.c | 181 +++++++++++++++++++++++++++++++++------------------
 include/envfs.h      |   1 +
 2 files changed, 117 insertions(+), 65 deletions(-)

diff --git a/common/environment.c b/common/environment.c
index 695baf7..19fb027 100644
--- a/common/environment.c
+++ b/common/environment.c
@@ -218,78 +218,52 @@ out1:
 }
 EXPORT_SYMBOL(envfs_save);
 
-/**
- * Restore the last environment into the current one
- * @param[in] filename from where to restore
- * @param[in] dir where to store the last content
- * @return 0 on success, anything else in case of failure
- *
- * Note: This function will also be used on the host! See note in the header
- * of this file.
- */
-int envfs_load(const char *filename, const char *dir, unsigned flags)
+static int envfs_check_super(struct envfs_super *super, size_t *size)
 {
-	struct envfs_super super;
-	void *buf = NULL, *buf_free = NULL;
-	int envfd;
-	int fd, ret = 0;
-	char *str, *tmp;
-	int headerlen_full;
-	unsigned long size;
-	/* for envfs < 1.0 */
-	struct envfs_inode_end inode_end_dummy;
-
-	inode_end_dummy.mode = ENVFS_32(S_IRWXU | S_IRWXG | S_IRWXO);
-	inode_end_dummy.magic = ENVFS_32(ENVFS_INODE_END_MAGIC);
-
-	envfd = open(filename, O_RDONLY);
-	if (envfd < 0) {
-		printf("Open %s %s\n", filename, errno_str());
-		return -1;
+	if (ENVFS_32(super->magic) != ENVFS_MAGIC) {
+		printf("envfs: wrong magic\n");
+		return -EIO;
 	}
 
-	/* read superblock */
-	ret = read(envfd, &super, sizeof(struct envfs_super));
-	if ( ret < sizeof(struct envfs_super)) {
-		perror("read");
-		ret = -errno;
-		goto out;
+	if (crc32(0, super, sizeof(*super) - 4) != ENVFS_32(super->sb_crc)) {
+		printf("wrong crc on env superblock\n");
+		return -EIO;
 	}
 
-	if ( ENVFS_32(super.magic) != ENVFS_MAGIC) {
-		printf("envfs: wrong magic on %s\n", filename);
-		ret = -EIO;
-		goto out;
-	}
+	if (super->major < ENVFS_MAJOR)
+		printf("envfs version %d.%d loaded into %d.%d\n",
+			super->major, super->minor,
+			ENVFS_MAJOR, ENVFS_MINOR);
 
-	if (crc32(0, (unsigned char *)&super, sizeof(struct envfs_super) - 4)
-		   != ENVFS_32(super.sb_crc)) {
-		printf("wrong crc on env superblock\n");
-		ret = -EIO;
-		goto out;
-	}
+	*size = ENVFS_32(super->size);
 
-	size = ENVFS_32(super.size);
-	buf = xmalloc(size);
-	buf_free = buf;
-	ret = read(envfd, buf, size);
-	if (ret < size) {
-		perror("read");
-		ret = -errno;
-		goto out;
-	}
+	return 0;
+}
 
-	if (crc32(0, (unsigned char *)buf, size)
-		     != ENVFS_32(super.crc)) {
+static int envfs_check_data(struct envfs_super *super, void *buf, size_t size)
+{
+	uint32_t crc;
+
+	crc = crc32(0, buf, size);
+	if (crc != ENVFS_32(super->crc)) {
 		printf("wrong crc on env\n");
-		ret = -EIO;
-		goto out;
+		return -EIO;
 	}
 
-	if (super.major < ENVFS_MAJOR)
-		printf("envfs version %d.%d loaded into %d.%d\n",
-			super.major, super.minor,
-			ENVFS_MAJOR, ENVFS_MINOR);
+	return 0;
+}
+
+static int envfs_load_data(void *buf, size_t size, const char *dir, unsigned flags)
+{
+	struct envfs_super super;
+	int fd, ret = 0;
+	char *str, *tmp;
+	int headerlen_full;
+	/* for envfs < 1.0 */
+	struct envfs_inode_end inode_end_dummy;
+
+	inode_end_dummy.mode = ENVFS_32(S_IRWXU | S_IRWXG | S_IRWXO);
+	inode_end_dummy.magic = ENVFS_32(ENVFS_INODE_END_MAGIC);
 
 	while (size) {
 		struct envfs_inode *inode;
@@ -300,7 +274,7 @@ int envfs_load(const char *filename, const char *dir, unsigned flags)
 		buf += sizeof(struct envfs_inode);
 
 		if (ENVFS_32(inode->magic) != ENVFS_INODE_MAGIC) {
-			printf("envfs: wrong magic on %s\n", filename);
+			printf("envfs: wrong magic\n");
 			ret = -EIO;
 			goto out;
 		}
@@ -324,7 +298,7 @@ int envfs_load(const char *filename, const char *dir, unsigned flags)
 		buf += headerlen_full;
 
 		if (ENVFS_32(inode_end->magic) != ENVFS_INODE_END_MAGIC) {
-			printf("envfs: wrong inode_end_magic on %s\n", filename);
+			printf("envfs: wrong inode_end_magic\n");
 			ret = -EIO;
 			goto out;
 		}
@@ -370,9 +344,86 @@ skip:
 
 	ret = 0;
 out:
+	return ret;
+}
+
+int envfs_load_from_buf(void *buf, int len, const char *dir, unsigned flags)
+{
+	int ret;
+	size_t size;
+	struct envfs_super *super = buf;
+
+	buf = super + 1;
+
+	ret = envfs_check_super(super, &size);
+	if (ret)
+		return ret;
+
+	ret = envfs_check_data(super, buf, size);
+	if (ret)
+		return ret;
+
+	ret = envfs_load_data(buf, size, dir, flags);
+
+	return ret;
+}
+
+/**
+ * Restore the last environment into the current one
+ * @param[in] filename from where to restore
+ * @param[in] dir where to store the last content
+ * @return 0 on success, anything else in case of failure
+ *
+ * Note: This function will also be used on the host! See note in the header
+ * of this file.
+ */
+int envfs_load(const char *filename, const char *dir, unsigned flags)
+{
+	struct envfs_super super;
+	void *buf = NULL;
+	int envfd;
+	int ret = 0;
+	size_t size;
+
+	envfd = open(filename, O_RDONLY);
+	if (envfd < 0) {
+		printf("Open %s %s\n", filename, errno_str());
+		return -1;
+	}
+
+	/* read superblock */
+	ret = read(envfd, &super, sizeof(struct envfs_super));
+	if ( ret < sizeof(struct envfs_super)) {
+		perror("read");
+		ret = -errno;
+		goto out;
+	}
+
+	ret = envfs_check_super(&super, &size);
+	if (ret)
+		goto out;
+
+	buf = xmalloc(size);
+	ret = read(envfd, buf, size);
+	if (ret < size) {
+		perror("read");
+		ret = -errno;
+		goto out;
+	}
+
+	ret = envfs_check_data(&super, buf, size);
+	if (ret)
+		goto out;
+
+	ret = envfs_load_data(buf, size, dir, flags);
+	if (ret)
+		goto out;
+
+	ret = 0;
+out:
 	close(envfd);
-	if (buf_free)
-		free(buf_free);
+	free(buf);
+
 	return ret;
 }
 
diff --git a/include/envfs.h b/include/envfs.h
index 94d1353..b63683c 100644
--- a/include/envfs.h
+++ b/include/envfs.h
@@ -92,6 +92,7 @@ struct envfs_super {
 #define ENV_FLAG_NO_OVERWRITE	(1 << 0)
 int envfs_load(const char *filename, const char *dirname, unsigned flags);
 int envfs_save(const char *filename, const char *dirname);
+int envfs_load_from_buf(void *buf, int len, const char *dir, unsigned flags);
 
 /* defaults to /dev/env0 */
 #ifdef CONFIG_ENV_HANDLING
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
