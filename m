Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1brMgv-00036r-1H
 for barebox@lists.infradead.org; Tue, 04 Oct 2016 10:11:18 +0000
From: Enrico Jorns <ejo@pengutronix.de>
Date: Tue,  4 Oct 2016 12:10:44 +0200
Message-Id: <20161004101048.12970-2-ejo@pengutronix.de>
In-Reply-To: <20161004101048.12970-1-ejo@pengutronix.de>
References: <20161004101048.12970-1-ejo@pengutronix.de>
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
Subject: [PATCH 1/5] fs: squashfs: port lzo compression support from kernel
To: barebox@lists.infradead.org
Cc: Enrico Jorns <ejo@pengutronix.de>

This ports lzo_wrapper from kernel code and adds some minimal adaptions
to make squashfs lzo compression work in barebox.

Signed-off-by: Enrico Jorns <ejo@pengutronix.de>
---
 fs/squashfs/Kconfig       |  14 +++++
 fs/squashfs/Makefile      |   1 +
 fs/squashfs/lzo_wrapper.c | 128 ++++++++++++++++++++++++++++++++++++++++++++++
 include/linux/lzo.h       |  47 +++++++++++++++++
 4 files changed, 190 insertions(+)
 create mode 100644 fs/squashfs/lzo_wrapper.c
 create mode 100644 include/linux/lzo.h

diff --git a/fs/squashfs/Kconfig b/fs/squashfs/Kconfig
index dc25d93..d8ee554 100644
--- a/fs/squashfs/Kconfig
+++ b/fs/squashfs/Kconfig
@@ -17,6 +17,20 @@ menuconfig FS_SQUASHFS
 	  embedded systems where low overhead is needed.  Further information
 	  and tools are available from http://squashfs.sourceforge.net.
 
+config SQUASHFS_LZO
+	bool "Include support for LZO compressed file systems"
+	default y
+	depends on FS_SQUASHFS
+	select LZO_DECOMPRESS
+	help
+	  Saying Y here includes support for reading Squashfs file systems
+	  compressed with LZO compression.  LZO compression is mainly
+	  aimed at embedded systems with slower CPUs where the overheads
+	  of zlib are too high.
+
+	  LZO is not the standard compression used in Squashfs and so most
+	  file systems will be readable without selecting this option.
+
 config SQUASHFS_XZ
 	bool "Include support for XZ compressed file systems"
 	default y
diff --git a/fs/squashfs/Makefile b/fs/squashfs/Makefile
index c0d024c..447e15e 100644
--- a/fs/squashfs/Makefile
+++ b/fs/squashfs/Makefile
@@ -11,3 +11,4 @@ obj-y	+= inode.o
 obj-y	+= namei.o
 obj-y	+= super.o
 obj-$(CONFIG_SQUASHFS_XZ) += xz_wrapper.o
+obj-$(CONFIG_SQUASHFS_LZO) += lzo_wrapper.o
diff --git a/fs/squashfs/lzo_wrapper.c b/fs/squashfs/lzo_wrapper.c
new file mode 100644
index 0000000..b457955
--- /dev/null
+++ b/fs/squashfs/lzo_wrapper.c
@@ -0,0 +1,128 @@
+/*
+ * Squashfs - a compressed read only filesystem for Linux
+ *
+ * Copyright (c) 2010 LG Electronics
+ * Chan Jeong <chan.jeong@lge.com>
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
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301, USA.
+ *
+ * lzo_wrapper.c
+ */
+
+#include <linux/mutex.h>
+#include <linux/lzo.h>
+#include <types.h>
+
+#include "squashfs_fs.h"
+#include "squashfs_fs_sb.h"
+#include "squashfs.h"
+#include "decompressor.h"
+#include "page_actor.h"
+
+struct squashfs_lzo {
+	void	*input;
+	void	*output;
+};
+
+static void *lzo_init(struct squashfs_sb_info *msblk, void *buff)
+{
+	int block_size = max_t(int, msblk->block_size, SQUASHFS_METADATA_SIZE);
+
+	struct squashfs_lzo *stream = kzalloc(sizeof(*stream), GFP_KERNEL);
+	if (stream == NULL)
+		goto failed;
+	stream->input = vmalloc(block_size);
+	if (stream->input == NULL)
+		goto failed;
+	stream->output = vmalloc(block_size);
+	if (stream->output == NULL)
+		goto failed2;
+
+	return stream;
+
+failed2:
+	vfree(stream->input);
+failed:
+	ERROR("Failed to allocate lzo workspace\n");
+	kfree(stream);
+	return ERR_PTR(-ENOMEM);
+}
+
+
+static void lzo_free(void *strm)
+{
+	struct squashfs_lzo *stream = strm;
+
+	if (stream) {
+		vfree(stream->input);
+		vfree(stream->output);
+	}
+	kfree(stream);
+}
+
+
+static int lzo_uncompress(struct squashfs_sb_info *msblk, void *strm,
+	char **bh, int b, int offset, int length,
+	struct squashfs_page_actor *output)
+{
+	struct squashfs_lzo *stream = strm;
+	void *buff = stream->input, *data;
+	int avail, i, bytes = length, res;
+	size_t out_len = output->length;
+
+	for (i = 0; i < b; i++) {
+		avail = min(bytes, msblk->devblksize - offset);
+		memcpy(buff, bh[i] + offset, avail);
+		buff += avail;
+		bytes -= avail;
+		offset = 0;
+		kfree(bh[i]);
+	}
+
+	res = lzo1x_decompress_safe(stream->input, (size_t)length,
+					stream->output, &out_len);
+	if (res != LZO_E_OK)
+		goto failed;
+
+	res = bytes = (int)out_len;
+	data = squashfs_first_page(output);
+	buff = stream->output;
+	while (data) {
+		if (bytes <= PAGE_CACHE_SIZE) {
+			memcpy(data, buff, bytes);
+			break;
+		} else {
+			memcpy(data, buff, PAGE_CACHE_SIZE);
+			buff += PAGE_CACHE_SIZE;
+			bytes -= PAGE_CACHE_SIZE;
+			data = squashfs_next_page(output);
+		}
+	}
+	squashfs_finish_page(output);
+
+	return res;
+
+failed:
+	return -EIO;
+}
+
+const struct squashfs_decompressor squashfs_lzo_comp_ops = {
+	.init = lzo_init,
+	.free = lzo_free,
+	.decompress = lzo_uncompress,
+	.id = LZO_COMPRESSION,
+	.name = "lzo",
+	.supported = 1
+};
diff --git a/include/linux/lzo.h b/include/linux/lzo.h
new file mode 100644
index 0000000..ae52d79
--- /dev/null
+++ b/include/linux/lzo.h
@@ -0,0 +1,47 @@
+#ifndef __LZO_H__
+#define __LZO_H__
+/*
+ *  LZO Public Kernel Interface
+ *  A mini subset of the LZO real-time data compression library
+ *
+ *  Copyright (C) 1996-2012 Markus F.X.J. Oberhumer <markus@oberhumer.com>
+ *
+ *  The full LZO package can be found at:
+ *  http://www.oberhumer.com/opensource/lzo/
+ *
+ *  Changed for Linux kernel use by:
+ *  Nitin Gupta <nitingupta910@gmail.com>
+ *  Richard Purdie <rpurdie@openedhand.com>
+ */
+
+#include <types.h>
+
+#define LZO1X_1_MEM_COMPRESS	(8192 * sizeof(unsigned short))
+#define LZO1X_MEM_COMPRESS	LZO1X_1_MEM_COMPRESS
+
+#define lzo1x_worst_compress(x) ((x) + ((x) / 16) + 64 + 3)
+
+/* This requires 'wrkmem' of size LZO1X_1_MEM_COMPRESS */
+int lzo1x_1_compress(const unsigned char *src, size_t src_len,
+		     unsigned char *dst, size_t *dst_len, void *wrkmem);
+
+/* safe decompression with overrun testing */
+int lzo1x_decompress_safe(const unsigned char *src, size_t src_len,
+			  unsigned char *dst, size_t *dst_len);
+
+/*
+ * Return values (< 0 = Error)
+ */
+#define LZO_E_OK			0
+#define LZO_E_ERROR			(-1)
+#define LZO_E_OUT_OF_MEMORY		(-2)
+#define LZO_E_NOT_COMPRESSIBLE		(-3)
+#define LZO_E_INPUT_OVERRUN		(-4)
+#define LZO_E_OUTPUT_OVERRUN		(-5)
+#define LZO_E_LOOKBEHIND_OVERRUN	(-6)
+#define LZO_E_EOF_NOT_FOUND		(-7)
+#define LZO_E_INPUT_NOT_CONSUMED	(-8)
+#define LZO_E_NOT_YET_IMPLEMENTED	(-9)
+#define LZO_E_INVALID_ARGUMENT		(-10)
+
+#endif
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
