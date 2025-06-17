Delivery-date: Tue, 17 Jun 2025 19:11:02 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRZpu-008LBf-0K
	for lore@lore.pengutronix.de;
	Tue, 17 Jun 2025 19:11:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRZpt-0001zX-A9
	for lore@pengutronix.de; Tue, 17 Jun 2025 19:11:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=A617GwK+fVjNxEhEyA7Gf8Sbv17Th3EkBp2cFmbjmSU=; b=IddmoAlip6Y+49YPguYcrkRvNV
	obaUIQjng/bYtr79vcva/pazrNOcde/Z6cEhmfwylmsREs6K4kVu61MbafmPa+W26ymOWeJ8fbxUU
	GKp059+h4CdiK3hxn1HnFn8WNuvvK09KSGBmwtN7Q+ang62XPAOiTUT5CEe9Jm0R6CyWh8to4kRsV
	iOE/T8NdHceZh9c4sRYjbfI9Ar7rWOnMBYSQYSPNo6LGJOTKw4RNQs+kkiP0GQ2aP8XID0cjzbRR7
	0V9qywltHl+c6NfPsPGTUEpSYenbR7obYspEFtLhyAVAsa01cP2rViBtY+xC5oDr11tKIR8vgHhGh
	Oyl9nNXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRZpa-00000007xfq-0yXP;
	Tue, 17 Jun 2025 17:10:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRXIU-00000007YVh-1R26
	for barebox@lists.infradead.org;
	Tue, 17 Jun 2025 14:28:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uRXIL-0007nZ-4D; Tue, 17 Jun 2025 16:28:13 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uRXIK-003zFl-2s;
	Tue, 17 Jun 2025 16:28:12 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uRXIK-00Gvg5-2T;
	Tue, 17 Jun 2025 16:28:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 17 Jun 2025 16:28:12 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250617-mmu-xn-ro-v2-5-3c7aa9046b67@pengutronix.de>
References: <20250617-mmu-xn-ro-v2-0-3c7aa9046b67@pengutronix.de>
In-Reply-To: <20250617-mmu-xn-ro-v2-0-3c7aa9046b67@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1750170492; l=5022;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=fa36E6NN0wGv3UBiJjuBscuYheZF5w6cD6Vf5VTCFgU=;
 b=1vuvgQTyKM25osTMWBYwDOIWzvmgEhXPlnHEiQQppVnm/HfyP5rxS5IQWntqfaaO+5x98OTFI
 nyf6uQF8+UWCG2xeaPdxZ6OyNZ7czFFee2uXZOCEJ4afU36ie56yUrJ
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250617_072822_389028_309533C7 
X-CRM114-Status: GOOD (  18.02  )
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
Subject: [PATCH v2 5/6] ARM: MMU64: map memory for barebox proper pagewise
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
 arch/arm/cpu/mmu_64.c | 48 ++++++++++++++++++++++++++++++++++--------------
 1 file changed, 34 insertions(+), 14 deletions(-)

diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index 121dd136af33967e516b66091a6c671d45e6e119..7e46201bbaae06dd4f2f3bd194db93d83401bfc9 100644
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
@@ -149,19 +150,25 @@ static void create_sections(uint64_t virt, uint64_t phys, uint64_t size,
 	while (size) {
 		table = ttb;
 		for (level = 0; level < 4; level++) {
+			bool finish = false;
 			block_shift = level2shift(level);
 			idx = (addr & level2mask(level)) >> block_shift;
 			block_size = (1ULL << block_shift);
 
 			pte = table + idx;
 
-			if (size >= block_size && IS_ALIGNED(addr, block_size) &&
-			    IS_ALIGNED(phys, block_size)) {
+			if (force_pages) {
+				if (level == 3)
+					finish = true;
+			} else if (size >= block_size && IS_ALIGNED(addr, block_size) &&
+				   IS_ALIGNED(phys, block_size)) {
+				finish = true;
+			}
+
+			if (finish) {
 				type = (level == 3) ?
 					PTE_TYPE_PAGE : PTE_TYPE_BLOCK;
-
-				/* TODO: break-before-make missing */
-				set_pte(pte, phys | attr | type);
+				*pte = phys | attr | type;
 				addr += block_size;
 				phys += block_size;
 				size -= block_size;
@@ -297,14 +304,14 @@ static unsigned long get_pte_attrs(unsigned flags)
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
@@ -317,7 +324,7 @@ int arch_remap_range(void *virt_addr, phys_addr_t phys_addr, size_t size, unsign
 	if (flags != MAP_CACHED)
 		flush_cacheable_pages(virt_addr, size);
 
-	create_sections((uint64_t)virt_addr, phys_addr, (uint64_t)size, attrs);
+	create_sections((uint64_t)virt_addr, phys_addr, (uint64_t)size, attrs, false);
 
 	return 0;
 }
@@ -426,7 +433,7 @@ static void init_range(size_t total_level0_tables)
 	uint64_t addr = 0;
 
 	while (total_level0_tables--) {
-		early_remap_range(addr, L0_XLAT_SIZE, MAP_UNCACHED);
+		early_remap_range(addr, L0_XLAT_SIZE, MAP_UNCACHED, false);
 		split_block(ttb, 0);
 		addr += L0_XLAT_SIZE;
 		ttb++;
@@ -437,6 +444,7 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize, unsigned lon
 {
 	int el;
 	u64 optee_membase;
+	unsigned long barebox_size;
 	unsigned long ttb = arm_mem_ttb(membase + memsize);
 
 	if (get_cr() & CR_M)
@@ -457,14 +465,26 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize, unsigned lon
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



