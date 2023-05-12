Delivery-date: Fri, 12 May 2023 13:12:16 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pxQh7-00F2Z7-6c
	for lore@lore.pengutronix.de; Fri, 12 May 2023 13:12:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pxQh2-0005QU-EQ
	for lore@pengutronix.de; Fri, 12 May 2023 13:12:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kvscjYo8o/TebJOd450dazD2Iu/kPmQtv3CxbzxsDSM=; b=cOeY/rvZAQ/h8+/ZQN2Enjn9Ax
	yXiXSeBVU/lBzVH19YZ/TM2/WjMsYG3+KEwZjnQzhUbiuBdu8640wsYs+RWhLdmleeHg1IMSeMGmf
	jH3O4tt4KwPUaooIb3L5Jjxo8fK/d+f/c0Q/0hqJ6X95fKh94ZLKoJG9Pk11LRSihBrUGWzrTXTwG
	zOYInraDzwglvdel6ZB/Srektw8qiyRqK6SaevYXzvJL35KSflHHI42xS57llpKxrFtew33C0R8qT
	eL347zHZxkLMjfLiPzf9SjFHmkhPq7eGsUgyTxA2NtJ7bT0FPg75R3nnsBSWh3P7wZmIJ922F08aj
	Qgj+wYlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pxQfr-00Bkc4-0s;
	Fri, 12 May 2023 11:10:59 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pxQfM-00Bk20-0b
	for barebox@bombadil.infradead.org;
	Fri, 12 May 2023 11:10:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=kvscjYo8o/TebJOd450dazD2Iu/kPmQtv3CxbzxsDSM=; b=JJyOPORhqeqSw1J89VoZUU94AI
	v9BQFP4OZTGzwGmI55G0GUwxsuu+QwMja6pdYtprGnoEvynXrAiBXCBdMYQBWLCQrAaH7lpE23NpR
	Ku7g//EIFcy2jv5yT/fOjDW/45dUmVTI+IcIQUjrFy4HihqdEAw0yTXheBuyhACdPi76++sb61+9S
	2DEg6e/cxaGdUaF0fMoLm/G6w3qCL2NM5r/dNOLOBd4U7S/mJJngP1do4f28Tryr3+UQ0Z/9v+1Tw
	haZ+871G1te5gJCmvcMLw5RhBnzabG+urInd+6Vt5d2ysePGrrrtgWzVXGBTZkqLSpQQUk/2AQUUv
	/jiJQfHQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pxQfF-009836-2y
	for barebox@lists.infradead.org;
	Fri, 12 May 2023 11:10:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pxQf9-0003gn-Fl; Fri, 12 May 2023 13:10:15 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pxQf8-002wkS-Rn; Fri, 12 May 2023 13:10:14 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pxQf4-0055Ew-Fx; Fri, 12 May 2023 13:10:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 12 May 2023 13:10:05 +0200
Message-Id: <20230512111008.1120833-25-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230512111008.1120833-1-s.hauer@pengutronix.de>
References: <20230512111008.1120833-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230512_121022_072300_2644AA0A 
X-CRM114-Status: GOOD (  16.83  )
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
Subject: [PATCH 24/27] ARM: mmu32: read TTB value from register
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Instead of relying on a variable for the location of the TTB which we
have to initialize in both PBL and barebox proper, just read the value
back from the hardware register.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/mmu_32.c | 41 ++++++++++++++++++++---------------------
 1 file changed, 20 insertions(+), 21 deletions(-)

diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
index 2b2013a8b5..5ebceed89f 100644
--- a/arch/arm/cpu/mmu_32.c
+++ b/arch/arm/cpu/mmu_32.c
@@ -30,7 +30,11 @@
  */
 #define ARM_TTB_SIZE	(SZ_4G / SZ_1M * sizeof(u32))
 
-static uint32_t *ttb;
+static inline uint32_t *get_ttb(void)
+{
+	/* Clear unpredictable bits [13:0] */
+	return (uint32_t *)(get_ttbr() & ~0x3fff);
+}
 
 /*
  * Do it the simple way for now and invalidate the entire
@@ -83,7 +87,7 @@ static uint32_t *alloc_pte(void)
 	if (idx * PTE_SIZE >= ARM_EARLY_PAGETABLE_SIZE)
 		return NULL;
 
-	return (void *)ttb + idx * PTE_SIZE;
+	return get_ttb() + idx * PTE_SIZE;
 }
 #else
 static uint32_t *alloc_pte(void)
@@ -95,9 +99,7 @@ static uint32_t *alloc_pte(void)
 static u32 *find_pte(unsigned long adr)
 {
 	u32 *table;
-
-	if (!ttb)
-		arm_mmu_not_initialized_error();
+	uint32_t *ttb = get_ttb();
 
 	if (!pgd_type_table(ttb[pgd_index(adr)]))
 		return NULL;
@@ -136,6 +138,7 @@ void dma_inv_range(void *ptr, size_t size)
  */
 static u32 *arm_create_pte(unsigned long virt, uint32_t flags)
 {
+	uint32_t *ttb = get_ttb();
 	u32 *table;
 	int i, ttb_idx;
 
@@ -143,9 +146,6 @@ static u32 *arm_create_pte(unsigned long virt, uint32_t flags)
 
 	table = alloc_pte();
 
-	if (!ttb)
-		arm_mmu_not_initialized_error();
-
 	ttb_idx = pgd_index(virt);
 
 	for (i = 0; i < PTRS_PER_PTE; i++) {
@@ -253,6 +253,7 @@ int arch_remap_range(void *start, size_t size, unsigned map_type)
 {
 	u32 addr = (u32)start;
 	u32 pte_flags, pmd_flags;
+	uint32_t *ttb = get_ttb();
 
 	BUG_ON(!IS_ALIGNED(addr, PAGE_SIZE));
 
@@ -324,9 +325,10 @@ int arch_remap_range(void *start, size_t size, unsigned map_type)
 	return 0;
 }
 
-static void create_sections(uint32_t *ttb, unsigned long first,
-			    unsigned long last, unsigned int flags)
+static void create_sections(unsigned long first, unsigned long last,
+			    unsigned int flags)
 {
+	uint32_t *ttb = get_ttb();
 	unsigned long ttb_start = pgd_index(first);
 	unsigned long ttb_end = pgd_index(last) + 1;
 	unsigned int i, addr = first;
@@ -337,15 +339,16 @@ static void create_sections(uint32_t *ttb, unsigned long first,
 	}
 }
 
-static void create_flat_mapping(uint32_t *ttb)
+static inline void create_flat_mapping(void)
 {
 	/* create a flat mapping using 1MiB sections */
-	create_sections(ttb, 0, 0xffffffff, attrs_uncached_mem());
+	create_sections(0, 0xffffffff, attrs_uncached_mem());
 }
 
 void *map_io_sections(unsigned long phys, void *_start, size_t size)
 {
 	unsigned long start = (unsigned long)_start, sec;
+	uint32_t *ttb = get_ttb();
 
 	for (sec = start; sec < start + size; sec += PGDIR_SIZE, phys += PGDIR_SIZE)
 		ttb[pgd_index(sec)] = phys | get_pmd_flags(MAP_UNCACHED);
@@ -503,9 +506,7 @@ static void vectors_init(void)
 void __mmu_init(bool mmu_on)
 {
 	struct memory_bank *bank;
-
-	/* Clear unpredictable bits [13:0] */
-	ttb = (uint32_t *)(get_ttbr() & ~0x3fff);
+	uint32_t *ttb = get_ttb();
 
 	if (!request_sdram_region("ttb", (unsigned long)ttb, SZ_16K))
 		/*
@@ -523,7 +524,7 @@ void __mmu_init(bool mmu_on)
 	vectors_init();
 
 	for_each_memory_bank(bank) {
-		create_sections(ttb, bank->start, bank->start + bank->size - 1,
+		create_sections(bank->start, bank->start + bank->size - 1,
 				PMD_SECT_DEF_CACHED);
 		__mmu_cache_flush();
 	}
@@ -547,8 +548,6 @@ void *dma_alloc_writecombine(size_t size, dma_addr_t *dma_handle)
 	return dma_alloc_map(size, dma_handle, ARCH_MAP_WRITECOMBINE);
 }
 
-static uint32_t *ttb;
-
 static inline void map_region(unsigned long start, unsigned long size,
 			      uint64_t flags)
 
@@ -556,12 +555,12 @@ static inline void map_region(unsigned long start, unsigned long size,
 	start = ALIGN_DOWN(start, SZ_1M);
 	size  = ALIGN(size, SZ_1M);
 
-	create_sections(ttb, start, start + size - 1, flags);
+	create_sections(start, start + size - 1, flags);
 }
 
 void mmu_early_enable(unsigned long membase, unsigned long memsize)
 {
-	ttb = (uint32_t *)arm_mem_ttb(membase, membase + memsize);
+	uint32_t *ttb = (uint32_t *)arm_mem_ttb(membase, membase + memsize);
 
 	pr_debug("enabling MMU, ttb @ 0x%p\n", ttb);
 
@@ -577,7 +576,7 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize)
 	 * This marks the whole address space as uncachable as well as
 	 * unexecutable if possible
 	 */
-	create_flat_mapping(ttb);
+	create_flat_mapping();
 
 	/*
 	 * There can be SoCs that have a section shared between device memory
-- 
2.39.2



