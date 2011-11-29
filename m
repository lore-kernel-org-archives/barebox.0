Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RVTXe-0002sL-NI
 for barebox@lists.infradead.org; Tue, 29 Nov 2011 19:40:36 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1RVTXY-0003vg-KA
 for barebox@lists.infradead.org; Tue, 29 Nov 2011 20:40:28 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <sha@pengutronix.de>) id 1RVTXY-00073w-J3
 for barebox@lists.infradead.org; Tue, 29 Nov 2011 20:40:28 +0100
Date: Tue, 29 Nov 2011 20:40:28 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111129194028.GJ27267@pengutronix.de>
References: <1322518209-2965-1-git-send-email-s.hauer@pengutronix.de>
 <1322518209-2965-11-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1322518209-2965-11-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 10/16] add file detection support
To: barebox@lists.infradead.org


add file detection support

Several filetypes can be autodetected. Barebox could make use
of this in several ways:

- Add a command to detect filetypes
- detect arm zImages and uImages to unify the different boot commands
- maybe detect UBI or JFFS2 images to construct parts of the kernel
  command line
- select correct uncompression function based on filetype

This patch adds basic support to detect filetypes.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/Makefile    |    1 +
 common/filetype.c  |   99 ++++++++++++++++++++++++++++++++++++++++++++++++++++
 include/filetype.h |   23 ++++++++++++
 3 files changed, 123 insertions(+), 0 deletions(-)
 create mode 100644 common/filetype.c
 create mode 100644 include/filetype.h

diff --git a/common/Makefile b/common/Makefile
index 3edf38f..55d9dbc 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -26,6 +26,7 @@ obj-$(CONFIG_CMD_BOOTM) += image.o
 obj-y += startup.o
 obj-y += misc.o
 obj-y += memsize.o
+obj-y += filetype.o
 obj-$(CONFIG_MENU) += menu.o
 obj-$(CONFIG_PASSWORD) += password.o
 obj-$(CONFIG_MODULES) += module.o
diff --git a/common/filetype.c b/common/filetype.c
new file mode 100644
index 0000000..5635d40
--- /dev/null
+++ b/common/filetype.c
@@ -0,0 +1,99 @@
+/*
+ * filetype.c - detect filetypes
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
+ * Foundation.
+ */
+#include <common.h>
+#include <filetype.h>
+#include <asm/byteorder.h>
+#include <fcntl.h>
+#include <fs.h>
+#include <malloc.h>
+
+static const char *filetype_str[] = {
+	[filetype_unknown] = "unknown",
+	[filetype_arm_zimage] = "arm Linux zImage",
+	[filetype_lzo_compressed] = "lzo compressed",
+	[filetype_arm_barebox] = "arm barebox image",
+	[filetype_uimage] = "U-Boot uImage",
+	[filetype_ubi] = "UBI image",
+	[filetype_jffs2] = "JFFS2 image",
+	[filetype_gzip] = "gzip compressed",
+	[filetype_bzip2] = "bzip2 compressed",
+};
+
+const char *file_type_to_string(enum filetype f)
+{
+	if (f < ARRAY_SIZE(filetype_str))
+		return filetype_str[f];
+
+	return NULL;
+}
+
+enum filetype file_detect_type(void *_buf)
+{
+	u32 *buf = _buf;
+	u8 *buf8 = _buf;
+
+	if (buf[8] == 0x65726162 && buf[9] == 0x00786f62)
+		return filetype_arm_barebox;
+	if (buf[9] == 0x016f2818 || buf[9] == 0x18286f01)
+		return filetype_arm_zimage;
+	if (buf8[0] == 0x89 && buf8[1] == 0x4c && buf8[2] == 0x5a &&
+			buf8[3] == 0x4f)
+		return filetype_lzo_compressed;
+	if (buf[0] == be32_to_cpu(0x27051956))
+		return filetype_uimage;
+	if (buf[0] == 0x23494255)
+		return filetype_ubi;
+	if (buf[0] == 0x20031985)
+		return filetype_jffs2;
+	if (buf8[0] == 0x1f && buf8[1] == 0x8b && buf8[2] == 0x08)
+		return filetype_gzip;
+	if (buf8[0] == 'B' && buf8[1] == 'Z' && buf8[2] == 'h' &&
+			buf8[3] > '0' && buf8[3] <= '9')
+                return filetype_bzip2;
+
+	return filetype_unknown;
+}
+
+enum filetype file_name_detect_type(const char *filename)
+{
+	int fd, ret;
+	void *buf;
+	enum filetype type = filetype_unknown;
+
+	fd = open(filename, O_RDONLY);
+	if (fd < 0)
+		return fd;
+
+	buf = xmalloc(512);
+
+	ret = read(fd, buf, 512);
+	if (ret != 512)
+		goto err_out;
+
+	type = file_detect_type(buf);
+
+err_out:
+	close(fd);
+	free(buf);
+
+	return type;
+}
diff --git a/include/filetype.h b/include/filetype.h
new file mode 100644
index 0000000..64d32ef
--- /dev/null
+++ b/include/filetype.h
@@ -0,0 +1,23 @@
+#ifndef __FILE_TYPE_H
+#define __FILE_TYPE_H
+
+/*
+ * List of file types we know
+ */
+enum filetype {
+	filetype_unknown,
+	filetype_arm_zimage,
+	filetype_lzo_compressed,
+	filetype_arm_barebox,
+	filetype_uimage,
+	filetype_ubi,
+	filetype_jffs2,
+	filetype_gzip,
+	filetype_bzip2,
+};
+
+const char *file_type_to_string(enum filetype f);
+enum filetype file_detect_type(void *_buf);
+enum filetype file_name_detect_type(const char *filename);
+
+#endif /* __FILE_TYPE_H */
-- 
1.7.7.1

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
