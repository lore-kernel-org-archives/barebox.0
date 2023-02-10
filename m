Delivery-date: Fri, 10 Feb 2023 15:49:11 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pQUi9-003849-DE
	for lore@lore.pengutronix.de; Fri, 10 Feb 2023 15:49:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pQUi6-0006Ij-9l
	for lore@pengutronix.de; Fri, 10 Feb 2023 15:49:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rDqv+vCaVAiXPJR4Q7K9qsqJV4acktH7hgepzwcskNY=; b=RcYXuM5XGm2paA
	hx+N6wUhudeRcqBUW7dAagklhvEtovlpXLxx4j7fzYOhyFCUZwDbHHxOis8c1OzT2aXDfuJFOQ3u2
	w0WULhA57Wid00fpBzj1azVb3eccQC1Df6ZJymT4v4wvqgOYQ68DtN9rULv2MJdsAfummX+f/Q8Jw
	0YBsdbYArXnPTSwnkfRzEn2Cf+xEVOsNPDCNF/mCElMCegT6i8E1Nbg2XA4pQxq2zMy90PZJ4PsWR
	sxDPlxD2F1Y3GEf3dBdAMo3aUaD1pcNcMNnrvxP8MGZEZ+0T6Ir2ws+k+/pzGRu4Pzqo1+B3KyPvW
	KRjTd3a6FqdxqQCkp13A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pQUh5-0066GT-4V; Fri, 10 Feb 2023 14:48:07 +0000
Received: from mail-qt1-x834.google.com ([2607:f8b0:4864:20::834])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pQUgy-0066DL-R1
	for barebox@lists.infradead.org; Fri, 10 Feb 2023 14:48:02 +0000
Received: by mail-qt1-x834.google.com with SMTP id v17so5953027qto.3
        for <barebox@lists.infradead.org>; Fri, 10 Feb 2023 06:47:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rDqv+vCaVAiXPJR4Q7K9qsqJV4acktH7hgepzwcskNY=;
        b=Vhp9XUr/VTBT4l2b/fZxtxY/rSdEsF9UaRSMyaL2oFX760gmHwE5HmS5MiLbwqxTqF
         tbQXoX8nDIe7Fq8zbTV9o3xIgWDouKkHpBMei+5IYr7E/+NLvwCLTKNUr0YwIuuFlKkJ
         RwMhnkWEAxZuD9y7CCdGajC/0YITDiXJHuQ6Zf+aPDZ/5sum5frn2vUTzcKf4/fuFk5c
         OJ3tXORJ0l6tnMrr1/xAkeFQoTtLPREXWVteIjgt9v2rkLMxA6l6eTpofe7eRo4mQ61C
         my4ZuEFZTzDDvk2eZd/hv4lp8ufwCASq8lSHRfEubBkEOySbHVViLvieyF/vyL2B/UvM
         kUag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rDqv+vCaVAiXPJR4Q7K9qsqJV4acktH7hgepzwcskNY=;
        b=5nuwhW3Zk84HiugXaGyuVVRIc+SWFJvKnb3p8yJiukDHqV8uVM5aNjA5uNqI1Y8y7Q
         WmGM2xPMVRJ77OKKAjp404HmoGQ73twbrVsiHsIuXKmmAKociwklSuoXytm/5fv2pw1X
         wbYJjvXdOyuzfpDw5S6RbrNN1SHvfn+HX2PWax0jfyfV5cEc++OP/Jp7zYx1f5XsEd3p
         WTGXr+ba94c4Cottsu9GoN6vYJWCDz8FXN7zPNDm8+oSl3rdQdECJHSJDtQvtfzV9+rY
         VYTBy9Ndmq/coqugjCDmQU9jsLoiWZ/S7YcKemXnikb+Ut8kibX9VWWD2oM6Q7sbhCaw
         hCpQ==
X-Gm-Message-State: AO0yUKVOghS1cZK6N7YXbieX13eY+VnF0YO9gecG4mI+HTYVjQA/6gg2
	V/VQe0nT4EuM3LIUBVqD960G3mTWkNcQAWafak8=
X-Google-Smtp-Source: AK7set/H50szhzCBuRV3fmzCii942sq74sX4i/tghPtLyot9iRiTOLEebg6b5Ig1k0SWU5cs8umUJA==
X-Received: by 2002:ac8:5b4d:0:b0:3b8:340b:1aab with SMTP id n13-20020ac85b4d000000b003b8340b1aabmr27317238qtw.25.1676040477554;
        Fri, 10 Feb 2023 06:47:57 -0800 (PST)
Received: from localhost.localdomain ([193.232.173.109])
        by smtp.gmail.com with ESMTPSA id u63-20020a379242000000b00731c30ac2e8sm3661703qkd.74.2023.02.10.06.47.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Feb 2023 06:47:56 -0800 (PST)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Fri, 10 Feb 2023 17:47:44 +0300
Message-Id: <20230210144745.915720-4-denorl2009@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230210144745.915720-1-denorl2009@gmail.com>
References: <20230210144745.915720-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230210_064800_897398_B6BFABA0 
X-CRM114-Status: UNSURE (   9.72  )
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
Cc: Denis Orlov <denorl2009@gmail.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 3/4] MIPS: dma: add arch-specific dma_alloc() implementation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

DMA allocations should be aligned on a cache line size, at least on
cache non-coherent MIPS systems. Instead of using some hardcoded value
for an alignment from a generic implementation (which may be wrong for
us), we can get cache info from 'current_cpu_data' variable, so use it.

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 arch/mips/include/asm/dma.h | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/mips/include/asm/dma.h b/arch/mips/include/asm/dma.h
index e0b4689172..49eeaac1a2 100644
--- a/arch/mips/include/asm/dma.h
+++ b/arch/mips/include/asm/dma.h
@@ -6,6 +6,18 @@
 #ifndef __ASM_DMA_H
 #define __ASM_DMA_H
 
+#include <common.h>
+#include <xfuncs.h>
+#include <asm/cpu-info.h>
+
+#define dma_alloc dma_alloc
+static inline void *dma_alloc(size_t size)
+{
+	unsigned long max_linesz = max(current_cpu_data.dcache.linesz,
+				       current_cpu_data.scache.linesz);
+	return xmemalign(max_linesz, ALIGN(size, max_linesz));
+}
+
 #include "asm/dma-mapping.h"
 
 #endif /* __ASM_DMA_H */
-- 
2.30.2



