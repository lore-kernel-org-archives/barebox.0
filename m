Delivery-date: Mon, 16 Mar 2026 18:22:14 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2Bdu-001Vhe-0y
	for lore@lore.pengutronix.de;
	Mon, 16 Mar 2026 18:22:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2Bdt-0005M6-Cm
	for lore@pengutronix.de; Mon, 16 Mar 2026 18:22:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4QXOdYAXUIAxmPWTG/IS7lltFD+A/O8s2pNmDdtgTqo=; b=qP+0Wt4+EzDvE07Cu3CssYWttR
	8F+zrsgF5u7rgzyiNm+FBFDeA5RU1TKVQqgnQtvreY7UBBUM3hq68nffrIyGmf+GT6gzoe6wXQoAt
	yseykLUViKQIgb8ypPz9Z9OVSamTqYor2pJxPhyfobc6IGsvv2sMAywx7bl6jcQISCbVcT1yVDD9c
	x7U1Tgf7mYsCEXdG4u+ydRyP8vSDzUgsnFTFp2FhT/UU4rYizQnRnFzT7oxeO/H3/eY1mSkDzyMvP
	weaqJFAcZBeDn3TPbG+nutw4WNj4VQa4gTaD8zxzRORKqEfRP4i3dz9FY/4xgnCFPsoKWnEhDXCxW
	UhAMszeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2BdS-00000004YNQ-3CfJ;
	Mon, 16 Mar 2026 17:21:46 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2BdQ-00000004YLp-3dqk
	for barebox@bombadil.infradead.org;
	Mon, 16 Mar 2026 17:21:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=4QXOdYAXUIAxmPWTG/IS7lltFD+A/O8s2pNmDdtgTqo=; b=eSvQwsUf+m35gObShb/+ctlN2S
	xTywXXDCDphJwtiDv1Oa+7ynKr66p/XW4gPZZHcNiGzlh8zglbaKANyvWxVoOFZZ76DGHEy/ijuRy
	ZN++Wnzn1yL43U+jyHDNAPlEf4fIpicyHrYGZlT9dR1BLDvhefgddEO9cLXH+/uOKxk2PgO2QBISx
	NjKmzkE0lqfqLkhhd6o4rNCLqyt+vG8lGHY6Ae+o/E7DcL/S7zHnpJXHV8vn/r3IFceX9l6Jp0sXx
	gsYp2pQ/gsxXf3XIOsxEDzowSiba7f3Laeutjhpv8N9yWeIzHOjwyrzw5Zw7qqJBzKPPPVqwdmbwK
	WZ/l/2ZQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2BdN-00000007Jg4-2b6A
	for barebox@lists.infradead.org;
	Mon, 16 Mar 2026 17:21:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w2Bcz-0004fi-8h; Mon, 16 Mar 2026 18:21:17 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w2Bcy-000bi6-2W;
	Mon, 16 Mar 2026 18:21:16 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w2Bcy-0000000AaeX-2gT6;
	Mon, 16 Mar 2026 18:21:16 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 16 Mar 2026 18:21:19 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260316-compressed-firmware-v1-6-d9712142881e@pengutronix.de>
References: <20260316-compressed-firmware-v1-0-d9712142881e@pengutronix.de>
In-Reply-To: <20260316-compressed-firmware-v1-0-d9712142881e@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773681676; l=6265;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=1VVetibwH4B1q6SebPK1zLrBjO0kSVKouTd7bmPGoE4=;
 b=yDSeijyCV1kgtFGzOHn28WIJkpXifXCURgn+1pW3zgN9JlNoLJWFekbia1coqmbv+NGR5CGRY
 34hmXqbblj3D4w1PLx7pQ66wgf13UsqpYScgxX9FXHVymMgoR5niLJe
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260316_172141_846881_A082D78E 
X-CRM114-Status: GOOD (  15.86  )
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
Cc: Sascha Hauer <sascha@saschahauer.de>, "Claude Opus 4.6" <noreply@anthropic.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 6/9] firmware: Add compressed firmware symbols for PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Sascha Hauer <sascha@saschahauer.de>

Similar to how device trees get both compressed and uncompressed
symbols (__dtb_<name>_start vs __dtb_z_<name>_start), generate
compressed variants of firmware blobs for PBL use.

When a firmware binary exists, it is compressed using the configured
IMAGE_COMPRESSION algorithm and linked into a separate .fwz.rodata
section with _fw_z_<name>_start/_fw_z_<name>_end symbols. The
uncompressed size is available as _fw_z_<name>_uncompressed_size.

The compressed symbols are only available in PBL context
(guarded by __PBL__). A new get_builtin_firmware_compressed()
macro is provided for C consumers.

Co-Authored-By: Claude Opus 4.6 <noreply@anthropic.com>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 firmware/Makefile  | 18 +++++++++++++++---
 include/firmware.h | 12 ++++++++++++
 scripts/gen-fw-s   | 26 +++++++++++++++++++++++++-
 3 files changed, 52 insertions(+), 4 deletions(-)

diff --git a/firmware/Makefile b/firmware/Makefile
index b247db8da2..00412042b7 100644
--- a/firmware/Makefile
+++ b/firmware/Makefile
@@ -61,8 +61,8 @@ pbl-fwext-y := $(addsuffix .extgen.o, $(fw-external-y))
 
 FWNAME    = $(patsubst $(obj)/%.extgen.S,%,$(patsubst $(obj)/%.gen.S,%,$@))
 
-filechk_fwbin = $(srctree)/scripts/gen-fw-s $(FWNAME) $(FIRMWARE_DIR) .rodata
-filechk_fwbin_ext = $(srctree)/scripts/gen-fw-s $(FWNAME) $(FIRMWARE_DIR) .pblext a
+filechk_fwbin = $(srctree)/scripts/gen-fw-s $(FWNAME) $(FIRMWARE_DIR) .rodata '' $(fwobjdir)
+filechk_fwbin_ext = $(srctree)/scripts/gen-fw-s $(FWNAME) $(FIRMWARE_DIR) .pblext a $(fwobjdir)
 
 $(obj)/%.gen.S: FORCE
 	$(call filechk,fwbin)
@@ -70,6 +70,10 @@ $(obj)/%.gen.S: FORCE
 $(obj)/%.extgen.S: FORCE
 	$(call filechk,fwbin_ext)
 
+# Compress firmware files
+$(fwobjdir)/%.z: $(FIRMWARE_DIR)/% FORCE
+	$(call if_changed,$(suffix_y))
+
 # This dependency is used if missing firmware should fail the build immediately
 fwdep-required-y = $(FIRMWARE_DIR)/%
 # This dependency expands to nothing if the file doesn't exist. This allows
@@ -82,9 +86,15 @@ fwdep-required-y = $(FIRMWARE_DIR)/%
 # them to install all firmware for all platforms if only few are of interest.
 fwdep-required-n = $$(wildcard $(FIRMWARE_DIR)/%)
 
+# Compressed firmware dependency: only if the firmware binary exists.
+# Use $$* (stem) instead of % because % is not substituted inside $$(if ...).
+fwzdep-n = $$(if $$(wildcard $(FIRMWARE_DIR)/$$*),$(fwobjdir)/$$*.z)
+
 .SECONDEXPANSION:
+# .gen.S files depend on compressed firmware for correct size computation
+$(patsubst %.gen.o,$(obj)/%.gen.S, $(obj-pbl-y) $(pbl-y)): $(obj)/%.gen.S: $(fwzdep-n)
 # The .o files depend on the binaries directly if available; the .S files don't.
-$(patsubst %.gen.o,$(obj)/%.gen.pbl.o, $(obj-pbl-y) $(pbl-y)): $(obj)/%.gen.pbl.o: $(fwdep-required-n)
+$(patsubst %.gen.o,$(obj)/%.gen.pbl.o, $(obj-pbl-y) $(pbl-y)): $(obj)/%.gen.pbl.o: $(fwdep-required-n) $(fwzdep-n)
 $(patsubst %.extgen.o,$(obj)/%.extgen.pbl.o, $(pbl-fwext-y)): $(obj)/%.extgen.pbl.o: $(fwdep-required-n)
 # For barebox proper, firmware existance is either checked here
 # or in driver code by checking whether size != 0
@@ -96,6 +106,8 @@ targets := $(patsubst $(obj)/%,%, \
 	                        $(shell find $(obj) -name \*.gen.S 2>/dev/null))
 targets += $(patsubst $(obj)/%,%, \
 	                        $(shell find $(obj) -name \*.extgen.S 2>/dev/null))
+targets += $(patsubst $(obj)/%,%, \
+	                        $(shell find $(obj) -name \*.z 2>/dev/null))
 
 # just to build a built-in.o. Otherwise compilation fails when no
 # firmware is built.
diff --git a/include/firmware.h b/include/firmware.h
index 6609bdbc9e..2f75ded82b 100644
--- a/include/firmware.h
+++ b/include/firmware.h
@@ -92,6 +92,7 @@ static inline void firmware_ext_verify(const void *data_start, size_t data_size,
 
 struct fwobj {
 	size_t size;
+	size_t uncompressed_size;
 	void *data;
 };
 
@@ -120,6 +121,17 @@ struct fwobj {
 #define get_builtin_firmware_ext(name, base, fwobj)			\
 	__get_builtin_firmware(name, (long)base - (long)_text, fwobj)
 
+#define get_builtin_firmware_compressed(name, fwobj)			\
+	do {								\
+		extern char _fw_z_##name##_start[];			\
+		extern char _fw_z_##name##_end[];			\
+		extern unsigned long _fw_z_##name##_uncompressed_size;	\
+		(fwobj)->data = _fw_z_##name##_start;			\
+		(fwobj)->size = _fw_z_##name##_end - _fw_z_##name##_start;\
+		(fwobj)->uncompressed_size =				\
+			(size_t)_fw_z_##name##_uncompressed_size;	\
+	} while (0)
+
 static inline int firmware_next_image_check_sha256(const void *hash, bool verbose)
 {
 	extern char _fw_next_image_bin_sha_start[];
diff --git a/scripts/gen-fw-s b/scripts/gen-fw-s
index 653e6f013a..78c3193479 100755
--- a/scripts/gen-fw-s
+++ b/scripts/gen-fw-s
@@ -3,16 +3,22 @@
 #
 # Generate assembly source to embed firmware binary
 #
-# Usage: gen-fw-s <fwname> <fwdir> <secprefix> [secflags]
+# Usage: gen-fw-s <fwname> <fwdir> <secprefix> [secflags] [fwobjdir]
 
 fwname=$1
 fwdir=$2
 secprefix=$3
 secflags=$4
+fwobjdir=$5
 
 fwstr=$(echo "$fwname" | tr '/.-' '___')
 fwpath="$fwdir/$fwname"
 
+fw_uncompressed=0
+if [ -f "$fwpath" ]; then
+	fw_uncompressed=$(stat -c %s "$fwpath")
+fi
+
 sha=$(sha256sum "$fwpath" 2>/dev/null | sed 's/ .*$//;s/../0x&, /g;s/, $//')
 
 echo "/* Generated by scripts/gen-fw-s */"
@@ -35,6 +41,24 @@ fi
 echo ".global _fw_${fwstr}_end"
 echo "_fw_${fwstr}_end:"
 
+# include compressed firmware if exists, otherwise include a reference to
+# the firmware filename in the .missing_fw section
+echo "#if defined(__PBL__)"
+echo "    .section .fwz.rodata.${fwstr},\"a\""
+echo "    .p2align ASM_LGPTR"
+echo ".global _fw_z_${fwstr}_uncompressed_size"
+echo ".set _fw_z_${fwstr}_uncompressed_size, ${fw_uncompressed}"
+echo ".global _fw_z_${fwstr}_start"
+echo "_fw_z_${fwstr}_start:"
+if [ -f "$fwpath" ]; then
+	echo ".incbin \"${fwobjdir}/${fwname}.z\""
+else
+	echo "ASM_PTR _fwname_${fwstr}"
+fi
+echo ".global _fw_z_${fwstr}_end"
+echo "_fw_z_${fwstr}_end:"
+echo "#endif"
+
 # include sha256, needed for external firmware
 echo "    .section .rodata.${fwstr}.sha"
 echo "    .p2align ASM_LGPTR"

-- 
2.47.3



