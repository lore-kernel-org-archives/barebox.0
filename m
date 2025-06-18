Delivery-date: Wed, 18 Jun 2025 11:53:24 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRpTw-008ZSE-0m
	for lore@lore.pengutronix.de;
	Wed, 18 Jun 2025 11:53:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRpTv-0003MI-7W
	for lore@pengutronix.de; Wed, 18 Jun 2025 11:53:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aG/c8Z7VMPXyh0qHOdZNoYDLf0AAhvare7iTqwk2cMQ=; b=tO/SwR7PX5epnzdN0ZCbDykFt/
	K1/arWKfoxlHwIPAwflZb9upcj3FLT+hfRa4tdrjhhI9p3siUNwDISozDxJ13tPnkPBdoMKsvQ1tt
	NTd5B3MrOEwgCx+ft5KNTJuCQPCZ5XWX+HhL4Vw9Z2kGIVqaag4t1jr1Army4GxtF/MUf6g9YRzrd
	FFymcGXGqY0JmgetpoLuK88ctTRrxLCkqgLgTatLJc4Lhyzzg/PqEheMIUutODjFIRZ7zqw+8Gw5a
	U9uyYFoEqlCcHqlBrvSYWsENZF7i+u1kDfpRhqnrLjnt533NqiDTdw1mBgrf7Ra/nEfvOAujuN/Jk
	UJoUEd5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRpTO-00000009f7C-2r5t;
	Wed, 18 Jun 2025 09:52:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRpC6-00000009c76-2mKd
	for barebox@lists.infradead.org;
	Wed, 18 Jun 2025 09:34:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uRpBx-0004nn-B1; Wed, 18 Jun 2025 11:34:49 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uRpBx-0047Gl-00;
	Wed, 18 Jun 2025 11:34:49 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uRpBw-005SrZ-2t;
	Wed, 18 Jun 2025 11:34:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 18 Jun 2025 11:34:51 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250618-mmu-xn-ro-v3-5-2a9825725934@pengutronix.de>
References: <20250618-mmu-xn-ro-v3-0-2a9825725934@pengutronix.de>
In-Reply-To: <20250618-mmu-xn-ro-v3-0-2a9825725934@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1750239288; l=4800;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=0EBX4IFoOo0/zPFT4/uJjmHPbXz7BrtnbYN9qEy9Mhs=;
 b=idKxL0mvuqqZv7me41ysyR/KhMd+XmQ93NnEXVdHlq+/FNz4pMOkrKv5716OrX5jJmpwkzb1I
 jUQvkDF0MzAAqoOW6taTSKf++oLJEVI84ltRKGJVl/3E/kLqt0s5DBh
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250618_023458_728639_04265D55 
X-CRM114-Status: GOOD (  17.14  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 5/6] ARM: MMU64: map memory for barebox proper pagewise
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
 arch/arm/cpu/mmu_64.c | 40 +++++++++++++++++++++++++++++-----------
 1 file changed, 29 insertions(+), 11 deletions(-)

diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index 121dd136af33967e516b66091a6c671d45e6e119..c12c47819ca948ae20a5d604a88f68f78dcc1788 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -10,6 +10,7 @@
 #include <init.h>
 #include <mmu.h>
 #include <errno.h>
+#include <range.h>
 #include <zero_page.h>
 #include <linux/sizes.h>
 #include <asm/memory.h>
@@ -128,7 +129,7 @@ static void split_block(uint64_t *pte, int level)
 }
 
 static void create_sections(uint64_t virt, uint64_t phys, uint64_t size,
-			    uint64_t attr)
+			    uint64_t attr, bool force_pages)
 {
 	uint64_t *ttb = get_ttb();
 	uint64_t block_size;
@@ -149,14 +150,18 @@ static void create_sections(uint64_t virt, uint64_t phys, uint64_t size,
 	while (size) {
 		table = ttb;
 		for (level = 0; level < 4; level++) {
+			bool block_aligned;
 			block_shift = level2shift(level);
 			idx = (addr & level2mask(level)) >> block_shift;
 			block_size = (1ULL << block_shift);
 
 			pte = table + idx;
 
-			if (size >= block_size && IS_ALIGNED(addr, block_size) &&
-			    IS_ALIGNED(phys, block_size)) {
+			block_aligned = size >= block_size &&
+				        IS_ALIGNED(addr, block_size) &&
+				        IS_ALIGNED(phys, block_size);
+
+			if ((force_pages && level == 3) || (!force_pages && block_aligned)) {
 				type = (level == 3) ?
 					PTE_TYPE_PAGE : PTE_TYPE_BLOCK;
 
@@ -297,14 +302,14 @@ static unsigned long get_pte_attrs(unsigned flags)
 	}
 }
 
-static void early_remap_range(uint64_t addr, size_t size, unsigned flags)
+static void early_remap_range(uint64_t addr, size_t size, unsigned flags, bool force_pages)
 {
 	unsigned long attrs = get_pte_attrs(flags);
 
 	if (WARN_ON(attrs == ~0UL))
 		return;
 
-	create_sections(addr, addr, size, attrs);
+	create_sections(addr, addr, size, attrs, force_pages);
 }
 
 int arch_remap_range(void *virt_addr, phys_addr_t phys_addr, size_t size, unsigned flags)
@@ -317,7 +322,7 @@ int arch_remap_range(void *virt_addr, phys_addr_t phys_addr, size_t size, unsign
 	if (flags != MAP_CACHED)
 		flush_cacheable_pages(virt_addr, size);
 
-	create_sections((uint64_t)virt_addr, phys_addr, (uint64_t)size, attrs);
+	create_sections((uint64_t)virt_addr, phys_addr, (uint64_t)size, attrs, false);
 
 	return 0;
 }
@@ -426,7 +431,7 @@ static void init_range(size_t total_level0_tables)
 	uint64_t addr = 0;
 
 	while (total_level0_tables--) {
-		early_remap_range(addr, L0_XLAT_SIZE, MAP_UNCACHED);
+		early_remap_range(addr, L0_XLAT_SIZE, MAP_UNCACHED, false);
 		split_block(ttb, 0);
 		addr += L0_XLAT_SIZE;
 		ttb++;
@@ -437,6 +442,7 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize, unsigned lon
 {
 	int el;
 	u64 optee_membase;
+	unsigned long barebox_size;
 	unsigned long ttb = arm_mem_ttb(membase + memsize);
 
 	if (get_cr() & CR_M)
@@ -457,14 +463,26 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize, unsigned lon
 	 */
 	init_range(2);
 
-	early_remap_range(membase, memsize, MAP_CACHED);
+	early_remap_range(membase, memsize, MAP_CACHED, false);
 
-	if (optee_get_membase(&optee_membase))
+	if (optee_get_membase(&optee_membase)) {
                 optee_membase = membase + memsize - OPTEE_SIZE;
 
-	early_remap_range(optee_membase, OPTEE_SIZE, MAP_FAULT);
+		barebox_size = optee_membase - barebox_start;
+
+		early_remap_range(optee_membase - barebox_size, barebox_size,
+			     get_pte_attrs(ARCH_MAP_CACHED_RWX), true);
+	} else {
+		barebox_size = membase + memsize - barebox_start;
+
+		early_remap_range(membase + memsize - barebox_size, barebox_size,
+			     get_pte_attrs(ARCH_MAP_CACHED_RWX), true);
+	}
+
+	early_remap_range(optee_membase, OPTEE_SIZE, MAP_FAULT, false);
 
-	early_remap_range(PAGE_ALIGN_DOWN((uintptr_t)_stext), PAGE_ALIGN(_etext - _stext), MAP_CACHED);
+	early_remap_range(PAGE_ALIGN_DOWN((uintptr_t)_stext), PAGE_ALIGN(_etext - _stext),
+			  MAP_CACHED, false);
 
 	mmu_enable();
 }

-- 
2.39.5



