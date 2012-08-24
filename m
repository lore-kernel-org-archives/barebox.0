Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo2.mail-out.ovh.net ([46.105.58.226]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T4lqY-0005rF-8H
 for barebox@lists.infradead.org; Fri, 24 Aug 2012 04:50:22 +0000
Received: from mail21.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id C30AFDC0FCB
 for <barebox@lists.infradead.org>; Fri, 24 Aug 2012 06:55:10 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 24 Aug 2012 06:50:16 +0200
Message-Id: <1345783818-28784-16-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1345783818-28784-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120824044613.GI6271@game.jcrosoft.org>
 <1345783818-28784-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 16/18] envfs: add support of variable inode size
To: barebox@lists.infradead.org

Introduce a struct envfs_inode_end with more data.
Today this will just containt the file mode to be able to add the symlink
support.

But this is compatible with the previous envfs version as they will do not
care about the extra as the previous version is just reading the filename and
then consume the extra data without using them.

Increase the envfs version to 1.0

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/environment.c |   53 ++++++++++++++++++++++++++++++++++++++------------
 include/envfs.h      |   12 +++++++++---
 2 files changed, 50 insertions(+), 15 deletions(-)

diff --git a/common/environment.c b/common/environment.c
index 257f35f..7cdb83a 100644
--- a/common/environment.c
+++ b/common/environment.c
@@ -53,6 +53,7 @@ int file_size_action(const char *filename, struct stat *statbuf,
 
 	data->writep += sizeof(struct envfs_inode);
 	data->writep += PAD4(strlen(filename) + 1 - strlen(data->base));
+	data->writep += sizeof(struct envfs_inode_end);
 	data->writep += PAD4(statbuf->st_size);
 	return 1;
 }
@@ -62,6 +63,7 @@ int file_save_action(const char *filename, struct stat *statbuf,
 {
 	struct action_data *data = userdata;
 	struct envfs_inode *inode;
+	struct envfs_inode_end *inode_end;
 	int fd;
 	int namelen = strlen(filename) + 1 - strlen(data->base);
 
@@ -70,12 +72,16 @@ int file_save_action(const char *filename, struct stat *statbuf,
 
 	inode = (struct envfs_inode*)data->writep;
 	inode->magic = ENVFS_32(ENVFS_INODE_MAGIC);
-	inode->namelen = ENVFS_32(namelen);
+	inode->headerlen = ENVFS_32(PAD4(namelen + sizeof(struct envfs_inode_end)));
 	inode->size = ENVFS_32(statbuf->st_size);
 	data->writep += sizeof(struct envfs_inode);
 
 	strcpy(data->writep, filename + strlen(data->base));
 	data->writep += PAD4(namelen);
+	inode_end = (struct envfs_inode_end*)data->writep;
+	data->writep += sizeof(struct envfs_inode_end);
+	inode_end->magic = ENVFS_32(ENVFS_INODE_END_MAGIC);
+	inode_end->mode = ENVFS_32(S_IRWXU | S_IRWXG | S_IRWXO);
 
 	fd = open(filename, O_RDONLY);
 	if (fd < 0) {
@@ -176,8 +182,13 @@ int envfs_load(char *filename, char *dir)
 	int envfd;
 	int fd, ret = 0;
 	char *str, *tmp;
-	int namelen_full;
+	int headerlen_full;
 	unsigned long size;
+	/* for envfs < 1.0 */
+	struct envfs_inode_end inode_end_dummy;
+
+	inode_end_dummy.mode = ENVFS_32(S_IRWXU | S_IRWXG | S_IRWXO);
+	inode_end_dummy.magic = ENVFS_32(ENVFS_INODE_END_MAGIC);
 
 	envfd = open(filename, O_RDONLY);
 	if (envfd < 0) {
@@ -223,11 +234,18 @@ int envfs_load(char *filename, char *dir)
 		goto out;
 	}
 
+	if (ENVFS_32(super.major) < ENVFS_MAJOR)
+		printf("envfs version %d.%d loaded into %d.%d\n",
+			ENVFS_32(super.major), ENVFS_32(super.minor),
+			ENVFS_MAJOR, ENVFS_MINOR);
+
 	while (size) {
 		struct envfs_inode *inode;
-		uint32_t inode_size, inode_namelen;
+		struct envfs_inode_end *inode_end;
+		uint32_t inode_size, inode_headerlen, namelen;
 
 		inode = (struct envfs_inode *)buf;
+		buf += sizeof(struct envfs_inode);
 
 		if (ENVFS_32(inode->magic) != ENVFS_INODE_MAGIC) {
 			printf("envfs: wrong magic on %s\n", filename);
@@ -235,16 +253,30 @@ int envfs_load(char *filename, char *dir)
 			goto out;
 		}
 		inode_size = ENVFS_32(inode->size);
-		inode_namelen = ENVFS_32(inode->namelen);
+		inode_headerlen = ENVFS_32(inode->headerlen);
+		namelen = strlen(inode->data) + 1;
+		if (ENVFS_32(super.major) < 1)
+			inode_end = &inode_end_dummy;
+		else
+			inode_end = (struct envfs_inode_end *)(buf + PAD4(namelen));
 
-		debug("loading %s size %d namelen %d\n", inode->data,
-			inode_size, inode_namelen);
+		debug("loading %s size %d namelen %d headerlen %d\n", inode->data,
+			inode_size, namelen, inode_headerlen);
 
 		str = concat_path_file(dir, inode->data);
 		tmp = strdup(str);
 		make_directory(dirname(tmp));
 		free(tmp);
 
+		headerlen_full = PAD4(inode_headerlen);
+		buf += headerlen_full;
+
+		if (ENVFS_32(inode_end->magic) != ENVFS_INODE_END_MAGIC) {
+			printf("envfs: wrong inode_end_magic on %s\n", filename);
+			ret = -EIO;
+			goto out;
+		}
+
 		fd = open(str, O_WRONLY | O_CREAT | O_TRUNC, 0644);
 		free(str);
 		if (fd < 0) {
@@ -253,9 +285,7 @@ int envfs_load(char *filename, char *dir)
 			goto out;
 		}
 
-		namelen_full = PAD4(inode_namelen);
-		ret = write(fd, buf + namelen_full + sizeof(struct envfs_inode),
-				inode_size);
+		ret = write(fd, buf, inode_size);
 		if (ret < inode_size) {
 			perror("write");
 			ret = -errno;
@@ -264,9 +294,8 @@ int envfs_load(char *filename, char *dir)
 		}
 		close(fd);
 
-		buf += PAD4(inode_namelen) + PAD4(inode_size) +
-				sizeof(struct envfs_inode);
-		size -= PAD4(inode_namelen) + PAD4(inode_size) +
+		buf += PAD4(inode_size);
+		size -= headerlen_full + PAD4(inode_size) +
 				sizeof(struct envfs_inode);
 	}
 
diff --git a/include/envfs.h b/include/envfs.h
index c6df8c5..3d14fcb 100644
--- a/include/envfs.h
+++ b/include/envfs.h
@@ -5,18 +5,19 @@
 #include <asm/byteorder.h>
 #endif
 
-#define ENVFS_MAJOR		0
-#define ENVFS_MINOR		1
+#define ENVFS_MAJOR		1
+#define ENVFS_MINOR		0
 
 #define ENVFS_MAGIC		    0x798fba79	/* some random number */
 #define ENVFS_INODE_MAGIC	0x67a8c78d
+#define ENVFS_INODE_END_MAGIC	0x68a8c78d
 #define ENVFS_END_MAGIC		0x6a87d6cd
 #define ENVFS_SIGNATURE	"barebox envfs"
 
 struct envfs_inode {
 	uint32_t magic;	/* ENVFS_INODE_MAGIC */
 	uint32_t size;	/* data size in bytes  */
-	uint32_t namelen; /* The length of the filename _including_ a trailing 0 */
+	uint32_t headerlen; /* The length of the filename _including_ a trailing 0 */
 	char data[0];	/* The filename (zero terminated) + padding to 4 byte boundary
 			 * followed by the data for this inode.
 			 * The next inode follows after the data + padding to 4 byte
@@ -24,6 +25,11 @@ struct envfs_inode {
 			 */
 };
 
+struct envfs_inode_end {
+	uint32_t magic;	/* ENVFS_INODE_END_MAGIC */
+	uint32_t mode;	/* file mode */
+};
+
 /*
  * Superblock information at the beginning of the FS.
  */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
