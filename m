Delivery-date: Sun, 14 Sep 2025 21:26:26 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uxsMj-0033wp-3C
	for lore@lore.pengutronix.de;
	Sun, 14 Sep 2025 21:26:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uxsMj-0001qn-Dx
	for lore@pengutronix.de; Sun, 14 Sep 2025 21:26:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=JuC5a+n9nlcp+i/aAGhLZpkWHJexsc0NYZlMJvcg42Y=; b=hoK+0d2WiCmLzJliBQ8RxNGoGU
	OWuwSeOePIy4QLsGBVZm3TrtPjL8AD5JWOY0aoRaG/aW8+upP1nZitrcNylBrDbtmdpJr0RP22HF3
	sWmBveIUStQhYqgD8Lrbo7MrHZCxyERFkM6QCdk5+aMptnQ2SPXFpOXKHJtuFcQfkl6ugb2kX3f/N
	9sL3BCtLw+mgYHPX7yeT5cHfL1WjtzAyWN147WyEZ+qIxQ2qyfArbzx8/I02//UbFO+a0W7ANRIZq
	ghX0yDfrwGul6tP/O5shEt/95JM73CH+t3XbPxtDIgTAmBC8nSdVr04OSWZrxakMr1DEmsjKvgyv7
	qKGnS4gw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uxsLy-000000022N5-0UUV;
	Sun, 14 Sep 2025 19:25:38 +0000
Received: from mail-qv1-xf2f.google.com ([2607:f8b0:4864:20::f2f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uxsLw-000000022MQ-0BkF
	for barebox@lists.infradead.org;
	Sun, 14 Sep 2025 19:25:37 +0000
Received: by mail-qv1-xf2f.google.com with SMTP id 6a1803df08f44-777fb17fdf0so9199466d6.0
        for <barebox@lists.infradead.org>; Sun, 14 Sep 2025 12:25:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757877934; x=1758482734; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=JuC5a+n9nlcp+i/aAGhLZpkWHJexsc0NYZlMJvcg42Y=;
        b=H4XvhbOY+/Bfj98hICtNoqRLQBSLV8869rD4eZJANuAmFeszVkNF5qq/ubyeCLK3JQ
         FDoR8aFd56BWhvGHeBf2+oeSTkLpHim5L/ZQV83UWcaZttq44b1M5RAtUMLZ4HtHhimc
         kPCi/2E8xMEFTw/ZmHgOqN8vKKY4ju1Cpj270eBD02G5HbvGcBE/ELMhWABviaMb+YUV
         0z1CkoK0YIJsR+p+LFU+QqFlnUF+T6k6yIDnoQl0Nsra8O4yiMcGl03MXVBaTAlkmLM8
         Q3jQiK2BKr2rQOAgVXDHSkK45Sq/mUBH147seLSX5BNZ7lLUzfXG6Yf7ocaBk+gym++2
         id7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757877934; x=1758482734;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JuC5a+n9nlcp+i/aAGhLZpkWHJexsc0NYZlMJvcg42Y=;
        b=J3mNcDIdnAMo5tMChJ4VtCAPeNcCh/cDNq/NTvXwHGXLnLS4HrXdU2G2ZTu3PLldyI
         sx1h5hWPmPwjpGc0Pg3QbymUuKXHe7PhpqDnG/w03NUA03WuuE0pJsY4YQR1TXQYole4
         FrFtt5NCewHgHgSvgmIJdjoI/Rb2Y1SIP3Kt+3c2UZQriqgar/IirV97AWe0sEDTJd16
         HfhQtAostq77O0T4s5LTLATlY81aPR/5b56Xd3DpmOJZv46q7MK/wN5+m2tjYl1uXYaC
         0UUJKM2Xd22oeJ65ldd0ttDQSd9jh+O9M61k9SeaEutZHcY9TH1SU12uAyJMmUqQZBqh
         gpig==
X-Gm-Message-State: AOJu0YyPiXK/cfaYvnOhnDYRL+Hx7suS1C2G5NzFmqcQfn7miW+qQiMe
	FEhjDUkxT5tFmbwVpf9i5d1vrH2qRSGhr19LNB5EKPsZKKfAyiJbv3IO
X-Gm-Gg: ASbGncv8heVYkwkjER1MLANTuCZXx4aw3RDcxqOEqw2sIJunknFF+5p/JSrO0fYP6ig
	wRE2+uqkSSEV4XiIcp7UKmeIxijaZ41Canpft1GopgoUfc+roT76AaBKkOoFT+KD3nvVAyVW/hF
	wfGIhCufi/PW7caUiz1nUeNOL2BaFmXqC7/h18ttPu8E2QtkVem+5/PzH48kS/YdUgbt1EGY78g
	m2PDB2Mbg4Tv2N89Kb2uALY0iumdy/shUDGCeB7zqN2I5Jo4ONKfN6uGl18nDRa6tdvDysgYidH
	Nixvn8qV5Dy2/iJ/sFFR+zVFnsaauyQA8VhJsn6PWx0S3sr8pepTgOxrtqv0kpy7pEljhEJoBE2
	2RM0nQ/Uq0qr/ZN0Sf1OeL1HYwve8/pwutn5u9BSnenpxILf/oGYW1YIG696Bh+Gl8Gs0xGnFBS
	KgpEtQ1HRT7OdIKWa2R8aaJPZl8dl18fDCxH8H
X-Google-Smtp-Source: AGHT+IGPYJO+3wGq7W/91GTpmWuHdKuKLB5hhINS7HXYuEXG63yQWKdxdfHkTPOB4/z/Oneg8f759A==
X-Received: by 2002:a05:6214:76e:b0:783:aeed:f597 with SMTP id 6a1803df08f44-783aeedf81emr8376456d6.56.1757877934550;
        Sun, 14 Sep 2025 12:25:34 -0700 (PDT)
Received: from Latitude-7490.ht.home ([2607:fa49:8c41:2600:88f2:c609:e1c6:6429])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-7858cb5ac70sm472436d6.20.2025.09.14.12.25.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Sep 2025 12:25:34 -0700 (PDT)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org,
	Chali Anis <chalianis1@gmail.com>
Date: Sun, 14 Sep 2025 15:25:31 -0400
Message-Id: <20250914192531.14494-1-chalianis1@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250914_122536_092460_225C5DBD 
X-CRM114-Status: GOOD (  10.10  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] efi: payload: entry-single: memory need to be alloccated as data.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Chali Anis <chalianis1@gmail.com>

The entry single is used in x86, this memory allocation need to be set to
data since it is used to initialise the malloc memory. set all this region
to loader code could represent a security issue since we autorise memory
execution.

Fixes: 7497c86c5032 ("efi: payload: early-mem: add memory type on early mem allocation")
Signed-off-by: Chali Anis <chalianis1@gmail.com>
---
 efi/payload/entry-single.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/efi/payload/entry-single.c b/efi/payload/entry-single.c
index b7171bb24bfa..8600bd845c49 100644
--- a/efi/payload/entry-single.c
+++ b/efi/payload/entry-single.c
@@ -37,7 +37,7 @@ void efi_main(efi_handle_t image, struct efi_system_table *sys_table)
 		BS->handle_protocol(efi_loaded_image->device_handle,
 				&efi_device_path_protocol_guid, (void **)&efi_device_path);
 
-	mem = efi_earlymem_alloc(sys_table, &memsize, EFI_LOADER_CODE);
+	mem = efi_earlymem_alloc(sys_table, &memsize, EFI_LOADER_DATA);
 
 	mem_malloc_init(mem, mem + memsize - 1);
 
-- 
2.34.1



