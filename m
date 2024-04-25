Delivery-date: Thu, 25 Apr 2024 14:11:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rzxwK-00Ggnf-0r
	for lore@lore.pengutronix.de;
	Thu, 25 Apr 2024 14:11:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rzxwJ-0007Ds-Io
	for lore@pengutronix.de; Thu, 25 Apr 2024 14:11:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NmoBg9B2vXuz0XFwqPKLqfLL969VOlYhtexxSFrTYWg=; b=LOQsQHOJ6/fpFK
	RM48y8eCneeDfNjIHjIrPYrgZU1iWbcSD2fEsjV92xusxZ5ovhr2qkHb6Gy5rrDzE0fSjGZodsgG1
	roByxCmOjoar4OFvzq/r+fulqmdLgzz9lx0CBYSB5+DZBx8HUM85CLfs9XTjb5raXpECoitDrPXPf
	g+R0dca1X3mFaf8GzPvE+JnKzR5iXa16cOsS0zzwG4vuvjLCski42eXEjj1WQJskjgQoTRUYl0ep8
	8Wxj0rP7GKW6Kvz83X8dFIwsggFO3fXRbba+pjyvAcdSYP5GsiW5rzgYzr5K8PJZ9ZgeOCQQQ5Iw4
	hva9bE4ZjFiKZGnzHVJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzxvl-000000089eT-0a4g;
	Thu, 25 Apr 2024 12:10:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzxvi-000000089cX-0121
	for barebox@lists.infradead.org;
	Thu, 25 Apr 2024 12:10:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rzxvg-0006ee-Cc; Thu, 25 Apr 2024 14:10:20 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rzxvf-00EFvT-Tg; Thu, 25 Apr 2024 14:10:19 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rzxgY-009aQk-2h;
	Thu, 25 Apr 2024 13:54:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 25 Apr 2024 13:54:36 +0200
Message-Id: <20240425115439.2269239-13-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240425115439.2269239-1-s.hauer@pengutronix.de>
References: <20240425115439.2269239-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240425_051022_074870_0A13DA95 
X-CRM114-Status: UNSURE (   9.96  )
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
Cc: Jan Weitzel <j.weitzel@phytec.de>, Vicente Bergas <vicencb@gmail.com>, Bo Shen <voice.shen@atmel.com>, Matthias Kaehlcke <matthias@kaehlcke.net>, Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 12/15] ARM: drop non PBL support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

All ARM boards now use PBL, so remove unused code inside #ifdef
CONFIG_PBL_IMAGE.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Kconfig             |  1 -
 arch/arm/cpu/entry_ll_32.S   |  4 ----
 arch/arm/cpu/entry_ll_64.S   |  4 ----
 arch/arm/cpu/start.c         | 17 -----------------
 arch/arm/lib32/barebox.lds.S |  3 ---
 arch/arm/lib64/barebox.lds.S |  3 ---
 6 files changed, 32 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index e2ea68e762..9acda8d929 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -123,7 +123,6 @@ config ARCH_ZYNQ
 	bool "Xilinx Zynq-based boards"
 	depends on 32BIT
 	select HAS_DEBUG_LL
-	select PBL_IMAGE
 	select GPIOLIB
 
 endchoice
diff --git a/arch/arm/cpu/entry_ll_32.S b/arch/arm/cpu/entry_ll_32.S
index 2800174c45..0d4c47c1c8 100644
--- a/arch/arm/cpu/entry_ll_32.S
+++ b/arch/arm/cpu/entry_ll_32.S
@@ -19,9 +19,5 @@ ENTRY(__barebox_arm_entry)
 	mov	r0, r4
 	mov	r1, r5
 	mov	r2, r6
-#if IS_ENABLED(CONFIG_PBL_IMAGE)
 	b	barebox_pbl_start
-#else
-	b	barebox_non_pbl_start
-#endif
 ENDPROC(__barebox_arm_entry)
diff --git a/arch/arm/cpu/entry_ll_64.S b/arch/arm/cpu/entry_ll_64.S
index 6530bec5eb..5eb6efed5b 100644
--- a/arch/arm/cpu/entry_ll_64.S
+++ b/arch/arm/cpu/entry_ll_64.S
@@ -19,9 +19,5 @@ ENTRY(__barebox_arm_entry)
 	mov	x0, x19
 	mov	x1, x20
 	mov	x2, x21
-#if IS_ENABLED(CONFIG_PBL_IMAGE)
 	b	barebox_pbl_start
-#else
-	b	barebox_non_pbl_start
-#endif
 ENDPROC(__barebox_arm_entry)
diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index 0351dcb927..cc5529eef5 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -224,11 +224,6 @@ __noreturn __prereloc void barebox_non_pbl_start(unsigned long membase,
 
 	mem_malloc_init((void *)malloc_start, (void *)malloc_end - 1);
 
-	if (IS_ENABLED(CONFIG_MMU) && !IS_ENABLED(CONFIG_PBL_IMAGE)) {
-		arm_early_mmu_cache_invalidate();
-		mmu_early_enable(membase, memsize);
-	}
-
 	if (IS_ENABLED(CONFIG_BOOTM_OPTEE))
 		of_add_reserve_entry(endmem - OPTEE_SIZE, endmem - 1);
 
@@ -237,17 +232,6 @@ __noreturn __prereloc void barebox_non_pbl_start(unsigned long membase,
 	start_barebox();
 }
 
-#ifndef CONFIG_PBL_IMAGE
-
-void start(void);
-
-void NAKED __section(.text_entry) start(void)
-{
-	barebox_arm_head();
-}
-
-#else
-
 void start(unsigned long membase, unsigned long memsize, void *boarddata);
 /*
  * First function in the uncompressed image. We get here from
@@ -258,4 +242,3 @@ void NAKED __prereloc __section(.text_entry) start(unsigned long membase,
 {
 	barebox_non_pbl_start(membase, memsize, boarddata);
 }
-#endif
diff --git a/arch/arm/lib32/barebox.lds.S b/arch/arm/lib32/barebox.lds.S
index ec145569be..90be773840 100644
--- a/arch/arm/lib32/barebox.lds.S
+++ b/arch/arm/lib32/barebox.lds.S
@@ -16,9 +16,6 @@ SECTIONS
 #endif
 	.image_start : { *(.__image_start) }
 
-#ifndef CONFIG_PBL_IMAGE
-	PRE_IMAGE
-#endif
 	. = ALIGN(4);
 
 	._text : { *(._text) }
diff --git a/arch/arm/lib64/barebox.lds.S b/arch/arm/lib64/barebox.lds.S
index de777ddb54..a05340ad48 100644
--- a/arch/arm/lib64/barebox.lds.S
+++ b/arch/arm/lib64/barebox.lds.S
@@ -16,9 +16,6 @@ SECTIONS
 
 	.image_start : { *(.__image_start) }
 
-#ifndef CONFIG_PBL_IMAGE
-	PRE_IMAGE
-#endif
 	. = ALIGN(4);
 	._text : { *(._text) }
 	.text      :
-- 
2.39.2



