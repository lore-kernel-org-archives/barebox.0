Delivery-date: Wed, 17 May 2023 11:42:01 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzDfW-0049wY-JX
	for lore@lore.pengutronix.de; Wed, 17 May 2023 11:42:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzDfS-0002ve-19
	for lore@pengutronix.de; Wed, 17 May 2023 11:42:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kiUPPxoWQx7vBtGzugoDd/AOiOP4BzZAjWi3R/GDADY=; b=VNv4MfYlhUhFEPab2SHDY4R05F
	bdCBe8RCPUNDp+dZns1LUSyMaPnXnDbrLuBMZpLAvaS8ZehjYpslXJWupU9YJzLo8s17Lj9J2L7QK
	afiByP7EgP6yrXHS9HDBmFfuefri4fVrCT8KZFA4JGLJUFM2oxsTGcWe16Dl9m2sua2nxTSxyEaTg
	Wh3XzKiS5J3h76roYlg+YpiDAD95zeDW5U7dcBF+IL9CtoAFe8LgiG9ula56JBDlE/1PxReQ+crz4
	FQ7EbjBAtMQhaYN1Tl0UYLU5ssuMkX0tdEMl+xmj4Gs1TgIlNr5WgEO21tXdEhuct8gKLSEwZWaBP
	YAkuxr4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pzDeL-0096hw-2X;
	Wed, 17 May 2023 09:40:49 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzDe5-0096RI-2p
	for barebox@bombadil.infradead.org;
	Wed, 17 May 2023 09:40:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=kiUPPxoWQx7vBtGzugoDd/AOiOP4BzZAjWi3R/GDADY=; b=NiG0A8BOSWXO5h+o0GFPc6+ozS
	oD/gR66qwCoMEZcXGTo+YJq1xPRdnl9+0/x4TNm8wwn7gLkgi6Xm++LDA/7jD9HVrFmGBl0diwt9e
	48/obm3QeEdvE6cmg0SHZaIeU7qrndkB+Ep5RhUHp+SgQWFPW9r30g7hQjpLWC3R16UTRdrnR2TOJ
	WE26sc3Vpt36ueZmV5pcGki8tGOaFo5wpZRHXkQg7s7T3ZcUGc4R4LNwq1a2eyt2uEXf+f9ufQhpD
	GJOh9Ege+ns5biGW1mPkKBvLhswU1cgPViblWFm3uwyOIdc9oy6xJpdwzfz8srpDhCoC39lA0ICa1
	7o3rp/MA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzD4d-00DB2A-2F
	for barebox@lists.infradead.org;
	Wed, 17 May 2023 09:04:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pzD4V-00040o-90; Wed, 17 May 2023 11:03:47 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pzD4U-000o7g-K6; Wed, 17 May 2023 11:03:46 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pzD4Q-00GasO-0z; Wed, 17 May 2023 11:03:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 17 May 2023 11:03:30 +0200
Message-Id: <20230517090340.3954615-25-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230517090340.3954615-1-s.hauer@pengutronix.de>
References: <20230517090340.3954615-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230517_100355_940713_45CD61C7 
X-CRM114-Status: GOOD (  13.58  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 24/34] ARM: mmu: drop ttb argument
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

No need to pass ttb to the MMU code, the MMU code can itself call
arm_mem_ttb() to get the desired base.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/mmu_32.c      |  9 +++++----
 arch/arm/cpu/mmu_64.c      |  8 +++++---
 arch/arm/cpu/start.c       | 11 +++--------
 arch/arm/cpu/uncompress.c  |  7 ++-----
 arch/arm/include/asm/mmu.h |  3 +--
 5 files changed, 16 insertions(+), 22 deletions(-)

diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
index a82382ad1e..bef4a01670 100644
--- a/arch/arm/cpu/mmu_32.c
+++ b/arch/arm/cpu/mmu_32.c
@@ -533,10 +533,11 @@ static inline void map_region(unsigned long start, unsigned long size,
 	create_sections(ttb, start, start + size - 1, flags);
 }
 
-void mmu_early_enable(unsigned long membase, unsigned long memsize,
-		      unsigned long _ttb)
+void mmu_early_enable(unsigned long membase, unsigned long memsize)
 {
-	ttb = (uint32_t *)_ttb;
+	ttb = (uint32_t *)arm_mem_ttb(membase, membase + memsize);
+
+	pr_debug("enabling MMU, ttb @ 0x%p\n", ttb);
 
 	set_ttbr(ttb);
 
@@ -566,7 +567,7 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize,
 	map_region((unsigned long)_stext, _etext - _stext, PMD_SECT_DEF_UNCACHED);
 
 	/* maps main memory as cachable */
-	map_region(membase, memsize, PMD_SECT_DEF_CACHED);
+	map_region(membase, memsize - OPTEE_SIZE, PMD_SECT_DEF_CACHED);
 
 	__mmu_cache_on();
 }
diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index 3cc5b14a46..d32eecf144 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -292,10 +292,12 @@ static void early_create_sections(void *ttb, uint64_t virt, uint64_t phys,
 
 #define EARLY_BITS_PER_VA 39
 
-void mmu_early_enable(unsigned long membase, unsigned long memsize,
-		      unsigned long ttb)
+void mmu_early_enable(unsigned long membase, unsigned long memsize)
 {
 	int el;
+	unsigned long ttb = arm_mem_ttb(membase + memsize);
+
+	pr_debug("enabling MMU, ttb @ 0x%08lx\n", ttb);
 
 	/*
 	 * For the early code we only create level 1 pagetables which only
@@ -311,7 +313,7 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize,
 	set_ttbr_tcr_mair(el, ttb, calc_tcr(el, EARLY_BITS_PER_VA), MEMORY_ATTRIBUTES);
 	early_create_sections((void *)ttb, 0, 0, 1UL << (EARLY_BITS_PER_VA - 1),
 			attrs_uncached_mem());
-	early_create_sections((void *)ttb, membase, membase, memsize, CACHED_MEM);
+	early_create_sections((void *)ttb, membase, membase, memsize - OPTEE_SIZE, CACHED_MEM);
 	tlb_invalidate();
 	isb();
 	set_cr(get_cr() | CR_M);
diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index 87207822a0..165d2d94e6 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -216,14 +216,9 @@ __noreturn __no_sanitize_address void barebox_non_pbl_start(unsigned long membas
 
 	mem_malloc_init((void *)malloc_start, (void *)malloc_end - 1);
 
-	if (IS_ENABLED(CONFIG_MMU_EARLY)) {
-		unsigned long ttb = arm_mem_ttb(endmem);
-
-		if (!IS_ENABLED(CONFIG_PBL_IMAGE)) {
-			pr_debug("enabling MMU, ttb @ 0x%08lx\n", ttb);
-			arm_early_mmu_cache_invalidate();
-			mmu_early_enable(membase, memsize - OPTEE_SIZE, ttb);
-		}
+	if (IS_ENABLED(CONFIG_MMU_EARLY) && !IS_ENABLED(CONFIG_PBL_IMAGE)) {
+		arm_early_mmu_cache_invalidate();
+		mmu_early_enable(membase, memsize);
 	}
 
 	if (IS_ENABLED(CONFIG_BOOTM_OPTEE))
diff --git a/arch/arm/cpu/uncompress.c b/arch/arm/cpu/uncompress.c
index abaf36b68c..e471dd87f9 100644
--- a/arch/arm/cpu/uncompress.c
+++ b/arch/arm/cpu/uncompress.c
@@ -81,11 +81,8 @@ void __noreturn barebox_pbl_start(unsigned long membase, unsigned long memsize,
 
 	pr_debug("memory at 0x%08lx, size 0x%08lx\n", membase, memsize);
 
-	if (IS_ENABLED(CONFIG_MMU_EARLY)) {
-		unsigned long ttb = arm_mem_ttb(endmem);
-		pr_debug("enabling MMU, ttb @ 0x%08lx\n", ttb);
-		mmu_early_enable(membase, memsize - OPTEE_SIZE, ttb);
-	}
+	if (IS_ENABLED(CONFIG_MMU_EARLY))
+		mmu_early_enable(membase, memsize);
 
 	free_mem_ptr = arm_mem_early_malloc(endmem);
 	free_mem_end_ptr = arm_mem_early_malloc_end(endmem);
diff --git a/arch/arm/include/asm/mmu.h b/arch/arm/include/asm/mmu.h
index fd8e93f7a3..9d2fdcf365 100644
--- a/arch/arm/include/asm/mmu.h
+++ b/arch/arm/include/asm/mmu.h
@@ -56,8 +56,7 @@ void __dma_clean_range(unsigned long, unsigned long);
 void __dma_flush_range(unsigned long, unsigned long);
 void __dma_inv_range(unsigned long, unsigned long);
 
-void mmu_early_enable(unsigned long membase, unsigned long memsize,
-		      unsigned long ttb);
+void mmu_early_enable(unsigned long membase, unsigned long memsize);
 void mmu_early_disable(void);
 
 #endif /* __ASM_MMU_H */
-- 
2.39.2



