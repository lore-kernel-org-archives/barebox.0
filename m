Delivery-date: Wed, 18 Jun 2025 08:38:29 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRmRJ-008WgS-1s
	for lore@lore.pengutronix.de;
	Wed, 18 Jun 2025 08:38:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRmRI-0003B8-SR
	for lore@pengutronix.de; Wed, 18 Jun 2025 08:38:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=n94jwzVSrpjE1R7EMHsL41N4a6Afv+HZydvgld1fLjE=; b=C94jDAO2royt0+hXLKMG+Prvan
	ajUPTPvHzfRGjGGM9v3njDFQ5v+u9XrYZvcBY1jl6TCc2/lE4zH2DuCf/D11fTPLn7oBpmQOoT9Df
	fCaoIXoQJ1l+7Yo7UCon1hSDNLo1xb7zHHUusm8sVJqJh6W3i/N0xGKcl6GVafuaX+s0QK/Pe0+Ob
	BUkFEJpZ1WcG6YwtEx21kpk7YXeVKusRqvdp56L+7GKOaa1W3ydtYs8Cx5MCUZMOn81FG8kauYJMS
	x5oPRPxQB893Igatc0eBT9mZu45vDiEbxHlBmQzAe+1GmchITugmBS3sWBwLojCA4HSBlMY0atPyg
	6ye2xB2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRmQi-00000009Btk-3RiY;
	Wed, 18 Jun 2025 06:37:52 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRmP4-00000009BiI-10qr
	for barebox@lists.infradead.org;
	Wed, 18 Jun 2025 06:36:11 +0000
Received: by mail-lj1-x234.google.com with SMTP id 38308e7fff4ca-32b49ac6431so38324551fa.1
        for <barebox@lists.infradead.org>; Tue, 17 Jun 2025 23:36:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750228568; x=1750833368; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=n94jwzVSrpjE1R7EMHsL41N4a6Afv+HZydvgld1fLjE=;
        b=CBYMphyr+WbaidrVY67KigBGagnLh3oYQC62834rlpRTeyrtT8yZGvXFmIrEOn7l6y
         oL9CpB6ixTJTM/rqxMB59oKxBP3FouUWB6jQoHEIHj5BoYNABErrKzs1Vo8STmGPzEGx
         B9dKHU1uZzsRYP/3QG2h2MJ3qHjQl/PIGWYOujm+1QF6h9Oh57XQi9GogtaEN86ht1be
         dlGIuvmDMlozFjLZvWtEIrxbu5MJU0Nke9/EvgFBkXfcKgx8ZX9JLUEiF/1Bec7UFcJE
         tJPybG8uAaf0t1HpMGf/RKCd0zSbkyJ3EY5GakjCo9OC05GslPancXk9gB7Elm5Be618
         vHlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750228568; x=1750833368;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=n94jwzVSrpjE1R7EMHsL41N4a6Afv+HZydvgld1fLjE=;
        b=lOLVL0yza6XFT5Slc6WyMDGsfVfFyiDm3+5MuIFvyo1SGa/5YCvw6HgShxd5FgW5Lg
         n649j1qWbTIkijrA+jTAS9/yF+JROG0MKP8tlwSbSwqiWUv1VV4fHvda/jWzNzDHI3/Z
         7RVbG0iR8qoAhWaPRdYoxHrO5kQY9TONu7ZeYR2BjlFeEbqMz92a3kGxv1yY85wOGyoT
         Ev34+EZbH0lbH0IgkjGn5Mok8AcdvBqBLS/NnA4LorlFNVK1J7+uuXvtzRA67xOY0iCl
         773/KxvVLlWn37LbL48pAOeYrbS/WtbUFcGiY+VggzaKeWdp8MCz7+QnSnlAiXhny7do
         FKIg==
X-Gm-Message-State: AOJu0Ywlp1T627AzRcY3nI6LDPTzrRZYUC7GH3ApVAEdddIxeJH8CEy2
	tsgRKtdT0MzNCpeNnVYj8fKIsxDZt/N9FEX9CAuUjj7y65pjIiS9xW3oHMoxfA==
X-Gm-Gg: ASbGncvJapCr96g+4VH2IDDp3LE2qYdrmoQ9vR05VWfD1bWGbU7CdT+3+MW6J6GSzP/
	MN0/z9lcWnNdO4dMJpzDwfekXJDzSYKhZkcax3e4bfqkHjeHQOJeaM5kkMKkhqr5Dh+4cAhFsbb
	LsgvlJrB8aahLENuRIOTnmn4a1mM3eHDQYuVm23sjbOwl96LSE2VTHoUtEB63eqlzz0bx1qcEi/
	U5lHXXLo33CJXLgS51ZWGEuCIcyqyHLSUKGuvfsui5Yuyl0auiRoJ8EcZi+DDd+ppusLCc8Mqc1
	Nxe2RZA3DmBZIsvaIc2ifC9p172sAZXsow/p75TDeI1J2kd92NNdG8QP6X1+jXraSwtFcK1Hth3
	slr52W/DZhQ==
X-Google-Smtp-Source: AGHT+IHOQv8JvniubMWx1VekBjaZxoLYfPtICL43CENjefliBicr01BOobDhnhhDIAicitKzScZoig==
X-Received: by 2002:a2e:a721:0:b0:32a:8855:f214 with SMTP id 38308e7fff4ca-32b4a5c00e6mr31958871fa.27.1750228567411;
        Tue, 17 Jun 2025 23:36:07 -0700 (PDT)
Received: from localhost.localdomain ([188.243.23.53])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-32b3c7decb8sm19038121fa.49.2025.06.17.23.36.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jun 2025 23:36:06 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Wed, 18 Jun 2025 09:35:48 +0300
Message-Id: <20250618063552.23777-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250617_233610_278387_83A82D9B 
X-CRM114-Status: GOOD (  13.19  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] ARM: at91: clock: remove unused SAMA5D2/SAMA5D3 support from legacy clock driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This driver is not used for DT-based boards and only affects legacy non-DT
platforms. Remove support for SAMA5D2/SAMA5D3 SoCs as they are exclusively
supported through DT-based boot in current configurations.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 arch/arm/mach-at91/clock.c | 32 ++++----------------------------
 1 file changed, 4 insertions(+), 28 deletions(-)

diff --git a/arch/arm/mach-at91/clock.c b/arch/arm/mach-at91/clock.c
index 6482aa93c0..7ffd549dc4 100644
--- a/arch/arm/mach-at91/clock.c
+++ b/arch/arm/mach-at91/clock.c
@@ -40,14 +40,10 @@
 #define cpu_has_utmi()		(  cpu_is_at91sam9rl() \
 				|| cpu_is_at91sam9g45() \
 				|| cpu_is_at91sam9x5() \
-				|| cpu_is_sama5d2() \
-				|| cpu_is_sama5d3() \
 				|| cpu_is_sama5d4())
 
 #define cpu_has_1200M_plla()	(cpu_is_sama5d4())
 
-#define cpu_has_1056M_plla()	(cpu_is_sama5d3())
-
 #define cpu_has_800M_plla()	(  cpu_is_at91sam9g20() \
 				|| cpu_is_at91sam9g45() \
 				|| cpu_is_at91sam9x5() \
@@ -64,14 +60,10 @@
 #define cpu_has_pllb()		(!(cpu_is_at91sam9rl() \
 				|| cpu_is_at91sam9g45() \
 				|| cpu_is_at91sam9x5() \
-				|| cpu_is_sama5d2() \
-				|| cpu_is_sama5d3() \
 				|| cpu_is_sama5d4()))
 
 #define cpu_has_upll()		(cpu_is_at91sam9g45() \
 				|| cpu_is_at91sam9x5() \
-				|| cpu_is_sama5d2() \
-				|| cpu_is_sama5d3() \
 				|| cpu_is_sama5d4())
 
 /* USB host HS & FS */
@@ -81,36 +73,25 @@
 #define cpu_has_udpfs()		(!(cpu_is_at91sam9rl() \
 				|| cpu_is_at91sam9g45() \
 				|| cpu_is_at91sam9x5() \
-				|| cpu_is_sama5d2() \
-				|| cpu_is_sama5d3() \
 				|| cpu_is_sama5d4()))
 
 #define cpu_has_plladiv2()	(cpu_is_at91sam9g45() \
 				|| cpu_is_at91sam9x5() \
 				|| cpu_is_at91sam9n12() \
-				|| cpu_is_sama5d2() \
-				|| cpu_is_sama5d3() \
 				|| cpu_is_sama5d4())
 
 #define cpu_has_mdiv3()		(cpu_is_at91sam9g45() \
 				|| cpu_is_at91sam9x5() \
 				|| cpu_is_at91sam9n12() \
-				|| cpu_is_sama5d2() \
-				|| cpu_is_sama5d3() \
 				|| cpu_is_sama5d4())
 
 #define cpu_has_alt_prescaler()	(cpu_is_at91sam9x5() \
 				|| cpu_is_at91sam9n12() \
-				|| cpu_is_sama5d2() \
-				|| cpu_is_sama5d3() \
 				|| cpu_is_sama5d4())
 
-#define cpu_has_pcr()		(cpu_is_sama5d2() \
-				|| cpu_is_sama5d3() \
-				|| cpu_is_sama5d4())
+#define cpu_has_pcr()		(cpu_is_sama5d4())
 
-#define cpu_has_dual_matrix()	(cpu_is_sama5d2() \
-				|| cpu_is_sama5d4())
+#define cpu_has_dual_matrix()	(cpu_is_sama5d4())
 
 static void *pmc;
 
@@ -253,7 +234,7 @@ static void pmc_periph_mode(struct clk *clk, int is_on)
 	u32 regval = 0;
 
 	/*
-	 * With sama5d3 chips, you have more than 32 peripherals so only one
+	 * With sama5d4 chips, you have more than 32 peripherals so only one
 	 * register is not enough to manage their clocks. A peripheral
 	 * control register has been introduced to solve this issue.
 	 */
@@ -517,7 +498,7 @@ static u32 at91_pll_rate(struct clk *pll, u32 freq, u32 reg)
 	unsigned mul, div;
 
 	div = reg & 0xff;
-	if (cpu_is_sama5d3() || cpu_is_sama5d4())
+	if (cpu_is_sama5d4())
 		mul = (reg >> 18) & 0x7ff;
 	else
 		mul = (reg >> 16) & 0x7ff;
@@ -666,8 +647,6 @@ int at91_clock_init(void)
 
 	if (cpu_is_sama5d4())
 		pmc = IOMEM(0xf0018000);
-	else if (cpu_is_sama5d2())
-		pmc = IOMEM(0xf0014000);
 	else
 		pmc = IOMEM(0xfffffc00); /*
 					  * All other supported SoCs use this
@@ -696,9 +675,6 @@ int at91_clock_init(void)
 	if (cpu_has_1200M_plla()) {
 		if (plla.rate_hz > 1200000000)
 			pll_overclock = 1;
-	} else if (cpu_has_1056M_plla()) {
-		if (plla.rate_hz > 1056000000)
-			pll_overclock = 1;
 	} else if (cpu_has_300M_plla()) {
 		if (plla.rate_hz > 300000000)
 			pll_overclock = 1;
-- 
2.39.1



