Delivery-date: Thu, 13 Jun 2024 01:28:37 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sHXOP-00547N-1S
	for lore@lore.pengutronix.de;
	Thu, 13 Jun 2024 01:28:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sHXOO-0006BB-T9
	for lore@pengutronix.de; Thu, 13 Jun 2024 01:28:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o2YkGGTvtBF4XLfqcc8ht9Cj4pKAgaDaTW8TWzB9Ue0=; b=xL7OUJtu2R0TdV
	A6MZj8epVpOWTyd2iTd2PS4O9bi9RXUkBdtnK8Vhn4LFqw47xwsaMMl10FoxHIi1766yBfH3SVxIF
	Ew+deYOovcAoJnxGXMZKYXVXjqUCBGPokP/lEj3VajKt+GY3tYD4wI5KayuEdazTOvWu8o0nBUqaX
	Enkzmrnx5BDA1q5A16BYC29tu7Q5XMYa1ZL2Hgv4qCOP0XT7rbxmXdL05+a0jyKs5VbtXgA52Fbrk
	HLRd3pr4Z05McMQT4HPfVG4Dpb7VxP0f/Fbq9EdEM0zCPAu96GaJRV0hVXXMc7XTDYcp9e0USaowF
	qTi3qJuKpsYNhTADN8pQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHXNl-0000000ETpJ-20gW;
	Wed, 12 Jun 2024 23:27:57 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHXNh-0000000ETnD-1JJl
	for barebox@lists.infradead.org;
	Wed, 12 Jun 2024 23:27:54 +0000
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-52962423ed8so530669e87.2
        for <barebox@lists.infradead.org>; Wed, 12 Jun 2024 16:27:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718234869; x=1718839669; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=o2YkGGTvtBF4XLfqcc8ht9Cj4pKAgaDaTW8TWzB9Ue0=;
        b=SMqnUD6d/NsEqEcXpyBDLmZvmZsyEqGZQVApWWdHnDaWobMc6/jpWu0mUlgBunK2U0
         blE2XwbZBNWP0L8nRc//t2kD3i15yA9bcWMBGtix6dFAHZbXuMJHwfHN5Fc/VxGaup87
         fpOcaIKP+kYqkKkZtN8+1RHMS6rxftdGdIWxrfgMEBHVUr8bY3xjJ+RUmR6zBSVV/DhI
         qmBoId1rs4szgBJvAFpLD8085aky2r0R5LS5cpDYoLUK316Knurpyzxwu/DvfhWJVvKC
         X5QTVMPZOrMZUR1vCBxfZywhHI6R4WOYqyJ8xGuIJvoNTf0AKhyEoSEyTGjW/m7ZrdCl
         acOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718234869; x=1718839669;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=o2YkGGTvtBF4XLfqcc8ht9Cj4pKAgaDaTW8TWzB9Ue0=;
        b=B0LmZHozNV1zuBwdvkWALl5v8cZJhRxOQMMXap97lWCd8M92H0Xt8BjgFV846s3Wey
         aldhnoViyFVwSSxtIZq7ndKoy9qzplghJJ5oAYPiXUhD5NHH+qQyLDoRORP2Sv6tIjcK
         3xb/WRKBMbrOT+x3oHKSgVbd7eSjRoEBbE6iZsz6igsUWHQoZpPYQhVeuVxDT+ykNOJO
         y6PyMFXb6G1WgumrZQLNryv/Fb432ZjcSJL1TwC+BuN9dEojofZwKqE7BOPC+BlvQCYw
         ItYVNm7kq0+K9VXNa3uXlGmgr+/qxFzZ4WuMZDbvJaBeoaVpK6PIJwA+MbZpzduAuNES
         11nA==
X-Gm-Message-State: AOJu0YwwqxTJUDI7qHE0XrjMg7Gupiiz7+Y53fEmiF0NTnhEJNUMHhfA
	TM2iNwLR64MV7caep5P3oyab0E5b8VM9Dh0zGlyI6U8Vutv0ZqMniOkz8g==
X-Google-Smtp-Source: AGHT+IEbWWkUDv/lQuwZ205Ts+0A07f1Dr/nclE/lv0zPSXtJue/6WnlvSxuBw1O7+bpIKDt6cf/7w==
X-Received: by 2002:a05:6512:3158:b0:52c:8dc9:20cc with SMTP id 2adb3069b0e04-52c9a405445mr1856186e87.57.1718234868813;
        Wed, 12 Jun 2024 16:27:48 -0700 (PDT)
Received: from cinco.. (109-252-6-122.nat.spd-mgts.ru. [109.252.6.122])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52ca282593esm19024e87.44.2024.06.12.16.27.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Jun 2024 16:27:48 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Thu, 13 Jun 2024 02:28:06 +0300
Message-Id: <20240612232807.142127-3-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20240612232807.142127-1-antonynpavlov@gmail.com>
References: <20240612232807.142127-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240612_162753_371394_FBF9BFD1 
X-CRM114-Status: UNSURE (   9.20  )
X-CRM114-Notice: Please train this message.
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
Cc: Oleksij Rempel <o.rempel@pengutronix.de>, Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] MIPS: pbl_main_entry(): inline barebox_uncompress()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Unify MIPS pbl_main_entry() with RISC-V barebox_pbl_start().

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/boot/main_entry-pbl.c | 16 ++++++----------
 1 file changed, 6 insertions(+), 10 deletions(-)

diff --git a/arch/mips/boot/main_entry-pbl.c b/arch/mips/boot/main_entry-pbl.c
index 01833a508d3..7b5e81817e0 100644
--- a/arch/mips/boot/main_entry-pbl.c
+++ b/arch/mips/boot/main_entry-pbl.c
@@ -21,15 +21,6 @@ unsigned long free_mem_end_ptr;
 
 void pbl_main_entry(void *fdt, void *fdt_end, u32 ram_size);
 
-static void barebox_uncompress(void *compressed_start, unsigned int len)
-{
-	/* set 128 KiB at the end of the MALLOC_BASE for early malloc */
-	free_mem_ptr = TEXT_BASE - SZ_128K;
-	free_mem_end_ptr = free_mem_ptr + SZ_128K;
-
-	pbl_barebox_uncompress((void*)TEXT_BASE, compressed_start, len);
-}
-
 void __section(.text_entry) pbl_main_entry(void *fdt, void *fdt_end,
 					   u32 ram_size)
 {
@@ -42,8 +33,13 @@ void __section(.text_entry) pbl_main_entry(void *fdt, void *fdt_end,
 	/* clear bss */
 	memset(__bss_start, 0, __bss_stop - __bss_start);
 
+	/* set 128 KiB at the end of the MALLOC_BASE for early malloc */
+	free_mem_ptr = TEXT_BASE - SZ_128K;
+	free_mem_end_ptr = free_mem_ptr + SZ_128K;
+
 	piggy_len = (unsigned long)&input_data_end - (unsigned long)&input_data;
-	barebox_uncompress(&input_data, piggy_len);
+
+	pbl_barebox_uncompress((void *)TEXT_BASE, &input_data, piggy_len);
 
 	fdt_len = (unsigned long)fdt_end - (unsigned long)fdt;
 	if (!fdt_len) {
-- 
2.39.0



