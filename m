Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1THdRi-0004Ah-TK
 for barebox@lists.infradead.org; Fri, 28 Sep 2012 16:29:47 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Fri, 28 Sep 2012 18:29:43 +0200
Message-Id: <1348849783-32599-1-git-send-email-jlu@pengutronix.de>
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
Subject: [PATCH] scripts: add tool to create image for SPI boot on AM35xx
To: barebox@lists.infradead.org

Booting from SPI on an AM35xx (and possibly other TI SOCs) requires
a special format:

- 32 bit image size in big-endian
- 32 bit load address in big-endian
- binary image converted from little- to big-endian

The mk-am35xx-spi-image tool converts barebox.bin to
this format.

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
Since the last version I've switched to the kconfig cmd_ style.

 .gitignore                    |    1 +
 Makefile                      |    4 +-
 arch/arm/Makefile             |   11 ++++
 arch/arm/mach-omap/Kconfig    |    7 ++
 scripts/.gitignore            |    1 +
 scripts/Makefile              |    2 +-
 scripts/mk-am35xx-spi-image.c |  141 +++++++++++++++++++++++++++++++++++++++++
 7 files changed, 164 insertions(+), 3 deletions(-)
 create mode 100644 scripts/mk-am35xx-spi-image.c

diff --git a/.gitignore b/.gitignore
index 7e98a25..9af6710 100644
--- a/.gitignore
+++ b/.gitignore
@@ -34,6 +34,7 @@ barebox.bin
 barebox.srec
 barebox.netx
 barebox.s5p
+barebox.spi
 barebox.ubl
 barebox.uimage
 barebox.map
diff --git a/Makefile b/Makefile
index 5cb4730..b5e8dcf 100644
--- a/Makefile
+++ b/Makefile
@@ -1031,8 +1031,8 @@ CLEAN_FILES +=	barebox System.map include/generated/barebox_default_env.h \
                 .tmp_version .tmp_barebox* barebox.bin barebox.map barebox.S \
 		.tmp_kallsyms* barebox_default_env* barebox.ldr \
 		scripts/bareboxenv-target barebox-flash-image \
-		Doxyfile.version barebox.srec barebox.s5p barebox.ubl \
-		barebox.uimage
+		Doxyfile.version barebox.srec barebox.s5p barebox.spi \
+		barebox.ubl barebox.uimage
 
 # Directories & files removed with 'make mrproper'
 MRPROPER_DIRS  += include/config include2 usr/include
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 208f0f4..855043a 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -217,6 +217,17 @@ KBUILD_TARGET := barebox.ubl
 KBUILD_IMAGE := barebox.ubl
 endif
 
+quiet_cmd_am35xx_spi_image = SPI-IMG $@
+      cmd_am35xx_spi_image = scripts/mk-am35xx-spi-image $< > $@
+
+barebox.spi: $(KBUILD_BINARY) FORCE
+	$(call if_changed,am35xx_spi_image)
+
+ifeq ($(CONFIG_OMAP_BUILD_SPI),y)
+KBUILD_TARGET := barebox.spi
+KBUILD_IMAGE := barebox.spi
+endif
+
 pbl := arch/arm/pbl
 zbarebox.S zbarebox.bin zbarebox: barebox.bin
 	$(Q)$(MAKE) $(build)=$(pbl) $(pbl)/$@
diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
index 36100bd..aa31633 100644
--- a/arch/arm/mach-omap/Kconfig
+++ b/arch/arm/mach-omap/Kconfig
@@ -70,6 +70,13 @@ config OMAP_BUILD_IFT
 	prompt "build ift binary"
 	bool
 
+config OMAP_BUILD_SPI
+	prompt "build SPI binary"
+	bool
+	help
+	  Say Y here if you want to build an barebox.spi image as used
+	  on the AM35xx chips when booting form SPI NOR flash.
+
 config ARCH_TEXT_BASE
 	hex
 	default 0x80e80000 if MACH_OMAP343xSDP
diff --git a/scripts/.gitignore b/scripts/.gitignore
index 6e63f85..3f1cbdb 100644
--- a/scripts/.gitignore
+++ b/scripts/.gitignore
@@ -2,6 +2,7 @@ bareboxenv
 bin2c
 gen_netx_image
 kallsyms
+mk-am35xx-spi-image
 mkimage
 mkublheader
 omap_signGP
diff --git a/scripts/Makefile b/scripts/Makefile
index 7ca5e29..55ccdac 100644
--- a/scripts/Makefile
+++ b/scripts/Makefile
@@ -9,7 +9,7 @@ hostprogs-y                      += bin2c
 hostprogs-y                      += mkimage
 hostprogs-y                      += bareboxenv
 hostprogs-$(CONFIG_ARCH_NETX)    += gen_netx_image
-hostprogs-$(CONFIG_ARCH_OMAP)    += omap_signGP
+hostprogs-$(CONFIG_ARCH_OMAP)    += omap_signGP mk-am35xx-spi-image
 hostprogs-$(CONFIG_ARCH_S5PCxx)  += s5p_cksum
 hostprogs-$(CONFIG_ARCH_DAVINCI) += mkublheader
 
diff --git a/scripts/mk-am35xx-spi-image.c b/scripts/mk-am35xx-spi-image.c
new file mode 100644
index 0000000..ec311fd
--- /dev/null
+++ b/scripts/mk-am35xx-spi-image.c
@@ -0,0 +1,141 @@
+/*
+ * mk-am35xx-spi-image.c - convert a barebox image for SPI loading on AM35xx
+ *
+ * Copyright (C) 2012 Jan Luebbe <j.luebbe@pengutronix.de>
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
+ *
+ * You should have received a copy of the GNU General Public License along
+ * with this program; if not, write to the Free Software Foundation, Inc.,
+ * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
+ */
+/**
+ * @file
+ * @brief convert a barebox image for SPI loading on AM35xx
+ *
+ * FileName: scripts/mk-am35xx-spi-image.c
+ *
+ * Booting from SPI on an AM35xx (and possibly other TI SOCs) requires
+ * a special format:
+ *
+ * - 32 bit image size in big-endian
+ * - 32 bit load address in big-endian
+ * - binary image converted from little- to big-endian
+ *
+ * This tool converts barebox.bin to the required format.
+ */
+
+#define _BSD_SOURCE
+
+#include <stdio.h>
+#include <sys/types.h>
+#include <sys/stat.h>
+#include <fcntl.h>
+#include <unistd.h>
+#include <stdint.h>
+#include <limits.h>
+#include <errno.h>
+#include <stdlib.h>
+#include <string.h>
+#include <getopt.h>
+#include <endian.h>
+
+void usage(char *prgname)
+{
+	printf("usage: %s [OPTION] FILE > IMAGE\n"
+	       "\n"
+	       "options:\n"
+	       "  -a <address> memory address for the loaded image in SRAM\n",
+	       prgname);
+}
+
+int main(int argc, char *argv[])
+{
+	FILE *input;
+	int opt;
+	off_t pos;
+	size_t size;
+	uint32_t addr = 0x40200000;
+	uint32_t temp;
+
+	while((opt = getopt(argc, argv, "a:")) != -1) {
+		switch (opt) {
+		case 'a':
+			addr = strtoul(optarg, NULL, 0);
+			break;
+		}
+	}
+
+	if (optind >= argc) {
+		usage(argv[0]);
+		exit(1);
+	}
+
+	input = fopen(argv[optind], "r");
+	if (input == NULL) {
+		perror("fopen");
+		exit(EXIT_FAILURE);
+	}
+
+	if (fseeko(input, 0, SEEK_END) == -1) {
+		perror("fseeko");
+		exit(EXIT_FAILURE);
+	}
+
+	pos = ftello(input);
+	if (pos == -1) {
+		perror("ftello");
+		exit(EXIT_FAILURE);
+	}
+	if (pos % 4) {
+		printf("error: image size must be a multiple of 4 bytes\n");
+		exit(EXIT_FAILURE);
+	}
+	if (pos > 0x100000) {
+		printf("error: image should be smaller than 1 MiB\n");
+		exit(EXIT_FAILURE);
+	}
+
+	if (fseeko(input, 0, SEEK_SET) == -1) {
+		perror("fseeko");
+		exit(EXIT_FAILURE);
+	}
+
+	/* image size */
+	temp = htobe32((uint32_t)pos);
+	fwrite(&temp, sizeof(uint32_t), 1, stdout);
+
+	/* memory address */
+	temp = htobe32(addr);
+	fwrite(&temp, sizeof(uint32_t), 1, stdout);
+
+	for (;;) {
+		size = fread(&temp, 1, sizeof(uint32_t), input);
+		if (!size)
+			break;
+		if (size != 4) {
+			perror("fread");
+			exit(EXIT_FAILURE);
+		}
+		temp = htobe32(le32toh(temp));
+		if (fwrite(&temp, 1, sizeof(uint32_t), stdout) != 4) {
+			perror("fwrite");
+			exit(EXIT_FAILURE);
+		}
+	}
+
+	if (fclose(input) != 0) {
+		perror("fclose");
+		exit(EXIT_FAILURE);
+	}
+
+	exit(EXIT_SUCCESS);
+}
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
