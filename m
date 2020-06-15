Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkiCw-0007fy-7Y
 for barebox@lists.infradead.org; Mon, 15 Jun 2020 06:03:05 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 15 Jun 2020 08:02:26 +0200
Message-Id: <20200615060229.7533-9-s.hauer@pengutronix.de>
In-Reply-To: <20200615060229.7533-1-s.hauer@pengutronix.de>
References: <20200615060229.7533-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 08/11] fs: ramfs: Use dynamically sized chunks
To: Barebox List <barebox@lists.infradead.org>

This changes the way ramfs stores its data. So far we used equally sized
chunks, this patch changes it to use chunks in a size that fits our
needs. The chunks are always allocated in the size they are needed for
the current truncation. Only if we fail to allocate all desired memory
at once we fall back to allocating smaller chunks. Together with using
the generic list implementation this results in smaller code and has
the advantage that many image files end up being contiguously in memory
and thus we can provide a memmap for them. Files will end up
contiguously in memory when they are first created, then truncated to
the final size and then filled up with data. This is something which
is normally easily achievable when desired.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/ramfs.c | 307 +++++++++++++++++++++++++++--------------------------
 1 file changed, 159 insertions(+), 148 deletions(-)

diff --git a/fs/ramfs.c b/fs/ramfs.c
index 2b6df07996..ebe03de736 100644
--- a/fs/ramfs.c
+++ b/fs/ramfs.c
@@ -23,12 +23,15 @@
 #include <errno.h>
 #include <linux/stat.h>
 #include <xfuncs.h>
+#include <linux/sizes.h>
 
 #define CHUNK_SIZE	(4096 * 2)
 
 struct ramfs_chunk {
 	char *data;
-	struct ramfs_chunk *next;
+	unsigned long ofs;
+	int size;
+	struct list_head list;
 };
 
 struct ramfs_inode {
@@ -37,12 +40,14 @@ struct ramfs_inode {
 	char *symlink;
 	ulong mode;
 
-	ulong size;
-	struct ramfs_chunk *data;
+	/* bytes used in this inode */
+	unsigned long size;
+	/* bytes currently allocated for this inode */
+	unsigned long alloc_size;
+
+	struct list_head data;
 
-	/* Points to recently used chunk */
-	int recent_chunk;
-	struct ramfs_chunk *recent_chunkp;
+	struct ramfs_chunk *current_chunk;
 };
 
 static inline struct ramfs_inode *to_ramfs_inode(struct inode *inode)
@@ -89,18 +94,25 @@ static struct inode *ramfs_get_inode(struct super_block *sb, const struct inode
 	return inode;
 }
 
-static struct ramfs_chunk *ramfs_get_chunk(void)
+#define MIN_SIZE SZ_8K
+
+static struct ramfs_chunk *ramfs_get_chunk(unsigned long size)
 {
 	struct ramfs_chunk *data = malloc(sizeof(struct ramfs_chunk));
+
 	if (!data)
 		return NULL;
 
-	data->data = calloc(CHUNK_SIZE, 1);
+	if (size < MIN_SIZE)
+		size = MIN_SIZE;
+
+	data->data = calloc(size, 1);
 	if (!data->data) {
 		free(data);
 		return NULL;
 	}
-	data->next = NULL;
+
+	data->size = size;
 
 	return data;
 }
@@ -160,23 +172,6 @@ static int ramfs_symlink(struct inode *dir, struct dentry *dentry,
 
 static int ramfs_unlink(struct inode *dir, struct dentry *dentry)
 {
-	struct inode *inode = d_inode(dentry);
-
-	if (inode) {
-		struct ramfs_inode *node = to_ramfs_inode(inode);
-		struct ramfs_chunk *chunk = node->data;
-
-		node->data = NULL;
-
-		while (chunk) {
-			struct ramfs_chunk *tmp = chunk;
-
-			chunk = chunk->next;
-
-			ramfs_put_chunk(tmp);
-		}
-	}
-
 	return simple_unlink(dir, dentry);
 }
 
@@ -200,80 +195,57 @@ static const struct inode_operations ramfs_dir_inode_operations =
 	.create = ramfs_create,
 };
 
-static struct ramfs_chunk *ramfs_find_chunk(struct ramfs_inode *node, int chunk)
+static struct ramfs_chunk *ramfs_find_chunk(struct ramfs_inode *node,
+					    unsigned long pos, int *ofs, int *len)
 {
-	struct ramfs_chunk *data;
-	int left = chunk;
+	struct ramfs_chunk *data, *cur = node->current_chunk;
 
-	if (chunk == 0)
-		return node->data;
+	if (cur && pos >= cur->ofs)
+		data = cur;
+	else
+		data = list_first_entry(&node->data, struct ramfs_chunk, list);
 
-	if (node->recent_chunk == chunk)
-		return node->recent_chunkp;
+	list_for_each_entry_from(data, &node->data, list) {
+		if (data->ofs + data->size > pos) {
+			*ofs = pos - data->ofs;
+			*len = data->ofs + data->size - pos;
 
-	if (node->recent_chunk < chunk && node->recent_chunk != 0) {
-		/* Start at last known chunk */
-		data = node->recent_chunkp;
-		left -= node->recent_chunk;
-	} else {
-		/* Start at first chunk */
-		data = node->data;
-	}
+			node->current_chunk = data;
 
-	while (left--)
-		data = data->next;
+			return data;
+		}
+	}
 
-	node->recent_chunkp = data;
-	node->recent_chunk = chunk;
+	pr_err("%s: no chunk for pos %ld found\n", __func__, pos);
 
-	return data;
+	return NULL;
 }
 
 static int ramfs_read(struct device_d *_dev, FILE *f, void *buf, size_t insize)
 {
 	struct inode *inode = f->f_inode;
 	struct ramfs_inode *node = to_ramfs_inode(inode);
-	int chunk;
 	struct ramfs_chunk *data;
-	int ofs;
-	int now;
-	int pos = f->pos;
+	int ofs, len, now;
+	unsigned long pos = f->pos;
 	int size = insize;
 
-	chunk = pos / CHUNK_SIZE;
-	debug("%s: reading from chunk %d\n", __FUNCTION__, chunk);
+	debug("%s: %p %d @ %lld\n", __func__, node, insize, f->pos);
+
+	while (size) {
+		data = ramfs_find_chunk(node, pos, &ofs, &len);
+		if (!data)
+			return -EINVAL;
 
-	/* Position ourself in stream */
-	data = ramfs_find_chunk(node, chunk);
-	ofs = pos % CHUNK_SIZE;
+		debug("%s: pos: %ld ofs: %d len: %d\n", __func__, pos, ofs, len);
+
+		now = min(size, len);
 
-	/* Read till end of current chunk */
-	if (ofs) {
-		now = min(size, CHUNK_SIZE - ofs);
-		debug("Reading till end of node. size: %d\n", size);
 		memcpy(buf, data->data + ofs, now);
+
 		size -= now;
-		pos += now;
 		buf += now;
-		if (pos > node->size)
-			node->size = now;
-		data = data->next;
-	}
-
-	/* Do full chunks */
-	while (size >= CHUNK_SIZE) {
-		debug("do full chunk. size: %d\n", size);
-		memcpy(buf, data->data, CHUNK_SIZE);
-		data = data->next;
-		size -= CHUNK_SIZE;
-		pos += CHUNK_SIZE;
-		buf += CHUNK_SIZE;
-	}
-
-	/* And the rest */
-	if (size) {
-		debug("do rest. size: %d\n", size);
-		memcpy(buf, data->data, size);
+		pos += now;
 	}
 
 	return insize;
@@ -283,100 +255,135 @@ static int ramfs_write(struct device_d *_dev, FILE *f, const void *buf, size_t i
 {
 	struct inode *inode = f->f_inode;
 	struct ramfs_inode *node = to_ramfs_inode(inode);
-	int chunk;
 	struct ramfs_chunk *data;
-	int ofs;
-	int now;
-	int pos = f->pos;
+	int ofs, len, now;
+	unsigned long pos = f->pos;
 	int size = insize;
 
-	chunk = f->pos / CHUNK_SIZE;
-	debug("%s: writing to chunk %d\n", __FUNCTION__, chunk);
+	debug("%s: %p %d @ %lld\n", __func__, node, insize, f->pos);
+
+	while (size) {
+		data = ramfs_find_chunk(node, pos, &ofs, &len);
+		if (!data)
+			return -EINVAL;
+
+		debug("%s: pos: %ld ofs: %d len: %d\n", __func__, pos, ofs, len);
 
-	/* Position ourself in stream */
-	data = ramfs_find_chunk(node, chunk);
-	ofs = f->pos % CHUNK_SIZE;
+		now = min(size, len);
 
-	/* Write till end of current chunk */
-	if (ofs) {
-		now = min(size, CHUNK_SIZE - ofs);
-		debug("writing till end of node. size: %d\n", size);
 		memcpy(data->data + ofs, buf, now);
+
 		size -= now;
-		pos += now;
 		buf += now;
-		if (pos > node->size)
-			node->size = now;
-		data = data->next;
+		pos += now;
+	}
+
+	return insize;
+}
+
+static void ramfs_truncate_down(struct ramfs_inode *node, unsigned long size)
+{
+	struct ramfs_chunk *data, *tmp;
+
+	list_for_each_entry_safe(data, tmp, &node->data, list) {
+		if (data->ofs >= size) {
+			list_del(&data->list);
+			node->alloc_size -= data->size;
+			ramfs_put_chunk(data);
+		}
 	}
 
-	/* Do full chunks */
-	while (size >= CHUNK_SIZE) {
-		debug("do full chunk. size: %d\n", size);
-		memcpy(data->data, buf, CHUNK_SIZE);
-		data = data->next;
-		size -= CHUNK_SIZE;
-		pos += CHUNK_SIZE;
-		buf += CHUNK_SIZE;
+	node->current_chunk = NULL;
+}
+
+static int ramfs_truncate_up(struct ramfs_inode *node, unsigned long size)
+{
+	struct ramfs_chunk *data, *tmp;
+	LIST_HEAD(list);
+	unsigned long add = size - node->alloc_size;
+	unsigned long chunksize = add;
+	unsigned long alloc_size = 0;
+
+	if (node->alloc_size >= size)
+		return 0;
+
+	/*
+	 * We first try to allocate all space we need in a single chunk.
+	 * This may fail because of fragmented memory, so in case we cannot
+	 * allocate memory we successively decrease the chunk size until
+	 * we have enough allocations made.
+	 */
+	while (1) {
+		unsigned long now = min(chunksize, add);
+
+		data = ramfs_get_chunk(now);
+		if (!data) {
+			/* No luck, try with smaller chunk size */
+			chunksize >>= 1;
+
+			/* If we do not have even 128KiB then go out */
+			if (chunksize < SZ_128K)
+				goto out;
+
+			continue;
+		}
+
+		data->ofs = node->alloc_size + alloc_size;
+
+		alloc_size += data->size;
+
+		list_add_tail(&data->list, &list);
+
+		if (add <= data->size)
+			break;
+
+		add -= data->size;
 	}
 
-	/* And the rest */
-	if (size) {
-		debug("do rest. size: %d\n", size);
-		memcpy(data->data, buf, size);
+	list_splice_tail(&list, &node->data);
+
+	node->alloc_size += alloc_size;
+
+	return 0;
+
+out:
+	list_for_each_entry_safe(data, tmp, &list, list) {
+		list_del(&data->list);
+		ramfs_put_chunk(data);
 	}
 
-	return insize;
+	return -ENOSPC;
 }
 
 static int ramfs_truncate(struct device_d *dev, FILE *f, loff_t size)
 {
 	struct inode *inode = f->f_inode;
 	struct ramfs_inode *node = to_ramfs_inode(inode);
-	int oldchunks, newchunks;
-	struct ramfs_chunk *data = node->data;
-
-	newchunks = (size + CHUNK_SIZE - 1) / CHUNK_SIZE;
-	oldchunks = (node->size + CHUNK_SIZE - 1) / CHUNK_SIZE;
-
-	if (newchunks < oldchunks) {
-		if (!newchunks)
-			node->data = NULL;
-		while (newchunks--)
-			data = data->next;
-		while (data) {
-			struct ramfs_chunk *tmp;
-			tmp = data->next;
-			ramfs_put_chunk(data);
-			data = tmp;
-		}
-		if (node->recent_chunk > newchunks)
-			node->recent_chunk = 0;
-	}
+	int ret;
 
-	if (newchunks > oldchunks) {
-		if (data) {
-			data = ramfs_find_chunk(node, oldchunks - 1);
-		} else {
-			node->data = ramfs_get_chunk();
-			if (!node->data)
-				return -ENOSPC;
-			data = node->data;
-			oldchunks = 1;
-		}
+	/*
+	 * This is a malloc based filesystem, no need to support more
+	 * memory than fits into unsigned long.
+	 */
+	if (size > ULONG_MAX)
+		return -ENOSPC;
 
-		while (data->next)
-			data = data->next;
+	debug("%s: %p cur: %ld new: %lld alloc: %ld\n", __func__, node,
+	       node->size, size, node->alloc_size);
 
-		while (newchunks > oldchunks) {
-			data->next = ramfs_get_chunk();
-			if (!data->next)
-				return -ENOSPC;
-			data = data->next;
-			oldchunks++;
-		}
+	if (size == node->size)
+		return 0;
+
+	if (size < node->size) {
+		ramfs_truncate_down(node, size);
+	} else {
+		ret = ramfs_truncate_up(node, size);
+		if (ret)
+			return ret;
 	}
+
 	node->size = size;
+
 	return 0;
 }
 
@@ -386,6 +393,8 @@ static struct inode *ramfs_alloc_inode(struct super_block *sb)
 
 	node = xzalloc(sizeof(*node));
 
+	INIT_LIST_HEAD(&node->data);
+
 	return &node->inode;
 }
 
@@ -393,6 +402,8 @@ static void ramfs_destroy_inode(struct inode *inode)
 {
 	struct ramfs_inode *node = to_ramfs_inode(inode);
 
+	ramfs_truncate_down(node, 0);
+
 	free(node);
 }
 
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
