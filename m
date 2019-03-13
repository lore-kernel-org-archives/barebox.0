Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h40GD-0008Ej-02
 for barebox@lists.infradead.org; Wed, 13 Mar 2019 09:33:18 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 13 Mar 2019 10:32:31 +0100
Message-Id: <20190313093231.23990-1-s.hauer@pengutronix.de>
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
Subject: [RFC][PATCH] pbl multiimage: Allow to check image sizes
To: Barebox List <barebox@lists.infradead.org>

PBL images are often constrained in size by limitations exposed by
the SoCs SRAM size or partition sizes on the boot device. So far
we tried to configure these limits in Kconfig, but with PBL multi
images and thus different limitations for the different supported
images this no longer works. This patch has another approach for
it:

During build time make variables containing the relevant sizes for
each image are created. These are:

PBL_CODE_SIZE_$(symbol)
PBL_MEMORY_SIZE_$(symbol)
PBL_IMAGE_SIZE_$(symbol)

PBL_CODE_SIZE_$(symbol) contains the pure code size of the PBL, it
should be smaller than the available SRAM during boot. Normally the
PBL's bss segment also needs to be in the initial SRAM, for this
case PBL_MEMORY_SIZE_$(symbol) is the relevant variable.
PBL_IMAGE_SIZE_$(symbol) contains the full size of the PBL image
including the compressed payload (but without any image headers
created later by SoC specific image tools).

$(symbol) is a placeholder for the start symbol used for this PBL image,
thus for the i.MX53 QSB with entry start_imx53_loco

PBL_CODE_SIZE_start_imx53_loco

will be created. The images/Makefile.* can use these variables directly
to check sizes or specify the same variables with a "MAX_" prefix. So
when images/Makefile.imx specifies

MAX_PBL_CODE_SIZE_start_imx53_loco = 0x10000

then the build system will make sure that the PBL code for the QSB will
not get bigger than 64KiB.

Also included in this patch are the size restrictions for the i.MX8MQ
images as an example how to use this.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/lib/pbl.lds.S        |  6 ++++++
 arch/mips/lib/pbl.lds.S       |  5 +++++
 images/Makefile               | 32 ++++++++++++++++++++++++++++++++
 images/Makefile.imx           |  3 +++
 scripts/Makefile.lib          | 14 ++++++++++++--
 scripts/check_size            | 20 ++++++++++++++++++++
 scripts/extract_symbol_offset | 14 ++++++++++++++
 7 files changed, 92 insertions(+), 2 deletions(-)
 create mode 100755 scripts/check_size
 create mode 100755 scripts/extract_symbol_offset

diff --git a/arch/arm/lib/pbl.lds.S b/arch/arm/lib/pbl.lds.S
index 53c9ce0fe6..300671bb51 100644
--- a/arch/arm/lib/pbl.lds.S
+++ b/arch/arm/lib/pbl.lds.S
@@ -80,12 +80,16 @@ SECTIONS
 	.dynsym : { *(.dynsym) }
 	.__dynsym_end : { *(.__dynsym_end) }
 
+	pbl_code_size =  . - BASE;
+
 	. = ALIGN(4);
 	.__bss_start :  { *(.__bss_start) }
 	.bss : { *(.bss*) }
 	.__bss_stop :  { *(.__bss_stop) }
 	_end = .;
 
+	pbl_memory_size =  . - BASE;
+
 	. = ALIGN(4);
 	__piggydata_start = .;
 	.piggydata : {
@@ -95,6 +99,8 @@ SECTIONS
 
 	.image_end : { *(.__image_end) }
 
+	pbl_image_size =  . - BASE;
+
 	_barebox_image_size = __image_end - BASE;
 	_barebox_pbl_size = __bss_start - BASE;
 }
diff --git a/arch/mips/lib/pbl.lds.S b/arch/mips/lib/pbl.lds.S
index 1f0285dd6f..f1752ec720 100644
--- a/arch/mips/lib/pbl.lds.S
+++ b/arch/mips/lib/pbl.lds.S
@@ -38,6 +38,8 @@ SECTIONS
 	. = ALIGN(4);
 	.data : { *(.data*) }
 
+	pbl_code_size =  . - HEAD_TEXT_BASE;
+
 	. = ALIGN(4);
 	__piggydata_start = .;
 	.piggydata : {
@@ -45,9 +47,12 @@ SECTIONS
 	}
 	__piggydata_end = .;
 
+	pbl_image_size =  . - HEAD_TEXT_BASE;
+
 	. = ALIGN(4);
 	__bss_start = .;
 	.bss : { *(.bss*) }
 	__bss_stop = .;
+	pbl_memory_size =  . - HEAD_TEXT_BASE;
 	_end = .;
 }
diff --git a/images/Makefile b/images/Makefile
index 59b81f9b6d..c0ad500303 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -68,6 +68,38 @@ $(obj)/%.pblb: $(obj)/%.pbl FORCE
 	$(call if_changed,objcopy_bin,$(*F))
 	$(call cmd,check_file_size,$@,$(CONFIG_BAREBOX_MAX_IMAGE_SIZE))
 
+#
+# For each start symbol create three variables containing the
+# relevant sizes in the image:
+# PBL_CODE_SIZE_$(symbol)   - contains the pure code size of the image
+# PBL_MEMORY_SIZE_$(symbol) - contains the code size + bss size of the
+#                             image
+# PBL_IMAGE_SIZE_$(symbol)  - contains the full image size including the
+#                             compressed payload
+#
+	$(eval PBL_CODE_SIZE_$* = \
+		$(shell $(srctree)/scripts/extract_symbol_offset pbl_code_size $^))
+	$(eval PBL_MEMORY_SIZE_$*= \
+		$(shell $(srctree)/scripts/extract_symbol_offset pbl_memory_size $^))
+	$(eval PBL_IMAGE_SIZE_$*= \
+		$(shell $(srctree)/scripts/extract_symbol_offset pbl_image_size $^))
+
+#
+# if MAX_PBL_xxx_SIZE_$(symbol) is defined it contains the maximum size the
+# code/memory/image for this PBL may get. Check these values.
+#
+	$(if $(MAX_PBL_CODE_SIZE_$*), \
+		$(call cmd,check_size, $(PBL_CODE_SIZE_$*), $(MAX_PBL_CODE_SIZE_$*)) \
+	)
+
+	$(if $(MAX_PBL_MEMORY_SIZE_$*), \
+		$(call cmd,check_size, $(PBL_MEMORY_SIZE_$*), $(MAX_PBL_MEMORY_SIZE_$*)) \
+	)
+
+	$(if $(MAX_PBL_IMAGE_SIZE_$*), \
+		$(call cmd,check_size, $(PBL_IMAGE_SIZE_$*), $(MAX_PBL_IMAGE_SIZE_$*)) \
+	)
+
 $(obj)/%.s: $(obj)/% FORCE
 	$(call if_changed,disasm)
 
diff --git a/images/Makefile.imx b/images/Makefile.imx
index 6ceb76995b..c5b700da66 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -552,15 +552,18 @@ image-$(CONFIG_MACH_ZII_IMX7D_RPU2) += barebox-zii-imx7d-rpu2.img
 # ----------------------- i.MX8mq based boards --------------------------
 pblb-$(CONFIG_MACH_NXP_IMX8MQ_EVK) += start_nxp_imx8mq_evk
 CFG_start_nxp_imx8mq_evk.pblb.imximg = $(board)/nxp-imx8mq-evk/flash-header-imx8mq-evk.imxcfg
+MAX_PBL_MEMORY_SIZE_start_nxp_imx8mq_evk = 0x3f000
 FILE_barebox-nxp-imx8mq-evk.img = start_nxp_imx8mq_evk.pblb.imximg
 image-$(CONFIG_MACH_NXP_IMX8MQ_EVK) += barebox-nxp-imx8mq-evk.img
 
 pblb-$(CONFIG_MACH_ZII_IMX8MQ_DEV) += start_zii_imx8mq_dev
 CFG_start_zii_imx8mq_dev.pblb.imximg = $(board)/zii-imx8mq-dev/flash-header-zii-imx8mq-dev.imxcfg
+MAX_PBL_MEMORY_SIZE_start_zii_imx8mq_dev.pbl = 0x3f000
 FILE_barebox-zii-imx8mq-dev.img = start_zii_imx8mq_dev.pblb.imximg
 image-$(CONFIG_MACH_ZII_IMX8MQ_DEV) += barebox-zii-imx8mq-dev.img
 
 pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX8MQ) += start_phytec_phycore_imx8mq
 CFG_start_phytec_phycore_imx8mq.pblb.imximg = $(board)/phytec-som-imx8mq/flash-header-phycore-imx8mq.imxcfg
+MAX_PBL_MEMORY_SIZE_start_phytec_phycore_imx8mq.pbl = 0x3f000
 FILE_barebox-phytec-phycore-imx8mq.img = start_phytec_phycore_imx8mq.pblb.imximg
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX8MQ) += barebox-phytec-phycore-imx8mq.img
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index f5dcec4dcb..6a7f22f9b7 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -429,14 +429,24 @@ cmd_disasm = $(OBJDUMP) -d $< > $@
 quiet_cmd_ln = LN      $@
 cmd_ln = ln -sf $< $@
 
+quiet_cmd_check_size = CHKSIZE $2
+      cmd_check_size = set -e;						\
+	size=`printf "%d" $2`;						\
+	max_size=`printf "%d" $3`;					\
+	if [ $$size -gt $$max_size ] ;					\
+	then								\
+		echo "$@ size $$size > maximum size $$max_size" >&2;	\
+		exit 1 ;						\
+	fi;
+
 # Check size of a file
-quiet_cmd_check_file_size = CHKSIZE $2
+quiet_cmd_check_file_size = CHKFILESIZE $2
       cmd_check_file_size = set -e;					\
 	size=`stat -c%s $2`;						\
 	max_size=`printf "%d" $3`;					\
 	if [ $$size -gt $$max_size ] ;					\
 	then								\
-		echo "$@ size $$size > of the maximum size $$max_size" >&2;	\
+		echo "$@ size $$size > maximum size $$max_size" >&2;	\
 		exit 1 ;						\
 	fi;
 
diff --git a/scripts/check_size b/scripts/check_size
new file mode 100755
index 0000000000..54f02a63c5
--- /dev/null
+++ b/scripts/check_size
@@ -0,0 +1,20 @@
+#!/bin/bash
+
+symbol="$1"
+file="$2"
+max="$3"
+
+# extract symbol offset from file, remove leading zeros
+ofs=$(nm -t d $file | grep "$symbol" | cut -d ' ' -f1 | sed "s/^[0]*//")
+
+if [ -z "${ofs}" ]; then
+	echo "symbol $symbol not found in $file"
+	exit 1
+fi
+
+if [[ $ofs -gt $max ]]; then
+	echo "symbol $symbol (offset $ofs) in $file exceeds maximum offset $max"
+	exit 1
+fi
+
+exit 0
diff --git a/scripts/extract_symbol_offset b/scripts/extract_symbol_offset
new file mode 100755
index 0000000000..1a1260f526
--- /dev/null
+++ b/scripts/extract_symbol_offset
@@ -0,0 +1,14 @@
+#!/bin/bash
+
+symbol="$1"
+file="$2"
+
+# extract symbol offset from file, remove leading zeros
+ofs=$(nm -t d $file | grep "$symbol" | cut -d ' ' -f1 | sed "s/^[0]*//")
+
+if [ -z "${ofs}" ]; then
+	echo "symbol $symbol not found in $file"
+	exit 1
+fi
+
+echo $ofs
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
