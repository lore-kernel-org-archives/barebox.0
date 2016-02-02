Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.85 #2 (Red Hat Linux))
 id 1aQcGA-0006tc-00
 for barebox@lists.infradead.org; Tue, 02 Feb 2016 14:48:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  2 Feb 2016 15:48:10 +0100
Message-Id: <1454424497-7157-28-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1454424497-7157-1-git-send-email-s.hauer@pengutronix.de>
References: <1454424497-7157-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 27/34] scripts: imx: Generate signed images with imx-image
To: Barebox List <barebox@lists.infradead.org>

The imx-image tool can now generate signed images itself, so we can
switch to this mechanism:

- Move the CSF templates to header files which can be included by the
  flash config files
- remove images/Makefile.imxhabv4 which is no longer necessary.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 .../arm/mach-imx/include/mach/habv3-imx25-gencsf.h | 43 +++++++++++++++++++
 arch/arm/mach-imx/include/mach/habv4-imx6-gencsf.h | 44 ++++++++++++++++++++
 images/Makefile                                    |  1 -
 images/Makefile.imxhabv4                           | 48 ----------------------
 scripts/habv4/gencsf.sh                            | 47 ---------------------
 scripts/habv4/habv4-imx28.csf.in                   | 33 ---------------
 scripts/habv4/habv4-imx6.csf.in                    | 37 -----------------
 7 files changed, 87 insertions(+), 166 deletions(-)
 create mode 100644 arch/arm/mach-imx/include/mach/habv3-imx25-gencsf.h
 create mode 100644 arch/arm/mach-imx/include/mach/habv4-imx6-gencsf.h
 delete mode 100644 images/Makefile.imxhabv4
 delete mode 100755 scripts/habv4/gencsf.sh
 delete mode 100644 scripts/habv4/habv4-imx28.csf.in
 delete mode 100644 scripts/habv4/habv4-imx6.csf.in

diff --git a/arch/arm/mach-imx/include/mach/habv3-imx25-gencsf.h b/arch/arm/mach-imx/include/mach/habv3-imx25-gencsf.h
new file mode 100644
index 0000000..4b81d49
--- /dev/null
+++ b/arch/arm/mach-imx/include/mach/habv3-imx25-gencsf.h
@@ -0,0 +1,43 @@
+/*
+ * This snippet can be included from a i.MX flash header configuration
+ * file for generating signed images. The necessary keys/certificates
+ * are expected in these config variables:
+ *
+ * CONFIG_HABV3_SRK_PEM
+ * CONFIG_HABV3_SRK_PEM
+ * CONFIG_HABV3_IMG_CRT_PEM
+ */
+super_root_key CONFIG_HABV3_SRK_PEM
+
+hab [Header]
+hab Version = 3.0
+hab Security Configuration = Engineering
+hab Hash Algorithm = SHA256
+hab Engine = RTIC
+hab Certificate Format = WTLS
+hab Signature Format = PKCS1
+hab UID = Generic
+hab Code = 0x00
+
+hab [Install SRK]
+hab File = "not-used"
+
+hab [Install CSFK]
+hab File = CONFIG_HABV3_CSF_CRT_DER
+
+hab [Authenticate CSF]
+/* below is the command that unlock the access to the DryIce registers */
+
+hab [Write Data]
+hab Width = 4
+hab Address Data = 0x53FFC03C 0xCA693569
+
+hab [Install Key]
+hab Verification index = 1
+hab Target index = 2
+hab File = CONFIG_HABV3_IMG_CRT_DER
+
+hab [Authenticate Data]
+hab Verification index = 2
+
+hab_blocks
diff --git a/arch/arm/mach-imx/include/mach/habv4-imx6-gencsf.h b/arch/arm/mach-imx/include/mach/habv4-imx6-gencsf.h
new file mode 100644
index 0000000..1a143a8
--- /dev/null
+++ b/arch/arm/mach-imx/include/mach/habv4-imx6-gencsf.h
@@ -0,0 +1,44 @@
+/*
+ * This snippet can be included from a i.MX flash header configuration
+ * file for generating signed images. The necessary keys/certificates
+ * are expected in these config variables:
+ *
+ * CONFIG_HABV4_TABLE_BIN
+ * CONFIG_HABV4_CSF_CRT_PEM
+ * CONFIG_HABV4_IMG_CRT_PEM
+ */
+
+hab [Header]
+hab Version = 4.1
+hab Hash Algorithm = sha256
+hab Engine Configuration = 0
+hab Certificate Format = X509
+hab Signature Format = CMS
+hab Engine = CAAM
+
+hab [Install SRK]
+hab File = CONFIG_HABV4_TABLE_BIN
+hab # SRK index within SRK-Table 0..3
+hab Source index = 0
+
+hab [Install CSFK]
+hab File = CONFIG_HABV4_CSF_CRT_PEM
+
+hab [Authenticate CSF]
+
+hab [Unlock]
+hab Engine = CAAM
+hab Features = RNG
+
+hab [Install Key]
+/* verification key index in key store (0, 2...5) */
+hab Verification index = 0
+/* target key index in key store (2...5) */
+hab Target index = 2
+hab File = CONFIG_HABV4_IMG_CRT_PEM
+
+hab [Authenticate Data]
+/* verification key index in key store (2...5) */
+hab Verification index = 2
+
+hab_blocks
\ No newline at end of file
diff --git a/images/Makefile b/images/Makefile
index 6a44511..2422969 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -104,7 +104,6 @@ objboard = $(objtree)/arch/$(ARCH)/boards
 
 include $(srctree)/images/Makefile.am33xx
 include $(srctree)/images/Makefile.imx
-include $(srctree)/images/Makefile.imxhabv4
 include $(srctree)/images/Makefile.mvebu
 include $(srctree)/images/Makefile.mxs
 include $(srctree)/images/Makefile.omap3
diff --git a/images/Makefile.imxhabv4 b/images/Makefile.imxhabv4
deleted file mode 100644
index 9eb9538..0000000
--- a/images/Makefile.imxhabv4
+++ /dev/null
@@ -1,48 +0,0 @@
-# -*-makefile-*-
-#
-# barebox image generation Makefile for HABv4 images
-#
-
-# default csf templates
-havb4_imx6csf = $(srctree)/scripts/habv4/habv4-imx6.csf.in
-habv4_imx2csf = $(srctree)/scripts/habv4/habv4-imx28.csf.in
-
-# %.imximg.prep - Convert in i.MX image, with preparation for signature
-# ----------------------------------------------------------------
-quiet_cmd_imx_prep_image = IMX-PREP-IMG $@
-      cmd_imx_prep_image = $(CPP) $(imxcfg_cpp_flags) -o $(imximg-tmp) $(word 2,$^) ; \
-			   $< -o $@ -b -c $(imximg-tmp) -p -f $(word 3,$^)
-
-.SECONDEXPANSION:
-$(obj)/%.imximg.prep: $(objtree)/scripts/imx/imx-image $$(CFG_%.imximg) $(obj)/%
-	$(call if_changed,imx_prep_image)
-
-# %.habv4.csf - create Command Sequence File from template
-# ----------------------------------------------------------------
-quiet_cmd_csf = CSF     $@
-      cmd_csf = TABLE_BIN=$(CONFIG_HABV4_TABLE_BIN) \
-		CSF_CRT_PEM=$(CONFIG_HABV4_CSF_CRT_PEM) \
-		IMG_CRT_PEM=$(CONFIG_HABV4_IMG_CRT_PEM) \
-		$< -f $(word 2,$^) -c $(word 3,$^) -i $(word 4,$^) -o $@
-
-.SECONDEXPANSION:
-$(obj)/%.habv4.csf: $(srctree)/scripts/habv4/gencsf.sh $(obj)/%.prep $$(CFG_%) $$(CSF_%)
-	$(call if_changed,csf)
-
-# %.habv4.sig - create signature and pad to 0x2000
-# ----------------------------------------------------------------
-CST = cst
-quiet_cmd_habv4_sig = HAB4SIG $@
-      cmd_habv4_sig = $(CST) -o $(imximg-tmp) < $(word 2,$^) > /dev/null; \
-		      $(OBJCOPY) -I binary -O binary --pad-to 0x2000 --gap-fill=0x5a $(imximg-tmp) $@
-
-$(obj)/%.habv4.sig: $(obj)/%.prep $(obj)/%.habv4.csf
-	$(call if_changed,habv4_sig)
-
-# %.imximg.signed - concatenate bootloader and signature
-# ----------------------------------------------------------------
-quiet_cmd_cat = CAT     $@
-      cmd_cat = cat $^ > $@
-
-$(obj)/%.imximg.signed: $(obj)/%.imximg.prep $(obj)/%.imximg.habv4.sig
-	$(call if_changed,cat)
diff --git a/scripts/habv4/gencsf.sh b/scripts/habv4/gencsf.sh
deleted file mode 100755
index 2c1c34a..0000000
--- a/scripts/habv4/gencsf.sh
+++ /dev/null
@@ -1,47 +0,0 @@
-#!/bin/sh
-
-set -e
-
-while getopts "f:c:i:o:" opt; do
-    case $opt in
-	f)
-	    file=$OPTARG
-	    ;;
-	c)
-	    cfg=$OPTARG
-	    ;;
-	i)
-	    in=$OPTARG
-	    ;;
-	o)
-	    out=$OPTARG
-	    ;;
-	\?)
-	    echo "Invalid option: -$OPTARG" >&2
-	    exit 1
-	;;
-    esac
-done
-
-if [ ! -e $file -o ! -e $cfg -o ! -e $in ]; then
-    echo "file not found!"
-    exit 1
-fi
-
-#
-# extract and set as shell vars:
-# loadaddr=
-# dcdofs=
-#
-eval $(sed -n -e "s/^[[:space:]]*\(loadaddr\|dcdofs\)[[:space:]]*\(0x[0-9]*\)/\1=\2/p" $cfg)
-
-length=$(stat -c '%s' $file)
-
-sed -e "s:@TABLE_BIN@:$TABLE_BIN:" \
-    -e "s:@CSF_CRT_PEM@:$CSF_CRT_PEM:" \
-    -e "s:@IMG_CRT_PEM@:$IMG_CRT_PEM:" \
-    -e "s:@LOADADDR@:$loadaddr:" \
-    -e "s:@OFFSET@:0:" \
-    -e "s:@LENGTH@:$length:" \
-    -e "s:@FILE@:$file:" \
-    $in > $out
diff --git a/scripts/habv4/habv4-imx28.csf.in b/scripts/habv4/habv4-imx28.csf.in
deleted file mode 100644
index 5efd25b..0000000
--- a/scripts/habv4/habv4-imx28.csf.in
+++ /dev/null
@@ -1,33 +0,0 @@
-[Header]
-Version = 4.0
-Hash Algorithm = sha256
-Engine Configuration = 0
-Certificate Format = X509
-Signature Format = CMS
-Engine = DCP
-
-[Install SRK]
-File = "@TABLE_BIN@"
-# SRK index within SRK-Table 0..3
-Source index = 0
-
-[Install CSFK]
-File = "@CSF_CRT_PEM@"
-
-[Authenticate CSF]
-
-[Install Key]
-# verification key index in key store (0, 2...5)
-Verification index = 0
-# target key index in key store (2...5)
-Target index = 2
-File = "@IMG_CRT_PEM@"
-
-[Authenticate Data]
-# verification key index in key store (2...5)
-Verification index = 2
-# "starting load address in memory"
-# "starting offset within the source file"
-# "length (in bytes)"
-# "file (binary)"
-Blocks = @LOADADDR@ @OFFSET@ @LENGTH@ "@FILE@"
diff --git a/scripts/habv4/habv4-imx6.csf.in b/scripts/habv4/habv4-imx6.csf.in
deleted file mode 100644
index 11a5db9..0000000
--- a/scripts/habv4/habv4-imx6.csf.in
+++ /dev/null
@@ -1,37 +0,0 @@
-[Header]
-Version = 4.1
-Hash Algorithm = sha256
-Engine Configuration = 0
-Certificate Format = X509
-Signature Format = CMS
-Engine = CAAM
-
-[Install SRK]
-File = "@TABLE_BIN@"
-# SRK index within SRK-Table 0..3
-Source index = 0
-
-[Install CSFK]
-File = "@CSF_CRT_PEM@"
-
-[Authenticate CSF]
-
-[Unlock]
-Engine = CAAM
-Features = RNG
-
-[Install Key]
-# verification key index in key store (0, 2...5)
-Verification index = 0
-# target key index in key store (2...5)
-Target index = 2
-File = "@IMG_CRT_PEM@"
-
-[Authenticate Data]
-# verification key index in key store (2...5)
-Verification index = 2
-# "starting load address in memory"
-# "starting offset within the source file"
-# "length (in bytes)"
-# "file (binary)"
-Blocks = @LOADADDR@ @OFFSET@ @LENGTH@ "@FILE@"
-- 
2.7.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
