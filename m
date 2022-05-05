Delivery-date: Thu, 05 May 2022 09:37:53 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmW3d-002SRw-3Y
	for lore@lore.pengutronix.de; Thu, 05 May 2022 09:37:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmW3b-0003oS-Ff
	for lore@pengutronix.de; Thu, 05 May 2022 09:37:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CocH/ALBlPZ749t7NV1BOFIdnUVdpYcsaKKIyRAcFjM=; b=Z6CBnfnsfaaTa1
	K70GDDz0TIhGv8xTOSrcg+R/taxYWnO99nCkAd7f0A/gqWw9pgIIceJAPdwvbk8AVlIcrLPG52j2X
	bHh5zedcuJGzLdlGNjUuFd3QvT5Gz7wrWMsPFAUzRTTBWQ5iMv3l7SbQNuG5CSjojGC9H3c0Uj1+O
	2MU2Kumllmg8pUBfTnkG/Pz7DRO9AfBlBcITxq0uh4h243YmAE8BhZe35cLr1fvd/B15teVx05fWu
	cj7WXtxJh0Ol50sf9lkrQAKyyaGIOygtEAxf8OmUD42lPmtH9WwgXGe0v+uQYVAfko1SiQ5jku+A2
	2yPgF9//HtP7atxB4xpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nmW24-00EQwG-5x; Thu, 05 May 2022 07:36:16 +0000
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmW1z-00EQum-2K
 for barebox@lists.infradead.org; Thu, 05 May 2022 07:36:12 +0000
Received: by mail-lj1-x22e.google.com with SMTP id 17so4517805lji.1
 for <barebox@lists.infradead.org>; Thu, 05 May 2022 00:36:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=llM5Y3jiLEXZTw3iFJXzG4LUECsEtjeh6ApFmJUcUhI=;
 b=Z/BsyGSzZUat5eEA1+Js2o5BJHIG9W/2vYFJcH38HyKDuAc/QjDmJEVtKyiVnqx2KF
 pK0IB26A801GeeB6DujyF7bNH/YrHkRCgYuCEcsBL89y2yQWsQdsC4+RthpRgqAywHIt
 hHlSIx29lqGohC2iplU/F2/whaiG5HRaV0DFOkeFqqQpLUtYjLdPH5EZYxyRWJq37/Cg
 YnetrzKYlbdxqs9eo3fY9vnVDF/DEUTzqBrpGonwTd8rphw8D9z/r4lmsdcMZBcUYz3R
 bY4rSI5/sgPvgsI1k2/DyQERMoPPOVoyDoT5F6G9pCnD0jk/xcfCCZbZ7/ijT1pYk43y
 6Ldw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=llM5Y3jiLEXZTw3iFJXzG4LUECsEtjeh6ApFmJUcUhI=;
 b=O7pjSOiAurpZZFXh8lEsMRQ0Ov42ILOWPJ7MN+gTLKIXRt6hEvqAJmuFi8fSy+40Y0
 Kvi+uFmynkrIO2poWHIoiJWhKkmSNOMJB8RyjcqlPrhkAx8zSnVz/Wcg/gp7mT9mJyhA
 6YIh8RElkrtu8SMl7RPSJlf+Kj1UCOVa9uU6n5ssxOEMVCl/Xc0wpnZd9YTbrj7eTPcn
 moRJk3h9LY/jgI5x1kzCKj81v+3uwtYn3Av7A9yCIzsVi0LNewJuL+xZGZ43BWO/d8TH
 6fPhqdgJjPplB3vSD3gjBPnN2Q3LUfFZIWmTFyoxAl9fF6z/a+kjhRD4a2KwvFOiwKKR
 Xe5w==
X-Gm-Message-State: AOAM533qH2Y7YTo0NLFfziKCz1XVezJn1SBN8/VUjlWiiFi1NyCQZl/d
 Vg0fuVyht8pqnPdADM/uMTMsqAILBUdX9g==
X-Google-Smtp-Source: ABdhPJwcMQyCnflLRq+y/yx3ZjKnY2iKvYtw2wIAxHhOxPR9vkhaagq8alZozGYUBaeLGPbh0dzD4Q==
X-Received: by 2002:a05:651c:887:b0:247:f630:d069 with SMTP id
 d7-20020a05651c088700b00247f630d069mr15727669ljq.514.1651736167583; 
 Thu, 05 May 2022 00:36:07 -0700 (PDT)
Received: from shc.milas.spb.ru ([188.243.217.78])
 by smtp.gmail.com with ESMTPSA id
 cf13-20020a056512280d00b0047255d210d5sm116160lfb.4.2022.05.05.00.36.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 May 2022 00:36:06 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Thu,  5 May 2022 10:36:04 +0300
Message-Id: <20220505073604.15065-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220505_003611_147282_EF69DDD8 
X-CRM114-Status: GOOD (  11.37  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: OMAP: debug_ll: Use Kconfig UART base address
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 arch/arm/boards/afi-gf/lowlevel.c            |  2 +-
 arch/arm/boards/beagle/lowlevel.c            |  2 +-
 arch/arm/boards/beaglebone/lowlevel.c        |  2 +-
 arch/arm/boards/myirtech-x335x/lowlevel.c    |  2 +-
 arch/arm/boards/phytec-som-am335x/lowlevel.c |  2 +-
 arch/arm/boards/vscom-baltos/lowlevel.c      |  2 +-
 arch/arm/boards/wago-pfc-am35xx/lowlevel.c   |  2 +-
 arch/arm/mach-omap/include/mach/debug_ll.h   | 43 ++++++++++++--------
 8 files changed, 33 insertions(+), 24 deletions(-)

diff --git a/arch/arm/boards/afi-gf/lowlevel.c b/arch/arm/boards/afi-gf/lowlevel.c
index de40f6c5af..9e86b29b2d 100644
--- a/arch/arm/boards/afi-gf/lowlevel.c
+++ b/arch/arm/boards/afi-gf/lowlevel.c
@@ -230,7 +230,7 @@ static noinline int gf_sram_init(void)
 
 	am33xx_uart_soft_reset((void *)AM33XX_UART2_BASE);
 	am33xx_enable_uart2_pin_mux();
-	omap_uart_lowlevel_init((void *)AM33XX_UART2_BASE);
+	omap_uart_lowlevel_init();
 	putc_ll('>');
 
 	barebox_arm_entry(0x80000000, SZ_256M, fdt);
diff --git a/arch/arm/boards/beagle/lowlevel.c b/arch/arm/boards/beagle/lowlevel.c
index 683ab552f4..c64a2114d4 100644
--- a/arch/arm/boards/beagle/lowlevel.c
+++ b/arch/arm/boards/beagle/lowlevel.c
@@ -196,7 +196,7 @@ static noinline int beagle_board_init(void)
 
 	mux_config();
 
-	omap_uart_lowlevel_init((void *)OMAP3_UART3_BASE);
+	omap_uart_lowlevel_init();
 
 	/* Dont reconfigure SDRAM while running in SDRAM! */
 	if (!in_sdram)
diff --git a/arch/arm/boards/beaglebone/lowlevel.c b/arch/arm/boards/beaglebone/lowlevel.c
index 544e396e03..365ba64a79 100644
--- a/arch/arm/boards/beaglebone/lowlevel.c
+++ b/arch/arm/boards/beaglebone/lowlevel.c
@@ -139,7 +139,7 @@ static noinline int beaglebone_sram_init(void)
 
 	am33xx_uart_soft_reset((void *)AM33XX_UART0_BASE);
 	am33xx_enable_uart0_pin_mux();
-	omap_uart_lowlevel_init((void *)AM33XX_UART0_BASE);
+	omap_uart_lowlevel_init();
 	putc_ll('>');
 
 	barebox_arm_entry(0x80000000, sdram_size, fdt);
diff --git a/arch/arm/boards/myirtech-x335x/lowlevel.c b/arch/arm/boards/myirtech-x335x/lowlevel.c
index 1a883da203..da47300d81 100644
--- a/arch/arm/boards/myirtech-x335x/lowlevel.c
+++ b/arch/arm/boards/myirtech-x335x/lowlevel.c
@@ -98,7 +98,7 @@ ENTRY_FUNCTION(start_am33xx_myirtech_sram, bootinfo, r1, r2)
 	if (IS_ENABLED(CONFIG_DEBUG_LL)) {
 		am33xx_uart_soft_reset(IOMEM(AM33XX_UART0_BASE));
 		am33xx_enable_uart0_pin_mux();
-		omap_uart_lowlevel_init(IOMEM(AM33XX_UART0_BASE));
+		omap_uart_lowlevel_init();
 		putc_ll('>');
 	}
 
diff --git a/arch/arm/boards/phytec-som-am335x/lowlevel.c b/arch/arm/boards/phytec-som-am335x/lowlevel.c
index bffb3ad880..e4f3edd211 100644
--- a/arch/arm/boards/phytec-som-am335x/lowlevel.c
+++ b/arch/arm/boards/phytec-som-am335x/lowlevel.c
@@ -172,7 +172,7 @@ static noinline void physom_board_init(void *fdt, int sdram, int module_family)
 
 	am33xx_uart_soft_reset((void *)AM33XX_UART0_BASE);
 	am33xx_enable_uart0_pin_mux();
-	omap_uart_lowlevel_init((void *)AM33XX_UART0_BASE);
+	omap_uart_lowlevel_init();
 	putc_ll('>');
 
 	am335x_barebox_entry(fdt);
diff --git a/arch/arm/boards/vscom-baltos/lowlevel.c b/arch/arm/boards/vscom-baltos/lowlevel.c
index 7da2f92efb..2401cf20c4 100644
--- a/arch/arm/boards/vscom-baltos/lowlevel.c
+++ b/arch/arm/boards/vscom-baltos/lowlevel.c
@@ -104,7 +104,7 @@ static noinline void baltos_sram_init(void)
 
 	am33xx_uart_soft_reset((void *)AM33XX_UART0_BASE);
 	am33xx_enable_uart0_pin_mux();
-	omap_uart_lowlevel_init((void *)AM33XX_UART0_BASE);
+	omap_uart_lowlevel_init();
 	putc_ll('>');
 
 	am335x_barebox_entry(fdt);
diff --git a/arch/arm/boards/wago-pfc-am35xx/lowlevel.c b/arch/arm/boards/wago-pfc-am35xx/lowlevel.c
index 7da8fd0331..6a7f350dda 100644
--- a/arch/arm/boards/wago-pfc-am35xx/lowlevel.c
+++ b/arch/arm/boards/wago-pfc-am35xx/lowlevel.c
@@ -185,7 +185,7 @@ static noinline void pfc200_board_init(void)
 
 	if (IS_ENABLED(CONFIG_DEBUG_LL)) {
 		am33xx_uart_soft_reset(IOMEM(OMAP3_UART3_BASE));
-		omap_uart_lowlevel_init(IOMEM(OMAP3_UART3_BASE));
+		omap_uart_lowlevel_init();
 		putc_ll('>');
 	}
 
diff --git a/arch/arm/mach-omap/include/mach/debug_ll.h b/arch/arm/mach-omap/include/mach/debug_ll.h
index 25ddd485be..30a0d830c3 100644
--- a/arch/arm/mach-omap/include/mach/debug_ll.h
+++ b/arch/arm/mach-omap/include/mach/debug_ll.h
@@ -22,6 +22,8 @@
 #include <mach/omap4-silicon.h>
 #include <mach/am33xx-silicon.h>
 
+#ifdef CONFIG_DEBUG_LL
+
 #define LSR_THRE	0x20	/* Xmit holding register empty */
 #define LCR_BKSE	0x80	/* Bank select enable */
 #define LSR		(5 << 2)
@@ -34,22 +36,6 @@
 #define MCR		(4 << 2)
 #define MDR		(8 << 2)
 
-static inline void omap_uart_lowlevel_init(void __iomem *base)
-{
-	writeb(0x00, base + LCR);
-	writeb(0x00, base + IER);
-	writeb(0x07, base + MDR);
-	writeb(LCR_BKSE, base + LCR);
-	writeb(26, base + DLL); /* 115200 */
-	writeb(0, base + DLM);
-	writeb(0x03, base + LCR);
-	writeb(0x03, base + MCR);
-	writeb(0x07, base + FCR);
-	writeb(0x00, base + MDR);
-}
-
-#ifdef CONFIG_DEBUG_LL
-
 #ifdef CONFIG_DEBUG_OMAP3_UART
 #define OMAP_DEBUG_SOC OMAP3
 #elif defined CONFIG_DEBUG_OMAP4_UART
@@ -63,6 +49,23 @@ static inline void omap_uart_lowlevel_init(void __iomem *base)
 #define __OMAP_UART_BASE(soc, num) soc##_UART##num##_BASE
 #define OMAP_UART_BASE(soc, num) __OMAP_UART_BASE(soc, num)
 
+static inline void omap_uart_lowlevel_init(void)
+{
+	void __iomem *base = (void *)OMAP_UART_BASE(OMAP_DEBUG_SOC,
+			CONFIG_DEBUG_OMAP_UART_PORT);
+
+	writeb(0x00, base + LCR);
+	writeb(0x00, base + IER);
+	writeb(0x07, base + MDR);
+	writeb(LCR_BKSE, base + LCR);
+	writeb(26, base + DLL); /* 115200 */
+	writeb(0, base + DLM);
+	writeb(0x03, base + LCR);
+	writeb(0x03, base + MCR);
+	writeb(0x07, base + FCR);
+	writeb(0x00, base + MDR);
+}
+
 static inline void PUTC_LL(char c)
 {
 	void __iomem *base = (void *)OMAP_UART_BASE(OMAP_DEBUG_SOC,
@@ -75,6 +78,12 @@ static inline void PUTC_LL(char c)
 	/* Wait to make sure it hits the line, in case we die too soon. */
 	while ((readb(base + LSR) & LSR_THRE) == 0);
 }
-#endif
+#else /* CONFIG_DEBUG_LL */
+
+static inline void omap_uart_lowlevel_init(void)
+{
+}
+
+#endif /* CONFIG_DEBUG_LL */
 
 #endif
-- 
2.32.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

