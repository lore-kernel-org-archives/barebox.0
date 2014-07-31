Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XCpSn-00031Z-CX
 for barebox@lists.infradead.org; Thu, 31 Jul 2014 12:28:08 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 31 Jul 2014 14:27:37 +0200
Message-Id: <1406809657-2489-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1406809657-2489-1-git-send-email-s.hauer@pengutronix.de>
References: <1406809657-2489-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/6] Add support for metadata in barebox images
To: barebox@lists.infradead.org

It's often useful to get some information about a barebox image
before starting or flashing it. This patch introduces barebox
Image MetaData (IMD). When enabled a barebox image will contain
a list of tags containing the desired information. We have tags
for:

- the barebox release (2014.07.0-00160-g035de50-dirty)
- the build timestamp (#741 Mon Jul 28 15:08:54 CEST 2014)
- the board model the image is intended for
- the device tree toplevel compatible property

Also there is an additional generic key-value store which stores
parameters for which no dedicated tag exists. In this patch it
is used for the memory size an image supports.

Since there is no fixed offset in a barebox image which can be
used for storing the information, the metadata is stored somewhere
in the image and found by iterating over the image. This works
for most image types, but obviously not for SoC images which are
encoded or encrypted in some way.

There is a 'imd' tool compiled from the same sources for barebox,
for the compile host and for the target, so the metadata information
is available whereever needed.

For device tree boards the model and of_compatible tags are automatically
generated.

Example output of the imd tool for a Phytec phyFLEX image:

build: #889 Wed Jul 30 16:08:54 CEST 2014
release: 2014.07.0-00167-g6b2070d-dirty
parameter: memsize=1024
of_compatible: phytec,imx6x-pbab01 phytec,imx6dl-pfla02 fsl,imx6dl
model: Phytec phyFLEX-i.MX6 Duallite Carrier-Board

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Documentation/user/imd.rst                     |  54 +++++
 Documentation/user/updating.rst                |   3 +
 Documentation/user/user-manual.rst             |   1 +
 arch/arm/boards/freescale-mx53-qsb/lowlevel.c  |   1 +
 arch/arm/boards/phytec-phyflex-imx6/lowlevel.c |  16 ++
 arch/arm/boards/tqma53/lowlevel.c              |   9 +
 arch/arm/lib/barebox.lds.S                     |   2 +
 arch/arm/lib/pbl.lds.S                         |   2 +
 commands/Kconfig                               |   9 +
 commands/Makefile                              |   1 +
 commands/imd.c                                 |  60 +++++
 common/Kconfig                                 |   3 +
 common/Makefile                                |   4 +-
 common/imd-barebox.c                           |  25 ++
 common/imd.c                                   | 322 +++++++++++++++++++++++++
 include/asm-generic/barebox.lds.h              |   6 +
 include/image-metadata.h                       | 115 +++++++++
 scripts/Makefile                               |   2 +
 scripts/Makefile.lib                           |   2 +-
 scripts/bareboximd.c                           | 130 ++++++++++
 scripts/gen-dtb-s                              |  34 +++
 21 files changed, 799 insertions(+), 2 deletions(-)
 create mode 100644 Documentation/user/imd.rst
 create mode 100644 commands/imd.c
 create mode 100644 common/imd-barebox.c
 create mode 100644 common/imd.c
 create mode 100644 include/image-metadata.h
 create mode 100644 scripts/bareboximd.c

diff --git a/Documentation/user/imd.rst b/Documentation/user/imd.rst
new file mode 100644
index 0000000..07b562e
--- /dev/null
+++ b/Documentation/user/imd.rst
@@ -0,0 +1,54 @@
+
+.. _imd:
+
+Image MedaData (IMD)
+====================
+
+barebox images can be enriched with metadata. This is useful to get information
+the board an image is compiled for and which barebox version an image contains.
+
+There are predefined tags for:
+
+- The build timestamp
+- The barebox release version
+- The model (board) the image is compiled for
+- The toplevel device tree compatible properties the image can handle
+
+Additionally there is a generic key/value tag to add information which does not
+fit into the above categories, for example the memory size for boards which come
+with different memory sizes which can't be automatically detected.
+
+The informations can be extracted with the ``bareboximd`` tool which lives under
+``scripts/`` in the barebox sourcecode. If enabled it is compiled for the compile
+host and also for the target architecture. barebox itself has the :ref:`command_imd`
+command to extract the informations. Here is an example output of the tool called
+without additional options::
+
+  # imd barebox-phytec-pbab01dl-1gib.img
+  build: #890 Wed Jul 30 16:15:24 CEST 2014
+  release: 2014.07.0-00167-ge6632a9-dirty
+  parameter: memsize=1024
+  of_compatible: phytec,imx6x-pbab01 phytec,imx6dl-pfla02 fsl,imx6dl
+  model: Phytec phyFLEX-i.MX6 Duallite Carrier-Board
+
+Single informations can be extracted with the ``-t <type>`` option::
+
+  # imd barebox-phytec-pbab01dl-1gib.img -t release
+  2014.07.0-00167-ge6632a9-dirty
+
+Since the barebox hush does not have output redirection the barebox too has the
+``-s <var>`` option to assign the output to a variable for later evaluation.
+
+Limitations
+-----------
+
+The IMD tags are generated in the barebox binary before a SoC specific image is
+generated. Some SoCs encrypt or otherwise manipulate the images in a way that the
+IMD information is lost. The IMD mechanism does not work on these SoCs. A known
+example is the Freescale i.MX28.
+
+IMD and barebox_update
+----------------------
+
+The IMD informations could well be used to check if an image is suitable for updating
+barebox for a particular board. Support for such a check is planned but not yet implemented.
diff --git a/Documentation/user/updating.rst b/Documentation/user/updating.rst
index 2a963b6..6a1a733 100644
--- a/Documentation/user/updating.rst
+++ b/Documentation/user/updating.rst
@@ -27,3 +27,6 @@ barebox has been started from is registered as default (marked with a ``*``)::
 available for your board. It is recommended to implement it, but you can also
 update barebox manually using :ref:`command_erase` and :ref:`command_cp`
 commands. The exact commands are board specific.
+
+**NOTE** barebox images can be enriched with metadata which can be used to check
+if a given image is suitable for updating barebox, see :ref:`imd`.
diff --git a/Documentation/user/user-manual.rst b/Documentation/user/user-manual.rst
index 0eac0aa..3d68bbb 100644
--- a/Documentation/user/user-manual.rst
+++ b/Documentation/user/user-manual.rst
@@ -19,6 +19,7 @@ Contents:
    hush
    defaultenv-2
    updating
+   imd
    devicetree
    pbl
    multi-image
diff --git a/arch/arm/boards/freescale-mx53-qsb/lowlevel.c b/arch/arm/boards/freescale-mx53-qsb/lowlevel.c
index 51b9ef8..7d1c1d5 100644
--- a/arch/arm/boards/freescale-mx53-qsb/lowlevel.c
+++ b/arch/arm/boards/freescale-mx53-qsb/lowlevel.c
@@ -2,6 +2,7 @@
 #include <mach/esdctl.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
+#include <image-metadata.h>
 
 extern char __dtb_imx53_qsb_start[];
 
diff --git a/arch/arm/boards/phytec-phyflex-imx6/lowlevel.c b/arch/arm/boards/phytec-phyflex-imx6/lowlevel.c
index 55aae00..1d08f05 100644
--- a/arch/arm/boards/phytec-phyflex-imx6/lowlevel.c
+++ b/arch/arm/boards/phytec-phyflex-imx6/lowlevel.c
@@ -16,6 +16,7 @@
 #include <common.h>
 #include <sizes.h>
 #include <io.h>
+#include <image-metadata.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 #include <asm/sections.h>
@@ -57,6 +58,11 @@ extern char __dtb_imx6q_phytec_pbab01_start[];
 extern char __dtb_imx6dl_phytec_pbab01_start[];
 extern char __dtb_imx6s_phytec_pbab01_start[];
 
+BAREBOX_IMD_TAG_STRING(phyflex_mx6_memsize_512M, IMD_TYPE_PARAMETER, "memsize=512", 0);
+BAREBOX_IMD_TAG_STRING(phyflex_mx6_memsize_1G, IMD_TYPE_PARAMETER, "memsize=1024", 0);
+BAREBOX_IMD_TAG_STRING(phyflex_mx6_memsize_2G, IMD_TYPE_PARAMETER, "memsize=2048", 0);
+BAREBOX_IMD_TAG_STRING(phyflex_mx6_memsize_4G, IMD_TYPE_PARAMETER, "memsize=4096", 0);
+
 ENTRY_FUNCTION(start_phytec_pbab01_1gib, r0, r1, r2)
 {
 	void *fdt;
@@ -65,6 +71,8 @@ ENTRY_FUNCTION(start_phytec_pbab01_1gib, r0, r1, r2)
 
 	arm_setup_stack(0x00920000 - 8);
 
+	IMD_USED(phyflex_mx6_memsize_1G);
+
 	if (IS_ENABLED(CONFIG_DEBUG_LL))
 		setup_uart();
 
@@ -81,6 +89,8 @@ ENTRY_FUNCTION(start_phytec_pbab01_2gib, r0, r1, r2)
 
 	arm_setup_stack(0x00920000 - 8);
 
+	IMD_USED(phyflex_mx6_memsize_2G);
+
 	if (IS_ENABLED(CONFIG_DEBUG_LL))
 		setup_uart();
 
@@ -97,6 +107,8 @@ ENTRY_FUNCTION(start_phytec_pbab01_4gib, r0, r1, r2)
 
 	arm_setup_stack(0x00920000 - 8);
 
+	IMD_USED(phyflex_mx6_memsize_4G);
+
 	fdt = __dtb_imx6q_phytec_pbab01_start - get_runtime_offset();
 
 	barebox_arm_entry(0x10000000, 0xEFFFFFF8, fdt);
@@ -110,6 +122,8 @@ ENTRY_FUNCTION(start_phytec_pbab01dl_1gib, r0, r1, r2)
 
 	arm_setup_stack(0x00920000 - 8);
 
+	IMD_USED(phyflex_mx6_memsize_1G);
+
 	fdt = __dtb_imx6dl_phytec_pbab01_start - get_runtime_offset();
 
 	barebox_arm_entry(0x10000000, SZ_1G, fdt);
@@ -123,6 +137,8 @@ ENTRY_FUNCTION(start_phytec_pbab01s_512mb, r0, r1, r2)
 
 	arm_setup_stack(0x00920000 - 8);
 
+	IMD_USED(phyflex_mx6_memsize_512M);
+
 	fdt = __dtb_imx6s_phytec_pbab01_start - get_runtime_offset();
 
 	barebox_arm_entry(0x10000000, SZ_512M, fdt);
diff --git a/arch/arm/boards/tqma53/lowlevel.c b/arch/arm/boards/tqma53/lowlevel.c
index 0a67228..cd87212 100644
--- a/arch/arm/boards/tqma53/lowlevel.c
+++ b/arch/arm/boards/tqma53/lowlevel.c
@@ -5,6 +5,7 @@
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 #include <mach/imx5.h>
+#include <image-metadata.h>
 
 extern char __dtb_imx53_mba53_start[];
 
@@ -34,6 +35,8 @@ static void __noreturn start_imx53_tqma53_common(void *fdt)
 	imx53_barebox_entry(fdt);
 }
 
+BAREBOX_IMD_TAG_STRING(tqma53_memsize_512M, IMD_TYPE_PARAMETER, "memsize=512", 0);
+
 ENTRY_FUNCTION(start_imx53_mba53_512mib, r0, r1, r2)
 {
 	void *fdt;
@@ -42,6 +45,8 @@ ENTRY_FUNCTION(start_imx53_mba53_512mib, r0, r1, r2)
 
 	arm_setup_stack(0xf8020000 - 8);
 
+	IMD_USED(tqma53_memsize_512M);
+
 	imx53_init_lowlevel_early(800);
 
 	fdt = __dtb_imx53_mba53_start - get_runtime_offset();
@@ -49,6 +54,8 @@ ENTRY_FUNCTION(start_imx53_mba53_512mib, r0, r1, r2)
 	start_imx53_tqma53_common(fdt);
 }
 
+BAREBOX_IMD_TAG_STRING(tqma53_memsize_1G, IMD_TYPE_PARAMETER, "memsize=1024", 0);
+
 ENTRY_FUNCTION(start_imx53_mba53_1gib, r0, r1, r2)
 {
 	void *fdt;
@@ -57,6 +64,8 @@ ENTRY_FUNCTION(start_imx53_mba53_1gib, r0, r1, r2)
 
 	arm_setup_stack(0xf8020000 - 8);
 
+	IMD_USED(tqma53_memsize_1G);
+
 	imx53_init_lowlevel_early(800);
 
 	fdt = __dtb_imx53_mba53_start - get_runtime_offset();
diff --git a/arch/arm/lib/barebox.lds.S b/arch/arm/lib/barebox.lds.S
index d958873..bb0354a 100644
--- a/arch/arm/lib/barebox.lds.S
+++ b/arch/arm/lib/barebox.lds.S
@@ -75,6 +75,8 @@ SECTIONS
 	. = ALIGN(4);
 	.data : { *(.data*) }
 
+	.barebox_imd : { BAREBOX_IMD }
+
 	. = .;
 	__barebox_cmd_start = .;
 	.barebox_cmd : { BAREBOX_CMDS }
diff --git a/arch/arm/lib/pbl.lds.S b/arch/arm/lib/pbl.lds.S
index 76184a0..9afee29 100644
--- a/arch/arm/lib/pbl.lds.S
+++ b/arch/arm/lib/pbl.lds.S
@@ -54,6 +54,8 @@ SECTIONS
 	. = ALIGN(4);
 	.rodata : { *(.rodata*) }
 
+	.barebox_imd : { BAREBOX_IMD }
+
 	_etext = .;			/* End of text and rodata section */
 
 	. = ALIGN(4);
diff --git a/commands/Kconfig b/commands/Kconfig
index 61816f5..96f27ad 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -148,6 +148,15 @@ config CMD_IOMEM
 	  Show information about iomem/ioport usage. Pendant to
 	  'cat /proc/iomem' and 'cat /proc/ioports' under Linux.
 
+config CMD_IMD
+	tristate
+	prompt "imd"
+	select IMD
+	help
+	  barebox images can have metadata in them which contains information
+	  like the barebox version and the build time. Say yes here to get the
+	  imd command which can extract that information from images.
+
 config CMD_MEMINFO
 	tristate
 	prompt "meminfo"
diff --git a/commands/Makefile b/commands/Makefile
index d42aca5..4474136 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -100,3 +100,4 @@ obj-$(CONFIG_CMD_MENUTREE)	+= menutree.o
 obj-$(CONFIG_CMD_2048)		+= 2048.o
 obj-$(CONFIG_CMD_REGULATOR)	+= regulator.o
 obj-$(CONFIG_CMD_LSPCI)		+= lspci.o
+obj-$(CONFIG_CMD_IMD)		+= imd.o
diff --git a/commands/imd.c b/commands/imd.c
new file mode 100644
index 0000000..f1a22ce
--- /dev/null
+++ b/commands/imd.c
@@ -0,0 +1,60 @@
+/*
+ * (C) Copyright 2014 Sascha Hauer, Pengutronix
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
+
+#include <common.h>
+#include <command.h>
+#include <complete.h>
+#include <environment.h>
+#include <image-metadata.h>
+
+int imd_command_setenv(const char *variable_name, const char *value)
+{
+	return setenv(variable_name, value);
+}
+
+static int do_imd(int argc, char *argv[])
+{
+	int ret;
+
+	ret = imd_command(argc, argv);
+
+	if (ret == -ENOSYS)
+		return COMMAND_ERROR_USAGE;
+
+	return ret;
+}
+
+BAREBOX_CMD_HELP_START(imd)
+BAREBOX_CMD_HELP_TEXT("extract metadata from barebox binary")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT ("-t <type>", "only show information of <type>")
+BAREBOX_CMD_HELP_OPT ("-n <no>", "for tags with multiple strings only show string <no>")
+BAREBOX_CMD_HELP_OPT ("-s VARNAME",  "set variable VARNAME instead of showing information")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Without options all information available is printed. Valid types are:")
+BAREBOX_CMD_HELP_TEXT("release, build, model, of_compatible")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(imd)
+	.cmd = do_imd,
+	BAREBOX_CMD_DESC("extract metadata from barebox binary")
+	BAREBOX_CMD_OPTS("[nst] FILE")
+	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
+	BAREBOX_CMD_HELP(cmd_imd_help)
+BAREBOX_CMD_END
diff --git a/common/Kconfig b/common/Kconfig
index bba7f15..2156b4d 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -457,6 +457,9 @@ config BLSPEC
 	  on a device and it allows the Operating System to install / update
 	  kernels.
 
+config IMD
+	bool "barebox metadata support"
+
 config KERNEL_INSTALL_TARGET
 	bool
 	depends on !SANDBOX
diff --git a/common/Makefile b/common/Makefile
index 204241c..64c26be 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -43,7 +43,9 @@ obj-$(CONFIG_RESET_SOURCE)	+= reset_source.o
 obj-$(CONFIG_SHELL_HUSH)	+= hush.o
 obj-$(CONFIG_SHELL_SIMPLE)	+= parser.o
 obj-$(CONFIG_UIMAGE)		+= image.o uimage.o
-obj-$(CONFIG_MENUTREE) += menutree.o
+obj-$(CONFIG_MENUTREE)		+= menutree.o
+lwl-$(CONFIG_IMD)		+= imd-barebox.o
+obj-$(CONFIG_IMD)		+= imd.o
 
 quiet_cmd_pwd_h = PWDH    $@
 ifdef CONFIG_PASSWORD
diff --git a/common/imd-barebox.c b/common/imd-barebox.c
new file mode 100644
index 0000000..7122740
--- /dev/null
+++ b/common/imd-barebox.c
@@ -0,0 +1,25 @@
+#include <common.h>
+#include <image-metadata.h>
+#include <generated/compile.h>
+#include <generated/utsrelease.h>
+
+/*
+ * Mark a imd entry as used so that the linker cannot
+ * throw it away.
+ */
+void imd_used(const void *used)
+{
+}
+
+struct imd_header imd_start_header
+__BAREBOX_IMD_SECTION(.barebox_imd_start) = {
+	.type = IMD_TYPE_START,
+};
+
+struct imd_header imd_end_header
+__BAREBOX_IMD_SECTION(.barebox_imd_end) = {
+	.type = IMD_TYPE_END,
+};
+
+BAREBOX_IMD_TAG_STRING(imd_build_tag, IMD_TYPE_BUILD, UTS_VERSION, 1);
+BAREBOX_IMD_TAG_STRING(imd_release_tag, IMD_TYPE_RELEASE, UTS_RELEASE, 1);
diff --git a/common/imd.c b/common/imd.c
new file mode 100644
index 0000000..f474fb1
--- /dev/null
+++ b/common/imd.c
@@ -0,0 +1,322 @@
+/*
+ * (C) Copyright 2014 Sascha Hauer, Pengutronix
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
+#ifdef __BAREBOX__
+#include <common.h>
+#include <image-metadata.h>
+#include <libfile.h>
+#include <getopt.h>
+#include <malloc.h>
+#include <fs.h>
+#endif
+
+/*
+ * imd_next - return a pointer to the next metadata field.
+ * @imd		The current metadata field
+ */
+struct imd_header *imd_next(struct imd_header *imd)
+{
+	int length;
+
+	length = imd_read_length(imd);
+	length = ALIGN(length, 4);
+	length += 8;
+
+	return (void *)imd + length;
+}
+
+struct imd_header *imd_find_type(struct imd_header *imd, uint32_t type)
+{
+	imd_for_each(imd, imd)
+		if (imd_read_type(imd) == type)
+			return imd;
+
+	return NULL;
+}
+
+static int imd_next_validate(void *buf, int bufsize, int start_ofs)
+{
+	int length, size;
+	struct imd_header *imd = buf + start_ofs;
+
+	size = bufsize - start_ofs;
+
+	if (size < 8) {
+		debug("trunkated tag at offset %dd\n", start_ofs);
+		return -EINVAL;
+	}
+
+	length = imd_read_length(imd);
+	length = ALIGN(length, 4);
+	length += 8;
+
+	if (size < length) {
+		debug("tag at offset %d with size %d exceeds bufsize %d\n",
+				start_ofs, size, bufsize);
+		return -EINVAL;
+	}
+
+	debug("tag at offset %d has length %d\n", start_ofs, length);
+
+	return length;
+}
+
+static int imd_validate_tags(void *buf, int bufsize, int start_ofs)
+{
+	int ret;
+	struct imd_header *imd = buf + start_ofs;
+
+	while (1) {
+		uint32_t type;
+
+		ret = imd_next_validate(buf, bufsize, start_ofs);
+		if (ret < 0) {
+			debug("Invalid tag at offset %d\n", start_ofs);
+			return -EINVAL;
+		}
+
+		imd = (void *)imd + ret;
+		start_ofs += ret;
+
+		type = imd_read_type(imd);
+
+		if (!imd_type_valid(type)) {
+			debug("Invalid: tag: 0x%08x\n", type);
+			return -EINVAL;
+		}
+
+		if (type == IMD_TYPE_END)
+			return 0;
+	}
+}
+
+/*
+ * imd_search_validate - find valid metadata in a buffer
+ * @buf		the buffer
+ * @size	buffer size
+ * @start	The returned pointer to the metadata
+ *
+ * This iterates over a buffer and searches for metadata. The metadata
+ * is checked for consistency (length fields not exceeding buffer and
+ * presence of end header) and returned in @start. The returned pointer
+ * is only valid when 0 is returned. The returned data may be unaligned.
+ */
+int imd_search_validate(void *buf, int size, struct imd_header **start)
+{
+	int start_ofs = 0;
+	int i, ret;
+
+	for (i = start_ofs; i < size - 32; i++) {
+		uint32_t type;
+
+		type = imd_read_le32(buf + i);
+
+		if (type != IMD_TYPE_START)
+			continue;
+
+		debug("Start tag found at offset %d\n", i);
+
+		ret = imd_validate_tags(buf, size, i);
+		if (!ret) {
+			*start = buf + i;
+			return 0;
+		}
+	}
+
+	return -EINVAL;
+}
+
+struct imd_type_names {
+	uint32_t type;
+	const char *name;
+};
+
+static struct imd_type_names imd_types[] = {
+	{
+		.type = IMD_TYPE_RELEASE,
+		.name = "release",
+	}, {
+		.type = IMD_TYPE_BUILD,
+		.name = "build",
+	}, {
+		.type = IMD_TYPE_MODEL,
+		.name = "model",
+	}, {
+		.type = IMD_TYPE_PARAMETER,
+		.name = "parameter",
+	}, {
+		.type = IMD_TYPE_OF_COMPATIBLE,
+		.name = "of_compatible",
+	},
+};
+
+const char *imd_type_to_name(uint32_t type)
+{
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(imd_types); i++)
+		if (imd_types[i].type == type)
+			return imd_types[i].name;
+
+	return "unknown";
+}
+
+uint32_t imd_name_to_type(const char *name)
+{
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(imd_types); i++)
+		if (!strcmp(imd_types[i].name, name))
+			return imd_types[i].type;
+
+	return IMD_TYPE_INVALID;
+}
+
+char *imd_string_data(struct imd_entry_string *imd_string, int index)
+{
+	int i, total = 0, l = 0;
+	int len = imd_read_length(&imd_string->header);
+	char *p = imd_string->data;
+
+	for (i = 0; total < len; total += l, p += l) {
+		l = strlen(p) + 1;
+		if (i++ == index)
+			return p;
+	}
+
+	return NULL;
+}
+
+char *imd_concat_strings(struct imd_entry_string *imd_string)
+{
+	int i, len = imd_read_length(&imd_string->header);
+	char *str;
+
+	str = malloc(len);
+	if (!str)
+		return NULL;
+
+	memcpy(str, imd_string->data, len);
+
+	for (i = 0; i < len - 1; i++)
+		if (str[i] == 0)
+			str[i] = ' ';
+
+	return str;
+}
+
+int imd_command_verbose;
+
+int imd_command(int argc, char *argv[])
+{
+	int ret, opt, strno = -1;
+	void *buf;
+	size_t size;
+	uint32_t type = IMD_TYPE_INVALID;
+	struct imd_header *imd_start, *imd;
+	const char *filename;
+	const char *variable_name = NULL;
+	char *str;
+
+	imd_command_verbose = 0;
+
+	while ((opt = getopt(argc, argv, "vt:s:n:")) > 0) {
+		switch(opt) {
+		case 't':
+			type = imd_name_to_type(optarg);
+			if (type == IMD_TYPE_INVALID) {
+				fprintf(stderr, "no such type: %s\n", optarg);
+				return -ENOSYS;
+			}
+			break;
+		case 's':
+			variable_name = optarg;
+			break;
+		case 'v':
+			imd_command_verbose = 1;
+			break;
+		case 'n':
+			strno = simple_strtoul(optarg, NULL, 0);
+			break;
+		default:
+			return -ENOSYS;
+		}
+	}
+
+	if (optind == argc) {
+		fprintf(stderr, "No image given\n");
+		return -ENOSYS;
+	}
+
+	filename = argv[optind];
+
+	ret = read_file_2(filename, &size, &buf, 0x100000);
+	if (ret && ret != -EFBIG)
+		return -errno;
+
+	ret = imd_search_validate(buf, size, &imd_start);
+	if (ret)
+		return ret;
+
+	if (type == IMD_TYPE_INVALID) {
+		imd_for_each(imd_start, imd) {
+			uint32_t type = imd_read_type(imd);
+
+			if (imd_is_string(type)) {
+				struct imd_entry_string *imd_string =
+					(struct imd_entry_string *)imd;
+
+				str = imd_concat_strings(imd_string);
+
+				printf("%s: %s\n", imd_type_to_name(type), str);
+			} else {
+				debug("Unknown tag 0x%08x\n", type);
+			}
+		}
+	} else {
+		imd = imd_find_type(imd_start, type);
+		if (!imd) {
+			debug("No tag of type 0x%08x found\n", type);
+			return -ENODATA;
+		}
+
+		if (imd_is_string(type)) {
+			struct imd_entry_string *imd_string =
+				(struct imd_entry_string *)imd;
+
+			if (strno >= 0)
+				str = imd_string_data(imd_string, strno);
+			else
+				str = imd_concat_strings(imd_string);
+
+			if (!str)
+				return -ENODATA;
+
+			if (variable_name)
+				imd_command_setenv(variable_name, str);
+			else
+				printf("%s\n", str);
+
+			if (strno < 0)
+				free(str);
+		} else {
+			printf("tag 0x%08x present\n", type);
+		}
+	}
+
+	return 0;
+}
diff --git a/include/asm-generic/barebox.lds.h b/include/asm-generic/barebox.lds.h
index 5dabda3..66abff3 100644
--- a/include/asm-generic/barebox.lds.h
+++ b/include/asm-generic/barebox.lds.h
@@ -53,6 +53,12 @@
 	KEEP(*(.dtb.rodata.*));			\
 	__dtb_end = .;
 
+#define BAREBOX_IMD				\
+	KEEP(*(.barebox_imd_start))		\
+	KEEP(*(.barebox_imd_1*))		\
+	*(.barebox_imd_0*)			\
+	KEEP(*(.barebox_imd_end))
+
 #if defined(CONFIG_ARCH_BAREBOX_MAX_BARE_INIT_SIZE) && \
 CONFIG_ARCH_BAREBOX_MAX_BARE_INIT_SIZE < CONFIG_BAREBOX_MAX_BARE_INIT_SIZE
 #define MAX_BARE_INIT_SIZE CONFIG_ARCH_BAREBOX_MAX_BARE_INIT_SIZE
diff --git a/include/image-metadata.h b/include/image-metadata.h
new file mode 100644
index 0000000..885705a
--- /dev/null
+++ b/include/image-metadata.h
@@ -0,0 +1,115 @@
+#ifndef __INCLUDE_IMAGE_METADTA_H
+#define __INCLUDE_IMAGE_METADTA_H
+
+/*
+ * barebox Image MetaData (IMD)
+ *
+ * IMD is a mechanism to store metadata in barebox images. With IMD
+ * it's possible to extract the release, the build timestamp and the
+ * board type from a barebox image.
+ *
+ * Since there is no fixed place in the image suitable for all SoC image
+ * types the metadata can be stored anywhere in the image and is found
+ * by iterating over the image. The metadata starts with a start header
+ * and ends with an end header. All tags in between carry the payload.
+ *
+ * Make sure source files containing IMD data are compiled with lwl-y so
+ * that the tags end up in the PBL if one exists and in the regular image
+ * without PBL.
+ *
+ * The following types exist:
+ */
+#define IMD_TYPE_START		0x640c0001
+#define IMD_TYPE_RELEASE	0x640c8002 /* The barebox release aka UTS_RELEASE */
+#define IMD_TYPE_BUILD		0x640c8003 /* build number and timestamp (UTS_VERSION) */
+#define IMD_TYPE_MODEL		0x640c8004 /* The board name this image is for */
+#define IMD_TYPE_OF_COMPATIBLE	0x640c8005 /* the device tree compatible string */
+#define IMD_TYPE_PARAMETER	0x640c8006 /* A generic parameter. Use key=value as data */
+#define IMD_TYPE_END		0x640c7fff
+#define IMD_TYPE_INVALID	0xffffffff
+
+/*
+ * The IMD header. All data is stored in little endian format in the image.
+ * The next header starts at the next 4 byte boundary after the data.
+ */
+struct imd_header {
+	uint32_t type;		/* One of IMD_TYPE_* above */
+	uint32_t datalength;	/* Length of the data (exluding the header) */
+};
+
+/*
+ * A IMD string. Set bit 15 of the IMD_TYPE to indicate the data is printable
+ * as string.
+ */
+struct imd_entry_string {
+	struct imd_header header;
+	char data[];
+};
+
+static inline int imd_is_string(uint32_t type)
+{
+	return (type & 0x8000) ? 1 : 0;
+}
+
+static inline int imd_type_valid(uint32_t type)
+{
+	return (type & 0xffff0000) == 0x640c0000;
+}
+
+#define imd_for_each(start, imd) \
+	for (imd = imd_next(start); imd_read_type(imd) != IMD_TYPE_END; imd = imd_next(imd))
+
+static inline uint32_t imd_read_le32(void *_ptr)
+{
+	uint8_t *ptr = _ptr;
+
+	return ptr[0] | (ptr[1] << 8) | (ptr[2] << 16) | (ptr[3] << 24);
+}
+
+static inline uint32_t imd_read_type(struct imd_header *imd)
+{
+	return imd_read_le32(&imd->type);
+}
+
+static inline uint32_t imd_read_length(struct imd_header *imd)
+{
+	return imd_read_le32(&imd->datalength);
+}
+
+struct imd_header *imd_find_type(struct imd_header *imd, uint32_t type);
+
+extern int imd_command_verbose;
+int imd_command_setenv(const char *variable_name, const char *value);
+int imd_command(int argc, char *argv[]);
+
+#ifdef __BAREBOX__
+
+#include <linux/stringify.h>
+
+#define __BAREBOX_IMD_SECTION(_section) \
+	__attribute__ ((unused,section (__stringify(_section)))) \
+	__attribute__((aligned(4)))
+
+#define BAREBOX_IMD_TAG_STRING(_name, _type, _string, _keep_if_unused)			\
+	const struct imd_entry_string __barebox_imd_##_name				\
+	__BAREBOX_IMD_SECTION(.barebox_imd_ ## _keep_if_unused ## _ ## _name) = {	\
+		.header.type = cpu_to_le32(_type),					\
+		.header.datalength = cpu_to_le32(sizeof(_string)),			\
+		.data = _string,							\
+	}
+
+
+#ifdef CONFIG_IMD
+void imd_used(const void *);
+#else
+static inline void imd_used(const void *unused)
+{
+}
+#endif
+
+#define IMD_USED(_name) \
+	imd_used(&__barebox_imd_##_name)
+
+#endif /* __BAREBOX__ */
+
+#endif /* __INCLUDE_IMAGE_METADTA_H */
diff --git a/scripts/Makefile b/scripts/Makefile
index 9c77680..aaf24cc 100644
--- a/scripts/Makefile
+++ b/scripts/Makefile
@@ -10,6 +10,7 @@ hostprogs-y                      += fix_size
 hostprogs-y                      += bareboxenv
 hostprogs-y                      += bareboxcrc32
 hostprogs-y                      += kernel-install
+hostprogs-$(CONFIG_IMD)          += bareboximd
 hostprogs-$(CONFIG_KALLSYMS)     += kallsyms
 hostprogs-$(CONFIG_ARCH_MVEBU)   += kwbimage kwboot
 hostprogs-$(CONFIG_ARCH_NETX)    += gen_netx_image
@@ -29,6 +30,7 @@ subdir-$(CONFIG_ARCH_TEGRA)	+= tegra
 targetprogs-$(CONFIG_BAREBOXENV_TARGET) += bareboxenv-target
 targetprogs-$(CONFIG_KERNEL_INSTALL_TARGET) += kernel-install-target
 targetprogs-$(CONFIG_BAREBOXCRC32_TARGET) += bareboxcrc32-target
+targetprogs-$(CONFIG_IMD) += bareboximd-target
 
 # Let clean descend into subdirs
 subdir-	+= basic kconfig setupmbr
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index ea086fe..319293d 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -210,7 +210,7 @@ cmd_gzip = (cat $(filter-out FORCE,$^) | gzip -n -f -9 > $@) || \
 
 # Generate an assembly file to wrap the output of the device tree compiler
 quiet_cmd_dt_S_dtb = DTB     $@
-cmd_dt_S_dtb= ( $(srctree)/scripts/gen-dtb-s $(subst -,_,$(*F)) $< > $@
+cmd_dt_S_dtb= ( $(srctree)/scripts/gen-dtb-s $(subst -,_,$(*F)) $< $(CONFIG_IMD)) > $@
 $(obj)/%.dtb.S: $(obj)/%.dtb $(srctree)/scripts/gen-dtb-s FORCE
 	$(call if_changed,dt_S_dtb)
 
diff --git a/scripts/bareboximd.c b/scripts/bareboximd.c
new file mode 100644
index 0000000..1bd98e1
--- /dev/null
+++ b/scripts/bareboximd.c
@@ -0,0 +1,130 @@
+/*
+ * (C) Copyright 2014 Sascha Hauer, Pengutronix
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
+
+#define __ALIGN_MASK(x, mask)	(((x) + (mask)) & ~(mask))
+#define ALIGN(x, a)		__ALIGN_MASK(x, (typeof(x))(a) - 1)
+#define ARRAY_SIZE(x) (sizeof(x) / sizeof((x)[0]))
+
+#include <stdio.h>
+#include <sys/types.h>
+#include <stdint.h>
+#include <asm-generic/errno.h>
+#include <sys/types.h>
+#include <sys/stat.h>
+#include <fcntl.h>
+#include <stdlib.h>
+#include <unistd.h>
+#include <sys/mman.h>
+#include <string.h>
+#include <errno.h>
+#include <stdarg.h>
+
+#include "../include/image-metadata.h"
+
+void debug(const char *fmt, ...)
+{
+	va_list ap;
+
+	if (!imd_command_verbose)
+		return;
+
+	va_start(ap, fmt);
+	vfprintf(stderr, fmt, ap);
+	va_end(ap);
+}
+
+int imd_command_setenv(const char *variable_name, const char *value)
+{
+	fprintf(stderr, "-s option ignored\n");
+
+	return -EINVAL;
+}
+
+static int read_file_2(const char *filename, size_t *size, void **outbuf, loff_t max_size)
+{
+	struct stat s;
+	int ret, fd;
+	void *buf;
+
+	*size = 0;
+	*outbuf = NULL;
+
+	ret = stat(filename, &s);
+	if (ret) {
+		fprintf(stderr, "Cannot open %s: %s\n", filename, strerror(errno));
+		return -errno;
+	}
+
+	fd = open(filename, O_RDONLY);
+	if (fd < 0) {
+		fprintf(stderr, "Cannot open %s: %s\n", filename, strerror(-ret));
+		return -errno;
+	}
+
+	if (s.st_size < max_size)
+		max_size = s.st_size;
+
+	buf = mmap(NULL, max_size, PROT_READ, MAP_PRIVATE, fd, 0);
+	if (buf == MAP_FAILED) {
+		close(fd);
+		return -errno;
+	}
+
+	*outbuf = buf;
+	*size = max_size;
+
+	return 0;
+}
+
+static unsigned long simple_strtoul(const char *cp, char **endp, unsigned int base)
+{
+	return strtoul(cp, endp, base);
+}
+
+#include "../common/imd.c"
+
+static void usage(const char *prgname)
+{
+	printf(
+"Extract metadata from a barebox image\n"
+"\n"
+"Usage: %s [OPTIONS] FILE\n"
+"Options:\n"
+"-t <type>    only show information of <type>\n"
+"-n <no>      for tags with multiple strings only show string <no>\n"
+"\n"
+"Without options all information available is printed. Valid types are:\n"
+"release, build, model, of_compatible\n",
+	prgname);
+}
+
+int main(int argc, char *argv[])
+{
+	int ret;
+
+	ret = imd_command(argc, argv);
+	if (ret == -ENOSYS) {
+		usage(argv[0]);
+		exit(1);
+	}
+
+	if (ret)
+		fprintf(stderr, "%s\n", strerror(-ret));
+
+	return ret ? 1 : 0;
+}
diff --git a/scripts/gen-dtb-s b/scripts/gen-dtb-s
index 44136b0..3e4158f 100755
--- a/scripts/gen-dtb-s
+++ b/scripts/gen-dtb-s
@@ -2,8 +2,38 @@
 
 name=$1
 dtb=$2
+imd=$3
 
 echo "#include <asm-generic/barebox.lds.h>"
+
+FDTGET=scripts/dtc/fdtget
+
+if [ "$imd" = "y" ]; then
+	echo ".section .barebox_imd_0.${name},\"a\""
+	echo ".global __imd_${name}_start"
+	echo "__imd_${name}_start:"
+
+	compat=$($FDTGET -d notfound -t bi "$dtb" / compatible | sed "s^ ^,^g")
+	if [ "$compat" != "notfound" ]; then
+
+		compatlen=$($FDTGET -t s "$dtb" / compatible | wc -c)
+		echo ".int 0x640c8005"
+		echo ".int " $compatlen
+		echo ".byte " $compat
+		echo ".balign 4"
+	fi
+
+	model=$($FDTGET -d notfound -t bi "$dtb" / model | sed "s^ ^,^g")
+
+	if [ "$model" != "notfound" ]; then
+		modellen=$($FDTGET -t s "$dtb" / model | wc -c)
+		echo ".int 0x640c8004"
+		echo ".int " $modellen
+		echo ".byte " $model
+		echo ".balign 4"
+	fi
+fi
+
 echo ".section .dtb.rodata.${name},\"a\""
 echo ".balign STRUCT_ALIGNMENT"
 echo ".global __dtb_${name}_start"
@@ -12,3 +42,7 @@ echo ".incbin \"$dtb\""
 echo "__dtb_${name}_end:"
 echo ".global __dtb_${name}_end"
 echo ".balign STRUCT_ALIGNMENT"
+
+if [ "$imd" = "y" ]; then
+	echo ".word __imd_${name}_start"
+fi
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
