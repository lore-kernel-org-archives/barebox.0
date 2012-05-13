Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lpp01m010-f49.google.com ([209.85.215.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1STY6l-0003d4-K7
 for barebox@lists.infradead.org; Sun, 13 May 2012 12:41:08 +0000
Received: by mail-lpp01m010-f49.google.com with SMTP id p9so3495868laa.36
 for <barebox@lists.infradead.org>; Sun, 13 May 2012 05:41:07 -0700 (PDT)
From: Alexey Galakhov <agalakhov@gmail.com>
Date: Sun, 13 May 2012 18:40:06 +0600
Message-Id: <1336912806-4163-10-git-send-email-agalakhov@gmail.com>
In-Reply-To: <1336912806-4163-1-git-send-email-agalakhov@gmail.com>
References: <20120513090917.GX27341@pengutronix.de>
 <1336912806-4163-1-git-send-email-agalakhov@gmail.com>
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
Subject: [PATCH 9/9] S5P boot header and image generator
To: barebox@lists.infradead.org
Cc: Alexey Galakhov <agalakhov@gmail.com>

Signed-off-by: Alexey Galakhov <agalakhov@gmail.com>
---
 .gitignore          |    2 +
 arch/arm/Makefile   |    7 +++
 scripts/Makefile    |    1 +
 scripts/s5p_cksum.c |  140 +++++++++++++++++++++++++++++++++++++++++++++++++++
 4 files changed, 150 insertions(+)
 create mode 100644 scripts/s5p_cksum.c

diff --git a/.gitignore b/.gitignore
index 8a5c583..5f76602 100644
--- a/.gitignore
+++ b/.gitignore
@@ -33,6 +33,7 @@ barebox.S
 barebox.bin
 barebox.srec
 barebox.netx
+barebox.s5p
 barebox.map
 System.map
 Module.symvers
@@ -63,3 +64,4 @@ cscope.*
 # patches
 *.patch
 scripts/gen_netx_image
+scripts/s5p_cksum
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 1af1090..fc29aca 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -165,6 +165,13 @@ ifeq ($(machine-y),netx)
 KBUILD_IMAGE := barebox.netx
 endif
 
+barebox.s5p: barebox.bin
+	$(Q)scripts/s5p_cksum barebox.bin barebox.s5p
+
+ifeq ($(CONFIG_ARCH_S5PCxx),y)
+KBUILD_IMAGE := barebox.s5p
+endif
+
 MLO: barebox.bin
 	@echo "  IFT    " $@
 	$(Q)scripts/omap_signGP barebox.bin $(TEXT_BASE) 1
diff --git a/scripts/Makefile b/scripts/Makefile
index cb049fd..784d205 100644
--- a/scripts/Makefile
+++ b/scripts/Makefile
@@ -10,6 +10,7 @@ hostprogs-y                      += mkimage
 hostprogs-y                      += bareboxenv
 hostprogs-$(CONFIG_ARCH_NETX)    += gen_netx_image
 hostprogs-$(CONFIG_ARCH_OMAP)    += omap_signGP
+hostprogs-$(CONFIG_ARCH_S5PCxx)  += s5p_cksum
 
 always		:= $(hostprogs-y) $(hostprogs-m)
 
diff --git a/scripts/s5p_cksum.c b/scripts/s5p_cksum.c
new file mode 100644
index 0000000..7142532
--- /dev/null
+++ b/scripts/s5p_cksum.c
@@ -0,0 +1,140 @@
+/*
+ * Copyright (C) 2012 Alexey Galakhov
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * version 2 as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+#include <stdio.h>
+#include <stdint.h>
+#include <stdlib.h>
+#include <string.h>
+#include <stddef.h>
+#include <errno.h>
+
+#define DEFAULT_BUF_SIZE 8192
+
+static int usage(const char* me)
+{
+	printf("Usage: %s <input> <output> [<bufsize]\n", me);
+	return 1;
+}
+
+static void put32(uint8_t *ptr, uint32_t value)
+{
+	ptr[0] = value & 0xFF;
+	ptr[1] = (value >> 8) & 0xFF;
+	ptr[2] = (value >> 16) & 0xFF;
+	ptr[3] = (value >> 24) & 0xFF;
+}
+
+static size_t safe_fread(void *buf, size_t len, FILE* file)
+{
+	size_t rd = fread(buf, 1, len, file);
+	if (! rd) {
+		if (ferror(file))
+			fprintf(stderr, "Error reading file: %s\n", strerror(errno));
+		else
+			fprintf(stderr, "Unexpected end of file\n");
+	}
+	return rd;
+}
+
+static size_t safe_fwrite(const void *buf, size_t len, FILE* file)
+{
+	size_t wr = fwrite(buf, 1, len, file);
+	if (wr != len) {
+		fprintf(stderr, "Error writing file: %s\n", strerror(errno));
+		return 0;
+	}
+	return wr;
+}
+
+static int process(FILE *input, FILE *output, uint8_t *buf, unsigned bufsize)
+{
+	size_t rd;
+	unsigned i;
+	uint32_t cksum;
+	/* Read first chunk */
+	rd = safe_fread(buf + 16, bufsize - 16, input);
+	if (! rd)
+		return 4;
+	/* Calculate header */
+	put32(buf + 0, bufsize);
+	cksum = 0;
+	for (i = 16; i < bufsize; ++i)
+		cksum += (uint32_t)buf[i];
+	put32(buf + 8, cksum);
+	if (! safe_fwrite(buf, bufsize, output))
+		return 4;
+	/* Copy the rest of file */
+	while (! feof(input)) {
+		rd = safe_fread(buf, bufsize, input);
+		if (! rd)
+			return 4;
+		if (! safe_fwrite(buf, rd, output))
+			return 4;
+	}
+	return 0;
+}
+
+static int work(const char* me, const char *infile, const char *outfile, unsigned bufsize)
+{
+	uint8_t *buf;
+	FILE *input;
+	FILE *output;
+	int ret;
+	if (bufsize < 512 || bufsize > 65536)
+		return usage(me);
+	buf = calloc(1, bufsize);
+	if (! buf) {
+		fprintf(stderr, "Unable to allocate %u bytes of memory\n", bufsize);
+		return 2;
+	}
+	input = fopen(infile, "r");
+	if (! input) {
+		fprintf(stderr, "Cannot open `%s' for reading\n", infile);
+		free(buf);
+		return 3;
+	}
+	output = fopen(outfile, "w");
+	if (! output) {
+		fprintf(stderr, "Cannot open `%s' for writing\n", outfile);
+		fclose(input);
+		free(buf);
+		return 3;
+	}
+
+	ret = process(input, output, buf, bufsize);
+
+	fclose(output);
+	fclose(input);
+	free(buf);
+	return ret;
+}
+
+int main(int argc, char** argv)
+{
+	switch (argc) {
+	case 3:
+		return work(argv[0], argv[1], argv[2], DEFAULT_BUF_SIZE);
+	case 4:
+		return work(argv[0], argv[1], argv[2], atoi(argv[3]));
+	default:
+		return usage(argv[0]);
+	}
+}
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
