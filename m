Delivery-date: Sun, 12 Jan 2025 09:39:51 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tWtVf-0007lB-2T
	for lore@lore.pengutronix.de;
	Sun, 12 Jan 2025 09:39:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tWtVe-0007g4-CT
	for lore@pengutronix.de; Sun, 12 Jan 2025 09:39:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fkRmyjpTdLBYH6NnvhiEIetkrfC/JBAw8Ov4zOE6oXk=; b=DtJjMIq6kxDvDhIiV/t41Wxyc9
	jQ+qwL75DYVz7B0x+r4fwqWQXr+++fEN8o74fQk73YIdPhfdrlyEcoN3qVRYf8aRbqjs0fyuuwi4j
	iOJv+BVrZU5eb/oz5V4sEWUaBbc3FYN/A32Oja0NbPn/xD/Typ/DpigcU7rf7/1FpJR9jct3rM/vP
	juj25+X+heNCTBl7BMAtbz+Z7ns6GlebE6rZa8c8jP9JU9dGxrMEIccHo0rZRX01bxQVi5GX+v3MF
	hn57F4oJjxoVfKZj7DSUcvanOB7dEcMFivY+0v/RvkRE8CEON3OugrwDK/YMxg/GKo8WCNcYFlat+
	meRIRGyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tWtVD-00000002LpO-2J6o;
	Sun, 12 Jan 2025 08:39:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tWtV8-00000002LmM-2sy5
	for barebox@lists.infradead.org;
	Sun, 12 Jan 2025 08:39:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tWtV7-0007Uj-Fb; Sun, 12 Jan 2025 09:39:17 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tWtV6-0003PA-2V;
	Sun, 12 Jan 2025 09:39:17 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tWtQY-001LPJ-2K;
	Sun, 12 Jan 2025 09:34:34 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Felix Singer <felixsinger@posteo.net>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sun, 12 Jan 2025 09:34:29 +0100
Message-Id: <20250112083432.320215-11-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250112083432.320215-1-a.fatoum@pengutronix.de>
References: <20250112083432.320215-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250112_003919_048180_F5D3145A 
X-CRM114-Status: GOOD (  31.67  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 10/13] images: add barebox FIT image target
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The generic barebox-dt-2nd.img depends on the user to fish out
the correct device tree from arch/${SRCARCH}/dts and to instruct
the preceding boot stage to pass that device tree to the barebox image.

To make this easier, especially with an eye towards using this as a
coreboot payload, let's have the barebox build system produce a FIT
image combining barebox-dt-2nd.img and all the enabled device trees.

As this introduces a python3 and python3-libfdt dependency that wasn't
there before, this is only built by default if the relevant CONFIG
option is enabled or if the target is explicitly built.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/user/barebox.rst |  25 +--
 Makefile                       |   5 +
 arch/Kconfig                   |  17 ++
 images/Makefile                |   9 +
 scripts/Kbuild.include         |   6 +
 scripts/Makefile.lib           |  17 ++
 scripts/make_fit.py            | 331 +++++++++++++++++++++++++++++++++
 7 files changed, 392 insertions(+), 18 deletions(-)
 create mode 100755 scripts/make_fit.py

diff --git a/Documentation/user/barebox.rst b/Documentation/user/barebox.rst
index c6969ae3de1d..338c2f5d03c0 100644
--- a/Documentation/user/barebox.rst
+++ b/Documentation/user/barebox.rst
@@ -215,20 +215,10 @@ For example:
   U-Boot: bootz $kernel_addr - $fdt_addr # On 32-bit ARM
   U-Boot: booti $kernel_addr - $fdt_addr # for other platforms
 
-Another option is to generate a FIT image containing the generic DT image and a
-matching device tree with ``mkimage``:
-
-.. code-block:: console
-
-  sh: mkimage --architecture arm \
-      --os linux \
-      --type kernel \
-      --fit auto \
-      --load-address $kernel_addr_r \
-      --compression none \
-      --image images/barebox-dt-2nd.img \
-      --device-tree arch/${ARCH}/dts/my-board.dtb \
-      barebox-dt-2nd.fit
+The barebox build can also generate a FIT image combining ``barebox-dt-2nd.img``
+and all enabled device trees. This image requires python3 and python3-libfdt
+and is thus only built by default if ``CONFIG_BOARD_GENERIC_FIT`` is enabled
+or the FIT image target is explicitly invoked: ``make barebox.fit``.
 
 This FIT image can then be loaded by U-Boot and executed just like a regular
 Linux kernel:
@@ -238,10 +228,9 @@ Linux kernel:
   U-Boot: tftp $fit_addr barebox-dt-2nd.fit
   U-Boot: bootm $fit_addr
 
-Make sure that the address in ``$fit_addr`` is different from the
-``$kernel_addr_r`` passed to ``mkimage`` as the load address of the Kernel
-image. Otherwise U-Boot may attempt to overwrite the FIT image with the barebox
-image contained within.
+The FIT image has a kernel type of ``kernel_noload``, instructing the bootloader
+to ignore the load address. The first stage bootloader must thus either support
+``kernel_noload`` or always ignore load addresses.
 
 For non-DT enabled-bootloaders or other architectures, often the normal barebox
 binaries can also be used as they are designed to be startable second stage
diff --git a/Makefile b/Makefile
index 81a89d1c0ad4..9a2fdf0c68d2 100644
--- a/Makefile
+++ b/Makefile
@@ -1005,6 +1005,9 @@ barebox: $(BAREBOX_LDS) $(BAREBOX_OBJS) $(kallsyms.o) FORCE
 	$(call if_changed_rule,barebox__)
 	$(Q)rm -f .old_version
 
+barebox.fit: images/barebox-$(CONFIG_ARCH_LINUX_NAME).fit
+	$(Q)ln -fsn $< $@
+
 barebox.srec: barebox
 	$(OBJCOPY) -O srec $< $@
 
@@ -1110,6 +1113,7 @@ include/generated/utsrelease.h: include/config/kernel.release FORCE
 
 ifneq ($(wildcard $(srctree)/arch/$(SRCARCH)/dts/),)
 dtstree := arch/$(SRCARCH)/dts
+export dtstree
 endif
 
 ifneq ($(dtstree),)
@@ -1319,6 +1323,7 @@ help:
 	@echo  '* barebox         - Build the barebox proper binary'
 ifdef CONFIG_PBL_IMAGE
 	@echo  '* images          - Build final prebootloader-prefixed images'
+	@echo  '* barebox.fit     - Build 2nd stage barebox with device trees FIT image'
 endif
 	@echo  '  dir/            - Build all files in dir and below'
 	@echo  '  dir/file.[ois]  - Build specified target only'
diff --git a/arch/Kconfig b/arch/Kconfig
index e1c08bcd7b99..aee5375dc70c 100644
--- a/arch/Kconfig
+++ b/arch/Kconfig
@@ -46,4 +46,21 @@ config BOARD_GENERIC_DT
 	  architecture and thus can be used anywhere that a Kernel image could be used.
 	  The image will be called images/barebox-dt-2nd.img
 
+config BOARD_GENERIC_FIT
+	depends on BOARD_GENERIC_DT
+	bool "Build generic device tree 2nd stage FIT image"
+	help
+	  This enables compilation of a generic FIT image that combines
+	  barebox-dt-2nd.img as well as all enabled device trees.
+	  This single image is the bootable from coreboot, barebox, or any other
+	  bootloader capable of booting a Linux kernel out of FIT images.
+	  The image will be called images/barebox-$(CONFIG_ARCH_LINUX_NAME).fit
+
+	  The image can be built manually, even without enabling this option
+	  by running make barebox.fit, which will create a barebox.fit symlink
+	  pointing at the built image.
+
+	  Note that this option requires python3 and its libfdt module to be
+	  installed on the build host.
+
 endmenu
diff --git a/images/Makefile b/images/Makefile
index e0e3e5c537cc..4e5cb693e40a 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -123,6 +123,10 @@ cmd_itb = $(CPP) $(dtc_cpp_flags) -x assembler-with-cpp -o $(dtc-tmp) \
 $(obj)/%.itb: $(obj)/%.its FORCE
 	$(call if_changed,itb)
 
+.SECONDEXPANSION:
+$(obj)/%.fit: $(obj)/$$(FILE_$$(@F)) $(dtstree)/dtbs-list FORCE
+	$(call if_changed,fit)
+
 $(obj)/piggy.o: $(obj)/barebox.z FORCE
 
 $(obj)/sha_sum.o: $(obj)/barebox.sha.bin FORCE
@@ -187,6 +191,11 @@ pblb-$(CONFIG_BOARD_GENERIC_DT) += start_dt_2nd
 FILE_barebox-dt-2nd.img = start_dt_2nd.pblb
 image-$(CONFIG_BOARD_GENERIC_DT) += barebox-dt-2nd.img
 
+fit-image = barebox-$(call remove_quotes,$(CONFIG_ARCH_LINUX_NAME)).fit
+FILE_$(fit-image) = barebox-dt-2nd.img
+image-$(CONFIG_BOARD_GENERIC_FIT) += $(fit-image)
+targets += $(fit-name)
+
 ifdef CONFIG_ARM
 pblb-$(CONFIG_PBL_SINGLE_IMAGE) += start_pbl
 FILE_barebox.img = start_pbl.pblb
diff --git a/scripts/Kbuild.include b/scripts/Kbuild.include
index 8c311b997e24..e905b5466371 100644
--- a/scripts/Kbuild.include
+++ b/scripts/Kbuild.include
@@ -60,6 +60,12 @@ escsq = $(subst $(squote),'\$(squote)',$1)
 # Quote a string to pass it to C files. foo => '"foo"'
 stringify = $(squote)$(quote)$1$(quote)$(squote)
 
+###
+# Remove the quotes in the argument
+define remove_quotes
+$(strip $(subst $(quote),,$(1)))
+endef
+
 ###
 # The path to Kbuild or Makefile. Kbuild has precedence over Makefile.
 kbuild-file = $(or $(wildcard $(src)/Kbuild),$(src)/Makefile)
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index 0dfb496777dd..4e8e1254833e 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -311,6 +311,23 @@ quiet_cmd_sha256bin ?= SHA-BIN $@
 quiet_cmd_sha256sum ?= SHA     $@
       cmd_sha256sum ?= sha256sum $2 > $@
 
+# Flat Image Tree (FIT)
+# This allows for packaging of barebox and all devicetrees files, using
+# compression.
+# ---------------------------------------------------------------------------
+
+MAKE_FIT := $(srctree)/scripts/make_fit.py
+
+# Use this to override the compression algorithm of the DTBs
+FIT_COMPRESSION ?= none
+
+quiet_cmd_fit = FIT     $@
+      cmd_fit = $(MAKE_FIT) -o $@ --arch $(CONFIG_ARCH_MKIMAGE_NAME) --os linux \
+		--name 'barebox-$(KERNELRELEASE)' \
+		$(if $(findstring 1,$(KBUILD_VERBOSE)),-v) \
+		$(if $(FIT_DECOMPOSE_DTBS),--decompose-dtbs) \
+		--dtb-compress $(FIT_COMPRESSION) -k $< @$(word 2,$^)
+
 # Decompressor for barebox proper binary when using PBL
 # ---------------------------------------------------------------------------
 
diff --git a/scripts/make_fit.py b/scripts/make_fit.py
new file mode 100755
index 000000000000..075b7c258ff2
--- /dev/null
+++ b/scripts/make_fit.py
@@ -0,0 +1,331 @@
+#!/usr/bin/env python3
+# SPDX-License-Identifier: GPL-2.0+
+#
+# Copyright 2024 Google LLC
+# Written by Simon Glass <sjg@chromium.org>
+#
+
+"""Build a FIT containing a lot of devicetree files
+
+Usage:
+    make_fit.py -A arm64 -n 'Linux-6.6' -O linux
+        -o arch/arm64/boot/image.fit -k /tmp/kern/arch/arm64/boot/image.itk
+        @arch/arm64/boot/dts/dtbs-list -E -c gzip
+
+Creates a FIT containing the supplied kernel and a set of devicetree files,
+either specified individually or listed in a file (with an '@' prefix).
+
+Use -E to generate an external FIT (where the data is placed after the
+FIT data structure). This allows parsing of the data without loading
+the entire FIT.
+
+Use -c to compress the data, using bzip2, gzip, lz4, lzma, lzo and
+zstd algorithms.
+
+Use -D to decompose "composite" DTBs into their base components and
+deduplicate the resulting base DTBs and DTB overlays. This requires the
+DTBs to be sourced from the kernel build directory, as the implementation
+looks at the .cmd files produced by the kernel build.
+
+The resulting FIT can be booted by bootloaders which support FIT, such
+as U-Boot, Linuxboot, Tianocore, etc.
+
+Note that this tool does not yet support adding a ramdisk / initrd.
+"""
+
+import argparse
+import collections
+import os
+import subprocess
+import sys
+import tempfile
+import time
+
+import libfdt
+
+
+# Tool extension and the name of the command-line tools
+CompTool = collections.namedtuple('CompTool', 'ext,tools')
+
+COMP_TOOLS = {
+    'bzip2': CompTool('.bz2', 'bzip2'),
+    'gzip': CompTool('.gz', 'pigz,gzip'),
+    'lz4': CompTool('.lz4', 'lz4'),
+    'lzma': CompTool('.lzma', 'lzma'),
+    'lzo': CompTool('.lzo', 'lzop'),
+    'zstd': CompTool('.zstd', 'zstd'),
+}
+
+
+def parse_args():
+    """Parse the program ArgumentParser
+
+    Returns:
+        Namespace object containing the arguments
+    """
+    epilog = 'Build a FIT from a directory tree containing .dtb files'
+    parser = argparse.ArgumentParser(epilog=epilog, fromfile_prefix_chars='@')
+    parser.add_argument('-A', '--arch', type=str, required=True,
+          help='Specifies the architecture')
+    parser.add_argument('--dtb-compress', type=str, default='none',
+          help='Specifies the compression of the DTBs')
+    parser.add_argument('-D', '--decompose-dtbs', action='store_true',
+          help='Decompose composite DTBs into base DTB and overlays')
+    parser.add_argument('-E', '--external', action='store_true',
+          help='Convert the FIT to use external data')
+    parser.add_argument('-n', '--name', type=str, required=True,
+          help='Specifies the name')
+    parser.add_argument('-o', '--output', type=str, required=True,
+          help='Specifies the output file (.fit)')
+    parser.add_argument('-O', '--os', type=str, required=True,
+          help='Specifies the operating system')
+    parser.add_argument('-k', '--kernel', type=str, required=True,
+          help='Specifies the (uncompressed) kernel input file (.itk)')
+    parser.add_argument('-v', '--verbose', action='store_true',
+                        help='Enable verbose output')
+    parser.add_argument('dtbs', type=str, nargs='*',
+          help='Specifies the devicetree files to process')
+
+    return parser.parse_args()
+
+
+def setup_fit(fsw, name):
+    """Make a start on writing the FIT
+
+    Outputs the root properties and the 'images' node
+
+    Args:
+        fsw (libfdt.FdtSw): Object to use for writing
+        name (str): Name of kernel image
+    """
+    fsw.INC_SIZE = 65536
+    fsw.finish_reservemap()
+    fsw.begin_node('')
+    fsw.property_string('description', f'{name} with devicetree set')
+    fsw.property_u32('#address-cells', 1)
+
+    fsw.property_u32('timestamp', int(time.time()))
+    fsw.begin_node('images')
+
+
+def write_kernel(fsw, data, args):
+    """Write out the kernel image
+
+    Writes a kernel node along with the required properties
+
+    Args:
+        fsw (libfdt.FdtSw): Object to use for writing
+        data (bytes): Data to write (possibly compressed)
+        args (Namespace): Contains necessary strings:
+            arch: FIT architecture, e.g. 'arm64'
+            fit_os: Operating Systems, e.g. 'linux'
+            name: Name of OS, e.g. 'Linux-6.6.0-rc7'
+            compress: Compression algorithm to use, e.g. 'gzip'
+    """
+    with fsw.add_node('kernel'):
+        fsw.property_string('description', args.name)
+        fsw.property_string('type', 'kernel_noload')
+        fsw.property_string('arch', args.arch)
+        fsw.property_string('os', args.os)
+        fsw.property_string('compression', 'none')
+        fsw.property('data', data)
+        fsw.property_u32('load', 0)
+        fsw.property_u32('entry', 0)
+
+
+def finish_fit(fsw, entries):
+    """Finish the FIT ready for use
+
+    Writes the /configurations node and subnodes
+
+    Args:
+        fsw (libfdt.FdtSw): Object to use for writing
+        entries (list of tuple): List of configurations:
+            str: Description of model
+            str: Compatible stringlist
+    """
+    fsw.end_node()
+    seq = 0
+    with fsw.add_node('configurations'):
+        for model, compat, files in entries:
+            seq += 1
+            with fsw.add_node(f'conf-{seq}'):
+                fsw.property('compatible', bytes(compat))
+                fsw.property_string('description', model)
+                fsw.property('fdt', bytes(''.join(f'fdt-{x}\x00' for x in files), "ascii"))
+                fsw.property_string('kernel', 'kernel')
+    fsw.end_node()
+
+
+def compress_data(inf, compress):
+    """Compress data using a selected algorithm
+
+    Args:
+        inf (IOBase): Filename containing the data to compress
+        compress (str): Compression algorithm, e.g. 'gzip'
+
+    Return:
+        bytes: Compressed data
+    """
+    if compress == 'none':
+        return inf.read()
+
+    comp = COMP_TOOLS.get(compress)
+    if not comp:
+        raise ValueError(f"Unknown compression algorithm '{compress}'")
+
+    with tempfile.NamedTemporaryFile() as comp_fname:
+        with open(comp_fname.name, 'wb') as outf:
+            done = False
+            for tool in comp.tools.split(','):
+                try:
+                    subprocess.call([tool, '-c'], stdin=inf, stdout=outf)
+                    done = True
+                    break
+                except FileNotFoundError:
+                    pass
+            if not done:
+                raise ValueError(f'Missing tool(s): {comp.tools}\n')
+            with open(comp_fname.name, 'rb') as compf:
+                comp_data = compf.read()
+    return comp_data
+
+
+def output_dtb(fsw, seq, fname, arch, compress):
+    """Write out a single devicetree to the FIT
+
+    Args:
+        fsw (libfdt.FdtSw): Object to use for writing
+        seq (int): Sequence number (1 for first)
+        fname (str): Filename containing the DTB
+        arch: FIT architecture, e.g. 'arm64'
+        compress (str): Compressed algorithm, e.g. 'gzip'
+    """
+    with fsw.add_node(f'fdt-{seq}'):
+        fsw.property_string('description', os.path.basename(fname))
+        fsw.property_string('type', 'flat_dt')
+        fsw.property_string('arch', arch)
+        fsw.property_string('compression', compress)
+
+        with open(fname, 'rb') as inf:
+            compressed = compress_data(inf, compress)
+        fsw.property('data', compressed)
+
+
+def process_dtb(fname, args):
+    """Process an input DTB, decomposing it if requested and is possible
+
+    Args:
+        fname (str): Filename containing the DTB
+        args (Namespace): Program arguments
+    Returns:
+        tuple:
+            str: Model name string
+            str: Root compatible string
+            files: list of filenames corresponding to the DTB
+    """
+    # Get the compatible / model information
+    with open(fname, 'rb') as inf:
+        data = inf.read()
+    fdt = libfdt.FdtRo(data)
+    model = fdt.getprop(0, 'model').as_str()
+    compat = fdt.getprop(0, 'compatible')
+
+    if args.decompose_dtbs:
+        # Check if the DTB needs to be decomposed
+        path, basename = os.path.split(fname)
+        cmd_fname = os.path.join(path, f'.{basename}.cmd')
+        with open(cmd_fname, 'r', encoding='ascii') as inf:
+            cmd = inf.read()
+
+        if 'scripts/dtc/fdtoverlay' in cmd:
+            # This depends on the structure of the composite DTB command
+            files = cmd.split()
+            files = files[files.index('-i') + 1:]
+        else:
+            files = [fname]
+    else:
+        files = [fname]
+
+    return (model, compat, files)
+
+def build_fit(args):
+    """Build the FIT from the provided files and arguments
+
+    Args:
+        args (Namespace): Program arguments
+
+    Returns:
+        tuple:
+            bytes: FIT data
+            int: Number of configurations generated
+            size: Total uncompressed size of data
+    """
+    seq = 0
+    size = 0
+    fsw = libfdt.FdtSw()
+    setup_fit(fsw, args.name)
+    entries = []
+    fdts = {}
+
+    # Handle the kernel
+    with open(args.kernel, 'rb') as inf:
+        comp_data = compress_data(inf, 'none')
+    size += os.path.getsize(args.kernel)
+    write_kernel(fsw, comp_data, args)
+
+    for fname in args.dtbs:
+        # Ignore non-DTB (*.dtb) files
+        if os.path.splitext(fname)[1] != '.dtb':
+            continue
+
+        (model, compat, files) = process_dtb(fname, args)
+
+        for fn in files:
+            if fn not in fdts:
+                seq += 1
+                size += os.path.getsize(fn)
+                output_dtb(fsw, seq, fn, args.arch, args.dtb_compress)
+                fdts[fn] = seq
+
+        files_seq = [fdts[fn] for fn in files]
+
+        entries.append([model, compat, files_seq])
+
+    finish_fit(fsw, entries)
+
+    # Include the kernel itself in the returned file count
+    return fsw.as_fdt().as_bytearray(), seq + 1, size
+
+
+def run_make_fit():
+    """Run the tool's main logic"""
+    args = parse_args()
+
+    out_data, count, size = build_fit(args)
+    with open(args.output, 'wb') as outf:
+        outf.write(out_data)
+
+    ext_fit_size = None
+    if args.external:
+        mkimage = os.environ.get('MKIMAGE', 'mkimage')
+        subprocess.check_call([mkimage, '-E', '-F', args.output],
+                              stdout=subprocess.DEVNULL)
+
+        with open(args.output, 'rb') as inf:
+            data = inf.read()
+        ext_fit = libfdt.FdtRo(data)
+        ext_fit_size = ext_fit.totalsize()
+
+    if args.verbose:
+        comp_size = len(out_data)
+        print(f'FIT size {comp_size:#x}/{comp_size / 1024 / 1024:.1f} MB',
+              end='')
+        if ext_fit_size:
+            print(f', header {ext_fit_size:#x}/{ext_fit_size / 1024:.1f} KB',
+                  end='')
+        print(f', {count} files, uncompressed {size / 1024 / 1024:.1f} MB')
+
+
+if __name__ == "__main__":
+    sys.exit(run_make_fit())
-- 
2.39.5



