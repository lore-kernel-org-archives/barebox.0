Delivery-date: Fri, 20 Jun 2025 10:24:12 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uSX2i-009Dp9-23
	for lore@lore.pengutronix.de;
	Fri, 20 Jun 2025 10:24:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uSX2i-000578-3w
	for lore@pengutronix.de; Fri, 20 Jun 2025 10:24:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=vO5ORaJ1kLyaSiXeb/1mOcHsmPHI76UMMZrCFIE1eAg=; b=zGS2AaNRafDO6jzCV9mLofuD5k
	IWSNYnHAY7P/oohgWcB4mjgEaBONHsJhuGCOfCOouEsxAWWYd8ydB7vg3BayVazxMjljpG6AJtmKy
	LlE5BuOBSO/Qwxh+amFYE3ElY5i6AQmZzjvPFkBBVxrCScr8fdwTeQ1WEKELKrwSFtkpk3NI8ndAc
	aXQmVHpz8heIKA8uY1kJFg0NcozThHPxPIVIkZ2anGT3R8gN3DcMpdlXkHagzhP3y7TskLHKHGmVG
	gILUQk9N+QmYuA5eOfYoUu1Y5PrcPsrcHKfT/IfhqNge0ENI3lOEPtetUYR70UBEI+BMOTcBnQrcQ
	wIKZbq/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSX2D-0000000F2rU-0c0M;
	Fri, 20 Jun 2025 08:23:41 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSWmW-0000000F0Ol-0RXh
	for barebox@lists.infradead.org;
	Fri, 20 Jun 2025 08:07:29 +0000
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-553dceb345eso1674151e87.1
        for <barebox@lists.infradead.org>; Fri, 20 Jun 2025 01:07:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750406846; x=1751011646; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=vO5ORaJ1kLyaSiXeb/1mOcHsmPHI76UMMZrCFIE1eAg=;
        b=P1CDqZQ4FGJ/GUWqfjFwT3Z21fvYcQM0SmDWMDJZ39v6axqWE3UdUnODPy9xZIXqbX
         Eo16U+sq5XfdVn5hwFVQ4Fe3qOH8NGpnM/HS6GqYsBUpDf2ejQBSHSQlgcF+LR3oPYBQ
         n/ty5kJtdQKO4dZEVhcjBd4978SagdRfKa0mLWm0VuYlwM+iAChk7mLJU13Z1BVGbRZD
         97L2kC2j3YPrION95lmLhvKQP8Naeypx9D0tAKMP+p/sZTO5X9jii2Dsaki6eSA1Vbo6
         1SEtaZpYJrTNN23VJnvxgN05DYC9QTy/eLdq8uIW/VPPRBvjG/sTseYVft0kNaBCVdwo
         g6WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750406846; x=1751011646;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vO5ORaJ1kLyaSiXeb/1mOcHsmPHI76UMMZrCFIE1eAg=;
        b=ZNOuUm05BUBEeRHjpryUlEeAVW33bs6gLdoAilBiy93lTXA2R1KMpaLac4lvfN8QWe
         80JGZvKTEN+YhiBTm+dvdmx+isQNz68t60ydLqFCEFLaEbZfnCDOnIzsKXjFNUzJkWrw
         f/WYzCkEiDK6ODh6IlCCZoViA5aIW5ZL7PFYrrAmXgq+CwlTaMhwV+vVjjT4M9nc9XXP
         57u5uBqD/bc6mNM79MYw9535vyRHc2JLNQRi3OohY3NcUIOxuxmegdqYVPqs+sIaBaLX
         3Qy3fl37BsyVyVmT5V2Xpxt4054/JShrNds1JJ4shR1DnQUERITPo38HajVK9Vftn7Sm
         EVzQ==
X-Gm-Message-State: AOJu0Yxc5npzcC9qr6fsGLQS8gWa4bILMsElOOSwrfO01JPtIqqsmyzE
	iBUybugb26xUFF2J6MK4M+tatPUsgLJ7OFGGpWp+CB5rd5kij0YSBdWbXgcLeg==
X-Gm-Gg: ASbGncvuxmyK1P+Y43ZKqhoh4m677qTvaxgYMmy9M0YVmrIJXRhVB9MfgOoXJ31/yNb
	aZ+IVjJ4NJ7tcAC5TX3L4Rbkbms/mCv2L+4y1HXgNgG2Z8d1QVMjGl4o7083lrpaEIpUS4rR1OO
	91kiFlM0Q2dVvoM5KK+RuTrSp4u5oki6AtCg8nSUQ0+jdNYfJs1U9q1JgupD2EyDCtJlJYSMYNq
	i6UJuQWbTFHvKMQYJvzdzIhXj5JrA/ovvD/pSL6dNIccszgOYTvLNRkwgT8jSnLP+d54qeaV5OB
	Snl0laLfY/9we9t74hTCY0Zbthc2YzGTttaOz3MOcjB6jnl9KtHmP8PoWId7p6GDyJkqb5cei+t
	Ujzf+Dla2
X-Google-Smtp-Source: AGHT+IEdyQ2+dKJYcGq2VgobYkmD0gcRBD+CzkbwZQBjRKgxiMpbPX4PGSMEk2Ly1e7oNqRSHFmyjg==
X-Received: by 2002:a05:6512:3e04:b0:553:296b:a62 with SMTP id 2adb3069b0e04-553e3b99018mr735209e87.12.1750406845560;
        Fri, 20 Jun 2025 01:07:25 -0700 (PDT)
Received: from localhost.localdomain ([188.243.23.53])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-32b97f79e64sm2089401fa.33.2025.06.20.01.07.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Jun 2025 01:07:24 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Fri, 20 Jun 2025 11:07:15 +0300
Message-Id: <20250620080715.21194-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250620_010728_143003_A7277A2D 
X-CRM114-Status: UNSURE (   9.23  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] ARM: at91: sam9_smc: remove redundant SAMA5D2 check
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The SAMA5D2 SoC uses a different SMC driver implementation (located in
drivers/mfd/atmel-smc.c) and doesn't utilize this low-level sam9_smc
driver. The check for AT91_SOC_SAMA5D2 in the read mode function is
therefore redundant and can be safely removed.

This cleanup eliminates dead code and improves maintainability by
removing an unused codepath. No functional changes are introduced.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 arch/arm/mach-at91/sam9_smc.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/mach-at91/sam9_smc.c b/arch/arm/mach-at91/sam9_smc.c
index 257d7a07c3..6c9e169a8e 100644
--- a/arch/arm/mach-at91/sam9_smc.c
+++ b/arch/arm/mach-at91/sam9_smc.c
@@ -101,7 +101,6 @@ static void sam9_smc_cs_read_mode(void __iomem *base,
 	void __iomem *mode_reg;
 
 	switch (at91_soc_initdata.type) {
-	case AT91_SOC_SAMA5D2:
 	case AT91_SOC_SAMA5D3:
 	case AT91_SOC_SAMA5D4:
 		mode_reg = base + AT91_SAMA5_SMC_MODE;
-- 
2.39.1



