Delivery-date: Wed, 06 Aug 2025 14:39:33 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujdQb-007dbm-2d
	for lore@lore.pengutronix.de;
	Wed, 06 Aug 2025 14:39:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujdQZ-00010l-QW
	for lore@pengutronix.de; Wed, 06 Aug 2025 14:39:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1XqPExpHlh3Il6F/vtGiTRxDGV62CdT+7LSJppwBufk=; b=NGk30x98tiKyO5+kLEBvaAdqYN
	y+99bzJzMIJgShH/qzMImLVgzxp5w3lMMe1+uBPIAXjO78fPaUTRYrRGB/JQb2EisyUoP5BPNkdkZ
	r+V3VFrkDFFn5Z3XMuesZ5NjI/CRpUV2WvsQPRKi5qNXmSWZ7+xsnyagjoos+dEWFm7M8f5DGgrke
	hCFHB86GDG+OEl5ohYqm9KmCbIbh+dH+HPCfTBcRpZw74N36fbZPzWsKy9mKrUQ6/JJQnxQsH7nJj
	KhRGserUAhXRuzmovicP/fTKG3eJOnBZNsQsDKwMFetzzuIsx3SWiErF5/FyQyKIXN1KVYlpaeZ6Y
	VHh6Xk9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujdQ6-0000000FAMt-0sYk;
	Wed, 06 Aug 2025 12:39:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujdOO-0000000FA5L-3Ayg
	for barebox@lists.infradead.org;
	Wed, 06 Aug 2025 12:37:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ujdON-0000MS-DP; Wed, 06 Aug 2025 14:37:15 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ujdON-00CD8n-0j;
	Wed, 06 Aug 2025 14:37:15 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ujdON-009YOP-0P;
	Wed, 06 Aug 2025 14:37:15 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  6 Aug 2025 14:36:53 +0200
Message-Id: <20250806123714.2092620-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250806123714.2092620-1-a.fatoum@pengutronix.de>
References: <20250806123714.2092620-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250806_053716_994236_8D25467A 
X-CRM114-Status: GOOD (  20.43  )
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
Subject: [PATCH 01/22] ARM: mmu: introduce new maptype_t type
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The unsigned flags parameter in a lot of the MMU functions is ambiguous
as it's used for both the generic map type and the actual
architecture-specific page table entry attributes.

Clear this up by using maptype_t as type for all generic mapping types
and by rewording the parameter name where appropriate.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/mmu-common.c      |  4 ++--
 arch/arm/cpu/mmu-common.h      |  4 ++--
 arch/arm/cpu/mmu_32.c          | 10 +++++-----
 arch/arm/cpu/mmu_64.c          | 16 ++++++++--------
 arch/arm/include/asm/mmu.h     |  2 +-
 arch/powerpc/cpu-85xx/mmu.c    |  2 +-
 arch/powerpc/include/asm/mmu.h |  2 +-
 commands/memtest.c             |  8 ++++----
 include/linux/types.h          |  2 ++
 include/mmu.h                  |  8 ++++----
 10 files changed, 30 insertions(+), 28 deletions(-)

diff --git a/arch/arm/cpu/mmu-common.c b/arch/arm/cpu/mmu-common.c
index 1de20d931876..2e61dc36b7cc 100644
--- a/arch/arm/cpu/mmu-common.c
+++ b/arch/arm/cpu/mmu-common.c
@@ -24,7 +24,7 @@ void arch_sync_dma_for_cpu(void *vaddr, size_t size,
 }
 
 void *dma_alloc_map(struct device *dev,
-		    size_t size, dma_addr_t *dma_handle, unsigned flags)
+		    size_t size, dma_addr_t *dma_handle, maptype_t map_type)
 {
 	void *ret;
 
@@ -36,7 +36,7 @@ void *dma_alloc_map(struct device *dev,
 	memset(ret, 0, size);
 	dma_flush_range(ret, size);
 
-	remap_range(ret, size, flags);
+	remap_range(ret, size, map_type);
 
 	return ret;
 }
diff --git a/arch/arm/cpu/mmu-common.h b/arch/arm/cpu/mmu-common.h
index f76c7c4c38d6..a545958b5cc2 100644
--- a/arch/arm/cpu/mmu-common.h
+++ b/arch/arm/cpu/mmu-common.h
@@ -17,11 +17,11 @@ struct device;
 
 void dma_inv_range(void *ptr, size_t size);
 void dma_flush_range(void *ptr, size_t size);
-void *dma_alloc_map(struct device *dev, size_t size, dma_addr_t *dma_handle, unsigned flags);
+void *dma_alloc_map(struct device *dev, size_t size, dma_addr_t *dma_handle, maptype_t map_type);
 void setup_trap_pages(void);
 void __mmu_init(bool mmu_on);
 
-static inline unsigned arm_mmu_maybe_skip_permissions(unsigned map_type)
+static inline maptype_t arm_mmu_maybe_skip_permissions(maptype_t map_type)
 {
 	if (IS_ENABLED(CONFIG_ARM_MMU_PERMISSIONS))
 		return map_type;
diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
index 985a063bbdda..8d1343b5d7d7 100644
--- a/arch/arm/cpu/mmu_32.c
+++ b/arch/arm/cpu/mmu_32.c
@@ -223,7 +223,7 @@ static u32 pte_flags_to_pmd(u32 pte)
 	return pmd;
 }
 
-static uint32_t get_pte_flags(int map_type)
+static uint32_t get_pte_flags(maptype_t map_type)
 {
 	if (cpu_architecture() >= CPU_ARCH_ARMv7) {
 		switch (map_type) {
@@ -261,13 +261,13 @@ static uint32_t get_pte_flags(int map_type)
 	}
 }
 
-static uint32_t get_pmd_flags(int map_type)
+static uint32_t get_pmd_flags(maptype_t map_type)
 {
 	return pte_flags_to_pmd(get_pte_flags(map_type));
 }
 
 static void __arch_remap_range(void *_virt_addr, phys_addr_t phys_addr, size_t size,
-			       unsigned map_type, bool force_pages)
+			       maptype_t map_type, bool force_pages)
 {
 	u32 virt_addr = (u32)_virt_addr;
 	u32 pte_flags, pmd_flags;
@@ -364,12 +364,12 @@ static void __arch_remap_range(void *_virt_addr, phys_addr_t phys_addr, size_t s
 	tlb_invalidate();
 }
 
-static void early_remap_range(u32 addr, size_t size, unsigned map_type, bool force_pages)
+static void early_remap_range(u32 addr, size_t size, maptype_t map_type, bool force_pages)
 {
 	__arch_remap_range((void *)addr, addr, size, map_type, force_pages);
 }
 
-int arch_remap_range(void *virt_addr, phys_addr_t phys_addr, size_t size, unsigned map_type)
+int arch_remap_range(void *virt_addr, phys_addr_t phys_addr, size_t size, maptype_t map_type)
 {
 	map_type = arm_mmu_maybe_skip_permissions(map_type);
 
diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index e7d2e9697a7e..ad96bda702b8 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -287,9 +287,9 @@ static void flush_cacheable_pages(void *start, size_t size)
 		v8_flush_dcache_range(flush_start, flush_end);
 }
 
-static unsigned long get_pte_attrs(unsigned flags)
+static unsigned long get_pte_attrs(maptype_t map_type)
 {
-	switch (flags) {
+	switch (map_type) {
 	case MAP_CACHED:
 		return attrs_xn() | CACHED_MEM;
 	case MAP_UNCACHED:
@@ -309,9 +309,9 @@ static unsigned long get_pte_attrs(unsigned flags)
 	}
 }
 
-static void early_remap_range(uint64_t addr, size_t size, unsigned flags, bool force_pages)
+static void early_remap_range(uint64_t addr, size_t size, maptype_t map_type, bool force_pages)
 {
-	unsigned long attrs = get_pte_attrs(flags);
+	unsigned long attrs = get_pte_attrs(map_type);
 
 	if (WARN_ON(attrs == ~0UL))
 		return;
@@ -319,18 +319,18 @@ static void early_remap_range(uint64_t addr, size_t size, unsigned flags, bool f
 	create_sections(addr, addr, size, attrs, force_pages);
 }
 
-int arch_remap_range(void *virt_addr, phys_addr_t phys_addr, size_t size, unsigned flags)
+int arch_remap_range(void *virt_addr, phys_addr_t phys_addr, size_t size, maptype_t map_type)
 {
 	unsigned long attrs;
 
-	flags = arm_mmu_maybe_skip_permissions(flags);
+	map_type = arm_mmu_maybe_skip_permissions(map_type);
 
-	attrs = get_pte_attrs(flags);
+	attrs = get_pte_attrs(map_type);
 
 	if (attrs == ~0UL)
 		return -EINVAL;
 
-	if (flags != MAP_CACHED)
+	if (map_type != MAP_CACHED)
 		flush_cacheable_pages(virt_addr, size);
 
 	create_sections((uint64_t)virt_addr, phys_addr, (uint64_t)size, attrs, false);
diff --git a/arch/arm/include/asm/mmu.h b/arch/arm/include/asm/mmu.h
index 5538cd3558e8..eef6c53b5912 100644
--- a/arch/arm/include/asm/mmu.h
+++ b/arch/arm/include/asm/mmu.h
@@ -23,7 +23,7 @@ static inline void setup_dma_coherent(unsigned long offset)
 #ifdef CONFIG_MMU
 #define ARCH_HAS_REMAP
 #define MAP_ARCH_DEFAULT MAP_CACHED
-int arch_remap_range(void *virt_addr, phys_addr_t phys_addr, size_t size, unsigned flags);
+int arch_remap_range(void *virt_addr, phys_addr_t phys_addr, size_t size, maptype_t map_type);
 void *map_io_sections(unsigned long physaddr, void *start, size_t size);
 #else
 #define MAP_ARCH_DEFAULT MAP_UNCACHED
diff --git a/arch/powerpc/cpu-85xx/mmu.c b/arch/powerpc/cpu-85xx/mmu.c
index 3bd75281eb98..5fe9ba9db6d8 100644
--- a/arch/powerpc/cpu-85xx/mmu.c
+++ b/arch/powerpc/cpu-85xx/mmu.c
@@ -17,7 +17,7 @@
 #include <mmu.h>
 #include <mach/mmu.h>
 
-int arch_remap_range(void *virt_addr, phys_addr_t phys_addr, size_t size, unsigned flags)
+int arch_remap_range(void *virt_addr, phys_addr_t phys_addr, size_t size, maptype_t flags)
 {
 	uint32_t ptr, start, tsize, valid, wimge, pte_flags;
 	unsigned long epn;
diff --git a/arch/powerpc/include/asm/mmu.h b/arch/powerpc/include/asm/mmu.h
index 10b15a47b9aa..288c5903a277 100644
--- a/arch/powerpc/include/asm/mmu.h
+++ b/arch/powerpc/include/asm/mmu.h
@@ -563,7 +563,7 @@ extern int write_bat(ppc_bat_t bat, unsigned long upper, unsigned long lower);
 
 #ifdef CONFIG_MMU
 #define ARCH_HAS_REMAP
-int arch_remap_range(void *virt_addr, phys_addr_t phys_addr, size_t size, unsigned flags);
+int arch_remap_range(void *virt_addr, phys_addr_t phys_addr, size_t size, maptype_t flags);
 #endif
 
 #endif
diff --git a/commands/memtest.c b/commands/memtest.c
index 9fa148b3aa41..cc7e3c29ad06 100644
--- a/commands/memtest.c
+++ b/commands/memtest.c
@@ -13,7 +13,7 @@
 #include <mmu.h>
 
 static int do_test_one_area(struct mem_test_resource *r, int bus_only,
-		unsigned cache_flag)
+		maptype_t cache_flag)
 {
 	unsigned flags = MEMTEST_VERBOSE;
 	int ret;
@@ -39,7 +39,7 @@ static int do_test_one_area(struct mem_test_resource *r, int bus_only,
 }
 
 static int do_memtest_thorough(struct list_head *memtest_regions,
-		int bus_only, unsigned cache_flag)
+		int bus_only, maptype_t cache_flag)
 {
 	struct mem_test_resource *r;
 	int ret;
@@ -54,7 +54,7 @@ static int do_memtest_thorough(struct list_head *memtest_regions,
 }
 
 static int do_memtest_biggest(struct list_head *memtest_regions,
-		int bus_only, unsigned cache_flag)
+		int bus_only, maptype_t cache_flag)
 {
 	struct mem_test_resource *r;
 
@@ -70,7 +70,7 @@ static int do_memtest(int argc, char *argv[])
 	int bus_only = 0, ret, opt;
 	uint32_t i, max_i = 1;
 	struct list_head memtest_used_regions;
-	int (*memtest)(struct list_head *, int, unsigned);
+	int (*memtest)(struct list_head *, int, maptype_t);
 	int cached = 0, uncached = 0;
 
 	memtest = do_memtest_biggest;
diff --git a/include/linux/types.h b/include/linux/types.h
index c5e38fee9595..93e7fe46295f 100644
--- a/include/linux/types.h
+++ b/include/linux/types.h
@@ -198,6 +198,8 @@ typedef u32 phys_size_t;
 
 typedef phys_addr_t resource_size_t;
 
+typedef unsigned maptype_t;
+
 struct ustat {
 	__kernel_daddr_t	f_tfree;
 	__kernel_ino_t		f_tinode;
diff --git a/include/mmu.h b/include/mmu.h
index 17c04d2fa05f..db8453f58521 100644
--- a/include/mmu.h
+++ b/include/mmu.h
@@ -27,9 +27,9 @@
 
 #ifndef ARCH_HAS_REMAP
 static inline int arch_remap_range(void *virt_addr, phys_addr_t phys_addr,
-				   size_t size, unsigned flags)
+				   size_t size, maptype_t map_type)
 {
-	if (flags == MAP_ARCH_DEFAULT && phys_addr == virt_to_phys(virt_addr))
+	if (map_type == MAP_ARCH_DEFAULT && phys_addr == virt_to_phys(virt_addr))
 		return 0;
 
 	return -EINVAL;
@@ -46,9 +46,9 @@ static inline bool arch_can_remap(void)
 }
 #endif
 
-static inline int remap_range(void *start, size_t size, unsigned flags)
+static inline int remap_range(void *start, size_t size, maptype_t map_type)
 {
-	return arch_remap_range(start, virt_to_phys(start), size, flags);
+	return arch_remap_range(start, virt_to_phys(start), size, map_type);
 }
 
 #ifdef CONFIG_MMUINFO
-- 
2.39.5



