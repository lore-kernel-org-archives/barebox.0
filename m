Delivery-date: Tue, 25 Jul 2023 07:08:08 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOAHK-008zu1-2P
	for lore@lore.pengutronix.de; Tue, 25 Jul 2023 07:08:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOAHF-0004HS-NI
	for lore@pengutronix.de; Tue, 25 Jul 2023 07:08:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S4PUUxgPjR+04JYBb69E1/iMJgfnejEbZ6OTqwsNkO4=; b=cdfzbiF0Om//Ms
	HHYwQkERSJHURZh2h1TWBNu6YspH7GhTreTwl46hjLlxqDvOj2MtwVjT2PabkMEWtyce+Tlbz8buO
	HwdkSj9ToUBsZX45PudMzW+mVoYnlVvKe24xmy2+Y5a7K+v0q1XfOOuDBoFoA9WnGlbYLv3Im15oH
	P9j321ABV8tDeP54Ie+vFo28ATguG2JEy45TW6YkvfBljYhSivF8I1VJn5c5nOZNwIRl+Kish72SO
	cRjZlfbUi6WF1MzKGxtwIheOM1rNcbuo8/Bg3YY6NCtIh8knvHU736z4cl1kCcPX+NKZYJRqWDFyy
	zYb0fFgPI7yiqFPyRJVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qOAGD-006Feg-2D;
	Tue, 25 Jul 2023 05:07:01 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qOAG5-006FSh-0i
	for barebox@lists.infradead.org;
	Tue, 25 Jul 2023 05:06:54 +0000
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-51a52a7d859so12805782a12.0
        for <barebox@lists.infradead.org>; Mon, 24 Jul 2023 22:06:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690261611; x=1690866411;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S4PUUxgPjR+04JYBb69E1/iMJgfnejEbZ6OTqwsNkO4=;
        b=EGXJKhKqf/KI6h+QLFYxvNisaR0kIJmcRqZKcURtyqv8D0goGmYm9oDnZnZTEgGIEL
         +UKzQFagC+IYUfgNbf8sEqzllxNmBRN9L/kJLKaLF5n0AKxZbHDGfxl1dyIZdHqomOk8
         IUyFg1IVZE8RnGoW/Oeqq9HJ+ScbNYvy61xg4Tb9IlCungSPj+Gf8cEt3ZcJbB72go6y
         0fDvfUoWWT+3mZFEe4xhgnK2lnw3ZvpatnbKOAEmMqQ3qyJfmliOfY+ZZ1Kz4UkgL/ew
         /0pIB3wiECyHm3IxedfiLAapOOBy6qzD2zviggPWw6+XOohQGvYUNO3WOQyinourBmvX
         3ZZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690261611; x=1690866411;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=S4PUUxgPjR+04JYBb69E1/iMJgfnejEbZ6OTqwsNkO4=;
        b=FlgRKB3gczD1h3lxPbuhLLFRVHMhTJgfVIC+wMEZxSOmaELx7NVWZi/pRtIlwJ4+t5
         cIiNRP6z3EBNIMiwaq3ZCJClIZfK+5pBTAW6LMTpiK/VGqR37amtDH2wqf4W66pDrt71
         +ihYJpc3SovBpSW1WCM5QhxdlVgHGLYUhjLu8X0HaPiSx3HbK3cWBY7qM7LCR9DLS60c
         eRehqhbC/Kwtwj3dAjrZjS8ax6O6MPEYJ/mtHncZQRGqZ1WDAF/T81NKX9UX11qwBsQy
         mPtU8lD+0wGTnA07/6Chydqp3+1hP5EXzeOidf0KkEthbA7aX5Uwzv2aV2ROURBED0jY
         Th2A==
X-Gm-Message-State: ABy/qLbL/odzXNzd8c9KEnJQlC3xuq/u+FHQdAWHKNSURgzYVDQWZj1Q
	ajZWpqU5FlVhi/zHZcocPrSCRzm6q4H0UF0MOk0=
X-Google-Smtp-Source: APBJJlHdKj3/gMAPKI9pdSxFrWIgVP1PEIcuZ2x5w8oSudOxUJyzR3ZFjnXVxUtPggPlTCjO3huRAw==
X-Received: by 2002:aa7:cb18:0:b0:521:728f:d84e with SMTP id s24-20020aa7cb18000000b00521728fd84emr1442796edt.0.1690261611466;
        Mon, 24 Jul 2023 22:06:51 -0700 (PDT)
Received: from localhost.localdomain ([188.123.230.211])
        by smtp.gmail.com with ESMTPSA id k17-20020a05640212d100b0052237dfa82fsm1730505edx.64.2023.07.24.22.06.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Jul 2023 22:06:51 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Tue, 25 Jul 2023 08:05:20 +0300
Message-ID: <20230725050618.3451-20-denorl2009@gmail.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230725050618.3451-1-denorl2009@gmail.com>
References: <20230725050618.3451-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230724_220653_271433_FFF6F3C8 
X-CRM114-Status: GOOD (  12.99  )
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
Cc: Denis Orlov <denorl2009@gmail.com>, Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 19/21] MIPS: c-r4k: do flush secondary cache
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Even though we probe for the secondary cache, we don't actually utilize
it when flushing. It seems that the reason for this is that no MIPS
board currently supported in barebox actually has secondary caches and
thus requires the additional logic in handling them.

Add the required functions and calls to them. This will make it easier
to add support for boards that do happen to have secondary caches.

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 arch/mips/include/asm/cacheops.h |  5 +++++
 arch/mips/lib/c-r4k.c            | 12 ++++++------
 2 files changed, 11 insertions(+), 6 deletions(-)

diff --git a/arch/mips/include/asm/cacheops.h b/arch/mips/include/asm/cacheops.h
index 9f60e0287d..1e4e361e22 100644
--- a/arch/mips/include/asm/cacheops.h
+++ b/arch/mips/include/asm/cacheops.h
@@ -12,6 +12,7 @@
  */
 #define Cache_I				0x00
 #define Cache_D				0x01
+#define Cache_SD			0x03
 
 #define Index_Writeback_Inv		0x00
 #define Index_Store_Tag			0x08
@@ -23,9 +24,13 @@
  */
 #define Index_Invalidate_I		(Cache_I | Index_Writeback_Inv)
 #define Index_Writeback_Inv_D		(Cache_D | Index_Writeback_Inv)
+#define Index_Writeback_Inv_SD		(Cache_SD | Index_Writeback_Inv)
 #define Index_Store_Tag_I		(Cache_I | Index_Store_Tag)
 #define Index_Store_Tag_D		(Cache_D | Index_Store_Tag)
+#define Index_Store_Tag_SD		(Cache_SD | Index_Store_Tag)
 #define Hit_Invalidate_D		(Cache_D | Hit_Invalidate)
+#define Hit_Invalidate_SD		(Cache_SD | Hit_Invalidate)
 #define Hit_Writeback_Inv_D		(Cache_D | Hit_Writeback_Inv)
+#define Hit_Writeback_Inv_SD		(Cache_SD | Hit_Writeback_Inv)
 
 #endif	/* __ASM_CACHEOPS_H */
diff --git a/arch/mips/lib/c-r4k.c b/arch/mips/lib/c-r4k.c
index d3855bd756..2fb4e90138 100644
--- a/arch/mips/lib/c-r4k.c
+++ b/arch/mips/lib/c-r4k.c
@@ -60,30 +60,30 @@ static inline void blast_##pfx##cache##_range(unsigned long start,	\
 
 __BUILD_BLAST_CACHE(d, dcache, Index_Writeback_Inv_D)
 __BUILD_BLAST_CACHE(i, icache, Index_Invalidate_I)
+__BUILD_BLAST_CACHE(s, scache, Index_Writeback_Inv_SD)
 
 __BUILD_BLAST_CACHE_RANGE(d, dcache, Hit_Writeback_Inv_D)
+__BUILD_BLAST_CACHE_RANGE(s, scache, Hit_Writeback_Inv_SD)
 __BUILD_BLAST_CACHE_RANGE(inv_d, dcache, Hit_Invalidate_D)
+__BUILD_BLAST_CACHE_RANGE(inv_s, scache, Hit_Invalidate_SD)
 
 void flush_cache_all(void)
 {
 	blast_dcache();
 	blast_icache();
-
-	/* secondatory cache skipped */
+	blast_scache();
 }
 
 void dma_flush_range(unsigned long start, unsigned long end)
 {
 	blast_dcache_range(start, end);
-
-	/* secondatory cache skipped */
+	blast_scache_range(start, end);
 }
 
 void dma_inv_range(unsigned long start, unsigned long end)
 {
 	blast_inv_dcache_range(start, end);
-
-	/* secondatory cache skipped */
+	blast_inv_scache_range(start, end);
 }
 
 void r4k_cache_init(void);
-- 
2.41.0



