Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UKPvE-00039g-Ez
 for barebox@lists.infradead.org; Tue, 26 Mar 2013 09:12:02 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Tue, 26 Mar 2013 10:11:25 +0100
Message-Id: <1364289086-2241-5-git-send-email-s.trumtrar@pengutronix.de>
In-Reply-To: <1364289086-2241-1-git-send-email-s.trumtrar@pengutronix.de>
References: <1364289086-2241-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH v3 4/5] ARM: zynq: add zynq fsbl checksum script
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

The bootrom only reads an image if the correct checksum is present in the
header. The calculation is pretty simple:
sum over all words from 0x20 to 0x44
Two of this words are the image length. That is why the checksum can not be
calculated until barebox_image_size is known.
The easiest solution is a program that has to be run after make.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---

Changes since v2:
	- rename to zynq_mkimage
	- add to gitignores
	- always pipe barebox through zynq_mkimage
	- don't waste memory with malloc
	- add license header

 .gitignore             |  1 +
 arch/arm/Makefile      |  8 +++++
 scripts/.gitignore     |  1 +
 scripts/Makefile       |  1 +
 scripts/zynq_mkimage.c | 86 ++++++++++++++++++++++++++++++++++++++++++++++++++
 5 files changed, 97 insertions(+)
 create mode 100644 scripts/zynq_mkimage.c

diff --git a/.gitignore b/.gitignore
index 064753d..d197196 100644
--- a/.gitignore
+++ b/.gitignore
@@ -36,6 +36,7 @@ barebox.netx
 barebox.s5p
 barebox.spi
 barebox.ubl
+barebox.zynq
 barebox.uimage
 barebox.map
 barebox-flash-image
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index ceb45dc..5682e36 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -244,6 +244,14 @@ KBUILD_TARGET := barebox.spi
 KBUILD_IMAGE := barebox.spi
 endif
 
+barebox.zynq: $(KBUILD_BINARY)
+	$(Q)scripts/zynq_mkimage $< $@
+
+ifeq ($(machine-y),zynq)
+KBUILD_TARGET := barebox.zynq
+KBUILD_IMAGE := barebox.zynq
+endif
+
 pbl := arch/arm/pbl
 zbarebox.S zbarebox.bin zbarebox: barebox.bin
 	$(Q)$(MAKE) $(build)=$(pbl) $(pbl)/$@
diff --git a/scripts/.gitignore b/scripts/.gitignore
index 1ca6603..bff805d 100644
--- a/scripts/.gitignore
+++ b/scripts/.gitignore
@@ -7,3 +7,4 @@ mkimage
 mkublheader
 omap_signGP
 omap4_usbboot
+zynq_mkimage
diff --git a/scripts/Makefile b/scripts/Makefile
index 08b325c..fd526e5 100644
--- a/scripts/Makefile
+++ b/scripts/Makefile
@@ -12,6 +12,7 @@ hostprogs-$(CONFIG_ARCH_NETX)    += gen_netx_image
 hostprogs-$(CONFIG_ARCH_OMAP)    += omap_signGP mk-am35xx-spi-image
 hostprogs-$(CONFIG_ARCH_S5PCxx)  += s5p_cksum
 hostprogs-$(CONFIG_ARCH_DAVINCI) += mkublheader
+hostprogs-$(CONFIG_ARCH_ZYNQ)	 += zynq_mkimage
 
 HOSTLOADLIBES_omap4_usbboot = -lpthread
 omap4_usbboot-objs               := usb_linux.o omap4_usbboot.o
diff --git a/scripts/zynq_mkimage.c b/scripts/zynq_mkimage.c
new file mode 100644
index 0000000..a096b83
--- /dev/null
+++ b/scripts/zynq_mkimage.c
@@ -0,0 +1,86 @@
+/*
+ * Copyright (C) 2013 Steffen Trumtrar <s.trumtrar@pengutronix.de>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+#include <endian.h>
+#include <errno.h>
+#include <malloc.h>
+#include <stdio.h>
+#include <stdlib.h>
+#include <sys/stat.h>
+
+static void usage(char *name)
+{
+	printf("Usage: %s barebox-flash-image <outfile>\n", name);
+}
+
+int main(int argc, char *argv[])
+{
+	FILE *ifile, *ofile;
+	unsigned int *buf;
+	const char *infile;
+	const char *outfile;
+	struct stat st;
+	unsigned int i;
+	unsigned long sum = 0;
+
+	if (argc != 3) {
+		usage(argv[0]);
+		exit(1);
+	}
+
+	infile = argv[1];
+	outfile = argv[2];
+
+	if (stat(infile, &st) == -1) {
+		perror("stat");
+		exit(EXIT_FAILURE);
+	}
+
+	buf = malloc(st.st_size);
+	if (!buf) {
+		fprintf(stderr, "Unable to allocate buffer\n");
+		return -1;
+	}
+	ifile = fopen(infile, "rb");
+	if (!ifile) {
+		fprintf(stderr, "Cannot open %s for reading\n",
+			infile);
+		free(buf);
+		exit(EXIT_FAILURE);
+	}
+	ofile = fopen(outfile, "wb");
+	if (!ofile) {
+		fprintf(stderr, "Cannot open %s for writing\n",
+			outfile);
+		fclose(ifile);
+		free(buf);
+		exit(EXIT_FAILURE);
+	}
+
+	fread(buf, 4, st.st_size, ifile);
+
+	for (i = 0x8; i < 0x12; i++)
+		sum += htole32(buf[i]);
+
+	sum = ~sum;
+	buf[i] = sum;
+
+	fwrite(buf, st.st_size / 4, 4, ofile);
+
+	fclose(ofile);
+	fclose(ifile);
+	free(buf);
+
+	return 0;
+}
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
