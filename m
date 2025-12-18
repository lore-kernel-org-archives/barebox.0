Delivery-date: Thu, 18 Dec 2025 12:13:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWBwz-00Co1J-0w
	for lore@lore.pengutronix.de;
	Thu, 18 Dec 2025 12:13:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWBwx-0005o3-LM
	for lore@pengutronix.de; Thu, 18 Dec 2025 12:13:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7uFgOy/0JrZ27JpAjKXJOZiiYMhlGeDuU+WsDdGIYig=; b=KQRDQyN+QAiFonhEqMdr9zsTen
	+lFuIEmPnJXtmCtT6FbAKslycL+pkD/jRJF2j+F6QUeTsjzoW9LgmBZfRdJ6/9I6gsxGR/C0TFpE/
	k8puhTJV8INi0lT3OVD0eNaD390tDKw7jgFjQiUuEjFEBkZHBqcKltr8wrIRBYsJcdCGWsJ6XkdE/
	alVLlZEF9r7io6v9eUBACw7a697X2FT28Zig+UmHS6yBzjGj+8hmVYOgwBfOTscMTrhqL3RY2dzU/
	c0smk1CcQqmVd6acgwgy+JZHoY8D87YIdgILlF9DDMJTnv2Yg3xaQBQxGAHDnV1Gobsg9T63iGEdp
	2NvbHEiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWBwD-00000008IKK-0zsW;
	Thu, 18 Dec 2025 11:12:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWBw7-00000008IGA-2nib
	for barebox@lists.infradead.org;
	Thu, 18 Dec 2025 11:12:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWBw3-0005Np-OK; Thu, 18 Dec 2025 12:12:43 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWBw3-006Ggg-1g;
	Thu, 18 Dec 2025 12:12:43 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWBw3-0000000AVre-1mWR;
	Thu, 18 Dec 2025 12:12:43 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 18 Dec 2025 11:37:29 +0100
Message-ID: <20251218111242.1527495-10-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
References: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251218_031247_738875_F30F4A16 
X-CRM114-Status: GOOD (  16.57  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v1 09/54] ARM: lds: add EFI runtime service section
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Now that we have __efi_runtime* attributes, let's make sure all data and
code marked as such is consecutive, so the OS can reclaim most of the
barebox memory after ExitBootServices.

It's critical that the EFI runtime section doesn't have any references
to outside itself and the NOCROSSREFS_FROM introduced here helps with
that, but it doesn't catch all issues, e.g. __efi_runtime_data global
variables that are referenced through the GOT.

A workaround for that will be introduced in a later commit.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/lib32/barebox.lds.S      |  5 ++++
 arch/arm/lib64/barebox.lds.S      |  4 ++++
 common/memory.c                   | 36 +++++++++++++++++++++++++++-
 include/asm-generic/barebox.lds.h | 40 +++++++++++++++++++++++++++++++
 include/asm-generic/sections.h    | 10 ++++++++
 5 files changed, 94 insertions(+), 1 deletion(-)

diff --git a/arch/arm/lib32/barebox.lds.S b/arch/arm/lib32/barebox.lds.S
index ede6889991f1..2d08b95758b7 100644
--- a/arch/arm/lib32/barebox.lds.S
+++ b/arch/arm/lib32/barebox.lds.S
@@ -68,6 +68,9 @@ SECTIONS
 	BAREBOX_RELOCATION_TABLE
 
 	_edata = .;
+
+	BAREBOX_EFI_RUNTIME
+
 	.image_end : { *(.__image_end) }
 
 	. = ALIGN(4);
@@ -86,3 +89,5 @@ SECTIONS
 	_end = .;
 	_barebox_image_size = __bss_start;
 }
+
+NOCROSSREFS_FROM(.efi_runtime)
diff --git a/arch/arm/lib64/barebox.lds.S b/arch/arm/lib64/barebox.lds.S
index e2f1164c47f7..5ee5fbc3741e 100644
--- a/arch/arm/lib64/barebox.lds.S
+++ b/arch/arm/lib64/barebox.lds.S
@@ -44,6 +44,8 @@ SECTIONS
 
 	_edata = .;
 
+	BAREBOX_EFI_RUNTIME
+
 	.image_end : { *(.__image_end) }
 
 	. = ALIGN(4);
@@ -53,3 +55,5 @@ SECTIONS
 	_end = .;
 	_barebox_image_size = __bss_start;
 }
+
+NOCROSSREFS_FROM(.efi_runtime)
diff --git a/common/memory.c b/common/memory.c
index 0e07ba432053..2cd6d29a8f2b 100644
--- a/common/memory.c
+++ b/common/memory.c
@@ -7,6 +7,7 @@
 
 #include <common.h>
 #include <memory.h>
+#include <efi/mode.h>
 #include <of.h>
 #include <init.h>
 #include <linux/ioport.h>
@@ -112,6 +113,8 @@ struct resource *request_barebox_region(const char *name,
 
 static int mem_malloc_resource(void)
 {
+	__maybe_unused struct resource *res;
+	int ret = 0;
 #if !defined __SANDBOX__
 	/*
 	 * Normally it's a bug when one of these fails,
@@ -138,6 +141,37 @@ static int mem_malloc_resource(void)
 			(unsigned long)&_edata -
 			(unsigned long)&_sdata,
 			MEMATTRS_RW);
+#ifdef CONFIG_EFI_RUNTIME
+	if (!efi_is_payload()) {
+		/* We don't usually have much .rodata here, so we just
+		 * fold it into the text area, so we don't waste the
+		 * rest of the page
+		 */
+		res = request_barebox_region("barebox EFI runtime code",
+				(unsigned long)&__efi_runtime_text_start,
+				(unsigned long)&__efi_runtime_rodata_stop -
+				(unsigned long)&__efi_runtime_text_start,
+				MEMATTRS_RX);
+		if (res) {
+			res->runtime = true;
+			res->type = MEMTYPE_RUNTIME_SERVICES_CODE;
+		} else {
+			ret = -EBUSY;
+		}
+
+		res = request_barebox_region("barebox EFI runtime data",
+				(unsigned long)&__efi_runtime_data_start,
+				(unsigned long)&__efi_runtime_data_stop -
+				(unsigned long)&__efi_runtime_data_start,
+				MEMATTRS_RW);
+		if (res) {
+			res->runtime = true;
+			res->type = MEMTYPE_RUNTIME_SERVICES_DATA;
+		} else {
+			ret = -EBUSY;
+		}
+	}
+#endif
 	request_barebox_region("barebox bss",
 			(unsigned long)&__bss_start,
 			(unsigned long)&__bss_stop -
@@ -149,7 +183,7 @@ static int mem_malloc_resource(void)
 			     MEMTYPE_BOOT_SERVICES_DATA, MEMATTRS_RW);
 #endif
 
-	return 0;
+	return ret;
 }
 coredevice_initcall(mem_malloc_resource);
 
diff --git a/include/asm-generic/barebox.lds.h b/include/asm-generic/barebox.lds.h
index 2c0f4da9e5d4..092dbc6dffa6 100644
--- a/include/asm-generic/barebox.lds.h
+++ b/include/asm-generic/barebox.lds.h
@@ -155,6 +155,30 @@
 	BAREBOX_DEEP_PROBE			\
 	BAREBOX_FUZZ_TESTS
 
+#ifdef CONFIG_EFI_RUNTIME
+#define BAREBOX_EFI_RUNTIME			\
+	. = ALIGN(4096);			\
+	.efi_runtime : {			\
+		__efi_runtime_start = .;	\
+		__efi_runtime_text_start = .;	\
+		*(.efi_runtime.text*)		\
+		__efi_runtime_text_stop = .;	\
+		__efi_runtime_rodata_start = .;	\
+		*(.efi_runtime.rodata*)		\
+		__efi_runtime_rodata_stop = .;	\
+		. = ALIGN(4096);		\
+		__efi_runtime_data_start = .;	\
+		*(.efi_runtime.data*)		\
+		*(.efi_runtime.bss*)		\
+		__efi_runtime_data_stop = .;	\
+		__efi_runtime_stop = .;		\
+	}					\
+	. = ALIGN(4096);
+#else
+#define BAREBOX_EFI_RUNTIME
+#endif
+
+
 #if defined(CONFIG_ARCH_BAREBOX_MAX_BARE_INIT_SIZE) && \
 CONFIG_ARCH_BAREBOX_MAX_BARE_INIT_SIZE < CONFIG_BAREBOX_MAX_BARE_INIT_SIZE
 #define MAX_BARE_INIT_SIZE CONFIG_ARCH_BAREBOX_MAX_BARE_INIT_SIZE
@@ -187,3 +211,19 @@ CONFIG_ARCH_BAREBOX_MAX_PBL_SIZE < CONFIG_BAREBOX_MAX_PBL_SIZE
 #else
 #define READONLY
 #endif
+
+#ifdef CONFIG_IS_CLANG
+/* binutils implements this since v2.27 */
+#define NOCROSSREFS_TO(...)
+#endif
+
+#define NOCROSSREFS_FROM(sect) \
+	NOCROSSREFS_TO(.text sect) \
+	NOCROSSREFS_TO(.bss sect) \
+	NOCROSSREFS_TO(.rodata sect) \
+	NOCROSSREFS_TO(.data sect) \
+	NOCROSSREFS_TO(.bbenv sect) \
+	NOCROSSREFS_TO(.dynamic sect) \
+	NOCROSSREFS_TO(.got sect) \
+	NOCROSSREFS_TO(.rela sect) \
+	NOCROSSREFS_TO(.dynsym sect)
diff --git a/include/asm-generic/sections.h b/include/asm-generic/sections.h
index 35b0dd8cac1a..816e30341d82 100644
--- a/include/asm-generic/sections.h
+++ b/include/asm-generic/sections.h
@@ -10,6 +10,10 @@ extern char __start_rodata[], __end_rodata[];
 extern char __bss_start[], __bss_stop[];
 extern char _sdata[], _edata[];
 extern char __bare_init_start[], __bare_init_end[];
+extern char __efi_runtime_start[], __efi_runtime_stop[];
+extern char __efi_runtime_text_start[], __efi_runtime_text_stop[];
+extern char __efi_runtime_data_start[], __efi_runtime_data_stop[];
+extern char __efi_runtime_rodata_start[], __efi_runtime_rodata_stop[];
 extern char _end[];
 extern char __image_start[];
 extern char __image_end[];
@@ -39,4 +43,10 @@ static inline bool is_barebox_rodata(unsigned long addr)
 	       addr < (unsigned long)__end_rodata;
 }
 
+static inline bool in_barebox_efi_runtime(unsigned long addr)
+{
+	return addr >= (unsigned long)__efi_runtime_start &&
+	       addr < (unsigned long)__efi_runtime_stop;
+}
+
 #endif /* _ASM_GENERIC_SECTIONS_H_ */
-- 
2.47.3



