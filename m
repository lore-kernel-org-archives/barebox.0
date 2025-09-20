Delivery-date: Sat, 20 Sep 2025 05:04:25 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uzntg-0054yS-34
	for lore@lore.pengutronix.de;
	Sat, 20 Sep 2025 05:04:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uznte-00055H-Mm
	for lore@pengutronix.de; Sat, 20 Sep 2025 05:04:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=B3ZqcHqtsHoB7+LO92S3T9nLpiV3pMNfvq2JgEqyQLA=; b=Ql2D1Mz9yLO/XLnp9Cd8f1m4op
	+EiPRSeMiyTgNqKe847aVddsu+yx0rXNJZFvgexsFddMmhUtQ6KBr4a5WrBjJeOzoj8+pFr3f5SGv
	QoDZiJn5DWJSTrYy2kmjmIc+HqsCLVumQKN2MBlNGLOfa6UnTnYHTwPvsucRS6BGM9ztP+7w+5K0u
	hBYTJY+bPr/gJG6YQ4kiPPYyRrWhLel/WqbF7lCQpudWZhG7FiGMhF7VDC9HlcQdbqER72bTtmW0w
	YASwpxsoxkj6MiQX9e4yZzMkL4wF2nvIoLSZKBKHJs+931LqRoa0zrxP/4u1Scn9v2Jrm1lq7a+ri
	WfbWIu9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uznt4-00000004buy-3f04;
	Sat, 20 Sep 2025 03:03:46 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uznt0-00000004bqN-0p62
	for barebox@lists.infradead.org;
	Sat, 20 Sep 2025 03:03:43 +0000
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-45e03730f83so11935225e9.0
        for <barebox@lists.infradead.org>; Fri, 19 Sep 2025 20:03:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758337420; x=1758942220; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=B3ZqcHqtsHoB7+LO92S3T9nLpiV3pMNfvq2JgEqyQLA=;
        b=UuiS8uO0Q9YGbniuBSBtOU97FVRWanoJAMMfOw1Q9VHQWSEku172UUdzqWDwgfVlsO
         U6Ad4m/k4TEMx5y3pXl8hYYqSwyONuw7bnvz901YG5on3fd/5YMMgf6zhuOnVDVZZEoo
         TEAVnQNWeCvO/mWdUBAT5yCQNNd662P3t47svzBLn8Ml/F0+rEew4T+4FbJ4MDvpBaTy
         aHL4pzYNv38QTTF0kMd/4GhvaEZThgsX8J6pkiuyldJv9nd+PlcPlUWQuhtWidUAglh2
         Q/YrLzvcOtCBV0/4QSIduksHhaLUnw4GcMyQqpODRhApj9PogQ+Ty+XHMVEWjE9fCUlN
         MwNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758337420; x=1758942220;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=B3ZqcHqtsHoB7+LO92S3T9nLpiV3pMNfvq2JgEqyQLA=;
        b=WC6p4gCc+bOuQvddooH8JafDVe48G6A4qcHz4e1IqSgJ4K9sN7TA2S7CcnnGp8fCWB
         YdMF/A3DZcUQeAPavmVGUlacL/qot4Ns7rfFNABaF8wMBT3uWbv+EqfXviZfZGpUBwUd
         8kXzOtDSCCoX4mT3nnq0rTgbhMxOBfbs5+5LuHEu4irQtaBhAhnt3O43r7dTGtPHKXbc
         KHh+7yvZIFawgXcnAPooUW50tEoi+PwTmFNjNtPkWJJWf+F5ufiqgqbMjKYn+msqNW85
         k8s6QaoBGHUvNStLv7oEd2BpMEhNbyau29CdPRo97GCGqWxfeyXa1KL0+qWyoau5NuYD
         6UBw==
X-Forwarded-Encrypted: i=1; AJvYcCWITRJ57ynVyp9GStJPrL6oa5y/CiHU7JRMxCxO4xw5dNmywcCA9WzqMzoRIEfQg5V4g9bJuMYl@lists.infradead.org
X-Gm-Message-State: AOJu0YwZD677hsbJMEvGYSZY1BBSdxB4OoxLd45zoMQJ2/O0l71wxg1f
	1np2Cg3vNtQQjwcCkwpKEFP6V+jbuDYO+k2SVoNwZ63tkRihnpC6Szyh/P077VdP
X-Gm-Gg: ASbGncvKHR8M5YYwP++J5AWQCUPZ3pTgPREf1JnkVw/fiGhPcS/BMLeK1n7XGX5b9Uw
	H69fNIKnno7pHtki3tUuwSCzvv/MopmVaDRTPJtpAjo6NXl25vOufavcX5O7wx3Xez5O4h6lu2t
	+PXEzEpAzjgpQO+i+VEVX7tpSD1t/mJuvgy9DtqYjy9aohhw2ibT1wcoJJRXZ5b3yCLGEN2DQd2
	IybDsZFzwjvJq+CDufhXjCpWDAG41rix/xiFT37JV9e51to20/1MG3OGkoJJZmwdZPyVkIxvwuc
	gVWkLUwpVGes5Dh2GktcbmqjixN2QsSvGbHwwQsEf+ynTwZxbwi5QzlCKZnn7OamrnLRZd4ftlT
	5pUGKlBCf1IbQnbP4nAP6M4TA/C2zz7YeO6tR8/JGBISlw7kFpuRvNirLdo9QRQ9DThMPIgmLAf
	GzwHRD7/iA
X-Google-Smtp-Source: AGHT+IE43zuPp5P0ttfgTmgIPZBM2owKCs6nvUauM+eGz8yNRcoV1YJCjxQyqE/mt3IF41i1XfOFWA==
X-Received: by 2002:a05:600c:4711:b0:45d:d718:3b9e with SMTP id 5b1f17b1804b1-467ec742d07mr52425315e9.10.1758337420247;
        Fri, 19 Sep 2025 20:03:40 -0700 (PDT)
Received: from [127.0.1.1] ([143.244.56.164])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-464f64ad359sm128118415e9.22.2025.09.19.20.03.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Sep 2025 20:03:39 -0700 (PDT)
From: Chali Anis <chalianis1@gmail.com>
Date: Fri, 19 Sep 2025 23:03:17 -0400
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250919-efi-loader-v1-8-dd8cdafb9067@gmail.com>
References: <20250919-efi-loader-v1-0-dd8cdafb9067@gmail.com>
In-Reply-To: <20250919-efi-loader-v1-0-dd8cdafb9067@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Chali Anis <chalianis1@gmail.com>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250919_200342_254393_E2881F71 
X-CRM114-Status: GOOD (  12.26  )
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
Subject: [PATCH 08/15] efi: payload: early-mem: helps to correctly boot x86
 linux.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

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
index 0f79a8c306942f21169a947cb957e0318a54294e..150a2a595afcdb69026f98c53f9a3bf3425da999 100644
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



