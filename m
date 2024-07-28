Delivery-date: Sun, 28 Jul 2024 23:22:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sYBLP-003vj9-1s
	for lore@lore.pengutronix.de;
	Sun, 28 Jul 2024 23:22:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sYBLO-0008Os-Sj
	for lore@pengutronix.de; Sun, 28 Jul 2024 23:22:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vkeSAih99H6TwMc2TqtZMninrh0pNixN8O3XFsXi8ss=; b=aBkOAL9JfaADbI
	T7hd4Fa1uK1jyi+M8AxBGGXFErbElaMzs6GqpBZjTkYrC+T360Go76oWgReBhbkt6gUZVE6c/b1q1
	EftzKiFMXz+u8QZ1MpspxkKA/nmbOh7f606A7gzlVqO3OrLTAC00OTVUY5ZXMEnU0eQxZxLwD3Xzt
	fx+ijDMIzXr25F/ERCA7/vASbnNa/2nz3ypQzXQtPbPMEipDaUXmBHbyboS6BzS6VZwLj/JpccC5U
	0wYrHr82rnfd82OSE8Fwg2/iIx0NK0NVU+oA7RQ251oqYVFFBXsab1PV/MCkO1AJCfSGVMcwsh8+N
	aU0Sjn90TNH2nNY8yjQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYBKk-00000009FfX-4BAJ;
	Sun, 28 Jul 2024 21:21:39 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYBHw-00000009EXb-281Y
	for barebox@lists.infradead.org;
	Sun, 28 Jul 2024 21:18:46 +0000
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-52f01b8738dso2655561e87.1
        for <barebox@lists.infradead.org>; Sun, 28 Jul 2024 14:18:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722201522; x=1722806322; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=vkeSAih99H6TwMc2TqtZMninrh0pNixN8O3XFsXi8ss=;
        b=CsBSbGI0oNqVMHQpIlL3z2SuEgiAirSPKoyW5OCmFz7rNW5AsRVojyMw+sH0pmwbk7
         LZPe5/GPZPnKLebSPtx075Z0lOdna82qYbfe1bEipE+ZedOWLiARyy7DnWhTw+58vRyD
         vf5oIOovWayrsoBRqenDZsV6ghu5IPuC2gATB3qNRBZv2O5u62UVEGoz7tNGcxmSQhyM
         IROI0OAItj409GWhnKMnw8jsei08y2WZ+zmUpuKFLx3BjBUix9xj4svBjYHOLBxl9bgo
         Gqw5GTqaLE+cfJuSFKyoYXVkEHWfy0qiG+4rcTO1QkBGNtJqAbJEzFKGVXIIeMC9Deoq
         IA2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722201522; x=1722806322;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vkeSAih99H6TwMc2TqtZMninrh0pNixN8O3XFsXi8ss=;
        b=Ch5NdX/0wjCO+osVAvmnYlBbo2MvdJmq5iECbIr0iKrMyaV9qbnJDt5YYUUZBA93+3
         ZvGLMSOYGIJjzKug6vjs9iGTKoI+HOsPlAudCVA9f+MRSyYjz09mi6cFEcHFO0CPRGLr
         yLIBo//PAkSv0nR/ChuMy2ZSG+6ncHbowAdrLc3LYzxhBao+i5SHItGZzEg5paTxRJhu
         gb9yCLlgMLyJg//8cFZg/LLThsJCrKPRbqxsA6clxMkFDlMWKHWceuWOSK5p1j0KLsvT
         sYL3f+Mp2Ej65mKgVEKjyikGZsvy9W9THCDQj+OBgTzQlDK1Pr2CVvSFqLkC4a/qt+Q4
         sAhQ==
X-Gm-Message-State: AOJu0YyhK1j/uenpiwiX5CbQ+pSy4rnSCkxn08KJMlkcpfjqwCFsmqVy
	MVu2MynZi29PAuWccVKOHznGf+Yk6f7r6wrBqfk73nYO8xPYV990VggAfQ==
X-Google-Smtp-Source: AGHT+IHWUbU5+5IyjgtGRkWsQpeIBQTv7AcAVXLQBJBJGdKkk98MsOY1lp0ozvgrvhw6hIuB3aZ50A==
X-Received: by 2002:a05:6512:250e:b0:52c:e1e1:ae91 with SMTP id 2adb3069b0e04-5309b2696ebmr5561157e87.11.1722201521570;
        Sun, 28 Jul 2024 14:18:41 -0700 (PDT)
Received: from cinco.. (109-252-1-200.nat.spd-mgts.ru. [109.252.1.200])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52fd5c2d8bcsm1226648e87.283.2024.07.28.14.18.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Jul 2024 14:18:41 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Mon, 29 Jul 2024 00:19:29 +0300
Message-Id: <20240728211929.91608-1-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240728_141844_572369_2D9DF975 
X-CRM114-Status: UNSURE (   8.05  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] MIPS: <asm/io.h>: use generic io accessors
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/include/asm/io.h | 62 --------------------------------------
 1 file changed, 62 deletions(-)

diff --git a/arch/mips/include/asm/io.h b/arch/mips/include/asm/io.h
index 4584eec8ca0..bbd1c0199f8 100644
--- a/arch/mips/include/asm/io.h
+++ b/arch/mips/include/asm/io.h
@@ -52,68 +52,6 @@ static inline void *phys_to_virt(unsigned long address)
 
 #define	IO_SPACE_LIMIT	0
 
-/*****************************************************************************/
-/*
- * readX/writeX() are used to access memory mapped devices. On some
- * architectures the memory mapped IO stuff needs to be accessed
- * differently. On the simple architectures, we just read/write the
- * memory location directly.
- */
-#ifndef __raw_readb
-static inline u8 __raw_readb(const volatile void __iomem *addr)
-{
-	return *(const volatile u8 __force *) addr;
-}
-#endif
-
-#ifndef __raw_readw
-static inline u16 __raw_readw(const volatile void __iomem *addr)
-{
-	return *(const volatile u16 __force *) addr;
-}
-#endif
-
-#ifndef __raw_readl
-static inline u32 __raw_readl(const volatile void __iomem *addr)
-{
-	return *(const volatile u32 __force *) addr;
-}
-#endif
-
-#define readb __raw_readb
-#define readw(addr) __le16_to_cpu(__raw_readw(addr))
-#define readl(addr) __le32_to_cpu(__raw_readl(addr))
-
-#ifndef __raw_writeb
-static inline void __raw_writeb(u8 b, volatile void __iomem *addr)
-{
-	*(volatile u8 __force *) addr = b;
-}
-#endif
-
-#ifndef __raw_writew
-static inline void __raw_writew(u16 b, volatile void __iomem *addr)
-{
-	*(volatile u16 __force *) addr = b;
-}
-#endif
-
-#ifndef __raw_writel
-static inline void __raw_writel(u32 b, volatile void __iomem *addr)
-{
-	*(volatile u32 __force *) addr = b;
-}
-#endif
-
-#define writeb __raw_writeb
-#define writew(b,addr) __raw_writew(__cpu_to_le16(b),addr)
-#define writel(b,addr) __raw_writel(__cpu_to_le32(b),addr)
-
-#define in_be16(a)	__be16_to_cpu(__raw_readw(a))
-#define in_be32(a)	__be32_to_cpu(__raw_readl(a))
-#define out_be16(a, v)	__raw_writew(__cpu_to_be16(v), a)
-#define out_be32(a, v)	__raw_writel(__cpu_to_be32(v), a)
-
 #ifdef CONFIG_64BIT
 #define IOMEM(addr)	((void __force __iomem *)PHYS_TO_XKSEG_UNCACHED(addr))
 #else
-- 
2.39.0



