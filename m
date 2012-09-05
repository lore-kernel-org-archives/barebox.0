Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T9Htv-0007FL-V9
 for barebox@lists.infradead.org; Wed, 05 Sep 2012 15:52:29 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Wed,  5 Sep 2012 17:52:11 +0200
Message-Id: <1346860337-777-4-git-send-email-jlu@pengutronix.de>
In-Reply-To: <1346860337-777-1-git-send-email-jlu@pengutronix.de>
References: <1346860337-777-1-git-send-email-jlu@pengutronix.de>
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
Subject: [PATCH 3/8] scripts: add tool to create image for SPI boot on AM35xx
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
 arch/arm/Makefile             |    8 +++
 arch/arm/mach-omap/Kconfig    |    7 ++
 scripts/.gitignore            |    1 +
 scripts/Makefile              |    2 +-
 scripts/mk-am35xx-spi-image.c |  141 +++++++++++++++++++++++++++++++++++++++++
 5 files changed, 158 insertions(+), 1 deletion(-)
 create mode 100644 scripts/mk-am35xx-spi-image.c

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 8e660be..e40b67e 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -221,6 +221,14 @@ archclean:
 
 KBUILD_IMAGE := $(KBUILD_BINARY)
 
+barebox.spi: barebox.bin
+	@echo "  SPI    " $@
+	$(Q)scripts/mk-am35xx-spi-image barebox.bin > barebox.spi
+
+ifeq ($(CONFIG_OMAP_BUILD_SPI),y)
+all: barebox.spi
+endif
+
 archprepare: maketools
 maketools:
 	$(Q)$(MAKE) $(build)=arch/arm/tools include/generated/mach-types.h
diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
index d735284..a781287 100644
--- a/arch/arm/mach-omap/Kconfig
+++ b/arch/arm/mach-omap/Kconfig
@@ -91,6 +91,13 @@ config OMAP_BUILD_IFT
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
