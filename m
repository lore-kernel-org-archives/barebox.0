Delivery-date: Tue, 25 Jul 2023 07:08:10 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOAHM-008zwl-3u
	for lore@lore.pengutronix.de; Tue, 25 Jul 2023 07:08:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOAHI-0004Kk-UZ
	for lore@pengutronix.de; Tue, 25 Jul 2023 07:08:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XeTiZ/mocoZaBrdHnWcG9FnZPLldmuT2bvN14/NT0p8=; b=K4LlvuT+Juk7e4
	8/BBMUTuJbVdkqL3OQUmJMG8WalcevWJws2oUlM+NxqYDMQ7ju4qKLSVUyDqYLvSQjfql+iWRNph6
	+XcZW5gLMCvOund/R2b/FthyKSu9jrm1NhnL61Ik0hcxD/S07tD66a9lUOu3P3Y6F73LWGVy2Mif9
	4EDNewB8zFhjkAFWafZ6B8jN+Tau5rJteZYOn7kM7Fz+/4Boky7nPNx2yuCdm8XsGBLqEb+6aUiCi
	dAXIEF3xZDV5NG7Er9XDY2WNQCSwxmgVk/WqZ3TIGl1M4c5+vuUiFyIctyVX/zMb0r3A0HWx4uY3M
	J7dmmljaqmcg3rVjPZWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qOAFy-006FLM-1w;
	Tue, 25 Jul 2023 05:06:46 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qOAFt-006FGX-0m
	for barebox@lists.infradead.org;
	Tue, 25 Jul 2023 05:06:42 +0000
Received: by mail-ed1-x536.google.com with SMTP id 4fb4d7f45d1cf-52227142a27so2824138a12.1
        for <barebox@lists.infradead.org>; Mon, 24 Jul 2023 22:06:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690261597; x=1690866397;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XeTiZ/mocoZaBrdHnWcG9FnZPLldmuT2bvN14/NT0p8=;
        b=drfg0h2Tfjt2+TSOnveEP0xAKjrKP/tAAF/9VRTJ8Tz3HvP3eWZWqX2/LU1sKFYUjY
         MnOBn4tqPH89n9eXuh99i0YNqis9VC4uqEj7/fKPKNCuz95gaSmikrsJNSuoLpsDWkgZ
         0bbL1oZD0pAd1KGemaSHofzA1/aJhqUGxVC9WWhJNSdfEGOdBsTerky6qd9rsqblJXRt
         U2Slhpdiy65DAldK8j6OO6W5fig0jG4jZszwmMytY6QtAUUZSIG3AVTqOV36ShMmJnH+
         yHcupO2tmTalfwFpon0WXt7SMn8Oj98kjSt0vCsbOBvxP6XCGFs10ypBrO1lW9kM0i1H
         X0YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690261597; x=1690866397;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XeTiZ/mocoZaBrdHnWcG9FnZPLldmuT2bvN14/NT0p8=;
        b=FjoKACIJOLvSF1OKfGKA23OEuZsefGcZYrS3wphoWQagam5ncWj1of2Rta7SeOlY0Z
         8laenfBU8QzpUE25mzH8zxl6vunokxJBOAXxNHgl9Dc3QM8wBen39c6mDxIc0whVdmbK
         dD1xLQRcAMCu8ajzKBEV0JD2pBPw775cN8OhU8AU2Mcvoz1yzSgynE3ctzZLqBA9j/gi
         rA573ddZfn/e//rvThwT8p7KPifDtZ9YYFI21imufUbGD11kUALo3hjybEsNd/yoAORR
         6jEzCtyBMIbVsUZ+OmGxazL9wZNkwwz5c5m3tn17/z/au5qy32Q2vZmlHqiliQuLHaI2
         l3yg==
X-Gm-Message-State: ABy/qLZgCbFvHCCOPhk/nX0r7stX/i3fCUmcvPj+TCsTLiSOzFpS9czL
	a1/1bqbfWa4ro/y4wa6zS0xjXvL5zRzDi958qF6nNw==
X-Google-Smtp-Source: APBJJlG2f4IXCw1EydKlAZpi4YMnf5taibHTs6WTVUPtKWB03FpE4a8RgImIrBe1DLkA2GTp/a/kqw==
X-Received: by 2002:aa7:d412:0:b0:522:3a37:a463 with SMTP id z18-20020aa7d412000000b005223a37a463mr2421256edq.20.1690261596785;
        Mon, 24 Jul 2023 22:06:36 -0700 (PDT)
Received: from localhost.localdomain ([188.123.230.211])
        by smtp.gmail.com with ESMTPSA id k17-20020a05640212d100b0052237dfa82fsm1730505edx.64.2023.07.24.22.06.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Jul 2023 22:06:36 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Tue, 25 Jul 2023 08:05:07 +0300
Message-ID: <20230725050618.3451-7-denorl2009@gmail.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230725050618.3451-1-denorl2009@gmail.com>
References: <20230725050618.3451-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230724_220641_286163_8DE50CD1 
X-CRM114-Status: UNSURE (   9.39  )
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
Subject: [PATCH 06/21] MIPS: cpuinfo: use appropriate format specifiers in printf
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 arch/mips/lib/cpuinfo.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/mips/lib/cpuinfo.c b/arch/mips/lib/cpuinfo.c
index fd27920f9b..41ec7b8d53 100644
--- a/arch/mips/lib/cpuinfo.c
+++ b/arch/mips/lib/cpuinfo.c
@@ -25,12 +25,12 @@ static int do_cpuinfo(int argc, char *argv[])
 	icache_size = c->icache.sets * c->icache.ways * c->icache.linesz;
 	dcache_size = c->dcache.sets * c->dcache.ways * c->dcache.linesz;
 
-	printk("Primary instruction cache %ldkB, %s, %s, linesize %d bytes.\n",
+	printk("Primary instruction cache %ukB, %s, %s, linesize %d bytes.\n",
 	       icache_size >> 10,
 	       c->icache.flags & MIPS_CACHE_VTAG ? "VIVT" : "VIPT",
 	       way_string[c->icache.ways], c->icache.linesz);
 
-	printk("Primary data cache %ldkB, %s, %s, %s, linesize %d bytes\n",
+	printk("Primary data cache %ukB, %s, %s, %s, linesize %d bytes\n",
 	       dcache_size >> 10, way_string[c->dcache.ways],
 	       (c->dcache.flags & MIPS_CACHE_PINDEX) ? "PIPT" : "VIPT",
 	       (c->dcache.flags & MIPS_CACHE_ALIASES) ?
@@ -39,7 +39,7 @@ static int do_cpuinfo(int argc, char *argv[])
 	if (c->scache.flags & MIPS_CACHE_NOT_PRESENT)
 		return 0;
 	scache_size = c->scache.sets * c->scache.ways * c->scache.linesz;
-	printk("Secondary data cache %ldkB, %s, %s, %s, linesize %d bytes\n",
+	printk("Secondary data cache %ukB, %s, %s, %s, linesize %d bytes\n",
 	       scache_size >> 10, way_string[c->scache.ways],
 	       (c->scache.flags & MIPS_CACHE_PINDEX) ? "PIPT" : "VIPT",
 	       (c->scache.flags & MIPS_CACHE_ALIASES) ?
-- 
2.41.0



