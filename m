Delivery-date: Thu, 13 Jun 2024 01:28:35 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sHXON-00546W-26
	for lore@lore.pengutronix.de;
	Thu, 13 Jun 2024 01:28:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sHXOM-00069p-VO
	for lore@pengutronix.de; Thu, 13 Jun 2024 01:28:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZqbvMDayW9IC+PPFORq/KOOdvO/z/shp/kXVAAJfnAc=; b=MVJkSiSeETFX87
	b+M98TBrf8PaCUruldywdsHEJQPKBn6sLEBScsSbqiYSQl8aLwhbuRIPUJKPj65yP/IdaOWRVbcUh
	M5oMjf7/dRp7m+flSrUteo6Np+a1wJ8mCfUtdmP3v97AZK/f6Mc4jH387KYIYmtSJdAKVPZQUb1H1
	3oRVITx5w0bHciLDtsCACVdXuKxxgAdQw9iIFIXJbPwUF9TiKzZZ0VVIwwV5fFXhbw8l0oehp8Gxi
	wScmxMzoP+ce+uQehma83IdjHjV9XRzlpaepN/L2S+FGxJwNyC0450fjiCa3oZLAAh1PuQle6CzUO
	GFQp1F8htXp5+ZHOFHkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHXNk-0000000ETpB-3pPZ;
	Wed, 12 Jun 2024 23:27:56 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHXNg-0000000ETn8-2V7k
	for barebox@lists.infradead.org;
	Wed, 12 Jun 2024 23:27:54 +0000
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-52c8c0d73d3so567205e87.1
        for <barebox@lists.infradead.org>; Wed, 12 Jun 2024 16:27:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718234868; x=1718839668; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZqbvMDayW9IC+PPFORq/KOOdvO/z/shp/kXVAAJfnAc=;
        b=AWTBDqV1ZeG6P1y/2i+RYG4WBvvx+Xv4RdaGNFmivrwcTyFer1b56cLPDGe4k7DpES
         r77sF8SAppQWiSDMt0Q3kvdIT+fY56m0Y04ViiFOgNYtI5K3gTUhBvuUw1Smmkcpl3fP
         cIALKIOKDUlWH+yj52RkD+OTZVTTciINqtjf3lglVMxHFS4zvwT84ty8dsd+xS8qGcft
         8r4jsk5kx50v4Q1oLNtf74EBzLKMxcBtcdB4WpDiPT1ktRTaADIeVbTW+hQQ2SgVtEhS
         gJdDKVtMHqChL1evWA3MPVvvI7a0tJkQjnfgSxFqAipNx0gyMij7796s9n75A598GeLO
         uSsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718234868; x=1718839668;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZqbvMDayW9IC+PPFORq/KOOdvO/z/shp/kXVAAJfnAc=;
        b=dICXOYysCfhIcd0oJLh38Em5A1O8rEQ4aVqOk7Dly/olmmFQCb7HN9ifYXvd6Qqu5z
         QC5+aXhb4iNUdr1Zf4/xnkGL5Om+hQSw3NPAKe6pRBLEm2iUfduH784pRCLShPl8WiyK
         IhFt1+QPuvlilaowRLBhNAR/nOxUMEnHkzYpXuGG//NDHJVzHOHTuGL/V+gkDrOM2pfk
         kFBasfdRo120bckKLvb+6jFQjbjgjMYjb6tMFvN6wCDUvYtEF3SjJKHXa2ukC1YVRT4H
         MzhNM/oTEI2HUW1qngr/T1vYPXJSBKsY0MfcfyTk6VpBc642v6MO4Cy3O66iaJc031ND
         RceQ==
X-Gm-Message-State: AOJu0YyaoyO2eziYm8ka1AMlZGVwpi0XsxIUjtt8sYsbI8eCRrlbh/Nu
	zb6ZjFdbR0efk8QPM+4sut+fl1mogMBjSTzt/Y+Jyy8Uot4rjeTaSrds3g==
X-Google-Smtp-Source: AGHT+IEHj3s44q7mE1gXRF80yiKsdShoOvgt8zHZ5Qz1YL4Hkwh3+4MaaaG3Hu8jLzKv0kSErvsWeQ==
X-Received: by 2002:ac2:4142:0:b0:52c:81d8:7bca with SMTP id 2adb3069b0e04-52c9a3d1c16mr1782949e87.22.1718234868129;
        Wed, 12 Jun 2024 16:27:48 -0700 (PDT)
Received: from cinco.. (109-252-6-122.nat.spd-mgts.ru. [109.252.6.122])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52ca282593esm19024e87.44.2024.06.12.16.27.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Jun 2024 16:27:47 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Thu, 13 Jun 2024 02:28:05 +0300
Message-Id: <20240612232807.142127-2-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20240612232807.142127-1-antonynpavlov@gmail.com>
References: <20240612232807.142127-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240612_162752_666047_DF06C0C5 
X-CRM114-Status: GOOD (  11.40  )
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
Subject: [PATCH 1/3] MIPS: don't pass fdt_size into main_entry()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The commit 113c2bc244649430 ("MIPS: remove request_sdram_region "fdt"")
makes glob_fdt_size unused. The patch drops glob_fdt_size and all
variables used for glob_fdt_size initialization inside main_entry().

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/boot/dtb.c            |  1 -
 arch/mips/boot/main_entry-pbl.c |  4 ++--
 arch/mips/boot/main_entry.c     |  6 ++----
 arch/mips/boot/start.c          |  9 ++++-----
 arch/mips/lib/reloc.c           | 12 +++++-------
 5 files changed, 13 insertions(+), 19 deletions(-)

diff --git a/arch/mips/boot/dtb.c b/arch/mips/boot/dtb.c
index ece1494e5fd..5a62ef41e34 100644
--- a/arch/mips/boot/dtb.c
+++ b/arch/mips/boot/dtb.c
@@ -12,7 +12,6 @@
 #include <asm/addrspace.h>
 
 void *glob_fdt;
-u32 glob_fdt_size;
 
 int of_add_memory_bank(struct device_node *node, bool dump, int r,
 		u64 base, u64 size)
diff --git a/arch/mips/boot/main_entry-pbl.c b/arch/mips/boot/main_entry-pbl.c
index 389dc94f370..01833a508d3 100644
--- a/arch/mips/boot/main_entry-pbl.c
+++ b/arch/mips/boot/main_entry-pbl.c
@@ -35,7 +35,7 @@ void __section(.text_entry) pbl_main_entry(void *fdt, void *fdt_end,
 {
 	u32 piggy_len, fdt_len;
 	void *fdt_new;
-	void (*barebox)(void *fdt, u32 fdt_len, u32 ram_size);
+	void (*barebox)(void *fdt, u32 ram_size);
 
 	puts_ll("pbl_main_entry()\n");
 
@@ -53,5 +53,5 @@ void __section(.text_entry) pbl_main_entry(void *fdt, void *fdt_end,
 	memcpy(fdt_new, fdt, fdt_len);
 
 	barebox = (void *)TEXT_BASE;
-	barebox(fdt_new, fdt_len, ram_size);
+	barebox(fdt_new, ram_size);
 }
diff --git a/arch/mips/boot/main_entry.c b/arch/mips/boot/main_entry.c
index d0c69f3c82c..1f8f7529a31 100644
--- a/arch/mips/boot/main_entry.c
+++ b/arch/mips/boot/main_entry.c
@@ -17,7 +17,7 @@
 extern void exception_vec(void);
 extern void exception_vec_end(void);
 
-void main_entry(void *fdt, u32 fdt_size);
+void main_entry(void *fdt);
 
 static void trap_init(void)
 {
@@ -36,7 +36,6 @@ static void trap_init(void)
 }
 
 extern void *glob_fdt;
-extern u32 glob_fdt_size;
 extern unsigned long mips_stack_top;
 
 /**
@@ -44,7 +43,7 @@ extern unsigned long mips_stack_top;
  *
  * @note The C environment isn't initialized yet
  */
-void __bare_init main_entry(void *fdt, u32 fdt_size)
+void __bare_init main_entry(void *fdt)
 {
 	unsigned long malloc_start, malloc_end;
 	/* clear the BSS first */
@@ -68,7 +67,6 @@ void __bare_init main_entry(void *fdt, u32 fdt_size)
 	mips_stack_top = malloc_start;
 
 	glob_fdt = fdt;
-	glob_fdt_size = fdt_size;
 
 	start_barebox();
 }
diff --git a/arch/mips/boot/start.c b/arch/mips/boot/start.c
index 81603c8d7a5..2d258047fea 100644
--- a/arch/mips/boot/start.c
+++ b/arch/mips/boot/start.c
@@ -7,11 +7,10 @@
 
 #include <linux/kernel.h>
 
-void __noreturn _start(void *fdt, u32 fdt_size, u32 relocaddr);
-void __noreturn relocate_code(void *fdt, u32 fdt_size, u32 relocaddr);
+void __noreturn _start(void *fdt, u32 relocaddr);
+void __noreturn relocate_code(void *fdt, u32 relocaddr);
 
-void __noreturn __section(.text_entry) _start(void *fdt, u32 fdt_size,
-					      u32 relocaddr)
+void __noreturn __section(.text_entry) _start(void *fdt, u32 relocaddr)
 {
-	relocate_code(fdt, fdt_size, relocaddr);
+	relocate_code(fdt, relocaddr);
 }
diff --git a/arch/mips/lib/reloc.c b/arch/mips/lib/reloc.c
index a9078aa8136..ec351b66f75 100644
--- a/arch/mips/lib/reloc.c
+++ b/arch/mips/lib/reloc.c
@@ -40,8 +40,8 @@
 #include <linux/sizes.h>
 #include <asm-generic/memory_layout.h>
 
-void main_entry(void *fdt, u32 fdt_size);
-void __noreturn relocate_code(void *fdt, u32 fdt_size, u32 relocaddr);
+void main_entry(void *fdt);
+void __noreturn relocate_code(void *fdt, u32 relocaddr);
 
 /**
  * read_uint() - Read an unsigned integer from the buffer
@@ -106,7 +106,7 @@ static void apply_reloc(unsigned int type, void *addr, long off)
 	}
 }
 
-void __noreturn relocate_code(void *fdt, u32 fdt_size, u32 ram_size)
+void __noreturn relocate_code(void *fdt, u32 ram_size)
 {
 	unsigned long addr, length, bss_len, relocaddr, new_stack;
 	uint8_t *buf;
@@ -156,13 +156,11 @@ void __noreturn relocate_code(void *fdt, u32 fdt_size, u32 ram_size)
 
 	 __asm__ __volatile__ (
 			"move	$a0, %0\n"
-		"	move	$a1, %1\n"
 		"	move	$31, $0\n"
-		"	move	$sp, %2\n"
-		"	jr	%3\n"
+		"	move	$sp, %1\n"
+		"	jr	%2\n"
 		: /* no outputs */
 		: "r"(fdt),
-		  "r"(fdt_size),
 		  "r"(new_stack),
 		  "r"((unsigned long)main_entry + off));
 
-- 
2.39.0



