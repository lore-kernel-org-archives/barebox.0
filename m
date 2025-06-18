Delivery-date: Wed, 18 Jun 2025 11:53:24 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRpTw-008ZSF-18
	for lore@lore.pengutronix.de;
	Wed, 18 Jun 2025 11:53:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRpTt-0003LY-Oz
	for lore@pengutronix.de; Wed, 18 Jun 2025 11:53:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1/zk2FlT4HrYWhwF4JADYX6iEuvjR77CvL+KzJ9yuFA=; b=k+Un5AtXoUFXi4MkoPE0exxQr2
	riipDjie/pucZz4kDXmaREC9beRdY3u7ME0iPVPLN+QVbYfUxcCHrOcqC7WrhC30RaQYJGKgVXw4Q
	398anExoDsijtu/IKQvlxciV8Be1G986df6QDTngvO1qzEVCZcxPik4qs1O/qc2VxTMnxegzkSoVH
	zUmUhRVn24C/bmfdKZewjXlcrJB+eXvfTuJtZDU8c+PPc75Ax73yPLLwkiGA77JhExrUgvJJOxlcK
	x5DaB12X7m8xO9U+dYFPwXJ63uFI+xfdFSgFOLMNraAC7HXtdCajBbQh3QG8MazIft5I66k6IZqOB
	eTZ9G9yg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRpTL-00000009f4k-1tx3;
	Wed, 18 Jun 2025 09:52:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRpC0-00000009c3I-0LoO
	for barebox@lists.infradead.org;
	Wed, 18 Jun 2025 09:34:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uRpBx-0004nG-A5; Wed, 18 Jun 2025 11:34:49 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uRpBw-0047Gj-3A;
	Wed, 18 Jun 2025 11:34:48 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uRpBw-005SrZ-2r;
	Wed, 18 Jun 2025 11:34:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 18 Jun 2025 11:34:49 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250618-mmu-xn-ro-v3-3-2a9825725934@pengutronix.de>
References: <20250618-mmu-xn-ro-v3-0-2a9825725934@pengutronix.de>
In-Reply-To: <20250618-mmu-xn-ro-v3-0-2a9825725934@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1750239288; l=4429;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=X/zxjN2p8zbR0l1IZRslyw3N8DnU+TnZEZ1bEZDV4jQ=;
 b=FrpTXBDqoQd/EsVon0GN3IqTuTU7PNHP11u83iKFdffGPHumylrEE9gm2oV7u8ARb5pO0oQJd
 XTYZYuoLB0yAxq5EDSUZK1rGRZbxJzh8FQlvw2NauyB82OhB9x+fbsD
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250618_023452_159746_D654B43D 
X-CRM114-Status: GOOD (  16.04  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 3/6] ARM: MMU: map memory for barebox proper pagewise
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Map the remainder of the memory explicitly with two level page tables. This is
the place where barebox proper ends at. In barebox proper we'll remap the code
segments readonly/executable and the ro segments readonly/execute never. For this
we need the memory being mapped pagewise. We can't do the split up from section
wise mapping to pagewise mapping later because that would require us to do
a break-before-make sequence which we can't do when barebox proper is running
at the location being remapped.

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/mmu_32.c | 37 +++++++++++++++++++++++++++++--------
 1 file changed, 29 insertions(+), 8 deletions(-)

diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
index 104780ff6b9827982e16c1e2b8ac8aae6e4b5c6a..b21fc75f0ceb0c50f5190662a6cd674b1bd38ced 100644
--- a/arch/arm/cpu/mmu_32.c
+++ b/arch/arm/cpu/mmu_32.c
@@ -247,7 +247,8 @@ static uint32_t get_pmd_flags(int map_type)
 	return pte_flags_to_pmd(get_pte_flags(map_type));
 }
 
-static void __arch_remap_range(void *_virt_addr, phys_addr_t phys_addr, size_t size, unsigned map_type)
+static void __arch_remap_range(void *_virt_addr, phys_addr_t phys_addr, size_t size,
+			       unsigned map_type, bool force_pages)
 {
 	u32 virt_addr = (u32)_virt_addr;
 	u32 pte_flags, pmd_flags;
@@ -268,7 +269,7 @@ static void __arch_remap_range(void *_virt_addr, phys_addr_t phys_addr, size_t s
 
 		if (size >= PGDIR_SIZE && pgdir_size_aligned &&
 		    IS_ALIGNED(phys_addr, PGDIR_SIZE) &&
-		    !pgd_type_table(*pgd)) {
+		    !pgd_type_table(*pgd) && !force_pages) {
 			u32 val;
 			/*
 			 * TODO: Add code to discard a page table and
@@ -339,14 +340,15 @@ static void __arch_remap_range(void *_virt_addr, phys_addr_t phys_addr, size_t s
 
 	tlb_invalidate();
 }
-static void early_remap_range(u32 addr, size_t size, unsigned map_type)
+
+static void early_remap_range(u32 addr, size_t size, unsigned map_type, bool force_pages)
 {
-	__arch_remap_range((void *)addr, addr, size, map_type);
+	__arch_remap_range((void *)addr, addr, size, map_type, force_pages);
 }
 
 int arch_remap_range(void *virt_addr, phys_addr_t phys_addr, size_t size, unsigned map_type)
 {
-	__arch_remap_range(virt_addr, phys_addr, size, map_type);
+	__arch_remap_range(virt_addr, phys_addr, size, map_type, false);
 
 	if (map_type == MAP_UNCACHED)
 		dma_inv_range(virt_addr, size);
@@ -616,6 +618,7 @@ void *dma_alloc_writecombine(struct device *dev, size_t size, dma_addr_t *dma_ha
 void mmu_early_enable(unsigned long membase, unsigned long memsize, unsigned long barebox_start)
 {
 	uint32_t *ttb = (uint32_t *)arm_mem_ttb(membase + memsize);
+	unsigned long barebox_size, optee_start;
 
 	pr_debug("enabling MMU, ttb @ 0x%p\n", ttb);
 
@@ -637,9 +640,27 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize, unsigned lon
 	create_flat_mapping();
 
 	/* maps main memory as cachable */
-	early_remap_range(membase, memsize - OPTEE_SIZE, MAP_CACHED);
-	early_remap_range(membase + memsize - OPTEE_SIZE, OPTEE_SIZE, MAP_UNCACHED);
-	early_remap_range(PAGE_ALIGN_DOWN((uintptr_t)_stext), PAGE_ALIGN(_etext - _stext), MAP_CACHED);
+	optee_start = membase + memsize - OPTEE_SIZE;
+	barebox_size = optee_start - barebox_start;
+
+	/*
+	 * map the bulk of the memory as sections to avoid allocating too many page tables
+	 * at this early stage
+	 */
+	early_remap_range(membase, barebox_start - membase, MAP_CACHED, false);
+	/*
+	 * Map the remainder of the memory explicitly with two level page tables. This is
+	 * the place where barebox proper ends at. In barebox proper we'll remap the code
+	 * segments readonly/executable and the ro segments readonly/execute never. For this
+	 * we need the memory being mapped pagewise. We can't do the split up from section
+	 * wise mapping to pagewise mapping later because that would require us to do
+	 * a break-before-make sequence which we can't do when barebox proper is running
+	 * at the location being remapped.
+	 */
+	early_remap_range(barebox_start, barebox_size, MAP_CACHED, true);
+	early_remap_range(optee_start, OPTEE_SIZE, MAP_UNCACHED, false);
+	early_remap_range(PAGE_ALIGN_DOWN((uintptr_t)_stext), PAGE_ALIGN(_etext - _stext),
+			  MAP_CACHED, false);
 
 	__mmu_cache_on();
 }

-- 
2.39.5



