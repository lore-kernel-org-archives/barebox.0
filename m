Delivery-date: Mon, 06 Oct 2025 06:16:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v5cdu-004lql-34
	for lore@lore.pengutronix.de;
	Mon, 06 Oct 2025 06:16:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v5cdt-0002qI-IF
	for lore@pengutronix.de; Mon, 06 Oct 2025 06:16:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UXO6FDhvMNVSyl0BUWqEDa2P35eR6A4RSfgWqay7K10=; b=4u14DFbuqpicuMYfru0oGgp0ED
	Rezx41ADN7MHZBFFwJEJ/Ig20v/jgFdj+bVVXvE6pf7uIdmQmcA97apQgIDMeVy3R6WQBkr/YGfEo
	4ExatwyXswitXLaOyrsAZXA2k1j3+nudNvkAQw6UUJ8VRfxj8rYamFkJ35yOWQ4XJc5+n2iB27FRu
	GUYKamgpLRJZjeUmP0N8EfjyKRNQxfliLoSXYYPIGXpJ6uEFUJZNPy+LlcZU8DS5iIRjv0SGFYJjR
	V51QJyLkkpuJCflXZVwuhmbcQqRr+wEmZh7zOHWU9fd4Qh+wMJN7OcFWbc6tnVGmSk9i63A4Jg49g
	cmdzsQng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5cdD-0000000GuIp-02F0;
	Mon, 06 Oct 2025 04:15:27 +0000
Received: from mail-qt1-x832.google.com ([2607:f8b0:4864:20::832])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5cdA-0000000GuHf-3hvV
	for barebox@lists.infradead.org;
	Mon, 06 Oct 2025 04:15:25 +0000
Received: by mail-qt1-x832.google.com with SMTP id d75a77b69052e-4ddabf2ada5so71460961cf.1
        for <barebox@lists.infradead.org>; Sun, 05 Oct 2025 21:15:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759724124; x=1760328924; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UXO6FDhvMNVSyl0BUWqEDa2P35eR6A4RSfgWqay7K10=;
        b=lQSXkN7mXMuZLFvWwxcx/goOH5Wp4ynawpNUaymSu4BaW3HI1wyrXQ/Td5XKqvTkSy
         F/2oQCuWybe3rwHVaIcXENF71OQzaTy2XqoeljdU957Y3LupKTP77SXzzG9VEaeUtJgw
         IQug6rCxdebvtdIzvIK4/mIr+ldS+QZyLxMU9IMsfuFUIMu2aZpAcwOYuWP5JteLcl3E
         X08Ems1svRE5EnAN44bwnn+nkDrmw9z4woXJu2Ztltwi7qtuGnaBGLFl9++Y4OlWels0
         H+vXoWkOWRoDKF2Jqvpcvn4zIXpIjuh45t2DAAX/jBM6ZfxeBBexz9lvDas970+esKwl
         u0Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759724124; x=1760328924;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UXO6FDhvMNVSyl0BUWqEDa2P35eR6A4RSfgWqay7K10=;
        b=vnE/EMB/zXafWJXYtN8dz4KMRDAaiHHDyyIbrr8oWp6wwMWpd1TZIxt6VLYfrQQSmG
         /9p7AFutwVBaXiELmboFgyYc8CjYlyG4MEzkSkgSzMjbOcml53gXS1i7RhlMaJG71NbG
         wJmiOgOCNJjtSikt/f3EZBmjuOt1HFRMcddMQqKMDhtrOonus18sIRzTbOGWP8TrM7r8
         Bz5EvM6s16Pjo49ImGzhL/8t9U8ZAQR60930uVRuc8iYZq4OR7PGmxJ8/Z3uvSP1DU6Q
         1s1CT4kcwFptba6lBA1wX9msZfkGfbJMZPkhZCPsgXbmm15E31+uo1iAzhztBWgwp0PD
         306w==
X-Gm-Message-State: AOJu0YztV1CMnahniDhb73pufLRL5fmKvfu13rtoYOSZD6HObFmQiN5n
	Saddqc4bzHtPWKgvED3Ti0XOtngWdo+zpETr83yElJtL0ZRt88BxwID86mXr5A==
X-Gm-Gg: ASbGncvM0hGhWVPpyWtC14XWQ2uiIvL0TdRv1uHj5rrohpwDlS9xRLpnAq9gkvFyBBa
	KuiXr01sM8vS4xCoaWUTi3x7L1CJdRYn/zXd+V472ZtCWn9coAbnZ+z+PZtFqPfN7Ab44k8u0M+
	TUYu0E/Xzusrgej7d2mQHZt9zHmo5ND6V1cH45au+39NeZkw0syjdMLqD6PyP37bLDtbZOHHyPR
	kRaltFRHNt5ppyqEHGKOyeDLZSIl7QzK+6xiODlb5G9howqefPFh5fVJolPbaUd2Roj/QIgEm6d
	+f0j0h27nybeLOhMxbMKyk44OwJOa8cHgIXVRRQ+Lj1NM6Cl/UFykaODEr3JoJuf7sB4/IXBYNE
	UJQa5oZdgEyRaxXmVjz9wTFPpZtntLhYN61ueRH/D0VO22fmXf37HDWfMKACWsvt5hUub02kKEo
	E=
X-Google-Smtp-Source: AGHT+IETZc7OeB/tf7IPqCoJq8WdKWTUu0vmcWgCb1qeE4/ORmXj2PC1aqvT7Vlv8/WxRZu12IxBBQ==
X-Received: by 2002:a05:622a:1346:b0:4df:bab4:f710 with SMTP id d75a77b69052e-4e576b13f70mr154611221cf.25.1759724123688;
        Sun, 05 Oct 2025 21:15:23 -0700 (PDT)
Received: from Latitude-7490.ht.home ([2607:fa49:8c41:2600:1608:a712:ade2:2b30])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4e55cadcecdsm119506221cf.23.2025.10.05.21.15.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Oct 2025 21:15:23 -0700 (PDT)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org,
	Chali Anis <chalianis1@gmail.com>,
	Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon,  6 Oct 2025 00:15:07 -0400
Message-Id: <20251006041512.1360284-6-chalianis1@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251006041512.1360284-1-chalianis1@gmail.com>
References: <20251006041512.1360284-1-chalianis1@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251005_211524_949796_EF9208EB 
X-CRM114-Status: GOOD (  15.98  )
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
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 06/11] efi: payload: earlymem: allocate only the barebox needs in term of memory
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Chali Anis <chalianis1@gmail.com>

With TLSF now able to invoke a callback to request additional memory on
demand, limit early allocations to what barebox strictly requires and have
everything handled via the request callback. This ensures more deterministic
behavior and reduces the risk of OOM conditions.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
Signed-off-by: Chali Anis <chalianis1@gmail.com>
---
 common/tlsf_malloc.c       | 18 ++++++++++++++++++
 efi/payload/Kconfig        |  1 +
 efi/payload/early-mem.c    | 19 ++++---------------
 efi/payload/entry-multi.c  |  5 ++---
 efi/payload/entry-single.c |  5 ++---
 efi/payload/init.c         | 15 +++++++++++++++
 include/efi/efi-payload.h  |  2 +-
 include/malloc.h           |  1 +
 8 files changed, 44 insertions(+), 22 deletions(-)

diff --git a/common/tlsf_malloc.c b/common/tlsf_malloc.c
index 74089fe7f390..d3b665a2fc40 100644
--- a/common/tlsf_malloc.c
+++ b/common/tlsf_malloc.c
@@ -11,11 +11,14 @@
 #include <stdio.h>
 #include <module.h>
 #include <tlsf.h>
+#include <linux/sizes.h>
+#include <linux/log2.h>
 
 #include <linux/kasan.h>
 #include <linux/list.h>
 
 tlsf_t tlsf_mem_pool;
+static void (*malloc_request_store)(size_t bytes);
 
 struct pool_entry {
 	pool_t pool;
@@ -124,3 +127,18 @@ void *malloc_add_pool(void *mem, size_t bytes)
 
 	return (void *)new_pool;
 }
+
+static void tlsf_request_store(tlsf_t tlsf, size_t bytes)
+{
+	size_t size;
+
+	size = __roundup_pow_of_two(bytes + sizeof(struct pool_entry));
+
+	malloc_request_store(max_t(size_t, SZ_8M, size));
+}
+
+void malloc_register_store(void (*cb)(size_t bytes))
+{
+	malloc_request_store = cb;
+	tlsf_register_store(tlsf_mem_pool, tlsf_request_store);
+}
diff --git a/efi/payload/Kconfig b/efi/payload/Kconfig
index 9263d59de94a..a403acc81a93 100644
--- a/efi/payload/Kconfig
+++ b/efi/payload/Kconfig
@@ -15,6 +15,7 @@ config EFI_PAYLOAD
 	select BLOCK
 	select PARTITION_DISK
 	select HW_HAS_PCI
+	select MALLOC_TLSF
 
 config HAVE_EFI_STUB
 	bool
diff --git a/efi/payload/early-mem.c b/efi/payload/early-mem.c
index 0f79a8c30694..c5e94b33a756 100644
--- a/efi/payload/early-mem.c
+++ b/efi/payload/early-mem.c
@@ -6,28 +6,17 @@
 #include <efi/efi-payload.h>
 
 void *efi_earlymem_alloc(const struct efi_system_table *sys_table,
-			 size_t *memsize, enum efi_memory_type mem_type)
+			 size_t memsize, enum efi_memory_type mem_type)
 {
 	struct efi_boot_services *bs = sys_table->boottime;
-	enum efi_allocate_type alloc_type = EFI_ALLOCATE_ANY_PAGES;
 	efi_physical_addr_t mem;
 	efi_status_t efiret;
 
-	if (IS_ENABLED(CONFIG_X86)) {
-		/* Try to stay clear of memory mapped devices */
-		alloc_type = EFI_ALLOCATE_MAX_ADDRESS;
-		mem = SZ_1G - 1;
-	}
-
-	for (*memsize = SZ_256M; *memsize >= SZ_8M; *memsize /= 2) {
-		efiret  = bs->allocate_pages(alloc_type, mem_type,
-					     *memsize / EFI_PAGE_SIZE, &mem);
-		if (!EFI_ERROR(efiret) || efiret != EFI_OUT_OF_RESOURCES)
-			break;
-	}
+	efiret  = bs->allocate_pages(EFI_ALLOCATE_ANY_PAGES, mem_type,
+					     memsize / EFI_PAGE_SIZE, &mem);
 	if (EFI_ERROR(efiret))
 		panic("failed to allocate %zu byte memory pool: 0x%lx\n",
-		      *memsize, efiret);
+		      memsize, efiret);
 
 	return efi_phys_to_virt(mem);
 }
diff --git a/efi/payload/entry-multi.c b/efi/payload/entry-multi.c
index d5d54cdf70a1..82f3dfffe870 100644
--- a/efi/payload/entry-multi.c
+++ b/efi/payload/entry-multi.c
@@ -23,7 +23,6 @@ static void efi_putc(void *ctx, int ch)
 
 void __efistub_efi_pe_entry(void *image, struct efi_system_table *sys_table)
 {
-	size_t memsize;
 	void *mem;
 	static struct barebox_efi_data efidata;
 
@@ -37,7 +36,7 @@ void __efistub_efi_pe_entry(void *image, struct efi_system_table *sys_table)
 
 	handoff_data_add(HANDOFF_DATA_EFI, &efidata, sizeof(efidata));
 
-	mem = efi_earlymem_alloc(sys_table, &memsize, EFI_LOADER_CODE);
+	mem = efi_earlymem_alloc(sys_table, SZ_16M, EFI_BOOT_SERVICES_CODE);
 
-	barebox_pbl_entry((uintptr_t)mem, memsize, NULL);
+	barebox_pbl_entry((uintptr_t)mem, SZ_16M, NULL);
 }
diff --git a/efi/payload/entry-single.c b/efi/payload/entry-single.c
index 8600bd845c49..f481d0942ba5 100644
--- a/efi/payload/entry-single.c
+++ b/efi/payload/entry-single.c
@@ -17,7 +17,6 @@
 void efi_main(efi_handle_t image, struct efi_system_table *sys_table)
 {
 	efi_status_t efiret;
-	size_t memsize;
 	void *mem;
 
 #ifdef DEBUG
@@ -37,9 +36,9 @@ void efi_main(efi_handle_t image, struct efi_system_table *sys_table)
 		BS->handle_protocol(efi_loaded_image->device_handle,
 				&efi_device_path_protocol_guid, (void **)&efi_device_path);
 
-	mem = efi_earlymem_alloc(sys_table, &memsize, EFI_LOADER_DATA);
+	mem = efi_earlymem_alloc(sys_table, SZ_16M, EFI_BOOT_SERVICES_DATA);
 
-	mem_malloc_init(mem, mem + memsize - 1);
+	mem_malloc_init(mem, mem + SZ_16M - 1);
 
 	start_barebox();
 }
diff --git a/efi/payload/init.c b/efi/payload/init.c
index 239c5ce9ec18..5b827c57ed1f 100644
--- a/efi/payload/init.c
+++ b/efi/payload/init.c
@@ -270,11 +270,26 @@ static int efi_init(void)
 }
 device_efi_initcall(efi_init);
 
+static void efi_request_mem(size_t bytes)
+{
+	efi_status_t efiret;
+	efi_physical_addr_t mem;
+	size_t pages;
+
+	pages = DIV_ROUND_UP(bytes, EFI_PAGE_SIZE);
+	efiret = BS->allocate_pages(EFI_ALLOCATE_ANY_PAGES, EFI_LOADER_DATA,
+				    pages, &mem);
+	if (!EFI_ERROR(efiret))
+		malloc_add_pool(efi_phys_to_virt(mem), pages * EFI_PAGE_SIZE);
+}
+
 static int efi_core_init(void)
 {
 	struct device *dev;
 	int ret;
 
+	malloc_register_store(efi_request_mem);
+
 	dev = device_alloc("efi-cs", DEVICE_ID_SINGLE);
 	ret = platform_device_register(dev);
 	if (ret)
diff --git a/include/efi/efi-payload.h b/include/efi/efi-payload.h
index d8e66a187a87..337471117d5a 100644
--- a/include/efi/efi-payload.h
+++ b/include/efi/efi-payload.h
@@ -32,7 +32,7 @@ int efi_set_variable(char *name, efi_guid_t *vendor, uint32_t attributes,
 int efi_set_variable_usec(char *name, efi_guid_t *vendor, uint64_t usec);
 
 void *efi_earlymem_alloc(const struct efi_system_table *sys_table,
-			 size_t *memsize, enum efi_memory_type mem_type);
+			 size_t memsize, enum efi_memory_type mem_type);
 
 int efi_initrd_register(void *initrd, size_t initrd_size);
 void efi_initrd_unregister(void);
diff --git a/include/malloc.h b/include/malloc.h
index 35551250324e..69ff23b4a058 100644
--- a/include/malloc.h
+++ b/include/malloc.h
@@ -23,6 +23,7 @@
 
 #ifdef CONFIG_MALLOC_TLSF
 void *malloc_add_pool(void *mem, size_t bytes);
+void malloc_register_store(void (*cb)(size_t bytes));
 #endif
 
 #if IN_PROPER
-- 
2.34.1



