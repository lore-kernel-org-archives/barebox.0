Delivery-date: Wed, 06 Aug 2025 15:06:19 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujdqV-007e3h-0h
	for lore@lore.pengutronix.de;
	Wed, 06 Aug 2025 15:06:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujdqT-0005bM-B8
	for lore@pengutronix.de; Wed, 06 Aug 2025 15:06:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Tr538F7r3hyYPJoENKqdLGDqRgVLVs6QOK+bYyjY8PM=; b=BrOcUGs+9CafuC6MipJEa0bIeA
	dw8OtL3Hd/N3wn/lk05skLgWvDyov34TUcaL8jX/rlFf8H5bMvbXLAHFd6x73QCosNuyWiuKtMOS2
	UbQpriUEb8U4sIK7wY6PBwAeMW7/1DXSZiYRde9+YMz+qxSJeUr/3TMU7BtggSydW1imQhMhzj0Jj
	G6BGDvsWqDxMkS0RVao+aKIyASxF7LidtdPeYeJWvPnZoVEBUL/DRjTj2xOYCcuN2rDlM2098aLYB
	3zRLfjoTXWNzJwipdeU7d4308iXIaLkuFxNvJiVXLp7YJqh7U9lgONIEkSH+/NzQecJkezflLBuY/
	bs+uCP8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujdpt-0000000FG1w-2LyB;
	Wed, 06 Aug 2025 13:05:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujdpq-0000000FFyV-2kTT
	for barebox@lists.infradead.org;
	Wed, 06 Aug 2025 13:05:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ujdpZ-0004ku-2v; Wed, 06 Aug 2025 15:05:21 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ujdpY-00CDTW-2Q;
	Wed, 06 Aug 2025 15:05:20 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ujdON-009YOP-1u;
	Wed, 06 Aug 2025 14:37:15 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  6 Aug 2025 14:37:03 +0200
Message-Id: <20250806123714.2092620-12-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250806123714.2092620-1-a.fatoum@pengutronix.de>
References: <20250806123714.2092620-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250806_060538_862966_057A34DE 
X-CRM114-Status: GOOD (  15.52  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 11/22] ARM: mmu: make force_pages a maptype_t flag
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The case with force_page == false is the default and having to write an
extra parameter everywhere is needless visual clutter. Especially if we
are going to add new parameters or OR further flags, it's more readable
to use a single parameter for the flags instead of multiple.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/mmu-common.h |  3 +++
 arch/arm/cpu/mmu_32.c     | 18 ++++++++++--------
 arch/arm/cpu/mmu_64.c     | 21 +++++++++++----------
 3 files changed, 24 insertions(+), 18 deletions(-)

diff --git a/arch/arm/cpu/mmu-common.h b/arch/arm/cpu/mmu-common.h
index 01d081db426e..a111e15a21b4 100644
--- a/arch/arm/cpu/mmu-common.h
+++ b/arch/arm/cpu/mmu-common.h
@@ -9,10 +9,13 @@
 #include <linux/ioport.h>
 #include <linux/kernel.h>
 #include <linux/sizes.h>
+#include <linux/bits.h>
 
 #define ARCH_MAP_CACHED_RWX	MAP_ARCH(2)
 #define ARCH_MAP_CACHED_RO	MAP_ARCH(3)
 
+#define ARCH_MAP_FLAG_PAGEWISE	BIT(31)
+
 struct device;
 
 void dma_inv_range(void *ptr, size_t size);
diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
index 4b7f370edaea..e43d9d0d4606 100644
--- a/arch/arm/cpu/mmu_32.c
+++ b/arch/arm/cpu/mmu_32.c
@@ -266,8 +266,9 @@ static uint32_t get_pmd_flags(maptype_t map_type)
 }
 
 static void __arch_remap_range(void *_virt_addr, phys_addr_t phys_addr, size_t size,
-			       maptype_t map_type, bool force_pages)
+			       maptype_t map_type)
 {
+	bool force_pages = map_type & ARCH_MAP_FLAG_PAGEWISE;
 	u32 virt_addr = (u32)_virt_addr;
 	u32 pte_flags, pmd_flags;
 	uint32_t *ttb = get_ttb();
@@ -363,16 +364,16 @@ static void __arch_remap_range(void *_virt_addr, phys_addr_t phys_addr, size_t s
 	tlb_invalidate();
 }
 
-static void early_remap_range(u32 addr, size_t size, maptype_t map_type, bool force_pages)
+static void early_remap_range(u32 addr, size_t size, maptype_t map_type)
 {
-	__arch_remap_range((void *)addr, addr, size, map_type, force_pages);
+	__arch_remap_range((void *)addr, addr, size, map_type);
 }
 
 int arch_remap_range(void *virt_addr, phys_addr_t phys_addr, size_t size, maptype_t map_type)
 {
 	map_type = arm_mmu_maybe_skip_permissions(map_type);
 
-	__arch_remap_range(virt_addr, phys_addr, size, map_type, false);
+	__arch_remap_range(virt_addr, phys_addr, size, map_type);
 
 	if (maptype_is_compatible(map_type, MAP_UNCACHED))
 		dma_inv_range(virt_addr, size);
@@ -643,7 +644,7 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize, unsigned lon
 	 * map the bulk of the memory as sections to avoid allocating too many page tables
 	 * at this early stage
 	 */
-	early_remap_range(membase, barebox_start - membase, ARCH_MAP_CACHED_RWX, false);
+	early_remap_range(membase, barebox_start - membase, ARCH_MAP_CACHED_RWX);
 	/*
 	 * Map the remainder of the memory explicitly with two level page tables. This is
 	 * the place where barebox proper ends at. In barebox proper we'll remap the code
@@ -653,10 +654,11 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize, unsigned lon
 	 * a break-before-make sequence which we can't do when barebox proper is running
 	 * at the location being remapped.
 	 */
-	early_remap_range(barebox_start, barebox_size, ARCH_MAP_CACHED_RWX, true);
-	early_remap_range(optee_start, OPTEE_SIZE, MAP_UNCACHED, false);
+	early_remap_range(barebox_start, barebox_size,
+			  ARCH_MAP_CACHED_RWX | ARCH_MAP_FLAG_PAGEWISE);
+	early_remap_range(optee_start, OPTEE_SIZE, MAP_UNCACHED);
 	early_remap_range(PAGE_ALIGN_DOWN((uintptr_t)_stext), PAGE_ALIGN(_etext - _stext),
-			  ARCH_MAP_CACHED_RWX, false);
+			  ARCH_MAP_CACHED_RWX);
 
 	__mmu_cache_on();
 }
diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index 0bd5e4dc98c4..6e617a15a6d7 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -146,8 +146,9 @@ static void split_block(uint64_t *pte, int level)
 }
 
 static int __arch_remap_range(uint64_t virt, uint64_t phys, uint64_t size,
-			      maptype_t map_type, bool force_pages)
+			      maptype_t map_type)
 {
+	bool force_pages = map_type & ARCH_MAP_FLAG_PAGEWISE;
 	unsigned long attr = get_pte_attrs(map_type);
 	uint64_t *ttb = get_ttb();
 	uint64_t block_size;
@@ -312,9 +313,9 @@ static void flush_cacheable_pages(void *start, size_t size)
 		v8_flush_dcache_range(flush_start, flush_end);
 }
 
-static void early_remap_range(uint64_t addr, size_t size, maptype_t map_type, bool force_pages)
+static void early_remap_range(uint64_t addr, size_t size, maptype_t map_type)
 {
-	__arch_remap_range(addr, addr, size, map_type, force_pages);
+	__arch_remap_range(addr, addr, size, map_type);
 }
 
 int arch_remap_range(void *virt_addr, phys_addr_t phys_addr, size_t size, maptype_t map_type)
@@ -324,7 +325,7 @@ int arch_remap_range(void *virt_addr, phys_addr_t phys_addr, size_t size, maptyp
 	if (!maptype_is_compatible(map_type, MAP_CACHED))
 		flush_cacheable_pages(virt_addr, size);
 
-	return __arch_remap_range((uint64_t)virt_addr, phys_addr, (uint64_t)size, map_type, false);
+	return __arch_remap_range((uint64_t)virt_addr, phys_addr, (uint64_t)size, map_type);
 }
 
 static void mmu_enable(void)
@@ -419,7 +420,7 @@ static void early_init_range(size_t total_level0_tables)
 	uint64_t addr = 0;
 
 	while (total_level0_tables--) {
-		early_remap_range(addr, L0_XLAT_SIZE, MAP_UNCACHED, false);
+		early_remap_range(addr, L0_XLAT_SIZE, MAP_UNCACHED);
 		split_block(ttb, 0);
 		addr += L0_XLAT_SIZE;
 		ttb++;
@@ -451,7 +452,7 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize, unsigned lon
 	 */
 	early_init_range(2);
 
-	early_remap_range(membase, memsize, ARCH_MAP_CACHED_RWX, false);
+	early_remap_range(membase, memsize, ARCH_MAP_CACHED_RWX);
 
 	if (optee_get_membase(&optee_membase)) {
                 optee_membase = membase + memsize - OPTEE_SIZE;
@@ -459,18 +460,18 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize, unsigned lon
 		barebox_size = optee_membase - barebox_start;
 
 		early_remap_range(optee_membase - barebox_size, barebox_size,
-			     ARCH_MAP_CACHED_RWX, true);
+			     ARCH_MAP_CACHED_RWX | ARCH_MAP_FLAG_PAGEWISE);
 	} else {
 		barebox_size = membase + memsize - barebox_start;
 
 		early_remap_range(membase + memsize - barebox_size, barebox_size,
-			     ARCH_MAP_CACHED_RWX, true);
+			     ARCH_MAP_CACHED_RWX | ARCH_MAP_FLAG_PAGEWISE);
 	}
 
-	early_remap_range(optee_membase, OPTEE_SIZE, MAP_FAULT, false);
+	early_remap_range(optee_membase, OPTEE_SIZE, MAP_FAULT);
 
 	early_remap_range(PAGE_ALIGN_DOWN((uintptr_t)_stext), PAGE_ALIGN(_etext - _stext),
-			  ARCH_MAP_CACHED_RWX, false);
+			  ARCH_MAP_CACHED_RWX);
 
 	mmu_enable();
 }
-- 
2.39.5



