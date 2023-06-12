Delivery-date: Mon, 12 Jun 2023 10:23:23 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8cpg-003b4H-W8
	for lore@lore.pengutronix.de; Mon, 12 Jun 2023 10:23:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8cpe-0003gB-OH
	for lore@pengutronix.de; Mon, 12 Jun 2023 10:23:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=pWHY+zaObD+v8jeMHBpMKuMq+ZU6tr3mSgnOOdsVTE0=; b=op41MN+j4Pu+ErhqnmCieA7mKo
	qNw2h+9l8KlZcdeuMztN45WvekE3JC/lM4MLwGA/AWgUg7pJP1ClF7jAm7LUOGbvn6DMOeejpqdOD
	8aI1c2iTIxb32804PpQxPyTI5VGvSuaMTdJMEJIFlV48m8BclhPelsy40y92vl9AIu/AYSbezKOk9
	CUTgtutKr524bvRHYoVDF7lgdJp2U7/MCT0QEwUBrtEKHEGauuh6HNvcU/Xxn6VVVzcVYDuHTStyB
	DewgQpjSby7fvYO7b4Az1YgMDq1lh5fAuJ4sa0zrV/oBaBpT8fXXs+tYhe4ccRZ2a9tBCGAGc+KXJ
	2rbvyqVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8coB-0035Qr-1U;
	Mon, 12 Jun 2023 08:21:51 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8co8-0035Pw-2p
	for barebox@lists.infradead.org;
	Mon, 12 Jun 2023 08:21:50 +0000
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-977d02931d1so595005366b.0
        for <barebox@lists.infradead.org>; Mon, 12 Jun 2023 01:21:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20221208; t=1686558106; x=1689150106;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=pWHY+zaObD+v8jeMHBpMKuMq+ZU6tr3mSgnOOdsVTE0=;
        b=IBMv6zavh/+ubC5fpj/1qkjawMp9XCVcQ/vvTP0yteWcd90JWLxljyf9HsPEJJEhFv
         UZcI/MVT2Gr5xaLFYkZOE9CgDwGFMI6qLLaeQ4Mh9RR2p3w308OiQMfTblOVW50KAozU
         MlhP85gFSu1JlFgPQ+TcJCXqHI4HAr2RR5Gy6zptQ1MWMTWY9XnBg4YLW9PMQaYhLWzj
         dCQXa/jKI23DPgXQ2vUB0FNxCF5p7xPaC8+Nx8c9hPtc93J+6gdcmJRXOju0xUUT0VvM
         NJVTnopkjUy9u1LpKB+8qRLTu5h38Px0IPeO02uO1KQ2W/ZqOfu5S/VUoyOK3cy3+31X
         k8pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686558106; x=1689150106;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pWHY+zaObD+v8jeMHBpMKuMq+ZU6tr3mSgnOOdsVTE0=;
        b=ckFXmHNjyzUksRMYJXMKs94BdNUiLrbHlFEUZaokFk6MouHoXkjbDsm+2uDYozCAQ1
         tPDHpC8jWKT7UJTTBTG64bPZSRQTeA4N+MNS2VS1bN6P5G0ZQzXd65N5sVQ8usEODRrn
         3ruChczBYiyEhMcdLdTHqzHK9pOhGcILBYyMWeVNKddH8Gm0h2lXy1ko9AaB4vMZqSPl
         CDcUn0+8bKMgjYW8LlUUQPLcBqjBEOwaBIn+EFYV3LTnW5Y9U/1WiiSGPhNYV/9XOeOS
         LMYsPiO4J08F7jt1NMxkQfPzuzEZL/LP5c8LAato666YSfLfvz5QBoaK1/7bRcug8gU5
         iUbQ==
X-Gm-Message-State: AC+VfDw2Hn21ZmNQb/wnYESX6hFiytRejxWl/RFeSFcWCnrwSSvqnU6i
	wwJd6a2lk+1sRi+j6mIgXceKXK9zJMs=
X-Google-Smtp-Source: ACHHUZ5eyzWnUDcZYIhYUQmwAb4lFNFiquKbXpTG1GySWNAaiBx1VDUuG/BgDfD+wrTapidnmmLgVg==
X-Received: by 2002:a17:907:6e23:b0:970:e80:e29a with SMTP id sd35-20020a1709076e2300b009700e80e29amr8295628ejc.68.1686558106011;
        Mon, 12 Jun 2023 01:21:46 -0700 (PDT)
Received: from development2.visionsystems.de (mail.visionsystems.de. [213.209.99.202])
        by smtp.gmail.com with ESMTPSA id y9-20020a17090614c900b009788d8389e9sm4866332ejc.169.2023.06.12.01.21.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jun 2023 01:21:45 -0700 (PDT)
From: yegorslists@googlemail.com
To: barebox@lists.infradead.org
Date: Mon, 12 Jun 2023 10:21:09 +0200
Message-Id: <20230612082109.3300950-1-yegorslists@googlemail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_012148_914637_550CE013 
X-CRM114-Status: UNSURE (   8.86  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] mtd: nand: omap: Depend on BUS_OMAP_GPMC
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Yegor Yefremov <yegorslists@googlemail.com>

NAND OMAP driver requires GPMC bus driver.

Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
---
 drivers/mtd/nand/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/mtd/nand/Kconfig b/drivers/mtd/nand/Kconfig
index f50b860c45..d4b941d20c 100644
--- a/drivers/mtd/nand/Kconfig
+++ b/drivers/mtd/nand/Kconfig
@@ -65,6 +65,7 @@ config NAND_MXS
 config NAND_OMAP_GPMC
 	tristate "NAND Flash Support for GPMC based OMAP platforms"
 	depends on OMAP_GPMC
+	depends on BUS_OMAP_GPMC
 	help
 	  Support for NAND flash using GPMC. GPMC is a common memory
 	  interface found on Texas Instrument's OMAP platforms
-- 
2.34.1



