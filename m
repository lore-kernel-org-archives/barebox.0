Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTRkN-0007Gd-Pc
 for barebox@lists.infradead.org; Sat, 09 Nov 2019 14:30:00 +0000
Received: from astat.fritz.box (a89-183-91-60.net-htp.de [89.183.91.60])
 by lynxeye.de (Postfix) with ESMTPA id C2A8BE74240
 for <barebox@lists.infradead.org>; Sat,  9 Nov 2019 15:28:41 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Sat,  9 Nov 2019 15:28:23 +0100
Message-Id: <20191109142837.82409-4-dev@lynxeye.de>
In-Reply-To: <20191109142837.82409-1-dev@lynxeye.de>
References: <20191109142837.82409-1-dev@lynxeye.de>
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
Subject: [PATCH v2 04/18] ARM: zynq: move header generation to zynq_mkimage
To: barebox@lists.infradead.org

Instead of generating a suitable image header with linker magic, move
all of this into zynq_mkimage. The configuration file format and parsing
is based on imx-image. This gets us one step further on the road to
proper multi-image support.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/boards/avnet-zedboard/Makefile       |   1 -
 arch/arm/boards/avnet-zedboard/flash_header.c |  62 -----
 .../boards/avnet-zedboard/zedboard.zynqcfg    |  24 ++
 arch/arm/mach-zynq/include/mach/barebox.lds.h |   8 -
 .../include/mach/zynq-flash-header.h          |  39 ++-
 .../include/mach/zynq7000-header-regs.h       |  49 ++++
 images/Makefile.zynq                          |  11 +-
 include/asm-generic/barebox.lds.h             |   3 +-
 scripts/Makefile                              |   1 +
 scripts/zynq_mkimage.c                        | 232 +++++++++++++++++-
 10 files changed, 320 insertions(+), 110 deletions(-)
 delete mode 100644 arch/arm/boards/avnet-zedboard/flash_header.c
 create mode 100644 arch/arm/boards/avnet-zedboard/zedboard.zynqcfg
 delete mode 100644 arch/arm/mach-zynq/include/mach/barebox.lds.h
 create mode 100644 arch/arm/mach-zynq/include/mach/zynq7000-header-regs.h

diff --git a/arch/arm/boards/avnet-zedboard/Makefile b/arch/arm/boards/avnet-zedboard/Makefile
index a2c3104e6c48..01c7a259e9a5 100644
--- a/arch/arm/boards/avnet-zedboard/Makefile
+++ b/arch/arm/boards/avnet-zedboard/Makefile
@@ -1,3 +1,2 @@
 obj-y += board.o
 lwl-y += lowlevel.o
-lwl-y += flash_header.o
diff --git a/arch/arm/boards/avnet-zedboard/flash_header.c b/arch/arm/boards/avnet-zedboard/flash_header.c
deleted file mode 100644
index d9eb35b0d5c6..000000000000
--- a/arch/arm/boards/avnet-zedboard/flash_header.c
+++ /dev/null
@@ -1,62 +0,0 @@
-/*
- * Copyright (C) 2012 Steffen Trumtrar <s.trumtrar@pengutronix.de>
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- */
-
-#include <common.h>
-#include <asm/byteorder.h>
-#include <mach/zynq-flash-header.h>
-#include <mach/zynq7000-regs.h>
-#include <asm/barebox-arm-head.h>
-
-#define REG(a, v) { .addr = cpu_to_le32(a), .val = cpu_to_le32(v), }
-
-struct zynq_reg_entry __ps7reg_entry_section reg_entry[] = {
-	REG(ZYNQ_SLCR_UNLOCK, 0x0000DF0D),
-	REG(ZYNQ_CLOCK_CTRL_BASE + ZYNQ_CLK_621_TRUE, 0x00000001),
-	REG(ZYNQ_CLOCK_CTRL_BASE + ZYNQ_APER_CLK_CTRL, 0x01FC044D),
-
-	REG(ZYNQ_CLOCK_CTRL_BASE + ZYNQ_ARM_PLL_CTRL, 0x00028008),
-	REG(ZYNQ_CLOCK_CTRL_BASE + ZYNQ_ARM_PLL_CFG, 0x000FA220),
-	REG(ZYNQ_CLOCK_CTRL_BASE + ZYNQ_ARM_PLL_CTRL, 0x00028010),
-	REG(ZYNQ_CLOCK_CTRL_BASE + ZYNQ_ARM_PLL_CTRL, 0x00028011),
-	REG(ZYNQ_CLOCK_CTRL_BASE + ZYNQ_ARM_PLL_CTRL, 0x00028010),
-	REG(ZYNQ_CLOCK_CTRL_BASE + ZYNQ_ARM_PLL_CTRL, 0x00028000),
-
-	REG(ZYNQ_CLOCK_CTRL_BASE + ZYNQ_IO_PLL_CTRL, 0x0001E008),
-	REG(ZYNQ_CLOCK_CTRL_BASE + ZYNQ_IO_PLL_CFG, 0x001452C0),
-	REG(ZYNQ_CLOCK_CTRL_BASE + ZYNQ_IO_PLL_CTRL, 0x0001E010),
-	REG(ZYNQ_CLOCK_CTRL_BASE + ZYNQ_IO_PLL_CTRL, 0x0001E011),
-	REG(ZYNQ_CLOCK_CTRL_BASE + ZYNQ_IO_PLL_CTRL, 0x0001E010),
-	REG(ZYNQ_CLOCK_CTRL_BASE + ZYNQ_IO_PLL_CTRL, 0x0001E000),
-
-	REG(0xf8000150, 0x00000a03),
-
-	/* stop */
-	REG(0xFFFFFFFF, 0x00000000),
-};
-
-struct zynq_flash_header __flash_header_section flash_header = {
-	.width_det		= WIDTH_DETECTION_MAGIC,
-	.image_id		= IMAGE_IDENTIFICATION,
-	.enc_stat		= 0x0,
-	.user			= 0x0,
-	.flash_offset		= 0x8c0,
-	.length			= (unsigned int)&_barebox_image_size,
-	.res0			= 0x0,
-	.start_of_exec		= 0x0,
-	.total_len		= (unsigned int)&_barebox_image_size,
-	.res1			= 0x1,
-	.checksum		= 0x0,
-	.res2			= 0x0,
-};
diff --git a/arch/arm/boards/avnet-zedboard/zedboard.zynqcfg b/arch/arm/boards/avnet-zedboard/zedboard.zynqcfg
new file mode 100644
index 000000000000..3f8808d3d7be
--- /dev/null
+++ b/arch/arm/boards/avnet-zedboard/zedboard.zynqcfg
@@ -0,0 +1,24 @@
+#include <mach/zynq7000-header-regs.h>
+
+wm 32 ZYNQ_SLCR_UNLOCK		0x0000DF0D
+wm 32 ZYNQ_CLK_621_TRUE		0x00000001
+wm 32 ZYNQ_APER_CLK_CTRL	0x01FC044D
+
+wm 32 ZYNQ_ARM_PLL_CTRL		0x00028008
+wm 32 ZYNQ_ARM_PLL_CFG		0x000FA220
+wm 32 ZYNQ_ARM_PLL_CTRL		0x00028010
+wm 32 ZYNQ_ARM_PLL_CTRL		0x00028011
+wm 32 ZYNQ_ARM_PLL_CTRL		0x00028010
+wm 32 ZYNQ_ARM_PLL_CTRL		0x00028000
+
+wm 32 ZYNQ_IO_PLL_CTRL		0x0001E008
+wm 32 ZYNQ_IO_PLL_CFG		0x001452C0
+wm 32 ZYNQ_IO_PLL_CTRL		0x0001E010
+wm 32 ZYNQ_IO_PLL_CTRL		0x0001E011
+wm 32 ZYNQ_IO_PLL_CTRL		0x0001E010
+wm 32 ZYNQ_IO_PLL_CTRL		0x0001E000
+
+wm 32 ZYNQ_SDIO_CLK_CTRL	0x00000a03
+
+/* stop */
+wm 32 0xFFFFFFFF			0x00000000
\ No newline at end of file
diff --git a/arch/arm/mach-zynq/include/mach/barebox.lds.h b/arch/arm/mach-zynq/include/mach/barebox.lds.h
deleted file mode 100644
index 3d35fe988090..000000000000
--- a/arch/arm/mach-zynq/include/mach/barebox.lds.h
+++ /dev/null
@@ -1,8 +0,0 @@
-#define PRE_IMAGE \
-	.pre_image : {					\
-		. = 0x20;				\
-		KEEP(*(.flash_header_0x0*))		\
-		. = 0xa0;				\
-		KEEP(*(.ps7reg_entry_0x0A0))		\
-		. = 0x8c0;				\
-	}
diff --git a/arch/arm/mach-zynq/include/mach/zynq-flash-header.h b/arch/arm/mach-zynq/include/mach/zynq-flash-header.h
index 3b67e55a7115..ba4b67f479e9 100644
--- a/arch/arm/mach-zynq/include/mach/zynq-flash-header.h
+++ b/arch/arm/mach-zynq/include/mach/zynq-flash-header.h
@@ -1,38 +1,27 @@
 #ifndef __MACH_FLASH_HEADER_H
 #define __MACH_FLASH_HEADER_H
 
-#include <asm-generic/sections.h>
+#include <stdint.h>
 
-#define __flash_header_section		__section(.flash_header_0x0)
-#define __ps7reg_entry_section		__section(.ps7reg_entry_0x0A0)
-#define __image_len_section		__section(.image_len_0x08c0)
-#define FLASH_HEADER_OFFSET		0x0
+#define REGINIT_OFFSET			0x0a0
 #define IMAGE_OFFSET			0x8c0
 
-#define DEST_BASE			0x8c0
-#define FLASH_HEADER_BASE	(DEST_BASE + FLASH_HEADER_OFFSET)
-
-struct zynq_reg_entry {
-	__le32 addr;
-	__le32 val;
-};
-
 #define WIDTH_DETECTION_MAGIC	0xAA995566
 #define IMAGE_IDENTIFICATION	0x584C4E58	/* "XLNX" */
 
 struct zynq_flash_header {
-	__le32 width_det;
-	__le32 image_id;
-	__le32 enc_stat;
-	__le32 user;
-	__le32 flash_offset;
-	__le32 length;
-	__le32 res0;
-	__le32 start_of_exec;
-	__le32 total_len;
-	__le32 res1;
-	__le32 checksum;
-	__le32 res2;
+	uint32_t width_det;
+	uint32_t image_id;
+	uint32_t enc_stat;
+	uint32_t user;
+	uint32_t flash_offset;
+	uint32_t length;
+	uint32_t res0;
+	uint32_t start_of_exec;
+	uint32_t total_len;
+	uint32_t res1;
+	uint32_t checksum;
+	uint32_t res2;
 };
 
 #endif /* __MACH_FLASH_HEADER_H */
diff --git a/arch/arm/mach-zynq/include/mach/zynq7000-header-regs.h b/arch/arm/mach-zynq/include/mach/zynq7000-header-regs.h
new file mode 100644
index 000000000000..4e240647461e
--- /dev/null
+++ b/arch/arm/mach-zynq/include/mach/zynq7000-header-regs.h
@@ -0,0 +1,49 @@
+/*
+ * (c) 2012 Steffen Trumtrar <s.trumtrar@pengutronix.de>
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
+ */
+
+#define ZYNQ_SLCR_LOCK			0xF8000004
+#define ZYNQ_SLCR_UNLOCK		0xF8000008
+#define ZYNQ_ARM_PLL_CTRL		0xF8000100
+#define ZYNQ_DDR_PLL_CTRL		0xF8000104
+#define ZYNQ_IO_PLL_CTRL		0xF8000108
+#define ZYNQ_PLL_STATUS			0xF800010C
+#define ZYNQ_ARM_PLL_CFG		0xF8000110
+#define ZYNQ_DDR_PLL_CFG		0xF8000114
+#define ZYNQ_IO_PLL_CFG			0xF8000118
+#define ZYNQ_ARM_CLK_CTRL		0xF8000120
+#define ZYNQ_DDR_CLK_CTRL		0xF8000124
+#define ZYNQ_DCI_CLK_CTRL		0xF8000128
+#define ZYNQ_APER_CLK_CTRL		0xF800012C
+#define ZYNQ_USB0_CLK_CTRL		0xF8000130
+#define ZYNQ_USB1_CLK_CTRL		0xF8000134
+#define ZYNQ_GEM0_RCLK_CTRL		0xF8000138
+#define ZYNQ_GEM1_RCLK_CTRL		0xF800013C
+#define ZYNQ_GEM0_CLK_CTRL		0xF8000140
+#define ZYNQ_GEM1_CLK_CTRL		0xF8000144
+#define ZYNQ_SMC_CLK_CTRL		0xF8000148
+#define ZYNQ_LQSPI_CLK_CTRL		0xF800014C
+#define ZYNQ_SDIO_CLK_CTRL		0xF8000150
+#define ZYNQ_UART_CLK_CTRL		0xF8000154
+#define ZYNQ_SPI_CLK_CTRL		0xF8000158
+#define ZYNQ_CAN_CLK_CTRL		0xF800015C
+#define ZYNQ_CAN_MIOCLK_CTRL	0xF8000160
+#define ZYNQ_DBG_CLK_CTRL		0xF8000164
+#define ZYNQ_PCAP_CLK_CTRL		0xF8000168
+#define ZYNQ_TOPSW_CLK_CTRL		0xF800016C
+#define ZYNQ_FPGA0_CLK_CTRL		0xF8000170
+#define ZYNQ_FPGA1_CLK_CTRL		0xF8000180
+#define ZYNQ_FPGA2_CLK_CTRL		0xF8000190
+#define ZYNQ_FPGA3_CLK_CTRL		0xF80001A0
+#define ZYNQ_CLK_621_TRUE		0xF80001C4
diff --git a/images/Makefile.zynq b/images/Makefile.zynq
index cc0cf6d2dfa0..b089a9fd26f4 100644
--- a/images/Makefile.zynq
+++ b/images/Makefile.zynq
@@ -1,14 +1,23 @@
 #
 # barebox image generation Makefile for Xilinx Zynq images
 #
+
+zynqcfg_cpp_flags  = -Wp,-MD,$(depfile) -nostdinc -x assembler-with-cpp \
+                     -I arch/arm/mach-zynq/include
+
+zynqcfg-tmp = $(subst $(comma),_,$(dot-target).zynqcfg.tmp)
+
 quiet_cmd_zynq_image = ZYNQIMG  $@
       cmd_zynq_image = \
-         $(objtree)/scripts/zynq_mkimage -f $(subst .zynqimg,,$@) -o $@
+         $(CPP) $(zynqcfg_cpp_flags) -o $(zynqcfg-tmp) $(CFG_$(@F)) ; \
+         $(objtree)/scripts/zynq_mkimage -c $(zynqcfg-tmp) \
+           -f $(subst .zynqimg,,$@) -o $@
 
 $(obj)/%.zynqimg: $(obj)/% FORCE
 	$(call if_changed,zynq_image)
 
 #------------------------------------------------------------------------------
 
+CFG_start_pbl.pblb.zynqimg = $(board)/avnet-zedboard/zedboard.zynqcfg
 FILE_barebox-avnet-zedboard.img = start_pbl.pblb.zynqimg
 image-$(CONFIG_MACH_ZEDBOARD) += barebox-avnet-zedboard.img
diff --git a/include/asm-generic/barebox.lds.h b/include/asm-generic/barebox.lds.h
index b6ca8eb2be27..68b78a13a962 100644
--- a/include/asm-generic/barebox.lds.h
+++ b/include/asm-generic/barebox.lds.h
@@ -7,8 +7,7 @@
 #define STRUCT_ALIGN() . = ALIGN(STRUCT_ALIGNMENT)
 
 #if defined CONFIG_X86 || \
-	defined CONFIG_ARCH_EP93XX || \
-	defined CONFIG_ARCH_ZYNQ
+	defined CONFIG_ARCH_EP93XX
 #include <mach/barebox.lds.h>
 #endif
 
diff --git a/scripts/Makefile b/scripts/Makefile
index 16bb513fbbfa..eb6718fadf9f 100644
--- a/scripts/Makefile
+++ b/scripts/Makefile
@@ -20,6 +20,7 @@ hostprogs-$(CONFIG_MVEBU_HOSTTOOLS) += kwbimage kwboot mvebuimg
 hostprogs-$(CONFIG_ARCH_OMAP)    += omap_signGP mk-omap-image
 hostprogs-$(CONFIG_ARCH_S5PCxx)  += s5p_cksum
 hostprogs-$(CONFIG_ARCH_DAVINCI) += mkublheader
+HOSTCFLAGS_zynq_mkimage.o = -I$(srctree) -I$(srctree)/arch/arm/mach-zynq/include
 hostprogs-$(CONFIG_ARCH_ZYNQ)	 += zynq_mkimage
 hostprogs-$(CONFIG_ARCH_SOCFPGA) += socfpga_mkimage
 hostprogs-$(CONFIG_MXS_HOSTTOOLS)+= mxsimage mxsboot
diff --git a/scripts/zynq_mkimage.c b/scripts/zynq_mkimage.c
index 905d6fc69a54..bf214ca5d0d1 100644
--- a/scripts/zynq_mkimage.c
+++ b/scripts/zynq_mkimage.c
@@ -15,35 +15,241 @@
 #include <endian.h>
 #include <errno.h>
 #include <getopt.h>
+#include <linux/kernel.h>
+#include <mach/zynq-flash-header.h>
 #include <malloc.h>
+#include <stdint.h>
 #include <stdio.h>
 #include <stdlib.h>
+#include <string.h>
 #include <sys/stat.h>
+#include <sys/types.h>
 
 static char *prgname;
 
 static void usage(char *name)
 {
 	fprintf(stderr, "usage: %s [OPTIONS]\n\n"
+			"-c <config>  configuration input file"
 			"-f <input>   input image file\n"
 			"-o <output>  output file\n"
 			"-h           this help\n", prgname);
 		exit(1);
 }
 
+#define MAXARGS 16
+
+static int parse_line(char *line, char *argv[])
+{
+	int nargs = 0;
+
+	while (nargs < MAXARGS) {
+
+		/* skip any white space */
+		while ((*line == ' ') || (*line == '\t'))
+			++line;
+
+		if (*line == '\0') {	/* end of line, no more args	*/
+			argv[nargs] = NULL;
+			return nargs;
+		}
+
+		argv[nargs++] = line;	/* begin of argument string	*/
+
+		/* find end of string */
+		while (*line && (*line != ' ') && (*line != '\t'))
+			++line;
+
+		if (*line == '\0') {	/* end of line, no more args	*/
+			argv[nargs] = NULL;
+			return nargs;
+		}
+
+		*line++ = '\0';		/* terminate current arg	 */
+	}
+
+	printf("** Too many args (max. %d) **\n", MAXARGS);
+
+	return nargs;
+}
+
+struct command {
+	const char *name;
+	int (*parse)(char *buf, int argc, char *argv[]);
+};
+
+static int do_cmd_write_mem(char *buf, int argc, char *argv[])
+{
+	unsigned int *wordbuf = (unsigned int *)(buf + REGINIT_OFFSET);
+	static int reginit_offset;
+	uint32_t addr, val, width;
+	char *end;
+
+	if (argc != 4) {
+		fprintf(stderr, "usage: wm [8|16|32] <addr> <val>\n");
+		return -EINVAL;
+	}
+
+	width = strtoul(argv[1], &end, 0);
+	if (*end != '\0' || width != 32) {
+		fprintf(stderr, "illegal width token \"%s\"\n", argv[1]);
+		return -EINVAL;
+	}
+
+	addr = strtoul(argv[2], &end, 0);
+	if (*end != '\0') {
+		fprintf(stderr, "illegal address token \"%s\"\n", argv[2]);
+		return -EINVAL;
+	}
+
+	val = strtoul(argv[3], &end, 0);
+	if (*end != '\0') {
+		fprintf(stderr, "illegal value token \"%s\"\n", argv[3]);
+		return -EINVAL;
+	}
+
+	wordbuf[reginit_offset] = htole32(addr);
+	wordbuf[reginit_offset + 1] = htole32(val);
+	wordbuf[reginit_offset + 1] = htole32(val);
+
+	reginit_offset += 2;
+
+	return 0;
+}
+
+struct command cmds[] = {
+	{
+		.name = "wm",
+		.parse = do_cmd_write_mem,
+	},
+};
+
+static char *readcmd(FILE *f)
+{
+	static char *buf;
+	char *str;
+	ssize_t ret;
+
+	if (!buf) {
+		buf = malloc(4096);
+		if (!buf)
+			return NULL;
+	}
+
+	str = buf;
+	*str = 0;
+
+	while (1) {
+		ret = fread(str, 1, 1, f);
+		if (!ret)
+			return strlen(buf) ? buf : NULL;
+
+		if (*str == '\n' || *str == ';') {
+			*str = 0;
+			return buf;
+		}
+
+		str++;
+	}
+}
+
+int parse_config(char *buf, const char *filename)
+{
+	FILE *f;
+	int lineno = 0;
+	char *line = NULL, *tmp;
+	char *argv[MAXARGS];
+	int nargs, i, ret = 0;
+
+	f = fopen(filename, "r");
+	if (!f) {
+		fprintf(stderr, "Cannot open config file\n");
+		exit(1);
+	}
+
+	while (1) {
+		line = readcmd(f);
+		if (!line)
+			break;
+
+		lineno++;
+
+		tmp = strchr(line, '#');
+		if (tmp)
+			*tmp = 0;
+
+		nargs = parse_line(line, argv);
+		if (!nargs)
+			continue;
+
+		ret = -ENOENT;
+
+		for (i = 0; i < ARRAY_SIZE(cmds); i++) {
+			if (!strcmp(cmds[i].name, argv[0])) {
+				ret = cmds[i].parse(buf, nargs, argv);
+				if (ret) {
+					fprintf(stderr, "error in line %d: %s\n",
+							lineno, strerror(-ret));
+					goto cleanup;
+				}
+				break;
+			}
+		}
+
+		if (ret == -ENOENT) {
+			fprintf(stderr, "no such command: %s\n", argv[0]);
+			goto cleanup;
+		}
+	}
+
+cleanup:
+	fclose(f);
+	return ret;
+}
+
+static void add_header(char *buf, unsigned int image_size)
+{
+	unsigned int *wordbuf = (unsigned int *)buf;
+	struct zynq_flash_header flash_header = {
+		.width_det			= WIDTH_DETECTION_MAGIC,
+		.image_id			= IMAGE_IDENTIFICATION,
+		.enc_stat			= 0x0,
+		.user				= 0x0,
+		.flash_offset		= IMAGE_OFFSET,
+		.length				= image_size,
+		.res0				= 0x0,
+		.start_of_exec		= 0x0,
+		.total_len			= image_size,
+		.res1				= 0x1,
+		.checksum			= 0x0,
+		.res2				= 0x0,
+	};
+	int i, sum = 0;
+
+	memcpy(wordbuf + 0x8, &flash_header, sizeof(flash_header));
+
+	for (i = 0x8; i < 0x12; i++)
+		sum += htole32(wordbuf[i]);
+
+	sum = ~sum;
+	wordbuf[i] = sum;
+}
+
 int main(int argc, char *argv[])
 {
 	FILE *ifile, *ofile;
-	unsigned int *buf;
-	const char *infile = NULL, *outfile = NULL;
+	char *buf;
+	const char *infile = NULL, *outfile = NULL, *cfgfile = NULL;
 	struct stat st;
-	unsigned int i,sum = 0;
 	int opt;
 
 	prgname = argv[0];
 
-	while ((opt = getopt(argc, argv, "f:ho:")) != -1) {
+	while ((opt = getopt(argc, argv, "c:f:ho:")) != -1) {
 		switch (opt) {
+		case 'c':
+			cfgfile = optarg;
+			break;
 		case 'f':
 			infile = optarg;
 			break;
@@ -67,12 +273,17 @@ int main(int argc, char *argv[])
 		exit(1);
 	}
 
+	if (!cfgfile) {
+		fprintf(stderr, "config file not given\n");
+		exit(1);
+	}
+
 	if (stat(infile, &st) == -1) {
 		perror("stat");
 		exit(EXIT_FAILURE);
 	}
 
-	buf = malloc(st.st_size);
+	buf = calloc(st.st_size + IMAGE_OFFSET, sizeof(char));
 	if (!buf) {
 		fprintf(stderr, "Unable to allocate buffer\n");
 		return -1;
@@ -93,15 +304,14 @@ int main(int argc, char *argv[])
 		exit(EXIT_FAILURE);
 	}
 
-	fread(buf, 4, st.st_size, ifile);
+	fread(buf + IMAGE_OFFSET, sizeof(char), st.st_size, ifile);
 
-	for (i = 0x8; i < 0x12; i++)
-		sum += htole32(buf[i]);
+	add_header(buf, st.st_size);
 
-	sum = ~sum;
-	buf[i] = sum;
+	if (cfgfile)
+		parse_config(buf, cfgfile);
 
-	fwrite(buf, st.st_size / 4, 4, ofile);
+	fwrite(buf, sizeof(char), st.st_size + IMAGE_OFFSET, ofile);
 
 	fclose(ofile);
 	fclose(ifile);
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
