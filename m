Delivery-date: Tue, 16 Sep 2025 05:55:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyMnA-003YHf-0w
	for lore@lore.pengutronix.de;
	Tue, 16 Sep 2025 05:55:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyMn9-00078e-NY
	for lore@pengutronix.de; Tue, 16 Sep 2025 05:55:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=V1gp97r+A1LA5Zl/kYgVR34UKDIxaB8xLCxyZ9JzLk8=; b=YDebGxSFTdmI6t9aMAYeUjKTli
	YUYsxKb3XXS3PFWyeNm1nLZH93l0pxTQdLKbpwnDSRzfecx+8RASp+c6yaFhQYezb3bmjwqm7Rrk4
	KuesHyWqhSDB0smJmZ3aHuX3wBaghOnp3QqLcd5YUb2dTzzh2JK7IJ6A0jUDZWUm4Dmf84v0yQ481
	u0e6GlRaYvrJMU2xqC7qSA34aoGQo4USNtmcYuClOndqP/W3KDeE8Z7YuEG8+CVDK6SRXZZ2Q9Bua
	yEmUsqDNFVV+yivrf3j0RV9wRbritiQO7xxkGyWcgXhFnYt+ts1d2TNTciN0ZpRnh5ODcIOYhfWWM
	1BQ68ZwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyMmi-00000006dTC-1hgh;
	Tue, 16 Sep 2025 03:55:16 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyMmg-00000006dQ5-1uDO
	for barebox@lists.infradead.org;
	Tue, 16 Sep 2025 03:55:15 +0000
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-3e957ca53d1so1954732f8f.0
        for <barebox@lists.infradead.org>; Mon, 15 Sep 2025 20:55:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757994912; x=1758599712; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=V1gp97r+A1LA5Zl/kYgVR34UKDIxaB8xLCxyZ9JzLk8=;
        b=JdKFLKdS2bAAiUorVahz+w+bh/A5daZHQ4nS0Qbr3x0pragbGIE+MrFh9U6MOQDjAH
         BdNeGoC63mrvxhyK/BrmP+0w2UyAPvNUTyYAQKMKnYmm/6vjar1w+whrahBQOoTyA1kX
         PfDUOznHl8c7huqgylNtfg98CUdYJi9e7ocF7bdCkDwpZ/feQXAB7il50XKE0Hd3+bf/
         rbeURK70E86foQ5p1PN2fDGw9EFuFsby/rB4gOjuE4DBsD0sYNXOL6JJhFYm18OgOApf
         OEnyE5vrpZ7ztJ0nrJE2CiE8WiTo3fcMEdXQNhBJRyMC7NYUQrnd6yffuEKho2ky1fVM
         ifRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757994912; x=1758599712;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=V1gp97r+A1LA5Zl/kYgVR34UKDIxaB8xLCxyZ9JzLk8=;
        b=jE+dt6UP8Z/XJ7aVsThoyHYZ/hHxfxjTmP13j6lxLxv95O/fFD8NWtx8V71/M/Jwcu
         2pBQlvFSRSMCaR+1Cf20BUM8NMpPgQlcvcTg3Af34nfhlcPdNK3dc3DD3vbMIqUWo7Cm
         NuVyKLMqAr/CUmykU66si20VsecPgp87XPV48GmlMuc8K5uT4VHgyRXwdgDILZhzYAzQ
         +PnslhP/eiqW4M2WLOUg637edA0zH3ocB+yDQbhBLazzPYGjQao79tUrK3JPzMZgYnGg
         aaY/ylZdfnvTtnuDziwfIdLhjK7wrVaPwhdbyGPfnR1X4d+09AApsox0tLo6zKXRPkrn
         TfvQ==
X-Gm-Message-State: AOJu0Yx1/Q9g3eHDzbhjHmkf0Rw8IvQ/vhU19VbAFa8eXlRPb/ZalPz9
	KnvFXm8uKQVNSm6cIJD9ER2xaSxOgPu4A92WPHyhOjcsl9nE/JCOZmw9ENELAMU0
X-Gm-Gg: ASbGnctglx9Is1jRuTmmOCrkHSsJ6RYN76zvsNg5NEykYdY1Mi6dDmLBapD2Wp+r5vh
	pFFQN+GLYsgFBj0aL8te7qVIqZJrxs41KvVC4uTxQChRaGCVAnkGAtha2tcTwn1TR/Dt5I33oW7
	gCifylca+pGAu8Qrhzll62ozsuC/2vabI3rGvalhWD2tUkr6s7y0+j7HOfn1yODj6Lpep6EeW0w
	Ep1ep0FeZeFSQQYNOsoTw8yXzRlBByfQZSv8ReUop0DJ1k5m4cq8+x+fUfj3SCWwV2xiqwhSlpM
	RCUvt06bXrkgkwKleRPkiFhJm9F+oPaWIIb6OYAv80jBgLT/1D/KXUdImdaQi5WxFLlD1PFQKU+
	k1mxYJFTrOWTpj0Js0yxSyqUGMkvX6eKoVnF09u0PeJlcdwlsDgrekbBKESrSdbnLLI6b+QQMX3
	EHD5Z3epmqDda/YXyOB5buCg==
X-Google-Smtp-Source: AGHT+IH27LEgWdoWq8uEK4pzHqomchKW19CXtd6sT8XV1+GJi+ODOSAgmxtSMRcFpvipnz+6oNWnDQ==
X-Received: by 2002:a05:6000:4287:b0:3ea:80ec:855d with SMTP id ffacd0b85a97d-3ea80ec89f6mr4937690f8f.19.1757994912478;
        Mon, 15 Sep 2025 20:55:12 -0700 (PDT)
Received: from Latitude-7490.ht.home ([178.132.106.74])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e8237cfdddsm13496580f8f.60.2025.09.15.20.55.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 20:55:10 -0700 (PDT)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de,
	a.fatoum@barebox.org
Cc: barebox@lists.infradead.org,
	Chali Anis <chalianis1@gmail.com>
Date: Mon, 15 Sep 2025 23:54:36 -0400
Message-Id: <20250916035437.805046-9-chalianis1@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250916035437.805046-1-chalianis1@gmail.com>
References: <20250916035437.805046-1-chalianis1@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250915_205514_672142_DB1C4462 
X-CRM114-Status: GOOD (  12.86  )
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
Subject: [PATCH v2 09/10] efi: payload: early-mem: helps to correctly boot x86 linux.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Chali Anis <chalianis1@gmail.com>

remove the allocate EFI_ALLOCATE_MAX_ADDRESSES and use a different
memsize for x86 since the initrd could be bigger that those used in
arm. it might be refactored in the future with a more generic allocation
strategy (i.e barebox malloc memory vs an allocator for the boot loader data)
something like sdram_request_region or just allocate small memory for the
barebox allocator and implement a way to allocate memory for kernel/initrd
directly from efi.

Signed-off-by: Chali Anis <chalianis1@gmail.com>
---
 efi/payload/early-mem.c | 15 +++++++--------
 1 file changed, 7 insertions(+), 8 deletions(-)

diff --git a/efi/payload/early-mem.c b/efi/payload/early-mem.c
index 0f79a8c30694..150a2a595afc 100644
--- a/efi/payload/early-mem.c
+++ b/efi/payload/early-mem.c
@@ -9,18 +9,17 @@ void *efi_earlymem_alloc(const struct efi_system_table *sys_table,
 			 size_t *memsize, enum efi_memory_type mem_type)
 {
 	struct efi_boot_services *bs = sys_table->boottime;
-	enum efi_allocate_type alloc_type = EFI_ALLOCATE_ANY_PAGES;
 	efi_physical_addr_t mem;
 	efi_status_t efiret;
+	size_t m_sz;
 
-	if (IS_ENABLED(CONFIG_X86)) {
-		/* Try to stay clear of memory mapped devices */
-		alloc_type = EFI_ALLOCATE_MAX_ADDRESS;
-		mem = SZ_1G - 1;
-	}
+	if (IS_ENABLED(CONFIG_X86))
+		m_sz = SZ_512M;
+	else
+		m_sz = SZ_256M;
 
-	for (*memsize = SZ_256M; *memsize >= SZ_8M; *memsize /= 2) {
-		efiret  = bs->allocate_pages(alloc_type, mem_type,
+	for (*memsize = m_sz; *memsize >= SZ_8M; *memsize /= 2) {
+		efiret  = bs->allocate_pages(EFI_ALLOCATE_ANY_PAGES, mem_type,
 					     *memsize / EFI_PAGE_SIZE, &mem);
 		if (!EFI_ERROR(efiret) || efiret != EFI_OUT_OF_RESOURCES)
 			break;
-- 
2.34.1



