Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XmMfh-0003B0-Dd
 for barebox@lists.infradead.org; Thu, 06 Nov 2014 13:00:18 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  6 Nov 2014 13:59:30 +0100
Message-Id: <1415278778-20826-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1415278778-20826-1-git-send-email-s.hauer@pengutronix.de>
References: <1415278778-20826-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/11] environment: refactor saveenv
To: barebox@lists.infradead.org

Collect all files in a list first and iterate over the list
when creating the actual environment image. Makes the next
patches easier.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/environment.c | 143 +++++++++++++++++++++++++++------------------------
 1 file changed, 75 insertions(+), 68 deletions(-)

diff --git a/common/environment.c b/common/environment.c
index a6cafb0..985adc1 100644
--- a/common/environment.c
+++ b/common/environment.c
@@ -41,9 +41,18 @@
 #define EXPORT_SYMBOL(x)
 #endif
 
+struct envfs_entry {
+	char *name;
+	void *buf;
+	int size;
+	struct envfs_entry *next;
+	mode_t mode;
+};
+
 struct action_data {
 	const char *base;
 	void *writep;
+	struct envfs_entry *env;
 };
 #define PAD4(x) ((x + 3) & ~3)
 
@@ -71,95 +80,77 @@ static inline int erase(int fd, size_t count, unsigned long offset)
 }
 #endif
 
-static int file_size_action(const char *filename, struct stat *statbuf,
+static int file_action(const char *filename, struct stat *statbuf,
 			    void *userdata, int depth)
 {
 	struct action_data *data = userdata;
+	struct envfs_entry *env;
+	int fd, ret;
 
-	data->writep += sizeof(struct envfs_inode);
-	data->writep += PAD4(strlen(filename) + 1 - strlen(data->base));
-	data->writep += sizeof(struct envfs_inode_end);
-	if (S_ISLNK(statbuf->st_mode)) {
-		char path[PATH_MAX];
+	env = xzalloc(sizeof(*env));
+	env->name = strdup(filename + strlen(data->base));
+	env->size = statbuf->st_size;
+
+	env->buf = calloc(env->size + 1, 1);
+	if (!env->buf)
+		goto out;
 
-		memset(path, 0, PATH_MAX);
+	env->mode = S_IRWXU | S_IRWXG | S_IRWXO;
 
-		if (readlink(filename, path, PATH_MAX - 1) < 0) {
+	if (S_ISLNK(statbuf->st_mode)) {
+		env->size++;
+
+		ret = readlink(filename, env->buf, env->size);
+		if (ret < 0) {
 			perror("read");
-			return 0;
+			goto out;
 		}
-		data->writep += PAD4(strlen(path) + 1);
+
+		env->mode |= S_IFLNK;
 	} else {
-		data->writep += PAD4(statbuf->st_size);
+		fd = open(filename, O_RDONLY);
+		if (fd < 0)
+			return fd;
+
+		ret = read(fd, env->buf, env->size);
+
+		close(fd);
+
+		if (ret < env->size) {
+			perror("read");
+			goto out;
+		}
 	}
 
+	env->next = data->env;
+	data->env = env;
+out:
 	return 1;
 }
 
-static int file_save_action(const char *filename, struct stat *statbuf,
-			    void *userdata, int depth)
+static void envfs_save_inode(struct action_data *data, struct envfs_entry *env)
 {
-	struct action_data *data = userdata;
 	struct envfs_inode *inode;
 	struct envfs_inode_end *inode_end;
-	int fd;
-	int namelen = strlen(filename) + 1 - strlen(data->base);
+	int namelen = strlen(env->name) + 1;
 
 	inode = data->writep;
 	inode->magic = ENVFS_32(ENVFS_INODE_MAGIC);
-	inode->headerlen = ENVFS_32(PAD4(namelen + sizeof(struct envfs_inode_end)));
+	inode->headerlen = ENVFS_32(PAD4(namelen) + sizeof(struct envfs_inode_end));
+	inode->size = ENVFS_32(env->size);
+
 	data->writep += sizeof(struct envfs_inode);
 
-	strcpy(data->writep, filename + strlen(data->base));
+	strcpy(data->writep, env->name);
 	data->writep += PAD4(namelen);
+
 	inode_end = data->writep;
-	data->writep += sizeof(struct envfs_inode_end);
 	inode_end->magic = ENVFS_32(ENVFS_INODE_END_MAGIC);
-	inode_end->mode = ENVFS_32(S_IRWXU | S_IRWXG | S_IRWXO);
-
-	if (S_ISLNK(statbuf->st_mode)) {
-		char path[PATH_MAX];
-		int len;
-
-		memset(path, 0, PATH_MAX);
-
-		if (readlink(filename, path, PATH_MAX - 1) < 0) {
-			perror("read");
-			goto out;
-		}
-		len = strlen(path) + 1;
-
-		inode_end->mode |= ENVFS_32(S_IFLNK);
-
-		memcpy(data->writep, path, len);
-		inode->size = ENVFS_32(len);
-		data->writep += PAD4(len);
-		debug("handling symlink %s size %d namelen %d headerlen %d\n",
-				filename + strlen(data->base),
-				len, namelen, ENVFS_32(inode->headerlen));
-	} else {
-		debug("handling file %s size %lld namelen %d headerlen %d\n",
-				filename + strlen(data->base),
-				statbuf->st_size, namelen, ENVFS_32(inode->headerlen));
-
-		inode->size = ENVFS_32(statbuf->st_size);
-		fd = open(filename, O_RDONLY);
-		if (fd < 0) {
-			printf("Open %s %s\n", filename, errno_str());
-			goto out;
-		}
-
-		if (read(fd, data->writep, statbuf->st_size) < statbuf->st_size) {
-			perror("read");
-			goto out;
-		}
-		close(fd);
-
-		data->writep += PAD4(statbuf->st_size);
-	}
+	inode_end->mode = ENVFS_32(env->mode);
+	data->writep += sizeof(struct envfs_inode_end);
 
-out:
-	return 1;
+	memcpy(data->writep, env->buf, env->size);
+	data->writep += PAD4(env->size);
 }
 
 /**
@@ -176,8 +167,9 @@ int envfs_save(const char *filename, const char *dirname, unsigned flags)
 {
 	struct envfs_super *super;
 	int envfd, size, ret;
-	struct action_data data;
+	struct action_data data = {};
 	void *buf = NULL, *wbuf;
+	struct envfs_entry *env;
 
 	data.writep = NULL;
 	data.base = dirname;
@@ -186,10 +178,16 @@ int envfs_save(const char *filename, const char *dirname, unsigned flags)
 		size = 0; /* force no content */
 	} else {
 		/* first pass: calculate size */
-		recursive_action(dirname, ACTION_RECURSE, file_size_action,
+		recursive_action(dirname, ACTION_RECURSE, file_action,
 				NULL, &data, 0);
+		size = 0;
 
-		size = (unsigned long)data.writep;
+		for (env = data.env; env; env = env->next) {
+			size += PAD4(env->size);
+			size += sizeof(struct envfs_inode);
+			size += PAD4(strlen(env->name) + 1);
+			size += sizeof(struct envfs_inode_end);
+		}
 	}
 
 	buf = xzalloc(size + sizeof(struct envfs_super));
@@ -204,8 +202,17 @@ int envfs_save(const char *filename, const char *dirname, unsigned flags)
 
 	if (!(flags & ENVFS_FLAGS_FORCE_BUILT_IN)) {
 		/* second pass: copy files to buffer */
-		recursive_action(dirname, ACTION_RECURSE, file_save_action,
-				NULL, &data, 0);
+		env = data.env;
+		while (env) {
+			struct envfs_entry *next = env->next;
+
+			envfs_save_inode(&data, env);
+
+			free(env->buf);
+			free(env->name);
+			free(env);
+			env = next;
+		}
 	}
 
 	super->crc = ENVFS_32(crc32(0, buf + sizeof(struct envfs_super), size));
-- 
2.1.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
