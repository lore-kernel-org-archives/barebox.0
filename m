Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eZXd4-0003kQ-Bp
 for barebox@lists.infradead.org; Thu, 11 Jan 2018 07:50:30 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 11 Jan 2018 08:50:10 +0100
Message-Id: <20180111075012.9050-6-s.hauer@pengutronix.de>
In-Reply-To: <20180111075012.9050-1-s.hauer@pengutronix.de>
References: <20180111075012.9050-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/7] Add support for fastboot sparse images
To: Barebox List <barebox@lists.infradead.org>

This adds support for reading Android fastboot sparse images. This
code is based on the corresponding U-Boot code, but has been heavily
modified to provide a read-like API which better fits into barebox.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/image-sparse.h |  67 +++++++++++++
 lib/Kconfig            |   3 +
 lib/Makefile           |   1 +
 lib/image-sparse.c     | 249 +++++++++++++++++++++++++++++++++++++++++++++++++
 4 files changed, 320 insertions(+)
 create mode 100644 include/image-sparse.h
 create mode 100644 lib/image-sparse.c

diff --git a/include/image-sparse.h b/include/image-sparse.h
new file mode 100644
index 0000000000..29242f4fd5
--- /dev/null
+++ b/include/image-sparse.h
@@ -0,0 +1,67 @@
+/*
+ * This is from the Android Project,
+ * Repository: https://android.googlesource.com/platform/system/core
+ * File: libsparse/sparse_format.h
+ * Commit: 28fa5bc347390480fe190294c6c385b6a9f0d68b
+ * Copyright (C) 2010 The Android Open Source Project
+ *
+ * SPDX-License-Identifier: BSD-3-Clause
+ */
+
+#ifndef _IMAGE_SPARSE_H
+#define _IMAGE_SPARSE_H
+
+struct sparse_header {
+  __le32	magic;		/* 0xed26ff3a */
+  __le16	major_version;	/* (0x1) - reject images with higher major versions */
+  __le16	minor_version;	/* (0x0) - allow images with higer minor versions */
+  __le16	file_hdr_sz;	/* 28 bytes for first revision of the file format */
+  __le16	chunk_hdr_sz;	/* 12 bytes for first revision of the file format */
+  __le32	blk_sz;		/* block size in bytes, must be a multiple of 4 (4096) */
+  __le32	total_blks;	/* total blocks in the non-sparse output image */
+  __le32	total_chunks;	/* total chunks in the sparse input image */
+  __le32	image_checksum; /* CRC32 checksum of the original data, counting "don't care" */
+				/* as 0. Standard 802.3 polynomial, use a Public Domain */
+				/* table implementation */
+};
+
+#define SPARSE_HEADER_MAGIC	0xed26ff3a
+
+#define CHUNK_TYPE_RAW		0xCAC1
+#define CHUNK_TYPE_FILL		0xCAC2
+#define CHUNK_TYPE_DONT_CARE	0xCAC3
+#define CHUNK_TYPE_CRC32    0xCAC4
+
+struct chunk_header {
+  __le16	chunk_type;	/* 0xCAC1 -> raw; 0xCAC2 -> fill; 0xCAC3 -> don't care */
+  __le16	reserved1;
+  __le32	chunk_sz;	/* in blocks in output image */
+  __le32	total_sz;	/* in bytes of chunk input file including chunk header and data */
+};
+
+/* Following a Raw or Fill or CRC32 chunk is data.
+ *  For a Raw chunk, it's the data in chunk_sz * blk_sz.
+ *  For a Fill chunk, it's 4 bytes of the fill data.
+ *  For a CRC32 chunk, it's 4 bytes of CRC32
+ */
+
+static inline int is_sparse_image(const void *buf)
+{
+	const struct sparse_header *s = buf;
+
+	if ((le32_to_cpu(s->magic) == SPARSE_HEADER_MAGIC) &&
+	    (le16_to_cpu(s->major_version) == 1))
+		return 1;
+
+	return 0;
+}
+
+struct sparse_image_ctx;
+
+struct sparse_image_ctx *sparse_image_open(const char *path);
+int sparse_image_read(struct sparse_image_ctx *si, void *buf,
+		      loff_t *pos, size_t len, int *retlen);
+void sparse_image_close(struct sparse_image_ctx *si);
+loff_t sparse_image_size(struct sparse_image_ctx *si);
+
+#endif /* _IMAGE_SPARSE_H */
diff --git a/lib/Kconfig b/lib/Kconfig
index 9562b1b8c2..637b3f1003 100644
--- a/lib/Kconfig
+++ b/lib/Kconfig
@@ -79,6 +79,9 @@ config LIBSCAN
 config LIBUBIGEN
 	bool
 
+config IMAGE_SPARSE
+	bool
+
 config STMP_DEVICE
 	bool
 
diff --git a/lib/Makefile b/lib/Makefile
index 1be1742499..0d5ac6586c 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -32,6 +32,7 @@ obj-$(CONFIG_GENERIC_FIND_NEXT_BIT) += find_next_bit.o
 obj-y			+= glob.o
 obj-y			+= notifier.o
 obj-y			+= random.o
+obj-$(CONFIG_IMAGE_SPARSE) += image-sparse.o
 obj-y			+= lzo/
 obj-$(CONFIG_LZ4_DECOMPRESS) += lz4/
 obj-y			+= show_progress.o
diff --git a/lib/image-sparse.c b/lib/image-sparse.c
new file mode 100644
index 0000000000..7137d15fd0
--- /dev/null
+++ b/lib/image-sparse.c
@@ -0,0 +1,249 @@
+/*
+ * Copyright (c) 2009, Google Inc.
+ * All rights reserved.
+ *
+ * Copyright (c) 2009-2014, The Linux Foundation. All rights reserved.
+ * Portions Copyright 2014 Broadcom Corporation.
+ *
+ * Redistribution and use in source and binary forms, with or without
+ * modification, are permitted provided that the following conditions are met:
+ *     * Redistributions of source code must retain the above copyright
+ *       notice, this list of conditions and the following disclaimer.
+ *     * Redistributions in binary form must reproduce the above copyright
+ *       notice, this list of conditions and the following disclaimer in the
+ *       documentation and/or other materials provided with the distribution.
+ *     * Neither the name of The Linux Foundation nor
+ *       the names of its contributors may be used to endorse or promote
+ *       products derived from this software without specific prior written
+ *       permission.
+ *
+ * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
+ * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
+ * IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
+ * NON-INFRINGEMENT ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT OWNER OR
+ * CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
+ * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
+ * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
+ * OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
+ * WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
+ * OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF
+ * ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
+ *
+ * NOTE:
+ *   Although it is very similar, this license text is not identical
+ *   to the "BSD-3-Clause", therefore, DO NOT MODIFY THIS LICENSE TEXT!
+ */
+#define pr_fmt(fmt)  "image-sparse: " fmt
+
+#include <config.h>
+#include <common.h>
+#include <image-sparse.h>
+#include <unistd.h>
+#include <malloc.h>
+#include <fs.h>
+#include <libfile.h>
+#include <linux/sizes.h>
+
+#include <linux/math64.h>
+
+#ifndef CONFIG_FASTBOOT_FLASH_FILLBUF_SIZE
+#define CONFIG_FASTBOOT_FLASH_FILLBUF_SIZE (1024 * 512)
+#endif
+
+struct sparse_image_ctx {
+	int fd;
+	struct sparse_header sparse;
+	int processed_chunks;
+	struct chunk_header chunk;
+	loff_t pos;
+	size_t remaining;
+	uint32_t fill_val;
+};
+
+int sparse_seek(struct sparse_image_ctx *si)
+{
+	unsigned int chunk_data_sz, payload;
+	loff_t offs;
+	int ret;
+
+again:
+	if (si->processed_chunks == si->sparse.total_chunks)
+		return 0;
+
+	/* Read and skip over chunk header */
+	ret = read_full(si->fd, &si->chunk,
+			sizeof(struct chunk_header));
+	if (ret < 0)
+		return ret;
+	if (ret < sizeof(struct chunk_header))
+		return -EINVAL;
+
+	pr_debug("=== Chunk Header ===\n");
+	pr_debug("chunk_type: 0x%x\n", si->chunk.chunk_type);
+	pr_debug("chunk_data_sz: 0x%x\n", si->chunk.chunk_sz);
+	pr_debug("total_size: 0x%x\n", si->chunk.total_sz);
+
+	if (si->sparse.chunk_hdr_sz > sizeof(struct chunk_header)) {
+		/*
+		 * Skip the remaining bytes in a header that is longer
+		 * than we expected.
+		 */
+		offs = lseek(si->fd, si->sparse.chunk_hdr_sz -
+			 sizeof(struct chunk_header), SEEK_CUR);
+		if (offs == -1)
+			return -errno;
+	}
+
+	chunk_data_sz = si->sparse.blk_sz * si->chunk.chunk_sz;
+	payload = si->chunk.total_sz - si->sparse.chunk_hdr_sz;
+
+	si->processed_chunks++;
+
+	switch (si->chunk.chunk_type) {
+	case CHUNK_TYPE_RAW:
+		if (payload != chunk_data_sz)
+			return -EINVAL;
+
+		si->remaining = payload;
+
+		break;
+
+	case CHUNK_TYPE_FILL:
+		if (payload != sizeof(uint32_t))
+			return -EINVAL;
+
+		ret = read_full(si->fd, &si->fill_val, sizeof(uint32_t));
+		if (ret < 0)
+			return ret;
+		if (ret < sizeof(uint32_t))
+			return -EINVAL;
+
+		si->remaining = chunk_data_sz;
+
+		break;
+
+	case CHUNK_TYPE_DONT_CARE:
+		si->pos += chunk_data_sz;
+		goto again;
+
+	case CHUNK_TYPE_CRC32:
+		if (payload != sizeof(uint32_t))
+			return -EINVAL;
+
+		offs = lseek(si->fd, chunk_data_sz, SEEK_CUR);
+		if (offs == -1)
+			return -EINVAL;
+		goto again;
+
+	default:
+		pr_err("Unknown chunk type 0x%04x",
+				si->chunk.chunk_type);
+		return -EINVAL;
+	}
+
+	return 1;
+}
+
+loff_t sparse_image_size(struct sparse_image_ctx *si)
+{
+	return (loff_t)si->sparse.blk_sz * si->sparse.total_blks;
+}
+
+struct sparse_image_ctx *sparse_image_open(const char *path)
+{
+	struct sparse_image_ctx *si;
+	loff_t offs;
+	int ret;
+
+	si = xzalloc(sizeof(*si));
+
+	si->fd = open(path, O_RDONLY);
+	if (si->fd < 0) {
+		ret = -errno;
+		goto out;
+	}
+
+	/* Read and skip over sparse image header */
+	read(si->fd, &si->sparse, sizeof(struct sparse_header));
+
+	if (si->sparse.file_hdr_sz > sizeof(struct sparse_header)) {
+		/*
+		 * Skip the remaining bytes in a header that is longer than
+		 * we expected.
+		 */
+		offs = lseek(si->fd, si->sparse.file_hdr_sz, SEEK_SET);
+		if (offs == -1) {
+			ret = -errno;
+			goto out;
+		}
+	}
+
+	ret = sparse_seek(si);
+	if (ret < 0)
+		goto out;
+
+	return si;
+out:
+	free(si);
+
+	return ERR_PTR(ret);
+}
+
+int sparse_image_read(struct sparse_image_ctx *si, void *buf, loff_t *pos,
+		      size_t len, int *retlen)
+{
+	size_t now;
+	int ret, i;
+
+	if (si->remaining == 0) {
+		ret = sparse_seek(si);
+		if (ret < 0)
+			return ret;
+		if (ret == 0) {
+			*retlen = 0;
+			return 0;
+		}
+	}
+
+	*pos = si->pos;
+
+	now = min(si->remaining, len);
+
+	switch (si->chunk.chunk_type) {
+	case CHUNK_TYPE_RAW:
+		ret = read_full(si->fd, buf, now);
+		if (ret < 0)
+			return ret;
+		if (ret < now)
+			return -EINVAL;
+
+		break;
+
+	case CHUNK_TYPE_FILL:
+		if (now & 3)
+			return -EINVAL;
+
+		for (i = 0; i < now / sizeof(uint32_t); i++) {
+			uint32_t *buf32 = buf;
+
+			buf32[i] = si->fill_val;
+		}
+
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	si->pos += now;
+	si->remaining -= now;
+
+	*retlen = now;
+
+	return 0;
+}
+
+void sparse_image_close(struct sparse_image_ctx *si)
+{
+	close(si->fd);
+	free(si);
+}
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
