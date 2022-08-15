Delivery-date: Mon, 15 Aug 2022 15:12:10 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNZt2-006Sbk-ED
	for lore@lore.pengutronix.de; Mon, 15 Aug 2022 15:12:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNZt2-0004ak-O3
	for lore@pengutronix.de; Mon, 15 Aug 2022 15:12:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+9iXsi5Zmtlu4xOzqkuKa8p4PmXHIuHj+2ZrHNyHzx8=; b=tMHR+5YoB+1gtnl9MzvPKwDabE
	hYdU+nasnFX8z21BkRlHBoGCpJY0wNeGdzpXETMudUVdSYZe2UtMACbWoJGWW8Ch2OH+6wpqd/qqz
	QHuoPzGXGa4JNTtWlUZUE+XIk94WnqxaXpc1vpikbEQ2fA4fVnKq+dHriKdum8quSnWfsc1qDX3mZ
	UZnbSFm8ddHJBuse2rLcOVKP6f9R0bzmAhI89O8J4mxepuzsQ9fZdtuL35RoxmL3oYbaRahFILHbh
	BKWbOc0ZIwkWAjqMD88u3+gb+QW7Rn6IUozENl41cw37m/rVzOOooahEr45M39xmQFl1IFMF8cnGv
	8yhR0O8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNZrO-00GZzn-UJ; Mon, 15 Aug 2022 13:10:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNZqy-00GZeN-8k
	for barebox@lists.infradead.org; Mon, 15 Aug 2022 13:10:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oNZqx-0003xA-2O; Mon, 15 Aug 2022 15:09:59 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oNZqt-003viX-Ab; Mon, 15 Aug 2022 15:09:57 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oNZqu-009mr6-QP; Mon, 15 Aug 2022 15:09:56 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 15 Aug 2022 15:09:55 +0200
Message-Id: <20220815130955.2332697-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220815130955.2332697-1-a.fatoum@pengutronix.de>
References: <20220815130955.2332697-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220815_061000_812404_D815E12A 
X-CRM114-Status: GOOD (  20.49  )
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
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 3/3] firmware: add external firmware PBL support
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
in transit. We can't include the OP-TEE binary in barebox proper,
because we need to install it in EL3, but barebox proper on the i.MX8M
runs as BL33 in a lower exception level.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/lib/pbl.lds.S | 11 +++++++++++
 firmware/Makefile      | 37 ++++++++++++++++++++++++++++++++++++-
 include/firmware.h     | 31 +++++++++++++++++++++++++++++++
 3 files changed, 78 insertions(+), 1 deletion(-)

diff --git a/arch/arm/lib/pbl.lds.S b/arch/arm/lib/pbl.lds.S
index e77b3220fcb0..87d9b297f0dc 100644
--- a/arch/arm/lib/pbl.lds.S
+++ b/arch/arm/lib/pbl.lds.S
@@ -62,6 +62,10 @@ SECTIONS
 	}
 	__shasum_end = .;
 
+	.pblext_shasum : {
+		KEEP(*(.pblext_shasum.*))
+	}
+
 	.rel_dyn_start : { *(.__rel_dyn_start) }
 #ifdef CONFIG_CPU_32
 	.rel.dyn : { *(.rel*) }
@@ -101,6 +105,13 @@ SECTIONS
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
index 87bd033f6e5c..eb8b59a3b1aa 100644
--- a/firmware/Makefile
+++ b/firmware/Makefile
@@ -51,16 +51,51 @@ filechk_fwbin = { \
 $(obj)/%.gen.S: FORCE
 	$(call filechk,fwbin)
 
+FWEXTNAME    = $(patsubst $(obj)/%.extgen.S,%,$@)
+FWEXTSTR     = $(subst /,_,$(subst .,_,$(subst -,_,$(FWEXTNAME))))
+
+filechk_fwextbin = { \
+	echo "/* Generated by $(src)/Makefile */"		;\
+	echo "    .section .pblext.$(FWEXTSTR)",\"a\"		;\
+	echo "    .p2align $(ASM_ALIGN)"			;\
+	echo ".global _fwext_$(FWEXTSTR)_start"			;\
+	echo "_fwext_$(FWEXTSTR)_start:"			;\
+	echo "    .incbin \"$(fwdir)/$(FWEXTNAME)\""		;\
+	echo ".global _fwext_$(FWEXTSTR)_end"			;\
+	echo "_fwext_$(FWEXTSTR)_end:"				;\
+	echo "    .section .pblext_shasum.$(FWEXTSTR), \"a\""	;\
+	echo "    .p2align $(ASM_ALIGN)"			;\
+	echo ".global _fwext_$(FWEXTSTR)_sha_start"		;\
+	echo "_fwext_$(FWEXTSTR)_sha_start:"			;\
+	echo "    .incbin \"$(objdir)/firmware/$(FWEXTNAME).sha.bin\""	;\
+	echo ".global _fwext_$(FWEXTSTR)_sha_end"		;\
+	echo "_fwext_$(FWEXTSTR)_sha_end:"			;\
+}
+
+$(obj)/%.extgen.S: $(obj)/%.sha.bin FORCE
+	$(call filechk,fwextbin)
+
+$(obj)/%.sha.bin: $(obj)/%.sum FORCE
+	$(call if_changed,sha256bin)
+
+$(obj)/%.sum: $(obj)/% FORCE
+	$(call if_changed,sha256sum)
+
+clean-files += *.sha.bin *.sum
+
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
index 2583342230ae..b96726bd4416 100644
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
@@ -57,6 +60,16 @@ static inline void firmware_set_searchpath(const char *path)
 
 void firmwaremgr_list_handlers(void);
 
+static inline void firmware_ext_verify(const void *data_start, size_t data_size,
+				       const void *hash_start, size_t hash_size)
+{
+	if (pbl_barebox_verify(data_start, data_size,
+			       hash_start, hash_size) != 0) {
+		putc_ll('!');
+		panic("hash mismatch, refusing to decompress");
+	}
+}
+
 #define get_builtin_firmware(name, start, size) \
 	{							\
 		extern char _fw_##name##_start[];		\
@@ -65,4 +78,22 @@ void firmwaremgr_list_handlers(void);
 		*size = _fw_##name##_end - _fw_##name##_start;	\
 	}
 
+#define get_builtin_firmware_ext(name, base, start, size)		\
+	{								\
+		extern char _fwext_##name##_start[];			\
+		extern char _fwext_##name##_end[];			\
+		extern char _fwext_##name##_sha_start[];		\
+		extern char _fwext_##name##_sha_end[];			\
+		long offset = (long)bl33 - (long)_text;			\
+		*start = (typeof(*start)) _fwext_##name##_start;	\
+		*size = _fwext_##name##_end - _fwext_##name##_start;	\
+		*start += offset;					\
+		firmware_ext_verify(					\
+			*start, *size,					\
+			_fwext_##name##_sha_start,			\
+			_fwext_##name##_sha_end -			\
+			_fwext_##name##_sha_start			\
+		);							\
+	}
+
 #endif /* FIRMWARE_H */
-- 
2.30.2



