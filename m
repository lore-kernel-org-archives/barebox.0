Delivery-date: Fri, 12 May 2023 13:12:10 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pxQh1-00F2X0-Li
	for lore@lore.pengutronix.de; Fri, 12 May 2023 13:12:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pxQgw-0005Jd-7o
	for lore@pengutronix.de; Fri, 12 May 2023 13:12:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qPTQ0ON3Wrir+ytYKqaHTtAy6adlaiogVxKPKmvKBTg=; b=UGhqm5MZybdLQnnVbTO7d/1yis
	jxT1BZY3HWazupwvlsCavaA46HXVvbnlSLyqvh40D3QzyG9hPOliI6SXU1h6cOvPKmWFGOlnUrFnf
	aCMdmM6ja20lGPPUctVhrXx3qG8W/Aj8FmWDllwxJqUBAMT0DUI0y9g7O3zFvvWwnES2YwMVfptkw
	pBvhazLNi8dmZ45c6lXMNAMZGgmvXu1JetgalTAfIa38vVE9YGP19fMWhOk/H9rFX2k8N1Wl0RGWu
	STI0Fvr9TvXNHht9V13VG77OqdRCW/Rnh8jn8GSBQAo2lH+PGc0B1St9ozztW2Id77fnKPSe83we4
	94Md9DdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pxQfl-00BkUH-22;
	Fri, 12 May 2023 11:10:53 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pxQfK-00Bk0y-2u
	for barebox@bombadil.infradead.org;
	Fri, 12 May 2023 11:10:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=qPTQ0ON3Wrir+ytYKqaHTtAy6adlaiogVxKPKmvKBTg=; b=p2B2YrxCA4eakcP7Hq6kzm2Sjg
	JA0MSnrLzbCHJyE+898lxrrmiau9716uSl0UhpDgE9USaiaoEdM8Mj2FVuKv/Ef1wVnTyRVLkZWOM
	R3O9V4SMb4KPeGqpzCdEqtZEWuPL01jbVLRtnLczodk9rWdXj3AajU973LaUoea95aDdQx+cokWKq
	IMmcWS3Q/acO7sBdFBf0FVkrztuTjHy2S+/Tot0qMyFTl+MoHfrdH5ayG1Hi0uy0xHt6TcQITgfZQ
	tMtn0dRenN1r7LeX5OiLwo/pj3XczPRV5JyVb/uJH6nmo49pKkwh94KDmEYhG1WGAQrRuSnpn+VHx
	K7Mik4dg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pxQfF-009832-0t
	for barebox@lists.infradead.org;
	Fri, 12 May 2023 11:10:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pxQf9-0003fy-3o; Fri, 12 May 2023 13:10:15 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pxQf8-002wk9-EZ; Fri, 12 May 2023 13:10:14 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pxQf4-0055Eo-EO; Fri, 12 May 2023 13:10:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 12 May 2023 13:10:03 +0200
Message-Id: <20230512111008.1120833-23-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230512111008.1120833-1-s.hauer@pengutronix.de>
References: <20230512111008.1120833-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230512_121021_445394_AA04DD0E 
X-CRM114-Status: GOOD (  15.62  )
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
Subject: [PATCH 22/27] ARM: mmu32: add get_pte_flags, get_pmd_flags
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The mmu code has several variables containing the pte/pmd values for
different mapping types. These variables only contain the correct values
after initializing them which makes it a bit hard to follow when the
code is used in both PBL and barebox proper.

Instead of using variables calculate the values when they are needed.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/mmu_32.c | 82 +++++++++++++++++++++----------------------
 1 file changed, 41 insertions(+), 41 deletions(-)

diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
index fd1f429398..01c168e8c8 100644
--- a/arch/arm/cpu/mmu_32.c
+++ b/arch/arm/cpu/mmu_32.c
@@ -63,11 +63,6 @@ static inline void tlb_invalidate(void)
  * PTE flags to set cached and uncached areas.
  * This will be determined at runtime.
  */
-static uint32_t pte_flags_cached;
-static uint32_t pte_flags_wc;
-static uint32_t pte_flags_uncached;
-static uint32_t pgd_flags_wc;
-static uint32_t pgd_flags_uncached;
 
 #define PTE_MASK ((1 << 12) - 1)
 
@@ -221,29 +216,48 @@ static u32 pte_flags_to_pmd(u32 pte)
 	return pmd;
 }
 
-int arch_remap_range(void *start, size_t size, unsigned flags)
+static uint32_t get_pte_flags(int map_type)
+{
+	if (cpu_architecture() >= CPU_ARCH_ARMv7) {
+		switch (map_type) {
+		case MAP_CACHED:
+			return PTE_FLAGS_CACHED_V7;
+		case MAP_UNCACHED:
+			return PTE_FLAGS_UNCACHED_V7;
+		case ARCH_MAP_WRITECOMBINE:
+			return PTE_FLAGS_WC_V7;
+		case MAP_FAULT:
+		default:
+			return 0x0;
+		}
+	} else {
+		switch (map_type) {
+		case MAP_CACHED:
+			return PTE_FLAGS_CACHED_V4;
+		case MAP_UNCACHED:
+		case ARCH_MAP_WRITECOMBINE:
+			return PTE_FLAGS_UNCACHED_V4;
+		case MAP_FAULT:
+		default:
+			return 0x0;
+		}
+	}
+}
+
+static uint32_t get_pmd_flags(int map_type)
+{
+	return pte_flags_to_pmd(get_pte_flags(map_type));
+}
+
+int arch_remap_range(void *start, size_t size, unsigned map_type)
 {
 	u32 addr = (u32)start;
-	u32 pte_flags;
+	u32 pte_flags, pmd_flags;
 
 	BUG_ON(!IS_ALIGNED(addr, PAGE_SIZE));
 
-	switch (flags) {
-	case MAP_CACHED:
-		pte_flags = pte_flags_cached;
-		break;
-	case MAP_UNCACHED:
-		pte_flags = pte_flags_uncached;
-		break;
-	case MAP_FAULT:
-		pte_flags = 0x0;
-		break;
-	case ARCH_MAP_WRITECOMBINE:
-		pte_flags = pte_flags_wc;
-		break;
-	default:
-		return -EINVAL;
-	}
+	pte_flags = get_pte_flags(map_type);
+	pmd_flags = pte_flags_to_pmd(pte_flags);
 
 	while (size) {
 		const bool pgdir_size_aligned = IS_ALIGNED(addr, PGDIR_SIZE);
@@ -257,7 +271,7 @@ int arch_remap_range(void *start, size_t size, unsigned flags)
 			 * replace it with a section
 			 */
 			chunk = PGDIR_SIZE;
-			*pgd = addr | pte_flags_to_pmd(pte_flags) | PMD_TYPE_SECT;
+			*pgd = addr | pmd_flags | PMD_TYPE_SECT;
 			dma_flush_range(pgd, sizeof(*pgd));
 		} else {
 			unsigned int num_ptes;
@@ -315,7 +329,7 @@ void *map_io_sections(unsigned long phys, void *_start, size_t size)
 	unsigned long start = (unsigned long)_start, sec;
 
 	for (sec = start; sec < start + size; sec += PGDIR_SIZE, phys += PGDIR_SIZE)
-		ttb[pgd_index(sec)] = phys | pgd_flags_uncached;
+		ttb[pgd_index(sec)] = phys | get_pmd_flags(MAP_UNCACHED);
 
 	dma_flush_range(ttb, 0x4000);
 	tlb_invalidate();
@@ -356,9 +370,9 @@ static void create_vector_table(unsigned long adr)
 		vectors = xmemalign(PAGE_SIZE, PAGE_SIZE);
 		pr_debug("Creating vector table, virt = 0x%p, phys = 0x%08lx\n",
 			 vectors, adr);
-		arm_create_pte(adr, pte_flags_uncached);
+		arm_create_pte(adr, get_pte_flags(MAP_UNCACHED));
 		pte = find_pte(adr);
-		*pte = (u32)vectors | PTE_TYPE_SMALL | pte_flags_cached;
+		*pte = (u32)vectors | PTE_TYPE_SMALL | get_pte_flags(MAP_CACHED);
 	}
 
 	arm_fixup_vectors();
@@ -471,20 +485,6 @@ void __mmu_init(bool mmu_on)
 {
 	struct memory_bank *bank;
 
-	if (cpu_architecture() >= CPU_ARCH_ARMv7) {
-		pte_flags_cached = PTE_FLAGS_CACHED_V7;
-		pte_flags_wc = PTE_FLAGS_WC_V7;
-		pgd_flags_wc = PGD_FLAGS_WC_V7;
-		pgd_flags_uncached = PGD_FLAGS_UNCACHED_V7;
-		pte_flags_uncached = PTE_FLAGS_UNCACHED_V7;
-	} else {
-		pte_flags_cached = PTE_FLAGS_CACHED_V4;
-		pte_flags_wc = PTE_FLAGS_UNCACHED_V4;
-		pgd_flags_wc = PMD_SECT_DEF_UNCACHED;
-		pgd_flags_uncached = PMD_SECT_DEF_UNCACHED;
-		pte_flags_uncached = PTE_FLAGS_UNCACHED_V4;
-	}
-
 	/* Clear unpredictable bits [13:0] */
 	ttb = (uint32_t *)(get_ttbr() & ~0x3fff);
 
-- 
2.39.2



