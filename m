Delivery-date: Thu, 13 Jun 2024 01:28:35 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sHXON-00546J-0e
	for lore@lore.pengutronix.de;
	Thu, 13 Jun 2024 01:28:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sHXOM-00069d-Dx
	for lore@pengutronix.de; Thu, 13 Jun 2024 01:28:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wPRkdaAQjWMD4GC67hXLMjBIq9gsdamKjTj8UzRE5x4=; b=i70MWtlyQpIp5r
	MV9mOZBScbY6Bly52KjDFRuN24DOjRqFQAKhtJ4TVIwyucubXIkAn3MNWVzXbe60IJe/vCNKkTQ/a
	CXZX9H4RGFNKqvNU7iEKK+qfM7RXKe16kaVcPUFaIgIRD+3FsvinOQLXKlCCtJeZVEkf4ZWXaAaEr
	NNiJxhgiEGk1UHGq1/PTZquHA5Qt27Z0i23RDEj2PsE6IghBp0VNCFGKiGry/aaRoEZtQGELwfUXB
	ze4oTfcfbwszgpiYudOhzh6DERp+NeTv4fJp/rcGJTBR0oP7kSRTZNNHBoslnDBJaD2CY7ZuvcJPV
	Ll7Qpp7lyX+kZv3/Ju4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHXNm-0000000ETpS-0ih0;
	Wed, 12 Jun 2024 23:27:58 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHXNi-0000000ETnO-0ZUR
	for barebox@lists.infradead.org;
	Wed, 12 Jun 2024 23:27:55 +0000
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-52bc0a9cea4so379973e87.0
        for <barebox@lists.infradead.org>; Wed, 12 Jun 2024 16:27:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718234870; x=1718839670; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wPRkdaAQjWMD4GC67hXLMjBIq9gsdamKjTj8UzRE5x4=;
        b=QB+lk4WWE4au2xdVboy5eUDbkrWwQleVxBIwZMccp1AtbYGOZ8kK+z4wqUImb+UI3j
         PrbpZgtMOmCgu0Fm7qqLCwYGd5v8Gd2TYgVHo4KcF6I5PxmMdMtyCkBPCm1Ql6xUGuUM
         F0pFQ7T8Qu6kKaLsDjwzeKhTIq8XcX8Sjnkbt0kFVD8vEhm38w5uqPIAjAB8BbctxfoN
         m9t7VAel1DLlefsUHwYD5SDNxaEZw+Ml73sSghc+E+qEdIY4Dk76qi6B6Jn94IOnVn3w
         2FsWK5JBaIFA6su4jQ7BSZaNUAm1Cm7T7IDzB3iMNWCwTAxafgk+hAQctYO3MwkJjnl9
         d/tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718234870; x=1718839670;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wPRkdaAQjWMD4GC67hXLMjBIq9gsdamKjTj8UzRE5x4=;
        b=PeUA4t1RspYLY6UsFFxB+GczRWUXq4XE/dMcBISSuokVREOLAFkzg4LUsIO6gCwmSc
         aClkwf+p5KIQk6MUnj2TfSK6hFO1D9rTcU8TEHvhX+v+oEMFiLVYdy0XREY0il1iVT/W
         ls/1NrmUO5xu/yGAx41inpt1tribuXQkasaHt3LMmQcfvEDJvWGRm5/siZ6CzRdQtU2D
         vo/1NuPr07th6rtNCOM18XRf05hJYwoQu0PHWjpA9gspzU+IgFPCh3hElO30GZC6Sr5C
         nz7U0u1RnAj53KTVqKVBB0O2Fs6aJz/a1mT22e8anCn8XxluOwDftcUgDy4SWw95w0k9
         UyAA==
X-Gm-Message-State: AOJu0Ywr0hVxtvvf3WrL2qfJZK6FNllsFw195muyNvsbe6ctWqBF301N
	M7jsTbIAFhrh5x4yDvRo4pUv1Fbc6wJBMLtCXZ/oc7GkavjanzH+DDCFnA==
X-Google-Smtp-Source: AGHT+IGfQXMskt9g4DvHqcU0TYFzvqfUhigZkim+dlBoxYq2uObXTuYBj/JeVSjwAUv7LgBz+BZ74Q==
X-Received: by 2002:a19:911b:0:b0:52c:7fc8:8658 with SMTP id 2adb3069b0e04-52ca0465643mr223857e87.34.1718234869500;
        Wed, 12 Jun 2024 16:27:49 -0700 (PDT)
Received: from cinco.. (109-252-6-122.nat.spd-mgts.ru. [109.252.6.122])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52ca282593esm19024e87.44.2024.06.12.16.27.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Jun 2024 16:27:49 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Thu, 13 Jun 2024 02:28:07 +0300
Message-Id: <20240612232807.142127-4-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20240612232807.142127-1-antonynpavlov@gmail.com>
References: <20240612232807.142127-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240612_162754_200136_68E0179F 
X-CRM114-Status: GOOD (  10.75  )
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
Subject: [PATCH 3/3] MIPS: rename pbl_main_entry() -> barebox_pbl_start()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Unify function and file names with ARM and RISC-V.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/boards/board-dt-2nd.S                   | 4 ++--
 arch/mips/boards/netgear-wg102/lowlevel.S         | 2 +-
 arch/mips/boot/Makefile                           | 2 +-
 arch/mips/boot/{main_entry-pbl.c => uncompress.c} | 6 +++---
 arch/mips/include/asm/asm.h                       | 2 +-
 5 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/arch/mips/boards/board-dt-2nd.S b/arch/mips/boards/board-dt-2nd.S
index a1465f09e36..1e70574509c 100644
--- a/arch/mips/boards/board-dt-2nd.S
+++ b/arch/mips/boards/board-dt-2nd.S
@@ -20,12 +20,12 @@ ENTRY_FUNCTION(start_dt_2nd)
 
 	stack_setup
 
-	/* pbl_main_entry() computes fdt_len by itself
+	/* barebox_pbl_start() computes fdt_len by itself
 	 * if fdt == fdt_end */
 	move	a0, v1 /* fdt */
 	move	a1, v1 /* fdt_end */
 	PTR_LI	a2, SZ_256M /* ram_size */
-	PTR_LA	v0, pbl_main_entry
+	PTR_LA	v0, barebox_pbl_start
 	jal	v0
 	 nop
 
diff --git a/arch/mips/boards/netgear-wg102/lowlevel.S b/arch/mips/boards/netgear-wg102/lowlevel.S
index 6fdcfa3ccae..3d9715e8fc7 100644
--- a/arch/mips/boards/netgear-wg102/lowlevel.S
+++ b/arch/mips/boards/netgear-wg102/lowlevel.S
@@ -61,7 +61,7 @@ sdram_configured:
 	stack_setup;
 
 	lw	a0, 0;
-	la	v0, pbl_main_entry;
+	la	v0, barebox_pbl_start;
 	jal	v0;
 	 nop;
 
diff --git a/arch/mips/boot/Makefile b/arch/mips/boot/Makefile
index d1e27b5e6b8..da3f53d3123 100644
--- a/arch/mips/boot/Makefile
+++ b/arch/mips/boot/Makefile
@@ -5,4 +5,4 @@ obj-y += main_entry.o
 
 obj-$(CONFIG_OFDEVICE) += dtb.o
 
-pbl-y += main_entry-pbl.o
+pbl-y += uncompress.o
diff --git a/arch/mips/boot/main_entry-pbl.c b/arch/mips/boot/uncompress.c
similarity index 87%
rename from arch/mips/boot/main_entry-pbl.c
rename to arch/mips/boot/uncompress.c
index 7b5e81817e0..9344679a6b8 100644
--- a/arch/mips/boot/main_entry-pbl.c
+++ b/arch/mips/boot/uncompress.c
@@ -19,16 +19,16 @@ extern void *input_data_end;
 unsigned long free_mem_ptr;
 unsigned long free_mem_end_ptr;
 
-void pbl_main_entry(void *fdt, void *fdt_end, u32 ram_size);
+void barebox_pbl_start(void *fdt, void *fdt_end, u32 ram_size);
 
-void __section(.text_entry) pbl_main_entry(void *fdt, void *fdt_end,
+void __section(.text_entry) barebox_pbl_start(void *fdt, void *fdt_end,
 					   u32 ram_size)
 {
 	u32 piggy_len, fdt_len;
 	void *fdt_new;
 	void (*barebox)(void *fdt, u32 ram_size);
 
-	puts_ll("pbl_main_entry()\n");
+	puts_ll("barebox_pbl_start()\n");
 
 	/* clear bss */
 	memset(__bss_start, 0, __bss_stop - __bss_start);
diff --git a/arch/mips/include/asm/asm.h b/arch/mips/include/asm/asm.h
index f6daae67579..d07e26cff03 100644
--- a/arch/mips/include/asm/asm.h
+++ b/arch/mips/include/asm/asm.h
@@ -97,7 +97,7 @@ EXPORT(symbol)						\
 	PTR_LA	a0, __dtb_ ## dtb##_start;		\
 	PTR_LA	a1, __dtb_ ## dtb##_end;		\
 	PTR_LI	a2, ram_size;				\
-	PTR_LA	v0, pbl_main_entry;			\
+	PTR_LA	v0, barebox_pbl_start;			\
 	jal	v0;					\
 	 nop;						\
 							\
-- 
2.39.0



