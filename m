Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ufla6-0006ZS-OW
 for barebox@lists.infradead.org; Fri, 24 May 2013 06:34:37 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 24 May 2013 08:34:01 +0200
Message-Id: <1369377242-23493-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1369377242-23493-1-git-send-email-s.hauer@pengutronix.de>
References: <1369377242-23493-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/3] scripts: Add imx-usb-loader tool
To: barebox@lists.infradead.org

This adds host tools for i.MX to generate the i.MX internal
flash header format and a tool to upload these images to an
i.MX SoC via USB.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Makefile            |    9 +
 arch/arm/mach-imx/Kconfig    |   21 +
 scripts/Makefile             |    1 +
 scripts/Makefile.lib         |   25 +
 scripts/imx/.gitignore       |    2 +
 scripts/imx/Makefile         |   10 +
 scripts/imx/README           |   89 +++
 scripts/imx/imx-image.c      |  742 ++++++++++++++++++++++
 scripts/imx/imx-usb-loader.c | 1427 ++++++++++++++++++++++++++++++++++++++++++
 9 files changed, 2326 insertions(+)
 create mode 100644 scripts/imx/.gitignore
 create mode 100644 scripts/imx/Makefile
 create mode 100644 scripts/imx/README
 create mode 100644 scripts/imx/imx-image.c
 create mode 100644 scripts/imx/imx-usb-loader.c

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 2deec6c..133a274 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -249,6 +249,10 @@ quiet_cmd_am35xx_spi_image = SPI-IMG $@
 barebox.spi: $(KBUILD_BINARY) FORCE
 	$(call if_changed,am35xx_spi_image)
 
+CFG_barebox.imx := arch/arm/boards/$(board-y)/flash-header.imxcfg
+barebox.imx: $(KBUILD_BINARY) FORCE
+	$(call if_changed,imx_image)
+
 ifeq ($(CONFIG_OMAP_BUILD_SPI),y)
 KBUILD_TARGET := barebox.spi
 KBUILD_IMAGE := barebox.spi
@@ -262,6 +266,11 @@ KBUILD_TARGET := barebox.zynq
 KBUILD_IMAGE := barebox.zynq
 endif
 
+ifeq ($(CONFIG_ARCH_IMX_INTERNAL_BOOT_USE_IMXIMAGE),y)
+KBUILD_TARGET := barebox.imx
+KBUILD_IMAGE := barebox.imx
+endif
+
 pbl := arch/arm/pbl
 zbarebox.S zbarebox.bin zbarebox: barebox.bin
 	$(Q)$(MAKE) $(build)=$(pbl) $(pbl)/$@
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 359b5cd..c2766b7 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -93,6 +93,20 @@ config ARCH_IMX_EXTERNAL_BOOT
 
 endchoice
 
+config ARCH_IMX_IMXIMAGE
+	bool
+	help
+	  if enabled the imx-image tool is compiled
+
+config ARCH_IMX_INTERNAL_BOOT_USE_IMXIMAGE
+	bool
+	help
+	  Traditionally the i.MX specific format for internal bootmode
+	  was generated using C structs inside the binary. Now there is
+	  a tool available to generate the imx-image format. Boards using
+	  this tool must select this option. This is recommended for new
+	  boards.
+
 choice
 	depends on ARCH_IMX_INTERNAL_BOOT
 	prompt "Internal boot source"
@@ -596,6 +610,13 @@ endmenu
 
 menu "i.MX specific settings"
 
+config ARCH_IMX_USBLOADER
+	bool "compile imx-usb-loader"
+	help
+	  imx-usb-loader is a tool to upload and start imximages to an i.MX SoC
+	  in ROM boot mode. It requires libusb, so make sure you have the libusb
+	  devel package installed on your machine.
+
 config IMX_IIM
 	tristate "IIM fusebox device"
 	depends on !ARCH_IMX21 && !ARCH_IMX21
diff --git a/scripts/Makefile b/scripts/Makefile
index f062fc0..a542ea6 100644
--- a/scripts/Makefile
+++ b/scripts/Makefile
@@ -13,6 +13,7 @@ hostprogs-$(CONFIG_ARCH_OMAP)    += omap_signGP mk-am35xx-spi-image
 hostprogs-$(CONFIG_ARCH_S5PCxx)  += s5p_cksum
 hostprogs-$(CONFIG_ARCH_DAVINCI) += mkublheader
 hostprogs-$(CONFIG_ARCH_ZYNQ)	 += zynq_mkimage
+subdir-$(CONFIG_ARCH_IMX)	 += imx
 
 HOSTLOADLIBES_omap4_usbboot = -lpthread
 omap4_usbboot-objs               := usb_linux.o omap4_usbboot.o
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index bbfd4cd..0486ba6 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -308,3 +308,28 @@ quiet_cmd_check_file_size = CHKSIZE $@
 		echo "$@ size $$size > of the maximum size $$max_size" >&2;	\
 		exit 1 ;						\
 	fi;
+
+quiet_cmd_imximage__S_dcd= DCD_S   $@
+cmd_imximage_S_dcd=						\
+(								\
+	echo '\#include <asm-generic/barebox.lds.h>';		\
+	echo '.balign STRUCT_ALIGNMENT';			\
+	echo '.global $(subst -,_,$(*F))_start';		\
+	echo '$(subst -,_,$(*F))_start:';			\
+	echo '.incbin "$<" ';					\
+	echo '$(subst -,_,$(*F))_end:';				\
+	echo '.global $(subst -,_,$(*F))_end';			\
+	echo '.balign STRUCT_ALIGNMENT';			\
+) > $@
+
+quiet_cmd_dcd = DCD     $@
+      cmd_dcd = $(objtree)/scripts/imx/imx-image -d -o $@ -c $<
+
+$(obj)/%.dcd: $(obj)/%.imxcfg FORCE
+	$(call if_changed,dcd)
+
+$(obj)/%.S: $(obj)/%.dcd
+	$(call cmd,imximage_S_dcd)
+
+quiet_cmd_imx_image = IMX-IMG $@
+      cmd_imx_image = $(obj)/scripts/imx/imx-image -b -c $(CFG_$(@F)) -f $< -o $@
diff --git a/scripts/imx/.gitignore b/scripts/imx/.gitignore
new file mode 100644
index 0000000..84e6f2b
--- /dev/null
+++ b/scripts/imx/.gitignore
@@ -0,0 +1,2 @@
+imx-usb-loader
+imx-image
diff --git a/scripts/imx/Makefile b/scripts/imx/Makefile
new file mode 100644
index 0000000..be0b490
--- /dev/null
+++ b/scripts/imx/Makefile
@@ -0,0 +1,10 @@
+hostprogs-$(CONFIG_ARCH_IMX_IMXIMAGE) += imx-image
+hostprogs-$(CONFIG_ARCH_IMX_USBLOADER) += imx-usb-loader
+
+always          := $(hostprogs-y)
+
+HOSTCFLAGS_imx-usb-loader.o = `pkg-config --cflags libusb-1.0`
+HOSTLOADLIBES_imx-usb-loader  = `pkg-config --libs libusb-1.0`
+
+imx-usb-loader-objs := imx-usb-loader.o
+imx-image-objs := imx-image.o
diff --git a/scripts/imx/README b/scripts/imx/README
new file mode 100644
index 0000000..0d6d0d0
--- /dev/null
+++ b/scripts/imx/README
@@ -0,0 +1,89 @@
+imx-usb-loader Tools
+
+The Freescale i.MX SoCs support bootstrapping from USB. These are host
+side utilities handling this bootstrap process.
+
+The imx-usb-loader tool is used to upload and start i.MX images. These
+are images containing a DCD (Device Configuration Data) table. To generate
+these images from raw binaries use the imx-image tool.
+
+imx-image
+---------
+
+The imx-image tool can be used to generate imximages from raw binaries.
+It requires an configuration file describing how to setup the SDRAM on
+a particular board. This mainly consists of a poke table. The recognized
+options in this file are:
+
+soc <soctype>      soctype can be one of imx35, imx51, imx53, imx6
+loadaddr <adr>     The address the binary is uploaded to
+dcdofs <ofs>       The offset of the image header in the image. This should be:
+                   0x400  - MMC/SD, NAND, serial ROM, PATA, SATA
+                   0x1000 - NOR Flash
+                   0x100  - OneNAND
+wm 8 <adr> <value>                    do a byte memory write
+wm 16 <adr> <value>                   do a short memory write
+wm 32 <adr> <value>                   do a word memory write
+check <width> <cond> <addr> <mask>    Poll until condition becomes true.
+                                      with <cond> being one of:
+                                      while_all_bits_clear,
+                                      while_all_bits_set,
+                                      while_any_bit_clear,
+                                      while_any_bit_set
+
+the i.MX SoCs support a wide range of fancy things doing with the flash header.
+We limit ourselves to a very simple case, that is the flash header has a fixed
+size of 0x1000 bytes. The application is expected right thereafter, so if you
+specify a loadaddr of 0x80000000 in the config file, the first 0x1000 bytes
+are occupied by the flash header. The raw image inside the imximage will then
+end up at 0x80001000 from where it is then executed.
+
+Example config file, suitable for an Eukra cpuimx35:
+
+soc imx35
+dcdofs 0x400
+loadaddr 0x80000000
+wm 32 0x53F80004 0x00821000
+wm 32 0x53F80004 0x00821000
+wm 32 0xb8001010 0x00000004
+wm 32 0xB8001010 0x0000000C
+wm 32 0xb8001004 0x0009572B
+wm 32 0xb8001000 0x92220000
+wm 8  0x80000400 0xda
+wm 32 0xb8001000 0xa2220000
+wm 32 0x80000000 0x12344321
+wm 32 0x80000000 0x12344321
+wm 32 0xb8001000 0xb2220000
+wm 8  0x80000033 0xda
+wm 8  0x82000000 0xda
+wm 32 0xb8001000 0x82224080
+wm 32 0xb8001010 0x00000004
+
+example call:
+
+imx-image -c cpuimx35.cfg -f raw.bin -o imximage.bin
+
+imx-usb-loader
+--------------
+
+This utility is used to upload an imximage to a board. Some bootloaders directly
+generate this file format, with others you can generate such an image with the
+imx-image tool. The only required argument is the image file to upload. imx-usb-loader
+will then look for a supported device, upload the file and execute it.
+
+example usage:
+
+imx-usb-loader imximage.bin
+
+Some technical notes: The i.MX SoCs USB ROM boot mode supports doing register writes
+and file uploads. The files are usually uploaded to SDRAM. For this to work the SDRAM
+has to be initialized first. The information necessary to do this is contained in the
+imximage itself, more exactly in the DCD table. The imx-usb-loader parses this table
+and translates the DCD into register writes, basically it resembles what the i.MX would
+do in ROM code when the same image would be loaded from another bootsource like SD/MMC
+cards. Still the i.MX needs the DCD table to be uploaded. The i.MX would execute the DCD
+data again, which would result in corrupting the just configured SDRAM. The imx-usb-loader
+prevents this by setting the DCD length to 0x0 before uploading the image.
+The i.MX Boot ROM supports different types of images to upload. The imx-usb-loader currently
+only handles the simple case of uploading a single image which is executed right after
+downloading.
diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
new file mode 100644
index 0000000..3c28a24
--- /dev/null
+++ b/scripts/imx/imx-image.c
@@ -0,0 +1,742 @@
+/*
+ * (C) Copyright 2013 Sascha Hauer, Pengutronix
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+#include <stdio.h>
+#include <unistd.h>
+#include <getopt.h>
+#include <stdlib.h>
+#include <stdint.h>
+#include <string.h>
+#include <errno.h>
+#include <sys/types.h>
+#include <sys/stat.h>
+#include <fcntl.h>
+#include <endian.h>
+
+#define ARRAY_SIZE(arr) (sizeof(arr) / sizeof((arr)[0]))
+#define offsetof(TYPE, MEMBER) __builtin_offsetof(TYPE, MEMBER)
+
+#define MAX_DCD 1024
+
+static uint32_t image_load_addr;
+static uint32_t image_dcd_offset;
+static uint32_t dcdtable[MAX_DCD];
+static int curdcd;
+static int header_version;
+static int add_barebox_header;
+
+/*
+ * ============================================================================
+ * i.MX flash header v1 handling. Found on i.MX35 and i.MX51
+ * ============================================================================
+ */
+struct imx_flash_header {
+	uint32_t app_code_jump_vector;
+	uint32_t app_code_barker;
+	uint32_t app_code_csf;
+	uint32_t dcd_ptr_ptr;
+	uint32_t super_root_key;
+	uint32_t dcd;
+	uint32_t app_dest;
+	uint32_t dcd_barker;
+	uint32_t dcd_block_len;
+} __attribute__((packed));
+
+#define FLASH_HEADER_OFFSET 0x400
+#define DCD_BARKER       0xb17219e9
+
+static uint32_t bb_header[] = {
+	0xea0003fe,	/* b 0x1000 */
+	0xeafffffe,	/* 1: b 1b  */
+	0xeafffffe,	/* 1: b 1b  */
+	0xeafffffe,	/* 1: b 1b  */
+	0xeafffffe,	/* 1: b 1b  */
+	0xeafffffe,	/* 1: b 1b  */
+	0xeafffffe,	/* 1: b 1b  */
+	0xeafffffe,	/* 1: b 1b  */
+	0x65726162,	/* 'bare'   */
+	0x00786f62,	/* 'box\0'  */
+	0x00000000,
+	0x00000000,
+	0x55555555,
+	0x55555555,
+	0x55555555,
+	0x55555555,
+	0x55555555,
+	0x55555555,
+	0x55555555,
+	0x55555555,
+};
+
+static int add_header_v1(void *buf, int offset, uint32_t loadaddr, uint32_t imagesize)
+{
+	struct imx_flash_header *hdr;
+	int dcdsize = curdcd * sizeof(uint32_t);
+
+	if (add_barebox_header)
+		memcpy(buf, bb_header, sizeof(bb_header));
+
+	buf += offset;
+	hdr = buf;
+
+	hdr->app_code_jump_vector = loadaddr + 0x1000;
+	hdr->app_code_barker = 0x000000b1;
+	hdr->app_code_csf = 0x0;
+	hdr->dcd_ptr_ptr = loadaddr + offset + offsetof(struct imx_flash_header, dcd);
+	hdr->super_root_key = 0x0;
+	hdr->dcd = loadaddr + offset + offsetof(struct imx_flash_header, dcd_barker);
+	hdr->app_dest = loadaddr;
+	hdr->dcd_barker = DCD_BARKER;
+	hdr->dcd_block_len = dcdsize;
+
+	buf += sizeof(struct imx_flash_header);
+
+	memcpy(buf, dcdtable, dcdsize);
+
+	buf += dcdsize;
+
+	*(uint32_t *)buf = imagesize;
+
+	return 0;
+}
+
+static int write_mem_v1(uint32_t addr, uint32_t val, int width)
+{
+	if (curdcd > MAX_DCD - 3) {
+		fprintf(stderr, "At maximum %d dcd entried are allowed\n", MAX_DCD);
+		return -ENOMEM;
+	}
+
+	dcdtable[curdcd++] = width;
+	dcdtable[curdcd++] = addr;
+	dcdtable[curdcd++] = val;
+
+	return 0;
+}
+
+/*
+ * ============================================================================
+ * i.MX flash header v2 handling. Found on i.MX53 and i.MX6
+ * ============================================================================
+ */
+
+struct imx_boot_data {
+	uint32_t start;
+	uint32_t size;
+	uint32_t plugin;
+} __attribute__((packed));
+
+#define TAG_IVT_HEADER	0xd1
+#define IVT_VERSION	0x40
+#define TAG_DCD_HEADER	0xd2
+#define DCD_VERSION	0x40
+#define TAG_WRITE	0xcc
+#define TAG_CHECK	0xcf
+
+struct imx_ivt_header {
+	uint8_t tag;
+	uint16_t length;
+	uint8_t version;
+} __attribute__((packed));
+
+struct imx_flash_header_v2 {
+	struct imx_ivt_header header;
+
+	uint32_t entry;
+	uint32_t reserved1;
+	uint32_t dcd_ptr;
+	uint32_t boot_data_ptr;
+	uint32_t self;
+	uint32_t csf;
+	uint32_t reserved2;
+
+	struct imx_boot_data boot_data;
+	struct imx_ivt_header dcd_header;
+} __attribute__((packed));
+
+static int add_header_v2(void *buf, int offset, uint32_t loadaddr, uint32_t imagesize)
+{
+	struct imx_flash_header_v2 *hdr;
+	int dcdsize = curdcd * sizeof(uint32_t);
+
+	if (add_barebox_header)
+		memcpy(buf, bb_header, sizeof(bb_header));
+
+	buf += offset;
+	hdr = buf;
+
+	hdr->header.tag		= TAG_IVT_HEADER;
+	hdr->header.length	= htobe16(32);
+	hdr->header.version	= IVT_VERSION;
+
+	hdr->entry		= loadaddr + 0x1000;
+	hdr->dcd_ptr		= loadaddr + 0x400 + offsetof(struct imx_flash_header_v2, dcd_header);
+	hdr->boot_data_ptr	= loadaddr + 0x400 + offsetof(struct imx_flash_header_v2, boot_data);
+	hdr->self		= loadaddr + 0x400;
+
+	hdr->boot_data.start	= loadaddr;
+	hdr->boot_data.size	= imagesize;
+
+	hdr->dcd_header.tag	= TAG_DCD_HEADER;
+	hdr->dcd_header.length	= htobe16(sizeof(uint32_t) + dcdsize);
+	hdr->dcd_header.version	= DCD_VERSION;
+
+	buf += sizeof(*hdr);
+
+	memcpy(buf, dcdtable, dcdsize);
+
+	return 0;
+}
+
+static void usage(const char *prgname)
+{
+	fprintf(stderr, "usage: %s [OPTIONS]\n\n"
+		"-c <config>  specify configuration file\n"
+		"-f <input>   input image file\n"
+		"-o <output>  output file\n"
+		"-b           add barebox header to image. If used, barebox recognizes\n"
+		"             the image as regular barebox image which can be used as\n"
+		"             second stage image\n"
+		"-h           this help\n", prgname);
+	exit(1);
+}
+
+#define MAXARGS 5
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
+		if (*line == '\0')	/* end of line, no more args	*/
+			argv[nargs] = NULL;
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
+	int (*parse)(int argc, char *argv[]);
+};
+
+static uint32_t last_cmd;
+static int last_cmd_len;
+static uint32_t *last_dcd;
+
+static void check_last_dcd(uint32_t cmd)
+{
+	if (last_dcd) {
+		if (last_cmd == cmd) {
+			return;
+		} else {
+			uint32_t l = be32toh(*last_dcd);
+
+			l |= last_cmd_len << 8;
+
+			*last_dcd = htobe32(l);
+
+			last_dcd = NULL;
+		}
+	}
+
+	if (!cmd)
+		return;
+
+	if (!last_dcd) {
+		last_dcd = &dcdtable[curdcd++];
+		*last_dcd = htobe32(cmd);
+		last_cmd_len = sizeof(uint32_t);
+		last_cmd = cmd;
+	}
+}
+
+static int write_mem_v2(uint32_t addr, uint32_t val, int width)
+{
+	uint32_t cmd;
+
+	cmd = (TAG_WRITE << 24) | width;
+
+	if (curdcd > MAX_DCD - 3) {
+		fprintf(stderr, "At maximum %d dcd entried are allowed\n", MAX_DCD);
+		return -ENOMEM;
+	}
+
+	check_last_dcd(cmd);
+
+	last_cmd_len += sizeof(uint32_t) * 2;
+	dcdtable[curdcd++] = htobe32(addr);
+	dcdtable[curdcd++] = htobe32(val);
+
+	return 0;
+}
+
+static const char *check_cmds[] = {
+	"while_all_bits_clear",		/* while ((*address & mask) == 0); */
+	"while_all_bits_set"	,	/* while ((*address & mask) == mask); */
+	"while_any_bit_clear",		/* while ((*address & mask) != mask); */
+	"while_any_bit_set",		/* while ((*address & mask) != 0); */
+};
+
+static void do_cmd_check_usage(void)
+{
+	fprintf(stderr,
+			"usage: check <width> <cmd> <addr> <mask>\n"
+			"<width> access width in bytes [1|2|4]\n"
+			"with <cmd> one of:\n"
+			"while_all_bits_clear: while ((*addr & mask) == 0)\n"
+			"while_all_bits_set:   while ((*addr & mask) == mask)\n"
+			"while_any_bit_clear:  while ((*addr & mask) != mask)\n"
+			"while_any_bit_set:    while ((*addr & mask) != 0)\n");
+}
+
+static int do_cmd_check(int argc, char *argv[])
+{
+	uint32_t addr, mask, cmd;
+	int i, width;
+	const char *scmd;
+
+	if (argc < 5) {
+		do_cmd_check_usage();
+		return -EINVAL;
+	}
+
+	width = strtoul(argv[1], NULL, 0) >> 3;
+	scmd = argv[2];
+	addr = strtoul(argv[3], NULL, 0);
+	mask = strtoul(argv[4], NULL, 0);
+
+	switch (width) {
+	case 1:
+	case 2:
+	case 4:
+		break;
+	default:
+		fprintf(stderr, "illegal width %d\n", width);
+		return -EINVAL;
+	};
+
+	if (curdcd > MAX_DCD - 3) {
+		fprintf(stderr, "At maximum %d dcd entried are allowed\n", MAX_DCD);
+		return -ENOMEM;
+	}
+
+	for (i = 0; i < ARRAY_SIZE(check_cmds); i++) {
+		if (!strcmp(scmd, check_cmds[i]))
+			break;
+	}
+
+	if (i == ARRAY_SIZE(check_cmds)) {
+		do_cmd_check_usage();
+		return -EINVAL;
+	}
+
+	cmd = (TAG_CHECK << 24) | (i << 3) | width;
+
+	check_last_dcd(cmd);
+
+	last_cmd_len += sizeof(uint32_t) * 2;
+	dcdtable[curdcd++] = htobe32(addr);
+	dcdtable[curdcd++] = htobe32(mask);
+
+	return 0;
+}
+
+static int do_cmd_write_mem(int argc, char *argv[])
+{
+	uint32_t addr, val, width;
+
+	if (argc != 4) {
+		fprintf(stderr, "usage: wm [8|16|32] <addr> <val>\n");
+		return -EINVAL;
+	}
+
+	width = strtoul(argv[1], NULL, 0);
+	addr = strtoul(argv[2], NULL, 0);
+	val = strtoul(argv[3], NULL, 0);
+
+	width >>= 3;
+
+	switch (width) {
+	case 1:
+	case 2:
+	case 4:
+		break;
+	default:
+		fprintf(stderr, "illegal width %d\n", width);
+		return -EINVAL;
+	};
+
+	switch (header_version) {
+	case 1:
+		return write_mem_v1(addr, val, width);
+	case 2:
+		return write_mem_v2(addr, val, width);
+	default:
+		return -EINVAL;
+	}
+}
+
+static int do_loadaddr(int argc, char *argv[])
+{
+	if (argc < 2)
+		return -EINVAL;
+
+	image_load_addr = strtoul(argv[1], NULL, 0);
+
+	return 0;
+}
+
+static int do_dcd_offset(int argc, char *argv[])
+{
+	if (argc < 2)
+		return -EINVAL;
+
+	image_dcd_offset = strtoul(argv[1], NULL, 0);
+
+	return 0;
+}
+
+struct soc_type {
+	char *name;
+	int header_version;
+};
+
+static struct soc_type socs[] = {
+	{ .name = "imx35", .header_version = 1, },
+	{ .name = "imx51", .header_version = 1, },
+	{ .name = "imx53", .header_version = 2, },
+	{ .name = "imx6", .header_version = 2, },
+};
+
+static int do_soc(int argc, char *argv[])
+{
+	char *soc;
+	int i;
+
+	if (argc < 2)
+		return -EINVAL;
+
+	soc = argv[1];
+
+	for (i = 0; i < ARRAY_SIZE(socs); i++) {
+		if (!strcmp(socs[i].name, soc)) {
+			header_version = socs[i].header_version;
+			return 0;
+		}
+	}
+
+	fprintf(stderr, "unkown SoC type \"%s\". Known SoCs are:\n", soc);
+	for (i = 0; i < ARRAY_SIZE(socs); i++)
+		fprintf(stderr, "%s ", socs[i].name);
+	fprintf(stderr, "\n");
+
+	return -EINVAL;
+}
+
+struct command cmds[] = {
+	{
+		.name = "wm",
+		.parse = do_cmd_write_mem,
+	}, {
+		.name = "check",
+		.parse = do_cmd_check,
+	}, {
+		.name = "loadaddr",
+		.parse = do_loadaddr,
+	}, {
+		.name = "dcdofs",
+		.parse = do_dcd_offset,
+	}, {
+		.name = "soc",
+		.parse = do_soc,
+	},
+};
+
+static int parse_config(const char *filename)
+{
+	FILE *f;
+	int lineno = 0;
+	char *line = NULL, *tmp;
+	size_t len;
+	char *argv[MAXARGS];
+	int nargs, i, ret;
+
+	f = fopen(filename, "r");
+	if (!f) {
+		fprintf(stderr, "Error: %s - Can't open DCD file\n", filename);
+		exit(1);
+	}
+
+	while ((getline(&line, &len, f)) > 0) {
+		lineno++;
+
+		tmp = strchr(line, '#');
+		if (tmp)
+			*tmp = 0;
+		tmp = strrchr(line, '\n');
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
+				ret = cmds[i].parse(nargs, argv);
+				if (ret) {
+					fprintf(stderr, "error in line %d: %s\n",
+							lineno, strerror(-ret));
+					return ret;
+				}
+				break;
+			}
+		}
+
+		if (ret == -ENOENT) {
+			fprintf(stderr, "no such command: %s\n", argv[0]);
+			return ret;
+		}
+	}
+
+	return 0;
+}
+
+static int xread(int fd, void *buf, int len)
+{
+	int ret;
+
+	while (len) {
+		ret = read(fd, buf, len);
+		if (ret < 0)
+			return ret;
+		if (!ret)
+			return EOF;
+		buf += ret;
+		len -= ret;
+	}
+
+	return 0;
+}
+
+static int xwrite(int fd, void *buf, int len)
+{
+	int ret;
+
+	while (len) {
+		ret = write(fd, buf, len);
+		if (ret < 0)
+			return ret;
+		buf += ret;
+		len -= ret;
+	}
+
+	return 0;
+}
+
+static int write_dcd(const char *outfile)
+{
+	int outfd, ret;
+	int dcdsize = curdcd * sizeof(uint32_t);
+
+	outfd = open(outfile, O_WRONLY | O_CREAT | O_TRUNC, S_IRUSR | S_IWUSR);
+	if (outfd < 0) {
+		perror("open");
+		exit(1);
+	}
+
+	ret = xwrite(outfd, dcdtable, dcdsize);
+	if (ret < 0) {
+		perror("write");
+		exit(1);
+	}
+
+	return 0;
+}
+
+int main(int argc, char *argv[])
+{
+	int opt, ret;
+	char *configfile = NULL;
+	char *imagename = NULL;
+	char *outfile = NULL;
+	void *buf;
+	size_t image_size = 0;
+	struct stat s;
+	int infd, outfd;
+	int dcd_only = 0;
+
+	while ((opt = getopt(argc, argv, "c:hf:o:bd")) != -1) {
+		switch (opt) {
+		case 'c':
+			configfile = optarg;
+			break;
+		case 'f':
+			imagename = optarg;
+			break;
+		case 'o':
+			outfile = optarg;
+			break;
+		case 'b':
+			add_barebox_header = 1;
+			break;
+		case 'd':
+			dcd_only = 1;
+			break;
+		case 'h':
+			usage(argv[0]);
+		default:
+			exit(1);
+		}
+	}
+
+	if (!imagename && !dcd_only) {
+		fprintf(stderr, "image name not given\n");
+		exit(1);
+	}
+
+	if (!configfile) {
+		fprintf(stderr, "config file not given\n");
+		exit(1);
+	}
+
+	if (!outfile) {
+		fprintf(stderr, "output file not given\n");
+		exit(1);
+	}
+
+	if (!dcd_only) {
+		ret = stat(imagename, &s);
+		if (ret) {
+			perror("stat");
+			exit(1);
+		}
+
+		image_size = s.st_size;
+	}
+
+	ret = parse_config(configfile);
+	if (ret)
+		exit(1);
+
+	buf = calloc(4096, 1);
+	if (!buf)
+		exit(1);
+
+	if (!image_dcd_offset) {
+		fprintf(stderr, "no dcd offset given ('dcdofs'). Defaulting to 0x400\n");
+		image_dcd_offset = 0x400;
+	}
+
+	if (!header_version) {
+		fprintf(stderr, "no SoC given. (missing 'soc' in config)\n");
+		exit(1);
+	}
+
+	if (dcd_only) {
+		ret = write_dcd(outfile);
+		if (ret)
+			exit(1);
+		exit (0);
+	}
+
+	switch (header_version) {
+	case 1:
+		add_header_v1(buf, image_dcd_offset, image_load_addr, image_size + 0x1000);
+		break;
+	case 2:
+		check_last_dcd(0);
+		add_header_v2(buf, image_dcd_offset, image_load_addr, image_size + 0x1000);
+		break;
+	default:
+		fprintf(stderr, "Congratulations! You're welcome to implement header version %d\n",
+				header_version);
+		exit(1);
+	}
+
+	outfd = open(outfile, O_WRONLY | O_CREAT | O_TRUNC, S_IRUSR | S_IWUSR);
+	if (outfd < 0) {
+		perror("open");
+		exit(1);
+	}
+
+	ret = xwrite(outfd, buf, 4096);
+	if (ret < 0) {
+		perror("write");
+		exit(1);
+	}
+
+	infd = open(imagename, O_RDONLY);
+	if (infd < 0) {
+		perror("open");
+		exit(1);
+	}
+
+	while (image_size) {
+		int now = image_size < 4096 ? image_size : 4096;
+
+		ret = xread(infd, buf, now);
+		if (ret) {
+			perror("read");
+			exit(1);
+		}
+
+		ret = xwrite(outfd, buf, now);
+		if (ret) {
+			perror("write");
+			exit(1);
+		}
+
+		image_size -= now;
+	}
+
+	ret = close(outfd);
+	if (ret) {
+		perror("close");
+		exit(1);
+	}
+
+	exit(0);
+}
diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
new file mode 100644
index 0000000..d58b1da
--- /dev/null
+++ b/scripts/imx/imx-usb-loader.c
@@ -0,0 +1,1427 @@
+/*
+ * imx_usb:
+ *
+ * Program to download and execute an image over the USB boot protocol
+ * on i.MX series processors.
+ *
+ * Code originally written by Eric Nelson.
+ *
+ * This library is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU Lesser General Public
+ * License as published by the Free Software Foundation; either
+ * version 2.1 of the License, or (at your option) any later version.
+ *
+ * This library is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
+ * Lesser General Public License for more details.
+ *
+ * You should have received a copy of the GNU Lesser General Public
+ * License along with this library; if not, write to the Free Software
+ * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA
+ */
+#include <stdio.h>
+#include <sys/types.h>
+#include <time.h>
+
+#include <unistd.h>
+#include <ctype.h>
+#include <sys/io.h>
+#include <errno.h>
+#include <string.h>
+#include <stdlib.h>
+#include <libusb.h>
+#include <getopt.h>
+
+#define get_min(a, b) (((a) < (b)) ? (a) : (b))
+
+int verbose;
+
+struct mach_id {
+	struct mach_id * next;
+	unsigned short vid;
+	unsigned short pid;
+	char file_name[256];
+	char *name;
+#define MODE_HID	0
+#define MODE_BULK	1
+	unsigned char mode;
+#define HDR_NONE	0
+#define HDR_MX51	1
+#define HDR_MX53	2
+	unsigned char header_type;
+	unsigned short max_transfer;
+};
+
+#define ARRAY_SIZE(arr) (sizeof(arr) / sizeof((arr)[0]))
+#ifndef offsetof
+#define offsetof(TYPE, MEMBER) __builtin_offsetof(TYPE, MEMBER)
+#endif
+
+struct usb_work {
+	char filename[256];
+	unsigned char dcd;
+	unsigned char clear_dcd;
+	unsigned char plug;
+#define J_ADDR		1
+#define J_HEADER	2
+#define J_HEADER2	3
+	unsigned char jump_mode;
+	unsigned jump_addr;
+};
+
+struct usb_id {
+	struct mach_id *mach_id;
+	struct usb_work *work;
+};
+
+struct mach_id imx_ids[] = {
+	{
+		.vid = 0x066f,
+		.pid = 0x3780,
+		.name = "i.MX23",
+		.mode = MODE_BULK,
+	}, {
+		.vid = 0x15a2,
+		.pid = 0x004f,
+		.name = "i.MX28",
+	}, {
+		.vid = 0x15a2,
+		.pid = 0x0052,
+		.name = "i.MX50",
+	}, {
+		.vid = 0x15a2,
+		.pid = 0x0054,
+		.name = "i.MX6",
+		.header_type = HDR_MX53,
+		.mode = MODE_HID,
+		.max_transfer = 1024,
+	}, {
+		.vid = 0x15a2,
+		.pid = 0x0041,
+		.name = "i.MX51",
+		.header_type = HDR_MX51,
+		.mode = MODE_BULK,
+		.max_transfer = 64,
+	}, {
+		.vid = 0x15a2,
+		.pid = 0x004e,
+		.name = "i.MX53",
+		.header_type = HDR_MX53,
+		.mode = MODE_BULK,
+		.max_transfer = 512,
+	}, {
+		.vid = 0x15a2,
+		.pid = 0x0030,
+		.name = "i.MX35",
+		.header_type = HDR_MX51,
+		.mode = MODE_BULK,
+		.max_transfer = 64,
+	},
+};
+
+static struct mach_id *imx_device(unsigned short vid, unsigned short pid)
+{
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(imx_ids); i++) {
+		struct mach_id *id = &imx_ids[i];
+		if (id->vid == vid && id->pid == pid) {
+			fprintf(stderr, "found %s USB device [%04x:%04x]\n",
+					id->name, vid, pid);
+			return id;
+		}
+	}
+
+	return NULL;
+}
+
+static libusb_device *find_imx_dev(libusb_device **devs, struct mach_id **pp_id)
+{
+	int i = 0;
+	struct mach_id *p;
+
+	for (;;) {
+		struct libusb_device_descriptor desc;
+		int r;
+
+		libusb_device *dev = devs[i++];
+		if (!dev)
+			break;
+
+		r = libusb_get_device_descriptor(dev, &desc);
+		if (r < 0) {
+			fprintf(stderr, "failed to get device descriptor");
+			return NULL;
+		}
+
+		p = imx_device(desc.idVendor, desc.idProduct);
+		if (p) {
+			*pp_id = p;
+			return dev;
+		}
+	}
+	*pp_id = NULL;
+
+	return NULL;
+}
+
+static void dump_long(unsigned char *src, unsigned cnt, unsigned addr)
+{
+	unsigned *p = (unsigned *)src;
+	while (cnt >= 32) {
+		printf("%08x: %08x %08x %08x %08x  %08x %08x %08x %08x\n",
+				addr, p[0], p[1], p[2], p[3], p[4], p[5], p[6], p[7]);
+		p += 8;
+		cnt -= 32;
+		addr += 32;
+	}
+	if (cnt) {
+		printf("%08x:", addr);
+		while (cnt >= 4) {
+			printf(" %08x", p[0]);
+			p++;
+			cnt -= 4;
+		}
+		printf("\n");
+	}
+}
+
+static void dump_bytes(unsigned char *src, unsigned cnt, unsigned addr)
+{
+	unsigned char *p = src;
+	int i;
+
+	while (cnt >= 16) {
+		printf("%08x: %02x %02x %02x %02x  %02x %02x %02x %02x  %02x %02x %02x %02x  %02x %02x %02x %02x\n",
+				addr,
+				p[0], p[1], p[2], p[3], p[4], p[5], p[6], p[7], p[8], p[9], p[10],
+				p[11], p[12], p[13], p[14], p[15]);
+		p += 16;
+		cnt -= 16;
+		addr += 16;
+	}
+
+	if (cnt) {
+		printf("%08x:", addr);
+		i = 0;
+		while (cnt) {
+			printf(" %02x", p[0]);
+			p++;
+			cnt--;
+			i++;
+			if (cnt) if (i == 4) {
+				i = 0;
+				printf(" ");
+			}
+		}
+		printf("\n");
+	}
+}
+
+static long get_file_size(FILE *xfile)
+{
+	long size;
+	fseek(xfile, 0, SEEK_END);
+	size = ftell(xfile);
+	rewind(xfile);
+
+	return size;
+}
+
+/*
+ * HID Class-Specific Requests values. See section 7.2 of the HID specifications
+ */
+#define HID_GET_REPORT			0x01
+#define HID_GET_IDLE			0x02
+#define HID_GET_PROTOCOL		0x03
+#define HID_SET_REPORT			0x09
+#define HID_SET_IDLE			0x0A
+#define HID_SET_PROTOCOL		0x0B
+#define HID_REPORT_TYPE_INPUT		0x01
+#define HID_REPORT_TYPE_OUTPUT		0x02
+#define HID_REPORT_TYPE_FEATURE		0x03
+#define CTRL_IN			LIBUSB_ENDPOINT_IN |LIBUSB_REQUEST_TYPE_CLASS|LIBUSB_RECIPIENT_INTERFACE
+#define CTRL_OUT		LIBUSB_ENDPOINT_OUT|LIBUSB_REQUEST_TYPE_CLASS|LIBUSB_RECIPIENT_INTERFACE
+
+#define EP_IN	0x80
+
+/*
+ * For HID class drivers, 4 reports are used to implement
+ * Serial Download protocol(SDP)
+ * Report 1 (control out endpoint) 16 byte SDP comand
+ *  (total of 17 bytes with 1st byte report id of 0x01
+ * Report 2 (control out endpoint) data associated with report 1 commands
+ *  (max size of 1025 with 1st byte of 0x02)
+ * Report 3 (interrupt in endpoint) HAB security state
+ *  (max size of 5 bytes with 1st byte of 0x03)
+ *  (0x12343412 production)
+ *  (0x56787856 engineering)
+ * Report 4 (interrupt in endpoint) date associated with report 1 commands
+ *  (max size of 65 bytes with 1st byte of 0x04)
+ *
+ */
+/*
+ * For Bulk class drivers, the device is configured as
+ * EP0IN, EP0OUT control transfer
+ * EP1OUT - bulk out
+ * (max packet size of 512 bytes)
+ * EP2IN - bulk in
+ * (max packet size of 512 bytes)
+ */
+static int transfer(struct libusb_device_handle *h, int report, unsigned char *p, unsigned cnt,
+		int* last_trans, struct usb_id *p_id)
+{
+	int err;
+	if (cnt > p_id->mach_id->max_transfer)
+		cnt = p_id->mach_id->max_transfer;
+
+	if (verbose > 4) {
+		printf("report=%i\n", report);
+		if (report < 3)
+			dump_bytes(p, cnt, 0);
+	}
+
+	if (p_id->mach_id->mode == MODE_BULK) {
+		*last_trans = 0;
+		err = libusb_bulk_transfer(h, (report < 3) ? 1 : 2 + EP_IN, p, cnt, last_trans, 1000);
+	} else {
+		unsigned char tmp[1028];
+
+		tmp[0] = (unsigned char)report;
+
+		if (report < 3) {
+			memcpy(&tmp[1], p, cnt);
+			err = libusb_control_transfer(h,
+					CTRL_OUT,
+					HID_SET_REPORT,
+					(HID_REPORT_TYPE_OUTPUT << 8) | report,
+					0,
+					tmp, cnt + 1, 1000);
+			*last_trans = (err > 0) ? err - 1 : 0;
+			if (err > 0)
+				err = 0;
+		} else {
+			*last_trans = 0;
+			memset(&tmp[1], 0, cnt);
+			err = libusb_interrupt_transfer(h, 1 + EP_IN, tmp, cnt + 1, last_trans, 1000);
+			if (err >= 0) {
+				if (tmp[0] == (unsigned char)report) {
+					if (*last_trans > 1) {
+						*last_trans -= 1;
+						memcpy(p, &tmp[1], *last_trans);
+					}
+				} else {
+					printf("Unexpected report %i err=%i, cnt=%i, last_trans=%i, %02x %02x %02x %02x\n",
+						tmp[0], err, cnt, *last_trans, tmp[0], tmp[1], tmp[2], tmp[3]);
+					err = 0;
+				}
+			}
+		}
+	}
+
+	if (verbose > 4 && report >= 3)
+		dump_bytes(p, cnt, 0);
+
+	return err;
+}
+
+int do_status(libusb_device_handle *h, struct usb_id *p_id)
+{
+	int last_trans;
+	unsigned char tmp[64];
+	int retry = 0;
+	int err;
+	const unsigned char status_command[] = {
+		5, 5, 0, 0, 0, 0,
+		0,
+		0, 0, 0, 0,
+		0, 0, 0, 0,
+		0
+	};
+
+	for (;;) {
+		err = transfer(h, 1, (unsigned char*)status_command, 16, &last_trans, p_id);
+
+		if (verbose > 2)
+			printf("report 1, wrote %i bytes, err=%i\n", last_trans, err);
+
+		memset(tmp, 0, sizeof(tmp));
+
+		err = transfer(h, 3, tmp, 64, &last_trans, p_id);
+
+		if (verbose > 2) {
+			printf("report 3, read %i bytes, err=%i\n", last_trans, err);
+			printf("read=%02x %02x %02x %02x\n", tmp[0], tmp[1], tmp[2], tmp[3]);
+		}
+
+		if (!err)
+			break;
+
+		retry++;
+
+		if (retry > 5)
+			break;
+	}
+
+	if (p_id->mach_id->mode == MODE_HID) {
+		err = transfer(h, 4, tmp, sizeof(tmp), &last_trans, p_id);
+		if (err)
+			printf("4 in err=%i, last_trans=%i  %02x %02x %02x %02x\n",
+					err, last_trans, tmp[0], tmp[1], tmp[2], tmp[3]);
+	}
+
+	return err;
+}
+
+struct boot_data {
+	uint32_t dest;
+	uint32_t image_len;
+	uint32_t plugin;
+};
+
+struct imx_flash_header_v2 {
+#define IVT_BARKER 0x402000d1
+	uint32_t barker;
+	uint32_t start_addr;
+	uint32_t reserv1;
+	uint32_t dcd_ptr;
+	uint32_t boot_data_ptr;	/* struct boot_data * */
+	uint32_t self_ptr;	/* struct imx_flash_header_v2 *, this - boot_data.start = offset linked at */
+	uint32_t app_code_csf;
+	uint32_t reserv2;
+};
+
+/*
+ * MX51 header type
+ */
+struct imx_flash_header_v1 {
+	uint32_t app_start_addr;
+#define APP_BARKER	0xb1
+#define DCD_BARKER	0xb17219e9
+	uint32_t app_barker;
+	uint32_t csf_ptr;
+	uint32_t dcd_ptr_ptr;
+	uint32_t srk_ptr;
+	uint32_t dcd_ptr;
+	uint32_t app_dest_ptr;
+};
+
+#define V(a) (((a) >> 24) & 0xff), (((a) >> 16) & 0xff), (((a) >> 8) & 0xff), ((a) & 0xff)
+
+static int read_memory(struct libusb_device_handle *h, struct usb_id *p_id,
+		unsigned addr, unsigned char *dest, unsigned cnt)
+{
+	static unsigned char read_reg_command[] = {
+		1,
+		1,
+		V(0),		/* address */
+		0x20,		/* format */
+		V(0x00000004),	/* data count */
+		V(0),		/* data */
+		0x00,		/* type */
+	};
+
+	int retry = 0;
+	int last_trans;
+	int err;
+	int rem;
+	unsigned char tmp[64];
+	read_reg_command[2] = (unsigned char)(addr >> 24);
+	read_reg_command[3] = (unsigned char)(addr >> 16);
+	read_reg_command[4] = (unsigned char)(addr >> 8);
+	read_reg_command[5] = (unsigned char)(addr);
+
+	read_reg_command[7] = (unsigned char)(cnt >> 24);
+	read_reg_command[8] = (unsigned char)(cnt >> 16);
+	read_reg_command[9] = (unsigned char)(cnt >> 8);
+	read_reg_command[10] = (unsigned char)(cnt);
+
+	for (;;) {
+		err = transfer(h, 1, read_reg_command, 16, &last_trans, p_id);
+		if (!err)
+			break;
+		printf("read_reg_command err=%i, last_trans=%i\n", err, last_trans);
+		if (retry > 5) {
+			return -4;
+		}
+		retry++;
+	}
+
+	err = transfer(h, 3, tmp, 4, &last_trans, p_id);
+	if (err) {
+		printf("r3 in err=%i, last_trans=%i  %02x %02x %02x %02x\n",
+				err, last_trans, tmp[0], tmp[1], tmp[2], tmp[3]);
+		return err;
+	}
+
+	rem = cnt;
+
+	while (rem) {
+		tmp[0] = tmp[1] = tmp[2] = tmp[3] = 0;
+		err = transfer(h, 4, tmp, 64, &last_trans, p_id);
+		if (err) {
+			printf("r4 in err=%i, last_trans=%i  %02x %02x %02x %02x cnt=%d rem=%d\n",
+					err, last_trans, tmp[0], tmp[1], tmp[2], tmp[3], cnt, rem);
+			break;
+		}
+		if ((last_trans > rem) || (last_trans > 64)) {
+			if ((last_trans == 64) && (cnt == rem)) {
+				/* Last transfer is expected to be too large for HID */
+			} else {
+				printf("err: %02x %02x %02x %02x cnt=%d rem=%d last_trans=%i\n",
+						tmp[0], tmp[1], tmp[2], tmp[3], cnt, rem, last_trans);
+			}
+			last_trans = rem;
+			if (last_trans > 64)
+				last_trans = 64;
+		}
+		memcpy(dest, tmp, last_trans);
+		dest += last_trans;
+		rem -= last_trans;
+	}
+	return err;
+}
+
+static int write_memory(struct libusb_device_handle *h, struct usb_id *p_id,
+		unsigned addr, unsigned val, int width)
+{
+	int retry = 0;
+	int last_trans;
+	int err = 0;
+	unsigned char tmp[64];
+	unsigned char ds;
+	unsigned char write_reg_command[] = {
+		2,
+		2,
+		V(0),		/* address */
+		0x0,		/* format */
+		V(0x00000004),	/* data count */
+		V(0),		/* data */
+		0x00,		/* type */
+	};
+	write_reg_command[2] = (unsigned char)(addr >> 24);
+	write_reg_command[3] = (unsigned char)(addr >> 16);
+	write_reg_command[4] = (unsigned char)(addr >> 8);
+	write_reg_command[5] = (unsigned char)(addr);
+
+	switch (width) {
+		case 1:
+			ds = 0x8;
+			break;
+		case 2:
+			ds = 0x10;
+			break;
+		case 4:
+			ds = 0x20;
+			break;
+		default:
+			return -1;
+	}
+
+	write_reg_command[6] = ds;
+
+	write_reg_command[11] = (unsigned char)(val >> 24);
+	write_reg_command[12] = (unsigned char)(val >> 16);
+	write_reg_command[13] = (unsigned char)(val >> 8);
+	write_reg_command[14] = (unsigned char)(val);
+
+	for (;;) {
+		err = transfer(h, 1, write_reg_command, 16, &last_trans, p_id);
+		if (!err)
+			break;
+		printf("write_reg_command err=%i, last_trans=%i\n", err, last_trans);
+		if (retry > 5) {
+			return -4;
+		}
+		retry++;
+	}
+
+	memset(tmp, 0, sizeof(tmp));
+
+	err = transfer(h, 3, tmp, sizeof(tmp), &last_trans, p_id);
+	if (err) {
+		printf("w3 in err=%i, last_trans=%i  %02x %02x %02x %02x\n",
+				err, last_trans, tmp[0], tmp[1], tmp[2], tmp[3]);
+		printf("addr=0x%08x, val=0x%08x\n", addr, val);
+	}
+
+	memset(tmp, 0, sizeof(tmp));
+
+	err = transfer(h, 4, tmp, sizeof(tmp), &last_trans, p_id);
+	if (err)
+		printf("w4 in err=%i, last_trans=%i  %02x %02x %02x %02x\n",
+				err, last_trans, tmp[0], tmp[1], tmp[2], tmp[3]);
+	return err;
+}
+
+static int write_dcd_table_ivt(struct libusb_device_handle *h, struct usb_id *p_id,
+		struct imx_flash_header_v2 *hdr, unsigned char *file_start, unsigned cnt)
+{
+	unsigned char *dcd_end;
+	unsigned m_length;
+#define cvt_dest_to_src		(((unsigned char *)hdr) - hdr->self_ptr)
+	unsigned char* dcd;
+	unsigned char* file_end = file_start + cnt;
+	int err = 0;
+
+	if (!hdr->dcd_ptr) {
+		printf("No dcd table, barker=%x\n", hdr->barker);
+		return 0; /* nothing to do */
+	}
+
+	dcd = hdr->dcd_ptr + cvt_dest_to_src;
+
+	if ((dcd < file_start) || ((dcd + 4) > file_end)) {
+		printf("bad dcd_ptr %08x\n", hdr->dcd_ptr);
+		return -1;
+	}
+
+	m_length = (dcd[1] << 8) + dcd[2];
+
+	printf("main dcd length %x\n", m_length);
+
+	if ((dcd[0] != 0xd2) || (dcd[3] != 0x40)) {
+		printf("Unknown tag\n");
+		return -1;
+	}
+
+	dcd_end = dcd + m_length;
+
+	if (dcd_end > file_end) {
+		printf("bad dcd length %08x\n", m_length);
+		return -1;
+	}
+	dcd += 4;
+
+	while (dcd < dcd_end) {
+		unsigned s_length = (dcd[1] << 8) + dcd[2];
+		unsigned char *s_end = dcd + s_length;
+
+		printf("sub dcd length %x\n", s_length);
+
+		if ((dcd[0] != 0xcc) || (dcd[3] != 0x04)) {
+			printf("Unknown sub tag\n");
+			return -1;
+		}
+		dcd += 4;
+
+		if (s_end > dcd_end) {
+			printf("error s_end(%p) > dcd_end(%p)\n", s_end, dcd_end);
+			return -1;
+		}
+
+		while (dcd < s_end) {
+			unsigned addr = (dcd[0] << 24) | (dcd[1] << 16) | (dcd[2] << 8) | dcd[3];
+			unsigned val = (dcd[4] << 24) | (dcd[5] << 16) | (dcd[6] << 8) | dcd[7];
+
+			dcd += 8;
+			err = write_memory(h, p_id, addr, val, 4);
+			if (err < 0)
+				return err;
+		}
+	}
+	return err;
+}
+
+static int get_dcd_range_old(struct imx_flash_header_v1 *hdr,
+		unsigned char *file_start, unsigned cnt,
+		unsigned char **pstart, unsigned char **pend)
+{
+	unsigned char *dcd_end;
+	unsigned m_length;
+#define cvt_dest_to_src_old		(((unsigned char *)&hdr->dcd_ptr) - hdr->dcd_ptr_ptr)
+	unsigned char* dcd;
+	unsigned val;
+	unsigned char* file_end = file_start + cnt;
+
+	if (!hdr->dcd_ptr) {
+		printf("No dcd table, barker=%x\n", hdr->app_barker);
+		*pstart = *pend = ((unsigned char *)hdr) + sizeof(struct imx_flash_header_v1);
+		return 0; /* nothing to do */
+	}
+
+	dcd = hdr->dcd_ptr + cvt_dest_to_src_old;
+
+	if ((dcd < file_start) || ((dcd + 8) > file_end)) {
+		printf("bad dcd_ptr %08x\n", hdr->dcd_ptr);
+		return -1;
+	}
+
+	val = (dcd[0] << 0) | (dcd[1] << 8) | (dcd[2] << 16) | (dcd[3] << 24);
+
+	if (val != DCD_BARKER) {
+		printf("Unknown tag\n");
+		return -1;
+	}
+
+	dcd += 4;
+	m_length = (dcd[0] << 0) | (dcd[1] << 8) | (dcd[2] << 16) | (dcd[3] << 24);
+	dcd += 4;
+	dcd_end = dcd + m_length;
+
+	if (dcd_end > file_end) {
+		printf("bad dcd length %08x\n", m_length);
+		return -1;
+	}
+
+	*pstart = dcd;
+	*pend = dcd_end;
+
+	return 0;
+}
+
+static int write_dcd_table_old(struct libusb_device_handle *h, struct usb_id *p_id,
+		struct imx_flash_header_v1 *hdr, unsigned char *file_start, unsigned cnt)
+{
+	unsigned val;
+	unsigned char *dcd_end;
+	unsigned char* dcd;
+	int err = get_dcd_range_old(hdr, file_start, cnt, &dcd, &dcd_end);
+	if (err < 0)
+		return err;
+
+	printf("writing DCD table...\n");
+
+	while (dcd < dcd_end) {
+		unsigned type = (dcd[0] << 0) | (dcd[1] << 8) | (dcd[2] << 16) | (dcd[3] << 24);
+		unsigned addr = (dcd[4] << 0) | (dcd[5] << 8) | (dcd[6] << 16) | (dcd[7] << 24);
+		val = (dcd[8] << 0) | (dcd[9] << 8) | (dcd[10] << 16) | (dcd[11] << 24);
+		dcd += 12;
+
+		switch (type) {
+		case 1:
+			if (verbose > 1)
+				printf("type=%08x *0x%08x = 0x%08x\n", type, addr, val);
+			err = write_memory(h, p_id, addr, val, 1);
+			if (err < 0)
+				return err;
+			break;
+		case 4:
+			if (verbose > 1)
+				printf("type=%08x *0x%08x = 0x%08x\n", type, addr, val);
+			err = write_memory(h, p_id, addr, val, 4);
+			if (err < 0)
+				return err;
+			break;
+		default:
+			printf("!!!unknown type=%08x *0x%08x = 0x%08x\n", type, addr, val);
+		}
+	}
+
+	if (err)
+		fprintf(stderr, "writing DCD table failed with %d\n", err);
+	else
+		printf("DCD table successfully written\n");
+
+	return err;
+}
+
+static int verify_memory(struct libusb_device_handle *h, struct usb_id *p_id,
+		FILE *xfile, unsigned offset, unsigned addr, unsigned size,
+		unsigned char *verify_buffer, unsigned verify_cnt)
+{
+	int mismatch = 0;
+	unsigned char file_buf[1024];
+	fseek(xfile, offset + verify_cnt, SEEK_SET);
+
+	while (size) {
+		unsigned char mem_buf[64];
+		unsigned char *p = file_buf;
+		int cnt = addr & 0x3f;
+		int request = get_min(size, sizeof(file_buf));
+
+		if (cnt) {
+			cnt = 64 - cnt;
+			if (request > cnt)
+				request = cnt;
+		}
+
+		if (verify_cnt) {
+			p = verify_buffer;
+			cnt = get_min(request, verify_cnt);
+			verify_buffer += cnt;
+			verify_cnt -= cnt;
+		} else {
+			cnt = fread(p, 1, request, xfile);
+			if (cnt <= 0) {
+				printf("Unexpected end of file, request=0x%0x, size=0x%x, cnt=%i\n",
+						request, size, cnt);
+				return -1;
+			}
+		}
+
+		size -= cnt;
+
+		while (cnt) {
+			int ret;
+
+			request = get_min(cnt, sizeof(mem_buf));
+
+			ret = read_memory(h, p_id, addr, mem_buf, request);
+			if (ret < 0)
+				return ret;
+
+			if (memcmp(p, mem_buf, request)) {
+				unsigned char * m = mem_buf;
+				if (!mismatch)
+					printf("!!!!mismatch\n");
+				mismatch++;
+
+				while (request) {
+					unsigned req = get_min(request, 32);
+					if (memcmp(p, m, req)) {
+						dump_long(p, req, offset);
+						dump_long(m, req, addr);
+						printf("\n");
+					}
+					p += req;
+					m+= req;
+					offset += req;
+					addr += req;
+					cnt -= req;
+					request -= req;
+				}
+				if (mismatch >= 5)
+					return -1;
+			}
+			p += request;
+			offset += request;
+			addr += request;
+			cnt -= request;
+		}
+	}
+
+	return mismatch ? -1 : 0;
+}
+
+static int is_header(struct usb_id *p_id, unsigned char *p)
+{
+	struct imx_flash_header_v1 *ohdr = (struct imx_flash_header_v1 *)p;
+	struct imx_flash_header_v2 *hdr = (struct imx_flash_header_v2 *)p;
+
+	switch (p_id->mach_id->header_type) {
+	case HDR_MX51:
+		if (ohdr->app_barker == 0xb1)
+			return 1;
+		break;
+	case HDR_MX53:
+		if (hdr->barker == IVT_BARKER)
+			return 1;
+	}
+
+	return 0;
+}
+
+static int perform_dcd(struct libusb_device_handle *h, struct usb_id *p_id, unsigned char *p,
+		unsigned char *file_start, unsigned cnt)
+{
+	struct imx_flash_header_v1 *ohdr = (struct imx_flash_header_v1 *)p;
+	struct imx_flash_header_v2 *hdr = (struct imx_flash_header_v2 *)p;
+	int ret = 0;
+
+	switch (p_id->mach_id->header_type) {
+	case HDR_MX51:
+		ret = write_dcd_table_old(h, p_id, ohdr, file_start, cnt);
+		ohdr->dcd_ptr = 0;
+
+		break;
+	case HDR_MX53:
+		ret = write_dcd_table_ivt(h, p_id, hdr, file_start, cnt);
+		hdr->dcd_ptr = 0;
+
+		break;
+	}
+
+	return ret;
+}
+
+static int clear_dcd_ptr(struct libusb_device_handle *h, struct usb_id *p_id,
+		unsigned char *p, unsigned char *file_start, unsigned cnt)
+{
+	struct imx_flash_header_v1 *ohdr = (struct imx_flash_header_v1 *)p;
+	struct imx_flash_header_v2 *hdr = (struct imx_flash_header_v2 *)p;
+
+	switch (p_id->mach_id->header_type) {
+	case HDR_MX51:
+		printf("clear dcd_ptr=0x%08x\n", ohdr->dcd_ptr);
+		ohdr->dcd_ptr = 0;
+		break;
+	case HDR_MX53:
+		printf("clear dcd_ptr=0x%08x\n", hdr->dcd_ptr);
+		hdr->dcd_ptr = 0;
+		break;
+	}
+	return 0;
+}
+
+static int get_dl_start(struct usb_id *p_id, unsigned char *p, unsigned char *file_start,
+		unsigned cnt, unsigned *dladdr, unsigned *max_length, unsigned *plugin,
+		unsigned *header_addr)
+{
+	unsigned char* file_end = file_start + cnt;
+	switch (p_id->mach_id->header_type) {
+	case HDR_MX51:
+	{
+		struct imx_flash_header_v1 *ohdr = (struct imx_flash_header_v1 *)p;
+		unsigned char *dcd_end;
+		unsigned char* dcd;
+		int err = get_dcd_range_old(ohdr, file_start, cnt, &dcd, &dcd_end);
+
+		*dladdr = ohdr->app_dest_ptr;
+		*header_addr = ohdr->dcd_ptr_ptr - offsetof(struct imx_flash_header_v1, dcd_ptr);
+		*plugin = 0;
+		if (err >= 0)
+			*max_length = dcd_end[0] | (dcd_end[1] << 8) | (dcd_end[2] << 16) | (dcd_end[3] << 24);
+
+		break;
+	}
+	case HDR_MX53:
+	{
+		unsigned char *bd;
+		struct imx_flash_header_v2 *hdr = (struct imx_flash_header_v2 *)p;
+
+		*dladdr = hdr->self_ptr;
+		*header_addr = hdr->self_ptr;
+		bd = hdr->boot_data_ptr + cvt_dest_to_src;
+		if ((bd < file_start) || ((bd + 4) > file_end)) {
+			printf("bad boot_data_ptr %08x\n", hdr->boot_data_ptr);
+			return -1;
+		}
+
+		*dladdr = ((struct boot_data *)bd)->dest;
+		*max_length = ((struct boot_data *)bd)->image_len;
+		*plugin = ((struct boot_data *)bd)->plugin;
+		((struct boot_data *)bd)->plugin = 0;
+
+		hdr->boot_data_ptr = 0;
+
+		break;
+	}
+	}
+	return 0;
+}
+
+static int process_header(struct libusb_device_handle *h, struct usb_id *p_id,
+		struct usb_work *curr, unsigned char *buf, int cnt,
+		unsigned *p_dladdr, unsigned *p_max_length, unsigned *p_plugin,
+		unsigned *p_header_addr)
+{
+	int ret;
+	unsigned header_max = 0x800;
+	unsigned header_inc = 0x400;
+	unsigned header_offset = 0;
+	int header_cnt = 0;
+	unsigned char *p = buf;
+
+	for (header_offset = 0; header_offset < header_max; header_offset += header_inc, p += header_inc) {
+
+		if (!is_header(p_id, p))
+			continue;
+
+		ret = get_dl_start(p_id, p, buf, cnt, p_dladdr, p_max_length, p_plugin, p_header_addr);
+		if (ret < 0) {
+			printf("!!get_dl_start returned %i\n", ret);
+			return ret;
+		}
+
+		if (curr->dcd) {
+			ret = perform_dcd(h, p_id, p, buf, cnt);
+			if (ret < 0) {
+				printf("!!perform_dcd returned %i\n", ret);
+				return ret;
+			}
+			curr->dcd = 0;
+			if ((!curr->jump_mode) && (!curr->plug)) {
+				printf("!!dcd done, nothing else requested\n");
+				return 0;
+			}
+		}
+
+		if (curr->clear_dcd) {
+			ret = clear_dcd_ptr(h, p_id, p, buf, cnt);
+			if (ret < 0) {
+				printf("!!clear_dcd returned %i\n", ret);
+				return ret;
+			}
+		}
+
+		if (*p_plugin && (!curr->plug) && (!header_cnt)) {
+			header_cnt++;
+			header_max = header_offset + *p_max_length + 0x400;
+			if (header_max > cnt - 32)
+				header_max = cnt - 32;
+			printf("header_max=%x\n", header_max);
+			header_inc = 4;
+		} else {
+			if (!*p_plugin)
+				curr->plug = 0;
+			return header_offset;
+		}
+	}
+
+	fprintf(stderr, "no DCD header found in image, run imx-image first\n");
+
+	return -ENODEV;
+}
+
+static int load_file(struct libusb_device_handle *h, struct usb_id *p_id,
+		unsigned char *p, int cnt, unsigned char *buf, unsigned buf_cnt,
+		unsigned dladdr, unsigned fsize, unsigned char type, FILE* xfile)
+{
+	static unsigned char dl_command[] = {
+		0x04,
+		0x04,
+		V(0),		/* address */
+		0x00,		/* format */
+		V(0x00000020),	/* data count */
+		V(0),		/* data */
+		0xaa,		/* type */
+	};
+	int last_trans, err;
+	int retry = 0;
+	unsigned transfer_size = 0;
+	int max = p_id->mach_id->max_transfer;
+	unsigned char tmp[64];
+
+	dl_command[2] = (unsigned char)(dladdr >> 24);
+	dl_command[3] = (unsigned char)(dladdr >> 16);
+	dl_command[4] = (unsigned char)(dladdr >> 8);
+	dl_command[5] = (unsigned char)(dladdr);
+
+	dl_command[7] = (unsigned char)(fsize >> 24);
+	dl_command[8] = (unsigned char)(fsize >> 16);
+	dl_command[9] = (unsigned char)(fsize >> 8);
+	dl_command[10] = (unsigned char)(fsize);
+	dl_command[15] =  type;
+
+	for (;;) {
+		err = transfer(h, 1, dl_command, 16, &last_trans, p_id);
+		if (!err)
+			break;
+
+		printf("dl_command err=%i, last_trans=%i\n", err, last_trans);
+
+		if (retry > 5)
+			return -4;
+		retry++;
+	}
+
+	retry = 0;
+
+	if (p_id->mach_id->mode == MODE_BULK) {
+		err = transfer(h, 3, tmp, sizeof(tmp), &last_trans, p_id);
+		if (err)
+			printf("in err=%i, last_trans=%i  %02x %02x %02x %02x\n",
+					err, last_trans, tmp[0], tmp[1], tmp[2], tmp[3]);
+	}
+
+	while (1) {
+		int retry;
+
+		if (cnt > (int)(fsize - transfer_size))
+			cnt = (fsize - transfer_size);
+
+		if (cnt <= 0)
+			break;
+
+		retry = 0;
+
+		while (cnt) {
+			err = transfer(h, 2, p, get_min(cnt, max), &last_trans, p_id);
+			if (err) {
+				printf("out err=%i, last_trans=%i cnt=0x%x max=0x%x transfer_size=0x%X retry=%i\n",
+						err, last_trans, cnt, max, transfer_size, retry);
+				if (retry >= 10) {
+					printf("Giving up\n");
+					return err;
+				}
+				if (max >= 16)
+					max >>= 1;
+				else
+					max <<= 1;
+				usleep(10000);
+				retry++;
+				continue;
+			}
+			max = p_id->mach_id->max_transfer;
+			retry = 0;
+			if (cnt < last_trans) {
+				printf("error: last_trans=0x%x, attempted only=0%x\n", last_trans, cnt);
+				cnt = last_trans;
+			}
+			if (!last_trans) {
+				printf("Nothing last_trans, err=%i\n", err);
+				break;
+			}
+			p += last_trans;
+			cnt -= last_trans;
+			transfer_size += last_trans;
+		}
+
+		if (!last_trans)
+			break;
+
+		if (feof(xfile))
+			break;
+
+		cnt = fsize - transfer_size;
+		if (cnt <= 0)
+			break;
+
+		cnt = fread(buf, 1 , get_min(cnt, buf_cnt), xfile);
+		p = buf;
+	}
+
+	if (p_id->mach_id->mode == MODE_HID) {
+		err = transfer(h, 3, tmp, sizeof(tmp), &last_trans, p_id);
+		if (err)
+			printf("3 in err=%i, last_trans=%i  %02x %02x %02x %02x\n",
+					err, last_trans, tmp[0], tmp[1], tmp[2], tmp[3]);
+		err = transfer(h, 4, tmp, sizeof(tmp), &last_trans, p_id);
+		if (err)
+			printf("4 in err=%i, last_trans=%i  %02x %02x %02x %02x\n",
+					err, last_trans, tmp[0], tmp[1], tmp[2], tmp[3]);
+	} else {
+		do_status(h, p_id);
+	}
+
+	return transfer_size;
+}
+
+#define FT_APP	0xaa
+#define FT_CSF	0xcc
+#define FT_DCD	0xee
+#define FT_LOAD_ONLY	0x00
+
+static int do_irom_download(struct libusb_device_handle *h, struct usb_id *p_id,
+		struct usb_work *curr, int verify)
+{
+	static unsigned char jump_command[] = {0x0b,0x0b, V(0),  0x00, V(0x00000000), V(0), 0x00};
+
+	int ret;
+	FILE* xfile;
+	unsigned char type;
+	unsigned fsize;
+	unsigned header_offset;
+	int cnt;
+	unsigned file_base;
+	int last_trans, err;
+#define BUF_SIZE (1024*16)
+	unsigned char *buf = NULL;
+	unsigned char *verify_buffer = NULL;
+	unsigned verify_cnt;
+	unsigned char *p;
+	unsigned char tmp[64];
+	unsigned dladdr = 0;
+	unsigned max_length;
+	unsigned plugin = 0;
+	unsigned header_addr = 0;
+
+	unsigned skip = 0;
+	unsigned transfer_size=0;
+	int retry = 0;
+
+	xfile = fopen(curr->filename, "rb" );
+	if (!xfile) {
+		printf("error, can not open input file: %s\n", curr->filename);
+		return -5;
+	}
+
+	buf = malloc(BUF_SIZE);
+	if (!buf) {
+		printf("error, out of memory\n");
+		ret = -2;
+		goto cleanup;
+	}
+
+	fsize = get_file_size(xfile);
+
+	cnt = fread(buf, 1 , BUF_SIZE, xfile);
+
+	if (cnt < 0x20) {
+		printf("error, file: %s is too small\n", curr->filename);
+		ret = -2;
+		goto cleanup;
+	}
+
+	max_length = fsize;
+
+	ret = process_header(h, p_id, curr, buf, cnt,
+			&dladdr, &max_length, &plugin, &header_addr);
+	if (ret < 0)
+		goto cleanup;
+
+	header_offset = ret;
+
+	if ((!curr->jump_mode) && (!curr->plug)) {
+		/*  nothing else requested */
+		ret = 0;
+		goto cleanup;
+	}
+
+	if (plugin && (!curr->plug)) {
+		printf("Only plugin header found\n");
+		ret = -1;
+		goto cleanup;
+	}
+
+	if (!dladdr) {
+		printf("unknown load address\n");
+		ret = -3;
+		goto cleanup;
+	}
+
+	file_base = header_addr - header_offset;
+
+	type = (curr->plug || curr->jump_mode) ? FT_APP : FT_LOAD_ONLY;
+
+	if (p_id->mach_id->mode == MODE_BULK && type == FT_APP) {
+		/* No jump command, dladdr should point to header */
+		dladdr = header_addr;
+	}
+
+	if (file_base > dladdr) {
+		max_length -= (file_base - dladdr);
+		dladdr = file_base;
+	}
+
+	skip = dladdr - file_base;
+
+	if (skip > cnt) {
+		if (skip > fsize) {
+			printf("skip(0x%08x) > fsize(0x%08x) file_base=0x%08x, header_offset=0x%x\n",
+					skip, fsize, file_base, header_offset);
+			ret = -4;
+			goto cleanup;
+		}
+
+		fseek(xfile, skip, SEEK_SET);
+		cnt -= skip;
+		fsize -= skip;
+		skip = 0;
+		cnt = fread(buf, 1 , BUF_SIZE, xfile);
+	}
+
+	p = &buf[skip];
+	cnt -= skip;
+	fsize -= skip;
+
+	if (fsize > max_length)
+		fsize = max_length;
+
+	if (verify) {
+		/*
+		 * we need to save header for verification
+		 * because some of the file is changed
+		 * before download
+		 */
+		verify_buffer = malloc(cnt);
+		verify_cnt = cnt;
+
+		if (!verify_buffer) {
+			printf("error, out of memory\n");
+			ret = -2;
+			goto cleanup;
+		}
+
+		memcpy(verify_buffer, p, cnt);
+
+		if ((type == FT_APP) && (p_id->mach_id->mode != MODE_HID)) {
+			type = FT_LOAD_ONLY;
+			verify = 2;
+		}
+	}
+
+	printf("loading binary file(%s) to %08x, skip=0x%x, fsize=%d type=%d...\n",
+			curr->filename, dladdr, skip, fsize, type);
+
+	ret = load_file(h, p_id, p, cnt, buf, BUF_SIZE,
+			dladdr, fsize, type, xfile);
+	if (ret < 0)
+		goto cleanup;
+
+	printf("binary file successfully loaded\n");
+
+	transfer_size = ret;
+
+	if (verify) {
+		printf("verifying file...\n");
+
+		ret = verify_memory(h, p_id, xfile, skip, dladdr, fsize, verify_buffer, verify_cnt);
+		if (ret < 0) {
+			printf("verifying failed\n");
+			goto cleanup;
+		}
+
+		printf("file successfully verified\n");
+
+		if (verify == 2) {
+			if (verify_cnt > 64)
+				verify_cnt = 64;
+			ret = load_file(h, p_id, verify_buffer, verify_cnt,
+					buf, BUF_SIZE, dladdr, verify_cnt,
+					FT_APP, xfile);
+			if (ret < 0)
+				goto cleanup;
+
+		}
+	}
+
+	if (p_id->mach_id->mode == MODE_HID && type == FT_APP) {
+		printf("jumping to 0x%08x\n", header_addr);
+
+		jump_command[2] = (unsigned char)(header_addr >> 24);
+		jump_command[3] = (unsigned char)(header_addr >> 16);
+		jump_command[4] = (unsigned char)(header_addr >> 8);
+		jump_command[5] = (unsigned char)(header_addr);
+
+		/* Any command will initiate jump for mx51, jump address is ignored by mx51 */
+		retry = 0;
+
+		for (;;) {
+			err = transfer(h, 1, jump_command, 16, &last_trans, p_id);
+			if (!err)
+				break;
+
+			printf("jump_command err=%i, last_trans=%i\n", err, last_trans);
+
+			if (retry > 5)
+				return -4;
+
+			retry++;
+		}
+
+		memset(tmp, 0, sizeof(tmp));
+		err = transfer(h, 3, tmp, sizeof(tmp), &last_trans, p_id);
+
+		if (err)
+			printf("j3 in err=%i, last_trans=%i  %02x %02x %02x %02x\n",
+					err, last_trans, tmp[0], tmp[1], tmp[2], tmp[3]);
+	}
+
+	ret = (fsize == transfer_size) ? 0 : -16;
+cleanup:
+	fclose(xfile);
+	free(verify_buffer);
+	free(buf);
+
+	return ret;
+}
+
+static void usage(const char *prgname)
+{
+	fprintf(stderr, "usage: %s [OPTIONS] [FILENAME]\n\n"
+		"-c           check correctness of flashed image\n"
+		"-v           verbose (give multiple times to increase)\n"
+		"-h           this help\n", prgname);
+	exit(1);
+}
+
+int main(int argc, char *argv[])
+{
+	struct usb_id *p_id;
+	struct mach_id *mach;
+	libusb_device **devs;
+	libusb_device *dev;
+	int r;
+	int err;
+	int ret = 1;
+	ssize_t cnt;
+	libusb_device_handle *h = NULL;
+	int config = 0;
+	int verify = 0;
+	struct usb_work w = {};
+	int opt;
+
+	while ((opt = getopt(argc, argv, "cvh")) != -1) {
+		switch (opt) {
+		case 'c':
+			verify = 1;
+			break;
+		case 'v':
+			verbose++;
+			break;
+		case 'h':
+			usage(argv[0]);
+		default:
+			exit(1);
+		}
+	}
+
+	if (optind == argc) {
+		fprintf(stderr, "no filename given\n");
+		usage(argv[0]);
+		exit(1);
+	}
+
+	w.plug = 1;
+	w.dcd = 1;
+	w.jump_mode = J_HEADER;
+	strncpy(w.filename, argv[optind], sizeof(w.filename) - 1);
+
+	r = libusb_init(NULL);
+	if (r < 0)
+		goto out;
+
+	cnt = libusb_get_device_list(NULL, &devs);
+	if (cnt < 0) {
+		fprintf(stderr, "no supported device found\n");
+		goto out;
+	}
+
+	dev = find_imx_dev(devs, &mach);
+	if (!dev) {
+		fprintf(stderr, "no supported device found\n");
+		goto out;
+	}
+
+	err = libusb_open(dev, &h);
+	if (err) {
+		fprintf(stderr, "Could not open device vid=0x%x pid=0x%x err=%d\n",
+				mach->vid, mach->pid, err);
+		goto out;
+	}
+
+	libusb_free_device_list(devs, 1);
+
+	libusb_get_configuration(h, &config);
+
+	if (libusb_kernel_driver_active(h, 0))
+		 libusb_detach_kernel_driver(h, 0);
+
+	err = libusb_claim_interface(h, 0);
+	if (err) {
+		printf("Claim failed\n");
+		goto out;
+	}
+
+	p_id = malloc(sizeof(*p_id));
+	if (!p_id) {
+		perror("malloc");
+		exit(1);
+	}
+
+	p_id->mach_id = mach;
+
+	err = do_status(h, p_id);
+	if (err) {
+		printf("status failed\n");
+		goto out;
+	}
+
+	err = do_irom_download(h, p_id, &w, verify);
+	if (err) {
+		err = do_status(h, p_id);
+		goto out;
+	}
+
+	ret = 0;
+out:
+	if (h)
+		libusb_close(h);
+
+	libusb_exit(NULL);
+
+	return ret;
+}
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
