Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lC6YG-0007RR-Dd
 for barebox@lists.infradead.org; Tue, 16 Feb 2021 20:02:33 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 16 Feb 2021 21:02:05 +0100
Message-Id: <20210216200208.5275-6-a.fatoum@pengutronix.de>
In-Reply-To: <20210216200208.5275-1-a.fatoum@pengutronix.de>
References: <20210216200208.5275-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 5/8] fs: ext4: use sector_t and loff_t where appropriate
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

While the block API now supports 64-bit LBAs, file systems like ext4
still use 31- and 32-bit integers at a couple of places. Fix them up.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/ext4/ext4_common.c | 23 +++++++++++++----------
 fs/ext4/ext4_common.h |  4 ++--
 fs/ext4/ext4fs.c      | 34 +++++++++++++++++++---------------
 fs/ext4/ext4fs.h      |  2 +-
 fs/ext4/ext_barebox.c |  6 +++---
 5 files changed, 38 insertions(+), 31 deletions(-)

diff --git a/fs/ext4/ext4_common.c b/fs/ext4/ext4_common.c
index c9f27f127854..4bfb55ad0da5 100644
--- a/fs/ext4/ext4_common.c
+++ b/fs/ext4/ext4_common.c
@@ -43,10 +43,11 @@ static struct ext4_extent_header *ext4fs_get_extent_block(struct ext2_data *data
 		uint32_t fileblock, int log2_blksz)
 {
 	struct ext4_extent_idx *index;
-	unsigned long long block;
+	sector_t block;
 	struct ext_filesystem *fs = data->fs;
 	int blksz = EXT2_BLOCK_SIZE(data);
-	int i, ret;
+	ssize_t ret;
+	int i;
 
 	while (1) {
 		index = (struct ext4_extent_idx *)(ext_block + 1);
@@ -77,10 +78,10 @@ static struct ext4_extent_header *ext4fs_get_extent_block(struct ext2_data *data
 	}
 }
 
-static int ext4fs_blockgroup(struct ext2_data *data, int group,
+static ssize_t ext4fs_blockgroup(struct ext2_data *data, int group,
 		struct ext2_block_group *blkgrp)
 {
-	long int blkno;
+	sector_t blkno;
 	unsigned int blkoff, desc_per_blk;
 	struct ext_filesystem *fs = data->fs;
 	int desc_size = fs->gdsize;
@@ -91,7 +92,7 @@ static int ext4fs_blockgroup(struct ext2_data *data, int group,
 			group / desc_per_blk;
 	blkoff = (group % desc_per_blk) * desc_size;
 
-	dev_dbg(fs->dev, "read %d group descriptor (blkno %ld blkoff %u)\n",
+	dev_dbg(fs->dev, "read %d group descriptor (blkno %llu blkoff %u)\n",
 	      group, blkno, blkoff);
 
 	return ext4fs_devread(fs, blkno << LOG2_EXT2_BLOCK_SIZE(data),
@@ -103,8 +104,9 @@ int ext4fs_read_inode(struct ext2_data *data, int ino, struct ext2_inode *inode)
 	struct ext2_block_group blkgrp;
 	struct ext2_sblock *sblock = &data->sblock;
 	struct ext_filesystem *fs = data->fs;
-	int inodes_per_block, ret;
-	long int blkno;
+	int inodes_per_block;
+	ssize_t ret;
+	sector_t blkno;
 	unsigned int blkoff;
 
 	/* It is easier to calculate if the first inode is 0. */
@@ -128,11 +130,11 @@ int ext4fs_read_inode(struct ext2_data *data, int ino, struct ext2_inode *inode)
 }
 
 static int ext4fs_get_indir_block(struct ext2fs_node *node,
-				struct ext4fs_indir_block *indir, int blkno)
+				struct ext4fs_indir_block *indir, sector_t blkno)
 {
 	struct ext_filesystem *fs = node->data->fs;
 	int blksz;
-	int ret;
+	ssize_t ret;
 
 	blksz = EXT2_BLOCK_SIZE(node->data);
 
@@ -488,7 +490,8 @@ fail:
 int ext4fs_mount(struct ext_filesystem *fs)
 {
 	struct ext2_data *data;
-	int ret, blksz;
+	ssize_t ret;
+	int blksz;
 
 	data = zalloc(sizeof(struct ext2_data));
 	if (!data)
diff --git a/fs/ext4/ext4_common.h b/fs/ext4/ext4_common.h
index 81fb67ef4c10..f8ebd7626636 100644
--- a/fs/ext4/ext4_common.h
+++ b/fs/ext4/ext4_common.h
@@ -48,8 +48,8 @@ static inline void *zalloc(size_t size)
 
 int ext4fs_read_inode(struct ext2_data *data, int ino,
 		      struct ext2_inode *inode);
-int ext4fs_read_file(struct ext2fs_node *node, int pos,
-		unsigned int len, char *buf);
+loff_t ext4fs_read_file(struct ext2fs_node *node, loff_t pos,
+			unsigned int len, char *buf);
 int ext4fs_find_file(const char *path, struct ext2fs_node *rootnode,
 			struct ext2fs_node **foundnode, int *foundtype);
 int ext4fs_iterate_dir(struct ext2fs_node *dir, char *name,
diff --git a/fs/ext4/ext4fs.c b/fs/ext4/ext4fs.c
index 2d231d273a34..be643a448761 100644
--- a/fs/ext4/ext4fs.c
+++ b/fs/ext4/ext4fs.c
@@ -47,28 +47,32 @@ void ext4fs_free_node(struct ext2fs_node *node, struct ext2fs_node *currroot)
  * Optimized read file API : collects and defers contiguous sector
  * reads into one potentially more efficient larger sequential read action
  */
-int ext4fs_read_file(struct ext2fs_node *node, int pos,
+loff_t ext4fs_read_file(struct ext2fs_node *node, loff_t pos,
 		unsigned int len, char *buf)
 {
-	int i;
-	int blockcnt;
+	loff_t i;
+	blkcnt_t blockcnt;
 	int log2blocksize = LOG2_EXT2_BLOCK_SIZE(node->data);
-	int blocksize = 1 << (log2blocksize + DISK_SECTOR_BITS);
+	const int blockshift = log2blocksize + DISK_SECTOR_BITS;
+	const int blocksize = 1 << blockshift;
 	unsigned int filesize = le32_to_cpu(node->inode.size);
-	short ret;
+	ssize_t ret;
 	struct ext_filesystem *fs = node->data->fs;
 
 	/* Adjust len so it we can't read past the end of the file. */
-	if (len > filesize)
-		len = filesize;
+	if (len + pos > filesize)
+		len = filesize - pos;
 
-	blockcnt = ((len + pos) + blocksize - 1) / blocksize;
+	if (filesize <= pos)
+		return -EINVAL;
 
-	for (i = pos / blocksize; i < blockcnt; i++) {
-		int blknr;
-		int blockoff = pos % blocksize;
-		int blockend = blocksize;
-		int skipfirst = 0;
+	blockcnt = ((len + pos) + blocksize - 1) >> blockshift;
+
+	for (i = pos >> blockshift; i < blockcnt; i++) {
+		sector_t blknr;
+		loff_t blockoff = pos - (blocksize * i);
+		loff_t blockend = blocksize;
+		loff_t skipfirst = 0;
 
 		blknr = read_allocated_block(node, i);
 		if (blknr < 0)
@@ -78,7 +82,7 @@ int ext4fs_read_file(struct ext2fs_node *node, int pos,
 
 		/* Last block.  */
 		if (i == blockcnt - 1) {
-			blockend = (len + pos) % blocksize;
+			blockend = (len + pos) - (blocksize * i);
 
 			/* The last portion is exactly blocksize. */
 			if (!blockend)
@@ -86,7 +90,7 @@ int ext4fs_read_file(struct ext2fs_node *node, int pos,
 		}
 
 		/* First block. */
-		if (i == pos / blocksize) {
+		if (i == pos >> blockshift) {
 			skipfirst = blockoff;
 			blockend -= skipfirst;
 		}
diff --git a/fs/ext4/ext4fs.h b/fs/ext4/ext4fs.h
index 5cf33bcf351b..83ae9b87a45c 100644
--- a/fs/ext4/ext4fs.h
+++ b/fs/ext4/ext4fs.h
@@ -95,7 +95,7 @@ int ext4fs_mount(struct ext_filesystem *fs);
 void ext4fs_umount(struct ext_filesystem *fs);
 char *ext4fs_read_symlink(struct ext2fs_node *node);
 void ext4fs_free_node(struct ext2fs_node *node, struct ext2fs_node *currroot);
-int ext4fs_devread(struct ext_filesystem *fs, int sector, int byte_offset, int byte_len, char *buf);
+ssize_t ext4fs_devread(struct ext_filesystem *fs, sector_t sector, int byte_offset, size_t byte_len, char *buf);
 long int read_allocated_block(struct ext2fs_node *node, int fileblock);
 
 #endif
diff --git a/fs/ext4/ext_barebox.c b/fs/ext4/ext_barebox.c
index 353ab44b2910..a68a783e1c8a 100644
--- a/fs/ext4/ext_barebox.c
+++ b/fs/ext4/ext_barebox.c
@@ -27,15 +27,15 @@
 #include <fcntl.h>
 #include "ext4_common.h"
 
-int ext4fs_devread(struct ext_filesystem *fs, int __sector, int byte_offset,
-		int byte_len, char *buf)
+ssize_t ext4fs_devread(struct ext_filesystem *fs, sector_t __sector, int byte_offset,
+		       size_t byte_len, char *buf)
 {
 	ssize_t size;
 	uint64_t sector = __sector;
 
 	size = cdev_read(fs->cdev, buf, byte_len, sector * SECTOR_SIZE + byte_offset, 0);
 	if (size < 0) {
-		dev_err(fs->dev, "read error at sector %d: %s\n", __sector,
+		dev_err(fs->dev, "read error at sector %llu: %s\n", __sector,
 				strerror(-size));
 		return size;
 	}
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
