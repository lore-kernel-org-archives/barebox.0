Delivery-date: Wed, 06 Aug 2025 15:06:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujdqG-007e0I-1Y
	for lore@lore.pengutronix.de;
	Wed, 06 Aug 2025 15:06:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujdqE-0005Mh-RO
	for lore@pengutronix.de; Wed, 06 Aug 2025 15:06:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7nMjgKQp+YD1BuNUrqubxabGwhnZxxbMudJcNtYP7GU=; b=N5k7ONYlJIzjEzpgjzkL9xnDHa
	f4IxQ0Nrhyfj/DCdeTTCeA4d/guE5MCHqbPVOVycqW2QfDy8MaTl4pNtgit+Ch1Om6zlYRoQJwp9x
	K2cYSAUBYTYUMag8lXECKlGCu1v07W0TbvhABuxHKFEFpTuDduxfUpcE+dCGhkb/bvMVe9RvmtX34
	VXDt012iyjGIIJyZY2EmBNELSbTDpIc+32rrla+XRuvTpfUe3r7UM9oZOkDcsXP2H34KXWdMZffMW
	S7c79HLMH2cQT6ABIAftOOWHzJpcJ9hySE7kOVgQ/1E1O1I1IS48sy0DAX8EaSkB7br8BEmUZDdzG
	pdGXKOYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujdpl-0000000FFuO-1fFT;
	Wed, 06 Aug 2025 13:05:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujdpi-0000000FFpq-1OzD
	for barebox@lists.infradead.org;
	Wed, 06 Aug 2025 13:05:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ujdpZ-0004ks-2w; Wed, 06 Aug 2025 15:05:21 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ujdpY-00CDTQ-1r;
	Wed, 06 Aug 2025 15:05:20 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ujdON-009YOP-2L;
	Wed, 06 Aug 2025 14:37:15 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  6 Aug 2025 14:37:06 +0200
Message-Id: <20250806123714.2092620-15-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250806123714.2092620-1-a.fatoum@pengutronix.de>
References: <20250806123714.2092620-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250806_060530_383682_59D6D2BE 
X-CRM114-Status: GOOD (  12.10  )
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
Subject: [PATCH 14/22] ARM: mmu64: make flush_cacheable_pages less 64-bit dependent
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

With just a few changes, flush_cacheable_pages() could be used for
32-bit ARM MMU support as well, so prepare for that by using generic
functions and types.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/mmu_64.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index 94b3137bde45..cdfbf081d51f 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -274,10 +274,10 @@ static inline void dma_flush_range_end(unsigned long start, unsigned long end)
  */
 static void flush_cacheable_pages(void *start, size_t size)
 {
-	u64 flush_start = ~0ULL, flush_end = ~0ULL;
-	u64 region_start, region_end;
+	mmu_addr_t flush_start = ~0UL, flush_end = ~0UL;
+	mmu_addr_t region_start, region_end;
 	size_t block_size;
-	u64 *ttb;
+	mmu_addr_t *ttb;
 
 	region_start = PAGE_ALIGN_DOWN((ulong)start);
 	region_end = PAGE_ALIGN(region_start + size) - 1;
@@ -292,9 +292,9 @@ static void flush_cacheable_pages(void *start, size_t size)
 	 * windows being remapped being small, the overhead compared to
 	 * actually flushing the ranges isn't too significant.
 	 */
-	for (u64 addr = region_start; addr < region_end; addr += block_size) {
+	for (mmu_addr_t addr = region_start; addr < region_end; addr += block_size) {
 		int level;
-		u64 *pte = __find_pte(ttb, addr, &level);
+		mmu_addr_t *pte = __find_pte(ttb, addr, &level);
 
 		block_size = granule_size(level);
 		
@@ -314,7 +314,7 @@ static void flush_cacheable_pages(void *start, size_t size)
 		 * We don't have a previous contiguous flush area to append to.
 		 * If we recorded any area before, let's flush it now
 		 */
-		if (flush_start != ~0ULL)
+		if (flush_start != ~0UL)
 			dma_flush_range_end(flush_start, flush_end);
 
 		/* and start the new contiguous flush area with this page */
@@ -323,7 +323,7 @@ static void flush_cacheable_pages(void *start, size_t size)
 	}
 
 	/* The previous loop won't flush the last cached range, so do it here */
-	if (flush_start != ~0ULL)
+	if (flush_start != ~0UL)
 		dma_flush_range_end(flush_start, flush_end);
 }
 
-- 
2.39.5



