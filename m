Delivery-date: Wed, 06 Aug 2025 15:06:03 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujdqF-007dzP-1B
	for lore@lore.pengutronix.de;
	Wed, 06 Aug 2025 15:06:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujdqD-0005Lj-Lh
	for lore@pengutronix.de; Wed, 06 Aug 2025 15:06:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XLtif+iUm2wxynSocZU4GPe0j8Y+5lol400pXB2Buzo=; b=Xy5OfUJFsyvch86xYspn+Yc+QI
	kjuOsE0gIrDNX2yCvpJKxF4IiM7e7iaKhvYFI+rpWnPqeKFHvumU9wbL/hKu5xszkfz9bpE186EKQ
	vlJVcYSbyL56aXy0Nq59R0W6sX2x1+dhqk10cvLN69R9RAodxc+aKWeYRaTQpAoUrAAlXvzUjy71c
	ZUuCgmHDtLpWFcgTkc6h9gzeHsSa2DdpedPy/5ZThtakN4tLXG8y67zkYrHWMyyjOiFjgkyjHoKBB
	Aimo5uXb9jBtxSb6z7GIQnbR5swwt61wfkFHZsu/7cYKQSh5TsdMXng8XI2u25U+oHN0lg9Qa5fDA
	shIRhDJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujdph-0000000FFpe-36ku;
	Wed, 06 Aug 2025 13:05:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujdpb-0000000FFlz-0DXx
	for barebox@lists.infradead.org;
	Wed, 06 Aug 2025 13:05:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ujdpZ-0004l5-7y; Wed, 06 Aug 2025 15:05:21 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ujdpZ-00CDTf-02;
	Wed, 06 Aug 2025 15:05:21 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ujdON-009YOP-2C;
	Wed, 06 Aug 2025 14:37:15 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  6 Aug 2025 14:37:05 +0200
Message-Id: <20250806123714.2092620-14-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250806123714.2092620-1-a.fatoum@pengutronix.de>
References: <20250806123714.2092620-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250806_060523_121364_15875D40 
X-CRM114-Status: GOOD (  16.10  )
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
Subject: [PATCH 13/22] ARM: mmu64: fix benign off-by-one in flush_cacheable_pages
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For v8_flush_dcache_range(), the second argument is exclusive, but we
are passing flush_end potentially, which is ~0ULL.

This is not a real problem, because the virtual address space can't be
64-bit anyway, but in preparation for compiling the code for 32-bit as
well, let's fix the off-by-one.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/mmu_64.c | 22 ++++++++++++++++++----
 1 file changed, 18 insertions(+), 4 deletions(-)

diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index 9f709fc2d865..94b3137bde45 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -248,10 +248,24 @@ static bool pte_is_cacheable(uint64_t pte)
 	return (pte & PTE_ATTRINDX_MASK) == PTE_ATTRINDX(MT_NORMAL);
 }
 
+/**
+ * dma_flush_range_end - Flush caches for address range
+ * @start: Starting virtual address of the range.
+ * @end:   Last virtual address in range (inclusive)
+ *
+ * This function cleans and invalidates all cache lines in the specified
+ * range. Note that end is inclusive, meaning that it's the last address
+ * that is flushed (assuming both start and total size are cache line aligned).
+ */
+static inline void dma_flush_range_end(unsigned long start, unsigned long end)
+{
+	v8_flush_dcache_range(start, end + 1);
+}
+
 /**
  * flush_cacheable_pages - Flush only the cacheable pages in a region
  * @start: Starting virtual address of the range.
- * @end:   Ending virtual address of the range.
+ * @size:  Size of range
  *
  * This function walks the page table and flushes the data caches for the
  * specified range only if the memory is marked as normal cacheable in the
@@ -266,7 +280,7 @@ static void flush_cacheable_pages(void *start, size_t size)
 	u64 *ttb;
 
 	region_start = PAGE_ALIGN_DOWN((ulong)start);
-	region_end = PAGE_ALIGN(region_start + size);
+	region_end = PAGE_ALIGN(region_start + size) - 1;
 
 	ttb = get_ttb();
 
@@ -301,7 +315,7 @@ static void flush_cacheable_pages(void *start, size_t size)
 		 * If we recorded any area before, let's flush it now
 		 */
 		if (flush_start != ~0ULL)
-			v8_flush_dcache_range(flush_start, flush_end);
+			dma_flush_range_end(flush_start, flush_end);
 
 		/* and start the new contiguous flush area with this page */
 		flush_start = addr;
@@ -310,7 +324,7 @@ static void flush_cacheable_pages(void *start, size_t size)
 
 	/* The previous loop won't flush the last cached range, so do it here */
 	if (flush_start != ~0ULL)
-		v8_flush_dcache_range(flush_start, flush_end);
+		dma_flush_range_end(flush_start, flush_end);
 }
 
 static void early_remap_range(uint64_t addr, size_t size, maptype_t map_type)
-- 
2.39.5



