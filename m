Delivery-date: Tue, 16 Sep 2025 06:56:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyNjY-003ZLA-1D
	for lore@lore.pengutronix.de;
	Tue, 16 Sep 2025 06:56:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyNjX-0004rP-Ox
	for lore@pengutronix.de; Tue, 16 Sep 2025 06:56:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=V1gp97r+A1LA5Zl/kYgVR34UKDIxaB8xLCxyZ9JzLk8=; b=Ndm7Wy1WZwEUZZcH5wvK4uLTX1
	7rCKYI6tnB46T8J1Dd5+k0etBAMukgktvPDfPOqVnFDaeIpAyKbwN75L8mtEUl3KT3QtoIGGXqmxV
	VuJs+5+0XZNzn9n2Y9/e9KTJZ78xc6qsXAKkJf+1p8/i2H8I93HjErlU6JXnbY1bdXOQUEEriDY19
	BsbBtLnzWXrGlWtJ4+t8r5uOrF2p5M6KggzPF3azTVfPHtYg1kDKW9CtQo4Lm/w/DtUQNmphb6zp/
	UqseRGz/YmgObABCruRt8Hg2GI7zCfHFcz6MU5+1VgRGL6uFo+UWbFE3ESre6CVUcq5eSs3w4u0WF
	mQ/h/JJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyNj4-00000006ke2-160C;
	Tue, 16 Sep 2025 04:55:34 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyNj2-00000006kaM-1In7
	for barebox@lists.infradead.org;
	Tue, 16 Sep 2025 04:55:33 +0000
Received: by mail-wr1-x434.google.com with SMTP id ffacd0b85a97d-3e8ea11a325so3062721f8f.1
        for <barebox@lists.infradead.org>; Mon, 15 Sep 2025 21:55:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757998531; x=1758603331; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=V1gp97r+A1LA5Zl/kYgVR34UKDIxaB8xLCxyZ9JzLk8=;
        b=DtAEFAy9mRPoBVJHVqW1Nt7UJL/LrjRyRVfWEqwoKhyxG5Df7sIFs0s9Wi2ATmuXMa
         nRG6ZwgoCLPbQ3U9K0NiILwhQMIOd/FMYmb5dAs44ja02vgrPZ00tixgg0TrN55w11N2
         HNno/2SAZt0daTBU7b+yIXorTFhjwwkbVZ4A6tWCHW//tZ3WWjxiyJ9jmB55AsYDxbRY
         pu1Pg7Z+VlVXL0kmbDFhsukmEJgLetGVjMiiQcFO3xCa7xqUokk86ZPbUFJ2MNam1z8o
         Eb+IK3WPtctrdtsm03s0uI43vioy19SgcbPKTnJaMfNlumNmz5S2UqhHAJtH176etaoI
         CPjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757998531; x=1758603331;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=V1gp97r+A1LA5Zl/kYgVR34UKDIxaB8xLCxyZ9JzLk8=;
        b=V7d7f89j5bwkhNhYjBJnDQs/Vqtr6n3B9G/yBrJXDPIbTaO+28kJ+jV7FjG0lx73Ny
         L7O+khpnVPz/8lOhHJEVjdTCBfPW0QC8Bec0WafqL25wLBkZ8IeDGJ04+M4LUEit/Vgg
         6HgVsBDr22zOa1uld8vv3j9EzKzLItc+aaOvRozJt8JGR1g/udR+zYMhSOOspBJO5MUN
         zLhsma4Na4RHe35qBb+a1N1q53qRE7Y8o9lQV87+9iSjIzFOcPG44gitgOfnJXJUdLHt
         egvmxxpAWsJ6UQ8uI1iunw18sTWZy0Hn95zUJ1JceKOFj1HYUWI5WsPOj/5ZL936V0br
         oiaQ==
X-Gm-Message-State: AOJu0Yz6PPBN3EzAWRMFAw3Q1DogLIyOWM0Jzjnks+jGifOmGtw3sZoo
	O4+VRbXMSqzuIVBoO31Rrs4RoKDf6LEKFmg4Af3Asthdk1ipqLRN4FmjFpgvkR7F
X-Gm-Gg: ASbGncvqm39emNqY5JfIbvw21qHuagvHBz/RIUja4v79+2IklwlZXAinMlkIEsHpIcF
	MaybDjY35ZN7DYM/Snj2lyHus4d40s+vmMRUfnuVAn0+uWB564R5L19lEwinAIbT0eaFTcyo7L3
	NDg6mvaxPZzKiZlQXujufa7LSS+H/LhjfFaU26h9JD6+TAA4Thjyk+eKJV68UzVOJ2iYn3uYIAl
	zW9lU31L2tp2QyHwRVd2Tnv9GXw36ZO3tXMeKQMcjxzg4EdG2n2Q6gYcPltElYxhCJhm0UdzCV9
	imwOvMH/VGEmJeQHkkOOINN9ZS9bV8G+/XZZFtCZTW3JbCAUkVz9KSbYjA6LS25m8n31QXHhGoH
	aJdtWfcdMO7pYYsrSrC6EnQH0czFhHqNyRNIGaqvV+AwY0rFIzbC74LjX+pP6RJ3UYKM+4ErJl2
	afs8QFiNaTKQQ2C+xIE/5dkw==
X-Google-Smtp-Source: AGHT+IHL7zadfKFp+RqSmZDWm/Kr92t7aqfIRoVQ/NOOvpVTcBpU2CUHcRS1bMBm2TExYhA4I5Cnhw==
X-Received: by 2002:a05:6000:1786:b0:3e7:41bf:e62b with SMTP id ffacd0b85a97d-3e7659efd3fmr11679504f8f.51.1757998530520;
        Mon, 15 Sep 2025 21:55:30 -0700 (PDT)
Received: from Latitude-7490.ht.home ([178.132.106.74])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e7607cd0a7sm20123525f8f.39.2025.09.15.21.55.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 21:55:29 -0700 (PDT)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de,
	a.fatoum@barebox.org
Cc: barebox@lists.infradead.org,
	Chali Anis <chalianis1@gmail.com>
Date: Tue, 16 Sep 2025 00:54:57 -0400
Message-Id: <20250916045500.907542-9-chalianis1@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250916045500.907542-1-chalianis1@gmail.com>
References: <20250916045500.907542-1-chalianis1@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250915_215532_377170_7304FB0F 
X-CRM114-Status: GOOD (  12.69  )
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
Subject: [PATCH v4 09/12] efi: payload: early-mem: helps to correctly boot x86 linux.
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



