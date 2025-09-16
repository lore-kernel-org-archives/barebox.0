Delivery-date: Tue, 16 Sep 2025 06:03:09 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyMuL-003YcD-14
	for lore@lore.pengutronix.de;
	Tue, 16 Sep 2025 06:03:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyMuF-0000Zi-8f
	for lore@pengutronix.de; Tue, 16 Sep 2025 06:03:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=V1gp97r+A1LA5Zl/kYgVR34UKDIxaB8xLCxyZ9JzLk8=; b=3fJE3b4dEATs+tzsXLLSCjihik
	Lm7dvPtpUdVaoPIsthrIXlHfj72yzJLU869MakzaK6E+MrZUVLZ9iIQs5V16dergNqKGWXZGJXtxe
	//I/EHWZhXcp2oLWbX0fFhCwclKATU6tq86fkh7+QOVVR9QvJ+7O2S/J8fRbOtibbqSSsn5QV+Wsl
	vQocniiy0qvS+Mz6443M54//aTOEEe2BqHPsD45EQo84fMpNQ09l9VPALhqizN9FdzuzoVK25Wkdu
	CDKh/tl2uR6A4hvsRvTvu0fU+92qKh6e8CnGNlPTQVo6EcTaT3RRFdfC2G9TgC+U0NG3ERWriQFQ5
	33wf8eHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyMth-00000006eg5-2JEF;
	Tue, 16 Sep 2025 04:02:29 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyMtg-00000006edD-03Js
	for barebox@lists.infradead.org;
	Tue, 16 Sep 2025 04:02:29 +0000
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-45f31adf368so4849645e9.3
        for <barebox@lists.infradead.org>; Mon, 15 Sep 2025 21:02:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757995346; x=1758600146; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=V1gp97r+A1LA5Zl/kYgVR34UKDIxaB8xLCxyZ9JzLk8=;
        b=Ohgz/OaL7yt+kZ/k2y9w+YDWHhXXdFcdBUk67XkiBqX3+K7+eZlNXo1eAf65cXFmMO
         rSot1Etunl8NSurRpmsOnwi491q9VQl+IVeHwW1v9uTxRUQuZxyLpNPCbhWryZ9AnqmT
         YuVC0Jqu3vYoNDk05g/y2ADIuAGOuoy2KKi4grMPTeyddI4jhCEk5BkUVh89QVo5buO4
         N5IcgfAl1Ti5F6xmfve7eRoydbCNARaBAkuqO6oGmSggL0uK8PWi0KiPIsgRMoDILyle
         En4g+BlURcm2OkO01lMAfr44eV2wjzNZC5iiocKfhS9Xfe6T2SXBtPCaCpSf3agc2W1M
         2JxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757995346; x=1758600146;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=V1gp97r+A1LA5Zl/kYgVR34UKDIxaB8xLCxyZ9JzLk8=;
        b=E4Dn88xBA783NG/6tm+StRoifPMMCf7IqS9EIuKPDlV82UvkTTvD2ZCmBgyiMULayj
         IW/TmdcOwOOvM/pMMoDafgRN2hmztTh5gOR6+53aXqQ7Jcdm8odE4Q8fgu033nBxzQxK
         7iplQGmfvLiH1a0RtLB41QrgrrSRuMrqGqG1f05L1Lxh4nwdhAlwUuPb4RN3JXQcNvMn
         sXUfNkVF7jcsl5UJw5Z28wLhe7LDfRHuss9J8JH4vrp6uapg7PGcHAqUznXrjit8kAwc
         dIWnC9fI2Y5F6e5hk5+UhgC3sA4S7WV+6/zBXWvrtF5KuQu8MAKfnWOQbpo5fbqab5YG
         ICyQ==
X-Gm-Message-State: AOJu0YytSIl1TnQ46VbJnjl4mdyUf/NO3rHYseFOtei9GxMYoD0fy6yY
	uJakwswy9wnJMi4vSkGguMWjTSxUQUPltLzKMbvP46ZBwC+giOzDcmFP+1oW3EhJ
X-Gm-Gg: ASbGncsP38CpWVluz31/KcDcDK1Wl61+N8Od768x7Yw2cqMDsP9bOA9RlnUXRPQLOF9
	zUm+Tr2895cXYsmSqhwo+/+qbswwl56v3VM1L4RxojNWikgKr6AwJZDy5oQGYein/vZQILGU464
	79nPRP0lZvYNsJZX1NSDJn8Kb8itBTMS+hKA40qikTDvwboiiRnOZb6bdCd795BSrDvVnmzcmuE
	g/P6tauP1mZiricGMKqyy8YWVYqsqnrTaCyZzapYU90QgOcX6jTlwBlQ9MZIJzIMfeFR7zAsRld
	oKtimijDAgMUGVkJYKjZnUrRthRs/xedMYIi2mmhdzyDYlb/1bS0cTlSQD0icUXN3Q0g7tA/17S
	AhXLFAnExYtI0vHUGJDRhzhLDOJxtV2885Q2mRvci28B2ddZmTkc+LDKEnSpraKvZyvnxOm4+Uo
	qaoMuM7IqITsyA1wNJ9RP/Uw==
X-Google-Smtp-Source: AGHT+IFxzXMzl5MpLS4sjOI6s53mp/62DegkYRkZxhD3S044yENG8txgPAaSACYjVdLEV2M6iY2HOw==
X-Received: by 2002:a05:600c:4fc7:b0:45f:27fb:800d with SMTP id 5b1f17b1804b1-45f28ea774bmr81791485e9.7.1757995346197;
        Mon, 15 Sep 2025 21:02:26 -0700 (PDT)
Received: from Latitude-7490.ht.home ([178.132.106.74])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e813eb46f3sm13594706f8f.23.2025.09.15.21.02.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 21:02:24 -0700 (PDT)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de,
	a.fatoum@barebox.org
Cc: barebox@lists.infradead.org,
	Chali Anis <chalianis1@gmail.com>
Date: Tue, 16 Sep 2025 00:01:53 -0400
Message-Id: <20250916040155.814159-9-chalianis1@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250916040155.814159-1-chalianis1@gmail.com>
References: <20250916040155.814159-1-chalianis1@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250915_210228_062477_E052098A 
X-CRM114-Status: GOOD (  12.80  )
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
Subject: [PATCH v3 09/11] efi: payload: early-mem: helps to correctly boot x86 linux.
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



