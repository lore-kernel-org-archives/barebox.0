Delivery-date: Thu, 18 Aug 2022 07:06:52 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oOXk5-002c8K-Df
	for lore@lore.pengutronix.de; Thu, 18 Aug 2022 07:06:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oOXk2-00070X-FV
	for lore@pengutronix.de; Thu, 18 Aug 2022 07:06:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WasBJINQcOIngEPMdGPKro4D2exMD7lOtdGYbmEYgqk=; b=cHRqT3EYrRnXCbSbBjB2P6IxjB
	gy8xy1dwLle56JPWDSgnqM1gZW3E2iEBMiGgBqq9g+pKq7H9EcQmE2fznzQKONTQxb1oG4tRPVTnj
	Kl10ta2lMxqm/SlqRyVRtZ9pNqfO87Yiy+l6YY3TXv0se3eMPUIVB6CnAQcJTQst+XsWC27TuenNJ
	kXtbkPaURyIlMTC87Q9O3Ofc7zD7k3jmejtxq66aOd2N3npmZY/3Y3j/qhZFgeJ6Q/BLZCdoSFQCc
	RYHsvgK52KdChQJZDEXIGrZnSSFLZQ15SVCN3M02nLMHl2sSa87BPwqHjZBYHGPgLg7BktIBrKa3C
	H3iF6LiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOXiK-00FLyW-W6; Thu, 18 Aug 2022 05:05:05 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOXiA-00FLn7-AE
	for barebox@lists.infradead.org; Thu, 18 Aug 2022 05:05:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oOXi5-0006TP-UP; Thu, 18 Aug 2022 07:04:49 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oOXi5-000S20-8I; Thu, 18 Aug 2022 07:04:49 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oOXi4-008hJE-34; Thu, 18 Aug 2022 07:04:48 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 18 Aug 2022 07:04:46 +0200
Message-Id: <20220818050447.2072932-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220818050447.2072932-1-a.fatoum@pengutronix.de>
References: <20220818050447.2072932-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220817_220454_573119_BDD7E6A5 
X-CRM114-Status: GOOD (  24.06  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 3/4] firmware: add external firmware PBL support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Normally, barebox embds firmware into the binary referencing it, which
means that device tree blobs, RAM training code and e.g. TF-A for i.MX8M
end up in the prebootloader, while, e.g. Freescale FMan microcode ends
up in barebox proper. The only exception so far was barebox proper:
When only the PBL fits in on-chip SRAM, barebox proper is chainloaded
from the boot medium. To avoid TOCTOU attack, it's read fully into DRAM
after setup and then a SHA256 is calculated and compared against the
hash embedded in barebox PBL, which in a secure boot system would be
trusted by virtue of the PBL as a whole being verified beforehand by
the BootROM.

Reuse this mechanism to support arbitrary firmware, which is now termed
external firmware. Such firmware is placed beyond the piggydata (barebox
proper) and only offset and hash are included in the prebootloader
image. The new get_builtin_firmware_ext() is used to retrieve this
external firmware after integrity verification with SHA256.

This enables referencing firmware blobs from PBL that would bloat the
size of the PBL beyond what can fit into on-chip SRAM, e.g. very big
OP-TEE binaries. As users of get_builtin_firmware() didn't have to worry
about TOCTOU so far, we panic when a firmware verification fails to
ensure that we never load an OP-TEE that has been modified in-transit
We can't include the OP-TEE binary in barebox proper, because we need
to install it in EL3, but barebox proper on the i.MX8M runs as BL33
in a lower exception level.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - removed section for SHA256 sum of external firmware. Now just placed
    into .rodata
  - instead of duplicating filechk_fwbin, parametrized it with two
    arguments, so it can be used for both internal and external firmware
  - defined fwobjdir to make line shorter. also using objtree instead of
    objdir
  - unified get_builtin_firmware and get_builtin_firmware_ext to both
    call into same underlying function (Sascha). We can use offset == 0
    check at compile-time to see that firmware is internal and skip
    SHA verification. For internal firmware, we do _not_ define _sha
    symbols. This ensures a link error will occur should the
    verification code not be optimized away for the internal firmware
    case. Original intention was to just compare sha sum _start and _end
    symbols, but this won't optimize away verification code, because we
    don't have link-time optimization enabled.
---
 arch/arm/lib/pbl.lds.S |  7 +++++++
 firmware/Makefile      | 38 ++++++++++++++++++++++++++++++++++----
 include/firmware.h     | 42 ++++++++++++++++++++++++++++++++++++------
 3 files changed, 77 insertions(+), 10 deletions(-)

diff --git a/arch/arm/lib/pbl.lds.S b/arch/arm/lib/pbl.lds.S
index e77b3220fcb0..44ad5b335356 100644
--- a/arch/arm/lib/pbl.lds.S
+++ b/arch/arm/lib/pbl.lds.S
@@ -101,6 +101,13 @@ SECTIONS
 	}
 	__piggydata_end = .;
 
+	. = ALIGN(4);
+	__pblext_start = .;
+	.pblext : {
+		*(.pblext.*)
+	}
+	__pblext_end = .;
+
 	.image_end : { KEEP(*(.__image_end)) }
 
 	pbl_image_size =  . - BASE;
diff --git a/firmware/Makefile b/firmware/Makefile
index 87bd033f6e5c..f6ff5b831be8 100644
--- a/firmware/Makefile
+++ b/firmware/Makefile
@@ -30,16 +30,17 @@ firmware-$(CONFIG_FIRMWARE_CCBV2_OPTEE) += ccbv2_optee.bin
 # leading /, it's relative to $(srctree).
 fwdir := $(subst $(quote),,$(CONFIG_EXTRA_FIRMWARE_DIR))
 fwdir := $(addprefix $(srctree)/,$(filter-out /%,$(fwdir)))$(filter /%,$(fwdir))
+fwobjdir := $(objtree)/firmware
 
 obj-pbl-y := $(addsuffix .gen.o, $(firmware-y))
 
-FWNAME    = $(patsubst $(obj)/%.gen.S,%,$@)
+FWNAME    = $(patsubst $(obj)/%.extgen.S,%,$(patsubst $(obj)/%.gen.S,%,$@))
 FWSTR     = $(subst /,_,$(subst .,_,$(subst -,_,$(FWNAME))))
 ASM_ALIGN = $(if $(CONFIG_64BIT),3,2)
 
 filechk_fwbin = { \
 	echo "/* Generated by $(src)/Makefile */"		;\
-	echo "    .section .rodata.$(FWSTR)"			;\
+	echo "    .section $2,\"$3\""				;\
 	echo "    .p2align $(ASM_ALIGN)"			;\
 	echo ".global _fw_$(FWSTR)_start"			;\
 	echo "_fw_$(FWSTR)_start:"				;\
@@ -48,19 +49,48 @@ filechk_fwbin = { \
 	echo "_fw_$(FWSTR)_end:"				;\
 }
 
+__fwbin_sha = { \
+	echo "    .section .rodata.$(FWSTR).sha"		;\
+	echo "    .p2align $(ASM_ALIGN)"			;\
+	echo ".global _fw_$(FWSTR)_sha_start"			;\
+	echo "_fw_$(FWSTR)_sha_start:"				;\
+	echo "    .incbin \"$(fwobjdir)/$(FWNAME).sha.bin\""	;\
+	echo ".global _fw_$(FWSTR)_sha_end"			;\
+	echo "_fw_$(FWSTR)_sha_end:"				;\
+}
+
+filechk_fwbin_ext = { \
+	$(filechk_fwbin)					;\
+	$(__fwbin_sha)						;\
+}
+
 $(obj)/%.gen.S: FORCE
-	$(call filechk,fwbin)
+	$(call filechk,fwbin,.rodata.$(FWSTR),)
+
+$(obj)/%.extgen.S: $(obj)/%.sha.bin FORCE
+	$(call filechk,fwbin_ext,.pblext.$(FWSTR),a)
+
+$(obj)/%.sha.bin: $(obj)/%.sum FORCE
+	$(call if_changed,sha256bin)
+
+$(obj)/%.sum: $(obj)/% FORCE
+	$(call if_changed,sha256sum)
+
+clean-files += *.sha.bin *.sum
 
 # The .o files depend on the binaries directly; the .S files don't.
 $(patsubst %,$(obj)/%.gen.o, $(obj-pbl-y)): $(obj)/%.gen.o: $(fwdir)/%
 
 # The same for pbl:
 $(patsubst %,$(obj)/%.gen.pbl.o, $(obj-pbl-y)): $(obj)/%.gen.pbl.o: $(fwdir)/%
+$(patsubst %,$(obj)/%.extgen.pbl.o, $(pbl-y)): $(obj)/%.extgen.pbl.o: $(fwdir)/%
 
-obj-pbl-y			 += $(patsubst %,%.gen.o, $(fw-external-y))
+pbl-y := $(addsuffix .extgen.o, $(fw-external-y))
 
 targets := $(patsubst $(obj)/%,%, \
                                 $(shell find $(obj) -name \*.gen.S 2>/dev/null))
+targets += $(patsubst $(obj)/%,%, \
+                                $(shell find $(obj) -name \*.extgen.S 2>/dev/null))
 
 # just to build a built-in.o. Otherwise compilation fails when no
 # firmware is built.
diff --git a/include/firmware.h b/include/firmware.h
index 2583342230ae..2cfaeb1e6a91 100644
--- a/include/firmware.h
+++ b/include/firmware.h
@@ -6,8 +6,11 @@
 #ifndef FIRMWARE_H
 #define FIRMWARE_H
 
+#include <pbl.h>
 #include <types.h>
 #include <driver.h>
+#include <debug_ll.h>
+#include <linux/kernel.h>
 
 struct firmware_handler {
 	char *id; /* unique identifier for this firmware device */
@@ -57,12 +60,39 @@ static inline void firmware_set_searchpath(const char *path)
 
 void firmwaremgr_list_handlers(void);
 
-#define get_builtin_firmware(name, start, size) \
-	{							\
-		extern char _fw_##name##_start[];		\
-		extern char _fw_##name##_end[];			\
-		*start = (typeof(*start)) _fw_##name##_start;	\
-		*size = _fw_##name##_end - _fw_##name##_start;	\
+static inline void firmware_ext_verify(const void *data_start, size_t data_size,
+				       const void *hash_start, size_t hash_size)
+{
+	if (pbl_barebox_verify(data_start, data_size,
+			       hash_start, hash_size) != 0) {
+		putc_ll('!');
+		panic("hash mismatch, refusing to decompress");
 	}
+}
+
+#define __get_builtin_firmware(name, offset, start, size)		\
+	do {								\
+		extern char _fw_##name##_start[];			\
+		extern char _fw_##name##_end[];				\
+		extern char _fw_##name##_sha_start[];			\
+		extern char _fw_##name##_sha_end[];			\
+		*start = (typeof(*start)) _fw_##name##_start;		\
+		*size = _fw_##name##_end - _fw_##name##_start;		\
+		if (!(offset))						\
+			break;						\
+		*start += (offset);					\
+		firmware_ext_verify(					\
+			*start, *size,					\
+			_fw_##name##_sha_start,				\
+			_fw_##name##_sha_end - _fw_##name##_sha_start	\
+		);							\
+	} while (0)
+
+
+#define get_builtin_firmware(name, start, size) \
+	__get_builtin_firmware(name, 0, start, size)
+
+#define get_builtin_firmware_ext(name, base, start, size)		\
+	__get_builtin_firmware(name, (long)base - (long)_text, start, size)
 
 #endif /* FIRMWARE_H */
-- 
2.30.2



