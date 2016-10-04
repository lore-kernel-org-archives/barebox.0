Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1brMgy-00036v-Jp
 for barebox@lists.infradead.org; Tue, 04 Oct 2016 10:11:23 +0000
From: Enrico Jorns <ejo@pengutronix.de>
Date: Tue,  4 Oct 2016 12:10:46 +0200
Message-Id: <20161004101048.12970-4-ejo@pengutronix.de>
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
Subject: [PATCH 3/5] fs: squashfs: port zlib compression support from kernel
To: barebox@lists.infradead.org
Cc: Enrico Jorns <ejo@pengutronix.de>

As this is the default compression method for squashfs, make this the
default in kconfig selection, too

Signed-off-by: Enrico Jorns <ejo@pengutronix.de>
---
 fs/squashfs/Kconfig        |  20 ++++++-
 fs/squashfs/Makefile       |   1 +
 fs/squashfs/zlib_wrapper.c | 132 +++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 152 insertions(+), 1 deletion(-)
 create mode 100644 fs/squashfs/zlib_wrapper.c

diff --git a/fs/squashfs/Kconfig b/fs/squashfs/Kconfig
index d2de168..1cb1ac5 100644
--- a/fs/squashfs/Kconfig
+++ b/fs/squashfs/Kconfig
@@ -17,6 +17,19 @@ menuconfig FS_SQUASHFS
 	  embedded systems where low overhead is needed.  Further information
 	  and tools are available from http://squashfs.sourceforge.net.
 
+config SQUASHFS_ZLIB
+	bool "Include support for ZLIB compressed file systems"
+	depends on FS_SQUASHFS
+	select ZLIB
+	default y
+	help
+	  ZLIB compression is the standard compression used by Squashfs
+	  file systems.  It offers a good trade-off between compression
+	  achieved and the amount of CPU time and memory necessary to
+	  compress and decompress.
+
+	  If unsure, say Y.
+
 config SQUASHFS_LZ4
 	bool "Include support for LZ4 compressed file systems"
 	depends on FS_SQUASHFS
@@ -30,9 +43,10 @@ config SQUASHFS_LZ4
 	  LZ4 is not the standard compression used in Squashfs and so most
 	  file systems will be readable without selecting this option.
 
+	  If unsure, say N.
+
 config SQUASHFS_LZO
 	bool "Include support for LZO compressed file systems"
-	default y
 	depends on FS_SQUASHFS
 	select LZO_DECOMPRESS
 	help
@@ -44,6 +58,8 @@ config SQUASHFS_LZO
 	  LZO is not the standard compression used in Squashfs and so most
 	  file systems will be readable without selecting this option.
 
+	  If unsure, say N.
+
 config SQUASHFS_XZ
 	bool "Include support for XZ compressed file systems"
 	default y
@@ -57,3 +73,5 @@ config SQUASHFS_XZ
 
 	  XZ is not the standard compression used in Squashfs and so most
 	  file systems will be readable without selecting this option.
+
+	  If unsure, say N.
diff --git a/fs/squashfs/Makefile b/fs/squashfs/Makefile
index 8590b09..7976e3f 100644
--- a/fs/squashfs/Makefile
+++ b/fs/squashfs/Makefile
@@ -13,3 +13,4 @@ obj-y	+= super.o
 obj-$(CONFIG_SQUASHFS_XZ) += xz_wrapper.o
 obj-$(CONFIG_SQUASHFS_LZO) += lzo_wrapper.o
 obj-$(CONFIG_SQUASHFS_LZ4) += lz4_wrapper.o
+obj-$(CONFIG_SQUASHFS_ZLIB) += zlib_wrapper.o
diff --git a/fs/squashfs/zlib_wrapper.c b/fs/squashfs/zlib_wrapper.c
new file mode 100644
index 0000000..f422515
--- /dev/null
+++ b/fs/squashfs/zlib_wrapper.c
@@ -0,0 +1,132 @@
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
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301, USA.
+ *
+ * zlib_wrapper.c
+ */
+
+
+#include <linux/mutex.h>
+#include <linux/zlib.h>
+
+#include "squashfs_fs.h"
+#include "squashfs_fs_sb.h"
+#include "squashfs.h"
+#include "decompressor.h"
+#include "page_actor.h"
+
+static void *zlib_init(struct squashfs_sb_info *dummy, void *buff)
+{
+	z_stream *stream = kmalloc(sizeof(z_stream), GFP_KERNEL);
+	if (stream == NULL)
+		goto failed;
+	stream->workspace = vmalloc(zlib_inflate_workspacesize());
+	if (stream->workspace == NULL)
+		goto failed;
+
+	return stream;
+
+failed:
+	ERROR("Failed to allocate zlib workspace\n");
+	kfree(stream);
+	return ERR_PTR(-ENOMEM);
+}
+
+
+static void zlib_free(void *strm)
+{
+	z_stream *stream = strm;
+
+	if (stream)
+		vfree(stream->workspace);
+	kfree(stream);
+}
+
+
+static int zlib_uncompress(struct squashfs_sb_info *msblk, void *strm,
+	char **bh, int b, int offset, int length,
+	struct squashfs_page_actor *output)
+{
+	int zlib_err, zlib_init = 0, k = 0;
+	z_stream *stream = strm;
+
+	stream->avail_out = PAGE_CACHE_SIZE;
+	stream->next_out = squashfs_first_page(output);
+	stream->avail_in = 0;
+
+	do {
+		if (stream->avail_in == 0 && k < b) {
+			int avail = min(length, msblk->devblksize - offset);
+			length -= avail;
+			stream->next_in = bh[k] + offset;
+			stream->avail_in = avail;
+			offset = 0;
+		}
+
+		if (stream->avail_out == 0) {
+			stream->next_out = squashfs_next_page(output);
+			if (stream->next_out != NULL)
+				stream->avail_out = PAGE_CACHE_SIZE;
+		}
+
+		if (!zlib_init) {
+			zlib_err = zlib_inflateInit(stream);
+			if (zlib_err != Z_OK) {
+				squashfs_finish_page(output);
+				goto out;
+			}
+			zlib_init = 1;
+		}
+
+		zlib_err = zlib_inflate(stream, Z_SYNC_FLUSH);
+
+		if (stream->avail_in == 0 && k < b)
+			kfree(bh[k++]);
+	} while (zlib_err == Z_OK);
+
+	squashfs_finish_page(output);
+
+	if (zlib_err != Z_STREAM_END)
+		goto out;
+
+	zlib_err = zlib_inflateEnd(stream);
+	if (zlib_err != Z_OK)
+		goto out;
+
+	if (k < b)
+		goto out;
+
+	return stream->total_out;
+
+out:
+	for (; k < b; k++)
+		kfree(bh[k]);
+
+	return -EIO;
+}
+
+const struct squashfs_decompressor squashfs_zlib_comp_ops = {
+	.init = zlib_init,
+	.free = zlib_free,
+	.decompress = zlib_uncompress,
+	.id = ZLIB_COMPRESSION,
+	.name = "zlib",
+	.supported = 1
+};
+
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
