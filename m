Delivery-date: Mon, 22 May 2023 07:30:08 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q0y7V-009JCW-NA
	for lore@lore.pengutronix.de; Mon, 22 May 2023 07:30:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q0y7Q-0002u0-Ts
	for lore@pengutronix.de; Mon, 22 May 2023 07:30:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zd4w3TvLEH8zg1+4tl/VCRHjIeYhP41gl/ayzUAfrWQ=; b=MSfQ28PxzKB9x1
	sVgW27nIXNNDvODbG7ibrI35POuI6oy6m0EOf8Ub1Ef4xq0LHSIwUW4WcQ9PWkZuEFimarPJ+4aML
	Z2NCWe1fXM0YJvFcOnp+pnyOpZsKo72KyWmms3zG1/XkTBD/i77VaBr4iCZJQ/gZ7Zqr2powRbw/v
	VOIXI8AEQpxB3Hi6Y1k+6aBLlFcd/rfKZoOsbe8bIr7DYZtTdXm+XhZz49bPJNIEdKEyf5KuuzVh4
	vGT45rMscCysW1x1FNK//d472LZWARc1fIgbl27aOqyr8+rwKScoxkdGD0SsFkkwrx9O0PEr/USEp
	2+oa+8hgYo7lNKOOEXgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q0y6D-005OYC-2c;
	Mon, 22 May 2023 05:28:49 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q0y66-005OUe-0p
	for barebox@lists.infradead.org;
	Mon, 22 May 2023 05:28:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q0y63-0002M4-9p; Mon, 22 May 2023 07:28:39 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q0y62-001vvj-Hr; Mon, 22 May 2023 07:28:38 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q0y60-004MLA-KE; Mon, 22 May 2023 07:28:36 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 22 May 2023 07:28:26 +0200
Message-Id: <20230522052835.1039143-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230522052835.1039143-1-a.fatoum@pengutronix.de>
References: <20230522052835.1039143-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230521_222845_416517_CC2B829F 
X-CRM114-Status: GOOD (  19.40  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, lst@pengutronix.de, rcz@pengutronix.de
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 02/11] mmu: add physical address parameter to arch_remap_range
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

ARM32 has map_io_sections for non-1:1 remapping, but it's limited to 1M
sections.  arch_remap_range has newly gained support for 4K granularity
remapping, but supports only changing attributes and no non-1:1
remapping yet. In preparation for adding this missing feature, adjust
the prototype.

No functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/mmu_32.c          | 25 ++++++++++++++-----------
 arch/arm/cpu/mmu_64.c          |  8 +++++---
 arch/arm/include/asm/mmu.h     |  2 +-
 arch/powerpc/cpu-85xx/mmu.c    |  7 +++++--
 arch/powerpc/include/asm/mmu.h |  2 +-
 include/mmu.h                  |  9 ++++++---
 6 files changed, 32 insertions(+), 21 deletions(-)

diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
index e4607d99fd2a..68336fc68be0 100644
--- a/arch/arm/cpu/mmu_32.c
+++ b/arch/arm/cpu/mmu_32.c
@@ -253,20 +253,23 @@ static uint32_t get_pmd_flags(int map_type)
 	return pte_flags_to_pmd(get_pte_flags(map_type));
 }
 
-int arch_remap_range(void *start, size_t size, unsigned map_type)
+int arch_remap_range(void *_virt_addr, phys_addr_t phys_addr, size_t size, unsigned map_type)
 {
-	u32 addr = (u32)start;
+	u32 virt_addr = (u32)_virt_addr;
 	u32 pte_flags, pmd_flags;
 	uint32_t *ttb = get_ttb();
 
-	BUG_ON(!IS_ALIGNED(addr, PAGE_SIZE));
+	if (phys_addr != virt_to_phys(virt_addr))
+		return -ENOSYS;
+
+	BUG_ON(!IS_ALIGNED(virt_addr, PAGE_SIZE));
 
 	pte_flags = get_pte_flags(map_type);
 	pmd_flags = pte_flags_to_pmd(pte_flags);
 
 	while (size) {
-		const bool pgdir_size_aligned = IS_ALIGNED(addr, PGDIR_SIZE);
-		u32 *pgd = (u32 *)&ttb[pgd_index(addr)];
+		const bool pgdir_size_aligned = IS_ALIGNED(virt_addr, PGDIR_SIZE);
+		u32 *pgd = (u32 *)&ttb[pgd_index(virt_addr)];
 		size_t chunk;
 
 		if (size >= PGDIR_SIZE && pgdir_size_aligned &&
@@ -276,7 +279,7 @@ int arch_remap_range(void *start, size_t size, unsigned map_type)
 			 * replace it with a section
 			 */
 			chunk = PGDIR_SIZE;
-			*pgd = addr | pmd_flags | PMD_TYPE_SECT;
+			*pgd = virt_addr | pmd_flags | PMD_TYPE_SECT;
 			dma_flush_range(pgd, sizeof(*pgd));
 		} else {
 			unsigned int num_ptes;
@@ -291,7 +294,7 @@ int arch_remap_range(void *start, size_t size, unsigned map_type)
 			 * was not aligned on PGDIR_SIZE boundary)
 			 */
 			chunk = pgdir_size_aligned ?
-				PGDIR_SIZE : ALIGN(addr, PGDIR_SIZE) - addr;
+				PGDIR_SIZE : ALIGN(virt_addr, PGDIR_SIZE) - virt_addr;
 			/*
 			 * At the same time we want to make sure that
 			 * we don't go on remapping past requested
@@ -301,15 +304,15 @@ int arch_remap_range(void *start, size_t size, unsigned map_type)
 			chunk = min(chunk, size);
 			num_ptes = chunk / PAGE_SIZE;
 
-			pte = find_pte(addr);
+			pte = find_pte(virt_addr);
 			if (!pte) {
 				/*
 				 * If PTE is not found it means that
 				 * we needs to split this section and
 				 * create a new page table for it
 				 */
-				table = arm_create_pte(addr, pmd_flags_to_pte(*pgd));
-				pte = find_pte(addr);
+				table = arm_create_pte(virt_addr, pmd_flags_to_pte(*pgd));
+				pte = find_pte(virt_addr);
 				BUG_ON(!pte);
 			}
 
@@ -321,7 +324,7 @@ int arch_remap_range(void *start, size_t size, unsigned map_type)
 			dma_flush_range(pte, num_ptes * sizeof(u32));
 		}
 
-		addr += chunk;
+		virt_addr += chunk;
 		size -= chunk;
 	}
 
diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index 478222cd991f..7228b5d3fd12 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -158,10 +158,13 @@ static void create_sections(uint64_t virt, uint64_t phys, uint64_t size,
 	tlb_invalidate();
 }
 
-int arch_remap_range(void *_start, size_t size, unsigned flags)
+int arch_remap_range(void *virt_addr, phys_addr_t phys_addr, size_t size, unsigned flags)
 {
 	unsigned long attrs;
 
+	if (phys_addr != virt_to_phys(virt_addr))
+		return -ENOSYS;
+
 	switch (flags) {
 	case MAP_CACHED:
 		attrs = CACHED_MEM;
@@ -176,8 +179,7 @@ int arch_remap_range(void *_start, size_t size, unsigned flags)
 		return -EINVAL;
 	}
 
-	create_sections((uint64_t)_start, (uint64_t)_start, (uint64_t)size,
-			attrs);
+	create_sections((uint64_t)virt_addr, (uint64_t)virt_addr, (uint64_t)size, attrs);
 	return 0;
 }
 
diff --git a/arch/arm/include/asm/mmu.h b/arch/arm/include/asm/mmu.h
index 9d2fdcf3657b..f819f582d5bd 100644
--- a/arch/arm/include/asm/mmu.h
+++ b/arch/arm/include/asm/mmu.h
@@ -23,7 +23,7 @@ static inline void setup_dma_coherent(unsigned long offset)
 #ifdef CONFIG_MMU
 #define ARCH_HAS_REMAP
 #define MAP_ARCH_DEFAULT MAP_CACHED
-int arch_remap_range(void *_start, size_t size, unsigned flags);
+int arch_remap_range(void *virt_addr, phys_addr_t phys_addr, size_t size, unsigned flags);
 void *map_io_sections(unsigned long physaddr, void *start, size_t size);
 #else
 #define MAP_ARCH_DEFAULT MAP_UNCACHED
diff --git a/arch/powerpc/cpu-85xx/mmu.c b/arch/powerpc/cpu-85xx/mmu.c
index 6b93c3e8db9a..b484acbf8043 100644
--- a/arch/powerpc/cpu-85xx/mmu.c
+++ b/arch/powerpc/cpu-85xx/mmu.c
@@ -17,13 +17,16 @@
 #include <mmu.h>
 #include <mach/mmu.h>
 
-int arch_remap_range(void *_start, size_t size, unsigned flags)
+int arch_remap_range(void *virt_addr, phys_addr_t phys_addr, size_t size, unsigned flags)
 {
 	uint32_t ptr, start, tsize, valid, wimge, pte_flags;
 	unsigned long epn;
 	phys_addr_t rpn = 0;
 	int esel = 0;
 
+	if (phys_addr != virt_to_phys(virt_addr))
+		return -ENOSYS;
+
 	switch (flags) {
 	case MAP_UNCACHED:
 		pte_flags = MAS2_I;
@@ -35,7 +38,7 @@ int arch_remap_range(void *_start, size_t size, unsigned flags)
 		return -EINVAL;
 	}
 
-	ptr = start = (uint32_t)_start;
+	ptr = start = (uint32_t)virt_addr;
 	wimge = pte_flags | MAS2_M;
 
 	while (ptr < (start + size)) {
diff --git a/arch/powerpc/include/asm/mmu.h b/arch/powerpc/include/asm/mmu.h
index 81a5d7d55f93..10b15a47b9aa 100644
--- a/arch/powerpc/include/asm/mmu.h
+++ b/arch/powerpc/include/asm/mmu.h
@@ -563,7 +563,7 @@ extern int write_bat(ppc_bat_t bat, unsigned long upper, unsigned long lower);
 
 #ifdef CONFIG_MMU
 #define ARCH_HAS_REMAP
-int arch_remap_range(void *_start, size_t size, unsigned flags);
+int arch_remap_range(void *virt_addr, phys_addr_t phys_addr, size_t size, unsigned flags);
 #endif
 
 #endif
diff --git a/include/mmu.h b/include/mmu.h
index 2326cb215afb..fd6dbc51ac03 100644
--- a/include/mmu.h
+++ b/include/mmu.h
@@ -2,6 +2,8 @@
 #ifndef __MMU_H
 #define __MMU_H
 
+#include <linux/types.h>
+
 #define MAP_UNCACHED	0
 #define MAP_CACHED	1
 #define MAP_FAULT	2
@@ -16,9 +18,10 @@
 #include <asm/mmu.h>
 
 #ifndef ARCH_HAS_REMAP
-static inline int arch_remap_range(void *start, size_t size, unsigned flags)
+static inline int arch_remap_range(void *virt_addr, phys_addr_t phys_addr,
+				   size_t size, unsigned flags)
 {
-	if (flags == MAP_ARCH_DEFAULT)
+	if (flags == MAP_ARCH_DEFAULT && phys_addr == virt_to_phys(virt_addr))
 		return 0;
 
 	return -EINVAL;
@@ -37,7 +40,7 @@ static inline bool arch_can_remap(void)
 
 static inline int remap_range(void *start, size_t size, unsigned flags)
 {
-	return arch_remap_range(start, size, flags);
+	return arch_remap_range(start, virt_to_phys(start), size, flags);
 }
 
 #endif
-- 
2.39.2



