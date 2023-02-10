Delivery-date: Fri, 10 Feb 2023 15:49:18 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pQUiF-00384s-Lf
	for lore@lore.pengutronix.de; Fri, 10 Feb 2023 15:49:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pQUiC-0006KG-UU
	for lore@pengutronix.de; Fri, 10 Feb 2023 15:49:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BwCCmXJJdFfOF7IhYios1CRwKnYmRX3zCWRv2cL4VJQ=; b=hMwaeB+fsLBl3O
	ak1BqX+quFoLknF0bh0SXKpHeVcc5WV0SoMFYEejNCbuNcK/E/8UQQ6c5z+KQegxTzkJHU3VqBoFo
	V6Y9JO0+o14AvAJDXdHFM1PVl92g14wqMKmw1jw57Mf9Rud8toOtrbVHiz3oG+dhnD8r5Hdh3qFRO
	m4JlSt9UQz8pu0H7Hz/NLGdUpehfIHG6Bd66LXBxW97IbKIyPV0gVvoLY95BuEhPWM/w39mmKHKz1
	zE247Q6mqrPNj87wlnB24QwvZXdPkmG7j4kiZyB+bgSeo/APADnSArI2+qEGRRiBFSs1S9kKl6yzF
	uO111D9oaCvrI8Szi4+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pQUh7-0066I3-Kx; Fri, 10 Feb 2023 14:48:09 +0000
Received: from mail-qt1-x82c.google.com ([2607:f8b0:4864:20::82c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pQUgz-0066E4-Gs
	for barebox@lists.infradead.org; Fri, 10 Feb 2023 14:48:02 +0000
Received: by mail-qt1-x82c.google.com with SMTP id cr22so5913357qtb.10
        for <barebox@lists.infradead.org>; Fri, 10 Feb 2023 06:48:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BwCCmXJJdFfOF7IhYios1CRwKnYmRX3zCWRv2cL4VJQ=;
        b=WyyqrGZvriPLpRzokC7lpkqvxoTe9go48PgeTtjEWvBS3fciFYn7kQKBgDgtqlhz9D
         VxdMnzPXFqP1xK5l4op8fsUcXiPYiu2oi/MV6P3Th0h8OfZ9HqC1k32bE99/cBU6PTBU
         XSxVnMWPe15KA+8/TW3sclYDO7Xb/iGAqwB0jBqH9Wc050YcCWpo7tSdiUuS60A2jMxe
         dhQfARnsxdHrAyb0B8l6D7lzw2sG1a58vk9vkeJf+2cFRO0RvjuvW+Q21AHDjz84MtyR
         jZHAskcQLV6wItjEEJWpzqE1aGnce6otYIBKWTPGTPUBg9xXfvdj76+ebYn6LnZs9GwO
         qqSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BwCCmXJJdFfOF7IhYios1CRwKnYmRX3zCWRv2cL4VJQ=;
        b=L2JVPhONU5GRtGxEIFEIVNxePKhNEUNyrR7FSv6ME9z1YUT346XK2Xd+SWPuEWaPJv
         yIVnTptY0/rBELvY2wlrI2Pp4NLRne0KLAP3p3IHlO/SazZm39N+NyCTpUjExX3IiAHN
         fg8UpigC6gVvWd485LozN78lT+gLLEcNPr0CrJaC5zSaicucK6CtkZWfys1cJyaNz+rJ
         p9l9h3wCLyHSvtXMAtHH8aRycfhJSpLsJ+DHrRzxeBgmjOM5KR2zbd2VRMoisMQfXFUF
         BAkb9kTRyJvX+I/7lW7pVB4QqBbt8f+VU42t2wfEyFZtXQHsDjZMU6mxxvX0gOBsZZyD
         kgrw==
X-Gm-Message-State: AO0yUKW4fl4FLqTBZ3TMgDsWctqHyY6pXC+BDsKS7fp66BBj1h8L2Exh
	kc67vt49En3l+3T/zLMrsW2aPgc8GvYeCZh1bO4=
X-Google-Smtp-Source: AK7set+jr2U9pRVYV6O4CoyToqxxrVz1zQXnJfhztXas1XpO809ALUjvsD7UMIP8m7xbsaA3D1Fp8g==
X-Received: by 2002:a05:622a:8b:b0:3b9:b761:b0a0 with SMTP id o11-20020a05622a008b00b003b9b761b0a0mr26923984qtw.12.1676040479957;
        Fri, 10 Feb 2023 06:47:59 -0800 (PST)
Received: from localhost.localdomain ([193.232.173.109])
        by smtp.gmail.com with ESMTPSA id u63-20020a379242000000b00731c30ac2e8sm3661703qkd.74.2023.02.10.06.47.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Feb 2023 06:47:59 -0800 (PST)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Fri, 10 Feb 2023 17:47:45 +0300
Message-Id: <20230210144745.915720-5-denorl2009@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230210144745.915720-1-denorl2009@gmail.com>
References: <20230210144745.915720-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230210_064801_579597_C6BD9ED9 
X-CRM114-Status: GOOD (  13.98  )
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
Subject: [PATCH 4/4] MIPS: dma: simplify source structure
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

There is no reason to keep code from 'dma-mapping.h' in a separate file,
so merge it into 'dma.h'.

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 arch/mips/include/asm/dma-mapping.h | 40 -----------------------------
 arch/mips/include/asm/dma.h         | 31 +++++++++++++++++++++-
 2 files changed, 30 insertions(+), 41 deletions(-)
 delete mode 100644 arch/mips/include/asm/dma-mapping.h

diff --git a/arch/mips/include/asm/dma-mapping.h b/arch/mips/include/asm/dma-mapping.h
deleted file mode 100644
index 9f6ec03e3b..0000000000
--- a/arch/mips/include/asm/dma-mapping.h
+++ /dev/null
@@ -1,40 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-
-#ifndef _ASM_DMA_MAPPING_H
-#define _ASM_DMA_MAPPING_H
-
-#include <common.h>
-#include <xfuncs.h>
-#include <asm/addrspace.h>
-#include <asm/types.h>
-#include <malloc.h>
-#include <asm/io.h>
-
-#define dma_alloc_coherent dma_alloc_coherent
-static inline void *dma_alloc_coherent(size_t size, dma_addr_t *dma_handle)
-{
-	void *ret;
-
-	ret = xmemalign(PAGE_SIZE, size);
-
-	memset(ret, 0, size);
-
-	if (dma_handle)
-		*dma_handle = CPHYSADDR(ret);
-
-	dma_flush_range((unsigned long)ret, (unsigned long)(ret + size));
-
-	return (void *)CKSEG1ADDR(ret);
-}
-
-#define dma_free_coherent dma_free_coherent
-static inline void dma_free_coherent(void *vaddr, dma_addr_t dma_handle,
-				     size_t size)
-{
-	if (IS_ENABLED(CONFIG_MMU) && vaddr)
-		free((void *)CKSEG0ADDR(vaddr));
-	else
-		free(vaddr);
-}
-
-#endif /* _ASM_DMA_MAPPING_H */
diff --git a/arch/mips/include/asm/dma.h b/arch/mips/include/asm/dma.h
index 49eeaac1a2..62d9c7c548 100644
--- a/arch/mips/include/asm/dma.h
+++ b/arch/mips/include/asm/dma.h
@@ -7,8 +7,12 @@
 #define __ASM_DMA_H
 
 #include <common.h>
+#include <malloc.h>
 #include <xfuncs.h>
+#include <asm/addrspace.h>
 #include <asm/cpu-info.h>
+#include <asm/io.h>
+#include <asm/types.h>
 
 #define dma_alloc dma_alloc
 static inline void *dma_alloc(size_t size)
@@ -18,6 +22,31 @@ static inline void *dma_alloc(size_t size)
 	return xmemalign(max_linesz, ALIGN(size, max_linesz));
 }
 
-#include "asm/dma-mapping.h"
+#define dma_alloc_coherent dma_alloc_coherent
+static inline void *dma_alloc_coherent(size_t size, dma_addr_t *dma_handle)
+{
+	void *ret;
+
+	ret = xmemalign(PAGE_SIZE, size);
+
+	memset(ret, 0, size);
+
+	if (dma_handle)
+		*dma_handle = CPHYSADDR(ret);
+
+	dma_flush_range((unsigned long)ret, (unsigned long)(ret + size));
+
+	return (void *)CKSEG1ADDR(ret);
+}
+
+#define dma_free_coherent dma_free_coherent
+static inline void dma_free_coherent(void *vaddr, dma_addr_t dma_handle,
+				     size_t size)
+{
+	if (IS_ENABLED(CONFIG_MMU) && vaddr)
+		free((void *)CKSEG0ADDR(vaddr));
+	else
+		free(vaddr);
+}
 
 #endif /* __ASM_DMA_H */
-- 
2.30.2



