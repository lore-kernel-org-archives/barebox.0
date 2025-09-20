Delivery-date: Sat, 20 Sep 2025 05:04:32 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uznto-005519-2R
	for lore@lore.pengutronix.de;
	Sat, 20 Sep 2025 05:04:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uzntn-0005DM-9W
	for lore@pengutronix.de; Sat, 20 Sep 2025 05:04:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Z67M24eSJLJZ7puPfWlQx6NB/pbb2Zbw0IC4181BsLg=; b=LdgE5qbCf/gluGuVYxePPdVcwR
	LUdjabZ8yIIOQiGJrEk5Wmf0+VHApTG4lPxDn14ubVo4MQRqiAFHuTMfiQ9piptsm60vGqS9RJ3YH
	l9HOI+HJpT00quTbCGgCxaht+RzxyNni3HgIQWMi/JV0Z/P45BHyX5kS4t6vah7vKskuEIWJNMZoD
	vE1MW7knhrbY8MuW00DM5RTLMA4wdOXU0G30RZwAAgAFkYu7VeC/0sFH3ld8v4Ixz9Ov3U4jL5vb4
	WFLW1RBKG8Ee9m36uNNUqWwZgrS9SxwGVKWY4XckkJB4fVDrI8yZksJyaWi6edm7NQQc/Naho6H+s
	quuIyY5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzntB-00000004c3d-0HG3;
	Sat, 20 Sep 2025 03:03:53 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uznt8-00000004bxr-0OxJ
	for barebox@lists.infradead.org;
	Sat, 20 Sep 2025 03:03:51 +0000
Received: by mail-wr1-x432.google.com with SMTP id ffacd0b85a97d-3ed20bdfdffso2768579f8f.2
        for <barebox@lists.infradead.org>; Fri, 19 Sep 2025 20:03:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758337428; x=1758942228; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Z67M24eSJLJZ7puPfWlQx6NB/pbb2Zbw0IC4181BsLg=;
        b=CBLgV8slWVTjW4bF39jlkG+zAWlpxGcWFRxZ3R+OuOrE7a/egnFcFF8Zcqz4IpkWlQ
         lTiX7UwMyUKI314WtoM5uw8Vf7VGJPczMvGU2OF41QNmFZnys6x9YmurgHfjydT+qQfY
         5o9EbKB+XZjJVleqNQJz7WSOq0jRvhJebY4QDM02A8Cs319OiiMhW91Nfr7+GYDOx7rO
         mpFSF7ItK09FLzPVDedoFG0aCpD2Y7fn5czjc9apuXyyZNgVgP9bDz/DYqCeUUlv1CI1
         RDvYQ/8DJak3ptE/6U8WFbni2Oo4dsqHzvnpcofRjOyA6XHvH2HJkQtru292EQr6Zi4S
         m6nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758337428; x=1758942228;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Z67M24eSJLJZ7puPfWlQx6NB/pbb2Zbw0IC4181BsLg=;
        b=o2LREj6lM6CQ90gbcqPKGg9zmPkyfMzqn0h/fjh8+/+48bYH/J9yUqRECg062wUM9A
         uMjpJyMoQ7Ro3aMmK+EzjkIW0kA9fLuI+0WEf7HbjLpddViKT9J5a1VRQIitOfNeuRfd
         CV+hfn9rykCU4YLrZ1NtTIgbHOmUDh+czRMdmQl4HpQ/UriqFtQPa5y5WdJMySJSCM3/
         1OXoxD/0QQTZu7A6FgsAKai+lUh653CrZzCcxy8fxQqPxXVyaBWjZtjNQohwgk1Tg7JV
         iegdwPnB4c3Y5/s20b9v6j/DPX3eBDQ4oyWX48JWR2EKLks4vkOHnmLAsizQMKv2U75+
         Qt7g==
X-Forwarded-Encrypted: i=1; AJvYcCWLYwvOLsY4sSTzdCeB7acRzSOeKkFg8Hi5SSwUo/UtU45XNGyr+qFKgAOBHlSAhKY9OxJi0X+u@lists.infradead.org
X-Gm-Message-State: AOJu0YwOvySTjWRrue7oFGWp57BcXpCCkSs7lTm36as/TSDcJfPjvm/N
	KkUkuTlYJ97WoQriY1/IbX8Ee8nazvAxwqyIaehkLg6gpYpfANFs0bqQEgPGsgnu
X-Gm-Gg: ASbGncuBG0NE6BGZf7yoOAyfiIQo4qzbvpJK3Sv8mDaX8ywuPvlNDAY9x25SduG1+JQ
	Ibs7JI0/8PPLn007S27TkCLbw2+oeVSTxcRa3DsdeH2ZKqEo4118N32wKihuIhXJKsw9EYMUg5K
	cLVno2CQOc/T6oQaKg4V43v88LXTj07Ots+N531sHhtSBSbWkaBNpOVNnvpzJVnSGgIZaKi0hME
	uLIW0UqNIvGVmNA21wuK34ww4XcBsNxv9oBlZA1z16l1BI5aWk+GdhEpRPcE0IL2+70YhKdHlAS
	fjK91O25Qw1sLRflX/djxtVi1CupA0aBldbU+Ngq0XIvEGh3i68BddKn9dg672RR2tzQ53nkqLI
	ZOp+YQ8Lzo5ao6q2jHkzjFdVLqJCrETU/0TVHjZ2bwAhnYdSVW5N2+tRBKkhNkLffwAkci/IG19
	HiGwkGMEKQ
X-Google-Smtp-Source: AGHT+IGF68hGfEkA+DH3C9HiSXlnlJQVFJ9ENrZbAi+Yxp7bOWoaXxaMzG1d7FXYZh/p9zVGC37VNA==
X-Received: by 2002:a05:6000:248a:b0:3e9:ad34:2b2e with SMTP id ffacd0b85a97d-3ee857699a1mr4792486f8f.46.1758337428036;
        Fri, 19 Sep 2025 20:03:48 -0700 (PDT)
Received: from [127.0.1.1] ([143.244.56.164])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-464f64ad359sm128118415e9.22.2025.09.19.20.03.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Sep 2025 20:03:47 -0700 (PDT)
From: Chali Anis <chalianis1@gmail.com>
Date: Fri, 19 Sep 2025 23:03:22 -0400
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250919-efi-loader-v1-13-dd8cdafb9067@gmail.com>
References: <20250919-efi-loader-v1-0-dd8cdafb9067@gmail.com>
In-Reply-To: <20250919-efi-loader-v1-0-dd8cdafb9067@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Chali Anis <chalianis1@gmail.com>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250919_200350_219106_ACECFDE9 
X-CRM114-Status: GOOD (  10.90  )
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
Subject: [PATCH 13/15] efi: payload: earlymem: allocate only the barebox
 needs in term of memory.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Since an EFI malloc callback is available to provide additional memory
on demand, limit early allocations to what barebox strictly requires.
This ensures more deterministic behavior and reduces the risk of OOM
conditions.

Signed-off-by: Chali Anis <chalianis1@gmail.com>
---
 efi/payload/early-mem.c    | 18 ++++--------------
 efi/payload/entry-multi.c  |  5 ++---
 efi/payload/entry-single.c |  5 ++---
 include/efi/efi-payload.h  |  2 +-
 4 files changed, 9 insertions(+), 21 deletions(-)

diff --git a/efi/payload/early-mem.c b/efi/payload/early-mem.c
index 150a2a595afcdb69026f98c53f9a3bf3425da999..c5e94b33a756f3b8612eb261de27b99b46b0abba 100644
--- a/efi/payload/early-mem.c
+++ b/efi/payload/early-mem.c
@@ -6,27 +6,17 @@
 #include <efi/efi-payload.h>
 
 void *efi_earlymem_alloc(const struct efi_system_table *sys_table,
-			 size_t *memsize, enum efi_memory_type mem_type)
+			 size_t memsize, enum efi_memory_type mem_type)
 {
 	struct efi_boot_services *bs = sys_table->boottime;
 	efi_physical_addr_t mem;
 	efi_status_t efiret;
-	size_t m_sz;
 
-	if (IS_ENABLED(CONFIG_X86))
-		m_sz = SZ_512M;
-	else
-		m_sz = SZ_256M;
-
-	for (*memsize = m_sz; *memsize >= SZ_8M; *memsize /= 2) {
-		efiret  = bs->allocate_pages(EFI_ALLOCATE_ANY_PAGES, mem_type,
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
index d5d54cdf70a141428edf35a5fcde45ff7b59a61e..82f3dfffe8709f9a4275c7f9ec246be979e605cd 100644
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
index 8600bd845c49719da3ad62c5f5bf8d0b547aed74..f481d0942ba5dc96b2f97079c4e7575fc986e538 100644
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
diff --git a/include/efi/efi-payload.h b/include/efi/efi-payload.h
index d8e66a187a870fcae9288d9c65984896e5196c31..337471117d5acecccfe8526ef470bb84429d31aa 100644
--- a/include/efi/efi-payload.h
+++ b/include/efi/efi-payload.h
@@ -32,7 +32,7 @@ int efi_set_variable(char *name, efi_guid_t *vendor, uint32_t attributes,
 int efi_set_variable_usec(char *name, efi_guid_t *vendor, uint64_t usec);
 
 void *efi_earlymem_alloc(const struct efi_system_table *sys_table,
-			 size_t *memsize, enum efi_memory_type mem_type);
+			 size_t memsize, enum efi_memory_type mem_type);
 
 int efi_initrd_register(void *initrd, size_t initrd_size);
 void efi_initrd_unregister(void);

-- 
2.34.1



