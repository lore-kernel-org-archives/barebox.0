Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TfTFf-0005SA-MQ
 for barebox@lists.infradead.org; Mon, 03 Dec 2012 10:27:58 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  3 Dec 2012 11:27:48 +0100
Message-Id: <1354530468-25823-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1354530468-25823-1-git-send-email-s.hauer@pengutronix.de>
References: <1354530468-25823-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/4] fs: implement initial ext4 support from U-Boot
To: barebox@lists.infradead.org

The ext4 implementation has been taken from U-Boot with some
changes:

- No global variables to allow for multiple filesystems to
  be mounted and multiple files to be open.
- remove fs internal link following and use the barebox link
  implementation.
- remove write support. This is incomplete in U-Boot, so I decided
  to skip this for now.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/Kconfig            |    2 +
 fs/Makefile           |    1 +
 fs/ext4/Kconfig       |    3 +
 fs/ext4/Makefile      |    1 +
 fs/ext4/ext4_common.c |  551 +++++++++++++++++++++++++++++++++++++++++++++++++
 fs/ext4/ext4_common.h |   58 ++++++
 fs/ext4/ext4fs.c      |  153 ++++++++++++++
 fs/ext4/ext4fs.h      |  127 ++++++++++++
 fs/ext4/ext_barebox.c |  293 ++++++++++++++++++++++++++
 fs/ext4/ext_common.h  |  195 +++++++++++++++++
 10 files changed, 1384 insertions(+)
 create mode 100644 fs/ext4/Kconfig
 create mode 100644 fs/ext4/Makefile
 create mode 100644 fs/ext4/ext4_common.c
 create mode 100644 fs/ext4/ext4_common.h
 create mode 100644 fs/ext4/ext4fs.c
 create mode 100644 fs/ext4/ext4fs.h
 create mode 100644 fs/ext4/ext_barebox.c
 create mode 100644 fs/ext4/ext_common.h

diff --git a/fs/Kconfig b/fs/Kconfig
index 0ab69d7..c31c0cd 100644
--- a/fs/Kconfig
+++ b/fs/Kconfig
@@ -14,6 +14,8 @@ config FS_CRAMFS
 	select ZLIB
 	prompt "cramfs support"
 
+source fs/ext4/Kconfig
+
 config FS_RAMFS
 	bool
 	default y
diff --git a/fs/Makefile b/fs/Makefile
index ad745d9..cc59da7 100644
--- a/fs/Makefile
+++ b/fs/Makefile
@@ -1,4 +1,5 @@
 obj-$(CONFIG_FS_CRAMFS)	+= cramfs/
+obj-$(CONFIG_FS_EXT4)	+= ext4/
 obj-$(CONFIG_FS_RAMFS)	+= ramfs.o
 obj-y			+= devfs-core.o
 obj-$(CONFIG_FS_DEVFS)	+= devfs.o
diff --git a/fs/ext4/Kconfig b/fs/ext4/Kconfig
new file mode 100644
index 0000000..f36043d
--- /dev/null
+++ b/fs/ext4/Kconfig
@@ -0,0 +1,3 @@
+config FS_EXT4
+	bool
+	prompt "ext4 filesystem support"
diff --git a/fs/ext4/Makefile b/fs/ext4/Makefile
new file mode 100644
index 0000000..5084e3f
--- /dev/null
+++ b/fs/ext4/Makefile
@@ -0,0 +1 @@
+obj-$(CONFIG_FS_EXT4) += ext4fs.o ext4_common.o ext_barebox.o
diff --git a/fs/ext4/ext4_common.c b/fs/ext4/ext4_common.c
new file mode 100644
index 0000000..f426118
--- /dev/null
+++ b/fs/ext4/ext4_common.c
@@ -0,0 +1,551 @@
+/*
+ * (C) Copyright 2011 - 2012 Samsung Electronics
+ * EXT4 filesystem implementation in Uboot by
+ * Uma Shankar <uma.shankar@samsung.com>
+ * Manjunatha C Achar <a.manjunatha@samsung.com>
+ *
+ * ext4ls and ext4load : Based on ext2 ls load support in Uboot.
+ *
+ * (C) Copyright 2004
+ * esd gmbh <www.esd-electronics.com>
+ * Reinhard Arlt <reinhard.arlt@esd-electronics.com>
+ *
+ * based on code from grub2 fs/ext2.c and fs/fshelp.c by
+ * GRUB  --  GRand Unified Bootloader
+ * Copyright (C) 2003, 2004  Free Software Foundation, Inc.
+ *
+ * ext4write : Based on generic ext4 protocol.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#include <common.h>
+#include <malloc.h>
+#include <stddef.h>
+#include <linux/stat.h>
+#include <linux/time.h>
+#include <asm/byteorder.h>
+#include <dma.h>
+
+#include "ext4_common.h"
+
+static struct ext4_extent_header *ext4fs_get_extent_block(struct ext2_data *data,
+		char *buf, struct ext4_extent_header *ext_block,
+		uint32_t fileblock, int log2_blksz)
+{
+	struct ext4_extent_idx *index;
+	unsigned long long block;
+	struct ext_filesystem *fs = data->fs;
+	int i, ret;
+
+	while (1) {
+		index = (struct ext4_extent_idx *)(ext_block + 1);
+
+		if (le32_to_cpu(ext_block->eh_magic) != EXT4_EXT_MAGIC)
+			return 0;
+
+		if (ext_block->eh_depth == 0)
+			return ext_block;
+		i = -1;
+		do {
+			i++;
+			if (i >= le32_to_cpu(ext_block->eh_entries))
+				break;
+		} while (fileblock > le32_to_cpu(index[i].ei_block));
+
+		if (--i < 0)
+			return 0;
+
+		block = le32_to_cpu(index[i].ei_leaf_hi);
+		block = (block << 32) + le32_to_cpu(index[i].ei_leaf_lo);
+
+		ret = ext4fs_devread(fs, block << log2_blksz, 0, fs->blksz, buf);
+		if (ret)
+			return NULL;
+		else
+			ext_block = (struct ext4_extent_header *)buf;
+	}
+}
+
+static int ext4fs_blockgroup(struct ext2_data *data, int group,
+		struct ext2_block_group *blkgrp)
+{
+	long int blkno;
+	unsigned int blkoff, desc_per_blk;
+	struct ext_filesystem *fs = data->fs;
+
+	desc_per_blk = EXT2_BLOCK_SIZE(data) / sizeof(struct ext2_block_group);
+
+	blkno = __le32_to_cpu(data->sblock.first_data_block) + 1 +
+			group / desc_per_blk;
+	blkoff = (group % desc_per_blk) * sizeof(struct ext2_block_group);
+
+	debug("ext4fs read %d group descriptor (blkno %ld blkoff %u)\n",
+	      group, blkno, blkoff);
+
+	return ext4fs_devread(fs, blkno << LOG2_EXT2_BLOCK_SIZE(data),
+			      blkoff, sizeof(struct ext2_block_group),
+			      (char *)blkgrp);
+}
+
+int ext4fs_read_inode(struct ext2_data *data, int ino, struct ext2_inode *inode)
+{
+	struct ext2_block_group blkgrp;
+	struct ext2_sblock *sblock = &data->sblock;
+	struct ext_filesystem *fs = data->fs;
+	int inodes_per_block, ret;
+	long int blkno;
+	unsigned int blkoff;
+
+	/* It is easier to calculate if the first inode is 0. */
+	ino--;
+	ret = ext4fs_blockgroup(data, ino / __le32_to_cpu
+				   (sblock->inodes_per_group), &blkgrp);
+	if (ret)
+		return ret;
+
+	inodes_per_block = EXT2_BLOCK_SIZE(data) / fs->inodesz;
+	blkno = __le32_to_cpu(blkgrp.inode_table_id) +
+	    (ino % __le32_to_cpu(sblock->inodes_per_group)) / inodes_per_block;
+	blkoff = (ino % inodes_per_block) * fs->inodesz;
+	/* Read the inode. */
+	ret = ext4fs_devread(fs, blkno << LOG2_EXT2_BLOCK_SIZE(data), blkoff,
+				sizeof(struct ext2_inode), (char *)inode);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
+int ext4fs_get_indir_block(struct ext2fs_node *node, struct ext4fs_indir_block *indir, int blkno)
+{
+	struct ext_filesystem *fs = node->data->fs;
+	int blksz;
+	int ret;
+
+	blksz = EXT2_BLOCK_SIZE(node->data);
+
+	if (indir->blkno == blkno)
+		return 0;
+
+	ret = ext4fs_devread(fs, blkno, 0, blksz, (void *)indir->data);
+	if (ret) {
+		printf("** SI ext2fs read block (indir 1)"
+			"failed. **\n");
+		return ret;
+	}
+
+	return 0;
+}
+
+long int read_allocated_block(struct ext2fs_node *node, int fileblock)
+{
+	long int blknr;
+	int blksz;
+	int log2_blksz;
+	long int rblock;
+	long int perblock_parent;
+	long int perblock_child;
+	unsigned long long start;
+	struct ext2_inode *inode = &node->inode;
+	struct ext2_data *data = node->data;
+	int ret;
+
+	/* get the blocksize of the filesystem */
+	blksz = EXT2_BLOCK_SIZE(node->data);
+	log2_blksz = LOG2_EXT2_BLOCK_SIZE(node->data);
+
+	if (le32_to_cpu(inode->flags) & EXT4_EXTENTS_FL) {
+		char *buf = zalloc(blksz);
+		struct ext4_extent_header *ext_block;
+		struct ext4_extent *extent;
+		int i = -1;
+
+		if (!buf)
+			return -ENOMEM;
+
+		ext_block = ext4fs_get_extent_block(node->data, buf,
+				(struct ext4_extent_header *)inode->b.blocks.dir_blocks,
+				fileblock, log2_blksz);
+		if (!ext_block) {
+			printf("invalid extent block\n");
+			free(buf);
+			return -EINVAL;
+		}
+
+		extent = (struct ext4_extent *)(ext_block + 1);
+
+		do {
+			i++;
+			if (i >= le32_to_cpu(ext_block->eh_entries))
+				break;
+		} while (fileblock >= le32_to_cpu(extent[i].ee_block));
+
+		if (--i >= 0) {
+			fileblock -= le32_to_cpu(extent[i].ee_block);
+			if (fileblock >= le32_to_cpu(extent[i].ee_len)) {
+				free(buf);
+				return 0;
+			}
+
+			start = le32_to_cpu(extent[i].ee_start_hi);
+			start = (start << 32) +
+					le32_to_cpu(extent[i].ee_start_lo);
+			free(buf);
+			return fileblock + start;
+		}
+
+		free(buf);
+		return -EIO;
+	}
+
+	if (fileblock < INDIRECT_BLOCKS) {
+		/* Direct blocks. */
+		blknr = __le32_to_cpu(inode->b.blocks.dir_blocks[fileblock]);
+	} else if (fileblock < (INDIRECT_BLOCKS + (blksz / 4))) {
+		/* Indirect. */
+		ret = ext4fs_get_indir_block(node, &data->indir1,
+				__le32_to_cpu(inode->b.blocks.indir_block) << log2_blksz);
+		if (ret)
+			return ret;
+		blknr = __le32_to_cpu(data->indir1.data[fileblock - INDIRECT_BLOCKS]);
+	} else if (fileblock < (INDIRECT_BLOCKS + (blksz / 4 *
+					(blksz / 4 + 1)))) {
+		/* Double indirect. */
+		long int perblock = blksz / 4;
+		long int rblock = fileblock - (INDIRECT_BLOCKS + blksz / 4);
+
+		ret = ext4fs_get_indir_block(node, &data->indir1,
+				__le32_to_cpu(inode->b.blocks.double_indir_block) << log2_blksz);
+		if (ret)
+			return ret;
+
+		ret = ext4fs_get_indir_block(node, &data->indir2,
+				__le32_to_cpu(data->indir1.data[rblock / perblock]) << log2_blksz);
+		if (ret)
+			return ret;
+
+		blknr = __le32_to_cpu(data->indir2.data[rblock % perblock]);
+	} else {
+		/* Triple indirect. */
+		rblock = fileblock - (INDIRECT_BLOCKS + blksz / 4 +
+				      (blksz / 4 * blksz / 4));
+		perblock_child = blksz / 4;
+		perblock_parent = ((blksz / 4) * (blksz / 4));
+
+		ret = ext4fs_get_indir_block(node, &data->indir1,
+				__le32_to_cpu(inode->b.blocks.triple_indir_block) << log2_blksz);
+		if (ret)
+			return ret;
+
+		ret = ext4fs_get_indir_block(node, &data->indir2,
+				__le32_to_cpu(data->indir1.data[rblock / perblock_parent]) << log2_blksz);
+		if (ret)
+			return ret;
+
+		ret = ext4fs_get_indir_block(node, &data->indir3,
+				__le32_to_cpu(data->indir2.data[rblock / perblock_child]) << log2_blksz);
+		if (ret)
+			return ret;
+
+		blknr = __le32_to_cpu(data->indir3.data[rblock % perblock_child]);
+	}
+
+	return blknr;
+}
+
+int ext4fs_iterate_dir(struct ext2fs_node *dir, char *name,
+				struct ext2fs_node **fnode, int *ftype)
+{
+	unsigned int fpos = 0;
+	int status, ret;
+	struct ext2fs_node *diro = (struct ext2fs_node *) dir;
+
+
+	if (name != NULL)
+		debug("Iterate dir %s\n", name);
+
+	if (!diro->inode_read) {
+		ret = ext4fs_read_inode(diro->data, diro->ino, &diro->inode);
+		if (ret)
+			return ret;
+	}
+	/* Search the file.  */
+	while (fpos < __le32_to_cpu(diro->inode.size)) {
+		struct ext2_dirent dirent;
+
+		status = ext4fs_read_file(diro, fpos,
+					   sizeof(struct ext2_dirent),
+					   (char *) &dirent);
+		if (status < 1)
+			return -EINVAL;
+
+		if (dirent.namelen != 0) {
+			char filename[dirent.namelen + 1];
+			struct ext2fs_node *fdiro;
+			int type = FILETYPE_UNKNOWN;
+
+			status = ext4fs_read_file(diro,
+						  fpos +
+						  sizeof(struct ext2_dirent),
+						  dirent.namelen, filename);
+			if (status < 1)
+				return -EINVAL;
+
+			fdiro = zalloc(sizeof(struct ext2fs_node));
+			if (!fdiro)
+				return -ENOMEM;
+
+			fdiro->data = diro->data;
+			fdiro->ino = __le32_to_cpu(dirent.inode);
+
+			filename[dirent.namelen] = '\0';
+
+			if (dirent.filetype != FILETYPE_UNKNOWN) {
+				fdiro->inode_read = 0;
+
+				if (dirent.filetype == FILETYPE_DIRECTORY)
+					type = FILETYPE_DIRECTORY;
+				else if (dirent.filetype == FILETYPE_SYMLINK)
+					type = FILETYPE_SYMLINK;
+				else if (dirent.filetype == FILETYPE_REG)
+					type = FILETYPE_REG;
+			} else {
+				ret = ext4fs_read_inode(diro->data,
+							   __le32_to_cpu
+							   (dirent.inode),
+							   &fdiro->inode);
+				if (ret) {
+					free(fdiro);
+					return ret;
+				}
+				fdiro->inode_read = 1;
+
+				if ((__le16_to_cpu(fdiro->inode.mode) &
+				     FILETYPE_INO_MASK) ==
+				    FILETYPE_INO_DIRECTORY) {
+					type = FILETYPE_DIRECTORY;
+				} else if ((__le16_to_cpu(fdiro->inode.mode)
+					    & FILETYPE_INO_MASK) ==
+					   FILETYPE_INO_SYMLINK) {
+					type = FILETYPE_SYMLINK;
+				} else if ((__le16_to_cpu(fdiro->inode.mode)
+					    & FILETYPE_INO_MASK) ==
+					   FILETYPE_INO_REG) {
+					type = FILETYPE_REG;
+				}
+			}
+
+			debug("iterate >%s<\n", filename);
+
+			if (strcmp(filename, name) == 0) {
+				*ftype = type;
+				*fnode = fdiro;
+				return 0;
+			}
+
+			free(fdiro);
+		}
+		fpos += __le16_to_cpu(dirent.direntlen);
+	}
+	return -ENOENT;
+}
+
+char *ext4fs_read_symlink(struct ext2fs_node *node)
+{
+	char *symlink;
+	struct ext2fs_node *diro = node;
+	int status, ret;
+
+	if (!diro->inode_read) {
+		ret = ext4fs_read_inode(diro->data, diro->ino, &diro->inode);
+		if (ret)
+			return NULL;
+	}
+	symlink = zalloc(__le32_to_cpu(diro->inode.size) + 1);
+	if (!symlink)
+		return 0;
+
+	if (__le32_to_cpu(diro->inode.size) <= 60) {
+		strncpy(symlink, diro->inode.b.symlink,
+			 __le32_to_cpu(diro->inode.size));
+	} else {
+		status = ext4fs_read_file(diro, 0,
+					   __le32_to_cpu(diro->inode.size),
+					   symlink);
+		if (status == 0) {
+			free(symlink);
+			return NULL;
+		}
+	}
+
+	symlink[__le32_to_cpu(diro->inode.size)] = '\0';
+
+	return symlink;
+}
+
+int ext4fs_find_file(const char *currpath,
+			     struct ext2fs_node *currroot,
+			     struct ext2fs_node **currfound, int *foundtype)
+{
+	char fpath[strlen(currpath) + 1];
+	char *name = fpath;
+	char *next;
+	int type = FILETYPE_DIRECTORY;
+	struct ext2fs_node *currnode = currroot;
+	struct ext2fs_node *oldnode = currroot;
+	int ret = 0;
+
+	strncpy(fpath, currpath, strlen(currpath) + 1);
+
+	/* Remove all leading slashes. */
+	while (*name == '/')
+		name++;
+
+	if (!*name) {
+		*currfound = currnode;
+		goto out;
+	}
+
+	for (;;) {
+		/* Extract the actual part from the pathname. */
+		next = strchr(name, '/');
+		if (next) {
+			/* Remove all leading slashes. */
+			while (*next == '/')
+				*(next++) = '\0';
+		}
+
+		if (type != FILETYPE_DIRECTORY) {
+			ext4fs_free_node(currnode, currroot);
+			return -ENOENT;
+		}
+
+		oldnode = currnode;
+
+		/* Iterate over the directory. */
+		ret = ext4fs_iterate_dir(currnode, name, &currnode, &type);
+		if (ret)
+			return ret;
+
+		ext4fs_free_node(oldnode, currroot);
+
+		/* Found the node! */
+		if (!next || *next == '\0') {
+			*currfound = currnode;
+			goto out;
+		}
+		name = next;
+	}
+
+out:
+	if (foundtype)
+		*foundtype = type;
+
+	return ret;
+}
+
+int ext4fs_open(struct ext2_data *data, const char *filename, struct ext2fs_node **inode)
+{
+	struct ext2fs_node *fdiro = NULL;
+	int status, ret;
+	int type;
+
+	status = ext4fs_find_file(filename, &data->diropen, &fdiro, &type);
+	if (status)
+		goto fail;
+
+	if (type != FILETYPE_REG)
+		return -EINVAL;
+
+	if (!fdiro->inode_read) {
+		ret = ext4fs_read_inode(fdiro->data, fdiro->ino,
+				&fdiro->inode);
+		if (ret)
+			goto fail;
+	}
+
+	*inode = fdiro;
+
+	return 0;
+fail:
+	ext4fs_free_node(fdiro, &data->diropen);
+
+	return -ENOENT;
+}
+
+int ext4fs_mount(struct ext_filesystem *fs)
+{
+	struct ext2_data *data;
+	int ret, blksz;
+
+	data = zalloc(sizeof(struct ext2_data));
+	if (!data)
+		return -ENOMEM;
+
+	/* Read the superblock. */
+	ret = ext4fs_devread(fs, 1 * 2, 0, sizeof(struct ext2_sblock),
+				(char *)&data->sblock);
+	if (ret)
+		goto fail;
+
+	/* Make sure this is an ext2 filesystem. */
+	if (__le16_to_cpu(data->sblock.magic) != EXT2_MAGIC) {
+		ret = -EINVAL;
+		goto fail;
+	}
+
+	if (__le32_to_cpu(data->sblock.revision_level == 0))
+		fs->inodesz = 128;
+	else
+		fs->inodesz = __le16_to_cpu(data->sblock.inode_size);
+
+	dev_info(fs->dev, "EXT2 rev %d, inode_size %d\n",
+	       __le32_to_cpu(data->sblock.revision_level), fs->inodesz);
+
+	data->diropen.data = data;
+	data->diropen.ino = 2;
+	data->diropen.inode_read = 1;
+	data->inode = &data->diropen.inode;
+	data->fs = fs;
+	fs->data = data;
+
+	blksz = EXT2_BLOCK_SIZE(data);
+
+	fs->data->indir1.data = malloc(blksz);
+	fs->data->indir2.data = malloc(blksz);
+	fs->data->indir3.data = malloc(blksz);
+
+	if (!fs->data->indir1.data || !fs->data->indir2.data ||
+			!fs->data->indir3.data) {
+		ret = -ENOMEM;
+		goto fail;
+	}
+
+	ret = ext4fs_read_inode(data, 2, data->inode);
+	if (ret)
+		goto fail;
+
+	return 0;
+fail:
+	free(data);
+
+	return ret;
+}
+
+void ext4fs_umount(struct ext_filesystem *fs)
+{
+	free(fs->data->indir1.data);
+	free(fs->data->indir2.data);
+	free(fs->data->indir3.data);
+	free(fs->data);
+}
diff --git a/fs/ext4/ext4_common.h b/fs/ext4/ext4_common.h
new file mode 100644
index 0000000..81fb67e
--- /dev/null
+++ b/fs/ext4/ext4_common.h
@@ -0,0 +1,58 @@
+/*
+ * (C) Copyright 2011 - 2012 Samsung Electronics
+ * EXT4 filesystem implementation in Uboot by
+ * Uma Shankar <uma.shankar@samsung.com>
+ * Manjunatha C Achar <a.manjunatha@samsung.com>
+ *
+ * ext4ls and ext4load :  based on ext2 ls load support in Uboot.
+ *
+ * (C) Copyright 2004
+ * esd gmbh <www.esd-electronics.com>
+ * Reinhard Arlt <reinhard.arlt@esd-electronics.com>
+ *
+ * based on code from grub2 fs/ext2.c and fs/fshelp.c by
+ * GRUB  --  GRand Unified Bootloader
+ * Copyright (C) 2003, 2004  Free Software Foundation, Inc.
+ *
+ * ext4write : Based on generic ext4 protocol.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#ifndef __EXT4_COMMON__
+#define __EXT4_COMMON__
+#include <malloc.h>
+#include <errno.h>
+#include <dma.h>
+#include "ext4fs.h"
+#include "ext_common.h"
+
+static inline void *zalloc(size_t size)
+{
+	void *p = dma_alloc(size);
+
+	if (p)
+		memset(p, 0, size);
+
+	return p;
+}
+
+int ext4fs_read_inode(struct ext2_data *data, int ino,
+		      struct ext2_inode *inode);
+int ext4fs_read_file(struct ext2fs_node *node, int pos,
+		unsigned int len, char *buf);
+int ext4fs_find_file(const char *path, struct ext2fs_node *rootnode,
+			struct ext2fs_node **foundnode, int *foundtype);
+int ext4fs_iterate_dir(struct ext2fs_node *dir, char *name,
+			struct ext2fs_node **fnode, int *ftype);
+
+#endif
diff --git a/fs/ext4/ext4fs.c b/fs/ext4/ext4fs.c
new file mode 100644
index 0000000..1b9af80
--- /dev/null
+++ b/fs/ext4/ext4fs.c
@@ -0,0 +1,153 @@
+/*
+ * (C) Copyright 2011 - 2012 Samsung Electronics
+ * EXT4 filesystem implementation in Uboot by
+ * Uma Shankar <uma.shankar@samsung.com>
+ * Manjunatha C Achar <a.manjunatha@samsung.com>
+ *
+ * ext4ls and ext4load : Based on ext2 ls and load support in Uboot.
+ *		       Ext4 read optimization taken from Open-Moko
+ *		       Qi bootloader
+ *
+ * (C) Copyright 2004
+ * esd gmbh <www.esd-electronics.com>
+ * Reinhard Arlt <reinhard.arlt@esd-electronics.com>
+ *
+ * based on code from grub2 fs/ext2.c and fs/fshelp.c by
+ * GRUB  --  GRand Unified Bootloader
+ * Copyright (C) 2003, 2004  Free Software Foundation, Inc.
+ *
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#include <common.h>
+#include <malloc.h>
+#include <linux/stat.h>
+#include <linux/time.h>
+#include <asm/byteorder.h>
+#include "ext4_common.h"
+
+void ext4fs_free_node(struct ext2fs_node *node, struct ext2fs_node *currroot)
+{
+	if ((node != &node->data->diropen) && (node != currroot))
+		free(node);
+}
+
+/*
+ * Taken from openmoko-kernel mailing list: By Andy green
+ * Optimized read file API : collects and defers contiguous sector
+ * reads into one potentially more efficient larger sequential read action
+ */
+int ext4fs_read_file(struct ext2fs_node *node, int pos,
+		unsigned int len, char *buf)
+{
+	int i;
+	int blockcnt;
+	int log2blocksize = LOG2_EXT2_BLOCK_SIZE(node->data);
+	int blocksize = 1 << (log2blocksize + DISK_SECTOR_BITS);
+	unsigned int filesize = __le32_to_cpu(node->inode.size);
+	int previous_block_number = -1;
+	int delayed_start = 0;
+	int delayed_extent = 0;
+	int delayed_skipfirst = 0;
+	int delayed_next = 0;
+	char *delayed_buf = NULL;
+	short ret;
+	struct ext_filesystem *fs = node->data->fs;
+
+	/* Adjust len so it we can't read past the end of the file. */
+	if (len > filesize)
+		len = filesize;
+
+	blockcnt = ((len + pos) + blocksize - 1) / blocksize;
+
+	for (i = pos / blocksize; i < blockcnt; i++) {
+		int blknr;
+		int blockoff = pos % blocksize;
+		int blockend = blocksize;
+		int skipfirst = 0;
+		blknr = read_allocated_block(node, i);
+		if (blknr < 0)
+			return blknr;
+
+		blknr = blknr << log2blocksize;
+
+		/* Last block.  */
+		if (i == blockcnt - 1) {
+			blockend = (len + pos) % blocksize;
+
+			/* The last portion is exactly blocksize. */
+			if (!blockend)
+				blockend = blocksize;
+		}
+
+		/* First block. */
+		if (i == pos / blocksize) {
+			skipfirst = blockoff;
+			blockend -= skipfirst;
+		}
+		if (blknr) {
+			if (previous_block_number != -1) {
+				if (delayed_next == blknr) {
+					delayed_extent += blockend;
+					delayed_next += blockend >> SECTOR_BITS;
+				} else {	/* spill */
+					ret = ext4fs_devread(fs, delayed_start,
+							delayed_skipfirst,
+							delayed_extent,
+							delayed_buf);
+					if (ret)
+						return ret;
+					previous_block_number = blknr;
+					delayed_start = blknr;
+					delayed_extent = blockend;
+					delayed_skipfirst = skipfirst;
+					delayed_buf = buf;
+					delayed_next = blknr +
+						(blockend >> SECTOR_BITS);
+				}
+			} else {
+				previous_block_number = blknr;
+				delayed_start = blknr;
+				delayed_extent = blockend;
+				delayed_skipfirst = skipfirst;
+				delayed_buf = buf;
+				delayed_next = blknr +
+					(blockend >> SECTOR_BITS);
+			}
+		} else {
+			if (previous_block_number != -1) {
+				/* spill */
+				ret = ext4fs_devread(fs, delayed_start,
+							delayed_skipfirst,
+							delayed_extent,
+							delayed_buf);
+				if (ret)
+					return ret;
+				previous_block_number = -1;
+			}
+			memset(buf, 0, blocksize - skipfirst);
+		}
+		buf += blocksize - skipfirst;
+	}
+	if (previous_block_number != -1) {
+		/* spill */
+		ret = ext4fs_devread(fs, delayed_start,
+					delayed_skipfirst, delayed_extent,
+					delayed_buf);
+		if (ret)
+			return ret;
+		previous_block_number = -1;
+	}
+
+	return len;
+}
diff --git a/fs/ext4/ext4fs.h b/fs/ext4/ext4fs.h
new file mode 100644
index 0000000..ead212d
--- /dev/null
+++ b/fs/ext4/ext4fs.h
@@ -0,0 +1,127 @@
+/*
+ * (C) Copyright 2011 - 2012 Samsung Electronics
+ * EXT4 filesystem implementation in Uboot by
+ * Uma Shankar <uma.shankar@samsung.com>
+ * Manjunatha C Achar <a.manjunatha@samsung.com>
+ *
+ * Ext4 Extent data structures are taken from  original ext4 fs code
+ * as found in the linux kernel.
+ *
+ * Copyright (c) 2003-2006, Cluster File Systems, Inc, info@clusterfs.com
+ * Written by Alex Tomas <alex@clusterfs.com>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#ifndef __EXT4__
+#define __EXT4__
+
+#define EXT4_EXTENTS_FL		0x00080000 /* Inode uses extents */
+#define EXT4_EXT_MAGIC			0xf30a
+#define EXT4_FEATURE_RO_COMPAT_GDT_CSUM	0x0010
+#define EXT4_FEATURE_INCOMPAT_EXTENTS	0x0040
+#define EXT4_INDIRECT_BLOCKS		12
+
+#define EXT4_BG_INODE_UNINIT		0x0001
+#define EXT4_BG_BLOCK_UNINIT		0x0002
+#define EXT4_BG_INODE_ZEROED		0x0004
+
+/*
+ * ext4_inode has i_block array (60 bytes total).
+ * The first 12 bytes store ext4_extent_header;
+ * the remainder stores an array of ext4_extent.
+ */
+
+/*
+ * This is the extent on-disk structure.
+ * It's used at the bottom of the tree.
+ */
+struct ext4_extent {
+	__le32	ee_block;	/* first logical block extent covers */
+	__le16	ee_len;		/* number of blocks covered by extent */
+	__le16	ee_start_hi;	/* high 16 bits of physical block */
+	__le32	ee_start_lo;	/* low 32 bits of physical block */
+};
+
+/*
+ * This is index on-disk structure.
+ * It's used at all the levels except the bottom.
+ */
+struct ext4_extent_idx {
+	__le32	ei_block;	/* index covers logical blocks from 'block' */
+	__le32	ei_leaf_lo;	/* pointer to the physical block of the next *
+				 * level. leaf or next index could be there */
+	__le16	ei_leaf_hi;	/* high 16 bits of physical block */
+	__u16	ei_unused;
+};
+
+/* Each block (leaves and indexes), even inode-stored has header. */
+struct ext4_extent_header {
+	__le16	eh_magic;	/* probably will support different formats */
+	__le16	eh_entries;	/* number of valid entries */
+	__le16	eh_max;		/* capacity of store in entries */
+	__le16	eh_depth;	/* has tree real underlying blocks? */
+	__le32	eh_generation;	/* generation of the tree */
+};
+
+struct ext_filesystem {
+	/* Total Sector of partition */
+	uint64_t total_sect;
+	/* Block size  of partition */
+	uint32_t blksz;
+	/* Inode size of partition */
+	uint32_t inodesz;
+	/* Sectors per Block */
+	uint32_t sect_perblk;
+	/* Group Descriptor Block Number */
+	uint32_t gdtable_blkno;
+	/* Total block groups of partition */
+	uint32_t no_blkgrp;
+	/* No of blocks required for bgdtable */
+	uint32_t no_blk_pergdt;
+	/* Superblock */
+	struct ext2_sblock *sb;
+	/* Block group descritpor table */
+	struct ext2_block_group *bgd;
+	char *gdtable;
+
+	/* Block Bitmap Related */
+	unsigned char **blk_bmaps;
+	long int curr_blkno;
+	uint16_t first_pass_bbmap;
+
+	/* Inode Bitmap Related */
+	unsigned char **inode_bmaps;
+	int curr_inode_no;
+	uint16_t first_pass_ibmap;
+
+	/* Journal Related */
+
+	/* Block Device Descriptor */
+	struct cdev *cdev;
+
+	struct ext2_data *data;
+
+	struct device_d *dev;
+};
+
+struct ext2fs_node;
+
+int ext4fs_open(struct ext2_data *data, const char *filename, struct ext2fs_node **inode);
+int ext4fs_read(char *buf, unsigned len);
+int ext4fs_mount(struct ext_filesystem *fs);
+void ext4fs_umount(struct ext_filesystem *fs);
+char *ext4fs_read_symlink(struct ext2fs_node *node);
+void ext4fs_free_node(struct ext2fs_node *node, struct ext2fs_node *currroot);
+int ext4fs_devread(struct ext_filesystem *fs, int sector, int byte_offset, int byte_len, char *buf);
+long int read_allocated_block(struct ext2fs_node *node, int fileblock);
+
+#endif
diff --git a/fs/ext4/ext_barebox.c b/fs/ext4/ext_barebox.c
new file mode 100644
index 0000000..adc8f75
--- /dev/null
+++ b/fs/ext4/ext_barebox.c
@@ -0,0 +1,293 @@
+/*
+ * barebox ext4 support
+ *
+ * Copyright (c) 2012 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#include <common.h>
+#include <driver.h>
+#include <init.h>
+#include <malloc.h>
+#include <fs.h>
+#include <command.h>
+#include <errno.h>
+#include <linux/stat.h>
+#include <linux/ctype.h>
+#include <xfuncs.h>
+#include <fcntl.h>
+#include "ext4_common.h"
+
+int ext4fs_devread(struct ext_filesystem *fs, int __sector, int byte_offset,
+		int byte_len, char *buf)
+{
+	ssize_t size;
+	uint64_t sector = __sector;
+
+	size = cdev_read(fs->cdev, buf, byte_len, sector * SECTOR_SIZE + byte_offset, 0);
+	if (size < 0) {
+		dev_err(fs->dev, "read error at sector %d: %s\n", __sector,
+				strerror(-size));
+		return size;
+	}
+
+	return 0;
+}
+
+static int ext_open(struct device_d *dev, FILE *file, const char *filename)
+{
+	struct ext_filesystem *fs = dev->priv;
+	struct ext2fs_node *inode;
+	int ret;
+
+	ret = ext4fs_open(fs->data, filename, &inode);
+	if (ret)
+		return ret;
+
+	file->size = __le32_to_cpu(inode->inode.size);
+	file->inode = inode;
+
+	return 0;
+}
+
+static int ext_close(struct device_d *dev, FILE *f)
+{
+	struct ext_filesystem *fs = dev->priv;
+
+	ext4fs_free_node(f->inode, &fs->data->diropen);
+
+	return 0;
+}
+
+static int ext_read(struct device_d *_dev, FILE *f, void *buf, size_t insize)
+{
+	return ext4fs_read_file(f->inode, f->pos, insize, buf);
+}
+
+static loff_t ext_lseek(struct device_d *dev, FILE *f, loff_t pos)
+{
+	f->pos = pos;
+
+	return f->pos;
+}
+
+struct ext4fs_dir {
+	struct ext2fs_node *dirnode;
+	int fpos;
+	DIR dir;
+};
+
+static DIR *ext_opendir(struct device_d *dev, const char *pathname)
+{
+	struct ext_filesystem *fs = dev->priv;
+	struct ext4fs_dir *ext4_dir;
+	int type, ret;
+
+	ext4_dir = xzalloc(sizeof(*ext4_dir));
+
+	ret = ext4fs_find_file(pathname, &fs->data->diropen, &ext4_dir->dirnode,
+				  &type);
+	if (ret) {
+		free(ext4_dir);
+		return NULL;
+	}
+
+	if (type != FILETYPE_DIRECTORY)
+		return NULL;
+
+	ext4_dir->dir.priv = ext4_dir;
+
+	ret = ext4fs_read_inode(ext4_dir->dirnode->data, ext4_dir->dirnode->ino,
+			&ext4_dir->dirnode->inode);
+	if (ret) {
+		ext4fs_free_node(ext4_dir->dirnode, &fs->data->diropen);
+		free(ext4_dir);
+
+		return NULL;
+	}
+
+	return &ext4_dir->dir;
+}
+
+static struct dirent *ext_readdir(struct device_d *dev, DIR *dir)
+{
+	struct ext4fs_dir *ext4_dir = dir->priv;
+	struct ext2_dirent dirent;
+	struct ext2fs_node *diro = ext4_dir->dirnode;
+	int ret;
+	char *filename;
+
+	if (ext4_dir->fpos >= __le32_to_cpu(diro->inode.size))
+		return NULL;
+
+	ret = ext4fs_read_file(diro, ext4_dir->fpos, sizeof(struct ext2_dirent),
+			(char *) &dirent);
+	if (ret < 0)
+		return NULL;
+
+	if (dirent.namelen == 0)
+		return NULL;
+
+	filename = xzalloc(dirent.namelen + 1);
+
+	ret = ext4fs_read_file(diro, ext4_dir->fpos + sizeof(struct ext2_dirent),
+			dirent.namelen, filename);
+	if (ret < 0) {
+		free(filename);
+		return NULL;
+	}
+
+	filename[dirent.namelen] = '\0';
+
+	ext4_dir->fpos += __le16_to_cpu(dirent.direntlen);
+
+	strcpy(dir->d.d_name, filename);
+
+	free(filename);
+
+	return &dir->d;
+}
+
+static int ext_closedir(struct device_d *dev, DIR *dir)
+{
+	struct ext_filesystem *fs = dev->priv;
+	struct ext4fs_dir *ext4_dir = dir->priv;
+
+	ext4fs_free_node(ext4_dir->dirnode, &fs->data->diropen);
+
+	free(ext4_dir);
+
+	return 0;
+}
+
+static int ext_stat(struct device_d *dev, const char *filename, struct stat *s)
+{
+	struct ext_filesystem *fs = dev->priv;
+	struct ext2fs_node *node;
+	int status, ret;
+
+	status = ext4fs_find_file(filename, &fs->data->diropen, &node, NULL);
+	if (status)
+		return -ENOENT;
+
+	ret = ext4fs_read_inode(node->data, node->ino, &node->inode);
+	if (ret)
+		return ret;
+
+	s->st_size = __le32_to_cpu(node->inode.size);
+	s->st_mode = __le16_to_cpu(node->inode.mode);
+
+	ext4fs_free_node(node, &fs->data->diropen);
+
+	return 0;
+}
+
+static int ext_readlink(struct device_d *dev, const char *pathname,
+		char *buf, size_t bufsiz)
+{
+	struct ext_filesystem *fs = dev->priv;
+	struct ext2fs_node *node;
+	char *symlink;
+	int ret, len, type;
+
+	ret = ext4fs_find_file(pathname, &fs->data->diropen, &node, &type);
+	if (ret)
+		return ret;
+
+	if (type != FILETYPE_SYMLINK)
+		return -EINVAL;
+
+	symlink = ext4fs_read_symlink(node);
+	if (!symlink)
+		return -ENOENT;
+
+	len = min(bufsiz, strlen(symlink));
+
+	memcpy(buf, symlink, len);
+
+	free(symlink);
+
+	return 0;
+}
+
+static int ext_probe(struct device_d *dev)
+{
+	struct fs_device_d *fsdev = dev_to_fs_device(dev);
+	char *backingstore = fsdev->backingstore;
+	int ret;
+	struct ext_filesystem *fs;
+
+	fs = xzalloc(sizeof(*fs));
+
+	dev->priv = fs;
+	fs->dev = dev;
+
+	if (!strncmp(backingstore , "/dev/", 5))
+		backingstore += 5;
+
+	fs->cdev = cdev_open(backingstore, O_RDWR);
+	if (!fs->cdev) {
+		ret = -ENOENT;
+		goto err_open;
+	}
+
+	ret = ext4fs_mount(fs);
+	if (ret)
+		goto err_mount;
+
+	return 0;
+
+err_mount:
+	cdev_close(fs->cdev);
+err_open:
+	free(fs);
+
+	return ret;
+}
+
+static void ext_remove(struct device_d *dev)
+{
+	struct ext_filesystem *fs = dev->priv;
+
+	ext4fs_umount(fs);
+	cdev_close(fs->cdev);
+	free(fs);
+}
+
+static struct fs_driver_d ext_driver = {
+	.open      = ext_open,
+	.close     = ext_close,
+	.read      = ext_read,
+	.lseek     = ext_lseek,
+	.opendir   = ext_opendir,
+	.readdir   = ext_readdir,
+	.closedir  = ext_closedir,
+	.stat      = ext_stat,
+	.readlink  = ext_readlink,
+	.type      = filetype_ext,
+	.flags     = 0,
+	.drv = {
+		.probe  = ext_probe,
+		.remove = ext_remove,
+		.name = "ext4",
+	}
+};
+
+static int ext_init(void)
+{
+	return register_fs_driver(&ext_driver);
+}
+
+coredevice_initcall(ext_init);
diff --git a/fs/ext4/ext_common.h b/fs/ext4/ext_common.h
new file mode 100644
index 0000000..517a1c1
--- /dev/null
+++ b/fs/ext4/ext_common.h
@@ -0,0 +1,195 @@
+/*
+ * (C) Copyright 2011 - 2012 Samsung Electronics
+ * EXT4 filesystem implementation in Uboot by
+ * Uma Shankar <uma.shankar@samsung.com>
+ * Manjunatha C Achar <a.manjunatha@samsung.com>
+ *
+ * Data structures and headers for ext4 support have been taken from
+ * ext2 ls load support in Uboot
+ *
+ * (C) Copyright 2004
+ * esd gmbh <www.esd-electronics.com>
+ * Reinhard Arlt <reinhard.arlt@esd-electronics.com>
+ *
+ * based on code from grub2 fs/ext2.c and fs/fshelp.c by
+ * GRUB  --  GRand Unified Bootloader
+ * Copyright (C) 2003, 2004  Free Software Foundation, Inc.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#ifndef __EXT_COMMON__
+#define __EXT_COMMON__
+
+#define SECTOR_SIZE		0x200
+#define SECTOR_BITS		9
+
+/* Magic value used to identify an ext2 filesystem.  */
+#define	EXT2_MAGIC			0xEF53
+/* Amount of indirect blocks in an inode.  */
+#define INDIRECT_BLOCKS			12
+/* Maximum lenght of a pathname.  */
+#define EXT2_PATH_MAX				4096
+/* Maximum nesting of symlinks, used to prevent a loop.  */
+#define	EXT2_MAX_SYMLINKCNT		8
+
+/* Filetype used in directory entry.  */
+#define	FILETYPE_UNKNOWN		0
+#define	FILETYPE_REG			1
+#define	FILETYPE_DIRECTORY		2
+#define	FILETYPE_SYMLINK		7
+
+/* Filetype information as used in inodes.  */
+#define FILETYPE_INO_MASK		0170000
+#define FILETYPE_INO_REG		0100000
+#define FILETYPE_INO_DIRECTORY		0040000
+#define FILETYPE_INO_SYMLINK		0120000
+#define EXT2_ROOT_INO			2 /* Root inode */
+
+/* Bits used as offset in sector */
+#define DISK_SECTOR_BITS		9
+/* The size of an ext2 block in bytes.  */
+#define EXT2_BLOCK_SIZE(data)	   (1 << LOG2_BLOCK_SIZE(data))
+
+/* Log2 size of ext2 block in 512 blocks.  */
+#define LOG2_EXT2_BLOCK_SIZE(data) (__le32_to_cpu \
+				(data->sblock.log2_block_size) + 1)
+
+/* Log2 size of ext2 block in bytes.  */
+#define LOG2_BLOCK_SIZE(data)	   (__le32_to_cpu \
+		(data->sblock.log2_block_size) + 10)
+#define INODE_SIZE_FILESYSTEM(data)	(__le32_to_cpu \
+			(data->sblock.inode_size))
+
+#define EXT2_FT_DIR	2
+#define SUCCESS	1
+
+/* Macro-instructions used to manage several block sizes  */
+#define EXT2_MIN_BLOCK_LOG_SIZE	10 /* 1024 */
+#define EXT2_MAX_BLOCK_LOG_SIZE	16 /* 65536 */
+#define EXT2_MIN_BLOCK_SIZE		(1 << EXT2_MIN_BLOCK_LOG_SIZE)
+#define EXT2_MAX_BLOCK_SIZE		(1 << EXT2_MAX_BLOCK_LOG_SIZE)
+
+/* The ext2 superblock.  */
+struct ext2_sblock {
+	uint32_t total_inodes;
+	uint32_t total_blocks;
+	uint32_t reserved_blocks;
+	uint32_t free_blocks;
+	uint32_t free_inodes;
+	uint32_t first_data_block;
+	uint32_t log2_block_size;
+	uint32_t log2_fragment_size;
+	uint32_t blocks_per_group;
+	uint32_t fragments_per_group;
+	uint32_t inodes_per_group;
+	uint32_t mtime;
+	uint32_t utime;
+	uint16_t mnt_count;
+	uint16_t max_mnt_count;
+	uint16_t magic;
+	uint16_t fs_state;
+	uint16_t error_handling;
+	uint16_t minor_revision_level;
+	uint32_t lastcheck;
+	uint32_t checkinterval;
+	uint32_t creator_os;
+	uint32_t revision_level;
+	uint16_t uid_reserved;
+	uint16_t gid_reserved;
+	uint32_t first_inode;
+	uint16_t inode_size;
+	uint16_t block_group_number;
+	uint32_t feature_compatibility;
+	uint32_t feature_incompat;
+	uint32_t feature_ro_compat;
+	uint32_t unique_id[4];
+	char volume_name[16];
+	char last_mounted_on[64];
+	uint32_t compression_info;
+};
+
+struct ext2_block_group {
+	__u32 block_id;	/* Blocks bitmap block */
+	__u32 inode_id;	/* Inodes bitmap block */
+	__u32 inode_table_id;	/* Inodes table block */
+	__u16 free_blocks;	/* Free blocks count */
+	__u16 free_inodes;	/* Free inodes count */
+	__u16 used_dir_cnt;	/* Directories count */
+	__u16 bg_flags;
+	__u32 bg_reserved[2];
+	__u16 bg_itable_unused; /* Unused inodes count */
+	__u16 bg_checksum;	/* crc16(s_uuid+grouo_num+group_desc)*/
+};
+
+/* The ext2 inode. */
+struct ext2_inode {
+	uint16_t mode;
+	uint16_t uid;
+	uint32_t size;
+	uint32_t atime;
+	uint32_t ctime;
+	uint32_t mtime;
+	uint32_t dtime;
+	uint16_t gid;
+	uint16_t nlinks;
+	uint32_t blockcnt;	/* Blocks of 512 bytes!! */
+	uint32_t flags;
+	uint32_t osd1;
+	union {
+		struct datablocks {
+			uint32_t dir_blocks[INDIRECT_BLOCKS];
+			uint32_t indir_block;
+			uint32_t double_indir_block;
+			uint32_t triple_indir_block;
+		} blocks;
+		char symlink[60];
+	} b;
+	uint32_t version;
+	uint32_t acl;
+	uint32_t dir_acl;
+	uint32_t fragment_addr;
+	uint32_t osd2[3];
+};
+
+/* The header of an ext2 directory entry. */
+struct ext2_dirent {
+	uint32_t inode;
+	uint16_t direntlen;
+	uint8_t namelen;
+	uint8_t filetype;
+};
+
+struct ext2fs_node {
+	struct ext2_data *data;
+	struct ext2_inode inode;
+	int ino;
+	int inode_read;
+};
+
+struct ext4fs_indir_block {
+	int size;
+	int blkno;
+	uint32_t *data;
+};
+
+/* Information about a "mounted" ext2 filesystem. */
+struct ext2_data {
+	struct ext2_sblock sblock;
+	struct ext2_inode *inode;
+	struct ext2fs_node diropen;
+	struct ext_filesystem *fs;
+	struct ext4fs_indir_block indir1, indir2, indir3;
+};
+
+extern unsigned long part_offset;
+#endif
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
