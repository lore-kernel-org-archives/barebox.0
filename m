Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NwBP1-00088j-BM
	for barebox@lists.infradead.org; Mon, 29 Mar 2010 09:37:01 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 29 Mar 2010 11:36:17 +0200
Message-Id: <1269855383-22716-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1269855383-22716-1-git-send-email-s.hauer@pengutronix.de>
References: <1269855383-22716-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/12] add unlzo support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/Kconfig           |    8 ++
 commands/Makefile          |    1 +
 commands/unlzo.c           |   69 ++++++++++++
 include/lzo.h              |   46 ++++++++
 lib/Kconfig                |    2 +
 lib/Makefile               |    2 +
 lib/decompress_unlzo.c     |  199 +++++++++++++++++++++++++++++++++++
 lib/lzo/Kconfig            |    6 +
 lib/lzo/Makefile           |    4 +
 lib/lzo/lzo1x_compress.c   |  226 ++++++++++++++++++++++++++++++++++++++++
 lib/lzo/lzo1x_decompress.c |  247 ++++++++++++++++++++++++++++++++++++++++++++
 lib/lzo/lzodefs.h          |   43 ++++++++
 lib/lzo/modules.builtin    |    2 +
 13 files changed, 855 insertions(+), 0 deletions(-)
 create mode 100644 commands/unlzo.c
 create mode 100644 include/lzo.h
 create mode 100644 lib/decompress_unlzo.c
 create mode 100644 lib/lzo/Kconfig
 create mode 100644 lib/lzo/Makefile
 create mode 100644 lib/lzo/lzo1x_compress.c
 create mode 100644 lib/lzo/lzo1x_decompress.c
 create mode 100644 lib/lzo/lzodefs.h
 create mode 100644 lib/lzo/modules.builtin

diff --git a/commands/Kconfig b/commands/Kconfig
index bb264fc..543ee71 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -300,4 +300,12 @@ config CMD_GPIO
 	  include gpio_set_value, gpio_get_value, gpio_direction_input and
 	  gpio_direction_output commands to control gpios.
 
+config CMD_UNLZO
+	bool
+	select LZO_DECOMPRESS
+	prompt "unlzo"
+	help
+	  Say yes here to get the unlzo command. lzo is a fast compression
+	  algorithm by Markus Franz Xaver Johannes Oberhumer.
+
 endmenu
diff --git a/commands/Makefile b/commands/Makefile
index b32fa05..74b0994 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -47,3 +47,4 @@ obj-$(CONFIG_CMD_INSMOD)	+= insmod.o
 obj-$(CONFIG_CMD_BMP)		+= bmp.o
 obj-$(CONFIG_USB_GADGET_DFU)	+= dfu.o
 obj-$(CONFIG_CMD_GPIO)		+= gpio.o
+obj-$(CONFIG_CMD_UNLZO)		+= unlzo.o
diff --git a/commands/unlzo.c b/commands/unlzo.c
new file mode 100644
index 0000000..0b6dd4b
--- /dev/null
+++ b/commands/unlzo.c
@@ -0,0 +1,69 @@
+/*
+ * unlzo.c - uncompress a lzo compressed file
+ *
+ * Copyright (c) 2010 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
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
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
+ */
+
+#include <common.h>
+#include <command.h>
+#include <errno.h>
+#include <fcntl.h>
+#include <fs.h>
+#include <lzo.h>
+
+static int do_unlzo(struct command *cmdtp, int argc, char *argv[])
+{
+	int from, to, ret, retlen;
+
+	if (argc != 3)
+		return COMMAND_ERROR_USAGE;
+
+	from = open(argv[1], O_RDONLY);
+	if (from < 0) {
+		perror("open");
+		return 1;
+	}
+
+	to = open(argv[2], O_WRONLY | O_CREAT);
+	if (to < 0) {
+		perror("open");
+		ret = 1;
+		goto exit_close;
+	}
+
+	ret = unlzo(from, to, &retlen);
+	if (ret)
+		printf("failed to decompress\n");
+
+	close(to);
+exit_close:
+	close(from);
+	return ret;
+}
+
+static const __maybe_unused char cmd_unlzo_help[] =
+"Usage: unlzo <infile> <outfile>\n"
+"Uncompress a lzo compressed file\n";
+
+BAREBOX_CMD_START(unlzo)
+        .cmd            = do_unlzo,
+        .usage          = "lzop <infile> <outfile>",
+        BAREBOX_CMD_HELP(cmd_unlzo_help)
+BAREBOX_CMD_END
+
diff --git a/include/lzo.h b/include/lzo.h
new file mode 100644
index 0000000..5694985
--- /dev/null
+++ b/include/lzo.h
@@ -0,0 +1,46 @@
+#ifndef __LZO_H__
+#define __LZO_H__
+/*
+ *  LZO Public Kernel Interface
+ *  A mini subset of the LZO real-time data compression library
+ *
+ *  Copyright (C) 1996-2005 Markus F.X.J. Oberhumer <markus@oberhumer.com>
+ *
+ *  The full LZO package can be found at:
+ *  http://www.oberhumer.com/opensource/lzo/
+ *
+ *  Changed for kernel use by:
+ *  Nitin Gupta <nitingupta910@gmail.com>
+ *  Richard Purdie <rpurdie@openedhand.com>
+ */
+
+#define LZO1X_MEM_COMPRESS	(16384 * sizeof(unsigned char *))
+#define LZO1X_1_MEM_COMPRESS	LZO1X_MEM_COMPRESS
+
+#define lzo1x_worst_compress(x) ((x) + ((x) / 16) + 64 + 3)
+
+/* This requires 'workmem' of size LZO1X_1_MEM_COMPRESS */
+int lzo1x_1_compress(const unsigned char *src, size_t src_len,
+			unsigned char *dst, size_t *dst_len, void *wrkmem);
+
+/* safe decompression with overrun testing */
+int lzo1x_decompress_safe(const unsigned char *src, size_t src_len,
+			unsigned char *dst, size_t *dst_len);
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
+
+int unlzo(int in_fd, int out_fd, int *dest_len);
+
+#endif
diff --git a/lib/Kconfig b/lib/Kconfig
index c272078..90cf784 100644
--- a/lib/Kconfig
+++ b/lib/Kconfig
@@ -13,3 +13,5 @@ config CRC16
 config GENERIC_FIND_NEXT_BIT
 	def_bool n
 
+source lib/lzo/Kconfig
+
diff --git a/lib/Makefile b/lib/Makefile
index b532690..74f7d82 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -28,3 +28,5 @@ obj-$(CONFIG_GENERIC_FIND_NEXT_BIT) += find_next_bit.o
 obj-y			+= glob.o
 obj-y			+= notifier.o
 obj-y			+= copy_file.o
+obj-y			+= lzo/
+obj-y			+= decompress_unlzo.o
diff --git a/lib/decompress_unlzo.c b/lib/decompress_unlzo.c
new file mode 100644
index 0000000..8f9cdcf
--- /dev/null
+++ b/lib/decompress_unlzo.c
@@ -0,0 +1,199 @@
+/*
+ * LZO decompressor for barebox. Code borrowed from the lzo
+ * implementation by Markus Franz Xaver Johannes Oberhumer.
+ *
+ * Linux kernel adaptation:
+ * Copyright (C) 2009
+ * Albin Tonnerre, Free Electrons <albin.tonnerre@free-electrons.com>
+ *
+ * Original code:
+ * Copyright (C) 1996-2005 Markus Franz Xaver Johannes Oberhumer
+ * All Rights Reserved.
+ *
+ * lzop and the LZO library are free software; you can redistribute them
+ * and/or modify them under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; see the file COPYING.
+ * If not, write to the Free Software Foundation, Inc.,
+ * 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.
+ *
+ * Markus F.X.J. Oberhumer
+ * <markus@oberhumer.com>
+ * http://www.oberhumer.com/opensource/lzop/
+ */
+
+#include <common.h>
+#include <malloc.h>
+#include <linux/types.h>
+#include <lzo.h>
+#include <errno.h>
+#include <fs.h>
+#include <xfuncs.h>
+
+#include <linux/compiler.h>
+#include <asm/unaligned.h>
+
+static const unsigned char lzop_magic[] = {
+	0x89, 0x4c, 0x5a, 0x4f, 0x00, 0x0d, 0x0a, 0x1a, 0x0a };
+
+#define LZO_BLOCK_SIZE        (256*1024l)
+#define HEADER_HAS_FILTER      0x00000800L
+
+static inline int parse_header(int in_fd)
+{
+	u8 l;
+	u16 version;
+	int ret;
+	unsigned char buf[256]; /* maximum filename length + 1 */
+
+	/* read magic (9), library version (2), 'need to be extracted'
+	 * version (2) and method (1)
+	 */
+	ret = read(in_fd, buf, 9);
+	if (ret < 0)
+		return ret;
+
+	/* check magic */
+	for (l = 0; l < 9; l++) {
+		if (buf[l] != lzop_magic[l])
+			return -EINVAL;
+	}
+
+	ret = read(in_fd, buf, 4); /* version, lib_version */
+	if (ret < 0)
+		return ret;
+	version = get_unaligned_be16(buf);
+
+	if (version >= 0x0940) {
+		ret = read(in_fd, buf, 2); /* version to extract */
+		if (ret < 0)
+			return ret;
+	}
+
+	ret = read(in_fd, buf, 1); /* method */
+	if (ret < 0)
+		return ret;
+
+	if (version >= 0x0940)
+		read(in_fd, buf, 1); /* level */
+
+	ret = read(in_fd, buf, 4); /* flags */
+	if (ret < 0)
+		return ret;
+
+	if (get_unaligned_be32(buf) & HEADER_HAS_FILTER) {
+		ret = read(in_fd, buf, 4); /* skip filter info */
+		if (ret < 0)
+			return ret;
+	}
+
+	/* skip mode and mtime_low */
+	ret = read(in_fd, buf, 8);
+	if (ret < 0)
+		return ret;
+
+	if (version >= 0x0940) {
+		ret = read(in_fd, buf, 4); /* skip mtime_high */
+		if (ret < 0)
+			return ret;
+	}
+
+	ret = read(in_fd, &l, 1);
+	if (ret < 0)
+		return ret;
+	/* don't care about the file name, and skip checksum */
+	ret = read(in_fd, buf, l + 4);
+	if (ret < 0)
+		return ret;
+
+	return 0;
+}
+
+int unlzo(int in_fd, int out_fd, int *dest_len)
+{
+	u8 r = 0;
+	u32 src_len, dst_len;
+	size_t tmp;
+	u8 *in_buf, *out_buf;
+	int obytes_processed = 0;
+	unsigned char buf[8];
+	int ret;
+
+	if (parse_header(in_fd))
+		return -EINVAL;
+
+	out_buf = xmalloc(LZO_BLOCK_SIZE);
+	in_buf = xmalloc(lzo1x_worst_compress(LZO_BLOCK_SIZE));
+
+	for (;;) {
+		/* read uncompressed block size */
+		ret = read(in_fd, buf, 4);
+		if (ret < 0)
+			goto exit_free;
+		dst_len = get_unaligned_be32(buf);
+
+		/* exit if last block */
+		if (dst_len == 0)
+			break;
+
+		if (dst_len > LZO_BLOCK_SIZE) {
+			printf("dest len longer than block size");
+			goto exit_free;
+		}
+
+		/* read compressed block size, and skip block checksum info */
+		ret = read(in_fd, buf, 8);
+		if (ret < 0)
+			goto exit_free;
+
+		src_len = get_unaligned_be32(buf);
+
+		if (src_len <= 0 || src_len > dst_len) {
+			printf("file corrupted");
+			goto exit_free;
+		}
+		ret = read(in_fd, in_buf, src_len);
+		if (ret < 0)
+			goto exit_free;
+
+		/* decompress */
+		tmp = dst_len;
+		if (src_len < dst_len) {
+			r = lzo1x_decompress_safe((u8 *) in_buf, src_len,
+						out_buf, &tmp);
+			if (r != LZO_E_OK || dst_len != tmp) {
+				printf("Compressed data violation");
+				goto exit_free;
+			}
+			ret = write(out_fd, out_buf, dst_len);
+			if (ret < 0)
+				goto exit_free;
+		} else {
+			if (src_len != dst_len) {
+				printf("Compressed data violation");
+				goto exit_free;
+			}
+			ret = write(out_fd, in_buf, dst_len);
+			if (ret < 0)
+				goto exit_free;
+		}
+
+		obytes_processed += dst_len;
+	}
+
+exit_free:
+	free(in_buf);
+	free(out_buf);
+
+	*dest_len = obytes_processed;
+	return 0;
+}
+
diff --git a/lib/lzo/Kconfig b/lib/lzo/Kconfig
new file mode 100644
index 0000000..4016785
--- /dev/null
+++ b/lib/lzo/Kconfig
@@ -0,0 +1,6 @@
+config LZO_DECOMPRESS
+	bool
+
+config LZO_COMPRESS
+	bool
+
diff --git a/lib/lzo/Makefile b/lib/lzo/Makefile
new file mode 100644
index 0000000..e1a97ae
--- /dev/null
+++ b/lib/lzo/Makefile
@@ -0,0 +1,4 @@
+
+obj-$(CONFIG_LZO_COMPRESS) += lzo1x_compress.o
+obj-$(CONFIG_LZO_DECOMPRESS) += lzo1x_decompress.o
+
diff --git a/lib/lzo/lzo1x_compress.c b/lib/lzo/lzo1x_compress.c
new file mode 100644
index 0000000..a604099
--- /dev/null
+++ b/lib/lzo/lzo1x_compress.c
@@ -0,0 +1,226 @@
+/*
+ *  LZO1X Compressor from MiniLZO
+ *
+ *  Copyright (C) 1996-2005 Markus F.X.J. Oberhumer <markus@oberhumer.com>
+ *
+ *  The full LZO package can be found at:
+ *  http://www.oberhumer.com/opensource/lzo/
+ *
+ *  Changed for kernel use by:
+ *  Nitin Gupta <nitingupta910@gmail.com>
+ *  Richard Purdie <rpurdie@openedhand.com>
+ */
+
+#include <linux/module.h>
+#include <linux/kernel.h>
+#include <linux/lzo.h>
+#include <asm/unaligned.h>
+#include "lzodefs.h"
+
+static noinline size_t
+_lzo1x_1_do_compress(const unsigned char *in, size_t in_len,
+		unsigned char *out, size_t *out_len, void *wrkmem)
+{
+	const unsigned char * const in_end = in + in_len;
+	const unsigned char * const ip_end = in + in_len - M2_MAX_LEN - 5;
+	const unsigned char ** const dict = wrkmem;
+	const unsigned char *ip = in, *ii = ip;
+	const unsigned char *end, *m, *m_pos;
+	size_t m_off, m_len, dindex;
+	unsigned char *op = out;
+
+	ip += 4;
+
+	for (;;) {
+		dindex = ((size_t)(0x21 * DX3(ip, 5, 5, 6)) >> 5) & D_MASK;
+		m_pos = dict[dindex];
+
+		if (m_pos < in)
+			goto literal;
+
+		if (ip == m_pos || ((size_t)(ip - m_pos) > M4_MAX_OFFSET))
+			goto literal;
+
+		m_off = ip - m_pos;
+		if (m_off <= M2_MAX_OFFSET || m_pos[3] == ip[3])
+			goto try_match;
+
+		dindex = (dindex & (D_MASK & 0x7ff)) ^ (D_HIGH | 0x1f);
+		m_pos = dict[dindex];
+
+		if (m_pos < in)
+			goto literal;
+
+		if (ip == m_pos || ((size_t)(ip - m_pos) > M4_MAX_OFFSET))
+			goto literal;
+
+		m_off = ip - m_pos;
+		if (m_off <= M2_MAX_OFFSET || m_pos[3] == ip[3])
+			goto try_match;
+
+		goto literal;
+
+try_match:
+		if (get_unaligned((const unsigned short *)m_pos)
+				== get_unaligned((const unsigned short *)ip)) {
+			if (likely(m_pos[2] == ip[2]))
+					goto match;
+		}
+
+literal:
+		dict[dindex] = ip;
+		++ip;
+		if (unlikely(ip >= ip_end))
+			break;
+		continue;
+
+match:
+		dict[dindex] = ip;
+		if (ip != ii) {
+			size_t t = ip - ii;
+
+			if (t <= 3) {
+				op[-2] |= t;
+			} else if (t <= 18) {
+				*op++ = (t - 3);
+			} else {
+				size_t tt = t - 18;
+
+				*op++ = 0;
+				while (tt > 255) {
+					tt -= 255;
+					*op++ = 0;
+				}
+				*op++ = tt;
+			}
+			do {
+				*op++ = *ii++;
+			} while (--t > 0);
+		}
+
+		ip += 3;
+		if (m_pos[3] != *ip++ || m_pos[4] != *ip++
+				|| m_pos[5] != *ip++ || m_pos[6] != *ip++
+				|| m_pos[7] != *ip++ || m_pos[8] != *ip++) {
+			--ip;
+			m_len = ip - ii;
+
+			if (m_off <= M2_MAX_OFFSET) {
+				m_off -= 1;
+				*op++ = (((m_len - 1) << 5)
+						| ((m_off & 7) << 2));
+				*op++ = (m_off >> 3);
+			} else if (m_off <= M3_MAX_OFFSET) {
+				m_off -= 1;
+				*op++ = (M3_MARKER | (m_len - 2));
+				goto m3_m4_offset;
+			} else {
+				m_off -= 0x4000;
+
+				*op++ = (M4_MARKER | ((m_off & 0x4000) >> 11)
+						| (m_len - 2));
+				goto m3_m4_offset;
+			}
+		} else {
+			end = in_end;
+			m = m_pos + M2_MAX_LEN + 1;
+
+			while (ip < end && *m == *ip) {
+				m++;
+				ip++;
+			}
+			m_len = ip - ii;
+
+			if (m_off <= M3_MAX_OFFSET) {
+				m_off -= 1;
+				if (m_len <= 33) {
+					*op++ = (M3_MARKER | (m_len - 2));
+				} else {
+					m_len -= 33;
+					*op++ = M3_MARKER | 0;
+					goto m3_m4_len;
+				}
+			} else {
+				m_off -= 0x4000;
+				if (m_len <= M4_MAX_LEN) {
+					*op++ = (M4_MARKER
+						| ((m_off & 0x4000) >> 11)
+						| (m_len - 2));
+				} else {
+					m_len -= M4_MAX_LEN;
+					*op++ = (M4_MARKER
+						| ((m_off & 0x4000) >> 11));
+m3_m4_len:
+					while (m_len > 255) {
+						m_len -= 255;
+						*op++ = 0;
+					}
+
+					*op++ = (m_len);
+				}
+			}
+m3_m4_offset:
+			*op++ = ((m_off & 63) << 2);
+			*op++ = (m_off >> 6);
+		}
+
+		ii = ip;
+		if (unlikely(ip >= ip_end))
+			break;
+	}
+
+	*out_len = op - out;
+	return in_end - ii;
+}
+
+int lzo1x_1_compress(const unsigned char *in, size_t in_len, unsigned char *out,
+			size_t *out_len, void *wrkmem)
+{
+	const unsigned char *ii;
+	unsigned char *op = out;
+	size_t t;
+
+	if (unlikely(in_len <= M2_MAX_LEN + 5)) {
+		t = in_len;
+	} else {
+		t = _lzo1x_1_do_compress(in, in_len, op, out_len, wrkmem);
+		op += *out_len;
+	}
+
+	if (t > 0) {
+		ii = in + in_len - t;
+
+		if (op == out && t <= 238) {
+			*op++ = (17 + t);
+		} else if (t <= 3) {
+			op[-2] |= t;
+		} else if (t <= 18) {
+			*op++ = (t - 3);
+		} else {
+			size_t tt = t - 18;
+
+			*op++ = 0;
+			while (tt > 255) {
+				tt -= 255;
+				*op++ = 0;
+			}
+
+			*op++ = tt;
+		}
+		do {
+			*op++ = *ii++;
+		} while (--t > 0);
+	}
+
+	*op++ = M4_MARKER | 1;
+	*op++ = 0;
+	*op++ = 0;
+
+	*out_len = op - out;
+	return LZO_E_OK;
+}
+EXPORT_SYMBOL_GPL(lzo1x_1_compress);
+
+MODULE_LICENSE("GPL");
+MODULE_DESCRIPTION("LZO1X-1 Compressor");
+
diff --git a/lib/lzo/lzo1x_decompress.c b/lib/lzo/lzo1x_decompress.c
new file mode 100644
index 0000000..af94382
--- /dev/null
+++ b/lib/lzo/lzo1x_decompress.c
@@ -0,0 +1,247 @@
+/*
+ *  LZO1X Decompressor from MiniLZO
+ *
+ *  Copyright (C) 1996-2005 Markus F.X.J. Oberhumer <markus@oberhumer.com>
+ *
+ *  The full LZO package can be found at:
+ *  http://www.oberhumer.com/opensource/lzo/
+ *
+ *  Changed for kernel use by:
+ *  Nitin Gupta <nitingupta910@gmail.com>
+ *  Richard Purdie <rpurdie@openedhand.com>
+ */
+
+#include <asm/unaligned.h>
+#include <common.h>
+#include <lzo.h>
+#include "lzodefs.h"
+
+#define HAVE_IP(x, ip_end, ip) ((size_t)(ip_end - ip) < (x))
+#define HAVE_OP(x, op_end, op) ((size_t)(op_end - op) < (x))
+#define HAVE_LB(m_pos, out, op) (m_pos < out || m_pos >= op)
+
+#define COPY4(dst, src)	\
+		put_unaligned(get_unaligned((const u32 *)(src)), (u32 *)(dst))
+
+int lzo1x_decompress_safe(const unsigned char *in, size_t in_len,
+			unsigned char *out, size_t *out_len)
+{
+	const unsigned char * const ip_end = in + in_len;
+	unsigned char * const op_end = out + *out_len;
+	const unsigned char *ip = in, *m_pos;
+	unsigned char *op = out;
+	size_t t;
+
+	*out_len = 0;
+
+	if (*ip > 17) {
+		t = *ip++ - 17;
+		if (t < 4)
+			goto match_next;
+		if (HAVE_OP(t, op_end, op))
+			goto output_overrun;
+		if (HAVE_IP(t + 1, ip_end, ip))
+			goto input_overrun;
+		do {
+			*op++ = *ip++;
+		} while (--t > 0);
+		goto first_literal_run;
+	}
+
+	while ((ip < ip_end)) {
+		t = *ip++;
+		if (t >= 16)
+			goto match;
+		if (t == 0) {
+			if (HAVE_IP(1, ip_end, ip))
+				goto input_overrun;
+			while (*ip == 0) {
+				t += 255;
+				ip++;
+				if (HAVE_IP(1, ip_end, ip))
+					goto input_overrun;
+			}
+			t += 15 + *ip++;
+		}
+		if (HAVE_OP(t + 3, op_end, op))
+			goto output_overrun;
+		if (HAVE_IP(t + 4, ip_end, ip))
+			goto input_overrun;
+
+		COPY4(op, ip);
+		op += 4;
+		ip += 4;
+		if (--t > 0) {
+			if (t >= 4) {
+				do {
+					COPY4(op, ip);
+					op += 4;
+					ip += 4;
+					t -= 4;
+				} while (t >= 4);
+				if (t > 0) {
+					do {
+						*op++ = *ip++;
+					} while (--t > 0);
+				}
+			} else {
+				do {
+					*op++ = *ip++;
+				} while (--t > 0);
+			}
+		}
+
+first_literal_run:
+		t = *ip++;
+		if (t >= 16)
+			goto match;
+		m_pos = op - (1 + M2_MAX_OFFSET);
+		m_pos -= t >> 2;
+		m_pos -= *ip++ << 2;
+
+		if (HAVE_LB(m_pos, out, op))
+			goto lookbehind_overrun;
+
+		if (HAVE_OP(3, op_end, op))
+			goto output_overrun;
+		*op++ = *m_pos++;
+		*op++ = *m_pos++;
+		*op++ = *m_pos;
+
+		goto match_done;
+
+		do {
+match:
+			if (t >= 64) {
+				m_pos = op - 1;
+				m_pos -= (t >> 2) & 7;
+				m_pos -= *ip++ << 3;
+				t = (t >> 5) - 1;
+				if (HAVE_LB(m_pos, out, op))
+					goto lookbehind_overrun;
+				if (HAVE_OP(t + 3 - 1, op_end, op))
+					goto output_overrun;
+				goto copy_match;
+			} else if (t >= 32) {
+				t &= 31;
+				if (t == 0) {
+					if (HAVE_IP(1, ip_end, ip))
+						goto input_overrun;
+					while (*ip == 0) {
+						t += 255;
+						ip++;
+						if (HAVE_IP(1, ip_end, ip))
+							goto input_overrun;
+					}
+					t += 31 + *ip++;
+				}
+				m_pos = op - 1;
+				m_pos -= get_unaligned_le16(ip) >> 2;
+				ip += 2;
+			} else if (t >= 16) {
+				m_pos = op;
+				m_pos -= (t & 8) << 11;
+
+				t &= 7;
+				if (t == 0) {
+					if (HAVE_IP(1, ip_end, ip))
+						goto input_overrun;
+					while (*ip == 0) {
+						t += 255;
+						ip++;
+						if (HAVE_IP(1, ip_end, ip))
+							goto input_overrun;
+					}
+					t += 7 + *ip++;
+				}
+				m_pos -= get_unaligned_le16(ip) >> 2;
+				ip += 2;
+				if (m_pos == op)
+					goto eof_found;
+				m_pos -= 0x4000;
+			} else {
+				m_pos = op - 1;
+				m_pos -= t >> 2;
+				m_pos -= *ip++ << 2;
+
+				if (HAVE_LB(m_pos, out, op))
+					goto lookbehind_overrun;
+				if (HAVE_OP(2, op_end, op))
+					goto output_overrun;
+
+				*op++ = *m_pos++;
+				*op++ = *m_pos;
+				goto match_done;
+			}
+
+			if (HAVE_LB(m_pos, out, op))
+				goto lookbehind_overrun;
+			if (HAVE_OP(t + 3 - 1, op_end, op))
+				goto output_overrun;
+
+			if (t >= 2 * 4 - (3 - 1) && (op - m_pos) >= 4) {
+				COPY4(op, m_pos);
+				op += 4;
+				m_pos += 4;
+				t -= 4 - (3 - 1);
+				do {
+					COPY4(op, m_pos);
+					op += 4;
+					m_pos += 4;
+					t -= 4;
+				} while (t >= 4);
+				if (t > 0)
+					do {
+						*op++ = *m_pos++;
+					} while (--t > 0);
+			} else {
+copy_match:
+				*op++ = *m_pos++;
+				*op++ = *m_pos++;
+				do {
+					*op++ = *m_pos++;
+				} while (--t > 0);
+			}
+match_done:
+			t = ip[-2] & 3;
+			if (t == 0)
+				break;
+match_next:
+			if (HAVE_OP(t, op_end, op))
+				goto output_overrun;
+			if (HAVE_IP(t + 1, ip_end, ip))
+				goto input_overrun;
+
+			*op++ = *ip++;
+			if (t > 1) {
+				*op++ = *ip++;
+				if (t > 2)
+					*op++ = *ip++;
+			}
+
+			t = *ip++;
+		} while (ip < ip_end);
+	}
+
+	*out_len = op - out;
+	return LZO_E_EOF_NOT_FOUND;
+
+eof_found:
+	*out_len = op - out;
+	return (ip == ip_end ? LZO_E_OK :
+		(ip < ip_end ? LZO_E_INPUT_NOT_CONSUMED : LZO_E_INPUT_OVERRUN));
+input_overrun:
+	*out_len = op - out;
+	return LZO_E_INPUT_OVERRUN;
+
+output_overrun:
+	*out_len = op - out;
+	return LZO_E_OUTPUT_OVERRUN;
+
+lookbehind_overrun:
+	*out_len = op - out;
+	return LZO_E_LOOKBEHIND_OVERRUN;
+}
+
+EXPORT_SYMBOL(lzo1x_decompress_safe);
+
diff --git a/lib/lzo/lzodefs.h b/lib/lzo/lzodefs.h
new file mode 100644
index 0000000..b6d482c
--- /dev/null
+++ b/lib/lzo/lzodefs.h
@@ -0,0 +1,43 @@
+/*
+ *  lzodefs.h -- architecture, OS and compiler specific defines
+ *
+ *  Copyright (C) 1996-2005 Markus F.X.J. Oberhumer <markus@oberhumer.com>
+ *
+ *  The full LZO package can be found at:
+ *  http://www.oberhumer.com/opensource/lzo/
+ *
+ *  Changed for kernel use by:
+ *  Nitin Gupta <nitingupta910@gmail.com>
+ *  Richard Purdie <rpurdie@openedhand.com>
+ */
+
+#define LZO_VERSION		0x2020
+#define LZO_VERSION_STRING	"2.02"
+#define LZO_VERSION_DATE	"Oct 17 2005"
+
+#define M1_MAX_OFFSET	0x0400
+#define M2_MAX_OFFSET	0x0800
+#define M3_MAX_OFFSET	0x4000
+#define M4_MAX_OFFSET	0xbfff
+
+#define M1_MIN_LEN	2
+#define M1_MAX_LEN	2
+#define M2_MIN_LEN	3
+#define M2_MAX_LEN	8
+#define M3_MIN_LEN	3
+#define M3_MAX_LEN	33
+#define M4_MIN_LEN	3
+#define M4_MAX_LEN	9
+
+#define M1_MARKER	0
+#define M2_MARKER	64
+#define M3_MARKER	32
+#define M4_MARKER	16
+
+#define D_BITS		14
+#define D_MASK		((1u << D_BITS) - 1)
+#define D_HIGH		((D_MASK >> 1) + 1)
+
+#define DX2(p, s1, s2)	(((((size_t)((p)[2]) << (s2)) ^ (p)[1]) \
+							<< (s1)) ^ (p)[0])
+#define DX3(p, s1, s2, s3)	((DX2((p)+1, s2, s3) << (s1)) ^ (p)[0])
diff --git a/lib/lzo/modules.builtin b/lib/lzo/modules.builtin
new file mode 100644
index 0000000..d860562
--- /dev/null
+++ b/lib/lzo/modules.builtin
@@ -0,0 +1,2 @@
+kernel/lib/lzo/lzo_compress.ko
+kernel/lib/lzo/lzo_decompress.ko
-- 
1.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
