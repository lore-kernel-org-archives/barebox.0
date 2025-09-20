Delivery-date: Sat, 20 Sep 2025 05:04:29 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uzntl-005500-0F
	for lore@lore.pengutronix.de;
	Sat, 20 Sep 2025 05:04:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uzntj-0005AU-NI
	for lore@pengutronix.de; Sat, 20 Sep 2025 05:04:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xqs54+VZzdxOKgc22yE9Q0YFFUsK4lqiAK3O66th0jY=; b=RimF0qkvw0HcynxD3KIqEaV06n
	meESHYnwYb+rV7pFmz2AD86PrMmCqQ9Up8StCIPV2uoogtPlvrTxPrQAvh7TVQo3m1DnG2N3qfJ57
	+gh8hgjNTzo2k89QfX7MrpK02nnNXHZecKreReQwmrJ26+uF3RVAUs2mtE6yq6CbH4NCoN7jDeFII
	AlLZsz6NiL+WT5MkI1g6vHSI/+yK9vfdIyAADluB/tafpo45qB28FDFu2vcz2TM4h38LnQdd/AkAz
	HF0ZG637GFGA+PADkHZjd35zZ/5nTqcA00WTXmOETZ6kLa/AocmbdmgI2IgKeTU1AZcB9v59f0vW4
	oDFcEJTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uznt8-00000004bys-0zO5;
	Sat, 20 Sep 2025 03:03:50 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uznt4-00000004bu9-3597
	for barebox@lists.infradead.org;
	Sat, 20 Sep 2025 03:03:47 +0000
Received: by mail-wr1-x435.google.com with SMTP id ffacd0b85a97d-3ed20bdfdffso2768549f8f.2
        for <barebox@lists.infradead.org>; Fri, 19 Sep 2025 20:03:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758337425; x=1758942225; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xqs54+VZzdxOKgc22yE9Q0YFFUsK4lqiAK3O66th0jY=;
        b=IKkkacNHkuHCVhnmZ08DQqYOrJXdhxZJOxYUkIOYM45kJ7ZUTO7KBau6e7b5kqdqrm
         hwNRX1yAZLql54rpnwfokt8fzYceRmwtvIPe+JM9MyJMqOIdprxe7xrsbv6aA/9VZQpd
         hHp1GTEJxM2blkPT8Nnc+mku0ALvC8V5IlB/xVsBPQbOpYIRZXJdOiaz51O58gAFdVoR
         4rWEUU/0idNiPGsXgFfg5hiZdDjcT0n7PIJFFazNxUZXL2D3ANMNZH7oRt3dnUbuiMk1
         +6MTLJHWHfrAgvm4mvIPp35NOm8KKpNo5RLP6MuWyxe0NufWHmx4tnMjgKZkTXqH/09W
         AtGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758337425; x=1758942225;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xqs54+VZzdxOKgc22yE9Q0YFFUsK4lqiAK3O66th0jY=;
        b=dE5TLESCjPBHJU3ioB+KBxuSYkb3vIOhhf7JT4MTez/iAiTv7NJfUKINoZOKQWuiHx
         6RHLOxSfuFIPgUM31Vb/6b1yBir2a0Qc5du4aZ+OX9ps2PkEVZZEn0joe4duX5r3Bumz
         9lXTeNhKEXxrnbpA50appzVYsuHLthjQ87HGdIJDsCjj8exv8ahtvu3BUhuSFIcLZ2y2
         bbBuv5cRCtdiwmalfEMosUtckNecPk8s7QsYjWK+K+trpmokTeFmh4+AFFoSmsvhKepl
         gCFypyg0SbYqR+g6d0eqYNqp+McZEdLPN78LlC5ByKsECFVO6aGiHG5SqqRLXXATb2bf
         9Dcg==
X-Forwarded-Encrypted: i=1; AJvYcCU3JCPiisRhxbkWEm2PtGWdJ/NK6Y3LNgcIkVkP+g0Jd6ptJGpSnkG0dFRB2mNkx9aFc5U75AY0@lists.infradead.org
X-Gm-Message-State: AOJu0Yxjf6VBHqW8vAZ1BC9g7WygooB19tJqAFPWjYLppSjzZtjzG/dn
	bz5WarjOmepKVoVhpda1A9WW+ZS7akIeYs+jn7+pUlpt+XP0GgkfSa3L
X-Gm-Gg: ASbGncvaz8QaRJA1f+KriVOFLwyKNEcrKwgIGNUjgX2T5A9DNtnO33pjXzCaowUeVaL
	1UWA6RafW3NM2vhy+8VaVg7TQLYtpBr2/pPSVMoHD2upMNhn1kY7GWrGwZSDgkntSvQG4bDKMun
	8Wv4qU8t2D4m8ltXiNwxpUu9XQHIOhWlZ9F6z+EfY0bH2iIQ2rmklJUMgxDTnVzMq/euFSfUVnR
	ArYF1i2EaBR5Q3Pxz9OccO28wOPuS66ytlmxgBUqLz9pJ/QMQzN3lEclHB572JnPObMQe/8AKHa
	gLupJNT8yAnXnFMBhD2RKxsMD9S+3rs+cecjWf/J1WY8vdwCc12RHEFG+GgPgjFQqtY3Zie7OL9
	CrkvJA1NAOrfL5Nxq5kj9wsI6fbAyebP0sdg1BtlWKJHed5TZrG3dEXYLeJsVOZlqCtoKTMPxEI
	euiZ0bOsVg
X-Google-Smtp-Source: AGHT+IEoLabsaVSbVrucbbu4Xu4tMsil5egAsT4ZM1+PQCoKaTQbNFUUvEvBs19mKkSpQZlpdmot9g==
X-Received: by 2002:a05:6000:230e:b0:3ed:e1d8:bd6f with SMTP id ffacd0b85a97d-3ee86b84781mr4175600f8f.60.1758337424763;
        Fri, 19 Sep 2025 20:03:44 -0700 (PDT)
Received: from [127.0.1.1] ([143.244.56.164])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-464f64ad359sm128118415e9.22.2025.09.19.20.03.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Sep 2025 20:03:44 -0700 (PDT)
From: Chali Anis <chalianis1@gmail.com>
Date: Fri, 19 Sep 2025 23:03:20 -0400
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250919-efi-loader-v1-11-dd8cdafb9067@gmail.com>
References: <20250919-efi-loader-v1-0-dd8cdafb9067@gmail.com>
In-Reply-To: <20250919-efi-loader-v1-0-dd8cdafb9067@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Chali Anis <chalianis1@gmail.com>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250919_200346_829715_60F1BCDD 
X-CRM114-Status: GOOD (  20.22  )
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
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 11/15] malloc: tlsf: efi: add a fallback for allocate more
 memory when we are in efi.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

this will fix the OOM issues for when barebox is running on top of efi.
the OOM were unpredictble since we can't determine the size required in
advance for initrd or kernel. with this patch we don't need anymore to
increase memory in efi early mem, we allocate only what barebox needs
to relocate itself and have what it needs to manage peripherls, at any
OOM we fallback to efi to give us more memory. So we get a more
deterministic behaviour and more generic efi payload and finally
a huge speedup for the boot time. and the most important a clean code.

Signed-off-by: Chali Anis <chalianis1@gmail.com>
---
 common/Kconfig       |  9 ++++++
 common/Makefile      |  1 +
 common/efi_malloc.c  | 80 ++++++++++++++++++++++++++++++++++++++++++++++++++++
 common/tlsf_malloc.c | 22 +++++++++++++--
 include/malloc.h     | 19 +++++++++++++
 5 files changed, 129 insertions(+), 2 deletions(-)

diff --git a/common/Kconfig b/common/Kconfig
index eb2fb1da1e0919b6e7d5e868c48ad2e195cd8aa8..5e2251ff7821f14556b19816a51eb8d7e9133a6f 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -317,6 +317,15 @@ config EXPERIMENTAL
 	bool
 	prompt "Prompt for experimental code"
 
+config MALLOC_EFI
+	bool "efi malloc fallback"
+	depends on EFI_PAYLOAD
+	help
+	  select this option to use efi malloc fallback, it will permit,
+	  when we use barebox as an efi payload to automaticlly allocate
+	  more memory from efi as needed, permits to be more resilient with
+	  OOM and support what ever we have to boot or execute as efi app.
+
 choice
 	prompt "malloc implementation"
 	default MALLOC_TLSF
diff --git a/common/Makefile b/common/Makefile
index d501a6a2755a113fac3ac632806d4a92b741d6e2..aa693b4c31b66aecb76192579466972fb8c351b3 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -53,6 +53,7 @@ obj-$(CONFIG_KALLSYMS)		+= kallsyms.o
 obj-$(CONFIG_MALLOC_TLSF)	+= tlsf_malloc.o tlsf.o calloc.o
 KASAN_SANITIZE_tlsf.o := n
 obj-$(CONFIG_MALLOC_DUMMY)	+= dummy_malloc.o calloc.o
+obj-$(CONFIG_MALLOC_EFI)  	+= efi_malloc.o
 obj-y				+= malloc.o
 obj-$(CONFIG_MEMINFO)		+= meminfo.o
 obj-$(CONFIG_MENU)		+= menu.o
diff --git a/common/efi_malloc.c b/common/efi_malloc.c
new file mode 100644
index 0000000000000000000000000000000000000000..fcd97794f2d6e08d41acd9f2a4d4fc0252b6caf2
--- /dev/null
+++ b/common/efi_malloc.c
@@ -0,0 +1,80 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (C) 2013 Sascha Hauer <s.hauer@pengutronix.de>
+ */
+#include <linux/sizes.h>
+#include <common.h>
+#include <malloc.h>
+#include <efi.h>
+#include <efi/efi-util.h>
+#include <string.h>
+#include <errno.h>
+
+struct alloc_header {
+	size_t size; /* requested size */
+};
+
+void *efi_malloc(size_t size)
+{
+	efi_status_t efiret;
+	efi_physical_addr_t mem;
+	struct alloc_header *hdr;
+	size_t pages;
+
+	if (!size)
+		return ZERO_SIZE_PTR;
+
+	pages = DIV_ROUND_UP(size, EFI_PAGE_SIZE);
+	efiret = BS->allocate_pages(EFI_ALLOCATE_ANY_PAGES, EFI_LOADER_DATA,
+				    pages, &mem);
+	if (EFI_ERROR(efiret)) {
+		errno = efi_errno(efiret);
+		return NULL;
+	}
+
+	hdr = (struct alloc_header *)efi_phys_to_virt(mem);
+	hdr->size = size;
+	return (void *)(hdr + 1);
+}
+
+void efi_free(void *ptr)
+{
+	efi_physical_addr_t phys;
+	struct alloc_header *hdr;
+
+	if (!ptr)
+		return;
+
+	hdr = (struct alloc_header *)ptr - 1;
+	phys = efi_virt_to_phys(hdr);
+	BS->free_pages(phys, DIV_ROUND_UP(hdr->size, EFI_PAGE_SIZE));
+}
+
+void *efi_realloc(void *ptr, size_t size)
+{
+	struct alloc_header *hdr;
+	void *n_mem;
+	size_t old_sz;
+
+	if (!ptr)
+		return efi_malloc(size);
+
+	if (!size) {
+		efi_free(ptr);
+		return NULL;
+	}
+
+	hdr = (struct alloc_header *)ptr - 1;
+	old_sz = hdr->size;
+
+	n_mem = efi_malloc(size);
+	if (!n_mem) {
+		errno = ENOMEM;
+		return NULL;
+	}
+
+	memcpy(n_mem, ptr, (old_sz < size) ? old_sz : size);
+	efi_free(ptr);
+
+	return n_mem;
+}
diff --git a/common/tlsf_malloc.c b/common/tlsf_malloc.c
index 6e9d48af26bbf05573fda04f616412c895342593..25ae40e455528a318fc150dba4ea7bc2ce27f3e3 100644
--- a/common/tlsf_malloc.c
+++ b/common/tlsf_malloc.c
@@ -6,6 +6,8 @@
  */
 
 #include <malloc.h>
+#include <efi.h>
+#include <memory.h>
 #include <string.h>
 
 #include <stdio.h>
@@ -29,8 +31,12 @@ void *malloc(size_t bytes)
 	void *mem;
 
 	mem = tlsf_malloc(tlsf_mem_pool, bytes);
-	if (!mem)
+	if (!mem) {
+		if (IS_ENABLED(CONFIG_MALLOC_EFI))
+			return efi_malloc(bytes);
+
 		errno = ENOMEM;
+	}
 
 	return mem;
 }
@@ -38,6 +44,14 @@ EXPORT_SYMBOL(malloc);
 
 void free(void *mem)
 {
+	if (IS_ENABLED(CONFIG_MALLOC_EFI)) {
+		if (efi_virt_to_phys(mem) < mem_malloc_start() &&
+			efi_virt_to_phys(mem) > mem_malloc_end()) {
+			efi_free(mem);
+			return;
+		}
+	}
+
 	tlsf_free(tlsf_mem_pool, mem);
 }
 EXPORT_SYMBOL(free);
@@ -51,8 +65,12 @@ EXPORT_SYMBOL(malloc_usable_size);
 void *realloc(void *oldmem, size_t bytes)
 {
 	void *mem = tlsf_realloc(tlsf_mem_pool, oldmem, bytes);
-	if (!mem)
+	if (!mem) {
+		if (IS_ENABLED(CONFIG_MALLOC_EFI))
+			return efi_realloc(oldmem, bytes);
+
 		errno = ENOMEM;
+	}
 
 	return mem;
 }
diff --git a/include/malloc.h b/include/malloc.h
index 35551250324ee1d3c8ddc06f49a06ce07d2855bd..2294d129838829955ffc08c5ecb9df91d05073c9 100644
--- a/include/malloc.h
+++ b/include/malloc.h
@@ -24,6 +24,25 @@
 #ifdef CONFIG_MALLOC_TLSF
 void *malloc_add_pool(void *mem, size_t bytes);
 #endif
+void *efi_malloc(size_t size);
+void efi_free(void *ptr);
+void *efi_realloc(void *ptr, size_t size);
+#ifdef MALLOC_EFI
+static inline void *efi_malloc(size_t size)
+{
+	errno = -ENOMEM;
+	return NULL;
+}
+
+static inline void efi_free(void *ptr) {}
+
+static inline void *efi_realloc(void *ptr, size_t size)
+{
+	errno = -ENOMEM;
+	return NULL;
+}
+#else
+#endif
 
 #if IN_PROPER
 void *malloc(size_t) __alloc_size(1);

-- 
2.34.1



