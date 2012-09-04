Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo2.mail-out.ovh.net ([46.105.58.226]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T8z8Q-000848-Sn
 for barebox@lists.infradead.org; Tue, 04 Sep 2012 19:50:18 +0000
Received: from mail21.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 23DC8DC5B19
 for <barebox@lists.infradead.org>; Tue,  4 Sep 2012 21:55:24 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue,  4 Sep 2012 21:50:16 +0200
Message-Id: <1346788217-16042-18-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1346788217-16042-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120904194720.GB32603@game.jcrosoft.org>
 <1346788217-16042-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 18/19] envfs: add support of symlink
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/environment.c |  103 +++++++++++++++++++++++++++++++++++---------------
 1 file changed, 73 insertions(+), 30 deletions(-)

diff --git a/common/environment.c b/common/environment.c
index fc5c57e..ce46f4a 100644
--- a/common/environment.c
+++ b/common/environment.c
@@ -54,7 +54,20 @@ int file_size_action(const char *filename, struct stat *statbuf,
 	data->writep += sizeof(struct envfs_inode);
 	data->writep += PAD4(strlen(filename) + 1 - strlen(data->base));
 	data->writep += sizeof(struct envfs_inode_end);
-	data->writep += PAD4(statbuf->st_size);
+	if (S_ISLNK(statbuf->st_mode)) {
+		char path[PATH_MAX];
+
+		memset(path, 0, PATH_MAX);
+
+		if (readlink(filename, path, PATH_MAX - 1) < 0) {
+			perror("read");
+			return 0;
+		}
+		data->writep += PAD4(strlen(path) + 1);
+	} else {
+		data->writep += PAD4(statbuf->st_size);
+	}
+
 	return 1;
 }
 
@@ -67,13 +80,9 @@ int file_save_action(const char *filename, struct stat *statbuf,
 	int fd;
 	int namelen = strlen(filename) + 1 - strlen(data->base);
 
-	debug("handling file %s size %ld namelen %d\n", filename + strlen(data->base),
-		statbuf->st_size, namelen);
-
 	inode = (struct envfs_inode*)data->writep;
 	inode->magic = ENVFS_32(ENVFS_INODE_MAGIC);
 	inode->headerlen = ENVFS_32(PAD4(namelen + sizeof(struct envfs_inode_end)));
-	inode->size = ENVFS_32(statbuf->st_size);
 	data->writep += sizeof(struct envfs_inode);
 
 	strcpy(data->writep, filename + strlen(data->base));
@@ -83,19 +92,44 @@ int file_save_action(const char *filename, struct stat *statbuf,
 	inode_end->magic = ENVFS_32(ENVFS_INODE_END_MAGIC);
 	inode_end->mode = ENVFS_32(S_IRWXU | S_IRWXG | S_IRWXO);
 
-	fd = open(filename, O_RDONLY);
-	if (fd < 0) {
-		printf("Open %s %s\n", filename, errno_str());
-		goto out;
-	}
+	if (S_ISLNK(statbuf->st_mode)) {
+		char path[PATH_MAX];
+		int len;
 
-	if (read(fd, data->writep, statbuf->st_size) < statbuf->st_size) {
-		perror("read");
-		goto out;
-	}
-	close(fd);
+		memset(path, 0, PATH_MAX);
+
+		if (readlink(filename, path, PATH_MAX - 1) < 0) {
+			perror("read");
+			goto out;
+		}
+		len = strlen(path) + 1;
+
+		inode_end->mode |= ENVFS_32(S_IFLNK);
 
-	data->writep += PAD4(statbuf->st_size);
+		memcpy(data->writep, path, len);
+		inode->size = ENVFS_32(len);
+		data->writep += PAD4(len);
+		debug("handling symlink %s size %ld namelen %d headerlen %d\n", filename + strlen(data->base),
+			len, namelen, ENVFS_32(inode->headerlen));
+	} else {
+		debug("handling file %s size %ld namelen %d headerlen %d\n", filename + strlen(data->base),
+			statbuf->st_size, namelen, ENVFS_32(inode->headerlen));
+
+		inode->size = ENVFS_32(statbuf->st_size);
+		fd = open(filename, O_RDONLY);
+		if (fd < 0) {
+			printf("Open %s %s\n", filename, errno_str());
+			goto out;
+		}
+
+		if (read(fd, data->writep, statbuf->st_size) < statbuf->st_size) {
+			perror("read");
+			goto out;
+		}
+		close(fd);
+
+		data->writep += PAD4(statbuf->st_size);
+	}
 
 out:
 	return 1;
@@ -277,22 +311,31 @@ int envfs_load(char *filename, char *dir)
 			goto out;
 		}
 
-		fd = open(str, O_WRONLY | O_CREAT | O_TRUNC, 0644);
-		free(str);
-		if (fd < 0) {
-			printf("Open %s\n", errno_str());
-			ret = fd;
-			goto out;
-		}
-
-		ret = write(fd, buf, inode_size);
-		if (ret < inode_size) {
-			perror("write");
-			ret = -errno;
+		if (S_ISLNK(ENVFS_32(inode_end->mode))) {
+			debug("symlink: %s -> %s\n", str, (char*)buf);
+			if (symlink((char*)buf, str) < 0) {
+				printf("symlink: %s -> %s :", str, (char*)buf);
+				perror("");
+			}
+			free(str);
+		} else {
+			fd = open(str, O_WRONLY | O_CREAT | O_TRUNC, 0644);
+			free(str);
+			if (fd < 0) {
+				printf("Open %s\n", errno_str());
+				ret = fd;
+				goto out;
+			}
+
+			ret = write(fd, buf, inode_size);
+			if (ret < inode_size) {
+				perror("write");
+				ret = -errno;
+				close(fd);
+				goto out;
+			}
 			close(fd);
-			goto out;
 		}
-		close(fd);
 
 		buf += PAD4(inode_size);
 		size -= headerlen_full + PAD4(inode_size) +
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
