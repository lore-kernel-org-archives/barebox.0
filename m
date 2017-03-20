Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x242.google.com ([2a00:1450:4010:c07::242])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cpwXc-0002pu-DR
 for barebox@lists.infradead.org; Mon, 20 Mar 2017 12:36:07 +0000
Received: by mail-lf0-x242.google.com with SMTP id y193so10132647lfd.1
 for <barebox@lists.infradead.org>; Mon, 20 Mar 2017 05:35:42 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon, 20 Mar 2017 15:35:27 +0300
Message-Id: <20170320123532.24059-3-antonynpavlov@gmail.com>
In-Reply-To: <20170320123532.24059-1-antonynpavlov@gmail.com>
References: <20170320123532.24059-1-antonynpavlov@gmail.com>
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
Subject: [PATCH 2/7] ext4: use kernel names for byte swaps
To: barebox@lists.infradead.org

This is an adoption of the U-Boot commit

| commit 7f101be314da1f6f612a1b84822f791d6569946b
| Author: Michael Walle <michael@walle.cc>
| Date:   Mon Aug 29 10:46:44 2016 +0200
|
|     ext4: use kernel names for byte swaps
|
|     Instead of __{be,le}{16,32}_to_cpu use {be,le}{16,32}_to_cpu.
|
|     Signed-off-by: Michael Walle <michael@walle.cc>

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 fs/ext4/ext4_common.c | 60 +++++++++++++++++++++++++--------------------------
 fs/ext4/ext4fs.c      |  2 +-
 fs/ext4/ext_barebox.c | 10 ++++-----
 fs/ext4/ext_common.h  |  6 +++---
 4 files changed, 39 insertions(+), 39 deletions(-)

diff --git a/fs/ext4/ext4_common.c b/fs/ext4/ext4_common.c
index 6c4083eae..f11ca6b32 100644
--- a/fs/ext4/ext4_common.c
+++ b/fs/ext4/ext4_common.c
@@ -86,7 +86,7 @@ static int ext4fs_blockgroup(struct ext2_data *data, int group,
 
 	desc_per_blk = EXT2_BLOCK_SIZE(data) / sizeof(struct ext2_block_group);
 
-	blkno = __le32_to_cpu(data->sblock.first_data_block) + 1 +
+	blkno = le32_to_cpu(data->sblock.first_data_block) + 1 +
 			group / desc_per_blk;
 	blkoff = (group % desc_per_blk) * sizeof(struct ext2_block_group);
 
@@ -109,14 +109,14 @@ int ext4fs_read_inode(struct ext2_data *data, int ino, struct ext2_inode *inode)
 
 	/* It is easier to calculate if the first inode is 0. */
 	ino--;
-	ret = ext4fs_blockgroup(data, ino / __le32_to_cpu
+	ret = ext4fs_blockgroup(data, ino / le32_to_cpu
 				   (sblock->inodes_per_group), &blkgrp);
 	if (ret)
 		return ret;
 
 	inodes_per_block = EXT2_BLOCK_SIZE(data) / fs->inodesz;
-	blkno = __le32_to_cpu(blkgrp.inode_table_id) +
-	    (ino % __le32_to_cpu(sblock->inodes_per_group)) / inodes_per_block;
+	blkno = le32_to_cpu(blkgrp.inode_table_id) +
+	    (ino % le32_to_cpu(sblock->inodes_per_group)) / inodes_per_block;
 	blkoff = (ino % inodes_per_block) * fs->inodesz;
 	/* Read the inode. */
 	ret = ext4fs_devread(fs, blkno << LOG2_EXT2_BLOCK_SIZE(data), blkoff,
@@ -212,14 +212,14 @@ long int read_allocated_block(struct ext2fs_node *node, int fileblock)
 
 	if (fileblock < INDIRECT_BLOCKS) {
 		/* Direct blocks. */
-		blknr = __le32_to_cpu(inode->b.blocks.dir_blocks[fileblock]);
+		blknr = le32_to_cpu(inode->b.blocks.dir_blocks[fileblock]);
 	} else if (fileblock < (INDIRECT_BLOCKS + (blksz / 4))) {
 		/* Indirect. */
 		ret = ext4fs_get_indir_block(node, &data->indir1,
-				__le32_to_cpu(inode->b.blocks.indir_block) << log2_blksz);
+				le32_to_cpu(inode->b.blocks.indir_block) << log2_blksz);
 		if (ret)
 			return ret;
-		blknr = __le32_to_cpu(data->indir1.data[fileblock - INDIRECT_BLOCKS]);
+		blknr = le32_to_cpu(data->indir1.data[fileblock - INDIRECT_BLOCKS]);
 	} else if (fileblock < (INDIRECT_BLOCKS + (blksz / 4 *
 					(blksz / 4 + 1)))) {
 		/* Double indirect. */
@@ -227,16 +227,16 @@ long int read_allocated_block(struct ext2fs_node *node, int fileblock)
 		long int rblock = fileblock - (INDIRECT_BLOCKS + blksz / 4);
 
 		ret = ext4fs_get_indir_block(node, &data->indir1,
-				__le32_to_cpu(inode->b.blocks.double_indir_block) << log2_blksz);
+				le32_to_cpu(inode->b.blocks.double_indir_block) << log2_blksz);
 		if (ret)
 			return ret;
 
 		ret = ext4fs_get_indir_block(node, &data->indir2,
-				__le32_to_cpu(data->indir1.data[rblock / perblock]) << log2_blksz);
+				le32_to_cpu(data->indir1.data[rblock / perblock]) << log2_blksz);
 		if (ret)
 			return ret;
 
-		blknr = __le32_to_cpu(data->indir2.data[rblock % perblock]);
+		blknr = le32_to_cpu(data->indir2.data[rblock % perblock]);
 	} else {
 		/* Triple indirect. */
 		rblock = fileblock - (INDIRECT_BLOCKS + blksz / 4 +
@@ -245,21 +245,21 @@ long int read_allocated_block(struct ext2fs_node *node, int fileblock)
 		perblock_parent = ((blksz / 4) * (blksz / 4));
 
 		ret = ext4fs_get_indir_block(node, &data->indir1,
-				__le32_to_cpu(inode->b.blocks.triple_indir_block) << log2_blksz);
+				le32_to_cpu(inode->b.blocks.triple_indir_block) << log2_blksz);
 		if (ret)
 			return ret;
 
 		ret = ext4fs_get_indir_block(node, &data->indir2,
-				__le32_to_cpu(data->indir1.data[rblock / perblock_parent]) << log2_blksz);
+				le32_to_cpu(data->indir1.data[rblock / perblock_parent]) << log2_blksz);
 		if (ret)
 			return ret;
 
 		ret = ext4fs_get_indir_block(node, &data->indir3,
-				__le32_to_cpu(data->indir2.data[rblock / perblock_child]) << log2_blksz);
+				le32_to_cpu(data->indir2.data[rblock / perblock_child]) << log2_blksz);
 		if (ret)
 			return ret;
 
-		blknr = __le32_to_cpu(data->indir3.data[rblock % perblock_child]);
+		blknr = le32_to_cpu(data->indir3.data[rblock % perblock_child]);
 	}
 
 	return blknr;
@@ -282,7 +282,7 @@ int ext4fs_iterate_dir(struct ext2fs_node *dir, char *name,
 			return ret;
 	}
 	/* Search the file.  */
-	while (fpos < __le32_to_cpu(diro->inode.size)) {
+	while (fpos < le32_to_cpu(diro->inode.size)) {
 		struct ext2_dirent dirent;
 
 		status = ext4fs_read_file(diro, fpos,
@@ -308,7 +308,7 @@ int ext4fs_iterate_dir(struct ext2fs_node *dir, char *name,
 				return -ENOMEM;
 
 			fdiro->data = diro->data;
-			fdiro->ino = __le32_to_cpu(dirent.inode);
+			fdiro->ino = le32_to_cpu(dirent.inode);
 
 			filename[dirent.namelen] = '\0';
 
@@ -323,7 +323,7 @@ int ext4fs_iterate_dir(struct ext2fs_node *dir, char *name,
 					type = FILETYPE_REG;
 			} else {
 				ret = ext4fs_read_inode(diro->data,
-							   __le32_to_cpu
+							   le32_to_cpu
 							   (dirent.inode),
 							   &fdiro->inode);
 				if (ret) {
@@ -332,15 +332,15 @@ int ext4fs_iterate_dir(struct ext2fs_node *dir, char *name,
 				}
 				fdiro->inode_read = 1;
 
-				if ((__le16_to_cpu(fdiro->inode.mode) &
+				if ((le16_to_cpu(fdiro->inode.mode) &
 				     FILETYPE_INO_MASK) ==
 				    FILETYPE_INO_DIRECTORY) {
 					type = FILETYPE_DIRECTORY;
-				} else if ((__le16_to_cpu(fdiro->inode.mode)
+				} else if ((le16_to_cpu(fdiro->inode.mode)
 					    & FILETYPE_INO_MASK) ==
 					   FILETYPE_INO_SYMLINK) {
 					type = FILETYPE_SYMLINK;
-				} else if ((__le16_to_cpu(fdiro->inode.mode)
+				} else if ((le16_to_cpu(fdiro->inode.mode)
 					    & FILETYPE_INO_MASK) ==
 					   FILETYPE_INO_REG) {
 					type = FILETYPE_REG;
@@ -357,7 +357,7 @@ int ext4fs_iterate_dir(struct ext2fs_node *dir, char *name,
 
 			free(fdiro);
 		}
-		fpos += __le16_to_cpu(dirent.direntlen);
+		fpos += le16_to_cpu(dirent.direntlen);
 	}
 	return -ENOENT;
 }
@@ -373,16 +373,16 @@ char *ext4fs_read_symlink(struct ext2fs_node *node)
 		if (ret)
 			return NULL;
 	}
-	symlink = zalloc(__le32_to_cpu(diro->inode.size) + 1);
+	symlink = zalloc(le32_to_cpu(diro->inode.size) + 1);
 	if (!symlink)
 		return 0;
 
-	if (__le32_to_cpu(diro->inode.size) < sizeof(diro->inode.b.symlink)) {
+	if (le32_to_cpu(diro->inode.size) < sizeof(diro->inode.b.symlink)) {
 		strncpy(symlink, diro->inode.b.symlink,
-			 __le32_to_cpu(diro->inode.size));
+			 le32_to_cpu(diro->inode.size));
 	} else {
 		status = ext4fs_read_file(diro, 0,
-					   __le32_to_cpu(diro->inode.size),
+					   le32_to_cpu(diro->inode.size),
 					   symlink);
 		if (status == 0) {
 			free(symlink);
@@ -390,7 +390,7 @@ char *ext4fs_read_symlink(struct ext2fs_node *node)
 		}
 	}
 
-	symlink[__le32_to_cpu(diro->inode.size)] = '\0';
+	symlink[le32_to_cpu(diro->inode.size)] = '\0';
 
 	return symlink;
 }
@@ -501,18 +501,18 @@ int ext4fs_mount(struct ext_filesystem *fs)
 		goto fail;
 
 	/* Make sure this is an ext2 filesystem. */
-	if (__le16_to_cpu(data->sblock.magic) != EXT2_SUPER_MAGIC) {
+	if (le16_to_cpu(data->sblock.magic) != EXT2_SUPER_MAGIC) {
 		ret = -EINVAL;
 		goto fail;
 	}
 
-	if (__le32_to_cpu(data->sblock.revision_level == 0))
+	if (le32_to_cpu(data->sblock.revision_level == 0))
 		fs->inodesz = 128;
 	else
-		fs->inodesz = __le16_to_cpu(data->sblock.inode_size);
+		fs->inodesz = le16_to_cpu(data->sblock.inode_size);
 
 	dev_info(fs->dev, "EXT2 rev %d, inode_size %d\n",
-	       __le32_to_cpu(data->sblock.revision_level), fs->inodesz);
+	       le32_to_cpu(data->sblock.revision_level), fs->inodesz);
 
 	data->diropen.data = data;
 	data->diropen.ino = 2;
diff --git a/fs/ext4/ext4fs.c b/fs/ext4/ext4fs.c
index 1b9af80f8..bfc5f27cc 100644
--- a/fs/ext4/ext4fs.c
+++ b/fs/ext4/ext4fs.c
@@ -54,7 +54,7 @@ int ext4fs_read_file(struct ext2fs_node *node, int pos,
 	int blockcnt;
 	int log2blocksize = LOG2_EXT2_BLOCK_SIZE(node->data);
 	int blocksize = 1 << (log2blocksize + DISK_SECTOR_BITS);
-	unsigned int filesize = __le32_to_cpu(node->inode.size);
+	unsigned int filesize = le32_to_cpu(node->inode.size);
 	int previous_block_number = -1;
 	int delayed_start = 0;
 	int delayed_extent = 0;
diff --git a/fs/ext4/ext_barebox.c b/fs/ext4/ext_barebox.c
index 5ec7ecd91..e40278a5b 100644
--- a/fs/ext4/ext_barebox.c
+++ b/fs/ext4/ext_barebox.c
@@ -56,7 +56,7 @@ static int ext_open(struct device_d *dev, FILE *file, const char *filename)
 	if (ret)
 		return ret;
 
-	file->size = __le32_to_cpu(inode->inode.size);
+	file->size = le32_to_cpu(inode->inode.size);
 	file->priv = inode;
 
 	return 0;
@@ -129,7 +129,7 @@ static struct dirent *ext_readdir(struct device_d *dev, DIR *dir)
 	int ret;
 	char *filename;
 
-	if (ext4_dir->fpos >= __le32_to_cpu(diro->inode.size))
+	if (ext4_dir->fpos >= le32_to_cpu(diro->inode.size))
 		return NULL;
 
 	ret = ext4fs_read_file(diro, ext4_dir->fpos, sizeof(struct ext2_dirent),
@@ -151,7 +151,7 @@ static struct dirent *ext_readdir(struct device_d *dev, DIR *dir)
 
 	filename[dirent.namelen] = '\0';
 
-	ext4_dir->fpos += __le16_to_cpu(dirent.direntlen);
+	ext4_dir->fpos += le16_to_cpu(dirent.direntlen);
 
 	strcpy(dir->d.d_name, filename);
 
@@ -186,8 +186,8 @@ static int ext_stat(struct device_d *dev, const char *filename, struct stat *s)
 	if (ret)
 		return ret;
 
-	s->st_size = __le32_to_cpu(node->inode.size);
-	s->st_mode = __le16_to_cpu(node->inode.mode);
+	s->st_size = le32_to_cpu(node->inode.size);
+	s->st_mode = le16_to_cpu(node->inode.mode);
 
 	ext4fs_free_node(node, &fs->data->diropen);
 
diff --git a/fs/ext4/ext_common.h b/fs/ext4/ext_common.h
index a8d86472e..a02f0b333 100644
--- a/fs/ext4/ext_common.h
+++ b/fs/ext4/ext_common.h
@@ -59,13 +59,13 @@
 #define EXT2_BLOCK_SIZE(data)	   (1 << LOG2_BLOCK_SIZE(data))
 
 /* Log2 size of ext2 block in 512 blocks.  */
-#define LOG2_EXT2_BLOCK_SIZE(data) (__le32_to_cpu \
+#define LOG2_EXT2_BLOCK_SIZE(data) (le32_to_cpu \
 				(data->sblock.log2_block_size) + 1)
 
 /* Log2 size of ext2 block in bytes.  */
-#define LOG2_BLOCK_SIZE(data)	   (__le32_to_cpu \
+#define LOG2_BLOCK_SIZE(data)	   (le32_to_cpu \
 		(data->sblock.log2_block_size) + 10)
-#define INODE_SIZE_FILESYSTEM(data)	(__le32_to_cpu \
+#define INODE_SIZE_FILESYSTEM(data)	(le32_to_cpu \
 			(data->sblock.inode_size))
 
 #define EXT2_FT_DIR	2
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
