Delivery-date: Wed, 06 Aug 2025 14:39:33 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujdQb-007dbR-1u
	for lore@lore.pengutronix.de;
	Wed, 06 Aug 2025 14:39:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujdQa-00011P-EH
	for lore@pengutronix.de; Wed, 06 Aug 2025 14:39:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vv+rVOhIOKeZJeP2O2L4UFnbdBYWKt4Nu8AmSUV8pms=; b=RiRKMZcIAzegkF+RprWC8fyYDw
	LauB9sexZ8pGbb/AkWWCPi8pCWI+r6Z+a4lPfzFvwlmCFroHE4ku+h3H5ZM+QKLGAHP3YheJ1b5wt
	muetzyRkTmG4qj2LH+ewdIyELIIDKpj5MCfEjga2PwhRUUJS4lxuOpXAcuBiRqSiHesfXK85f3Gos
	++2ZzF1bLCJMpX/0aegdAwZuWAwW0uFARfWjNTRTEaDs+AqCIVLsSUskQtFPdV4PpBnoLatPSjBmv
	v9rYaL0431DJt0wiR1bzwXZT6sIKqUoaAa8PRRfOiQDuwA20CrUBc+oOQylLksgBBak9Yfae5dDVX
	WkP3hJ6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujdQ6-0000000FANo-49xo;
	Wed, 06 Aug 2025 12:39:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujdOP-0000000FA5R-0BFU
	for barebox@lists.infradead.org;
	Wed, 06 Aug 2025 12:37:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ujdON-0000NI-Qs; Wed, 06 Aug 2025 14:37:15 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ujdON-00CD9E-1x;
	Wed, 06 Aug 2025 14:37:15 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ujdON-009YOP-1b;
	Wed, 06 Aug 2025 14:37:15 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  6 Aug 2025 14:37:01 +0200
Message-Id: <20250806123714.2092620-10-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250806123714.2092620-1-a.fatoum@pengutronix.de>
References: <20250806123714.2092620-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250806_053717_086686_26FA0A82 
X-CRM114-Status: GOOD (  13.02  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 09/22] ARM: mmu: move get_pte_attrs call into __arch_remap_range
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For similarity with the ARM32 code, give the function the same prototype
in both architectures. This will be useful in the follow-up commit when
we add a debug print that should reference the generic flags.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/mmu_64.c | 73 +++++++++++++++++++------------------------
 1 file changed, 32 insertions(+), 41 deletions(-)

diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index 1c77aa9472df..bc5d1a6e8160 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -91,6 +91,28 @@ static __maybe_unused uint64_t *find_pte(uint64_t addr)
 	return __find_pte(get_ttb(), addr, NULL);
 }
 
+static unsigned long get_pte_attrs(maptype_t map_type)
+{
+	switch (map_type & MAP_TYPE_MASK) {
+	case MAP_CACHED:
+		return attrs_xn() | CACHED_MEM;
+	case MAP_UNCACHED:
+		return attrs_xn() | UNCACHED_MEM;
+	case MAP_FAULT:
+		return 0x0;
+	case MAP_WRITECOMBINE:
+		return attrs_xn() | MEM_ALLOC_WRITECOMBINE;
+	case MAP_CODE:
+		return CACHED_MEM | PTE_BLOCK_RO;
+	case ARCH_MAP_CACHED_RO:
+		return attrs_xn() | CACHED_MEM | PTE_BLOCK_RO;
+	case ARCH_MAP_CACHED_RWX:
+		return CACHED_MEM;
+	default:
+		return ~0UL;
+	}
+}
+
 #define MAX_PTE_ENTRIES 512
 
 /* Splits a block PTE into table with subpages spanning the old block */
@@ -123,9 +145,10 @@ static void split_block(uint64_t *pte, int level)
 	set_table(pte, new_table);
 }
 
-static void __arch_remap_range(uint64_t virt, uint64_t phys, uint64_t size,
-			       uint64_t attr, bool force_pages)
+static int __arch_remap_range(uint64_t virt, uint64_t phys, uint64_t size,
+			      maptype_t map_type, bool force_pages)
 {
+	unsigned long attr = get_pte_attrs(map_type);
 	uint64_t *ttb = get_ttb();
 	uint64_t block_size;
 	uint64_t block_shift;
@@ -138,11 +161,14 @@ static void __arch_remap_range(uint64_t virt, uint64_t phys, uint64_t size,
 
 	addr = virt;
 
+	if (WARN_ON(attr == ~0UL))
+		return -EINVAL;
+
 	attr &= ~PTE_TYPE_MASK;
 
 	size = PAGE_ALIGN(size);
 	if (!size)
-		return;
+		return 0;
 
 	while (size) {
 		table = ttb;
@@ -178,6 +204,7 @@ static void __arch_remap_range(uint64_t virt, uint64_t phys, uint64_t size,
 	}
 
 	tlb_invalidate();
+	return 0;
 }
 
 static size_t granule_size(int level)
@@ -283,55 +310,19 @@ static void flush_cacheable_pages(void *start, size_t size)
 		v8_flush_dcache_range(flush_start, flush_end);
 }
 
-static unsigned long get_pte_attrs(maptype_t map_type)
-{
-	switch (map_type & MAP_TYPE_MASK) {
-	case MAP_CACHED:
-		return attrs_xn() | CACHED_MEM;
-	case MAP_UNCACHED:
-		return attrs_xn() | UNCACHED_MEM;
-	case MAP_FAULT:
-		return 0x0;
-	case MAP_WRITECOMBINE:
-		return attrs_xn() | MEM_ALLOC_WRITECOMBINE;
-	case MAP_CODE:
-		return CACHED_MEM | PTE_BLOCK_RO;
-	case ARCH_MAP_CACHED_RO:
-		return attrs_xn() | CACHED_MEM | PTE_BLOCK_RO;
-	case ARCH_MAP_CACHED_RWX:
-		return CACHED_MEM;
-	default:
-		return ~0UL;
-	}
-}
-
 static void early_remap_range(uint64_t addr, size_t size, maptype_t map_type, bool force_pages)
 {
-	unsigned long attrs = get_pte_attrs(map_type);
-
-	if (WARN_ON(attrs == ~0UL))
-		return;
-
-	__arch_remap_range(addr, addr, size, attrs, force_pages);
+	__arch_remap_range(addr, addr, size, map_type, force_pages);
 }
 
 int arch_remap_range(void *virt_addr, phys_addr_t phys_addr, size_t size, maptype_t map_type)
 {
-	unsigned long attrs;
-
 	map_type = arm_mmu_maybe_skip_permissions(map_type);
 
-	attrs = get_pte_attrs(map_type);
-
-	if (attrs == ~0UL)
-		return -EINVAL;
-
 	if (!maptype_is_compatible(map_type, MAP_CACHED))
 		flush_cacheable_pages(virt_addr, size);
 
-	__arch_remap_range((uint64_t)virt_addr, phys_addr, (uint64_t)size, attrs, false);
-
-	return 0;
+	return __arch_remap_range((uint64_t)virt_addr, phys_addr, (uint64_t)size, map_type, false);
 }
 
 static void mmu_enable(void)
-- 
2.39.5



