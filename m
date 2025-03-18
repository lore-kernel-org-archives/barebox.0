Delivery-date: Tue, 18 Mar 2025 08:44:31 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuRcl-000wzp-2z
	for lore@lore.pengutronix.de;
	Tue, 18 Mar 2025 08:44:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuRck-0007NK-O8
	for lore@pengutronix.de; Tue, 18 Mar 2025 08:44:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=aC6wQsYrSCe22s+igO1w/GMRee2Jevu/E/48tdexEAU=; b=Nam+ZVD0g6VmDuMOQvRnsifDJg
	TuiuYd1TUWuIXSkeUV1zthxzN3aV11KCBkwYDMIbTgSfW6nIMK/BKPacX5pRnKkGX+K4FJNHiyQiN
	Sjt31MYsh8Hrpyp54zyOjidxwO/QM8RgB//T4Uwvvto69Azzzi5f/Ivg18PqfxG9aFMLVNJMSuZjM
	DhaKO3k2hitrI4wqTp9fiBh3d33q8I+Ynp0p/Hej86jyYpWc0PUVea1GOzmvm2imzatDvOxcU3fv5
	rshygzX2by4bBWDhR7+PN2BTQDX5E0QbMIo65UtaB7FPS7M5I2Tj5461zXek2OAX8NqFQcQOOFO+G
	NIzBrMKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuRc4-00000004ywR-09uW;
	Tue, 18 Mar 2025 07:43:48 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuRc1-00000004yvI-0xqC
	for barebox@lists.infradead.org;
	Tue, 18 Mar 2025 07:43:46 +0000
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-549644ae382so6021423e87.1
        for <barebox@lists.infradead.org>; Tue, 18 Mar 2025 00:43:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1742283822; x=1742888622; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=aC6wQsYrSCe22s+igO1w/GMRee2Jevu/E/48tdexEAU=;
        b=j5oQU332eWOsTRM/oN8OjLwTu+eHRc048BWsrA4VfiZXrEWOEUnwiIUxUpqkDwUywa
         qrEuSzPAgNjKuQ6wwBiBW993AihDTZC3QPUawiK01RSWK7sZlesoHdTxV6lO8Q64nMOc
         bIM+qmYPTrW4s0/9oIpGjlEx/XK25E5Ol6vWNcfQuGl6j60oBd8yaQoHh47/ubluCUB+
         LUp2Msho9JY3JalGdU+uA4+Rs2rxsJ3KrW5a2voaTx64VVU2JW0PChEn1sCRuc0cKLZw
         MjeUET6zNBPcI1er8f5d7zFHcVwQBTiYXJqhR1Gqy1MZcIytSlkLvIJY8oz6KS9+lltO
         tiYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742283822; x=1742888622;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aC6wQsYrSCe22s+igO1w/GMRee2Jevu/E/48tdexEAU=;
        b=Uxxm0WpuuRF54aWEZVEUHgxRj5I67vh3LqDV/E1Tc+YLp3DRaxyxRKOz2aqsdvlWHt
         jO7BbjnCFoVZVUx8lhWNLrWy84z9cIf0VTgm04GT1uvBL/kRkdLHOTbIRl9QbuYmXNSx
         7drerqzfzytCnK4JhnTtAwpe0/KVOary95+p4InCkwwNvXmAr2Trz2uMrsiGxuLiOCyp
         v9c5/g4RmPbbvbefucsuY6Fg1E6MKcvbwE5bgtmfaBwmQGkM2jFCsLDBxdQTiK3P9WdY
         cnTdLsEvSv5/JPbI2jS+RipsTAm2esuj2ma8atraM6qSvOTjSpdX3qLDc7cn4QQkvOxu
         bX+w==
X-Gm-Message-State: AOJu0YwoDkKuoiGx8QC5UKugvZUDiygcxEpCFDsnnojbq7ZqAjKcu2uh
	vm/7/ZOzDdk5SdZg+YoUqLIGP5cMf6TE7nOSYfeyRsOtMd52ZfzloJUZYA==
X-Gm-Gg: ASbGncsFOjZu+K4pz+v0AYK3RPcKqcDtI/GtqInNrT5iOqJbpS6/dOW5ktniEsqKGNf
	7oMzxTxItWxcGI7W3KMfq8T1bxL6ZJE6Ipc7YycmKzkBhqahm9YSE3WgqrrgvFzTqYW7vvXsLxJ
	ICrsS2BCUwVno1H9fuRUNiIu8/ud3HwVCu5o6zNFelFSksp2tmjoh/oX4zHdJA8QqAw56Y7qzmT
	FT6LUYZDKTiemPFcGuEwqq0Okc5UNlGwLPFuPJtV6/Ql2SDIlkpURB3co90gPWfKEbYuv9HniKH
	PdaJ4kNzT5qlTRI0f2cTqkhCN04XpmBg0PL3eZ2iee79i5r9fz5JKxL3OQEts0HGl8Nw
X-Google-Smtp-Source: AGHT+IFOijxump7F3hPqXX/l28bFyHseB5ZOaOqL+Ts2QVgYC64kJskSloGqriNoP7fbh0gosWapPg==
X-Received: by 2002:a05:6512:158a:b0:545:8a1:536e with SMTP id 2adb3069b0e04-549c38f5621mr8220065e87.6.1742283822207;
        Tue, 18 Mar 2025 00:43:42 -0700 (PDT)
Received: from localhost.localdomain ([188.243.23.53])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-549ba8a9525sm1571286e87.238.2025.03.18.00.43.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Mar 2025 00:43:41 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Tue, 18 Mar 2025 10:43:23 +0300
Message-Id: <20250318074327.37730-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250318_004345_268461_58EF59F6 
X-CRM114-Status: GOOD (  10.93  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/5] ARM: at91: Add PBL_BREAK support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This adds PBL_BREAK support to the barebox at91 header.
Since we're here, let's set the header parameters to the defaults
for the barebox and do some code formatting to improve readability.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 include/mach/at91/barebox-arm.h | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/include/mach/at91/barebox-arm.h b/include/mach/at91/barebox-arm.h
index 3a041b4557..ef4bb185bc 100644
--- a/include/mach/at91/barebox-arm.h
+++ b/include/mach/at91/barebox-arm.h
@@ -34,15 +34,16 @@ static __always_inline void __barebox_at91_head(void)
 		".endr\n"
 		"2:\n"
 	);
+	pbl_barebox_break();
 }
 
 #define SAMA5_ENTRY_FUNCTION(name, stack_top, r4)				\
-	void name (u32 r0, u32 r1, u32 r2, u32 r3);				\
+	void name (u32 r0, u32 r1, u32 r2);					\
 										\
 	static void __##name(u32);						\
 										\
 	void __naked __section(.text_head_entry_##name)	name			\
-				(u32 r0, u32 r1, u32 r2, u32 r3)		\
+				(u32 r0, u32 r1, u32 r2)			\
 		{								\
 			register u32 r4 asm("r4");				\
 			__barebox_at91_head();					\
@@ -50,7 +51,7 @@ static __always_inline void __barebox_at91_head(void)
 				arm_setup_stack(stack_top);			\
 			__##name(r4);						\
 		}								\
-		static void noinline __##name(u32 r4)
+	static void noinline __##name(u32 r4)
 
 /* BootROM already initialized usable stack top */
 #define SAMA5D2_ENTRY_FUNCTION(name, r4)					\
@@ -62,7 +63,7 @@ static __always_inline void __barebox_at91_head(void)
 #define SAMA5D4_ENTRY_FUNCTION(name, r4)					\
 	SAMA5_ENTRY_FUNCTION(name, SAMA5D4_SRAM_BASE + SAMA5D4_SRAM_SIZE, r4)
 
-#define SAM9_ENTRY_FUNCTION(name)	\
+#define SAM9_ENTRY_FUNCTION(name)						\
 	ENTRY_FUNCTION_WITHSTACK_HEAD(name, AT91SAM9261_SRAM_BASE + AT91SAM9261_SRAM_SIZE, \
 				      __barebox_at91_head, r0, r1, r2)
 
-- 
2.39.1



