Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 11.mo1.mail-out.ovh.net ([188.165.48.29]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UxZZG-00056y-8d
 for barebox@lists.infradead.org; Fri, 12 Jul 2013 09:23:13 +0000
Received: from mail194.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 297F4FFA3C7
 for <barebox@lists.infradead.org>; Fri, 12 Jul 2013 11:22:48 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 12 Jul 2013 11:22:38 +0200
Message-Id: <1373620959-20431-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1373620959-20431-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130712091455.GD19197@ns203013.ovh.net>
 <1373620959-20431-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/3] lib: Add support for LZ4-compressed kernel
To: barebox@lists.infradead.org
Cc: Kyungsik Lee <kyungsik.lee@lge.com>

From: Kyungsik Lee <kyungsik.lee@lge.com>

This patch adds support for extracting LZ4-compressed kernel images,
as well as LZ4-compressed ramdisk images in the kernel boot process.

This depends on the patch below
decompressor: Add LZ4 decompressor module

Signed-off-by: Kyungsik Lee <kyungsik.lee@lge.com>
Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/filetype.c                |   4 +
 include/filetype.h               |   1 +
 include/linux/decompress/unlz4.h |  10 +++
 lib/Kconfig                      |   4 +
 lib/Makefile                     |   2 +
 lib/decompress_unlz4.c           | 188 +++++++++++++++++++++++++++++++++++++++
 lib/lz4/Makefile                 |   1 +
 lib/lz4/lz4_decompress.c         |   3 +-
 lib/uncompress.c                 |   6 ++
 scripts/Makefile.lib             |   5 ++
 10 files changed, 223 insertions(+), 1 deletion(-)
 create mode 100644 include/linux/decompress/unlz4.h
 create mode 100644 lib/decompress_unlz4.c
 create mode 100644 lib/lz4/Makefile

diff --git a/common/filetype.c b/common/filetype.c
index 1ff3dd2..13c7994 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -33,6 +33,7 @@ static const struct filetype_str filetype_str[] = {
 	[filetype_unknown] = { "unknown", "unkown" },
 	[filetype_arm_zimage] = { "arm Linux zImage", "arm-zimage" },
 	[filetype_lzo_compressed] = { "lzo compressed", "lzo" },
+	[filetype_lz4_compressed] = { "lz4 compressed", "lz4" },
 	[filetype_arm_barebox] = { "arm barebox image", "arm-barebox" },
 	[filetype_uimage] = { "U-Boot uImage", "u-boot" },
 	[filetype_ubi] = { "UBI image", "ubi" },
@@ -195,6 +196,9 @@ enum filetype file_detect_type(const void *_buf, size_t bufsize)
 	if (buf8[0] == 0x89 && buf8[1] == 0x4c && buf8[2] == 0x5a &&
 			buf8[3] == 0x4f)
 		return filetype_lzo_compressed;
+	if (buf8[0] == 0x02 && buf8[1] == 0x21 && buf8[2] == 0x4c &&
+			buf8[3] == 0x18)
+		return filetype_lz4_compressed;
 	if (buf[0] == be32_to_cpu(0x27051956))
 		return filetype_uimage;
 	if (buf[0] == 0x23494255)
diff --git a/include/filetype.h b/include/filetype.h
index c73c64a..1b90805 100644
--- a/include/filetype.h
+++ b/include/filetype.h
@@ -10,6 +10,7 @@ enum filetype {
 	filetype_unknown,
 	filetype_arm_zimage,
 	filetype_lzo_compressed,
+	filetype_lz4_compressed,
 	filetype_arm_barebox,
 	filetype_uimage,
 	filetype_ubi,
diff --git a/include/linux/decompress/unlz4.h b/include/linux/decompress/unlz4.h
new file mode 100644
index 0000000..7aaafc2
--- /dev/null
+++ b/include/linux/decompress/unlz4.h
@@ -0,0 +1,10 @@
+#ifndef DECOMPRESS_UNLZ4_H
+#define DECOMPRESS_UNLZ4_H
+
+int decompress_unlz4(unsigned char *inbuf, int len,
+	int(*fill)(void*, unsigned int),
+	int(*flush)(void*, unsigned int),
+	unsigned char *output,
+	int *pos,
+	void(*error)(char *x));
+#endif
diff --git a/lib/Kconfig b/lib/Kconfig
index 646fdb7..b5ac22a 100644
--- a/lib/Kconfig
+++ b/lib/Kconfig
@@ -14,6 +14,10 @@ config BZLIB
 	bool "include bzip2 uncompression support"
 	select UNCOMPRESS
 
+config LZ4_DECOMPRESS
+	bool "include lz4 uncompression support"
+	select UNCOMPRESS
+
 config GENERIC_FIND_NEXT_BIT
 	def_bool n
 
diff --git a/lib/Makefile b/lib/Makefile
index 7c42537..61f1e63 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -28,8 +28,10 @@ obj-y			+= notifier.o
 obj-y			+= copy_file.o
 obj-y			+= random.o
 obj-y			+= lzo/
+obj-$(CONFIG_LZ4_DECOMPRESS) += lz4/
 obj-y			+= show_progress.o
 obj-$(CONFIG_LZO_DECOMPRESS)		+= decompress_unlzo.o
+obj-$(CONFIG_LZ4_DECOMPRESS) += decompress_unlz4.o
 obj-$(CONFIG_PROCESS_ESCAPE_SEQUENCE)	+= process_escape_sequence.o
 obj-$(CONFIG_UNCOMPRESS)	+= uncompress.o
 obj-$(CONFIG_BCH)	+= bch.o
diff --git a/lib/decompress_unlz4.c b/lib/decompress_unlz4.c
new file mode 100644
index 0000000..894cc37
--- /dev/null
+++ b/lib/decompress_unlz4.c
@@ -0,0 +1,188 @@
+/*
+ * Wrapper for decompressing LZ4-compressed kernel, initramfs, and initrd
+ *
+ * Copyright (C) 2013, LG Electronics, Kyungsik Lee <kyungsik.lee@lge.com>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ */
+
+#ifdef STATIC
+#define PREBOOT
+#include <linux/decompress/mm.h>
+#include "lz4/lz4_decompress.c"
+#else
+#include <linux/decompress/unlz4.h>
+#include <malloc.h>
+#endif
+#include <linux/types.h>
+#include <linux/lz4.h>
+#include <linux/decompress/mm.h>
+#include <linux/compiler.h>
+
+#include <asm/unaligned.h>
+
+/*
+ * Note: Uncompressed chunk size is used in the compressor side
+ * (userspace side for compression).
+ * It is hardcoded because there is not proper way to extract it
+ * from the binary stream which is generated by the preliminary
+ * version of LZ4 tool so far.
+ */
+#define LZ4_DEFAULT_UNCOMPRESSED_CHUNK_SIZE (8 << 20)
+#define ARCHIVE_MAGICNUMBER 0x184C2102
+
+static inline int unlz4(u8 *input, int in_len,
+				int (*fill) (void *, unsigned int),
+				int (*flush) (void *, unsigned int),
+				u8 *output, int *posp,
+				void (*error) (char *x))
+{
+	int ret = -1;
+	size_t chunksize = 0;
+	size_t uncomp_chunksize = LZ4_DEFAULT_UNCOMPRESSED_CHUNK_SIZE;
+	u8 *inp;
+	u8 *inp_start;
+	u8 *outp;
+	int size = in_len;
+#ifdef PREBOOT
+	size_t out_len = get_unaligned_le32(input + in_len);
+#endif
+	size_t dest_len;
+
+
+	if (output) {
+		outp = output;
+	} else if (!flush) {
+		error("NULL output pointer and no flush function provided");
+		goto exit_0;
+	} else {
+		outp = malloc(uncomp_chunksize);
+		if (!outp) {
+			error("Could not allocate output buffer");
+			goto exit_0;
+		}
+	}
+
+	if (input && fill) {
+		error("Both input pointer and fill function provided,");
+		goto exit_1;
+	} else if (input) {
+		inp = input;
+	} else if (!fill) {
+		error("NULL input pointer and missing fill function");
+		goto exit_1;
+	} else {
+		inp = malloc(lz4_compressbound(uncomp_chunksize));
+		if (!inp) {
+			error("Could not allocate input buffer");
+			goto exit_1;
+		}
+	}
+	inp_start = inp;
+
+	if (posp)
+		*posp = 0;
+
+	if (fill)
+		fill(inp, 4);
+
+	chunksize = get_unaligned_le32(inp);
+	if (chunksize == ARCHIVE_MAGICNUMBER) {
+		inp += 4;
+		size -= 4;
+	} else {
+		error("invalid header");
+		goto exit_2;
+	}
+
+	if (posp)
+		*posp += 4;
+
+	for (;;) {
+
+		if (fill)
+			fill(inp, 4);
+
+		chunksize = get_unaligned_le32(inp);
+		if (chunksize == ARCHIVE_MAGICNUMBER) {
+			inp += 4;
+			size -= 4;
+			if (posp)
+				*posp += 4;
+			continue;
+		}
+		inp += 4;
+		size -= 4;
+
+		if (posp)
+			*posp += 4;
+
+		if (fill) {
+			if (chunksize > lz4_compressbound(uncomp_chunksize)) {
+				error("chunk length is longer than allocated");
+				goto exit_2;
+			}
+			fill(inp, chunksize);
+		}
+#ifdef PREBOOT
+		if (out_len >= uncomp_chunksize) {
+			dest_len = uncomp_chunksize;
+			out_len -= dest_len;
+		} else
+			dest_len = out_len;
+		ret = lz4_decompress(inp, &chunksize, outp, dest_len);
+#else
+		dest_len = uncomp_chunksize;
+		ret = lz4_decompress_unknownoutputsize(inp, chunksize, outp,
+				&dest_len);
+#endif
+		if (ret < 0) {
+			error("Decoding failed");
+			goto exit_2;
+		}
+
+		if (flush && flush(outp, dest_len) != dest_len)
+			goto exit_2;
+		if (output)
+			outp += dest_len;
+		if (posp)
+			*posp += chunksize;
+
+		size -= chunksize;
+
+		if (size == 0)
+			break;
+		else if (size < 0) {
+			error("data corrupted");
+			goto exit_2;
+		}
+
+		inp += chunksize;
+		if (fill)
+			inp = inp_start;
+	}
+
+	ret = 0;
+exit_2:
+	if (!input)
+		free(inp_start);
+exit_1:
+	if (!output)
+		free(outp);
+exit_0:
+	return ret;
+}
+
+int decompress_unlz4(unsigned char *buf, int in_len,
+			      int(*fill)(void*, unsigned int),
+			      int(*flush)(void*, unsigned int),
+			      unsigned char *output,
+			      int *posp,
+			      void(*error)(char *x)
+	)
+{
+	return unlz4(buf, in_len - 4, fill, flush, output, posp, error);
+}
+#define decompress decompress_unlz4
diff --git a/lib/lz4/Makefile b/lib/lz4/Makefile
new file mode 100644
index 0000000..7f548c6
--- /dev/null
+++ b/lib/lz4/Makefile
@@ -0,0 +1 @@
+obj-$(CONFIG_LZ4_DECOMPRESS) += lz4_decompress.o
diff --git a/lib/lz4/lz4_decompress.c b/lib/lz4/lz4_decompress.c
index d3414ea..8e64ce6 100644
--- a/lib/lz4/lz4_decompress.c
+++ b/lib/lz4/lz4_decompress.c
@@ -38,10 +38,11 @@
  */
 
 #ifndef STATIC
-#include <linux/module.h>
+#include <module.h>
 #include <linux/kernel.h>
 #endif
 #include <linux/lz4.h>
+#include <linux/string.h>
 
 #include <asm/unaligned.h>
 
diff --git a/lib/uncompress.c b/lib/uncompress.c
index e0a69df..a4225aa 100644
--- a/lib/uncompress.c
+++ b/lib/uncompress.c
@@ -21,6 +21,7 @@
 #include <bunzip2.h>
 #include <gunzip.h>
 #include <lzo.h>
+#include <linux/decompress/unlz4.h>
 #include <errno.h>
 #include <filetype.h>
 #include <malloc.h>
@@ -112,6 +113,11 @@ int uncompress(unsigned char *inbuf, int len,
 		compfn = decompress_unlzo;
 		break;
 #endif
+#ifdef CONFIG_LZ4_DECOMPRESS
+	case filetype_lz4_compressed:
+		compfn = decompress_unlz4;
+		break;
+#endif
 	default:
 		err = asprintf("cannot handle filetype %s", file_type_to_string(ft));
 		error_fn(err);
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index 307412f..722b410 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -289,6 +289,11 @@ cmd_xzmisc = (cat $(filter-out FORCE,$^) | \
 	xz --check=crc32 --lzma2=dict=1MiB) > $@ || \
 	(rm -f $@ ; false)
 
+quiet_cmd_lz4 = LZ4     $@
+cmd_lz4 = (cat $(filter-out FORCE,$^) | \
+	lz4c -l -c1 stdin stdout && $(call size_append, $(filter-out FORCE,$^))) > $@ || \
+	(rm -f $@ ; false)
+
 quiet_cmd_disasm = DISASM  $@
 cmd_disasm = $(OBJDUMP) -d $< > $@
 
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
