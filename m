Delivery-date: Thu, 09 Jun 2022 11:44:52 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzEii-008dX0-6S
	for lore@lore.pengutronix.de; Thu, 09 Jun 2022 11:44:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzEig-0004mK-O2
	for lore@pengutronix.de; Thu, 09 Jun 2022 11:44:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pOunCKjyW3gEmJcqeSoedLehYJVvfIjvr3ow6G2Ag4U=; b=0/B+0FuILi1+N9
	rc106Cy+VFc40KWshyH1+SOH2RTe4v94zcQ6fsHFsuUDSGGSOXhZGtt7kB8os57+cnDiLfI1Ocxet
	02Dl2cmg6bsmNFnRVx+Yl/y65Uj/5Fhdx9knBbHAtmFtuBUNr4cHyQcRAR5OHrWU57d2ovaRq+9yN
	g3dnjkvQE2ML+b9WL/3UOC8WGW8LRhzphZLmkHGv6HiOjNBjm6KsB3MybhLlZUecFZIlPIujyj0v0
	zILp87C6VjbuoJsHddeCEHANyyv43EErUJMWbueh05daC8HpStw141QGME4vM4WZTUQLp97R4F1/0
	lCTRg4PWyinOJ387nLwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzEhG-000k76-8e; Thu, 09 Jun 2022 09:43:22 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzEh1-000k1m-Cb
	for barebox@lists.infradead.org; Thu, 09 Jun 2022 09:43:10 +0000
Received: by mail-lf1-x136.google.com with SMTP id u26so36383753lfd.8
        for <barebox@lists.infradead.org>; Thu, 09 Jun 2022 02:43:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=UEwRG1U6eWdl8av4UQS9USFVxW2ZP4SHkNFQA2BfZnk=;
        b=Z6oo8NALsHG6152LjaKDfb+GTW5XHIKpapMB3I6hrQluNjqe3K2p62qkdNLVf56F7n
         5PbbdmkGInS49zvjc95F9/3poSWagy0qsDD1iOmPtqDiiy/D/fFwJd2OQrJeLfU8G7C8
         53zy9GB5glThIitxIe3hdSPJmCZ0Y5uZV2PWqyfeMaqUSdLyk+za55PrzYts6tMLtgyl
         ZDLkaRbcs4/PaFp1+18NOVFaMJ6OeHMadFysAoUECMxcp24chm97ukvPdnS2lfHkaenj
         Vcau5CN9adtDzSVslvNORRLMopM1ZZb66uIOYKmVE2xPRFJbIRBOwo0rebvmIqeOnpMv
         pd2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=UEwRG1U6eWdl8av4UQS9USFVxW2ZP4SHkNFQA2BfZnk=;
        b=t5l9dHGNzBYQVAhIi+G7wmaVj6lfnQOOyLS2yevouJjk7ssjn1BdT41MpnsaqFP369
         OF8xKrJ0RO5jI3Lyef+YPBwVNn0BRpLGs3YK4HkoU/RqJ31HOJRGUENMJH1KnOq5J4Kw
         A+2XHGD4Jwg9KiE7mSpOCHerZOG8R0zDNqmcTFNzFtw5R4qLDJK10eEQ7eRyxPScPy9i
         eS/Amgg0CAcS8OxGGNPxgIyASFnB0eFzgc3fay6ZMQNpbHrje7u9L7wuirTpusshFM4X
         rIdHPMKqi0ftAeystI2noL+opKRo7vsqEyZnQNSsyY8Q9y3+0fiwz3TrYG0frqKljk9u
         UDdg==
X-Gm-Message-State: AOAM532TX+U/qW7OFoBY5um3ufTw2w3RbNV/cGNRHvuSILdVZVTDEF/S
	ut/IQ4ZDpgjIgEDo0yMBA3ZCs63JgF4=
X-Google-Smtp-Source: ABdhPJzAiu9veYc2VkrC73tC8EdevZkh9I8eDsc8Qu4NKDQ/cuKZ6dt7W1MTjtcrr/O6ySiqQ9fVGw==
X-Received: by 2002:ac2:5150:0:b0:479:119d:5ba6 with SMTP id q16-20020ac25150000000b00479119d5ba6mr22374128lfd.507.1654767783122;
        Thu, 09 Jun 2022 02:43:03 -0700 (PDT)
Received: from shc.milas.spb.ru ([188.243.217.78])
        by smtp.gmail.com with ESMTPSA id h40-20020a0565123ca800b004785b66a9a4sm4150680lfv.126.2022.06.09.02.43.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jun 2022 02:43:02 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Thu,  9 Jun 2022 12:43:00 +0300
Message-Id: <20220609094300.24818-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220609_024307_511782_97109195 
X-CRM114-Status: UNSURE (   9.84  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.8 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: OMAP: watchdog: Fix compiler errors
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Fix for "ARM: OMAP: Rework watchdog code" commit.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 arch/arm/boards/myirtech-x335x/lowlevel.c | 2 +-
 arch/arm/mach-omap/Makefile               | 2 +-
 arch/arm/mach-omap/omap_generic.c         | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boards/myirtech-x335x/lowlevel.c b/arch/arm/boards/myirtech-x335x/lowlevel.c
index 4d32d2da1e..c394253320 100644
--- a/arch/arm/boards/myirtech-x335x/lowlevel.c
+++ b/arch/arm/boards/myirtech-x335x/lowlevel.c
@@ -69,7 +69,7 @@ ENTRY_FUNCTION(start_am33xx_myirtech_sram, bootinfo, r1, r2)
 
 	fdt = __dtb_z_am335x_myirtech_myd_start;
 
-	omap_watchdog_disable(IOMEM((AM33XX_WDT_BASE));
+	omap_watchdog_disable(IOMEM(AM33XX_WDT_BASE));
 
 	mpupll = MPUPLL_M_800;
 	if (am33xx_get_cpu_rev() == AM335X_ES2_1) {
diff --git a/arch/arm/mach-omap/Makefile b/arch/arm/mach-omap/Makefile
index 88c6b1d594..6b42196b23 100644
--- a/arch/arm/mach-omap/Makefile
+++ b/arch/arm/mach-omap/Makefile
@@ -16,7 +16,7 @@
 #
 #
 obj-$(CONFIG_ARCH_OMAP) += syslib.o omap_devices.o omap_generic.o
-pbl-$(CONFIG_ARCH_OMAP) += syslib.o
+pbl-$(CONFIG_ARCH_OMAP) += syslib.o omap_generic.o
 obj-$(CONFIG_ARCH_OMAP3) += omap3_generic.o auxcr.o
 pbl-$(CONFIG_ARCH_OMAP3) += omap3_generic.o auxcr.o
 obj-$(CONFIG_ARCH_OMAP4) += omap4_generic.o omap4_clock.o
diff --git a/arch/arm/mach-omap/omap_generic.c b/arch/arm/mach-omap/omap_generic.c
index c0f8cea999..6bb26a6ef0 100644
--- a/arch/arm/mach-omap/omap_generic.c
+++ b/arch/arm/mach-omap/omap_generic.c
@@ -85,7 +85,7 @@ void omap_watchdog_disable(const void __iomem *wdt)
 	do {
 	} while (__raw_readl(wdt + OMAP_WDT_WWPS));
 
-	__raw_writel(WDT_DISABLE_CODE2, wdt + WSPR);
+	__raw_writel(WDT_DISABLE_CODE2, wdt + OMAP_WDT_WSPR);
 }
 
 #ifdef CONFIG_BOOTM
-- 
2.32.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

