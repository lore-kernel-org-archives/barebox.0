Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlsji-0000H6-2E
 for barebox@lists.infradead.org; Fri, 12 Jul 2019 10:25:12 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 12 Jul 2019 12:24:54 +0200
Message-Id: <20190712102457.15339-2-a.fatoum@pengutronix.de>
In-Reply-To: <20190712102457.15339-1-a.fatoum@pengutronix.de>
References: <20190712102457.15339-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/5] images: add support for generating STM32MP images
To: barebox@lists.infradead.org
Cc: Marco Felsch <marco.felsch@gmail.com>, mfe@pengutronix.de

From: Marco Felsch <marco.felsch@gmail.com>

Both STM32MP BootROM and TF-A first stage expect subsequent bootloader
stages to feature a specific STM32 file header. Add a stm32image
utility to address this.

Signed-off-by: Marco Felsch <marco.felsch@gmail.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 images/Makefile.stm32mp |   8 ++
 scripts/Makefile        |   1 +
 scripts/Makefile.lib    |   3 +
 scripts/stm32image.c    | 281 ++++++++++++++++++++++++++++++++++++++++
 4 files changed, 293 insertions(+)
 create mode 100644 scripts/stm32image.c

diff --git a/images/Makefile.stm32mp b/images/Makefile.stm32mp
index bc3e7394d729..a0baad30c3ad 100644
--- a/images/Makefile.stm32mp
+++ b/images/Makefile.stm32mp
@@ -3,6 +3,14 @@
 # barebox image generation Makefile for STMicroelectronics MP
 #
 
+# %.stm32 - convert into STM32MP image
+# --------------------------------------
+
+$(obj)/%.stm32: $(obj)/% FORCE
+	$(call if_changed,stm32_image)
+
+# --------------------------------------
+
 pblb-$(CONFIG_MACH_STM32MP157C_DK2) += start_stm32mp157c_dk2
 FILE_barebox-stm32mp157c-dk2.img = start_stm32mp157c_dk2.pblb
 image-$(CONFIG_MACH_STM32MP157C_DK2) += barebox-stm32mp157c-dk2.img
diff --git a/scripts/Makefile b/scripts/Makefile
index 1af5f9fc985b..178313b1e244 100644
--- a/scripts/Makefile
+++ b/scripts/Makefile
@@ -22,6 +22,7 @@ hostprogs-$(CONFIG_ARCH_ZYNQ)	 += zynq_mkimage
 hostprogs-$(CONFIG_ARCH_SOCFPGA) += socfpga_mkimage
 hostprogs-$(CONFIG_MXS_HOSTTOOLS)+= mxsimage mxsboot
 hostprogs-$(CONFIG_ARCH_LAYERSCAPE) += pblimage
+hostprogs-$(CONFIG_ARCH_STM32MP) += stm32image
 HOSTCFLAGS += -I$(srctree)/scripts/include/
 HOSTLDLIBS_mxsimage  = `pkg-config --libs openssl`
 HOSTCFLAGS_omap3-usb-loader.o = `pkg-config --cflags libusb-1.0`
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index 87bff2d296e3..ae49ca31e8f5 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -509,6 +509,9 @@ quiet_cmd_cboot_bct = BCT     $@
 $(obj)/%.bct: $(obj)/%.bct.cfg
 	$(call cmd,cboot_bct)
 
+quiet_cmd_stm32_image = STM32-IMG $@
+      cmd_stm32_image = $(objtree)/scripts/stm32image $(OPTS_$(@F)) -i $< -o $@
+
 quiet_cmd_b64dec = B64DEC  $@
       cmd_b64dec = base64 -d $< > $@
 
diff --git a/scripts/stm32image.c b/scripts/stm32image.c
new file mode 100644
index 000000000000..c33bcca0d80a
--- /dev/null
+++ b/scripts/stm32image.c
@@ -0,0 +1,281 @@
+// SPDX-License-Identifier: GPL-2.0+ OR BSD-3-Clause
+/*
+ * Copyright (C) 2018, STMicroelectronics - All Rights Reserved
+ * Copyright (C) 2019, Pengutronix
+ */
+
+#include <stdio.h>
+#include <stdlib.h>
+#include <errno.h>
+#include <sys/stat.h>
+#include <unistd.h>
+#include <fcntl.h>
+#include <string.h>
+#include <stdint.h>
+#include <getopt.h>
+#include "compiler.h"
+
+#ifndef MAP_POPULATE
+#define MAP_POPULATE 0
+#endif
+
+/* magic ='S' 'T' 'M' 0x32 */
+#define HEADER_MAGIC htobe32(0x53544D32)
+#define VER_MAJOR_IDX	2
+#define VER_MINOR_IDX	1
+#define VER_VARIANT_IDX	0
+/* default option : bit0 => no signature */
+#define HEADER_DEFAULT_OPTION	htole32(0x00000001)
+/* default binary type for barebox */
+#define HEADER_TYPE_BAREBOX	htole32(0x00000000)
+#define HEADER_LENGTH	0x100
+
+#define FSBL_LOADADDR		0x2ffc2400
+#define FSBL_ENTRYPOINT		(FSBL_LOADADDR + HEADER_LENGTH)
+#define MAX_FSBL_PAYLOAD_SIZE	(247 * 1024)
+
+struct __attribute((packed)) stm32_header {
+	uint32_t magic_number;
+	uint32_t image_signature[64 / 4];
+	uint32_t image_checksum;
+	uint8_t  header_version[4];
+	uint32_t image_length;
+	uint32_t image_entry_point;
+	uint32_t reserved1;
+	uint32_t load_address;
+	uint32_t reserved2;
+	uint32_t version_number;
+	uint32_t option_flags;
+	uint32_t ecdsa_algorithm;
+	uint32_t ecdsa_public_key[64 / 4];
+	uint32_t padding[83 / 4];
+	uint32_t binary_type;
+};
+
+static struct stm32_header stm32image_header;
+
+static const char *infile;
+static const char *outfile;
+static int in_fd;
+static int out_fd;
+static uint32_t loadaddr;
+static uint32_t entrypoint;
+static uint32_t pbl_size;
+static uint32_t version = 0x01;
+
+static void stm32image_print_header(void)
+{
+	printf("Image Type   : STMicroelectronics STM32 V%d.%d\n",
+	       stm32image_header.header_version[VER_MAJOR_IDX],
+	       stm32image_header.header_version[VER_MINOR_IDX]);
+	printf("Image Size   : %u bytes\n",
+	       le32toh(stm32image_header.image_length));
+	printf("Image Load   : 0x%08x\n",
+	       le32toh(stm32image_header.load_address));
+	printf("Entry Point  : 0x%08x\n",
+	       le32toh(stm32image_header.image_entry_point));
+	printf("Checksum     : 0x%08x\n",
+	       le32toh(stm32image_header.image_checksum));
+	printf("Option     : 0x%08x\n",
+	       le32toh(stm32image_header.option_flags));
+	printf("BinaryType : 0x%08x\n",
+	       le32toh(stm32image_header.binary_type));
+}
+
+static uint32_t stm32image_checksum(void)
+{
+	uint32_t csum = 0;
+	uint32_t len = pbl_size;
+	uint8_t *p;
+
+	p = mmap(NULL, len, PROT_READ, MAP_PRIVATE | MAP_POPULATE, in_fd, 0);
+	if (p == MAP_FAILED) {
+		perror("mmap");
+		exit(EXIT_FAILURE);
+	}
+
+	for (; len > 0; len--)
+		csum += *p++;
+
+	munmap(p, len);
+
+	return csum;
+}
+
+static void stm32image_set_header(void)
+{
+
+	memset(&stm32image_header, 0, sizeof(struct stm32_header));
+
+	/* set default values */
+	stm32image_header.magic_number = HEADER_MAGIC;
+	stm32image_header.header_version[VER_MAJOR_IDX] = version;
+	stm32image_header.option_flags = HEADER_DEFAULT_OPTION;
+	stm32image_header.ecdsa_algorithm = 1;
+	/* used to specify the 2nd-stage barebox address within dram */
+	stm32image_header.load_address = loadaddr;
+	stm32image_header.binary_type = HEADER_TYPE_BAREBOX;
+
+	stm32image_header.image_entry_point = htole32(entrypoint);
+	stm32image_header.image_length = htole32(pbl_size);
+	stm32image_header.image_checksum = stm32image_checksum();
+}
+
+static void stm32image_check_params(void)
+{
+	off_t ret;
+
+	in_fd = open(infile, O_RDONLY);
+	if (in_fd < 0) {
+		fprintf(stderr, "Error: Cannot open %s for reading: %s\n", infile,
+			strerror(errno));
+		exit(EXIT_FAILURE);
+	}
+
+	if (!pbl_size) {
+		pbl_size = lseek(in_fd, 0, SEEK_END);
+		if (pbl_size == (uint32_t)-1) {
+			fprintf(stderr, "Cannot seek to end\n");
+			exit(EXIT_FAILURE);
+		}
+
+		ret = lseek(in_fd, 0, SEEK_SET);
+		if (ret == (off_t)-1) {
+			fprintf(stderr, "Cannot seek to start\n");
+			exit(EXIT_FAILURE);
+		}
+	}
+
+	out_fd = creat(outfile, 0644);
+	if (out_fd < 0) {
+		fprintf(stderr, "Cannot open %s for writing: %s\n",
+			outfile, strerror(errno));
+		exit(EXIT_FAILURE);
+	}
+
+	if (loadaddr < 0xc0000000) {
+		fprintf(stderr, "Error: loadaddr must be within the DDR memory space\n");
+		exit(EXIT_FAILURE);
+	}
+}
+
+static void copy_fd(int in, int out)
+{
+	int bs = 4096;
+	void *buf = malloc(bs);
+
+	if (!buf)
+		exit(EXIT_FAILURE);
+
+	while (1) {
+		int now, wr;
+
+		now = read(in, buf, bs);
+		if (now < 0) {
+			fprintf(stderr, "read failed with %s\n", strerror(errno));
+			exit(EXIT_FAILURE);
+		}
+
+		if (!now)
+			break;
+
+		wr = write(out, buf, now);
+		if (wr < 0) {
+			fprintf(stderr, "write failed with %s\n", strerror(errno));
+			exit(EXIT_FAILURE);
+		}
+
+		if (wr != now) {
+			fprintf(stderr, "short write\n");
+			exit(EXIT_FAILURE);
+		}
+	}
+
+	free(buf);
+}
+
+int main(int argc, char *argv[])
+{
+	const char *verbose;
+	int opt, ret;
+	off_t pos;
+	entrypoint = FSBL_ENTRYPOINT;
+
+	while ((opt = getopt(argc, argv, "i:o:a:e:s:v:h")) != -1) {
+		switch (opt) {
+		case 'i':
+			infile = optarg;
+			break;
+		case 'o':
+			outfile = optarg;
+			break;
+		case 'a':
+			loadaddr = strtol(optarg, NULL, 16);
+			break;
+		case 'e':
+			entrypoint = strtol(optarg, NULL, 16);
+			break;
+		case 's':
+			pbl_size = strtol(optarg, NULL, 16);
+			break;
+		case 'v':
+			version = strtol(optarg, NULL, 16);
+			break;
+		case 'h':
+			printf("%s [-i inputfile] [-o outputfile] [-a loadaddr] [-s pblimage size in byte]\n", argv[0]);
+			exit(EXIT_SUCCESS);
+		default:
+			fprintf(stderr, "Unknown option: -%c\n", opt);
+			exit(EXIT_FAILURE);
+		}
+	}
+
+	if (!infile) {
+		fprintf(stderr, "No infile given\n");
+		exit(EXIT_FAILURE);
+	}
+
+	if (!outfile) {
+		fprintf(stderr, "No outfile given\n");
+		exit(EXIT_FAILURE);
+	}
+
+	stm32image_check_params();
+	stm32image_set_header();
+
+	ret = write(out_fd, (const void *)&stm32image_header, sizeof(struct stm32_header));
+	if (ret != 0x100) {
+		fprintf(stderr, "Error: write on %s: %s\n", outfile,
+			strerror(errno));
+		exit(EXIT_FAILURE);
+	}
+
+	verbose = getenv("V");
+	if (verbose && !strcmp(verbose, "1"))
+		stm32image_print_header();
+
+	ret = ftruncate(out_fd, HEADER_LENGTH);
+	if (ret) {
+		fprintf(stderr, "Cannot truncate\n");
+		exit(EXIT_FAILURE);
+	}
+
+	pos = lseek(out_fd, HEADER_LENGTH, SEEK_SET);
+	if (pos == (off_t)-1) {
+		fprintf(stderr, "Cannot lseek 1\n");
+		exit(EXIT_FAILURE);
+	}
+
+	pos = lseek(in_fd, 0, SEEK_SET);
+	if (pos == (off_t)-1) {
+		fprintf(stderr, "Cannot lseek 2\n");
+		exit(EXIT_FAILURE);
+	}
+
+	copy_fd(in_fd, out_fd);
+
+	close(in_fd);
+	close(out_fd);
+
+	exit(EXIT_SUCCESS);
+}
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
