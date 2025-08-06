Delivery-date: Wed, 06 Aug 2025 15:06:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujdqH-007e0o-1E
	for lore@lore.pengutronix.de;
	Wed, 06 Aug 2025 15:06:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujdqF-0005Nh-Bw
	for lore@pengutronix.de; Wed, 06 Aug 2025 15:06:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JYkkb1wTw52zuDHVYq79E5e4ojDeHDTVS5faIg0qkgM=; b=bD5yhsLQMn/7PHHQuK63N1OCRd
	cxG+SBFg0QFhvfFOSOUA8Ej0NxPAojUQXp5+AYO46yyoUJ3/8zDMfug9TXZbrA3QHDlC49nWLY5xf
	dDc8tDxYbefvn6ZyU7e0u5VsIF7u+pN0BZ8GMnVUPTtzHrQp449ChCh8ZFDehH1T6PmpSNAfw/2ne
	w4kHRhbHyOBZFLAcM06ZEiFOo1chQkawYUqRkKHAqds+wHSIYlpTqa/lepAaYJVYEIdeptRZQBOda
	r7TONQJWU4QZo7pCtojYDRaEqxZcxi2ACXxfijBWxvlGENhHUwRejGVubOAFgoHYH/oy2R0uoqIX2
	dxF0WAAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujdpe-0000000FFnv-0DuK;
	Wed, 06 Aug 2025 13:05:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujdpb-0000000FFly-0DtE
	for barebox@lists.infradead.org;
	Wed, 06 Aug 2025 13:05:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ujdpZ-0004kr-2x; Wed, 06 Aug 2025 15:05:21 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ujdpY-00CDTN-1a;
	Wed, 06 Aug 2025 15:05:20 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ujdON-009YOP-2d;
	Wed, 06 Aug 2025 14:37:15 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  6 Aug 2025 14:37:08 +0200
Message-Id: <20250806123714.2092620-17-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250806123714.2092620-1-a.fatoum@pengutronix.de>
References: <20250806123714.2092620-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250806_060523_110760_1D0041AB 
X-CRM114-Status: GOOD (  12.03  )
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
Subject: [PATCH 16/22] ARM: mmu64: rename __find_pte to find_pte
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

find_pte is useful for debugging, but was unreferenced at first until we
added flush_cacheable_pages as user of __find_pte.

__find_pte is easy to use, so just drop find_pte and rename __find_pte
to find_pte. This is in preparation for mmu32 to provide a function
with the same semantics.

While at it, change the level to be unsigned as there are no negative
levels.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/mmu_64.c | 14 ++++----------
 1 file changed, 4 insertions(+), 10 deletions(-)

diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index 15b809808153..a20cb39a9296 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -96,7 +96,7 @@ static uint64_t *alloc_pte(void)
 #endif
 
 /**
- * __find_pte - Find page table entry
+ * find_pte - Find page table entry
  * @ttb: Translation Table Base
  * @addr: Virtual address to lookup
  * @level: used to store the level at which the page table walk ended.
@@ -110,7 +110,7 @@ static uint64_t *alloc_pte(void)
  *
  * Returns a pointer to the page table entry
  */
-static uint64_t *__find_pte(uint64_t *ttb, uint64_t addr, int *level)
+static uint64_t *find_pte(uint64_t *ttb, uint64_t addr, unsigned *level)
 {
 	uint64_t *pte = ttb;
 	uint64_t block_shift;
@@ -135,12 +135,6 @@ static uint64_t *__find_pte(uint64_t *ttb, uint64_t addr, int *level)
 	return pte;
 }
 
-/* This is currently unused, but useful for debugging */
-static __maybe_unused uint64_t *find_pte(uint64_t addr)
-{
-	return __find_pte(get_ttb(), addr, NULL);
-}
-
 static unsigned long get_pte_attrs(maptype_t map_type)
 {
 	switch (map_type & MAP_TYPE_MASK) {
@@ -310,8 +304,8 @@ static void flush_cacheable_pages(void *start, size_t size)
 	 * actually flushing the ranges isn't too significant.
 	 */
 	for (mmu_addr_t addr = region_start; addr < region_end; addr += block_size) {
-		int level;
-		mmu_addr_t *pte = __find_pte(ttb, addr, &level);
+		unsigned level;
+		mmu_addr_t *pte = find_pte(ttb, addr, &level);
 
 		block_size = granule_size(level);
 		
-- 
2.39.5



