Delivery-date: Fri, 12 May 2023 13:12:12 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pxQh3-00F2XT-M0
	for lore@lore.pengutronix.de; Fri, 12 May 2023 13:12:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pxQgy-0005MS-IQ
	for lore@pengutronix.de; Fri, 12 May 2023 13:12:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UQq/n1k416QSMam89fDvJlmm+dCou6CD8jhGv2aTweM=; b=3IFAxZqUmh/utVoXN/oXIZpX5q
	ism9zXtm1rer3j4QM0/9eWzCDtkDeuiNXBYvgiO1U5MJ+/TD4LP3+FZkQGoxys9iF8q4VnEKUrO6X
	9zn4cuvEblcuKZVAjOgWVngmOXnUBFwvIfWUY+sOT9rVCAWmSZO5TJTeRQBgvcO9bQeQJ/zk5VkgG
	zaynzDv8N+DqUju4YmF9xEKHIUiBE1qc5oAoqZW8vsBZQhCjQv4Bxc3wbFeOl03DxG7hPTNbZ+g2h
	imQaFWqYriiXZh/Sg3i8nd5iY/O8YM6iGvRcs52ME0M13G2vqmk4RewszjHa3sqph02mbsfJg+H65
	QMNJLVOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pxQfq-00Bkat-0t;
	Fri, 12 May 2023 11:10:58 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pxQfM-00Bk1y-0Y
	for barebox@bombadil.infradead.org;
	Fri, 12 May 2023 11:10:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=UQq/n1k416QSMam89fDvJlmm+dCou6CD8jhGv2aTweM=; b=NNjVzM7EMd4y0as1EAppha3Mvw
	CPzv4/tOELV29159n3egb8h/YngIpSDxacJTn6YL/KfFdHwMdgni9151BQrKsn1ueujZw/mXQv4fb
	6krWtbQUp1578v8ORkaAztHC30DJq61DP/f76ycQOUez8qZyyvYemmVvd06oLsc4a+L/Jcbg+vDGq
	zbPaC0VvevWAB/zY+LmkOVt2zS+xZh1nDNSpacuaqoDQobchL2KsIAvhlBt9n7ovL3n/8ruc66Oqx
	hoHxppC672kIipdM6fPGrIBbt5xQ8r/geFNfprATVvuKZO5z1mmSPiQ1pduzDWgNME3XX26C13jGS
	VTMJqa6A==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pxQfF-009837-2w
	for barebox@lists.infradead.org;
	Fri, 12 May 2023 11:10:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pxQf9-0003go-Hb; Fri, 12 May 2023 13:10:15 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pxQf8-002wkT-Ru; Fri, 12 May 2023 13:10:14 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pxQf4-0055EU-B6; Fri, 12 May 2023 13:10:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 12 May 2023 13:09:58 +0200
Message-Id: <20230512111008.1120833-18-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230512111008.1120833-1-s.hauer@pengutronix.de>
References: <20230512111008.1120833-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230512_121022_057711_8E216D3D 
X-CRM114-Status: GOOD (  12.94  )
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
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 17/27] ARM: mmu: drop ttb argument
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
index 3cc5b14a46..4b75be621d 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -292,10 +292,12 @@ static void early_create_sections(void *ttb, uint64_t virt, uint64_t phys,
 
 #define EARLY_BITS_PER_VA 39
 
-void mmu_early_enable(unsigned long membase, unsigned long memsize,
-		      unsigned long ttb)
+void mmu_early_enable(unsigned long membase, unsigned long memsize)
 {
 	int el;
+	unsigned long ttb = arm_mem_ttb(membase, membase + memsize);
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
index 9d788eba2b..0b08af0176 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -216,14 +216,9 @@ __noreturn __no_sanitize_address void barebox_non_pbl_start(unsigned long membas
 
 	mem_malloc_init((void *)malloc_start, (void *)malloc_end - 1);
 
-	if (IS_ENABLED(CONFIG_MMU_EARLY)) {
-		unsigned long ttb = arm_mem_ttb(membase, endmem);
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
index 65de87f109..7c85f5a1fe 100644
--- a/arch/arm/cpu/uncompress.c
+++ b/arch/arm/cpu/uncompress.c
@@ -81,11 +81,8 @@ void __noreturn barebox_pbl_start(unsigned long membase, unsigned long memsize,
 
 	pr_debug("memory at 0x%08lx, size 0x%08lx\n", membase, memsize);
 
-	if (IS_ENABLED(CONFIG_MMU_EARLY)) {
-		unsigned long ttb = arm_mem_ttb(membase, endmem);
-		pr_debug("enabling MMU, ttb @ 0x%08lx\n", ttb);
-		mmu_early_enable(membase, memsize - OPTEE_SIZE, ttb);
-	}
+	if (IS_ENABLED(CONFIG_MMU_EARLY))
+		mmu_early_enable(membase, memsize);
 
 	free_mem_ptr = arm_mem_early_malloc(membase, endmem);
 	free_mem_end_ptr = arm_mem_early_malloc_end(membase, endmem);
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



