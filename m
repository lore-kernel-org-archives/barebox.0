Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1ehCOM-0006IC-1M
 for barebox@lists.infradead.org; Thu, 01 Feb 2018 10:46:56 +0000
From: Philipp Zabel <p.zabel@pengutronix.de>
Date: Thu,  1 Feb 2018 11:46:15 +0100
Message-Id: <20180201104615.19524-5-p.zabel@pengutronix.de>
In-Reply-To: <20180201104615.19524-1-p.zabel@pengutronix.de>
References: <20180201104615.19524-1-p.zabel@pengutronix.de>
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
Subject: [PATCH 4/4] squashfs: Add zstd support
To: barebox@lists.infradead.org

Based on kernel commit 87bf54bb43dd ("squashfs: Add zstd support").

Creating zstd compressed squashfs images is supported by squashfs-tools
newer than commit e38956b92f73 ("squashfs-tools: Add zstd support").

Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
---
 fs/squashfs/Kconfig        |   9 +++
 fs/squashfs/Makefile       |   1 +
 fs/squashfs/decompressor.c |   7 +++
 fs/squashfs/decompressor.h |   4 ++
 fs/squashfs/squashfs_fs.h  |   1 +
 fs/squashfs/zstd_wrapper.c | 147 +++++++++++++++++++++++++++++++++++++++++++++
 6 files changed, 169 insertions(+)
 create mode 100644 fs/squashfs/zstd_wrapper.c

diff --git a/fs/squashfs/Kconfig b/fs/squashfs/Kconfig
index 2362ba14cb..19b8297af6 100644
--- a/fs/squashfs/Kconfig
+++ b/fs/squashfs/Kconfig
@@ -57,3 +57,12 @@ if !SQUASHFS_XZ
 	comment "XZ support disabled"
 endif
 
+config SQUASHFS_ZSTD
+	bool
+	depends on FS_SQUASHFS
+	depends on ZSTD_DECOMPRESS
+	default y
+
+if !SQUASHFS_ZSTD
+	comment "ZSTD support disabled"
+endif
diff --git a/fs/squashfs/Makefile b/fs/squashfs/Makefile
index 7976e3fe5c..077114c49c 100644
--- a/fs/squashfs/Makefile
+++ b/fs/squashfs/Makefile
@@ -14,3 +14,4 @@ obj-$(CONFIG_SQUASHFS_XZ) += xz_wrapper.o
 obj-$(CONFIG_SQUASHFS_LZO) += lzo_wrapper.o
 obj-$(CONFIG_SQUASHFS_LZ4) += lz4_wrapper.o
 obj-$(CONFIG_SQUASHFS_ZLIB) += zlib_wrapper.o
+obj-$(CONFIG_SQUASHFS_ZSTD) += zstd_wrapper.o
diff --git a/fs/squashfs/decompressor.c b/fs/squashfs/decompressor.c
index 558457be05..7eea282a3b 100644
--- a/fs/squashfs/decompressor.c
+++ b/fs/squashfs/decompressor.c
@@ -58,6 +58,12 @@ static const struct squashfs_decompressor squashfs_zlib_comp_ops = {
 };
 #endif
 
+#ifndef CONFIG_SQUASHFS_ZSTD
+static const struct squashfs_decompressor squashfs_zstd_comp_ops = {
+	NULL, NULL, NULL, NULL, ZSTD_COMPRESSION, "zstd", 0
+};
+#endif
+
 static const struct squashfs_decompressor squashfs_unknown_comp_ops = {
 	NULL, NULL, NULL, NULL, 0, "unknown", 0
 };
@@ -68,6 +74,7 @@ static const struct squashfs_decompressor *decompressor[] = {
 	&squashfs_lzo_comp_ops,
 	&squashfs_xz_comp_ops,
 	&squashfs_lzma_unsupported_comp_ops,
+	&squashfs_zstd_comp_ops,
 	&squashfs_unknown_comp_ops
 };
 
diff --git a/fs/squashfs/decompressor.h b/fs/squashfs/decompressor.h
index b09767791f..c5df6fe771 100644
--- a/fs/squashfs/decompressor.h
+++ b/fs/squashfs/decompressor.h
@@ -54,4 +54,8 @@ extern const struct squashfs_decompressor squashfs_lzo_comp_ops;
 extern const struct squashfs_decompressor squashfs_zlib_comp_ops;
 #endif
 
+#ifdef CONFIG_SQUASHFS_ZSTD
+extern const struct squashfs_decompressor squashfs_zstd_comp_ops;
+#endif
+
 #endif
diff --git a/fs/squashfs/squashfs_fs.h b/fs/squashfs/squashfs_fs.h
index 56e728544d..279a3db1bc 100644
--- a/fs/squashfs/squashfs_fs.h
+++ b/fs/squashfs/squashfs_fs.h
@@ -237,6 +237,7 @@ struct meta_index {
 #define LZO_COMPRESSION		3
 #define XZ_COMPRESSION		4
 #define LZ4_COMPRESSION		5
+#define ZSTD_COMPRESSION	6
 
 struct squashfs_super_block {
 	__le32			s_magic;
diff --git a/fs/squashfs/zstd_wrapper.c b/fs/squashfs/zstd_wrapper.c
new file mode 100644
index 0000000000..86740edd48
--- /dev/null
+++ b/fs/squashfs/zstd_wrapper.c
@@ -0,0 +1,147 @@
+/*
+ * Squashfs - a compressed read only filesystem for Linux
+ *
+ * Copyright (c) 2016-present, Facebook, Inc.
+ * All rights reserved.
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
+ * zstd_wrapper.c
+ */
+
+#include <linux/zstd.h>
+
+#include "squashfs_fs.h"
+#include "squashfs_fs_sb.h"
+#include "squashfs.h"
+#include "decompressor.h"
+#include "page_actor.h"
+
+struct workspace {
+	void *mem;
+	size_t mem_size;
+	size_t window_size;
+};
+
+static void *zstd_init(struct squashfs_sb_info *msblk, void *buff)
+{
+	struct workspace *wksp = kmalloc(sizeof(*wksp), GFP_KERNEL);
+
+	if (wksp == NULL)
+		goto failed;
+	wksp->window_size = max_t(size_t,
+			msblk->block_size, SQUASHFS_METADATA_SIZE);
+	wksp->mem_size = ZSTD_DStreamWorkspaceBound(wksp->window_size);
+	wksp->mem = vmalloc(wksp->mem_size);
+	if (wksp->mem == NULL)
+		goto failed;
+
+	return wksp;
+
+failed:
+	ERROR("Failed to allocate zstd workspace\n");
+	kfree(wksp);
+	return ERR_PTR(-ENOMEM);
+}
+
+
+static void zstd_free(void *strm)
+{
+	struct workspace *wksp = strm;
+
+	if (wksp)
+		vfree(wksp->mem);
+	kfree(wksp);
+}
+
+
+static int zstd_uncompress(struct squashfs_sb_info *msblk, void *strm,
+	char **bh, int b, int offset, int length,
+	struct squashfs_page_actor *output)
+{
+	struct workspace *wksp = strm;
+	ZSTD_DStream *stream;
+	size_t total_out = 0;
+	size_t zstd_err;
+	int k = 0;
+	ZSTD_inBuffer in_buf = { NULL, 0, 0 };
+	ZSTD_outBuffer out_buf = { NULL, 0, 0 };
+
+	stream = ZSTD_initDStream(wksp->window_size, wksp->mem, wksp->mem_size);
+
+	if (!stream) {
+		ERROR("Failed to initialize zstd decompressor\n");
+		goto out;
+	}
+
+	out_buf.size = PAGE_SIZE;
+	out_buf.dst = squashfs_first_page(output);
+
+	do {
+		if (in_buf.pos == in_buf.size && k < b) {
+			int avail = min(length, msblk->devblksize - offset);
+
+			length -= avail;
+			in_buf.src = bh[k] + offset;
+			in_buf.size = avail;
+			in_buf.pos = 0;
+			offset = 0;
+		}
+
+		if (out_buf.pos == out_buf.size) {
+			out_buf.dst = squashfs_next_page(output);
+			if (out_buf.dst == NULL) {
+				/* Shouldn't run out of pages
+				 * before stream is done.
+				 */
+				squashfs_finish_page(output);
+				goto out;
+			}
+			out_buf.pos = 0;
+			out_buf.size = PAGE_SIZE;
+		}
+
+		total_out -= out_buf.pos;
+		zstd_err = ZSTD_decompressStream(stream, &out_buf, &in_buf);
+		total_out += out_buf.pos; /* add the additional data produced */
+
+		if (in_buf.pos == in_buf.size && k < b)
+			kfree(bh[k++]);
+	} while (zstd_err != 0 && !ZSTD_isError(zstd_err));
+
+	squashfs_finish_page(output);
+
+	if (ZSTD_isError(zstd_err)) {
+		ERROR("zstd decompression error: %d\n",
+				(int)ZSTD_getErrorCode(zstd_err));
+		goto out;
+	}
+
+	if (k < b)
+		goto out;
+
+	return (int)total_out;
+
+out:
+	for (; k < b; k++)
+		kfree(bh[k]);
+
+	return -EIO;
+}
+
+const struct squashfs_decompressor squashfs_zstd_comp_ops = {
+	.init = zstd_init,
+	.free = zstd_free,
+	.decompress = zstd_uncompress,
+	.id = ZSTD_COMPRESSION,
+	.name = "zstd",
+	.supported = 1
+};
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
