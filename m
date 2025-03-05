Delivery-date: Wed, 05 Mar 2025 08:57:46 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tpjdT-00A6Oq-1M
	for lore@lore.pengutronix.de;
	Wed, 05 Mar 2025 08:57:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tpjdS-00014l-8o
	for lore@pengutronix.de; Wed, 05 Mar 2025 08:57:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=xCe6ZAvuCEocSGI8emY4LpmEuiNXHgAZugDy9NXlWXU=; b=eb+V4dTXUK/EtSvJzMyIsbP+SR
	o0fXUwMfZy6MTJZPnuimF6FC/vsz3jhYPo4p/cWed+R1fXKXztvUIESzs5RkjGnOdOXqLYMD1pVkQ
	AmzqJBAcb57WefzD3WXZqYNVcC+QAxI89pDJQhymdF71ZworBQwORZJG7fMSwFpa4hP06+aEz+l3c
	5EM8Fm3ue7S3j1CFviCbJiLAaJALK2b1Ef7nL/aWtZ7BGrsKBZsGgP09BVwxDcH45GtqKf6ar5HcK
	NHjcWizYCxtbfFZ4MURP2KoNFJPiQT0gJ4Rntm8XwkCuzLB67ez3PNFTdeKnXl1gIioQAw9lFkefg
	Ro1tQ7uA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tpjcp-00000007IhD-19pU;
	Wed, 05 Mar 2025 07:57:07 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpjUp-00000007HVY-1gVx
	for barebox@lists.infradead.org;
	Wed, 05 Mar 2025 07:48:52 +0000
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-5496bc2e261so2970611e87.3
        for <barebox@lists.infradead.org>; Tue, 04 Mar 2025 23:48:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1741160929; x=1741765729; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=xCe6ZAvuCEocSGI8emY4LpmEuiNXHgAZugDy9NXlWXU=;
        b=TZKcrrDKud9k4FC20laMm9WVj71k6rJZybBnf3Oidt/8y9ULlgJJgA1e0TdDRF5CCY
         RALL7fl75AJZuc1ZrzlaK/e4JfOu7tZ+nx3VMbJZYhH1F6PIXM8zjuQl1q+mIiyv/Z4U
         68B587GiJDQCPdj9A+7B8UmTap4iCSE2f5ouAcI6Hc19V1WAxcSjC4PW0Szv/IkwWwdT
         UDo/lJBHJ6BlsOJ1qfAen13+do1UMOE0IWrNz8OiZJ78Ahw+7wYTLG3uI8YLNG50jPq+
         5RthEAN8F2BabyLC9hFL6RPCj++ZYTO8MFIasSmCPA41yQwp/pl3CYjfy+ZJvznL3t50
         j1zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741160929; x=1741765729;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xCe6ZAvuCEocSGI8emY4LpmEuiNXHgAZugDy9NXlWXU=;
        b=TV6gSPYAtXP1pCPWH8aWw7JLOBGIldX+nOf/4Bg/Y19juB/9nniZIs8nHC7wpmET0R
         6PlTm99KBwdFNisRHFxMRLtu4CdUcKB/FagDYUuUSvjBorLuZPDzdUGm7+rrYl8m8ZZV
         5hgSd55h9NmgWrjPkushLfDDHhXFqK1Og35LdZkIHfx3nXc9ZDU0sSeK98+KCknqMpVi
         /+HFlsiy5iyzPynConLqNV3yyeK5EC/SbVIuTl9RV5LiTpH4N9g4FFd7esQcFp0BEy/0
         RWiknABPkVUgDOxSeDWv4+lLX5/MIKFWw6O0CW1ZS7RyQpReVnxDcHdlX8AmI4ZnSntw
         asMA==
X-Gm-Message-State: AOJu0YzEOga9mQ75/jrtgrp06dXh0BzHX5SrQpf7zxoDL9VOGMeay3kl
	0FNn/13TTaF+zmVixCM0VuRCWg4NimuoeFetS+Cot8GiUV8VqQGRKxynN9MIOu0=
X-Gm-Gg: ASbGncsWyQQ/iCx9LfAO0E8QwVop6d/u5NQKU5tsI6xWUlOx9MrL0vj9KoS0svM5t9q
	E/jmovescZXkpDrEw+fEEdMMGAGnsL/+THFhTY8AxiPYvPOtDSdSty61d3LvSoecaZekWm7slz6
	HfEoMMoA12RZml1xihJCy//t/5XBPthcjH/G8O4l9m4iK9gm8ssQ9OgFIL1YDzL/kuYPgicNtxS
	RGVLhgUJSzNv5iTw+o4wnsuobGylQXkHkjuoTG9wSQd4ZjjdV8ZYAqKfL9PU9Ne4TujbrV+CUi5
	ZaeKk7MGjYdH+D03OLVGJCp6mmAtwgEtKXu0OoeECc0SNTRzeCncmBKqU0w43qrTU8I=
X-Google-Smtp-Source: AGHT+IGwAkhiEOfjfLzWqGv5HsTeRWDJHxXdtPXCXmrludZyyJ8qG+5NtiACx9lY5ei2jvCA/+3Tkg==
X-Received: by 2002:a19:641a:0:b0:549:4e78:9ed7 with SMTP id 2adb3069b0e04-5497d38ed09mr711724e87.49.1741160928881;
        Tue, 04 Mar 2025 23:48:48 -0800 (PST)
Received: from localhost.localdomain ([188.243.23.53])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5495c30df33sm1121572e87.128.2025.03.04.23.48.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Mar 2025 23:48:46 -0800 (PST)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Wed,  5 Mar 2025 10:48:35 +0300
Message-Id: <20250305074835.34782-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250304_234851_454650_2D184828 
X-CRM114-Status: GOOD (  12.15  )
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
Subject: [PATCH] at91: sama5d2: Do not use the contents of BSC_CR if the DISABLE_BSCR bit is set in the fuse
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The DISABLE_BSCR bit in Fuse means "Does not read BSC_CR content,
so the Boot settings are those from the Fuse".
Let's ignore BSC_CR it this case.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 include/mach/at91/sama5d2.h | 18 ++++++++++--------
 1 file changed, 10 insertions(+), 8 deletions(-)

diff --git a/include/mach/at91/sama5d2.h b/include/mach/at91/sama5d2.h
index 90b566ffc4..d8a450255f 100644
--- a/include/mach/at91/sama5d2.h
+++ b/include/mach/at91/sama5d2.h
@@ -305,16 +305,18 @@ static inline void __iomem *sama5d2_pio_map_bank(int bank, unsigned *id)
 
 static inline u32 sama5d2_bootcfg(void)
 {
-	u32 __iomem *bureg = SAMA5D2_BASE_SECURAM + 0x1400;
-	u32 bsc_cr = readl(SAMA5D2_BASE_SYSC + 0x54);
-	u32 __iomem *bootcfg;
+	u32 bsc_cr, bootcfg = readl(SAMA5D2_SFC_DR(16));
 
-	if (bsc_cr & SAMA5D2_BUREG_VALID)
-		bootcfg = &bureg[FIELD_GET(SAMA5D2_BUREG_INDEX, bsc_cr)];
-	else
-		bootcfg = SAMA5D2_SFC_DR(512 / 32);
+	if (bootcfg & SAMA5D2_DISABLE_BSC_CR)
+		return bootcfg;
 
-	return readl(bootcfg);
+	bsc_cr = readl(SAMA5D2_BASE_SYSC + 0x54);
+	if (bsc_cr & SAMA5D2_BUREG_VALID) {
+		u32 __iomem *bureg = SAMA5D2_BASE_SECURAM + 0x1400;
+		bootcfg = readl(&bureg[FIELD_GET(SAMA5D2_BUREG_INDEX, bsc_cr)]);
+	}
+
+	return bootcfg;
 }
 
 #endif
-- 
2.39.1



