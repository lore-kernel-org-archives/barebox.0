Delivery-date: Wed, 06 Aug 2025 15:06:08 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujdqK-007e2J-1r
	for lore@lore.pengutronix.de;
	Wed, 06 Aug 2025 15:06:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujdqI-0005QZ-Po
	for lore@pengutronix.de; Wed, 06 Aug 2025 15:06:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aEOusx2WcJiVCq2FaEclpl0r3bE80nxM/lXmuKnaYO0=; b=YuvsgCT8RHwucUC3QavTxKstSQ
	ujyX7fo54ym3Zln5bZEJmrRPjryDu/tCL9I45s0twC9xLptGdGN/U/gIHpfR+1ZrfTl0D0N/I7XX4
	YOcHfCZS+ttqxXFImGSxygehPG0zNKfVebRxNCBcLvZqJeatpKwJayhS3zaDRuJ3lCMzg2EEMEZrv
	PHMynU6BUrBKCNBSWoFK96mVN2Y86EPKeJZFz8YgsGGnRI6O7x4mekgx43d2KkIQ3vFs0VbNq1ncC
	W6qKS3hy50pHDbCMS6u9Picwzr6FzcXSgp6y2GUsdiXAA1/bVNLjGBIyp+QtXqyFgpBasz1iFJioY
	xj1gjAGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujdpm-0000000FFvB-1yLI;
	Wed, 06 Aug 2025 13:05:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujdpi-0000000FFpp-1PVV
	for barebox@lists.infradead.org;
	Wed, 06 Aug 2025 13:05:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ujdpZ-0004kt-2w; Wed, 06 Aug 2025 15:05:21 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ujdpY-00CDTT-28;
	Wed, 06 Aug 2025 15:05:20 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ujdON-009YOP-2v;
	Wed, 06 Aug 2025 14:37:15 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  6 Aug 2025 14:37:10 +0200
Message-Id: <20250806123714.2092620-19-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250806123714.2092620-1-a.fatoum@pengutronix.de>
References: <20250806123714.2092620-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250806_060530_388586_24F50170 
X-CRM114-Status: GOOD (  24.65  )
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
Subject: [PATCH 18/22] ARM: mmu64: factor out flush_cacheable_pages for reusability
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In preparation for using the same code for ARM32, let's move it into a
header. We intentionally don't move the code into mmu-common.c as we
want to give the compiler maximum leeway with inlining the page table
walk.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/flush_cacheable_pages.h | 77 ++++++++++++++++++++++++++++
 arch/arm/cpu/mmu_64.c                | 65 +----------------------
 2 files changed, 78 insertions(+), 64 deletions(-)
 create mode 100644 arch/arm/cpu/flush_cacheable_pages.h

diff --git a/arch/arm/cpu/flush_cacheable_pages.h b/arch/arm/cpu/flush_cacheable_pages.h
new file mode 100644
index 000000000000..85fde0122802
--- /dev/null
+++ b/arch/arm/cpu/flush_cacheable_pages.h
@@ -0,0 +1,77 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* SPDX-FileCopyrightText: 2024 Ahmad Fatoum, Pengutronix */
+
+/**
+ * flush_cacheable_pages - Flush only the cacheable pages in a region
+ * @start: Starting virtual address of the range.
+ * @size:  Size of range
+ *
+ * This function walks the page table and flushes the data caches for the
+ * specified range only if the memory is marked as normal cacheable in the
+ * page tables. If a non-cacheable or non-normal page is encountered,
+ * it's skipped.
+ */
+/**
+ * flush_cacheable_pages - Flush only the cacheable pages in a region
+ * @start: Starting virtual address of the range.
+ * @size:  Size of range
+ *
+ * This function walks the page table and flushes the data caches for the
+ * specified range only if the memory is marked as normal cacheable in the
+ * page tables. If a non-cacheable or non-normal page is encountered,
+ * it's skipped.
+ */
+static void flush_cacheable_pages(void *start, size_t size)
+{
+	mmu_addr_t flush_start = ~0UL, flush_end = ~0UL;
+	mmu_addr_t region_start, region_end;
+	size_t block_size;
+	mmu_addr_t *ttb;
+
+	region_start = PAGE_ALIGN_DOWN((ulong)start);
+	region_end = PAGE_ALIGN(region_start + size) - 1;
+
+	ttb = get_ttb();
+
+	/*
+	 * TODO: This loop could be made more optimal by inlining the page walk,
+	 * so we need not restart address translation from the top every time.
+	 *
+	 * The hope is that with the page tables being cached and the
+	 * windows being remapped being small, the overhead compared to
+	 * actually flushing the ranges isn't too significant.
+	 */
+	for (mmu_addr_t addr = region_start; addr < region_end; addr += block_size) {
+		unsigned level;
+		mmu_addr_t *pte = find_pte(ttb, addr, &level);
+
+		block_size = granule_size(level);
+
+		if (!pte || !pte_is_cacheable(*pte))
+			continue;
+
+		if (flush_end == addr) {
+			/*
+			 * While it's safe to flush the whole block_size,
+			 * it's unnecessary time waste to go beyond region_end.
+			 */
+			flush_end = min(flush_end + block_size, region_end);
+			continue;
+		}
+
+		/*
+		 * We don't have a previous contiguous flush area to append to.
+		 * If we recorded any area before, let's flush it now
+		 */
+		if (flush_start != ~0UL)
+			dma_flush_range_end(flush_start, flush_end);
+
+		/* and start the new contiguous flush area with this page */
+		flush_start = addr;
+		flush_end = min(flush_start + block_size, region_end);
+	}
+
+	/* The previous loop won't flush the last cached range, so do it here */
+	if (flush_start != ~0UL)
+		dma_flush_range_end(flush_start, flush_end);
+}
diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index a20cb39a9296..50bb25b5373a 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -273,70 +273,7 @@ static inline void dma_flush_range_end(unsigned long start, unsigned long end)
 	v8_flush_dcache_range(start, end + 1);
 }
 
-/**
- * flush_cacheable_pages - Flush only the cacheable pages in a region
- * @start: Starting virtual address of the range.
- * @size:  Size of range
- *
- * This function walks the page table and flushes the data caches for the
- * specified range only if the memory is marked as normal cacheable in the
- * page tables. If a non-cacheable or non-normal page is encountered,
- * it's skipped.
- */
-static void flush_cacheable_pages(void *start, size_t size)
-{
-	mmu_addr_t flush_start = ~0UL, flush_end = ~0UL;
-	mmu_addr_t region_start, region_end;
-	size_t block_size;
-	mmu_addr_t *ttb;
-
-	region_start = PAGE_ALIGN_DOWN((ulong)start);
-	region_end = PAGE_ALIGN(region_start + size) - 1;
-
-	ttb = get_ttb();
-
-	/*
-	 * TODO: This loop could be made more optimal by inlining the page walk,
-	 * so we need not restart address translation from the top every time.
-	 *
-	 * The hope is that with the page tables being cached and the
-	 * windows being remapped being small, the overhead compared to
-	 * actually flushing the ranges isn't too significant.
-	 */
-	for (mmu_addr_t addr = region_start; addr < region_end; addr += block_size) {
-		unsigned level;
-		mmu_addr_t *pte = find_pte(ttb, addr, &level);
-
-		block_size = granule_size(level);
-		
-		if (!pte || !pte_is_cacheable(*pte))
-			continue;
-
-		if (flush_end == addr) {
-			/*
-			 * While it's safe to flush the whole block_size,
-			 * it's unnecessary time waste to go beyond region_end.
-			 */
-			flush_end = min(flush_end + block_size, region_end);
-			continue;
-		}
-
-		/*
-		 * We don't have a previous contiguous flush area to append to.
-		 * If we recorded any area before, let's flush it now
-		 */
-		if (flush_start != ~0UL)
-			dma_flush_range_end(flush_start, flush_end);
-
-		/* and start the new contiguous flush area with this page */
-		flush_start = addr;
-		flush_end = min(flush_start + block_size, region_end);
-	}
-
-	/* The previous loop won't flush the last cached range, so do it here */
-	if (flush_start != ~0UL)
-		dma_flush_range_end(flush_start, flush_end);
-}
+#include "flush_cacheable_pages.h"
 
 static void early_remap_range(uint64_t addr, size_t size, maptype_t map_type)
 {
-- 
2.39.5



