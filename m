Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RV9PL-0007lE-9y
 for barebox@lists.infradead.org; Mon, 28 Nov 2011 22:10:42 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 28 Nov 2011 23:10:05 +0100
Message-Id: <1322518209-2965-13-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1322518209-2965-1-git-send-email-s.hauer@pengutronix.de>
References: <1322518209-2965-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 12/16] Add generic uncompress function
To: barebox@lists.infradead.org

uncompress() has the same prototype as the various kernel decompress
functions. It automatically detects the compression type and selects
the correct uncompress function.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/uncompress.h |   19 ++++++
 lib/Makefile         |    1 +
 lib/uncompress.c     |  159 ++++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 179 insertions(+), 0 deletions(-)
 create mode 100644 include/uncompress.h
 create mode 100644 lib/uncompress.c

diff --git a/include/uncompress.h b/include/uncompress.h
new file mode 100644
index 0000000..d146c90
--- /dev/null
+++ b/include/uncompress.h
@@ -0,0 +1,19 @@
+#ifndef __UNCOMPRESS_H
+#define __UNCOMPRESS_H
+
+int uncompress(unsigned char *inbuf, int len,
+	   int(*fill)(void*, unsigned int),
+	   int(*flush)(void*, unsigned int),
+	   unsigned char *output,
+	   int *pos,
+	   void(*error_fn)(char *x));
+
+int uncompress_fd_to_fd(int infd, int outfd,
+	   void(*error_fn)(char *x));
+
+int uncompress_fd_to_buf(int infd, void *output,
+	   void(*error_fn)(char *x));
+
+void uncompress_err_stdout(char *);
+
+#endif /* __UNCOMPRESS_H */
diff --git a/lib/Makefile b/lib/Makefile
index f0abc21..e35d4b1 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -33,3 +33,4 @@ obj-$(CONFIG_MD5)	+= md5.o
 obj-$(CONFIG_SHA1)	+= sha1.o
 obj-$(CONFIG_SHA256)	+= sha256.o
 obj-$(CONFIG_FDT)	+= fdt/
+obj-y			+= uncompress.o
diff --git a/lib/uncompress.c b/lib/uncompress.c
new file mode 100644
index 0000000..80982f3
--- /dev/null
+++ b/lib/uncompress.c
@@ -0,0 +1,159 @@
+/*
+ * uncompress.c - uncompress files
+ *
+ * Copyright (c) 2011 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
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
+#include <common.h>
+#include <uncompress.h>
+#include <bunzip2.h>
+#include <gunzip.h>
+#include <lzo.h>
+#include <errno.h>
+#include <filetype.h>
+#include <malloc.h>
+#include <fs.h>
+
+static void *uncompress_buf;
+static unsigned int uncompress_size;
+
+void uncompress_err_stdout(char *x)
+{
+	printf("%s\n", x);
+}
+
+static int (*uncompress_fill_fn)(void*, unsigned int);
+
+static int uncompress_fill(void *buf, unsigned int len)
+{
+	int total = 0;
+
+	if (uncompress_size) {
+		int now = min(len, uncompress_size);
+
+		memcpy(buf, uncompress_buf, now);
+		uncompress_size -= now;
+		len -= now;
+		total = now;
+		buf += now;
+	}
+
+	if (len) {
+		int ret = uncompress_fill_fn(buf, len);
+		if (ret < 0)
+			return ret;
+		total += ret;
+	}
+
+	return total;
+}
+
+int uncompress(unsigned char *inbuf, int len,
+	   int(*fill)(void*, unsigned int),
+	   int(*flush)(void*, unsigned int),
+	   unsigned char *output,
+	   int *pos,
+	   void(*error_fn)(char *x))
+{
+	enum filetype ft;
+	int (*compfn)(unsigned char *inbuf, int len,
+            int(*fill)(void*, unsigned int),
+            int(*flush)(void*, unsigned int),
+            unsigned char *output,
+            int *pos,
+            void(*error)(char *x));
+	int ret;
+	char *err;
+
+	BUG_ON(uncompress_size);
+
+	if (inbuf) {
+		ft = file_detect_type(inbuf);
+	} else {
+		if (!fill)
+			return -EINVAL;
+
+		uncompress_fill_fn = fill;
+		uncompress_buf = xzalloc(32);
+		uncompress_size = 32;
+
+		ret = fill(uncompress_buf, 32);
+		if (ret < 0)
+			goto err;
+
+		ft = file_detect_type(uncompress_buf);
+	}
+
+	switch (ft) {
+#ifdef CONFIG_BZLIB
+	case filetype_bzip2:
+		compfn = bunzip2;
+		break;
+#endif
+#ifdef CONFIG_ZLIB
+	case filetype_gzip:
+		compfn = gunzip;
+		break;
+#endif
+#ifdef CONFIG_LZO_DECOMPRESS
+	case filetype_lzo_compressed:
+		compfn = decompress_unlzo;
+		break;
+#endif
+	default:
+		err = asprintf("cannot handle filetype %s", file_type_to_string(ft));
+		error_fn(err);
+		free(err);
+		ret = -ENOSYS;
+		goto err;
+	}
+
+	ret = compfn(inbuf, len, fill ? uncompress_fill : NULL,
+			flush, output, pos, error_fn);
+err:
+	free(uncompress_buf);
+	uncompress_size = 0;
+
+	return ret;
+}
+
+static int uncompress_infd, uncompress_outfd;
+
+static int fill_fd(void *buf, unsigned int len)
+{
+	return read(uncompress_infd, buf, len);
+}
+
+static int flush_fd(void *buf, unsigned int len)
+{
+	return write(uncompress_outfd, buf, len);
+}
+
+int uncompress_fd_to_fd(int infd, int outfd,
+	   void(*error_fn)(char *x))
+{
+	uncompress_infd = infd;
+	uncompress_outfd = outfd;
+
+	return uncompress(NULL, 0,
+	   fill_fd,
+	   flush_fd,
+	   NULL,
+	   NULL,
+	   error_fn);
+}
-- 
1.7.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
