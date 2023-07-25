Delivery-date: Tue, 25 Jul 2023 07:08:14 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOAHQ-009000-3G
	for lore@lore.pengutronix.de; Tue, 25 Jul 2023 07:08:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOAHM-0004Oa-Kf
	for lore@pengutronix.de; Tue, 25 Jul 2023 07:08:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PbMLlEQpevit1B71byEE1KKr9cWIljL43LKW6jQgl40=; b=aB2umrwt/bfjdm
	BWhYF+M6pffuvrdNmBrqre1zbgoYCqucSFvW61y5c6VPwfJrNPI0sAlMPvu9lDYYfU1u5SLU38rNL
	10/hq0zSt6SPVczmE9aYysPvDGGESCoZETSvSOleie/pGwOxAWO4MVR0bhTW8pITtZOiua7HuM64e
	3QnCUYXxDd+wEyJACIGCmDzWaF/Jt2vcLSEKT634E8CWe0N+heL0e14YIUi6wP5wYimcdTxl4aGyy
	4ULfqyD9actlVJ5svfMX6mJl5S5DWqguwWH36cTxXElPiCauuPdiAhDm9iOWp9MY4pbEI5XWkLxKI
	iFlNwlYaznaNTqUH/roA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qOAGE-006FgI-2f;
	Tue, 25 Jul 2023 05:07:02 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qOAG6-006FPj-1C
	for barebox@lists.infradead.org;
	Tue, 25 Jul 2023 05:06:55 +0000
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-51e344efd75so10713634a12.1
        for <barebox@lists.infradead.org>; Mon, 24 Jul 2023 22:06:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690261609; x=1690866409;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PbMLlEQpevit1B71byEE1KKr9cWIljL43LKW6jQgl40=;
        b=EshP3Wu5oIolbl/I47xg8mpKbdlr4NoiXGDmU2ONV8Nia2O9isWK6jBV7kGDqtP9X+
         yPPJt7vSFXECnludiGrFZHEOL+8gqjgcPvplN+8V8wrBbyNA8IbFmkg9jeNXwwRsPJfB
         2dGBW8nozC03Uady0X6Bqi5Zo6zY1R+sZUEWK9b7C7s47+CxfsESRHITpsW9H157kKwo
         pxRR+yxF19puqpn+MDMDclVuyAV1LB3uzlzrEA/HR4tifdoT1+IYzjAsHEecPy1lDeU8
         F3zV+xHYCd4865SYvjOnOy83kljXlSbDjSE3YhIIab2LW5PLxXgDEtHDBawsFQHUslii
         fO1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690261609; x=1690866409;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PbMLlEQpevit1B71byEE1KKr9cWIljL43LKW6jQgl40=;
        b=K9nYwJAlAdZW7JbegYGSbl5vospxphUuZgSYFpVU69tI+eKSSVK4HzOY1f2ddN6tm2
         FLCnKFq71cZ02dcQpU9q2u2sTHkSjPeg7sxK1yMU21SlBLh/OGTU9wdgVRGf9lj8meMR
         Us5bWhSsvAC184ZxUZQZ/xWAxE5itUxQhFo5iYxBpEMNYDSiYBoMv0z3rcjiuoT8E3lK
         9Pjh5bd3ibubvWgVMPIiBLEcsK/3CHNE4jNogOApucdBes4dp21T3bdYUQnRQd9hCoCc
         2NNZt0Tes6gMZEXxoEH50p8UxflKeJi/khErs5tqDwx6k5Ml3Ku1CebEEIzj/FLcRDyN
         vFHA==
X-Gm-Message-State: ABy/qLYjgeqjofiiXlOc2jXFnIE8RDUvSms2Sfh3s7ExIqEfSQlMpRMZ
	AEAzTnAtQMbdhCtMZAJZb3/DtfWVxIjAOel7RyY=
X-Google-Smtp-Source: APBJJlENUB3runoAUuFaMT69YZFUKdcLzgCDh4OB4qh8pkfBof15UkbniA+KSo0flMMMHNgQsXz8GQ==
X-Received: by 2002:a05:6402:3491:b0:522:5592:8f9f with SMTP id v17-20020a056402349100b0052255928f9fmr233152edc.3.1690261609307;
        Mon, 24 Jul 2023 22:06:49 -0700 (PDT)
Received: from localhost.localdomain ([188.123.230.211])
        by smtp.gmail.com with ESMTPSA id k17-20020a05640212d100b0052237dfa82fsm1730505edx.64.2023.07.24.22.06.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Jul 2023 22:06:48 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Tue, 25 Jul 2023 08:05:18 +0300
Message-ID: <20230725050618.3451-18-denorl2009@gmail.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230725050618.3451-1-denorl2009@gmail.com>
References: <20230725050618.3451-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230724_220654_416485_2D883D50 
X-CRM114-Status: GOOD (  10.73  )
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
Subject: [PATCH 17/21] MIPS: c-r4k: prettify code in __BUILD_BLAST_CACHE_RANGE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Even though the original code was taken from Linux, it is quite old and
crufty. Replace the 'while (1)' loop with the 'for' one, use const for
constant variables and use ALIGN_DOWN macro instead of repeating its
code.

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 arch/mips/lib/c-r4k.c | 13 +++++--------
 1 file changed, 5 insertions(+), 8 deletions(-)

diff --git a/arch/mips/lib/c-r4k.c b/arch/mips/lib/c-r4k.c
index 8bc0a7a411..6389ab9be2 100644
--- a/arch/mips/lib/c-r4k.c
+++ b/arch/mips/lib/c-r4k.c
@@ -27,19 +27,16 @@
 static inline void blast_##pfx##cache##_range(unsigned long start,	\
 					      unsigned long end)	\
 {									\
-	unsigned long lsize = current_cpu_data.desc.linesz;		\
-	unsigned long addr = start & ~(lsize - 1);			\
-	unsigned long aend = (end - 1) & ~(lsize - 1);			\
+	const unsigned long lsize = current_cpu_data.desc.linesz;	\
+	const unsigned long astart = ALIGN_DOWN(start, lsize);		\
+	const unsigned long aend = ALIGN_DOWN(end - 1, lsize);		\
+	unsigned long addr;						\
 									\
 	if (current_cpu_data.desc.flags & MIPS_CACHE_NOT_PRESENT)	\
 		return;							\
 									\
-	while (1) {							\
+	for (addr = astart; addr <= aend; addr += lsize)		\
 		cache_op(hitop, addr);					\
-		if (addr == aend)					\
-			break;						\
-		addr += lsize;						\
-	}								\
 }
 
 __BUILD_BLAST_CACHE_RANGE(d, dcache, Hit_Writeback_Inv_D)
-- 
2.41.0



