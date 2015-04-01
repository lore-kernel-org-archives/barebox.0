Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YdOUW-00042s-AT
 for barebox@lists.infradead.org; Wed, 01 Apr 2015 19:39:58 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Wed,  1 Apr 2015 21:39:29 +0200
Message-Id: <1427917169-27278-1-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1427904855-32548-10-git-send-email-mkl@pengutronix.de>
References: <1427904855-32548-10-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH v2] images: add HABv4 support for i.MX6
To: barebox@lists.infradead.org

This patch adds high assurance boot support (HABv4) image generation to
barebox, currently tested on i.MX6 only.

In order to build a singed barebox image, add a new image target to
images/Makefile.imx as illustrated in the diff below:

- - - a/images/Makefile.imx
+ + + b/images/Makefile.imx
@@ -163,10 +163,14 @@ image-$(CONFIG_MACH_SABRELITE) += barebox-freescale-imx6dl-sabrelite.img
 pblx-$(CONFIG_MACH_SABRESD) += start_imx6q_sabresd
 CFG_start_imx6q_sabresd.pblx.imximg = $(board)/freescale-mx6-sabresd/flash-header-mx6-sabresd.imxcfg
 FILE_barebox-freescale-imx6q-sabresd.img = start_imx6q_sabresd.pblx.imximg
 image-$(CONFIG_MACH_SABRESD) += barebox-freescale-imx6q-sabresd.img

+CSF_start_imx6q_sabresd.pblx.imximg = $(havb4_imx6csf)
+FILE_barebox-freescale-imx6q-sabresd-signed.img = start_imx6q_sabresd.pblx.imximg.signed
+image-$(CONFIG_MACH_SABRESD) += barebox-freescale-imx6q-sabresd-signed.img
+

Here the defaut i.MX6 CSF file $(havb4_imx6csf) is used, it's generated during
build on from the template "scripts/habv4/habv4-imx6.csf.in". You can configure
the paths to the SRK table and certificates via: System Type -> i.MX specific
settings -> HABv4 support.

The proprietary tool "cst" by Freescale tool is expected in the PATH.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
This time with a harmless patch description, so that it's not confused with the
real patch.

 arch/arm/mach-imx/Kconfig        | 39 ++++++++++++++++++++++++++++++++
 images/.gitignore                |  2 ++
 images/Makefile                  |  1 +
 images/Makefile.habv4            | 48 ++++++++++++++++++++++++++++++++++++++++
 scripts/habv4/gencsf.sh          | 47 +++++++++++++++++++++++++++++++++++++++
 scripts/habv4/habv4-imx28.csf.in | 28 +++++++++++++++++++++++
 scripts/habv4/habv4-imx6.csf.in  | 37 +++++++++++++++++++++++++++++++
 7 files changed, 202 insertions(+)
 create mode 100644 images/Makefile.habv4
 create mode 100755 scripts/habv4/gencsf.sh
 create mode 100644 scripts/habv4/habv4-imx28.csf.in
 create mode 100644 scripts/habv4/habv4-imx6.csf.in

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 477207e646cd..f896b86d357d 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -676,6 +676,45 @@ config IMX_OCOTP_WRITE
 		mw -l -d /dev/imx-ocotp 0x8C 0x00001234
 		mw -l -d /dev/imx-ocotp 0x88 0x56789ABC
 
+config HABV4
+	tristate "HABv4 support"
+	help
+	  High Assurance Boot, as found on i.MX28/i.MX6.
+
+if HABV4
+
+config HABV4_TABLE_BIN
+	string "Path to SRK table"
+	default "../crts/SRK_1_2_3_4_table.bin"
+	help
+	  Path to the Super Root Key (SRK) table, produced by the
+	  Freescale Code Signing Tool (cst).
+
+	  This file will be inserted into to Command Sequence File
+	  (CSF) when using the CSF template that comes with barebox.
+
+config HABV4_CSF_CRT_PEM
+	string "Path to CSF certificate"
+	default "../crts/CSF1_1_sha256_4096_65537_v3_usr_crt.pem"
+	help
+	  Path to the Command Sequence File (CSF) certificate, produced by the
+	  Freescale Public Key Infrastructure (PKI) script.
+
+	  This file will be inserted into to Command Sequence File
+	  (CSF) when using the CSF template that comes with barebox.
+
+config HABV4_IMG_CRT_PEM
+	string "Path to IMG certificate"
+	default "../crts/IMG_1_sha256_4096_65537_v3_usr_crt.pem"
+	help
+	  Path to the Image certificate, produced by the Freescale
+	  Public Key Infrastructure (PKI) script.
+
+	  This file will be inserted into to Command Sequence File
+	  (CSF) when using the CSF template that comes with barebox.
+
+endif
+
 endmenu
 
 endif
diff --git a/images/.gitignore b/images/.gitignore
index c5377d9f6531..b5004fe48fd6 100644
--- a/images/.gitignore
+++ b/images/.gitignore
@@ -3,6 +3,8 @@
 *.pblb
 *.img
 *.imximg
+*.imximg.prep
+*.imximg.signed
 *.map
 *.src
 *.kwbimg
diff --git a/images/Makefile b/images/Makefile
index 7c3aaf762767..d670ce6df1e3 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -104,6 +104,7 @@ include $(srctree)/images/Makefile.rockchip
 include $(srctree)/images/Makefile.socfpga
 include $(srctree)/images/Makefile.tegra
 include $(srctree)/images/Makefile.mxs
+include $(srctree)/images/Makefile.habv4
 
 targets += $(image-y) pbl.lds barebox.x barebox.z
 targets += $(patsubst %,%.pblx,$(pblx-y))
diff --git a/images/Makefile.habv4 b/images/Makefile.habv4
new file mode 100644
index 000000000000..bb2fd3082639
--- /dev/null
+++ b/images/Makefile.habv4
@@ -0,0 +1,48 @@
+# -*-makefile-*-
+#
+# barebox image generation Makefile for HABv4 images
+#
+
+# default csf templates
+havb4_imx6csf = $(srctree)/scripts/habv4/habv4-imx6.csf.in
+habv4_imx2csf = $(srctree)/scripts/habv4/habv4-imx28.csf.in
+
+# %.imximg.prep - Convert in i.MX image, with preparation for signature
+# ----------------------------------------------------------------
+quiet_cmd_imx_prep_image = IMX-PREP-IMG $@
+      cmd_imx_prep_image = $(CPP) $(imxcfg_cpp_flags) -o $(imximg-tmp) $(word 2,$^) ; \
+			   $< -o $@ -b -c $(imximg-tmp) -p -f $(word 3,$^)
+
+.SECONDEXPANSION:
+$(obj)/%.imximg.prep: $(objtree)/scripts/imx/imx-image $$(CFG_%.imximg) $(obj)/%
+	$(call if_changed,imx_prep_image)
+
+# %.habv4.csf - create Command Sequence File from template
+# ----------------------------------------------------------------
+quiet_cmd_csf = CSF     $@
+      cmd_csf = TABLE_BIN=$(CONFIG_HABV4_TABLE_BIN) \
+		CSF_CRT_PEM=$(CONFIG_HABV4_CSF_CRT_PEM) \
+		IMG_CRT_PEM=$(CONFIG_HABV4_IMG_CRT_PEM) \
+		$< -f $(word 2,$^) -c $(word 3,$^) -i $(word 4,$^) -o $@
+
+.SECONDEXPANSION:
+$(obj)/%.habv4.csf: $(srctree)/scripts/habv4/gencsf.sh $(obj)/%.prep $$(CFG_%) $$(CSF_%)
+	$(call if_changed,csf)
+
+# %.habv4.sig - create signature and pad to 0x2000
+# ----------------------------------------------------------------
+CST = cst
+quiet_cmd_habv4_sig = HAB4SIG $@
+      cmd_habv4_sig = $(CST) -o $(imximg-tmp) < $(word 2,$^) > /dev/null; \
+		      $(OBJCOPY) -I binary -O binary --pad-to 0x2000 --gap-fill=0x5a $(imximg-tmp) $@
+
+$(obj)/%.habv4.sig: $(obj)/%.prep $(obj)/%.habv4.csf
+	$(call if_changed,habv4_sig)
+
+# %.imximg.singed - concatinate bootloader and signature
+# ----------------------------------------------------------------
+quiet_cmd_cat = CAT     $@
+      cmd_cat = cat $^ > $@
+
+$(obj)/%.imximg.signed: $(obj)/%.imximg.prep $(obj)/%.imximg.habv4.sig
+	$(call if_changed,cat)
diff --git a/scripts/habv4/gencsf.sh b/scripts/habv4/gencsf.sh
new file mode 100755
index 000000000000..2c1c34add43a
--- /dev/null
+++ b/scripts/habv4/gencsf.sh
@@ -0,0 +1,47 @@
+#!/bin/sh
+
+set -e
+
+while getopts "f:c:i:o:" opt; do
+    case $opt in
+	f)
+	    file=$OPTARG
+	    ;;
+	c)
+	    cfg=$OPTARG
+	    ;;
+	i)
+	    in=$OPTARG
+	    ;;
+	o)
+	    out=$OPTARG
+	    ;;
+	\?)
+	    echo "Invalid option: -$OPTARG" >&2
+	    exit 1
+	;;
+    esac
+done
+
+if [ ! -e $file -o ! -e $cfg -o ! -e $in ]; then
+    echo "file not found!"
+    exit 1
+fi
+
+#
+# extract and set as shell vars:
+# loadaddr=
+# dcdofs=
+#
+eval $(sed -n -e "s/^[[:space:]]*\(loadaddr\|dcdofs\)[[:space:]]*\(0x[0-9]*\)/\1=\2/p" $cfg)
+
+length=$(stat -c '%s' $file)
+
+sed -e "s:@TABLE_BIN@:$TABLE_BIN:" \
+    -e "s:@CSF_CRT_PEM@:$CSF_CRT_PEM:" \
+    -e "s:@IMG_CRT_PEM@:$IMG_CRT_PEM:" \
+    -e "s:@LOADADDR@:$loadaddr:" \
+    -e "s:@OFFSET@:0:" \
+    -e "s:@LENGTH@:$length:" \
+    -e "s:@FILE@:$file:" \
+    $in > $out
diff --git a/scripts/habv4/habv4-imx28.csf.in b/scripts/habv4/habv4-imx28.csf.in
new file mode 100644
index 000000000000..043602e09ba4
--- /dev/null
+++ b/scripts/habv4/habv4-imx28.csf.in
@@ -0,0 +1,28 @@
+[Header]
+Version = 4.0
+Hash Algorithm = sha256
+Engine Configuration = 0
+Certificate Format = X509
+Signature Format = CMS
+
+[Install SRK]
+File = "@TABLE_BIN@"
+Source index = 0
+
+[Install CSFK]
+File = "@CSF_CRT_PEM@"
+
+[Authenticate CSF]
+
+[Install Key]
+Verification index = 0
+Target index = 2
+File = "@IMG_CRT_PEM@"
+
+# Sign entire image
+# Blocks have the following definition:
+# Base address of the binary file, Offset, Length of block in bytes
+[Authenticate Data]
+Verification index = 2
+Engine = DCP
+Blocks = @LOADADDR@ @OFFSET@ @LENGTH@ "@FILE@"
diff --git a/scripts/habv4/habv4-imx6.csf.in b/scripts/habv4/habv4-imx6.csf.in
new file mode 100644
index 000000000000..11a5db94946c
--- /dev/null
+++ b/scripts/habv4/habv4-imx6.csf.in
@@ -0,0 +1,37 @@
+[Header]
+Version = 4.1
+Hash Algorithm = sha256
+Engine Configuration = 0
+Certificate Format = X509
+Signature Format = CMS
+Engine = CAAM
+
+[Install SRK]
+File = "@TABLE_BIN@"
+# SRK index within SRK-Table 0..3
+Source index = 0
+
+[Install CSFK]
+File = "@CSF_CRT_PEM@"
+
+[Authenticate CSF]
+
+[Unlock]
+Engine = CAAM
+Features = RNG
+
+[Install Key]
+# verification key index in key store (0, 2...5)
+Verification index = 0
+# target key index in key store (2...5)
+Target index = 2
+File = "@IMG_CRT_PEM@"
+
+[Authenticate Data]
+# verification key index in key store (2...5)
+Verification index = 2
+# "starting load address in memory"
+# "starting offset within the source file"
+# "length (in bytes)"
+# "file (binary)"
+Blocks = @LOADADDR@ @OFFSET@ @LENGTH@ "@FILE@"
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
