Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x22d.google.com ([2a00:1450:400c:c09::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aWmOM-0000Jl-Bb
 for barebox@lists.infradead.org; Fri, 19 Feb 2016 14:51:16 +0000
Received: by mail-wm0-x22d.google.com with SMTP id c200so79352385wme.0
 for <barebox@lists.infradead.org>; Fri, 19 Feb 2016 06:50:25 -0800 (PST)
From: yegorslists@googlemail.com
Date: Fri, 19 Feb 2016 15:49:15 +0100
Message-Id: <1455893355-17319-3-git-send-email-yegorslists@googlemail.com>
In-Reply-To: <1455893355-17319-1-git-send-email-yegorslists@googlemail.com>
References: <1455893355-17319-1-git-send-email-yegorslists@googlemail.com>
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
Subject: [PATCH v3 3/3] fs: add support for SquashFS 4.0
To: barebox@lists.infradead.org

From: Yegor Yefremov <yegorslists@googlemail.com>

The driver was imported from Linux 4.4.

Current implementation supports only XZ decompressor.

Cc: Antony Pavlov <antonynpavlov@gmail.com>
Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
---
Changes:
        v3: - rework inode searching
            - eliminate memleaks in directory search

        v2: - fix checkpatch errors
            - remove spinlock/wait code from cache implementation
            - fix directory listing
            - add documentation entry about SquashFS
            - fix compiling without XZ enabled
            - fix some memory leaks

 Documentation/filesystems/squashfs.rst |  15 ++
 fs/Kconfig                             |   1 +
 fs/Makefile                            |   1 +
 fs/squashfs/Kconfig                    |  31 +++
 fs/squashfs/Makefile                   |  13 +
 fs/squashfs/block.c                    | 212 +++++++++++++++
 fs/squashfs/cache.c                    | 393 ++++++++++++++++++++++++++++
 fs/squashfs/decompressor.c             | 140 ++++++++++
 fs/squashfs/decompressor.h             |  57 +++++
 fs/squashfs/decompressor_single.c      |  83 ++++++
 fs/squashfs/file.c                     | 445 ++++++++++++++++++++++++++++++++
 fs/squashfs/file_cache.c               |  35 +++
 fs/squashfs/fragment.c                 |  94 +++++++
 fs/squashfs/id.c                       |  98 +++++++
 fs/squashfs/inode.c                    | 402 +++++++++++++++++++++++++++++
 fs/squashfs/namei.c                    | 346 +++++++++++++++++++++++++
 fs/squashfs/page_actor.c               |  99 +++++++
 fs/squashfs/page_actor.h               |  53 ++++
 fs/squashfs/squashfs.c                 | 325 +++++++++++++++++++++++
 fs/squashfs/squashfs.h                 | 138 ++++++++++
 fs/squashfs/squashfs_fs.h              | 453 +++++++++++++++++++++++++++++++++
 fs/squashfs/squashfs_fs_i.h            |  52 ++++
 fs/squashfs/squashfs_fs_sb.h           |  82 ++++++
 fs/squashfs/super.c                    | 348 +++++++++++++++++++++++++
 fs/squashfs/xz_wrapper.c               | 190 ++++++++++++++
 25 files changed, 4106 insertions(+)
 create mode 100644 Documentation/filesystems/squashfs.rst
 create mode 100644 fs/squashfs/Kconfig
 create mode 100644 fs/squashfs/Makefile
 create mode 100644 fs/squashfs/block.c
 create mode 100644 fs/squashfs/cache.c
 create mode 100644 fs/squashfs/decompressor.c
 create mode 100644 fs/squashfs/decompressor.h
 create mode 100644 fs/squashfs/decompressor_single.c
 create mode 100644 fs/squashfs/file.c
 create mode 100644 fs/squashfs/file_cache.c
 create mode 100644 fs/squashfs/fragment.c
 create mode 100644 fs/squashfs/id.c
 create mode 100644 fs/squashfs/inode.c
 create mode 100644 fs/squashfs/namei.c
 create mode 100644 fs/squashfs/page_actor.c
 create mode 100644 fs/squashfs/page_actor.h
 create mode 100644 fs/squashfs/squashfs.c
 create mode 100644 fs/squashfs/squashfs.h
 create mode 100644 fs/squashfs/squashfs_fs.h
 create mode 100644 fs/squashfs/squashfs_fs_i.h
 create mode 100644 fs/squashfs/squashfs_fs_sb.h
 create mode 100644 fs/squashfs/super.c
 create mode 100644 fs/squashfs/xz_wrapper.c

diff --git a/Documentation/filesystems/squashfs.rst b/Documentation/filesystems/squashfs.rst
new file mode 100644
index 0000000..be82973
--- /dev/null
+++ b/Documentation/filesystems/squashfs.rst
@@ -0,0 +1,15 @@
+.. index:: squashfs (filesystem)
+
+SquashFS filesystem
+===================
+
+SquashFS is a highly compressed read-only filesystem for Linux.
+It uses zlib, lzo or xz compression to compress both files, inodes
+and directories. A SquashFS filesystem can be mounted using the
+:ref:`command_mount` command::
+
+  mkdir /mnt
+  mount -t squashfs /dev/spiflash.FileSystem /mnt
+  ls /mnt
+  zImage barebox.bin
+  umount /mnt
diff --git a/fs/Kconfig b/fs/Kconfig
index 5413a92..93eef68 100644
--- a/fs/Kconfig
+++ b/fs/Kconfig
@@ -90,5 +90,6 @@ config FS_SMHFS
 	  Barebox
 
 source fs/pstore/Kconfig
+source fs/squashfs/Kconfig
 
 endmenu
diff --git a/fs/Makefile b/fs/Makefile
index 2f95203..2319053 100644
--- a/fs/Makefile
+++ b/fs/Makefile
@@ -15,3 +15,4 @@ obj-$(CONFIG_FS_EFI)	 += efi.o
 obj-$(CONFIG_FS_EFIVARFS) += efivarfs.o
 obj-$(CONFIG_FS_SMHFS) += smhfs.o
 obj-$(CONFIG_FS_PSTORE) += pstore/
+obj-$(CONFIG_FS_SQUASHFS) += squashfs/
diff --git a/fs/squashfs/Kconfig b/fs/squashfs/Kconfig
new file mode 100644
index 0000000..d8836d5
--- /dev/null
+++ b/fs/squashfs/Kconfig
@@ -0,0 +1,31 @@
+menuconfig FS_SQUASHFS
+	bool
+	prompt "squashfs support"
+	help
+	  Saying Y here includes support for SquashFS 4.0 (a Compressed
+	  Read-Only File System).  Squashfs is a highly compressed read-only
+	  filesystem for Linux.  It uses zlib, lzo or xz compression to
+	  compress both files, inodes and directories.  Inodes in the system
+	  are very small and all blocks are packed to minimise data overhead.
+	  Block sizes greater than 4K are supported up to a maximum of 1 Mbytes
+	  (default block size 128K).  SquashFS 4.0 supports 64 bit filesystems
+	  and files (larger than 4GB), full uid/gid information, hard links and
+	  timestamps.
+
+	  Squashfs is intended for general read-only filesystem use, for
+	  archival use (i.e. in cases where a .tar.gz file may be used), and in
+	  embedded systems where low overhead is needed.  Further information
+	  and tools are available from http://squashfs.sourceforge.net.
+
+config SQUASHFS_XZ
+	bool "Include support for XZ compressed file systems"
+	depends on FS_SQUASHFS
+	select XZ_DECOMPRESS
+	help
+	  Saying Y here includes support for reading Squashfs file systems
+	  compressed with XZ compression.  XZ gives better compression than
+	  the default zlib compression, at the expense of greater CPU and
+	  memory overhead.
+
+	  XZ is not the standard compression used in Squashfs and so most
+	  file systems will be readable without selecting this option.
diff --git a/fs/squashfs/Makefile b/fs/squashfs/Makefile
new file mode 100644
index 0000000..c0d024c
--- /dev/null
+++ b/fs/squashfs/Makefile
@@ -0,0 +1,13 @@
+obj-y	+= squashfs.o
+obj-y	+= block.o
+obj-y	+= cache.o
+obj-y	+= decompressor.o
+obj-y	+= decompressor_single.o
+obj-y	+= file.o
+obj-y	+= file_cache.o
+obj-y	+= fragment.o
+obj-y	+= id.o
+obj-y	+= inode.o
+obj-y	+= namei.o
+obj-y	+= super.o
+obj-$(CONFIG_SQUASHFS_XZ) += xz_wrapper.o
diff --git a/fs/squashfs/block.c b/fs/squashfs/block.c
new file mode 100644
index 0000000..3e2b9a5
--- /dev/null
+++ b/fs/squashfs/block.c
@@ -0,0 +1,212 @@
+/*
+ * Squashfs - a compressed read only filesystem for Linux
+ *
+ * Copyright (c) 2002, 2003, 2004, 2005, 2006, 2007, 2008
+ * Phillip Lougher <phillip@squashfs.org.uk>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * as published by the Free Software Foundation; either version 2,
+ * or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * block.c
+ */
+
+/*
+ * This file implements the low-level routines to read and decompress
+ * datablocks and metadata blocks.
+ */
+
+#include <linux/fs.h>
+#include <linux/string.h>
+
+#include "squashfs_fs.h"
+#include "squashfs_fs_sb.h"
+#include "squashfs.h"
+#include "decompressor.h"
+#include "page_actor.h"
+
+/*
+ * Read the metadata block length, this is stored in the first two
+ * bytes of the metadata block.
+ */
+static char *get_block_length(struct super_block *sb,
+			u64 *cur_index, int *offset, int *length)
+{
+	struct squashfs_sb_info *msblk = sb->s_fs_info;
+	char *buf;
+
+	buf = squashfs_devread(msblk,
+			 *cur_index * msblk->devblksize,
+			 msblk->devblksize);
+	if (buf == NULL)
+		return NULL;
+
+	if (msblk->devblksize - *offset == 1) {
+		*length = (unsigned char) buf[*offset];
+		free(buf);
+		buf = squashfs_devread(msblk,
+				 ++(*cur_index) * msblk->devblksize,
+				 msblk->devblksize);
+		if (buf == NULL)
+			return NULL;
+		*length |= (unsigned char) buf[0] << 8;
+		*offset = 1;
+	} else {
+		*length = (unsigned char) buf[*offset] |
+			(unsigned char) buf[*offset + 1] << 8;
+		*offset += 2;
+
+		if (*offset == msblk->devblksize) {
+			free(buf);
+			buf = squashfs_devread(msblk,
+					 ++(*cur_index) * msblk->devblksize,
+					 msblk->devblksize);
+			if (buf == NULL)
+				return NULL;
+			*offset = 0;
+		}
+	}
+
+	return buf;
+}
+
+
+/*
+ * Read and decompress a metadata block or datablock.  Length is non-zero
+ * if a datablock is being read (the size is stored elsewhere in the
+ * filesystem), otherwise the length is obtained from the first two bytes of
+ * the metadata block.  A bit in the length field indicates if the block
+ * is stored uncompressed in the filesystem (usually because compression
+ * generated a larger block - this does occasionally happen with compression
+ * algorithms).
+ */
+int squashfs_read_data(struct super_block *sb, u64 index, int length,
+		u64 *next_index, struct squashfs_page_actor *output)
+{
+	struct squashfs_sb_info *msblk = sb->s_fs_info;
+	char **buf;
+	int offset = index & ((1 << msblk->devblksize_log2) - 1);
+	u64 cur_index = index >> msblk->devblksize_log2;
+	int bytes, compressed, b = 0, k = 0, avail;
+
+	buf = calloc(((output->length + msblk->devblksize - 1)
+			>> msblk->devblksize_log2) + 1, sizeof(*buf));
+	if (buf == NULL)
+		return -ENOMEM;
+
+	if (length) {
+		/*
+		 * Datablock.
+		 */
+		bytes = -offset;
+		compressed = SQUASHFS_COMPRESSED_BLOCK(length);
+		length = SQUASHFS_COMPRESSED_SIZE_BLOCK(length);
+		if (next_index)
+			*next_index = index + length;
+
+		TRACE("Block @ 0x%llx, %scompressed size %d, src size %d\n",
+			index, compressed ? "" : "un", length, output->length);
+
+		if (length < 0 || length > output->length ||
+				(index + length) > msblk->bytes_used) {
+			goto read_failure;
+		}
+
+		for (b = 0; bytes < length; b++, cur_index++) {
+			buf[b] = squashfs_devread(msblk,
+					 cur_index * msblk->devblksize,
+					 msblk->devblksize);
+			if (buf[b] == NULL)
+				goto block_release;
+
+			bytes += msblk->devblksize;
+		}
+
+	} else {
+		/*
+		 * Metadata block.
+		 */
+		if ((index + 2) > msblk->bytes_used)
+			goto read_failure;
+
+		buf[0] = get_block_length(sb, &cur_index, &offset, &length);
+		if (buf[0] == NULL)
+			goto read_failure;
+		b = 1;
+
+		bytes = msblk->devblksize - offset;
+		compressed = SQUASHFS_COMPRESSED(length);
+		length = SQUASHFS_COMPRESSED_SIZE(length);
+		if (next_index)
+			*next_index = index + length + 2;
+
+		TRACE("Block Meta @ 0x%llx, %scompressed size %d\n", index,
+				compressed ? "" : "un", length);
+
+		if (length < 0 || length > output->length ||
+					(index + length) > msblk->bytes_used)
+			goto block_release;
+
+		for (; bytes < length; b++) {
+			buf[b] = squashfs_devread(msblk,
+					 ++cur_index * msblk->devblksize,
+					 msblk->devblksize);
+			if (buf[b] == NULL)
+				goto block_release;
+			bytes += msblk->devblksize;
+		}
+	}
+
+	if (compressed) {
+		length = squashfs_decompress(msblk, buf, b, offset, length,
+			output);
+		if (length < 0)
+			goto read_failure;
+	} else {
+		/*
+		 * Block is uncompressed.
+		 */
+		int pg_offset = 0;
+		void *data = squashfs_first_page(output);
+
+		for (bytes = length; k < b; k++) {
+			int in = min(bytes, msblk->devblksize - offset);
+			bytes -= in;
+			while (in) {
+				if (pg_offset == PAGE_CACHE_SIZE) {
+					data = squashfs_next_page(output);
+					pg_offset = 0;
+				}
+				avail = min_t(int, in, PAGE_CACHE_SIZE -
+						pg_offset);
+				memcpy(data + pg_offset, buf[k] + offset,
+						avail);
+				in -= avail;
+				pg_offset += avail;
+				offset += avail;
+			}
+			offset = 0;
+			kfree(buf[k]);
+		}
+		squashfs_finish_page(output);
+	}
+
+	kfree(buf);
+	return length;
+
+block_release:
+	for (; k < b; k++)
+		kfree(buf[k]);
+
+read_failure:
+	ERROR("squashfs_read_data failed to read block 0x%llx\n",
+					(unsigned long long) index);
+	kfree(buf);
+	return -EIO;
+}
diff --git a/fs/squashfs/cache.c b/fs/squashfs/cache.c
new file mode 100644
index 0000000..766bc99
--- /dev/null
+++ b/fs/squashfs/cache.c
@@ -0,0 +1,393 @@
+/*
+ * Squashfs - a compressed read only filesystem for Linux
+ *
+ * Copyright (c) 2002, 2003, 2004, 2005, 2006, 2007, 2008
+ * Phillip Lougher <phillip@squashfs.org.uk>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * as published by the Free Software Foundation; either version 2,
+ * or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * cache.c
+ */
+
+/*
+ * Blocks in Squashfs are compressed.  To avoid repeatedly decompressing
+ * recently accessed data Squashfs uses two small metadata and fragment caches.
+ *
+ * This file implements a generic cache implementation used for both caches,
+ * plus functions layered ontop of the generic cache implementation to
+ * access the metadata and fragment caches.
+ *
+ * To avoid out of memory and fragmentation issues with vmalloc the cache
+ * uses sequences of kmalloced PAGE_CACHE_SIZE buffers.
+ *
+ * It should be noted that the cache is not used for file datablocks, these
+ * are decompressed and cached in the page-cache in the normal way.  The
+ * cache is only used to temporarily cache fragment and metadata blocks
+ * which have been read as as a result of a metadata (i.e. inode or
+ * directory) or fragment access.  Because metadata and fragments are packed
+ * together into blocks (to gain greater compression) the read of a particular
+ * piece of metadata or fragment will retrieve other metadata/fragments which
+ * have been packed with it, these because of locality-of-reference may be read
+ * in the near future. Temporarily caching them ensures they are available for
+ * near future access without requiring an additional read and decompress.
+ */
+
+#include <linux/fs.h>
+#include <linux/pagemap.h>
+
+#include "squashfs_fs.h"
+#include "squashfs_fs_sb.h"
+#include "squashfs.h"
+#include "page_actor.h"
+
+/*
+ * Look-up block in cache, and increment usage count.  If not in cache, read
+ * and decompress it from disk.
+ */
+struct squashfs_cache_entry *squashfs_cache_get(struct super_block *sb,
+	struct squashfs_cache *cache, u64 block, int length)
+{
+	int i, n;
+	struct squashfs_cache_entry *entry;
+
+	while (1) {
+		for (i = cache->curr_blk, n = 0; n < cache->entries; n++) {
+			if (cache->entry[i].block == block) {
+				cache->curr_blk = i;
+				break;
+			}
+			i = (i + 1) % cache->entries;
+		}
+
+		if (n == cache->entries) {
+
+			/*
+			 * At least one unused cache entry.  A simple
+			 * round-robin strategy is used to choose the entry to
+			 * be evicted from the cache.
+			 */
+			i = cache->next_blk;
+			for (n = 0; n < cache->entries; n++) {
+				if (cache->entry[i].refcount == 0)
+					break;
+				i = (i + 1) % cache->entries;
+			}
+
+			cache->next_blk = (i + 1) % cache->entries;
+			entry = &cache->entry[i];
+
+			/*
+			 * Initialise chosen cache entry, and fill it in from
+			 * disk.
+			 */
+			cache->unused--;
+			entry->block = block;
+			entry->refcount = 1;
+			entry->pending = 1;
+			entry->error = 0;
+
+			entry->length = squashfs_read_data(sb, block, length,
+				&entry->next_index, entry->actor);
+
+			if (entry->length < 0)
+				entry->error = entry->length;
+
+			entry->pending = 0;
+
+			goto out;
+		}
+
+		/*
+		 * Block already in cache.  Increment refcount so it doesn't
+		 * get reused until we're finished with it, if it was
+		 * previously unused there's one less cache entry available
+		 * for reuse.
+		 */
+		entry = &cache->entry[i];
+		if (entry->refcount == 0)
+			cache->unused--;
+		entry->refcount++;
+
+		goto out;
+	}
+
+out:
+	TRACE("Got %s %d, start block %lld, refcount %d, error %d\n",
+		cache->name, i, entry->block, entry->refcount, entry->error);
+
+	if (entry->error)
+		ERROR("Unable to read %s cache entry [%llx]\n", cache->name,
+							block);
+	return entry;
+}
+
+
+/*
+ * Release cache entry, once usage count is zero it can be reused.
+ */
+void squashfs_cache_put(struct squashfs_cache_entry *entry)
+{
+	struct squashfs_cache *cache = entry->cache;
+
+	entry->refcount--;
+	if (entry->refcount == 0)
+		cache->unused++;
+}
+
+/*
+ * Delete cache reclaiming all kmalloced buffers.
+ */
+void squashfs_cache_delete(struct squashfs_cache *cache)
+{
+	int i, j;
+
+	if (cache == NULL)
+		return;
+
+	for (i = 0; i < cache->entries; i++) {
+		if (cache->entry[i].data) {
+			for (j = 0; j < cache->pages; j++)
+				kfree(cache->entry[i].data[j]);
+			kfree(cache->entry[i].data);
+		}
+		kfree(cache->entry[i].actor);
+	}
+
+	kfree(cache->entry);
+	kfree(cache);
+}
+
+
+/*
+ * Initialise cache allocating the specified number of entries, each of
+ * size block_size.  To avoid vmalloc fragmentation issues each entry
+ * is allocated as a sequence of kmalloced PAGE_CACHE_SIZE buffers.
+ */
+struct squashfs_cache *squashfs_cache_init(char *name, int entries,
+	int block_size)
+{
+	int i, j;
+	struct squashfs_cache *cache = kzalloc(sizeof(*cache), GFP_KERNEL);
+
+	if (cache == NULL) {
+		ERROR("Failed to allocate %s cache\n", name);
+		return NULL;
+	}
+
+	cache->entry = calloc(entries, sizeof(*(cache->entry)));
+	if (cache->entry == NULL) {
+		ERROR("Failed to allocate %s cache\n", name);
+		goto cleanup;
+	}
+
+	cache->curr_blk = 0;
+	cache->next_blk = 0;
+	cache->unused = entries;
+	cache->entries = entries;
+	cache->block_size = block_size;
+	cache->pages = block_size >> PAGE_CACHE_SHIFT;
+	cache->pages = cache->pages ? cache->pages : 1;
+	cache->name = name;
+
+	for (i = 0; i < entries; i++) {
+		struct squashfs_cache_entry *entry = &cache->entry[i];
+
+		entry->cache = cache;
+		entry->block = SQUASHFS_INVALID_BLK;
+		entry->data = calloc(cache->pages, sizeof(void *));
+		if (entry->data == NULL) {
+			ERROR("Failed to allocate %s cache entry\n", name);
+			goto cleanup;
+		}
+
+		for (j = 0; j < cache->pages; j++) {
+			entry->data[j] = kmalloc(PAGE_CACHE_SIZE, GFP_KERNEL);
+			if (entry->data[j] == NULL) {
+				ERROR("Failed to allocate %s buffer\n", name);
+				goto cleanup;
+			}
+		}
+
+		entry->actor = squashfs_page_actor_init(entry->data,
+						cache->pages, 0);
+		if (entry->actor == NULL) {
+			ERROR("Failed to allocate %s cache entry\n", name);
+			goto cleanup;
+		}
+	}
+
+	return cache;
+
+cleanup:
+	squashfs_cache_delete(cache);
+	return NULL;
+}
+
+
+/*
+ * Copy up to length bytes from cache entry to buffer starting at offset bytes
+ * into the cache entry.  If there's not length bytes then copy the number of
+ * bytes available.  In all cases return the number of bytes copied.
+ */
+int squashfs_copy_data(void *buffer, struct squashfs_cache_entry *entry,
+		int offset, int length)
+{
+	int remaining = length;
+
+	if (length == 0)
+		return 0;
+	else if (buffer == NULL)
+		return min(length, entry->length - offset);
+
+	while (offset < entry->length) {
+		void *buff = entry->data[offset / PAGE_CACHE_SIZE]
+				+ (offset % PAGE_CACHE_SIZE);
+		int bytes = min_t(int, entry->length - offset,
+				PAGE_CACHE_SIZE - (offset % PAGE_CACHE_SIZE));
+
+		if (bytes >= remaining) {
+			memcpy(buffer, buff, remaining);
+			remaining = 0;
+			break;
+		}
+
+		memcpy(buffer, buff, bytes);
+		buffer += bytes;
+		remaining -= bytes;
+		offset += bytes;
+	}
+
+	return length - remaining;
+}
+
+
+/*
+ * Read length bytes from metadata position <block, offset> (block is the
+ * start of the compressed block on disk, and offset is the offset into
+ * the block once decompressed).  Data is packed into consecutive blocks,
+ * and length bytes may require reading more than one block.
+ */
+int squashfs_read_metadata(struct super_block *sb, void *buffer,
+		u64 *block, int *offset, int length)
+{
+	struct squashfs_sb_info *msblk = sb->s_fs_info;
+	int bytes, res = length;
+	struct squashfs_cache_entry *entry;
+
+	TRACE("Entered squashfs_read_metadata [%llx:%x]\n", *block, *offset);
+
+	while (length) {
+		entry = squashfs_cache_get(sb, msblk->block_cache, *block, 0);
+		if (entry->error) {
+			TRACE("entry->error\n");
+			res = entry->error;
+			goto error;
+		} else if (*offset >= entry->length) {
+			TRACE("entry->length\n");
+			res = -EIO;
+			goto error;
+		}
+
+		bytes = squashfs_copy_data(buffer, entry, *offset, length);
+		if (buffer)
+			buffer += bytes;
+		length -= bytes;
+		*offset += bytes;
+
+		if (*offset == entry->length) {
+			*block = entry->next_index;
+			*offset = 0;
+		}
+
+		squashfs_cache_put(entry);
+	}
+
+	return res;
+
+error:
+	squashfs_cache_put(entry);
+	return res;
+}
+
+
+/*
+ * Look-up in the fragmment cache the fragment located at <start_block> in the
+ * filesystem.  If necessary read and decompress it from disk.
+ */
+struct squashfs_cache_entry *squashfs_get_fragment(struct super_block *sb,
+				u64 start_block, int length)
+{
+	struct squashfs_sb_info *msblk = sb->s_fs_info;
+
+	return squashfs_cache_get(sb, msblk->fragment_cache, start_block,
+		length);
+}
+
+
+/*
+ * Read and decompress the datablock located at <start_block> in the
+ * filesystem.  The cache is used here to avoid duplicating locking and
+ * read/decompress code.
+ */
+struct squashfs_cache_entry *squashfs_get_datablock(struct super_block *sb,
+				u64 start_block, int length)
+{
+	struct squashfs_sb_info *msblk = sb->s_fs_info;
+
+	return squashfs_cache_get(sb, msblk->read_page, start_block, length);
+}
+
+/*
+ * Read a filesystem table (uncompressed sequence of bytes) from disk
+ */
+void *squashfs_read_table(struct super_block *sb, u64 block, int length)
+{
+	int pages = (length + PAGE_CACHE_SIZE - 1) >> PAGE_CACHE_SHIFT;
+	int i, res;
+	void *table, *buffer, **data;
+	struct squashfs_page_actor *actor;
+
+	table = buffer = kmalloc(length, GFP_KERNEL);
+	if (table == NULL)
+		return ERR_PTR(-ENOMEM);
+
+	data = calloc(pages, sizeof(void *));
+	if (data == NULL) {
+		res = -ENOMEM;
+		goto failed;
+	}
+
+	actor = squashfs_page_actor_init(data, pages, length);
+	if (actor == NULL) {
+		res = -ENOMEM;
+		goto failed2;
+	}
+
+	for (i = 0; i < pages; i++, buffer += PAGE_CACHE_SIZE)
+		data[i] = buffer;
+
+	res = squashfs_read_data(sb, block, length |
+		SQUASHFS_COMPRESSED_BIT_BLOCK, NULL, actor);
+
+	kfree(data);
+	kfree(actor);
+
+	if (res < 0)
+		goto failed;
+
+	return table;
+
+failed2:
+	kfree(data);
+failed:
+	kfree(table);
+	return ERR_PTR(res);
+}
diff --git a/fs/squashfs/decompressor.c b/fs/squashfs/decompressor.c
new file mode 100644
index 0000000..558457b
--- /dev/null
+++ b/fs/squashfs/decompressor.c
@@ -0,0 +1,140 @@
+/*
+ * Squashfs - a compressed read only filesystem for Linux
+ *
+ * Copyright (c) 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009
+ * Phillip Lougher <phillip@squashfs.org.uk>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * as published by the Free Software Foundation; either version 2,
+ * or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * decompressor.c
+ */
+
+#include <linux/types.h>
+
+#include "squashfs_fs.h"
+#include "squashfs_fs_sb.h"
+#include "decompressor.h"
+#include "squashfs.h"
+#include "page_actor.h"
+
+/*
+ * This file (and decompressor.h) implements a decompressor framework for
+ * Squashfs, allowing multiple decompressors to be easily supported
+ */
+
+static const struct squashfs_decompressor squashfs_lzma_unsupported_comp_ops = {
+	NULL, NULL, NULL, NULL, LZMA_COMPRESSION, "lzma", 0
+};
+
+#ifndef CONFIG_SQUASHFS_LZ4
+static const struct squashfs_decompressor squashfs_lz4_comp_ops = {
+	NULL, NULL, NULL, NULL, LZ4_COMPRESSION, "lz4", 0
+};
+#endif
+
+#ifndef CONFIG_SQUASHFS_LZO
+static const struct squashfs_decompressor squashfs_lzo_comp_ops = {
+	NULL, NULL, NULL, NULL, LZO_COMPRESSION, "lzo", 0
+};
+#endif
+
+#ifndef CONFIG_SQUASHFS_XZ
+static const struct squashfs_decompressor squashfs_xz_comp_ops = {
+	NULL, NULL, NULL, NULL, XZ_COMPRESSION, "xz", 0
+};
+#endif
+
+#ifndef CONFIG_SQUASHFS_ZLIB
+static const struct squashfs_decompressor squashfs_zlib_comp_ops = {
+	NULL, NULL, NULL, NULL, ZLIB_COMPRESSION, "zlib", 0
+};
+#endif
+
+static const struct squashfs_decompressor squashfs_unknown_comp_ops = {
+	NULL, NULL, NULL, NULL, 0, "unknown", 0
+};
+
+static const struct squashfs_decompressor *decompressor[] = {
+	&squashfs_zlib_comp_ops,
+	&squashfs_lz4_comp_ops,
+	&squashfs_lzo_comp_ops,
+	&squashfs_xz_comp_ops,
+	&squashfs_lzma_unsupported_comp_ops,
+	&squashfs_unknown_comp_ops
+};
+
+
+const struct squashfs_decompressor *squashfs_lookup_decompressor(int id)
+{
+	int i;
+
+	for (i = 0; decompressor[i]->id; i++)
+		if (id == decompressor[i]->id)
+			break;
+
+	return decompressor[i];
+}
+
+
+static void *get_comp_opts(struct super_block *sb, unsigned short flags)
+{
+	struct squashfs_sb_info *msblk = sb->s_fs_info;
+	void *buffer = NULL, *comp_opts;
+	struct squashfs_page_actor *actor = NULL;
+	int length = 0;
+
+	/*
+	 * Read decompressor specific options from file system if present
+	 */
+	if (SQUASHFS_COMP_OPTS(flags)) {
+		buffer = kmalloc(PAGE_CACHE_SIZE, GFP_KERNEL);
+		if (buffer == NULL) {
+			comp_opts = ERR_PTR(-ENOMEM);
+			goto out;
+		}
+
+		actor = squashfs_page_actor_init(&buffer, 1, 0);
+		if (actor == NULL) {
+			comp_opts = ERR_PTR(-ENOMEM);
+			goto out;
+		}
+		length = squashfs_read_data(sb,
+			sizeof(struct squashfs_super_block), 0, NULL, actor);
+
+		if (length < 0) {
+			comp_opts = ERR_PTR(length);
+			goto out;
+		}
+	}
+
+	comp_opts = squashfs_comp_opts(msblk, buffer, length);
+
+out:
+	kfree(actor);
+	kfree(buffer);
+	return comp_opts;
+}
+
+
+void *squashfs_decompressor_setup(struct super_block *sb, unsigned short flags)
+{
+	struct squashfs_sb_info *msblk = sb->s_fs_info;
+	void *stream, *comp_opts = get_comp_opts(sb, flags);
+
+	if (IS_ERR(comp_opts))
+		return comp_opts;
+
+	stream = squashfs_decompressor_create(msblk, comp_opts);
+	if (IS_ERR(stream))
+		kfree(comp_opts);
+
+	return stream;
+}
diff --git a/fs/squashfs/decompressor.h b/fs/squashfs/decompressor.h
new file mode 100644
index 0000000..b097677
--- /dev/null
+++ b/fs/squashfs/decompressor.h
@@ -0,0 +1,57 @@
+#ifndef DECOMPRESSOR_H
+#define DECOMPRESSOR_H
+/*
+ * Squashfs - a compressed read only filesystem for Linux
+ *
+ * Copyright (c) 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009
+ * Phillip Lougher <phillip@squashfs.org.uk>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * as published by the Free Software Foundation; either version 2,
+ * or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * decompressor.h
+ */
+
+struct squashfs_decompressor {
+	void	*(*init)(struct squashfs_sb_info *, void *);
+	void	*(*comp_opts)(struct squashfs_sb_info *, void *, int);
+	void	(*free)(void *);
+	int	(*decompress)(struct squashfs_sb_info *, void *,
+		char **, int, int, int,
+		struct squashfs_page_actor *);
+	int	id;
+	char	*name;
+	int	supported;
+};
+
+static inline void *squashfs_comp_opts(struct squashfs_sb_info *msblk,
+							void *buff, int length)
+{
+	return msblk->decompressor->comp_opts ?
+		msblk->decompressor->comp_opts(msblk, buff, length) : NULL;
+}
+
+#ifdef CONFIG_SQUASHFS_XZ
+extern const struct squashfs_decompressor squashfs_xz_comp_ops;
+#endif
+
+#ifdef CONFIG_SQUASHFS_LZ4
+extern const struct squashfs_decompressor squashfs_lz4_comp_ops;
+#endif
+
+#ifdef CONFIG_SQUASHFS_LZO
+extern const struct squashfs_decompressor squashfs_lzo_comp_ops;
+#endif
+
+#ifdef CONFIG_SQUASHFS_ZLIB
+extern const struct squashfs_decompressor squashfs_zlib_comp_ops;
+#endif
+
+#endif
diff --git a/fs/squashfs/decompressor_single.c b/fs/squashfs/decompressor_single.c
new file mode 100644
index 0000000..046834c
--- /dev/null
+++ b/fs/squashfs/decompressor_single.c
@@ -0,0 +1,83 @@
+/*
+ * Copyright (c) 2013
+ * Phillip Lougher <phillip@squashfs.org.uk>
+ *
+ * This work is licensed under the terms of the GNU GPL, version 2. See
+ * the COPYING file in the top-level directory.
+ */
+
+#include <linux/types.h>
+#include <malloc.h>
+
+#include "squashfs_fs.h"
+#include "squashfs_fs_sb.h"
+#include "decompressor.h"
+#include "squashfs.h"
+
+/*
+ * This file implements single-threaded decompression in the
+ * decompressor framework
+ */
+
+struct squashfs_stream {
+	void		*stream;
+	struct mutex	mutex;
+};
+
+void *squashfs_decompressor_create(struct squashfs_sb_info *msblk,
+						void *comp_opts)
+{
+	struct squashfs_stream *stream;
+	int err = -ENOMEM;
+
+	stream = kmalloc(sizeof(*stream), GFP_KERNEL);
+	if (stream == NULL)
+		goto out;
+
+	stream->stream = msblk->decompressor->init(msblk, comp_opts);
+	if (IS_ERR(stream->stream)) {
+		err = PTR_ERR(stream->stream);
+		goto out;
+	}
+
+	kfree(comp_opts);
+	mutex_init(&stream->mutex);
+	return stream;
+
+out:
+	kfree(stream);
+	return ERR_PTR(err);
+}
+
+void squashfs_decompressor_destroy(struct squashfs_sb_info *msblk)
+{
+	struct squashfs_stream *stream = msblk->stream;
+
+	if (stream) {
+		msblk->decompressor->free(stream->stream);
+		kfree(stream);
+	}
+}
+
+int squashfs_decompress(struct squashfs_sb_info *msblk, char **bh,
+	int b, int offset, int length, struct squashfs_page_actor *output)
+{
+	int res;
+	struct squashfs_stream *stream = msblk->stream;
+
+	mutex_lock(&stream->mutex);
+	res = msblk->decompressor->decompress(msblk, stream->stream, bh, b,
+		offset, length, output);
+	mutex_unlock(&stream->mutex);
+
+	if (res < 0)
+		ERROR("%s decompression failed, data probably corrupt\n",
+			msblk->decompressor->name);
+
+	return res;
+}
+
+int squashfs_max_decompressors(void)
+{
+	return 1;
+}
diff --git a/fs/squashfs/file.c b/fs/squashfs/file.c
new file mode 100644
index 0000000..0806f90
--- /dev/null
+++ b/fs/squashfs/file.c
@@ -0,0 +1,445 @@
+/*
+ * Squashfs - a compressed read only filesystem for Linux
+ *
+ * Copyright (c) 2002, 2003, 2004, 2005, 2006, 2007, 2008
+ * Phillip Lougher <phillip@squashfs.org.uk>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * as published by the Free Software Foundation; either version 2,
+ * or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * file.c
+ */
+
+/*
+ * This file contains code for handling regular files.  A regular file
+ * consists of a sequence of contiguous compressed blocks, and/or a
+ * compressed fragment block (tail-end packed block).   The compressed size
+ * of each datablock is stored in a block list contained within the
+ * file inode (itself stored in one or more compressed metadata blocks).
+ *
+ * To speed up access to datablocks when reading 'large' files (256 Mbytes or
+ * larger), the code implements an index cache that caches the mapping from
+ * block index to datablock location on disk.
+ *
+ * The index cache allows Squashfs to handle large files (up to 1.75 TiB) while
+ * retaining a simple and space-efficient block list on disk.  The cache
+ * is split into slots, caching up to eight 224 GiB files (128 KiB blocks).
+ * Larger files use multiple slots, with 1.75 TiB files using all 8 slots.
+ * The index cache is designed to be memory efficient, and by default uses
+ * 16 KiB.
+ */
+
+#include <malloc.h>
+#include <linux/fs.h>
+#include <linux/kernel.h>
+#include <linux/string.h>
+#include <linux/pagemap.h>
+
+#include "squashfs_fs.h"
+#include "squashfs_fs_sb.h"
+#include "squashfs_fs_i.h"
+#include "squashfs.h"
+
+/*
+ * Locate cache slot in range [offset, index] for specified inode.  If
+ * there's more than one return the slot closest to index.
+ */
+static struct meta_index *locate_meta_index(struct inode *inode, int offset,
+				int index)
+{
+	struct meta_index *meta = NULL;
+	struct squashfs_sb_info *msblk = inode->i_sb->s_fs_info;
+	int i;
+
+	if (msblk->meta_index == NULL)
+		goto not_allocated;
+
+	for (i = 0; i < SQUASHFS_META_SLOTS; i++) {
+		if (msblk->meta_index[i].inode_number == inode->i_ino &&
+				msblk->meta_index[i].offset >= offset &&
+				msblk->meta_index[i].offset <= index &&
+				msblk->meta_index[i].locked == 0) {
+			TRACE("locate_meta_index: entry %d, offset %d\n", i,
+					msblk->meta_index[i].offset);
+			meta = &msblk->meta_index[i];
+			offset = meta->offset;
+		}
+	}
+
+	if (meta)
+		meta->locked = 1;
+
+not_allocated:
+	return meta;
+}
+
+
+/*
+ * Find and initialise an empty cache slot for index offset.
+ */
+static struct meta_index *empty_meta_index(struct inode *inode, int offset,
+				int skip)
+{
+	struct squashfs_sb_info *msblk = inode->i_sb->s_fs_info;
+	struct meta_index *meta = NULL;
+	int i;
+
+	TRACE("empty_meta_index: offset %d, skip %d\n", offset, skip);
+
+	if (msblk->meta_index == NULL) {
+		/*
+		 * First time cache index has been used, allocate and
+		 * initialise.  The cache index could be allocated at
+		 * mount time but doing it here means it is allocated only
+		 * if a 'large' file is read.
+		 */
+		msblk->meta_index = calloc(SQUASHFS_META_SLOTS,
+			sizeof(*(msblk->meta_index)));
+		if (msblk->meta_index == NULL) {
+			ERROR("Failed to allocate meta_index\n");
+			goto failed;
+		}
+		for (i = 0; i < SQUASHFS_META_SLOTS; i++) {
+			msblk->meta_index[i].inode_number = 0;
+			msblk->meta_index[i].locked = 0;
+		}
+		msblk->next_meta_index = 0;
+	}
+
+	for (i = SQUASHFS_META_SLOTS; i &&
+			msblk->meta_index[msblk->next_meta_index].locked; i--)
+		msblk->next_meta_index = (msblk->next_meta_index + 1) %
+			SQUASHFS_META_SLOTS;
+
+	if (i == 0) {
+		TRACE("empty_meta_index: failed!\n");
+		goto failed;
+	}
+
+	TRACE("empty_meta_index: returned meta entry %d, %p\n",
+			msblk->next_meta_index,
+			&msblk->meta_index[msblk->next_meta_index]);
+
+	meta = &msblk->meta_index[msblk->next_meta_index];
+	msblk->next_meta_index = (msblk->next_meta_index + 1) %
+			SQUASHFS_META_SLOTS;
+
+	meta->inode_number = inode->i_ino;
+	meta->offset = offset;
+	meta->skip = skip;
+	meta->entries = 0;
+	meta->locked = 1;
+
+failed:
+	return meta;
+}
+
+/*
+ * Read the next n blocks from the block list, starting from
+ * metadata block <start_block, offset>.
+ */
+static long long read_indexes(struct super_block *sb, int n,
+				u64 *start_block, int *offset)
+{
+	int err, i;
+	long long block = 0;
+	__le32 *blist = kmalloc(PAGE_CACHE_SIZE, GFP_KERNEL);
+
+	if (blist == NULL) {
+		ERROR("read_indexes: Failed to allocate block_list\n");
+		return -ENOMEM;
+	}
+
+	while (n) {
+		int blocks = min_t(int, n, PAGE_CACHE_SIZE >> 2);
+
+		err = squashfs_read_metadata(sb, blist, start_block,
+				offset, blocks << 2);
+		if (err < 0) {
+			ERROR("read_indexes: reading block [%llx:%x]\n",
+				*start_block, *offset);
+			goto failure;
+		}
+
+		for (i = 0; i < blocks; i++) {
+			int size = le32_to_cpu(blist[i]);
+			block += SQUASHFS_COMPRESSED_SIZE_BLOCK(size);
+		}
+		n -= blocks;
+	}
+
+	kfree(blist);
+	return block;
+
+failure:
+	kfree(blist);
+	return err;
+}
+
+
+/*
+ * Each cache index slot has SQUASHFS_META_ENTRIES, each of which
+ * can cache one index -> datablock/blocklist-block mapping.  We wish
+ * to distribute these over the length of the file, entry[0] maps index x,
+ * entry[1] maps index x + skip, entry[2] maps index x + 2 * skip, and so on.
+ * The larger the file, the greater the skip factor.  The skip factor is
+ * limited to the size of the metadata cache (SQUASHFS_CACHED_BLKS) to ensure
+ * the number of metadata blocks that need to be read fits into the cache.
+ * If the skip factor is limited in this way then the file will use multiple
+ * slots.
+ */
+static inline int calculate_skip(int blocks)
+{
+	int skip = blocks / ((SQUASHFS_META_ENTRIES + 1)
+		 * SQUASHFS_META_INDEXES);
+	return min(SQUASHFS_CACHED_BLKS - 1, skip + 1);
+}
+
+
+/*
+ * Search and grow the index cache for the specified inode, returning the
+ * on-disk locations of the datablock and block list metadata block
+ * <index_block, index_offset> for index (scaled to nearest cache index).
+ */
+static int fill_meta_index(struct inode *inode, int index,
+		u64 *index_block, int *index_offset, u64 *data_block)
+{
+	struct squashfs_sb_info *msblk = inode->i_sb->s_fs_info;
+	int skip = calculate_skip(i_size_read(inode) >> msblk->block_log);
+	int offset = 0;
+	struct meta_index *meta;
+	struct meta_entry *meta_entry;
+	u64 cur_index_block = squashfs_i(inode)->block_list_start;
+	int cur_offset = squashfs_i(inode)->offset;
+	u64 cur_data_block = squashfs_i(inode)->start;
+	int err, i;
+
+	/*
+	 * Scale index to cache index (cache slot entry)
+	 */
+	index /= SQUASHFS_META_INDEXES * skip;
+
+	while (offset < index) {
+		meta = locate_meta_index(inode, offset + 1, index);
+
+		if (meta == NULL) {
+			meta = empty_meta_index(inode, offset + 1, skip);
+			if (meta == NULL)
+				goto all_done;
+		} else {
+			offset = index < meta->offset + meta->entries ? index :
+				meta->offset + meta->entries - 1;
+			meta_entry = &meta->meta_entry[offset - meta->offset];
+			cur_index_block = meta_entry->index_block +
+				msblk->inode_table;
+			cur_offset = meta_entry->offset;
+			cur_data_block = meta_entry->data_block;
+			TRACE("get_meta_index: offset %d, meta->offset %d, "
+				"meta->entries %d\n", offset, meta->offset,
+				meta->entries);
+			TRACE("get_meta_index: index_block 0x%llx, offset 0x%x"
+				" data_block 0x%llx\n", cur_index_block,
+				cur_offset, cur_data_block);
+		}
+
+		/*
+		 * If necessary grow cache slot by reading block list.  Cache
+		 * slot is extended up to index or to the end of the slot, in
+		 * which case further slots will be used.
+		 */
+		for (i = meta->offset + meta->entries; i <= index &&
+				i < meta->offset + SQUASHFS_META_ENTRIES; i++) {
+			int blocks = skip * SQUASHFS_META_INDEXES;
+			long long res = read_indexes(inode->i_sb, blocks,
+					&cur_index_block, &cur_offset);
+
+			if (res < 0) {
+				if (meta->entries == 0)
+					/*
+					 * Don't leave an empty slot on read
+					 * error allocated to this inode...
+					 */
+					meta->inode_number = 0;
+				err = res;
+				goto failed;
+			}
+
+			cur_data_block += res;
+			meta_entry = &meta->meta_entry[i - meta->offset];
+			meta_entry->index_block = cur_index_block -
+				msblk->inode_table;
+			meta_entry->offset = cur_offset;
+			meta_entry->data_block = cur_data_block;
+			meta->entries++;
+			offset++;
+		}
+
+		TRACE("get_meta_index: meta->offset %d, meta->entries %d\n",
+				meta->offset, meta->entries);
+
+	}
+
+all_done:
+	*index_block = cur_index_block;
+	*index_offset = cur_offset;
+	*data_block = cur_data_block;
+
+	/*
+	 * Scale cache index (cache slot entry) to index
+	 */
+	return offset * SQUASHFS_META_INDEXES * skip;
+
+failed:
+	return err;
+}
+
+
+/*
+ * Get the on-disk location and compressed size of the datablock
+ * specified by index.  Fill_meta_index() does most of the work.
+ */
+static int read_blocklist(struct inode *inode, int index, u64 *block)
+{
+	u64 start;
+	long long blks;
+	int offset;
+	__le32 size;
+	int res = fill_meta_index(inode, index, &start, &offset, block);
+
+	TRACE("read_blocklist: res %d, index %d, start 0x%llx, offset"
+		       " 0x%x, block 0x%llx\n", res, index, start, offset,
+			*block);
+
+	if (res < 0)
+		return res;
+
+	/*
+	 * res contains the index of the mapping returned by fill_meta_index(),
+	 * this will likely be less than the desired index (because the
+	 * meta_index cache works at a higher granularity).  Read any
+	 * extra block indexes needed.
+	 */
+	if (res < index) {
+		blks = read_indexes(inode->i_sb, index - res, &start, &offset);
+		if (blks < 0)
+			return (int) blks;
+		*block += blks;
+	}
+
+	/*
+	 * Read length of block specified by index.
+	 */
+	res = squashfs_read_metadata(inode->i_sb, &size, &start, &offset,
+			sizeof(size));
+	if (res < 0)
+		return res;
+	return le32_to_cpu(size);
+}
+
+/* Copy data into page cache  */
+void squashfs_copy_cache(struct page *page, struct squashfs_cache_entry *buffer,
+	int bytes, int offset)
+{
+	int i;
+	struct squashfs_page *sq_page = squashfs_page(page);
+
+	/*
+	 * Loop copying datablock into pages.  As the datablock likely covers
+	 * many PAGE_CACHE_SIZE pages (default block size is 128 KiB) explicitly
+	 * grab the pages from the page cache, except for the page that we've
+	 * been called to fill.
+	 */
+	for (i = 0; i < 32 && bytes > 0; i++,
+			bytes -= PAGE_CACHE_SIZE, offset += PAGE_CACHE_SIZE) {
+		int avail = buffer ? min_t(int, bytes, PAGE_CACHE_SIZE) : 0;
+
+		TRACE("bytes %d, i %d, available_bytes %d\n", bytes, i, avail);
+
+		squashfs_copy_data(sq_page->buf[i], buffer, offset, avail);
+		memset(sq_page->buf[i] + avail, 0, PAGE_CACHE_SIZE - avail);
+		sq_page->idx++;
+	}
+}
+
+/* Read datablock stored packed inside a fragment (tail-end packed block) */
+static int squashfs_readpage_fragment(struct page *page)
+{
+	struct inode *inode = page->inode;
+	struct squashfs_sb_info *msblk = inode->i_sb->s_fs_info;
+	struct squashfs_cache_entry *buffer = squashfs_get_fragment(inode->i_sb,
+		squashfs_i(inode)->fragment_block,
+		squashfs_i(inode)->fragment_size);
+	int res = buffer->error;
+
+	TRACE("squashfs_readpage_fragment: frag size: %d\n",
+		squashfs_i(inode)->fragment_size);
+	if (res)
+		ERROR("Unable to read page, block %llx, size %x\n",
+			squashfs_i(inode)->fragment_block,
+			squashfs_i(inode)->fragment_size);
+	else
+		squashfs_copy_cache(page, buffer, i_size_read(inode) &
+			(msblk->block_size - 1),
+			squashfs_i(inode)->fragment_offset);
+
+	squashfs_cache_put(buffer);
+	return res;
+}
+
+static int squashfs_readpage_sparse(struct page *page, int index, int file_end)
+{
+	struct inode *inode = page->inode;
+	struct squashfs_sb_info *msblk = inode->i_sb->s_fs_info;
+	int bytes = index == file_end ?
+			(i_size_read(inode) & (msblk->block_size - 1)) :
+			 msblk->block_size;
+
+	squashfs_copy_cache(page, NULL, bytes, 0);
+
+	return 0;
+}
+
+int squashfs_readpage(struct file *file, struct page *page)
+{
+	struct inode *inode = page->inode;
+	struct squashfs_sb_info *msblk = inode->i_sb->s_fs_info;
+	int index = page->index >> (msblk->block_log - PAGE_CACHE_SHIFT);
+	int file_end = i_size_read(inode) >> msblk->block_log;
+	int res;
+
+	TRACE("Entered squashfs_readpage, page index %lx, start block %llx\n",
+				page->index, squashfs_i(inode)->start);
+
+	if (page->index >= ((i_size_read(inode) + PAGE_CACHE_SIZE - 1) >>
+					PAGE_CACHE_SHIFT))
+		goto out;
+
+	if (index < file_end || squashfs_i(inode)->fragment_block ==
+					SQUASHFS_INVALID_BLK) {
+		u64 block = 0;
+		int bsize = read_blocklist(inode, index, &block);
+		if (bsize < 0)
+			goto out;
+
+		if (bsize == 0)
+			res = squashfs_readpage_sparse(page, index, file_end);
+		else
+			res = squashfs_readpage_block(page, block, bsize);
+	} else
+		res = squashfs_readpage_fragment(page);
+
+	if (!res)
+		return 0;
+
+out:
+	memset(page->addr, 0, PAGE_CACHE_SIZE);
+
+	return 0;
+}
diff --git a/fs/squashfs/file_cache.c b/fs/squashfs/file_cache.c
new file mode 100644
index 0000000..9443e45
--- /dev/null
+++ b/fs/squashfs/file_cache.c
@@ -0,0 +1,35 @@
+/*
+ * Copyright (c) 2013
+ * Phillip Lougher <phillip@squashfs.org.uk>
+ *
+ * This work is licensed under the terms of the GNU GPL, version 2. See
+ * the COPYING file in the top-level directory.
+ */
+
+#include <linux/fs.h>
+#include <linux/kernel.h>
+#include <linux/string.h>
+#include <linux/pagemap.h>
+
+#include "squashfs_fs.h"
+#include "squashfs_fs_sb.h"
+#include "squashfs_fs_i.h"
+#include "squashfs.h"
+
+/* Read separately compressed datablock and memcopy into page cache */
+int squashfs_readpage_block(struct page *page, u64 block, int bsize)
+{
+	struct inode *i = page->inode;
+	struct squashfs_cache_entry *buffer = squashfs_get_datablock(i->i_sb,
+		block, bsize);
+	int res = buffer->error;
+
+	if (res)
+		ERROR("Unable to read page, block %llx, size %x\n", block,
+			bsize);
+	else
+		squashfs_copy_cache(page, buffer, buffer->length, 0);
+
+	squashfs_cache_put(buffer);
+	return res;
+}
diff --git a/fs/squashfs/fragment.c b/fs/squashfs/fragment.c
new file mode 100644
index 0000000..2b99ff5
--- /dev/null
+++ b/fs/squashfs/fragment.c
@@ -0,0 +1,94 @@
+/*
+ * Squashfs - a compressed read only filesystem for Linux
+ *
+ * Copyright (c) 2002, 2003, 2004, 2005, 2006, 2007, 2008
+ * Phillip Lougher <phillip@squashfs.org.uk>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * as published by the Free Software Foundation; either version 2,
+ * or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * fragment.c
+ */
+
+/*
+ * This file implements code to handle compressed fragments (tail-end packed
+ * datablocks).
+ *
+ * Regular files contain a fragment index which is mapped to a fragment
+ * location on disk and compressed size using a fragment lookup table.
+ * Like everything in Squashfs this fragment lookup table is itself stored
+ * compressed into metadata blocks.  A second index table is used to locate
+ * these.  This second index table for speed of access (and because it
+ * is small) is read at mount time and cached in memory.
+ */
+
+#include <malloc.h>
+#include <linux/fs.h>
+
+#include "squashfs_fs.h"
+#include "squashfs_fs_sb.h"
+#include "squashfs.h"
+
+/*
+ * Look-up fragment using the fragment index table.  Return the on disk
+ * location of the fragment and its compressed size
+ */
+int squashfs_frag_lookup(struct super_block *sb, unsigned int fragment,
+				u64 *fragment_block)
+{
+	struct squashfs_sb_info *msblk = sb->s_fs_info;
+	int block = SQUASHFS_FRAGMENT_INDEX(fragment);
+	int offset = SQUASHFS_FRAGMENT_INDEX_OFFSET(fragment);
+	u64 start_block = le64_to_cpu(msblk->fragment_index[block]);
+	struct squashfs_fragment_entry fragment_entry;
+	int size;
+
+	size = squashfs_read_metadata(sb, &fragment_entry, &start_block,
+					&offset, sizeof(fragment_entry));
+	if (size < 0)
+		return size;
+
+	*fragment_block = le64_to_cpu(fragment_entry.start_block);
+	size = le32_to_cpu(fragment_entry.size);
+
+	return size;
+}
+
+
+/*
+ * Read the uncompressed fragment lookup table indexes off disk into memory
+ */
+__le64 *squashfs_read_fragment_index_table(struct super_block *sb,
+	u64 fragment_table_start, u64 next_table, unsigned int fragments)
+{
+	unsigned int length = SQUASHFS_FRAGMENT_INDEX_BYTES(fragments);
+	__le64 *table;
+
+	/*
+	 * Sanity check, length bytes should not extend into the next table -
+	 * this check also traps instances where fragment_table_start is
+	 * incorrectly larger than the next table start
+	 */
+	if (fragment_table_start + length > next_table)
+		return ERR_PTR(-EINVAL);
+
+	table = squashfs_read_table(sb, fragment_table_start, length);
+
+	/*
+	 * table[0] points to the first fragment table metadata block, this
+	 * should be less than fragment_table_start
+	 */
+	if (!IS_ERR(table) && le64_to_cpu(table[0]) >= fragment_table_start) {
+		kfree(table);
+		return ERR_PTR(-EINVAL);
+	}
+
+	return table;
+}
diff --git a/fs/squashfs/id.c b/fs/squashfs/id.c
new file mode 100644
index 0000000..5db0f73
--- /dev/null
+++ b/fs/squashfs/id.c
@@ -0,0 +1,98 @@
+/*
+ * Squashfs - a compressed read only filesystem for Linux
+ *
+ * Copyright (c) 2002, 2003, 2004, 2005, 2006, 2007, 2008
+ * Phillip Lougher <phillip@squashfs.org.uk>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * as published by the Free Software Foundation; either version 2,
+ * or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * id.c
+ */
+
+/*
+ * This file implements code to handle uids and gids.
+ *
+ * For space efficiency regular files store uid and gid indexes, which are
+ * converted to 32-bit uids/gids using an id look up table.  This table is
+ * stored compressed into metadata blocks.  A second index table is used to
+ * locate these.  This second index table for speed of access (and because it
+ * is small) is read at mount time and cached in memory.
+ */
+
+#include <linux/barebox-wrapper.h>
+#include <linux/fs.h>
+#include <malloc.h>
+
+#include "squashfs_fs.h"
+#include "squashfs_fs_sb.h"
+#include "squashfs.h"
+
+/*
+ * Map uid/gid index into real 32-bit uid/gid using the id look up table
+ */
+int squashfs_get_id(struct super_block *sb, unsigned int index,
+					unsigned int *id)
+{
+	struct squashfs_sb_info *msblk = sb->s_fs_info;
+	int block = SQUASHFS_ID_BLOCK(index);
+	int offset = SQUASHFS_ID_BLOCK_OFFSET(index);
+	u64 start_block = le64_to_cpu(msblk->id_table[block]);
+	__le32 disk_id;
+	int err;
+
+	err = squashfs_read_metadata(sb, &disk_id, &start_block, &offset,
+							sizeof(disk_id));
+	if (err < 0)
+		return err;
+
+	*id = le32_to_cpu(disk_id);
+	return 0;
+}
+
+
+/*
+ * Read uncompressed id lookup table indexes from disk into memory
+ */
+__le64 *squashfs_read_id_index_table(struct super_block *sb,
+		u64 id_table_start, u64 next_table, unsigned short no_ids)
+{
+	unsigned int length = SQUASHFS_ID_BLOCK_BYTES(no_ids);
+	__le64 *table;
+
+	TRACE("In read_id_index_table, length %d\n", length);
+
+	/* Sanity check values */
+
+	/* there should always be at least one id */
+	if (no_ids == 0)
+		return ERR_PTR(-EINVAL);
+
+	/*
+	 * length bytes should not extend into the next table - this check
+	 * also traps instances where id_table_start is incorrectly larger
+	 * than the next table start
+	 */
+	if (id_table_start + length > next_table)
+		return ERR_PTR(-EINVAL);
+
+	table = squashfs_read_table(sb, id_table_start, length);
+
+	/*
+	 * table[0] points to the first id lookup table metadata block, this
+	 * should be less than id_table_start
+	 */
+	if (!IS_ERR(table) && le64_to_cpu(table[0]) >= id_table_start) {
+		kfree(table);
+		return ERR_PTR(-EINVAL);
+	}
+
+	return table;
+}
diff --git a/fs/squashfs/inode.c b/fs/squashfs/inode.c
new file mode 100644
index 0000000..749fc7e
--- /dev/null
+++ b/fs/squashfs/inode.c
@@ -0,0 +1,402 @@
+/*
+ * Squashfs - a compressed read only filesystem for Linux
+ *
+ * Copyright (c) 2002, 2003, 2004, 2005, 2006, 2007, 2008
+ * Phillip Lougher <phillip@squashfs.org.uk>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * as published by the Free Software Foundation; either version 2,
+ * or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * inode.c
+ */
+
+/*
+ * This file implements code to create and read inodes from disk.
+ *
+ * Inodes in Squashfs are identified by a 48-bit inode which encodes the
+ * location of the compressed metadata block containing the inode, and the byte
+ * offset into that block where the inode is placed (<block, offset>).
+ *
+ * To maximise compression there are different inodes for each file type
+ * (regular file, directory, device, etc.), the inode contents and length
+ * varying with the type.
+ *
+ * To further maximise compression, two types of regular file inode and
+ * directory inode are defined: inodes optimised for frequently occurring
+ * regular files and directories, and extended types where extra
+ * information has to be stored.
+ */
+
+#include <malloc.h>
+#include <linux/fs.h>
+#include <linux/stat.h>
+#include <linux/pagemap.h>
+
+#include "squashfs_fs.h"
+#include "squashfs_fs_sb.h"
+#include "squashfs_fs_i.h"
+#include "squashfs.h"
+
+struct inode *iget_locked_squashfs(struct super_block *sb, unsigned long ino)
+{
+	struct inode *inode;
+	struct squashfs_inode_info *ei;
+
+	ei = malloc(sizeof(struct squashfs_inode_info));
+	inode = &ei->vfs_inode;
+	if (inode) {
+		inode->i_ino = ino;
+		inode->i_sb = sb;
+		inode->i_state = I_SYNC | I_NEW;
+	}
+
+	return inode;
+}
+
+/*
+ * Initialise VFS inode with the base inode information common to all
+ * Squashfs inode types.  Sqsh_ino contains the unswapped base inode
+ * off disk.
+ */
+static int squashfs_new_inode(struct super_block *sb, struct inode *inode,
+				struct squashfs_base_inode *sqsh_ino)
+{
+	uid_t i_uid;
+	gid_t i_gid;
+	int err;
+
+	err = squashfs_get_id(sb, le16_to_cpu(sqsh_ino->uid), &i_uid);
+	if (err)
+		return err;
+
+	err = squashfs_get_id(sb, le16_to_cpu(sqsh_ino->guid), &i_gid);
+	if (err)
+		return err;
+
+	inode->i_ino = le32_to_cpu(sqsh_ino->inode_number);
+	inode->i_mtime.tv_sec = le32_to_cpu(sqsh_ino->mtime);
+	inode->i_atime.tv_sec = inode->i_mtime.tv_sec;
+	inode->i_ctime.tv_sec = inode->i_mtime.tv_sec;
+	inode->i_mode = le16_to_cpu(sqsh_ino->mode);
+	inode->i_size = 0;
+
+	return err;
+}
+
+
+struct inode *squashfs_iget(struct super_block *sb, long long ino,
+				unsigned int ino_number)
+{
+	struct inode *inode = iget_locked_squashfs(sb, ino_number);
+	int err;
+
+	TRACE("Entered squashfs_iget\n");
+
+	if (!inode)
+		return ERR_PTR(-ENOMEM);
+	if (!(inode->i_state & I_NEW))
+		return inode;
+
+	err = squashfs_read_inode(inode, ino);
+	if (err)
+		return ERR_PTR(err);
+
+	return inode;
+}
+
+
+/*
+ * Initialise VFS inode by reading inode from inode table (compressed
+ * metadata).  The format and amount of data read depends on type.
+ */
+int squashfs_read_inode(struct inode *inode, long long ino)
+{
+	struct super_block *sb = inode->i_sb;
+	struct squashfs_sb_info *msblk = sb->s_fs_info;
+	u64 block = SQUASHFS_INODE_BLK(ino) + msblk->inode_table;
+	int err, type, offset = SQUASHFS_INODE_OFFSET(ino);
+	union squashfs_inode squashfs_ino;
+	struct squashfs_base_inode *sqshb_ino = &squashfs_ino.base;
+	int xattr_id = SQUASHFS_INVALID_XATTR;
+
+	TRACE("Entered squashfs_read_inode: %d\n", ino);
+
+	/*
+	 * Read inode base common to all inode types.
+	 */
+	err = squashfs_read_metadata(sb, sqshb_ino, &block,
+				&offset, sizeof(*sqshb_ino));
+	if (err < 0)
+		goto failed_read;
+
+	err = squashfs_new_inode(sb, inode, sqshb_ino);
+	if (err)
+		goto failed_read;
+
+	block = SQUASHFS_INODE_BLK(ino) + msblk->inode_table;
+	offset = SQUASHFS_INODE_OFFSET(ino);
+
+	type = le16_to_cpu(sqshb_ino->inode_type);
+	switch (type) {
+	case SQUASHFS_REG_TYPE: {
+		unsigned int frag_offset, frag;
+		int frag_size;
+		u64 frag_blk;
+		struct squashfs_reg_inode *sqsh_ino = &squashfs_ino.reg;
+
+		TRACE("Type: SQUASHFS_REG_TYPE\n");
+		err = squashfs_read_metadata(sb, sqsh_ino, &block, &offset,
+							sizeof(*sqsh_ino));
+		if (err < 0)
+			goto failed_read;
+
+		frag = le32_to_cpu(sqsh_ino->fragment);
+		if (frag != SQUASHFS_INVALID_FRAG) {
+			frag_offset = le32_to_cpu(sqsh_ino->offset);
+			frag_size = squashfs_frag_lookup(sb, frag, &frag_blk);
+			if (frag_size < 0) {
+				err = frag_size;
+				goto failed_read;
+			}
+		} else {
+			frag_blk = SQUASHFS_INVALID_BLK;
+			frag_size = 0;
+			frag_offset = 0;
+		}
+
+		inode->i_size = le32_to_cpu(sqsh_ino->file_size);
+		inode->i_mode |= S_IFREG;
+		inode->i_blocks = ((inode->i_size - 1) >> 9) + 1;
+		squashfs_i(inode)->fragment_block = frag_blk;
+		squashfs_i(inode)->fragment_size = frag_size;
+		squashfs_i(inode)->fragment_offset = frag_offset;
+		squashfs_i(inode)->start = le32_to_cpu(sqsh_ino->start_block);
+		squashfs_i(inode)->block_list_start = block;
+		squashfs_i(inode)->offset = offset;
+
+		TRACE("File inode %x:%x, start_block %llx, block_list_start "
+			"%llx, offset %x\n", SQUASHFS_INODE_BLK(ino),
+			offset, squashfs_i(inode)->start, block, offset);
+		break;
+	}
+	case SQUASHFS_LREG_TYPE: {
+		unsigned int frag_offset, frag;
+		int frag_size;
+		u64 frag_blk;
+		struct squashfs_lreg_inode *sqsh_ino = &squashfs_ino.lreg;
+
+		TRACE("Type: SQUASHFS_LREG_TYPE\n");
+		err = squashfs_read_metadata(sb, sqsh_ino, &block, &offset,
+							sizeof(*sqsh_ino));
+		if (err < 0)
+			goto failed_read;
+
+		frag = le32_to_cpu(sqsh_ino->fragment);
+		if (frag != SQUASHFS_INVALID_FRAG) {
+			frag_offset = le32_to_cpu(sqsh_ino->offset);
+			frag_size = squashfs_frag_lookup(sb, frag, &frag_blk);
+			if (frag_size < 0) {
+				err = frag_size;
+				goto failed_read;
+			}
+		} else {
+			frag_blk = SQUASHFS_INVALID_BLK;
+			frag_size = 0;
+			frag_offset = 0;
+		}
+
+		xattr_id = le32_to_cpu(sqsh_ino->xattr);
+		inode->i_size = le64_to_cpu(sqsh_ino->file_size);
+		inode->i_mode |= S_IFREG;
+		inode->i_blocks = (inode->i_size -
+				le64_to_cpu(sqsh_ino->sparse) + 511) >> 9;
+
+		squashfs_i(inode)->fragment_block = frag_blk;
+		squashfs_i(inode)->fragment_size = frag_size;
+		squashfs_i(inode)->fragment_offset = frag_offset;
+		squashfs_i(inode)->start = le64_to_cpu(sqsh_ino->start_block);
+		squashfs_i(inode)->block_list_start = block;
+		squashfs_i(inode)->offset = offset;
+
+		TRACE("File inode %x:%x, start_block %llx, block_list_start "
+			"%llx, offset %x\n", SQUASHFS_INODE_BLK(ino),
+			offset, squashfs_i(inode)->start, block, offset);
+		break;
+	}
+	case SQUASHFS_DIR_TYPE: {
+		struct squashfs_dir_inode *sqsh_ino = &squashfs_ino.dir;
+
+		TRACE("Type: SQUASHFS_DIR_TYPE\n");
+		err = squashfs_read_metadata(sb, sqsh_ino, &block, &offset,
+				sizeof(*sqsh_ino));
+		if (err < 0)
+			goto failed_read;
+
+		inode->i_size = le16_to_cpu(sqsh_ino->file_size);
+		inode->i_mode |= S_IFDIR;
+		squashfs_i(inode)->start = le32_to_cpu(sqsh_ino->start_block);
+		squashfs_i(inode)->offset = le16_to_cpu(sqsh_ino->offset);
+		squashfs_i(inode)->dir_idx_cnt = 0;
+		squashfs_i(inode)->parent = le32_to_cpu(sqsh_ino->parent_inode);
+
+		TRACE("Directory inode %x:%x, start_block %llx, offset %x\n",
+				SQUASHFS_INODE_BLK(ino), offset,
+				squashfs_i(inode)->start,
+				le16_to_cpu(sqsh_ino->offset));
+		break;
+	}
+	case SQUASHFS_LDIR_TYPE: {
+		struct squashfs_ldir_inode *sqsh_ino = &squashfs_ino.ldir;
+
+		TRACE("Type: SQUASHFS_LDIR_TYPE\n");
+		err = squashfs_read_metadata(sb, sqsh_ino, &block, &offset,
+				sizeof(*sqsh_ino));
+		if (err < 0)
+			goto failed_read;
+
+		xattr_id = le32_to_cpu(sqsh_ino->xattr);
+		inode->i_size = le32_to_cpu(sqsh_ino->file_size);
+		inode->i_mode |= S_IFDIR;
+		squashfs_i(inode)->start = le32_to_cpu(sqsh_ino->start_block);
+		squashfs_i(inode)->offset = le16_to_cpu(sqsh_ino->offset);
+		squashfs_i(inode)->dir_idx_start = block;
+		squashfs_i(inode)->dir_idx_offset = offset;
+		squashfs_i(inode)->dir_idx_cnt = le16_to_cpu(sqsh_ino->i_count);
+		squashfs_i(inode)->parent = le32_to_cpu(sqsh_ino->parent_inode);
+
+		TRACE("Long directory inode %x:%x, start_block %llx, offset "
+				"%x\n", SQUASHFS_INODE_BLK(ino), offset,
+				squashfs_i(inode)->start,
+				le16_to_cpu(sqsh_ino->offset));
+		break;
+	}
+	case SQUASHFS_SYMLINK_TYPE:
+	case SQUASHFS_LSYMLINK_TYPE: {
+		struct squashfs_symlink_inode *sqsh_ino = &squashfs_ino.symlink;
+
+		TRACE("Type: SQUASHFS_SYMLINK_TYPE\n");
+		err = squashfs_read_metadata(sb, sqsh_ino, &block, &offset,
+				sizeof(*sqsh_ino));
+		if (err < 0)
+			goto failed_read;
+
+		inode->i_size = le32_to_cpu(sqsh_ino->symlink_size);
+		inode->i_mode |= S_IFLNK;
+		squashfs_i(inode)->start = block;
+		squashfs_i(inode)->offset = offset;
+
+		if (type == SQUASHFS_LSYMLINK_TYPE) {
+			__le32 xattr;
+
+			err = squashfs_read_metadata(sb, NULL, &block,
+						&offset, inode->i_size);
+			if (err < 0)
+				goto failed_read;
+			err = squashfs_read_metadata(sb, &xattr, &block,
+						&offset, sizeof(xattr));
+			if (err < 0)
+				goto failed_read;
+			xattr_id = le32_to_cpu(xattr);
+		}
+
+		TRACE("Symbolic link inode %x:%x, start_block %llx, offset "
+				"%x\n", SQUASHFS_INODE_BLK(ino), offset,
+				block, offset);
+		break;
+	}
+	case SQUASHFS_BLKDEV_TYPE:
+	case SQUASHFS_CHRDEV_TYPE: {
+		struct squashfs_dev_inode *sqsh_ino = &squashfs_ino.dev;
+		unsigned int rdev;
+
+		TRACE("Type: SQUASHFS_BLLDEV_TYPE\n");
+		err = squashfs_read_metadata(sb, sqsh_ino, &block, &offset,
+				sizeof(*sqsh_ino));
+		if (err < 0)
+			goto failed_read;
+
+		if (type == SQUASHFS_CHRDEV_TYPE)
+			inode->i_mode |= S_IFCHR;
+		else
+			inode->i_mode |= S_IFBLK;
+		rdev = le32_to_cpu(sqsh_ino->rdev);
+
+		TRACE("Device inode %x:%x, rdev %x\n",
+				SQUASHFS_INODE_BLK(ino), offset, rdev);
+		break;
+	}
+	case SQUASHFS_LBLKDEV_TYPE:
+	case SQUASHFS_LCHRDEV_TYPE: {
+		struct squashfs_ldev_inode *sqsh_ino = &squashfs_ino.ldev;
+		unsigned int rdev;
+
+		TRACE("Type: SQUASHFS_LBLLDEV_TYPE\n");
+		err = squashfs_read_metadata(sb, sqsh_ino, &block, &offset,
+				sizeof(*sqsh_ino));
+		if (err < 0)
+			goto failed_read;
+
+		if (type == SQUASHFS_LCHRDEV_TYPE)
+			inode->i_mode |= S_IFCHR;
+		else
+			inode->i_mode |= S_IFBLK;
+		xattr_id = le32_to_cpu(sqsh_ino->xattr);
+		rdev = le32_to_cpu(sqsh_ino->rdev);
+
+		TRACE("Device inode %x:%x, rdev %x\n",
+				SQUASHFS_INODE_BLK(ino), offset, rdev);
+		break;
+	}
+	case SQUASHFS_FIFO_TYPE:
+	case SQUASHFS_SOCKET_TYPE: {
+		struct squashfs_ipc_inode *sqsh_ino = &squashfs_ino.ipc;
+
+		TRACE("Type: SQUASHFS_FIFO_TYPE\n");
+		err = squashfs_read_metadata(sb, sqsh_ino, &block, &offset,
+				sizeof(*sqsh_ino));
+		if (err < 0)
+			goto failed_read;
+
+		if (type == SQUASHFS_FIFO_TYPE)
+			inode->i_mode |= S_IFIFO;
+		else
+			inode->i_mode |= S_IFSOCK;
+		break;
+	}
+	case SQUASHFS_LFIFO_TYPE:
+	case SQUASHFS_LSOCKET_TYPE: {
+		struct squashfs_lipc_inode *sqsh_ino = &squashfs_ino.lipc;
+
+		TRACE("Type: SQUASHFS_LFIFO_TYPE\n");
+		err = squashfs_read_metadata(sb, sqsh_ino, &block, &offset,
+				sizeof(*sqsh_ino));
+		if (err < 0)
+			goto failed_read;
+
+		if (type == SQUASHFS_LFIFO_TYPE)
+			inode->i_mode |= S_IFIFO;
+		else
+			inode->i_mode |= S_IFSOCK;
+		xattr_id = le32_to_cpu(sqsh_ino->xattr);
+		break;
+	}
+	default:
+		ERROR("Unknown inode type %d in squashfs_iget!\n", type);
+		return -EINVAL;
+	}
+
+	squashfs_i(inode)->xattr_count = 0;
+
+	return 0;
+
+failed_read:
+	ERROR("Unable to read inode 0x%llx\n", ino);
+	return err;
+}
diff --git a/fs/squashfs/namei.c b/fs/squashfs/namei.c
new file mode 100644
index 0000000..482fda5
--- /dev/null
+++ b/fs/squashfs/namei.c
@@ -0,0 +1,346 @@
+/*
+ * Squashfs - a compressed read only filesystem for Linux
+ *
+ * Copyright (c) 2002, 2003, 2004, 2005, 2006, 2007, 2008
+ * Phillip Lougher <phillip@squashfs.org.uk>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * as published by the Free Software Foundation; either version 2,
+ * or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * namei.c
+ */
+
+/*
+ * This file implements code to do filename lookup in directories.
+ *
+ * Like inodes, directories are packed into compressed metadata blocks, stored
+ * in a directory table.  Directories are accessed using the start address of
+ * the metablock containing the directory and the offset into the
+ * decompressed block (<block, offset>).
+ *
+ * Directories are organised in a slightly complex way, and are not simply
+ * a list of file names.  The organisation takes advantage of the
+ * fact that (in most cases) the inodes of the files will be in the same
+ * compressed metadata block, and therefore, can share the start block.
+ * Directories are therefore organised in a two level list, a directory
+ * header containing the shared start block value, and a sequence of directory
+ * entries, each of which share the shared start block.  A new directory header
+ * is written once/if the inode start block changes.  The directory
+ * header/directory entry list is repeated as many times as necessary.
+ *
+ * Directories are sorted, and can contain a directory index to speed up
+ * file lookup.  Directory indexes store one entry per metablock, each entry
+ * storing the index/filename mapping to the first directory header
+ * in each metadata block.  Directories are sorted in alphabetical order,
+ * and at lookup the index is scanned linearly looking for the first filename
+ * alphabetically larger than the filename being looked up.  At this point the
+ * location of the metadata block the filename is in has been found.
+ * The general idea of the index is ensure only one metadata block needs to be
+ * decompressed to do a lookup irrespective of the length of the directory.
+ * This scheme has the advantage that it doesn't require extra memory overhead
+ * and doesn't require much extra storage on disk.
+ */
+
+#include <linux/fs.h>
+#include <malloc.h>
+#include <linux/string.h>
+#include <linux/dcache.h>
+#include <common.h>
+
+#include "squashfs_fs.h"
+#include "squashfs_fs_sb.h"
+#include "squashfs_fs_i.h"
+#include "squashfs.h"
+
+/*
+ * Lookup name in the directory index, returning the location of the metadata
+ * block containing it, and the directory index this represents.
+ *
+ * If we get an error reading the index then return the part of the index
+ * (if any) we have managed to read - the index isn't essential, just
+ * quicker.
+ */
+static int get_dir_index_using_name(struct super_block *sb,
+			u64 *next_block, int *next_offset, u64 index_start,
+			int index_offset, int i_count, const char *name,
+			int len)
+{
+	struct squashfs_sb_info *msblk = sb->s_fs_info;
+	int i, length = 0, err;
+	unsigned int size;
+	struct squashfs_dir_index *index;
+	char *str;
+
+	TRACE("Entered get_dir_index_using_name, i_count %d\n", i_count);
+
+	index = kmalloc(sizeof(*index) + SQUASHFS_NAME_LEN * 2 + 2, GFP_KERNEL);
+	if (index == NULL) {
+		ERROR("Failed to allocate squashfs_dir_index\n");
+		goto out;
+	}
+
+	str = &index->name[SQUASHFS_NAME_LEN + 1];
+	strncpy(str, name, len);
+	str[len] = '\0';
+
+	for (i = 0; i < i_count; i++) {
+		err = squashfs_read_metadata(sb, index, &index_start,
+					&index_offset, sizeof(*index));
+		if (err < 0)
+			break;
+
+
+		size = le32_to_cpu(index->size) + 1;
+		if (size > SQUASHFS_NAME_LEN)
+			break;
+
+		err = squashfs_read_metadata(sb, index->name, &index_start,
+					&index_offset, size);
+		if (err < 0)
+			break;
+
+		index->name[size] = '\0';
+
+		if (strcmp(index->name, str) > 0)
+			break;
+
+		length = le32_to_cpu(index->index);
+		*next_block = le32_to_cpu(index->start_block) +
+					msblk->directory_table;
+	}
+
+	*next_offset = (length + *next_offset) % SQUASHFS_METADATA_SIZE;
+	kfree(index);
+
+out:
+	/*
+	 * Return index (f_pos) of the looked up metadata block.  Translate
+	 * from internal f_pos to external f_pos which is offset by 3 because
+	 * we invent "." and ".." entries which are not actually stored in the
+	 * directory.
+	 */
+	return length + 3;
+}
+
+
+struct inode *squashfs_lookup(struct inode *dir, const char *cur_name,
+				 unsigned int flags)
+{
+	const unsigned char *name = cur_name;
+	int len = strlen(cur_name);
+	struct inode *inode = NULL;
+	struct squashfs_sb_info *msblk = dir->i_sb->s_fs_info;
+	struct squashfs_dir_header dirh;
+	struct squashfs_dir_entry *dire;
+	u64 block = squashfs_i(dir)->start + msblk->directory_table;
+	int offset = squashfs_i(dir)->offset;
+	int err, length;
+	unsigned int dir_count, size;
+
+	TRACE("Entered squashfs_lookup [%llx:%x]\n", block, offset);
+	dire = kmalloc(sizeof(*dire) + SQUASHFS_NAME_LEN + 1, GFP_KERNEL);
+	if (dire == NULL) {
+		ERROR("Failed to allocate squashfs_dir_entry\n");
+		return ERR_PTR(-ENOMEM);
+	}
+
+	if (len > SQUASHFS_NAME_LEN) {
+		err = -ENAMETOOLONG;
+		goto failed;
+	}
+
+	length = get_dir_index_using_name(dir->i_sb, &block, &offset,
+				squashfs_i(dir)->dir_idx_start,
+				squashfs_i(dir)->dir_idx_offset,
+				squashfs_i(dir)->dir_idx_cnt, name, len);
+
+	while (length < i_size_read(dir)) {
+		/*
+		 * Read directory header.
+		 */
+		err = squashfs_read_metadata(dir->i_sb, &dirh, &block,
+				&offset, sizeof(dirh));
+		if (err < 0)
+			goto read_failure;
+
+		length += sizeof(dirh);
+
+		dir_count = le32_to_cpu(dirh.count) + 1;
+
+		if (dir_count > SQUASHFS_DIR_COUNT)
+			goto data_error;
+
+		while (dir_count--) {
+			/*
+			 * Read directory entry.
+			 */
+			err = squashfs_read_metadata(dir->i_sb, dire, &block,
+					&offset, sizeof(*dire));
+			if (err < 0)
+				goto read_failure;
+
+			size = le16_to_cpu(dire->size) + 1;
+
+			/* size should never be larger than SQUASHFS_NAME_LEN */
+			if (size > SQUASHFS_NAME_LEN)
+				goto data_error;
+
+			err = squashfs_read_metadata(dir->i_sb, dire->name,
+					&block, &offset, size);
+			if (err < 0)
+				goto read_failure;
+
+			length += sizeof(*dire) + size;
+			dire->name[len] = '\0';
+			if (name[0] < dire->name[0])
+				goto exit_lookup;
+
+			if (len == size && !strncmp(name, dire->name, len)) {
+				unsigned int blk, off, ino_num;
+				long long ino;
+				blk = le32_to_cpu(dirh.start_block);
+				off = le16_to_cpu(dire->offset);
+				ino_num = le32_to_cpu(dirh.inode_number) +
+					(short) le16_to_cpu(dire->inode_number);
+				ino = SQUASHFS_MKINODE(blk, off);
+
+				TRACE("calling squashfs_iget for directory "
+					"entry %s, inode  %x:%x, %d\n", name,
+					blk, off, ino_num);
+
+				inode = squashfs_iget(dir->i_sb, ino, ino_num);
+				goto exit_lookup;
+			}
+		}
+	}
+
+exit_lookup:
+	kfree(dire);
+	return inode;
+
+data_error:
+	err = -EIO;
+
+read_failure:
+	ERROR("Unable to read directory block [%llx:%x]\n",
+		squashfs_i(dir)->start + msblk->directory_table,
+		squashfs_i(dir)->offset);
+failed:
+	kfree(dire);
+	return ERR_PTR(err);
+}
+
+int squashfs_lookup_next(struct inode *dir, char *root_name,
+				 char *cur_name)
+{
+	const unsigned char *name = root_name;
+	int len = strlen(root_name);
+	struct squashfs_sb_info *msblk = dir->i_sb->s_fs_info;
+	struct squashfs_dir_header dirh;
+	struct squashfs_dir_entry *dire;
+	u64 block = squashfs_i(dir)->start + msblk->directory_table;
+	int offset = squashfs_i(dir)->offset;
+	int err, length;
+	unsigned int dir_count, size;
+	int name_found = 0, real_name_found = 0;
+
+	TRACE("Entered squashfs_lookup_next [%llx:%x]\n", block, offset);
+
+	dire = kmalloc(sizeof(*dire) + SQUASHFS_NAME_LEN + 1, GFP_KERNEL);
+	if (dire == NULL) {
+		ERROR("Failed to allocate squashfs_dir_entry\n");
+		return -ENOMEM;
+	}
+
+	if (len > SQUASHFS_NAME_LEN) {
+		err = -ENAMETOOLONG;
+		goto failed;
+	}
+
+	length = get_dir_index_using_name(dir->i_sb, &block, &offset,
+				squashfs_i(dir)->dir_idx_start,
+				squashfs_i(dir)->dir_idx_offset,
+				squashfs_i(dir)->dir_idx_cnt, name, len);
+
+	while (length < i_size_read(dir)) {
+		/*
+		 * Read directory header.
+		 */
+		err = squashfs_read_metadata(dir->i_sb, &dirh, &block,
+				&offset, sizeof(dirh));
+		if (err < 0)
+			goto read_failure;
+
+		length += sizeof(dirh);
+
+		dir_count = le32_to_cpu(dirh.count) + 1;
+
+		if (dir_count > SQUASHFS_DIR_COUNT)
+			goto data_error;
+
+		while (dir_count--) {
+			/*
+			 * Read directory entry.
+			 */
+			err = squashfs_read_metadata(dir->i_sb, dire, &block,
+					&offset, sizeof(*dire));
+			if (err < 0)
+				goto read_failure;
+
+			size = le16_to_cpu(dire->size) + 1;
+
+			/* size should never be larger than SQUASHFS_NAME_LEN */
+			if (size > SQUASHFS_NAME_LEN)
+				goto data_error;
+
+			err = squashfs_read_metadata(dir->i_sb, dire->name,
+					&block, &offset, size);
+			if (err < 0)
+				goto read_failure;
+
+			length += sizeof(*dire) + size;
+			dire->name[size] = '\0';
+
+			if (cur_name[0] == '/')
+				name_found = 1;
+
+			if (!strcmp(cur_name, name))
+				name_found = 1;
+
+			if (cur_name[0] != '/'
+			    && strlen(cur_name) == size
+			    && !strncmp(cur_name, dire->name, size)) {
+				name_found = 1;
+				continue;
+			}
+
+			if (name_found) {
+				sprintf(cur_name, "%s", dire->name);
+				real_name_found = 1;
+				goto exit_lookup;
+			}
+		}
+	}
+
+exit_lookup:
+	kfree(dire);
+	return real_name_found ? 0 : 1;
+
+data_error:
+	err = -EIO;
+
+read_failure:
+	ERROR("Unable to read directory block [%llx:%x]\n",
+		squashfs_i(dir)->start + msblk->directory_table,
+		squashfs_i(dir)->offset);
+failed:
+	kfree(dire);
+	return 1;
+}
diff --git a/fs/squashfs/page_actor.c b/fs/squashfs/page_actor.c
new file mode 100644
index 0000000..4eb7308
--- /dev/null
+++ b/fs/squashfs/page_actor.c
@@ -0,0 +1,99 @@
+/*
+ * Copyright (c) 2013
+ * Phillip Lougher <phillip@squashfs.org.uk>
+ *
+ * This work is licensed under the terms of the GNU GPL, version 2. See
+ * the COPYING file in the top-level directory.
+ */
+
+#include <linux/kernel.h>
+#include <linux/pagemap.h>
+#include "page_actor.h"
+
+/*
+ * This file contains implementations of page_actor for decompressing into
+ * an intermediate buffer, and for decompressing directly into the
+ * page cache.
+ *
+ * Calling code should avoid sleeping between calls to squashfs_first_page()
+ * and squashfs_finish_page().
+ */
+
+/* Implementation of page_actor for decompressing into intermediate buffer */
+static void *cache_first_page(struct squashfs_page_actor *actor)
+{
+	actor->next_page = 1;
+	return actor->buffer[0];
+}
+
+static void *cache_next_page(struct squashfs_page_actor *actor)
+{
+	if (actor->next_page == actor->pages)
+		return NULL;
+
+	return actor->buffer[actor->next_page++];
+}
+
+static void cache_finish_page(struct squashfs_page_actor *actor)
+{
+	/* empty */
+}
+
+struct squashfs_page_actor *squashfs_page_actor_init(void **buffer,
+	int pages, int length)
+{
+	struct squashfs_page_actor *actor = kmalloc(sizeof(*actor), GFP_KERNEL);
+
+	if (actor == NULL)
+		return NULL;
+
+	actor->length = length ? : pages * PAGE_CACHE_SIZE;
+	actor->buffer = buffer;
+	actor->pages = pages;
+	actor->next_page = 0;
+	actor->squashfs_first_page = cache_first_page;
+	actor->squashfs_next_page = cache_next_page;
+	actor->squashfs_finish_page = cache_finish_page;
+	return actor;
+}
+
+/* Implementation of page_actor for decompressing directly into page cache. */
+static void *direct_first_page(struct squashfs_page_actor *actor)
+{
+	actor->next_page = 1;
+	return actor->pageaddr = kmap_atomic(actor->page[0]);
+}
+
+static void *direct_next_page(struct squashfs_page_actor *actor)
+{
+	if (actor->pageaddr)
+		kunmap_atomic(actor->pageaddr);
+
+	return actor->pageaddr = actor->next_page == actor->pages ? NULL :
+		kmap_atomic(actor->page[actor->next_page++]);
+}
+
+static void direct_finish_page(struct squashfs_page_actor *actor)
+{
+	if (actor->pageaddr)
+		kunmap_atomic(actor->pageaddr);
+}
+
+struct squashfs_page_actor *squashfs_page_actor_init_special(struct page **page,
+	int pages, int length)
+{
+	struct squashfs_page_actor *actor = kmalloc(sizeof(*actor), GFP_KERNEL);
+
+	if (actor == NULL)
+		return NULL;
+
+	actor->length = length ? : pages * PAGE_CACHE_SIZE;
+	actor->page = page;
+	actor->pages = pages;
+	actor->next_page = 0;
+	actor->pageaddr = NULL;
+	actor->squashfs_first_page = direct_first_page;
+	actor->squashfs_next_page = direct_next_page;
+	actor->squashfs_finish_page = direct_finish_page;
+	return actor;
+}
diff --git a/fs/squashfs/page_actor.h b/fs/squashfs/page_actor.h
new file mode 100644
index 0000000..c07f05f
--- /dev/null
+++ b/fs/squashfs/page_actor.h
@@ -0,0 +1,53 @@
+#ifndef PAGE_ACTOR_H
+#define PAGE_ACTOR_H
+/*
+ * Copyright (c) 2013
+ * Phillip Lougher <phillip@squashfs.org.uk>
+ *
+ * This work is licensed under the terms of the GNU GPL, version 2. See
+ * the COPYING file in the top-level directory.
+ */
+
+#include <malloc.h>
+#include <linux/barebox-wrapper.h>
+#include <linux/pagemap.h>
+
+struct squashfs_page_actor {
+	void	**page;
+	int	pages;
+	int	length;
+	int	next_page;
+};
+
+static inline struct squashfs_page_actor *squashfs_page_actor_init(void **page,
+	int pages, int length)
+{
+	struct squashfs_page_actor *actor = kmalloc(sizeof(*actor), GFP_KERNEL);
+
+	if (actor == NULL)
+		return NULL;
+
+	actor->length = length ? : pages * PAGE_CACHE_SIZE;
+	actor->page = page;
+	actor->pages = pages;
+	actor->next_page = 0;
+	return actor;
+}
+
+static inline void *squashfs_first_page(struct squashfs_page_actor *actor)
+{
+	actor->next_page = 1;
+	return actor->page[0];
+}
+
+static inline void *squashfs_next_page(struct squashfs_page_actor *actor)
+{
+	return actor->next_page == actor->pages ? NULL :
+		actor->page[actor->next_page++];
+}
+
+static inline void squashfs_finish_page(struct squashfs_page_actor *actor)
+{
+	/* empty */
+}
+#endif
diff --git a/fs/squashfs/squashfs.c b/fs/squashfs/squashfs.c
new file mode 100644
index 0000000..da51c3a
--- /dev/null
+++ b/fs/squashfs/squashfs.c
@@ -0,0 +1,325 @@
+#include <common.h>
+#include <malloc.h>
+#include <driver.h>
+#include <init.h>
+#include <errno.h>
+#include <fs.h>
+#include <xfuncs.h>
+
+#include <linux/fs.h>
+#include <linux/stat.h>
+#include <linux/pagemap.h>
+
+#include "squashfs_fs.h"
+#include "squashfs_fs_sb.h"
+#include "squashfs_fs_i.h"
+#include "squashfs.h"
+
+char *squashfs_devread(struct squashfs_sb_info *fs, int byte_offset,
+		int byte_len)
+{
+	ssize_t size;
+	char *buf;
+
+	buf = malloc(byte_len);
+	if (buf == NULL)
+		return NULL;
+
+	size = cdev_read(fs->cdev, buf, byte_len, byte_offset, 0);
+	if (size < 0) {
+		dev_err(fs->dev, "read error: %s\n",
+				strerror(-size));
+		return NULL;
+	}
+
+	return buf;
+}
+
+static struct inode *duplicate_inode(struct inode *inode)
+{
+	struct squashfs_inode_info *ei;
+	ei = malloc(sizeof(struct squashfs_inode_info));
+	if (ei == NULL) {
+		ERROR("Error allocating memory for inode\n");
+		return NULL;
+	}
+	memcpy(ei, squashfs_i(inode),
+		sizeof(struct squashfs_inode_info));
+
+	return &ei->vfs_inode;
+}
+
+struct squashfs_priv {
+	struct super_block *sb;
+};
+
+static struct inode *squashfs_findfile(struct super_block *sb,
+		const char *filename, char *buf)
+{
+	char *next;
+	char fpath[128];
+	char *name = fpath;
+	struct inode *inode;
+	struct inode *t_inode = NULL;
+
+	strcpy(fpath, filename);
+
+	/* Remove all leading slashes */
+	while (*name == '/')
+		name++;
+
+	inode = duplicate_inode(sb->s_root->d_inode);
+
+	/*
+	 * Handle root-direcoty ('/')
+	 */
+	if (!name || *name == '\0')
+		return inode;
+
+	for (;;) {
+		/* Extract the actual part from the pathname.  */
+		next = strchr(name, '/');
+		if (next) {
+			/* Remove all leading slashes.  */
+			while (*next == '/')
+				*(next++) = '\0';
+		}
+
+		t_inode = squashfs_lookup(inode, name, 0);
+		if (t_inode == NULL)
+			break;
+
+		/*
+		 * Check if directory with this name exists
+		 */
+
+		/* Found the node!  */
+		if (!next || *next == '\0') {
+			if (buf != NULL)
+				sprintf(buf, "%s", name);
+
+			free(squashfs_i(inode));
+			return t_inode;
+		}
+
+		name = next;
+
+		free(squashfs_i(inode));
+		inode = t_inode;
+	}
+
+	free(squashfs_i(inode));
+	return NULL;
+}
+
+static int squashfs_probe(struct device_d *dev)
+{
+	struct fs_device_d *fsdev;
+	struct squashfs_priv *priv;
+	int ret;
+
+	fsdev = dev_to_fs_device(dev);
+
+	priv = xmalloc(sizeof(struct squashfs_priv));
+	dev->priv = priv;
+
+	ret = fsdev_open_cdev(fsdev);
+	if (ret)
+		goto err_out;
+
+
+	priv->sb = squashfs_mount(fsdev, 0);
+	if (IS_ERR(priv->sb)) {
+		dev_info(dev, "no valid squashfs found\n");
+		ret = PTR_ERR(priv->sb);
+		goto err_out;
+	}
+
+	return 0;
+
+err_out:
+	free(priv);
+
+	return ret;
+}
+
+static void squashfs_remove(struct device_d *dev)
+{
+	struct squashfs_priv *priv = dev->priv;
+
+	squashfs_put_super(priv->sb);
+	free(priv->sb);
+	free(priv);
+}
+
+static int squashfs_open(struct device_d *dev, FILE *file, const char *filename)
+{
+	struct squashfs_priv *priv = dev->priv;
+	struct inode *inode;
+	struct squashfs_page *page;
+	int i;
+
+	inode = squashfs_findfile(priv->sb, filename, NULL);
+	if (!inode)
+		return -ENOENT;
+
+	page = malloc(sizeof(struct squashfs_page));
+	page->buf = calloc(32, sizeof(*page->buf));
+	for (i = 0; i < 32; i++)
+		page->buf[i] = malloc(PAGE_CACHE_SIZE);
+
+	page->data_block = 0;
+	page->idx = 0;
+	page->real_page.inode = inode;
+	file->size = inode->i_size;
+	file->priv = page;
+
+	return 0;
+}
+
+static int squashfs_close(struct device_d *dev, FILE *f)
+{
+	struct squashfs_page *page = f->priv;
+	int i;
+
+	for (i = 0; i < 32; i++)
+		free(page->buf[i]);
+
+	free(page->buf);
+	free(squashfs_i(page->real_page.inode));
+	free(page);
+
+	return 0;
+}
+
+static int squashfs_read(struct device_d *_dev, FILE *f, void *buf,
+		size_t insize)
+{
+	unsigned int size = insize;
+	int offset, idx;
+	int data_block_pos;
+	struct squashfs_page *page = f->priv;
+
+	if (f->pos >= (page->data_block + 1) * 32 * PAGE_CACHE_SIZE) {
+		page->data_block++;
+		page->idx = 0;
+	}
+
+	data_block_pos = f->pos - page->data_block * 32 * PAGE_CACHE_SIZE;
+	idx = data_block_pos / PAGE_CACHE_SIZE;
+	page->real_page.index = (page->data_block)*32;
+	offset = data_block_pos - idx * PAGE_CACHE_SIZE;
+
+	if (page->idx == 0)
+		squashfs_readpage(NULL, &page->real_page);
+
+	memcpy(buf, page->buf[idx] + offset, size);
+
+	return insize;
+}
+
+static loff_t squashfs_lseek(struct device_d *dev, FILE *f, loff_t pos)
+{
+	f->pos = pos;
+
+	return pos;
+}
+
+struct squashfs_dir {
+	struct file file;
+	struct dentry dentry;
+	struct dentry root_dentry;
+	struct inode inode;
+	struct qstr nm;
+	DIR dir;
+	char d_name[256];
+	char root_d_name[256];
+};
+
+static DIR *squashfs_opendir(struct device_d *dev, const char *pathname)
+{
+	struct squashfs_priv *priv = dev->priv;
+	struct inode *inode;
+	struct squashfs_dir *dir;
+	char buf[256];
+
+	inode = squashfs_findfile(priv->sb, pathname, buf);
+	if (!inode)
+		return NULL;
+
+	dir = xzalloc(sizeof(struct squashfs_dir));
+	dir->dir.priv = dir;
+
+	dir->root_dentry.d_inode = inode;
+
+	sprintf(dir->d_name, "%s", buf);
+	sprintf(dir->root_d_name, "%s", buf);
+
+	return &dir->dir;
+}
+
+static struct dirent *squashfs_readdir(struct device_d *dev, DIR *_dir)
+{
+	struct squashfs_dir *dir = _dir->priv;
+	struct dentry *root_dentry = &dir->root_dentry;
+
+	if (squashfs_lookup_next(root_dentry->d_inode,
+				 dir->root_d_name,
+				 dir->d_name))
+		return NULL;
+
+	strcpy(_dir->d.d_name, dir->d_name);
+
+	return &_dir->d;
+}
+
+static int squashfs_closedir(struct device_d *dev, DIR *_dir)
+{
+	struct squashfs_dir *dir = _dir->priv;
+
+	free(squashfs_i(dir->root_dentry.d_inode));
+	free(dir);
+
+	return 0;
+}
+
+static int squashfs_stat(struct device_d *dev, const char *filename,
+		struct stat *s)
+{
+	struct squashfs_priv *priv = dev->priv;
+	struct inode *inode;
+
+	inode = squashfs_findfile(priv->sb, filename, NULL);
+	if (!inode)
+		return -ENOENT;
+
+	s->st_size = inode->i_size;
+	s->st_mode = inode->i_mode;
+
+	free(squashfs_i(inode));
+
+	return 0;
+}
+
+static struct fs_driver_d squashfs_driver = {
+	.open		= squashfs_open,
+	.close		= squashfs_close,
+	.read		= squashfs_read,
+	.lseek		= squashfs_lseek,
+	.opendir	= squashfs_opendir,
+	.readdir	= squashfs_readdir,
+	.closedir	= squashfs_closedir,
+	.stat		= squashfs_stat,
+	.drv = {
+		.probe = squashfs_probe,
+		.remove = squashfs_remove,
+		.name = "squashfs",
+	}
+};
+
+static int squashfs_init(void)
+{
+	return register_fs_driver(&squashfs_driver);
+}
+
+device_initcall(squashfs_init);
diff --git a/fs/squashfs/squashfs.h b/fs/squashfs/squashfs.h
new file mode 100644
index 0000000..0e3e795
--- /dev/null
+++ b/fs/squashfs/squashfs.h
@@ -0,0 +1,138 @@
+/*
+ * Squashfs - a compressed read only filesystem for Linux
+ *
+ * Copyright (c) 2002, 2003, 2004, 2005, 2006, 2007, 2008
+ * Phillip Lougher <phillip@squashfs.org.uk>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * as published by the Free Software Foundation; either version 2,
+ * or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * squashfs.h
+ */
+
+#include <printk.h>
+#include <fs.h>
+#include <linux/fs.h>
+#include <linux/kernel.h>
+
+#define DEBUG
+#define pgoff_t		unsigned long
+
+/*
+ * We "simulate" the Linux page struct much simpler here
+ */
+struct page {
+	pgoff_t index;
+	void *addr;
+	struct inode *inode;
+};
+
+
+struct squashfs_page {
+	struct page real_page;
+	char **buf;
+	int idx;
+	int data_block;
+};
+
+static inline struct squashfs_page *squashfs_page(struct page *page)
+{
+	return container_of(page, struct squashfs_page, real_page);
+}
+#define TRACE(s, args...)	pr_debug("SQUASHFS: "s, ## args)
+
+#define ERROR(s, args...)	pr_err("SQUASHFS error: "s, ## args)
+
+#define WARNING(s, args...)	pr_warn("SQUASHFS: "s, ## args)
+
+struct inode *iget_locked_squashfs(struct super_block *sb, unsigned long ino);
+char *squashfs_devread(struct squashfs_sb_info *fs, int byte_offset,
+		int byte_len);
+extern struct super_block *squashfs_mount(struct fs_device_d *fsdev,
+		int silent);
+extern void squashfs_put_super(struct super_block *sb);
+
+/* block.c */
+extern int squashfs_read_data(struct super_block *, u64, int, u64 *,
+				struct squashfs_page_actor *);
+
+/* cache.c */
+extern struct squashfs_cache *squashfs_cache_init(char *, int, int);
+extern void squashfs_cache_delete(struct squashfs_cache *);
+extern struct squashfs_cache_entry *squashfs_cache_get(struct super_block *,
+				struct squashfs_cache *, u64, int);
+extern void squashfs_cache_put(struct squashfs_cache_entry *);
+extern int squashfs_copy_data(void *, struct squashfs_cache_entry *, int, int);
+extern int squashfs_read_metadata(struct super_block *, void *, u64 *,
+				int *, int);
+extern struct squashfs_cache_entry *squashfs_get_fragment(struct super_block *,
+				u64, int);
+extern struct squashfs_cache_entry *squashfs_get_datablock(struct super_block *,
+				u64, int);
+extern void *squashfs_read_table(struct super_block *, u64, int);
+
+/* decompressor.c */
+extern const struct squashfs_decompressor *squashfs_lookup_decompressor(int);
+extern void *squashfs_decompressor_setup(struct super_block *, unsigned short);
+
+/* decompressor_xxx.c */
+extern void *squashfs_decompressor_create(struct squashfs_sb_info *, void *);
+extern void squashfs_decompressor_destroy(struct squashfs_sb_info *);
+extern int squashfs_decompress(struct squashfs_sb_info *, char **,
+	int, int, int, struct squashfs_page_actor *);
+extern int squashfs_max_decompressors(void);
+
+/* fragment.c */
+extern int squashfs_frag_lookup(struct super_block *, unsigned int, u64 *);
+extern __le64 *squashfs_read_fragment_index_table(struct super_block *,
+				u64, u64, unsigned int);
+/* file.c */
+void squashfs_copy_cache(struct page *, struct squashfs_cache_entry *, int,
+				int);
+extern int squashfs_readpage(struct file *file, struct page *page);
+
+/* file_xxx.c */
+extern int squashfs_readpage_block(struct page *, u64, int);
+
+/* id.c */
+extern int squashfs_get_id(struct super_block *, unsigned int, unsigned int *);
+extern __le64 *squashfs_read_id_index_table(struct super_block *, u64, u64,
+				unsigned short);
+
+/* inode.c */
+extern struct inode *squashfs_iget(struct super_block *, long long,
+				unsigned int);
+extern int squashfs_read_inode(struct inode *, long long);
+
+/*
+ * Inodes, files,  decompressor and xattr operations
+ */
+
+/* dir.c */
+extern const struct file_operations squashfs_dir_ops;
+
+/* export.c */
+extern const struct export_operations squashfs_export_ops;
+
+/* file.c */
+extern const struct address_space_operations squashfs_aops;
+
+/* inode.c */
+extern const struct inode_operations squashfs_inode_ops;
+
+/* namei.c */
+extern struct inode *squashfs_lookup(struct inode *dir, const char *cur_name,
+				 unsigned int flags);
+extern int squashfs_lookup_next(struct inode *dir,
+		char *root_name, char *cur_name);
+
+/* symlink.c */
+extern const struct address_space_operations squashfs_symlink_aops;
+extern const struct inode_operations squashfs_symlink_inode_ops;
diff --git a/fs/squashfs/squashfs_fs.h b/fs/squashfs/squashfs_fs.h
new file mode 100644
index 0000000..56e7285
--- /dev/null
+++ b/fs/squashfs/squashfs_fs.h
@@ -0,0 +1,453 @@
+#ifndef SQUASHFS_FS
+#define SQUASHFS_FS
+/*
+ * Squashfs
+ *
+ * Copyright (c) 2002, 2003, 2004, 2005, 2006, 2007, 2008
+ * Phillip Lougher <phillip@squashfs.org.uk>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * as published by the Free Software Foundation; either version 2,
+ * or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * squashfs_fs.h
+ */
+
+#define SQUASHFS_CACHED_FRAGMENTS	3
+#define SQUASHFS_MAJOR			4
+#define SQUASHFS_MINOR			0
+#define SQUASHFS_START			0
+
+/* size of metadata (inode and directory) blocks */
+#define SQUASHFS_METADATA_SIZE		8192
+
+/* default size of block device I/O */
+#ifdef CONFIG_SQUASHFS_4K_DEVBLK_SIZE
+#define SQUASHFS_DEVBLK_SIZE 4096
+#else
+#define SQUASHFS_DEVBLK_SIZE 1024
+#endif
+
+#define SQUASHFS_FILE_MAX_SIZE		1048576
+#define SQUASHFS_FILE_MAX_LOG		20
+
+/* Max length of filename (not 255) */
+#define SQUASHFS_NAME_LEN		256
+
+/* Max value for directory header count*/
+#define SQUASHFS_DIR_COUNT		256
+
+#define SQUASHFS_INVALID_FRAG		(0xffffffffU)
+#define SQUASHFS_INVALID_XATTR		(0xffffffffU)
+#define SQUASHFS_INVALID_BLK		(-1LL)
+
+/* Filesystem flags */
+#define SQUASHFS_NOI			0
+#define SQUASHFS_NOD			1
+#define SQUASHFS_NOF			3
+#define SQUASHFS_NO_FRAG		4
+#define SQUASHFS_ALWAYS_FRAG		5
+#define SQUASHFS_DUPLICATE		6
+#define SQUASHFS_EXPORT			7
+#define SQUASHFS_COMP_OPT		10
+
+#define SQUASHFS_BIT(flag, bit)		((flag >> bit) & 1)
+
+#define SQUASHFS_UNCOMPRESSED_INODES(flags)	SQUASHFS_BIT(flags, \
+						SQUASHFS_NOI)
+
+#define SQUASHFS_UNCOMPRESSED_DATA(flags)	SQUASHFS_BIT(flags, \
+						SQUASHFS_NOD)
+
+#define SQUASHFS_UNCOMPRESSED_FRAGMENTS(flags)	SQUASHFS_BIT(flags, \
+						SQUASHFS_NOF)
+
+#define SQUASHFS_NO_FRAGMENTS(flags)		SQUASHFS_BIT(flags, \
+						SQUASHFS_NO_FRAG)
+
+#define SQUASHFS_ALWAYS_FRAGMENTS(flags)	SQUASHFS_BIT(flags, \
+						SQUASHFS_ALWAYS_FRAG)
+
+#define SQUASHFS_DUPLICATES(flags)		SQUASHFS_BIT(flags, \
+						SQUASHFS_DUPLICATE)
+
+#define SQUASHFS_EXPORTABLE(flags)		SQUASHFS_BIT(flags, \
+						SQUASHFS_EXPORT)
+
+#define SQUASHFS_COMP_OPTS(flags)		SQUASHFS_BIT(flags, \
+						SQUASHFS_COMP_OPT)
+
+/* Inode types including extended types */
+#define SQUASHFS_DIR_TYPE		1
+#define SQUASHFS_REG_TYPE		2
+#define SQUASHFS_SYMLINK_TYPE		3
+#define SQUASHFS_BLKDEV_TYPE		4
+#define SQUASHFS_CHRDEV_TYPE		5
+#define SQUASHFS_FIFO_TYPE		6
+#define SQUASHFS_SOCKET_TYPE		7
+#define SQUASHFS_LDIR_TYPE		8
+#define SQUASHFS_LREG_TYPE		9
+#define SQUASHFS_LSYMLINK_TYPE		10
+#define SQUASHFS_LBLKDEV_TYPE		11
+#define SQUASHFS_LCHRDEV_TYPE		12
+#define SQUASHFS_LFIFO_TYPE		13
+#define SQUASHFS_LSOCKET_TYPE		14
+
+/* Max type value stored in directory entry */
+#define SQUASHFS_MAX_DIR_TYPE		7
+
+/* Xattr types */
+#define SQUASHFS_XATTR_USER             0
+#define SQUASHFS_XATTR_TRUSTED          1
+#define SQUASHFS_XATTR_SECURITY         2
+#define SQUASHFS_XATTR_VALUE_OOL        256
+#define SQUASHFS_XATTR_PREFIX_MASK      0xff
+
+/* Flag whether block is compressed or uncompressed, bit is set if block is
+ * uncompressed */
+#define SQUASHFS_COMPRESSED_BIT		(1 << 15)
+
+#define SQUASHFS_COMPRESSED_SIZE(B)	(((B) & ~SQUASHFS_COMPRESSED_BIT) ? \
+		(B) & ~SQUASHFS_COMPRESSED_BIT :  SQUASHFS_COMPRESSED_BIT)
+
+#define SQUASHFS_COMPRESSED(B)		(!((B) & SQUASHFS_COMPRESSED_BIT))
+
+#define SQUASHFS_COMPRESSED_BIT_BLOCK	(1 << 24)
+
+#define SQUASHFS_COMPRESSED_SIZE_BLOCK(B)	((B) & \
+						~SQUASHFS_COMPRESSED_BIT_BLOCK)
+
+#define SQUASHFS_COMPRESSED_BLOCK(B)	(!((B) & SQUASHFS_COMPRESSED_BIT_BLOCK))
+
+/*
+ * Inode number ops.  Inodes consist of a compressed block number, and an
+ * uncompressed offset within that block
+ */
+#define SQUASHFS_INODE_BLK(A)		((unsigned int) ((A) >> 16))
+
+#define SQUASHFS_INODE_OFFSET(A)	((unsigned int) ((A) & 0xffff))
+
+#define SQUASHFS_MKINODE(A, B)		((long long)(((long long) (A)\
+					<< 16) + (B)))
+
+/* fragment and fragment table defines */
+#define SQUASHFS_FRAGMENT_BYTES(A)	\
+				((A) * sizeof(struct squashfs_fragment_entry))
+
+#define SQUASHFS_FRAGMENT_INDEX(A)	(SQUASHFS_FRAGMENT_BYTES(A) / \
+					SQUASHFS_METADATA_SIZE)
+
+#define SQUASHFS_FRAGMENT_INDEX_OFFSET(A)	(SQUASHFS_FRAGMENT_BYTES(A) % \
+						SQUASHFS_METADATA_SIZE)
+
+#define SQUASHFS_FRAGMENT_INDEXES(A)	((SQUASHFS_FRAGMENT_BYTES(A) + \
+					SQUASHFS_METADATA_SIZE - 1) / \
+					SQUASHFS_METADATA_SIZE)
+
+#define SQUASHFS_FRAGMENT_INDEX_BYTES(A)	(SQUASHFS_FRAGMENT_INDEXES(A) *\
+						sizeof(u64))
+
+/* inode lookup table defines */
+#define SQUASHFS_LOOKUP_BYTES(A)	((A) * sizeof(u64))
+
+#define SQUASHFS_LOOKUP_BLOCK(A)	(SQUASHFS_LOOKUP_BYTES(A) / \
+					SQUASHFS_METADATA_SIZE)
+
+#define SQUASHFS_LOOKUP_BLOCK_OFFSET(A)	(SQUASHFS_LOOKUP_BYTES(A) % \
+					SQUASHFS_METADATA_SIZE)
+
+#define SQUASHFS_LOOKUP_BLOCKS(A)	((SQUASHFS_LOOKUP_BYTES(A) + \
+					SQUASHFS_METADATA_SIZE - 1) / \
+					SQUASHFS_METADATA_SIZE)
+
+#define SQUASHFS_LOOKUP_BLOCK_BYTES(A)	(SQUASHFS_LOOKUP_BLOCKS(A) *\
+					sizeof(u64))
+
+/* uid/gid lookup table defines */
+#define SQUASHFS_ID_BYTES(A)		((A) * sizeof(unsigned int))
+
+#define SQUASHFS_ID_BLOCK(A)		(SQUASHFS_ID_BYTES(A) / \
+					SQUASHFS_METADATA_SIZE)
+
+#define SQUASHFS_ID_BLOCK_OFFSET(A)	(SQUASHFS_ID_BYTES(A) % \
+					SQUASHFS_METADATA_SIZE)
+
+#define SQUASHFS_ID_BLOCKS(A)		((SQUASHFS_ID_BYTES(A) + \
+					SQUASHFS_METADATA_SIZE - 1) / \
+					SQUASHFS_METADATA_SIZE)
+
+#define SQUASHFS_ID_BLOCK_BYTES(A)	(SQUASHFS_ID_BLOCKS(A) *\
+					sizeof(u64))
+/* xattr id lookup table defines */
+#define SQUASHFS_XATTR_BYTES(A)		((A) * sizeof(struct squashfs_xattr_id))
+
+#define SQUASHFS_XATTR_BLOCK(A)		(SQUASHFS_XATTR_BYTES(A) / \
+					SQUASHFS_METADATA_SIZE)
+
+#define SQUASHFS_XATTR_BLOCK_OFFSET(A)	(SQUASHFS_XATTR_BYTES(A) % \
+					SQUASHFS_METADATA_SIZE)
+
+#define SQUASHFS_XATTR_BLOCKS(A)	((SQUASHFS_XATTR_BYTES(A) + \
+					SQUASHFS_METADATA_SIZE - 1) / \
+					SQUASHFS_METADATA_SIZE)
+
+#define SQUASHFS_XATTR_BLOCK_BYTES(A)	(SQUASHFS_XATTR_BLOCKS(A) *\
+					sizeof(u64))
+#define SQUASHFS_XATTR_BLK(A)		((unsigned int) ((A) >> 16))
+
+#define SQUASHFS_XATTR_OFFSET(A)	((unsigned int) ((A) & 0xffff))
+
+/* cached data constants for filesystem */
+#define SQUASHFS_CACHED_BLKS		8
+
+/* meta index cache */
+#define SQUASHFS_META_INDEXES	(SQUASHFS_METADATA_SIZE / sizeof(unsigned int))
+#define SQUASHFS_META_ENTRIES	127
+#define SQUASHFS_META_SLOTS	8
+
+struct meta_entry {
+	u64			data_block;
+	unsigned int		index_block;
+	unsigned short		offset;
+	unsigned short		pad;
+};
+
+struct meta_index {
+	unsigned int		inode_number;
+	unsigned int		offset;
+	unsigned short		entries;
+	unsigned short		skip;
+	unsigned short		locked;
+	unsigned short		pad;
+	struct meta_entry	meta_entry[SQUASHFS_META_ENTRIES];
+};
+
+
+/*
+ * definitions for structures on disk
+ */
+#define ZLIB_COMPRESSION	1
+#define LZMA_COMPRESSION	2
+#define LZO_COMPRESSION		3
+#define XZ_COMPRESSION		4
+#define LZ4_COMPRESSION		5
+
+struct squashfs_super_block {
+	__le32			s_magic;
+	__le32			inodes;
+	__le32			mkfs_time;
+	__le32			block_size;
+	__le32			fragments;
+	__le16			compression;
+	__le16			block_log;
+	__le16			flags;
+	__le16			no_ids;
+	__le16			s_major;
+	__le16			s_minor;
+	__le64			root_inode;
+	__le64			bytes_used;
+	__le64			id_table_start;
+	__le64			xattr_id_table_start;
+	__le64			inode_table_start;
+	__le64			directory_table_start;
+	__le64			fragment_table_start;
+	__le64			lookup_table_start;
+};
+
+struct squashfs_dir_index {
+	__le32			index;
+	__le32			start_block;
+	__le32			size;
+	unsigned char		name[0];
+};
+
+struct squashfs_base_inode {
+	__le16			inode_type;
+	__le16			mode;
+	__le16			uid;
+	__le16			guid;
+	__le32			mtime;
+	__le32			inode_number;
+};
+
+struct squashfs_ipc_inode {
+	__le16			inode_type;
+	__le16			mode;
+	__le16			uid;
+	__le16			guid;
+	__le32			mtime;
+	__le32			inode_number;
+	__le32			nlink;
+};
+
+struct squashfs_lipc_inode {
+	__le16			inode_type;
+	__le16			mode;
+	__le16			uid;
+	__le16			guid;
+	__le32			mtime;
+	__le32			inode_number;
+	__le32			nlink;
+	__le32			xattr;
+};
+
+struct squashfs_dev_inode {
+	__le16			inode_type;
+	__le16			mode;
+	__le16			uid;
+	__le16			guid;
+	__le32			mtime;
+	__le32			inode_number;
+	__le32			nlink;
+	__le32			rdev;
+};
+
+struct squashfs_ldev_inode {
+	__le16			inode_type;
+	__le16			mode;
+	__le16			uid;
+	__le16			guid;
+	__le32			mtime;
+	__le32			inode_number;
+	__le32			nlink;
+	__le32			rdev;
+	__le32			xattr;
+};
+
+struct squashfs_symlink_inode {
+	__le16			inode_type;
+	__le16			mode;
+	__le16			uid;
+	__le16			guid;
+	__le32			mtime;
+	__le32			inode_number;
+	__le32			nlink;
+	__le32			symlink_size;
+	char			symlink[0];
+};
+
+struct squashfs_reg_inode {
+	__le16			inode_type;
+	__le16			mode;
+	__le16			uid;
+	__le16			guid;
+	__le32			mtime;
+	__le32			inode_number;
+	__le32			start_block;
+	__le32			fragment;
+	__le32			offset;
+	__le32			file_size;
+	__le16			block_list[0];
+};
+
+struct squashfs_lreg_inode {
+	__le16			inode_type;
+	__le16			mode;
+	__le16			uid;
+	__le16			guid;
+	__le32			mtime;
+	__le32			inode_number;
+	__le64			start_block;
+	__le64			file_size;
+	__le64			sparse;
+	__le32			nlink;
+	__le32			fragment;
+	__le32			offset;
+	__le32			xattr;
+	__le16			block_list[0];
+};
+
+struct squashfs_dir_inode {
+	__le16			inode_type;
+	__le16			mode;
+	__le16			uid;
+	__le16			guid;
+	__le32			mtime;
+	__le32			inode_number;
+	__le32			start_block;
+	__le32			nlink;
+	__le16			file_size;
+	__le16			offset;
+	__le32			parent_inode;
+};
+
+struct squashfs_ldir_inode {
+	__le16			inode_type;
+	__le16			mode;
+	__le16			uid;
+	__le16			guid;
+	__le32			mtime;
+	__le32			inode_number;
+	__le32			nlink;
+	__le32			file_size;
+	__le32			start_block;
+	__le32			parent_inode;
+	__le16			i_count;
+	__le16			offset;
+	__le32			xattr;
+	struct squashfs_dir_index	index[0];
+};
+
+union squashfs_inode {
+	struct squashfs_base_inode		base;
+	struct squashfs_dev_inode		dev;
+	struct squashfs_ldev_inode		ldev;
+	struct squashfs_symlink_inode		symlink;
+	struct squashfs_reg_inode		reg;
+	struct squashfs_lreg_inode		lreg;
+	struct squashfs_dir_inode		dir;
+	struct squashfs_ldir_inode		ldir;
+	struct squashfs_ipc_inode		ipc;
+	struct squashfs_lipc_inode		lipc;
+};
+
+struct squashfs_dir_entry {
+	__le16			offset;
+	__le16			inode_number;
+	__le16			type;
+	__le16			size;
+	char			name[0];
+};
+
+struct squashfs_dir_header {
+	__le32			count;
+	__le32			start_block;
+	__le32			inode_number;
+};
+
+struct squashfs_fragment_entry {
+	__le64			start_block;
+	__le32			size;
+	unsigned int		unused;
+};
+
+struct squashfs_xattr_entry {
+	__le16			type;
+	__le16			size;
+	char			data[0];
+};
+
+struct squashfs_xattr_val {
+	__le32			vsize;
+	char			value[0];
+};
+
+struct squashfs_xattr_id {
+	__le64			xattr;
+	__le32			count;
+	__le32			size;
+};
+
+struct squashfs_xattr_id_table {
+	__le64			xattr_table_start;
+	__le32			xattr_ids;
+	__le32			unused;
+};
+
+#endif
diff --git a/fs/squashfs/squashfs_fs_i.h b/fs/squashfs/squashfs_fs_i.h
new file mode 100644
index 0000000..ad15554
--- /dev/null
+++ b/fs/squashfs/squashfs_fs_i.h
@@ -0,0 +1,52 @@
+#ifndef SQUASHFS_FS_I
+#define SQUASHFS_FS_I
+/*
+ * Squashfs
+ *
+ * Copyright (c) 2002, 2003, 2004, 2005, 2006, 2007, 2008
+ * Phillip Lougher <phillip@squashfs.org.uk>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * as published by the Free Software Foundation; either version 2,
+ * or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * squashfs_fs_i.h
+ */
+
+#include <linux/kernel.h>
+
+struct squashfs_inode_info {
+	u64		start;
+	int		offset;
+	u64		xattr;
+	unsigned int	xattr_size;
+	int		xattr_count;
+	union {
+		struct {
+			u64		fragment_block;
+			int		fragment_size;
+			int		fragment_offset;
+			u64		block_list_start;
+		};
+		struct {
+			u64		dir_idx_start;
+			int		dir_idx_offset;
+			int		dir_idx_cnt;
+			int		parent;
+		};
+	};
+	struct inode	vfs_inode;
+};
+
+
+static inline struct squashfs_inode_info *squashfs_i(struct inode *inode)
+{
+	return container_of(inode, struct squashfs_inode_info, vfs_inode);
+}
+#endif
diff --git a/fs/squashfs/squashfs_fs_sb.h b/fs/squashfs/squashfs_fs_sb.h
new file mode 100644
index 0000000..2b6f81d
--- /dev/null
+++ b/fs/squashfs/squashfs_fs_sb.h
@@ -0,0 +1,82 @@
+#ifndef SQUASHFS_FS_SB
+#define SQUASHFS_FS_SB
+/*
+ * Squashfs
+ *
+ * Copyright (c) 2002, 2003, 2004, 2005, 2006, 2007, 2008
+ * Phillip Lougher <phillip@squashfs.org.uk>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * as published by the Free Software Foundation; either version 2,
+ * or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * squashfs_fs_sb.h
+ */
+
+#include <linux/spinlock.h>
+#include <linux/wait.h>
+#include <linux/mutex.h>
+#include <linux/barebox-wrapper.h>
+#include "squashfs_fs.h"
+
+struct squashfs_cache {
+	char			*name;
+	int			entries;
+	int			curr_blk;
+	int			next_blk;
+	int			num_waiters;
+	int			unused;
+	int			block_size;
+	int			pages;
+	spinlock_t		lock;
+	wait_queue_head_t	wait_queue;
+	struct squashfs_cache_entry *entry;
+};
+
+struct squashfs_cache_entry {
+	u64			block;
+	int			length;
+	int			refcount;
+	u64			next_index;
+	int			pending;
+	int			error;
+	int			num_waiters;
+	wait_queue_head_t	wait_queue;
+	struct squashfs_cache	*cache;
+	void			**data;
+	struct squashfs_page_actor	*actor;
+};
+
+struct squashfs_sb_info {
+	const struct squashfs_decompressor	*decompressor;
+	int					devblksize;
+	int					devblksize_log2;
+	struct squashfs_cache			*block_cache;
+	struct squashfs_cache			*fragment_cache;
+	struct squashfs_cache			*read_page;
+	int					next_meta_index;
+	__le64					*id_table;
+	__le64					*fragment_index;
+	__le64					*xattr_id_table;
+	struct mutex				meta_index_mutex;
+	struct meta_index			*meta_index;
+	struct squashfs_stream			*stream;
+	__le64					*inode_lookup_table;
+	u64					inode_table;
+	u64					directory_table;
+	u64					xattr_table;
+	unsigned int				block_size;
+	unsigned short				block_log;
+	long long				bytes_used;
+	unsigned int				inodes;
+	int					xattr_ids;
+	struct cdev				*cdev;
+	struct device_d				*dev;
+};
+#endif
diff --git a/fs/squashfs/super.c b/fs/squashfs/super.c
new file mode 100644
index 0000000..8303eff
--- /dev/null
+++ b/fs/squashfs/super.c
@@ -0,0 +1,348 @@
+/*
+ * Squashfs - a compressed read only filesystem for Linux
+ *
+ * Copyright (c) 2002, 2003, 2004, 2005, 2006, 2007, 2008
+ * Phillip Lougher <phillip@squashfs.org.uk>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * as published by the Free Software Foundation; either version 2,
+ * or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * super.c
+ */
+
+/*
+ * This file implements code to read the superblock, read and initialise
+ * in-memory structures at mount time, and all the VFS glue code to register
+ * the filesystem.
+ */
+
+#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
+
+#include <errno.h>
+#include <linux/fs.h>
+#include <linux/kernel.h>
+#include <linux/pagemap.h>
+#include <linux/magic.h>
+#include <linux/bitops.h>
+
+#include "page_actor.h"
+#include "squashfs_fs.h"
+#include "squashfs_fs_sb.h"
+#include "squashfs_fs_i.h"
+#include "squashfs.h"
+#include "decompressor.h"
+
+static struct dentry *d_make_root(struct inode *inode)
+{
+	struct dentry *de = malloc(sizeof(struct dentry));
+	de->d_name.name = "/";
+	de->d_name.len = strlen("/");
+	de->d_inode = inode;
+	return de;
+}
+
+static const struct squashfs_decompressor *supported_squashfs_filesystem(short
+	major, short minor, short id)
+{
+	const struct squashfs_decompressor *decompressor;
+
+	if (major < SQUASHFS_MAJOR) {
+		ERROR("Major/Minor mismatch, older Squashfs %d.%d "
+			"filesystems are unsupported\n", major, minor);
+		return NULL;
+	} else if (major > SQUASHFS_MAJOR || minor > SQUASHFS_MINOR) {
+		ERROR("Major/Minor mismatch, trying to mount newer "
+			"%d.%d filesystem\n", major, minor);
+		ERROR("Please update your kernel\n");
+		return NULL;
+	}
+
+	decompressor = squashfs_lookup_decompressor(id);
+	if (!decompressor->supported) {
+		ERROR("Filesystem uses \"%s\" compression. This is not "
+			"supported\n", decompressor->name);
+		return NULL;
+	}
+
+	return decompressor;
+}
+
+void squashfs_put_super(struct super_block *sb)
+{
+	if (sb->s_fs_info) {
+		struct squashfs_sb_info *sbi = sb->s_fs_info;
+		squashfs_cache_delete(sbi->block_cache);
+		squashfs_cache_delete(sbi->fragment_cache);
+		squashfs_cache_delete(sbi->read_page);
+		squashfs_decompressor_destroy(sbi);
+		kfree(sbi->id_table);
+		kfree(sbi->fragment_index);
+		kfree(sbi->meta_index);
+		kfree(sbi->inode_lookup_table);
+		kfree(sbi->xattr_id_table);
+		kfree(sb->s_fs_info);
+		sb->s_fs_info = NULL;
+	}
+
+	if (sb->s_root) {
+		kfree(squashfs_i(sb->s_root->d_inode));
+		kfree(sb->s_root);
+		sb->s_root = NULL;
+	}
+}
+
+static int squashfs_fill_super(struct super_block *sb, void *data, int silent)
+{
+	struct squashfs_sb_info *msblk;
+	struct fs_device_d *fsdev = (struct fs_device_d *)data;
+	struct squashfs_super_block *sblk = NULL;
+	struct inode *root;
+	long long root_inode;
+	unsigned short flags;
+	unsigned int fragments;
+	u64 lookup_table_start, next_table;
+	int err;
+
+	TRACE("Entered squashfs_fill_superblock\n");
+
+	sb->s_fs_info = kzalloc(sizeof(*msblk), GFP_KERNEL);
+	if (sb->s_fs_info == NULL) {
+		ERROR("Failed to allocate squashfs_sb_info\n");
+		return -ENOMEM;
+	}
+	msblk = sb->s_fs_info;
+	msblk->cdev = fsdev->cdev;
+	msblk->dev = &fsdev->dev;
+
+	msblk->devblksize = 1024;
+	msblk->devblksize_log2 = ffz(~msblk->devblksize);
+
+	mutex_init(&msblk->meta_index_mutex);
+	/*
+	 * msblk->bytes_used is checked in squashfs_read_table to ensure reads
+	 * are not beyond filesystem end.  But as we're using
+	 * squashfs_read_table here to read the superblock (including the value
+	 * of bytes_used) we need to set it to an initial sensible dummy value
+	 */
+	msblk->bytes_used = sizeof(*sblk);
+	sblk = squashfs_read_table(sb, SQUASHFS_START, sizeof(*sblk));
+
+	if (IS_ERR(sblk)) {
+		ERROR("unable to read squashfs_super_block\n");
+		err = PTR_ERR(sblk);
+		sblk = NULL;
+		goto failed_mount;
+	}
+
+	err = -EINVAL;
+
+	/* Check it is a SQUASHFS superblock */
+	sb->s_magic = le32_to_cpu(sblk->s_magic);
+	if (sb->s_magic != SQUASHFS_MAGIC) {
+		if (!silent)
+			ERROR("Can't find a SQUASHFS superblock on %pg\n",
+						sb->s_bdev);
+		goto failed_mount;
+	}
+
+	/* Check the MAJOR & MINOR versions and lookup compression type */
+	msblk->decompressor = supported_squashfs_filesystem(
+			le16_to_cpu(sblk->s_major),
+			le16_to_cpu(sblk->s_minor),
+			le16_to_cpu(sblk->compression));
+	if (msblk->decompressor == NULL)
+		goto failed_mount;
+
+	/* Check the filesystem does not extend beyond the end of the
+	   block device */
+	msblk->bytes_used = le64_to_cpu(sblk->bytes_used);
+	if (msblk->bytes_used < 0 || msblk->bytes_used >
+			msblk->cdev->size)
+		goto failed_mount;
+
+	/* Check block size for sanity */
+	msblk->block_size = le32_to_cpu(sblk->block_size);
+	if (msblk->block_size > SQUASHFS_FILE_MAX_SIZE)
+		goto failed_mount;
+
+	/*
+	 * Check the system page size is not larger than the filesystem
+	 * block size (by default 128K).  This is currently not supported.
+	 */
+	if (PAGE_CACHE_SIZE > msblk->block_size) {
+		ERROR("Page size > filesystem block size (%d).  This is "
+			"currently not supported!\n", msblk->block_size);
+		goto failed_mount;
+	}
+
+	/* Check block log for sanity */
+	msblk->block_log = le16_to_cpu(sblk->block_log);
+	if (msblk->block_log > SQUASHFS_FILE_MAX_LOG)
+		goto failed_mount;
+
+	/* Check that block_size and block_log match */
+	if (msblk->block_size != (1 << msblk->block_log))
+		goto failed_mount;
+
+	/* Check the root inode for sanity */
+	root_inode = le64_to_cpu(sblk->root_inode);
+	if (SQUASHFS_INODE_OFFSET(root_inode) > SQUASHFS_METADATA_SIZE)
+		goto failed_mount;
+
+	msblk->inode_table = le64_to_cpu(sblk->inode_table_start);
+	msblk->directory_table = le64_to_cpu(sblk->directory_table_start);
+	msblk->inodes = le32_to_cpu(sblk->inodes);
+	flags = le16_to_cpu(sblk->flags);
+
+	TRACE("Found valid superblock on %pg\n", sb->s_bdev);
+	TRACE("Inodes are %scompressed\n", SQUASHFS_UNCOMPRESSED_INODES(flags)
+				? "un" : "");
+	TRACE("Data is %scompressed\n", SQUASHFS_UNCOMPRESSED_DATA(flags)
+				? "un" : "");
+	TRACE("Filesystem size %lld bytes\n", msblk->bytes_used);
+	TRACE("Block size %d\n", msblk->block_size);
+	TRACE("Number of inodes %d\n", msblk->inodes);
+	TRACE("Number of fragments %d\n", le32_to_cpu(sblk->fragments));
+	TRACE("Number of ids %d\n", le16_to_cpu(sblk->no_ids));
+	TRACE("sblk->inode_table_start %llx\n", msblk->inode_table);
+	TRACE("sblk->directory_table_start %llx\n", msblk->directory_table);
+	TRACE("sblk->fragment_table_start %llx\n",
+		(u64) le64_to_cpu(sblk->fragment_table_start));
+	TRACE("sblk->id_table_start %llx\n",
+		(u64) le64_to_cpu(sblk->id_table_start));
+
+	sb->s_maxbytes = MAX_LFS_FILESIZE;
+	sb->s_flags |= MS_RDONLY;
+
+	err = -ENOMEM;
+
+	msblk->block_cache = squashfs_cache_init("metadata",
+			SQUASHFS_CACHED_BLKS, SQUASHFS_METADATA_SIZE);
+	if (msblk->block_cache == NULL)
+		goto failed_mount;
+
+	/* Allocate read_page block */
+	msblk->read_page = squashfs_cache_init("data",
+		squashfs_max_decompressors(), msblk->block_size);
+	if (msblk->read_page == NULL) {
+		ERROR("Failed to allocate read_page block\n");
+		goto failed_mount;
+	}
+
+	msblk->stream = squashfs_decompressor_setup(sb, flags);
+	if (IS_ERR(msblk->stream)) {
+		err = PTR_ERR(msblk->stream);
+		msblk->stream = NULL;
+		goto failed_mount;
+	}
+
+	next_table = msblk->bytes_used;
+
+	/* Allocate and read id index table */
+	msblk->id_table = squashfs_read_id_index_table(sb,
+		le64_to_cpu(sblk->id_table_start), next_table,
+		le16_to_cpu(sblk->no_ids));
+	if (IS_ERR(msblk->id_table)) {
+		ERROR("unable to read id index table\n");
+		err = PTR_ERR(msblk->id_table);
+		msblk->id_table = NULL;
+		goto failed_mount;
+	}
+	next_table = le64_to_cpu(msblk->id_table[0]);
+
+	/* Handle inode lookup table */
+	lookup_table_start = le64_to_cpu(sblk->lookup_table_start);
+	if (lookup_table_start == SQUASHFS_INVALID_BLK)
+		goto handle_fragments;
+
+handle_fragments:
+	fragments = le32_to_cpu(sblk->fragments);
+	if (fragments == 0)
+		goto check_directory_table;
+	msblk->fragment_cache = squashfs_cache_init("fragment",
+		SQUASHFS_CACHED_FRAGMENTS, msblk->block_size);
+	if (msblk->fragment_cache == NULL) {
+		err = -ENOMEM;
+		goto failed_mount;
+	}
+
+	/* Allocate and read fragment index table */
+	msblk->fragment_index = squashfs_read_fragment_index_table(sb,
+		le64_to_cpu(sblk->fragment_table_start), next_table, fragments);
+	if (IS_ERR(msblk->fragment_index)) {
+		ERROR("unable to read fragment index table\n");
+		err = PTR_ERR(msblk->fragment_index);
+		msblk->fragment_index = NULL;
+		goto failed_mount;
+	}
+	next_table = le64_to_cpu(msblk->fragment_index[0]);
+
+check_directory_table:
+	/* Sanity check directory_table */
+	if (msblk->directory_table > next_table) {
+		err = -EINVAL;
+		goto failed_mount;
+	}
+
+	/* Sanity check inode_table */
+	if (msblk->inode_table >= msblk->directory_table) {
+		err = -EINVAL;
+		goto failed_mount;
+	}
+
+	/* allocate root */
+	root = squashfs_iget(sb, root_inode, 1);
+	if (!root) {
+		err = -ENOMEM;
+		goto failed_mount;
+	}
+
+	sb->s_root = d_make_root(root);
+	if (sb->s_root == NULL) {
+		ERROR("Root inode create failed\n");
+		err = -ENOMEM;
+		goto failed_mount;
+	}
+
+	kfree(sblk);
+
+	return 0;
+
+failed_mount:
+	squashfs_cache_delete(msblk->block_cache);
+	squashfs_cache_delete(msblk->fragment_cache);
+	squashfs_cache_delete(msblk->read_page);
+	squashfs_decompressor_destroy(msblk);
+	kfree(msblk->inode_lookup_table);
+	kfree(msblk->fragment_index);
+	kfree(msblk->id_table);
+	kfree(msblk->xattr_id_table);
+	kfree(sb->s_fs_info);
+	sb->s_fs_info = NULL;
+	kfree(sblk);
+	return err;
+}
+
+
+struct super_block *squashfs_mount(struct fs_device_d *fsdev, int silent)
+{
+	struct super_block *sb;
+
+	dev_info(&fsdev->dev, "squashfs_mount\n");
+
+	sb = xzalloc(sizeof(*sb));
+
+	if (squashfs_fill_super(sb, fsdev, silent)) {
+		kfree(sb);
+		return NULL;
+	}
+
+	return sb;
+}
diff --git a/fs/squashfs/xz_wrapper.c b/fs/squashfs/xz_wrapper.c
new file mode 100644
index 0000000..2659c45
--- /dev/null
+++ b/fs/squashfs/xz_wrapper.c
@@ -0,0 +1,190 @@
+/*
+ * Squashfs - a compressed read only filesystem for Linux
+ *
+ * Copyright (c) 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010
+ * Phillip Lougher <phillip@squashfs.org.uk>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * as published by the Free Software Foundation; either version 2,
+ * or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * xz_wrapper.c
+ */
+
+
+#include <linux/xz.h>
+#include <linux/bitops.h>
+
+#include "squashfs_fs.h"
+#include "squashfs_fs_sb.h"
+#include "squashfs.h"
+#include "decompressor.h"
+#include "page_actor.h"
+
+struct squashfs_xz {
+	struct xz_dec *state;
+	struct xz_buf buf;
+};
+
+struct disk_comp_opts {
+	__le32 dictionary_size;
+	__le32 flags;
+};
+
+struct comp_opts {
+	int dict_size;
+};
+
+static void *squashfs_xz_comp_opts(struct squashfs_sb_info *msblk,
+	void *buff, int len)
+{
+	struct disk_comp_opts *comp_opts = buff;
+	struct comp_opts *opts;
+	int err = 0, n;
+
+	opts = kmalloc(sizeof(*opts), GFP_KERNEL);
+	if (opts == NULL) {
+		err = -ENOMEM;
+		goto out2;
+	}
+
+	if (comp_opts) {
+		/* check compressor options are the expected length */
+		if (len < sizeof(*comp_opts)) {
+			err = -EIO;
+			goto out;
+		}
+
+		opts->dict_size = le32_to_cpu(comp_opts->dictionary_size);
+
+		/* the dictionary size should be 2^n or 2^n+2^(n+1) */
+		n = ffs(opts->dict_size) - 1;
+		if (opts->dict_size != (1 << n) && opts->dict_size != (1 << n) +
+						(1 << (n + 1))) {
+			err = -EIO;
+			goto out;
+		}
+	} else
+		/* use defaults */
+		opts->dict_size = max_t(int, msblk->block_size,
+							SQUASHFS_METADATA_SIZE);
+
+	return opts;
+
+out:
+	kfree(opts);
+out2:
+	return ERR_PTR(err);
+}
+
+
+static void *squashfs_xz_init(struct squashfs_sb_info *msblk, void *buff)
+{
+	struct comp_opts *comp_opts = buff;
+	struct squashfs_xz *stream;
+	int err;
+
+	stream = kmalloc(sizeof(*stream), GFP_KERNEL);
+	if (stream == NULL) {
+		err = -ENOMEM;
+		goto failed;
+	}
+
+	stream->state = xz_dec_init(XZ_PREALLOC, comp_opts->dict_size);
+	if (stream->state == NULL) {
+		kfree(stream);
+		err = -ENOMEM;
+		goto failed;
+	}
+
+#if XZ_INTERNAL_CRC32
+	xz_crc32_init();
+#endif
+
+	return stream;
+
+failed:
+	ERROR("Failed to initialise xz decompressor\n");
+	return ERR_PTR(err);
+}
+
+
+static void squashfs_xz_free(void *strm)
+{
+	struct squashfs_xz *stream = strm;
+
+	if (stream) {
+		xz_dec_end(stream->state);
+		kfree(stream);
+	}
+}
+
+
+static int squashfs_xz_uncompress(struct squashfs_sb_info *msblk, void *strm,
+	char **bh, int b, int offset, int length,
+	struct squashfs_page_actor *output)
+{
+	enum xz_ret xz_err;
+	int avail, total = 0, k = 0;
+	struct squashfs_xz *stream = strm;
+
+	xz_dec_reset(stream->state);
+	stream->buf.in_pos = 0;
+	stream->buf.in_size = 0;
+	stream->buf.out_pos = 0;
+	stream->buf.out_size = PAGE_CACHE_SIZE;
+	stream->buf.out = squashfs_first_page(output);
+
+	do {
+		if (stream->buf.in_pos == stream->buf.in_size && k < b) {
+			avail = min(length, msblk->devblksize - offset);
+			length -= avail;
+			stream->buf.in = bh[k] + offset;
+			stream->buf.in_size = avail;
+			stream->buf.in_pos = 0;
+			offset = 0;
+		}
+
+		if (stream->buf.out_pos == stream->buf.out_size) {
+			stream->buf.out = squashfs_next_page(output);
+			if (stream->buf.out != NULL) {
+				stream->buf.out_pos = 0;
+				total += PAGE_CACHE_SIZE;
+			}
+		}
+
+		xz_err = xz_dec_run(stream->state, &stream->buf);
+
+		if (stream->buf.in_pos == stream->buf.in_size && k < b)
+			kfree(bh[k++]);
+	} while (xz_err == XZ_OK);
+
+	squashfs_finish_page(output);
+
+	if (xz_err != XZ_STREAM_END || k < b)
+		goto out;
+
+	return total + stream->buf.out_pos;
+
+out:
+	for (; k < b; k++)
+		kfree(bh[k]);
+
+	return -EIO;
+}
+
+const struct squashfs_decompressor squashfs_xz_comp_ops = {
+	.init = squashfs_xz_init,
+	.comp_opts = squashfs_xz_comp_opts,
+	.free = squashfs_xz_free,
+	.decompress = squashfs_xz_uncompress,
+	.id = XZ_COMPRESSION,
+	.name = "xz",
+	.supported = 1
+};
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
