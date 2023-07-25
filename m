Delivery-date: Tue, 25 Jul 2023 07:08:14 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOAHQ-009001-81
	for lore@lore.pengutronix.de; Tue, 25 Jul 2023 07:08:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOAHM-0004Nz-GX
	for lore@pengutronix.de; Tue, 25 Jul 2023 07:08:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IXWVC3OGrXLlz0wsKZWJyODHsJ4ApO7Wl8EpczrtbEw=; b=K9JGO/NMPxKt5E
	z3RObzUG+l+vuECD7Lz9mdu2Ci9FenClXAlSK0k8cDQlyx+WjO3JMGbenXqvtmk7GiXSXS1er4q3m
	yVqkQtDOXnUSof58YrGox90gEBfpYAAG5ezbkMqJAhdyMoZakybbelPD3epbOn65G05kA1i6nA2yH
	TxG8OtBN07g7ZUp7NrRka1zaz0SpKr4CNulReOkDRDKWTHevXiSl/VbjnOSrfQ8a3xeb4Zt5IOavM
	hmxP19tzf1R27WvieTfXdi6hBSfbjxBZvVFEdl/zv+l/lNp85dE0FSEeCCIJo2EPkBdTlvQuQfchh
	Bm4W/PdpzuVFN3baWo1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qOAGB-006FbL-2F;
	Tue, 25 Jul 2023 05:06:59 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qOAG4-006FR7-0u
	for barebox@lists.infradead.org;
	Tue, 25 Jul 2023 05:06:53 +0000
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-4fb761efa7aso7866589e87.0
        for <barebox@lists.infradead.org>; Mon, 24 Jul 2023 22:06:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690261610; x=1690866410;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IXWVC3OGrXLlz0wsKZWJyODHsJ4ApO7Wl8EpczrtbEw=;
        b=CH98+KSPXErcJJCwPv0YEtQvVif0SKP+b0+tUynevB8v4V3QmLx/Hj3eoGn8fNNddk
         ZspMwgWvkSjk1s+kusyM9VZVGL6IJ3+leB83hd8oCaTaq7XGVugyG3gIASDFa8qFfZFF
         QFou71zj45RTxnFKkKXt01KixyU3U/QWRT3ap6nNnKhfxZgAfDTXAQL8+kjik1ewACl3
         x6/JUmgSCPU7ObXJZLI2tNHPobJ3vGuclSH71nSDEqBkPo/TkfIkX3OL6h/bpc4Rp+Oy
         xGxfZKWfiVvP/9jpX7L6dqoSO8bBsLVlQs6YR/zcRB+62cDL5VnsDVgax+aojxW4BUEw
         q/mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690261610; x=1690866410;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IXWVC3OGrXLlz0wsKZWJyODHsJ4ApO7Wl8EpczrtbEw=;
        b=A11hEDoBdFP5sOfFzX2AW4CetPaN8qBdZ4d/8jNWGCd1Q8n2GxCwbddypJDtw1AA/l
         lijMeppNERjrpYF0iHpMEEGtji26/55vzcQUmL2uvsarMNcAqXzypP6joNia/m9mENj6
         YsMiVfS6PrD1EPYGGK7t8G4/Nk8RysW46jZh7H8B113znMhBHI79wQo5fwS/4FTT2Bj9
         rzON1xSneM7YIWPugzuNz37Q3AndDOlitK/H0jsYJHhkkNxXV0O6z1+Z47S9EetqvT0w
         1lW6QhTSDq+tIbCP89HcynQvor5wMjx7e1r1v1AGyNOmV1mDelq80qAyP0PHfaRjHL9k
         uiTw==
X-Gm-Message-State: ABy/qLZi5EcF93oox93oEohti0edel7r4FKRDbmZ/xT5g3iL4n23tseo
	ZRFbNKObsLZGH8Oo+uBdjKgyX5QzlDMmsxQrAWE=
X-Google-Smtp-Source: APBJJlEnOJE4nGuJTKStuJMKJUT8d54+71YbNKHUsfeUC6jkpTij7F3hd3u8IZ7T0RIHLNQcizGwyg==
X-Received: by 2002:a05:6512:20c9:b0:4fd:d7ac:2654 with SMTP id u9-20020a05651220c900b004fdd7ac2654mr6113455lfr.13.1690261610378;
        Mon, 24 Jul 2023 22:06:50 -0700 (PDT)
Received: from localhost.localdomain ([188.123.230.211])
        by smtp.gmail.com with ESMTPSA id k17-20020a05640212d100b0052237dfa82fsm1730505edx.64.2023.07.24.22.06.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Jul 2023 22:06:49 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Tue, 25 Jul 2023 08:05:19 +0300
Message-ID: <20230725050618.3451-19-denorl2009@gmail.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230725050618.3451-1-denorl2009@gmail.com>
References: <20230725050618.3451-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230724_220652_365130_8F80E046 
X-CRM114-Status: GOOD (  11.24  )
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
Subject: [PATCH 18/21] MIPS: c-r4k: generate blast_*cache functions via macros
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This gets us rid of this logic repeated in 'flush_cache_all()' for each
cache and allows to use blast_*cache funcs elsewhere if such a need
arises.

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 arch/mips/lib/c-r4k.c | 41 ++++++++++++++++++++++++-----------------
 1 file changed, 24 insertions(+), 17 deletions(-)

diff --git a/arch/mips/lib/c-r4k.c b/arch/mips/lib/c-r4k.c
index 6389ab9be2..d3855bd756 100644
--- a/arch/mips/lib/c-r4k.c
+++ b/arch/mips/lib/c-r4k.c
@@ -13,6 +13,8 @@
 #include <asm/cpu-info.h>
 #include <asm/bitops.h>
 
+#define INDEX_BASE	CKSEG0
+
 #define cache_op(op,addr)						\
 	__asm__ __volatile__(						\
 	"	.set	push					\n"	\
@@ -23,6 +25,23 @@
 	:								\
 	: "i" (op), "R" (*(unsigned char *)(addr)))
 
+#define __BUILD_BLAST_CACHE(pfx, desc, indexop)				\
+static inline void blast_##pfx##cache(void)				\
+{									\
+	const unsigned long lsize = current_cpu_data.desc.linesz;	\
+	const unsigned long start = INDEX_BASE;				\
+	const unsigned long size = current_cpu_data.desc.waysize	\
+				   * current_cpu_data.desc.ways;	\
+	const unsigned long aend = start + size - 1;			\
+	unsigned long addr;						\
+									\
+	if (current_cpu_data.desc.flags & MIPS_CACHE_NOT_PRESENT)	\
+		return;							\
+									\
+	for (addr = start; addr <= aend; addr += lsize)			\
+		cache_op(indexop, addr);				\
+}
+
 #define __BUILD_BLAST_CACHE_RANGE(pfx, desc, hitop)			\
 static inline void blast_##pfx##cache##_range(unsigned long start,	\
 					      unsigned long end)	\
@@ -39,28 +58,16 @@ static inline void blast_##pfx##cache##_range(unsigned long start,	\
 		cache_op(hitop, addr);					\
 }
 
+__BUILD_BLAST_CACHE(d, dcache, Index_Writeback_Inv_D)
+__BUILD_BLAST_CACHE(i, icache, Index_Invalidate_I)
+
 __BUILD_BLAST_CACHE_RANGE(d, dcache, Hit_Writeback_Inv_D)
 __BUILD_BLAST_CACHE_RANGE(inv_d, dcache, Hit_Invalidate_D)
 
 void flush_cache_all(void)
 {
-	struct cpuinfo_mips *c = &current_cpu_data;
-	unsigned long lsize;
-	unsigned long addr;
-	unsigned long aend;
-	unsigned int icache_size, dcache_size;
-
-	dcache_size = c->dcache.waysize * c->dcache.ways;
-	lsize = c->dcache.linesz;
-	aend = (CKSEG0 + dcache_size - 1) & ~(lsize - 1);
-	for (addr = CKSEG0; addr <= aend; addr += lsize)
-		cache_op(Index_Writeback_Inv_D, addr);
-
-	icache_size = c->icache.waysize * c->icache.ways;
-	lsize = c->icache.linesz;
-	aend = (CKSEG0 + icache_size - 1) & ~(lsize - 1);
-	for (addr = CKSEG0; addr <= aend; addr += lsize)
-		cache_op(Index_Invalidate_I, addr);
+	blast_dcache();
+	blast_icache();
 
 	/* secondatory cache skipped */
 }
-- 
2.41.0



