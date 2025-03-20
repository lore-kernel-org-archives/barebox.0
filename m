Delivery-date: Thu, 20 Mar 2025 10:15:13 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tvBzd-001paP-2B
	for lore@lore.pengutronix.de;
	Thu, 20 Mar 2025 10:15:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tvBzc-0007rf-EK
	for lore@pengutronix.de; Thu, 20 Mar 2025 10:15:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PYZIGcP3YBcNMT3agFX5Z5Gb/6Vxhp90m7b4dcw0W+I=; b=YbocfDvkzDjKC0te2bAvbctKXj
	8VjdQ4awqX5Ja9oS9jRx+V4SaKdkasMZaHbDj8mHlkd8hzyIsGZ8tAZVUlUYCEmxrZUH3h5K1T0Xi
	hfX2WWNnOJX5xCuOJOdlD/V6q3+90cTJdDY8gNdKxCt6U33XLmI2TiQIN89uwHGnFXenivY4sg8KH
	7d7AO9jCE268X895WwSnmVj0D51kgk5nzeIPUEdDdCdMkHOPMyNOFYsTuvFiKtKtz+B/AjVKqz0Zg
	06zXSc7qPb/B/BAaYwJVkwtQb56WrcZP2Re1ZWJBTb1aFLBd1nIKwBI/T920vJVNATEE7FnvGEP8c
	ws4smDoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tvBz4-0000000BeqL-2WK5;
	Thu, 20 Mar 2025 09:14:38 +0000
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tvBz0-0000000BeoQ-3ANq
	for barebox@lists.infradead.org;
	Thu, 20 Mar 2025 09:14:35 +0000
Received: by mail-lj1-x229.google.com with SMTP id 38308e7fff4ca-30b83290b7bso6085781fa.1
        for <barebox@lists.infradead.org>; Thu, 20 Mar 2025 02:14:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1742462072; x=1743066872; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PYZIGcP3YBcNMT3agFX5Z5Gb/6Vxhp90m7b4dcw0W+I=;
        b=mgi9+SP0+570V1XwpS1twG/HssNeEBijmMzVV0FbfT3J23NxJz+AkIHwhUIx3mYuxg
         PKZbADGzlmU7xJEUwElndvzSIJ2c0Z5CreSqomTspNTHvkacbL+wjJ8CGXBQxZf8ASLt
         U/Btx6VYUFAyzHAu+QDmQrj6nOyXXY7LP323noSKzR+3/lQvTIL64OW7e+WoImz98fS5
         H6GhS7dkimBF7eOPA0VNwHAlfJsmQDGIY8yU0zNTM9Fh2O8I78WhnflNykBeOu4Vh0Mp
         TjFRLoczqBgC9fxIcFWaK16AQjo55bFGIXqu/9FBQfLqtRKRITTQTJEEcZZ0zgauhfJa
         EI1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742462072; x=1743066872;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PYZIGcP3YBcNMT3agFX5Z5Gb/6Vxhp90m7b4dcw0W+I=;
        b=OM3rchUcstNFAYL+IqYDpUb3BpOwXu046BdPrGyqE5MBWW5UhlOc9jFWK48TFMQ7C3
         3FFANxp6ETdtH7VJxcQgGILp9UDf7wcoGtlIi3ggyVEdFjncxFUfkDg/h74LtFIi0lo8
         4VQCcEXnvih9E62kDUmvQ6eyMsygYf7cMTr660Q1n8kLU1Eb649Mi9/ACyMdyUGFZT7Q
         bVLmS3hezlV43lfhARgCqD8S1j7rmRMxAhjhtwUjoNLoIJg9VK2wjcfHX4xWJ3XgV22V
         8jUiuvLl0pAExPozcZSwx2tfk8lH3Ea7vSzplpHPVaf6H+nAOOCvU/2pBALhmVQDcJQK
         k29A==
X-Gm-Message-State: AOJu0YzifnJWzwN6JO3v92NWoNmEWgF7fbskgEWx2TYN+K9U6Fz4m8h4
	QyqHNrsT5jmp5++KqoHnuLNUiK8jncfdjrRlrJ+uKK950BEfEKbcRUOPcA==
X-Gm-Gg: ASbGncvm9egf7v/4GM2yQPJz0Up9jWbGm5zltAzvigsLWT0jCzhFjLi5cN7VXLftp8u
	Qp2IBPjMv/7oaCp0Ng4grLRxNaokcz7ep2yg1x1juH+8tpvA4TwzDwa+aAHEMwI1c37JgEF1gUh
	qFCNiE58lpD69TC9cY6u5h42o08aO/ZtflOLgkphDPQiXkpL4wVDdtlTFp4qziGfzksFcbKyc7m
	2X+GdxQEkDtlns3THmQx3ANwbCo9SIl936AJ/iz4zcD+YW+zcbV8vNuutGvWVMa4xn7qYH35ItM
	EZYA3lmIMLZTyggppsOy/MyIK2EYRS2qdlrk/i1zF227B9u7HIm/YvOXyF8wQ/q7a4+3+G7Qaws
	dgw==
X-Google-Smtp-Source: AGHT+IF2i8DZea/8WFP6pVxjJb8T1zLUXp3V1NwIUKe4D/Pop1h0mxILHrNf5N5ocNr+/YymtxsNkA==
X-Received: by 2002:a2e:8904:0:b0:30d:694d:173b with SMTP id 38308e7fff4ca-30d6a4d805amr20961941fa.33.1742462072281;
        Thu, 20 Mar 2025 02:14:32 -0700 (PDT)
Received: from localhost.localdomain ([188.243.23.53])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30c3f0d1bb2sm25999691fa.4.2025.03.20.02.14.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Mar 2025 02:14:31 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Thu, 20 Mar 2025 12:14:15 +0300
Message-Id: <20250320091419.42095-3-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20250320091419.42095-1-eagle.alexander923@gmail.com>
References: <20250320091419.42095-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250320_021434_791798_D20E6D91 
X-CRM114-Status: GOOD (  11.81  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 3/7] ARM: at91: xload: Remove len argument from at91_fat_start_image()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The len argument to at91_fat_start_image() is common for all callers,
so it can be removed.
While we're at it, let's reduce the maximum image load size,
since 2M is sufficient for all cases.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 arch/arm/mach-at91/xload.c | 12 +++++-------
 1 file changed, 5 insertions(+), 7 deletions(-)

diff --git a/arch/arm/mach-at91/xload.c b/arch/arm/mach-at91/xload.c
index fee2c715ec..4fec02afe1 100644
--- a/arch/arm/mach-at91/xload.c
+++ b/arch/arm/mach-at91/xload.c
@@ -18,14 +18,12 @@ struct xload_instance {
 	s8 pins[15];
 };
 
-static void at91_fat_start_image(struct pbl_bio *bio,
-				 void *buf, unsigned int len,
-				 u32 r4)
+static void at91_fat_start_image(struct pbl_bio *bio, void *buf, u32 r4)
 {
 	void __noreturn (*bb)(void);
 	int ret;
 
-	ret = pbl_fat_load(bio, "barebox.bin", buf, len);
+	ret = pbl_fat_load(bio, "barebox.bin", buf, SZ_2M);
 	if (ret < 0) {
 		pr_err("pbl_fat_load: error %d\n", ret);
 		return;
@@ -95,7 +93,7 @@ void __noreturn sama5d2_sdhci_start_image(u32 r4)
 
 	/* TODO: eMMC boot partition handling: they are not FAT-formatted */
 
-	at91_fat_start_image(&bio, buf, SZ_16M, r4);
+	at91_fat_start_image(&bio, buf, r4);
 
 out_panic:
 	panic("FAT chainloading failed\n");
@@ -131,7 +129,7 @@ void __noreturn sama5d3_atmci_start_image(u32 boot_src, unsigned int clock,
 	sama5d3_pmc_enable_periph_clock(SAMA5D3_ID_PIOD);
 	for (pin = instance->pins; *pin >= 0; pin++) {
 		at91_mux_pio3_pin(IOMEM(SAMA5D3_BASE_PIOD),
-					 pin_to_mask(*pin), instance->periph, 0);
+				  pin_to_mask(*pin), instance->periph, 0);
 	}
 
 	sama5d3_pmc_enable_periph_clock(instance->id);
@@ -140,7 +138,7 @@ void __noreturn sama5d3_atmci_start_image(u32 boot_src, unsigned int clock,
 	if (ret)
 		goto out_panic;
 
-	at91_fat_start_image(&bio, buf, SZ_16M, boot_src);
+	at91_fat_start_image(&bio, buf, boot_src);
 
 out_panic:
 	panic("FAT chainloading failed\n");
-- 
2.39.1



