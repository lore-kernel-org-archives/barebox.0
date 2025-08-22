Delivery-date: Fri, 22 Aug 2025 16:18:23 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1upSb2-003LFE-0y
	for lore@lore.pengutronix.de;
	Fri, 22 Aug 2025 16:18:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1upSb0-00077t-SV
	for lore@pengutronix.de; Fri, 22 Aug 2025 16:18:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=0Js2bFkoU8vYjw8QmAV5rRIG3I4UrEDREtq9TCHiNU4=; b=Avdi7FvJNhoq79JGZC5EL1lZj3
	DRMkx6nSCQ9N0s/e79n+nhVQ5YDuCqcNEVEBTl+8/t1Zs48gEigxwpqds74Wk0bQFo25D7fK4B0Wz
	coL2zPlRQfRkGIWGyvddNr+Jw6qtD2H8W6KugIZKkS6z/YBcNbBjGTyd0JOaPl9t+KhrSkjfXVNTf
	YdJZe9FqyK9+y+V+K0rBpnKMYVhlcmgCOpQ1/M6i+uO3x5d6lVFYLRSq/PO4RWec/mn28ijj6I+hZ
	TrxbCHeyERIUGMDiwHb5HUkcTjyP8JMMONY1+uy0cu8Es/LWDMU9KPW40NT8zJUiy0IA49xAlWv58
	rceHHKfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upSab-00000002jwv-3V2t;
	Fri, 22 Aug 2025 14:17:57 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upKT6-00000001bUs-3450
	for barebox@bombadil.infradead.org;
	Fri, 22 Aug 2025 05:37:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=0Js2bFkoU8vYjw8QmAV5rRIG3I4UrEDREtq9TCHiNU4=; b=ljxepCrGLBscdj5ENWzgyH7Q5v
	OH6tXefaCoBZ+p/QPWrDW0OGQBWJryJaDiy1ZDvR9bzj+uEQ4PW2wcZS7/t8If+16NP+Nt5HeZxh4
	JYwBB0/Jl7DD5Hl3THhaYnDOwEx3z0ExvCATpp/lUZYtCh1rWVr7APs/harU84L/zpiXtbFrO4B25
	MKnvVgFf/ePVlUhoVErp3oLOKxbtXQD/OTk+9u9XP7BZwFlsceJXyxdpVs5kVspO0xbD2H9TP2IVo
	Zm1XBxDY507G64epVyO1UL7Xm47xuwcyWNHaTwRwslIXSmBd50eydqfTDClG2V09Sa0Ap+zjQhVFv
	QwMWm7DQ==;
Received: from mail-qv1-xf35.google.com ([2607:f8b0:4864:20::f35])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upKSz-00000000qTR-1PE0
	for barebox@lists.infradead.org;
	Fri, 22 Aug 2025 05:37:39 +0000
Received: by mail-qv1-xf35.google.com with SMTP id 6a1803df08f44-70a88de7d4fso15358416d6.0
        for <barebox@lists.infradead.org>; Thu, 21 Aug 2025 22:37:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1755841048; x=1756445848; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=0Js2bFkoU8vYjw8QmAV5rRIG3I4UrEDREtq9TCHiNU4=;
        b=YD6acCfx3Ufd1qD9O/Dj2vr/nlr7jrSYA/UQTEShv62XlZysqM1xSEJTXP3G59LlT3
         DL968JfqC7X8H+ih5XbomidH6Ex/JzQJ1fknS7p+AdgpQhiLrr7kpuqTB3GoiZNTSi1T
         1w8zwwmahDFYrqoZ3N2WMekFYZ0WmVc1j42pwbQRhUCRN0k0ztu1VB+haxhfV5Ty5iVK
         iBlYhXR1km+tFKN1oPjcgHebeaA9zgIWW7rNOT5v1aWUGYataSck8VnY9iFq+G67SsH6
         YyLf4f3c74qzZ3n0djA7zBUFbn80nlSdiHVhbrvaorBPNYcgnjXRkfYmrwXZHydSEQvY
         5KHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755841048; x=1756445848;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0Js2bFkoU8vYjw8QmAV5rRIG3I4UrEDREtq9TCHiNU4=;
        b=KafgWdc9AnQ9pwCKTKSPHVtI1PWyxZGyuBK/MxPkyGm4oLaXXfZxv+ydOukOeLB7Ei
         hB9TyAB9LioOmWW4bmZhaIzM6tVSCs/sRZqMNmLtFstQFEUjmiCfoQBl8G95epPOm6md
         QnZYEtuWJX1fHdIRL/xQ+EFfsVkzCf8YbxJuLZfAOSlMuLCkcdraFc9ZOtqG80fVH3An
         s1b4E9GZcVLDNjAiTMtk6lsNvHKJOYHGivSG7xtObDqgkUUEI2MJDWWb+YFeg31jU5lV
         fLq0GX0UXpw85Lyn3cZI+zXdh7qcbSkGtjNScCwH4CNEz353unFYLZAlZcWAmV4EZYv+
         i7cw==
X-Gm-Message-State: AOJu0YyXkTCFpEmfkp4cNmf5hnHdX/2YONSSo9cW5g4vnCAzWIa/FNGY
	/ytHxfDCWF1YK+mV/6NWiteIKQZQgv30ecOixMV/P3XLUcjHpxZ5zp/z
X-Gm-Gg: ASbGnctYWjvmwGg7EIG1gzV2tYdb9hlAlQqZGZWYiBgyUR0DesSgEtLsDF433WnU30P
	ffXIYY0PWXJSG+2A+kzg5XfW7pjAFCGkt6Mk6Y273r+uv3AFw9VhIXSqis0/dtH2J6oPLWKltYS
	LPxwFni/SXdfZI4wAdOPfLUwIbkK0i3jIjG4/Zo2rAbxVZSsDDtp6yadeJAYPIQAg2Bpdpqr/6/
	bM4swMu6zQPZlYZyyhopR2UpYJ7ZLOVS86d37s441BX+IXygjTPm9AtQZ8aOqqcXo6kqMx3DM5V
	wIzpT1j9a1spfwuUv5zeJMF7h2lKN/EKWm0IJ68VirFHsryYl28aXcHMiloLG1OEYx3iGuOQ4z3
	9AhNfXSHSSOSaq/IAifa0sVf+qcyh5xIujM/9siovub1xcnNfln/touPITjWyveBWyqyMQHNda5
	mkeMyYWbt7QNat9+tx7OUH62o=
X-Google-Smtp-Source: AGHT+IGV6tes219bE+j5lVVoIIA8+OBcKQhh0U0Oo6eS0daR6g5K3+611EJC76JP8GPTUjXbuTF/8A==
X-Received: by 2002:ad4:574a:0:b0:709:e3ae:d598 with SMTP id 6a1803df08f44-70d970c41ffmr23858106d6.14.1755841047966;
        Thu, 21 Aug 2025 22:37:27 -0700 (PDT)
Received: from Latitude-7490.ht.home ([2607:fa49:8c41:2600:25:ea75:55ca:efb8])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-70bae08c0f9sm114037106d6.11.2025.08.21.22.37.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Aug 2025 22:37:27 -0700 (PDT)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org,
	Chali Anis <chalianis1@gmail.com>
Date: Fri, 22 Aug 2025 01:37:17 -0400
Message-Id: <20250822053717.1050752-1-chalianis1@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250822_063733_958735_C08E96A3 
X-CRM114-Status: GOOD (  11.74  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] efi: payload: early-mem: add memory type on early mem allocation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Chali Anis <chalianis1@gmail.com>

Add the ability to specify the memory type which mendatory for the
recent efi versions that have MMU, this will fix a permission fault
on second level when trying to relocate the barebox or even execting
the memory code. see the snapshot error log below.

 SP 0x000000007C6CFF80  ELR 0x000000006C6EA4FC  SPSR 0x60000205  FPSR 0x00000000
 ESR 0x8600000E          FAR 0x000000006C6EA4FC
 ESR : EC 0x21  IL 0x1  ISS 0x0000000E
 Instruction abort: Permission fault, second level

Fixes: c937ad266413 ("efi: return pointer from efi_earlymem_alloc")
Signed-off-by: Chali Anis <chalianis1@gmail.com>
---
 efi/payload/early-mem.c    | 4 ++--
 efi/payload/entry-multi.c  | 2 +-
 efi/payload/entry-single.c | 2 +-
 include/efi/efi-payload.h  | 4 +++-
 4 files changed, 7 insertions(+), 5 deletions(-)

diff --git a/efi/payload/early-mem.c b/efi/payload/early-mem.c
index 6229fd43a587..0f79a8c30694 100644
--- a/efi/payload/early-mem.c
+++ b/efi/payload/early-mem.c
@@ -6,7 +6,7 @@
 #include <efi/efi-payload.h>
 
 void *efi_earlymem_alloc(const struct efi_system_table *sys_table,
-			 size_t *memsize)
+			 size_t *memsize, enum efi_memory_type mem_type)
 {
 	struct efi_boot_services *bs = sys_table->boottime;
 	enum efi_allocate_type alloc_type = EFI_ALLOCATE_ANY_PAGES;
@@ -20,7 +20,7 @@ void *efi_earlymem_alloc(const struct efi_system_table *sys_table,
 	}
 
 	for (*memsize = SZ_256M; *memsize >= SZ_8M; *memsize /= 2) {
-		efiret  = bs->allocate_pages(alloc_type, EFI_LOADER_DATA,
+		efiret  = bs->allocate_pages(alloc_type, mem_type,
 					     *memsize / EFI_PAGE_SIZE, &mem);
 		if (!EFI_ERROR(efiret) || efiret != EFI_OUT_OF_RESOURCES)
 			break;
diff --git a/efi/payload/entry-multi.c b/efi/payload/entry-multi.c
index 2eb9dccc08a0..d5d54cdf70a1 100644
--- a/efi/payload/entry-multi.c
+++ b/efi/payload/entry-multi.c
@@ -37,7 +37,7 @@ void __efistub_efi_pe_entry(void *image, struct efi_system_table *sys_table)
 
 	handoff_data_add(HANDOFF_DATA_EFI, &efidata, sizeof(efidata));
 
-	mem = efi_earlymem_alloc(sys_table, &memsize);
+	mem = efi_earlymem_alloc(sys_table, &memsize, EFI_LOADER_CODE);
 
 	barebox_pbl_entry((uintptr_t)mem, memsize, NULL);
 }
diff --git a/efi/payload/entry-single.c b/efi/payload/entry-single.c
index c95672b9fe66..b7171bb24bfa 100644
--- a/efi/payload/entry-single.c
+++ b/efi/payload/entry-single.c
@@ -37,7 +37,7 @@ void efi_main(efi_handle_t image, struct efi_system_table *sys_table)
 		BS->handle_protocol(efi_loaded_image->device_handle,
 				&efi_device_path_protocol_guid, (void **)&efi_device_path);
 
-	mem = efi_earlymem_alloc(sys_table, &memsize);
+	mem = efi_earlymem_alloc(sys_table, &memsize, EFI_LOADER_CODE);
 
 	mem_malloc_init(mem, mem + memsize - 1);
 
diff --git a/include/efi/efi-payload.h b/include/efi/efi-payload.h
index 22cdceb71fe2..fe45864dd8a7 100644
--- a/include/efi/efi-payload.h
+++ b/include/efi/efi-payload.h
@@ -4,6 +4,7 @@
 
 #include <efi/types.h>
 #include <efi/efi-util.h>
+#include <efi/memtype.h>
 
 struct efi_system_table;
 struct efi_loaded_image;
@@ -30,6 +31,7 @@ int efi_set_variable(char *name, efi_guid_t *vendor, uint32_t attributes,
 		     void *buf, size_t size);
 int efi_set_variable_usec(char *name, efi_guid_t *vendor, uint64_t usec);
 
-void *efi_earlymem_alloc(const struct efi_system_table *sys_table, size_t *memsize);
+void *efi_earlymem_alloc(const struct efi_system_table *sys_table,
+			 size_t *memsize, enum efi_memory_type mem_type);
 
 #endif
-- 
2.34.1



