Delivery-date: Fri, 13 Jun 2025 11:09:55 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uQ0Q6-006oTZ-0A
	for lore@lore.pengutronix.de;
	Fri, 13 Jun 2025 11:09:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uQ0Q5-0004oI-B1
	for lore@pengutronix.de; Fri, 13 Jun 2025 11:09:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=U7A0GHTDkPoccy1bD6Hg8nYBiamkaa6vw3KhftpICCY=; b=rkiHHAglCuWLTSQZ/kpZ+0HCzz
	JnpzxuInJntFOLRIccApmigpiyqpRvVQz6TzvxLTzYdiOIpXsBK1KWGvChXJllgas8OPrAEhTX8jj
	EEWW27Px+mPuvG0YDsqH8FZQ3gNrmziikpdO4mmz1wyzyeAzPWAEm2qL0Rip+pQJqpZsPwIk1X1An
	ePnfwuqikkhDdp1kKTisq9CFa518gVpsc9SQ4GmHV/9IoXSOtJw1ObEHVCK/drSuxYa9PBjrCqL6I
	Bb3z+EpZr/K5o7sTGI7I5pZMZjhtxVSnZgMGCiFLA+r4s1CLtUJb/VoLBqvZ59IxGRMZru3du0HRq
	1lgRjB+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQ0Pp-0000000Fs8X-3rzZ;
	Fri, 13 Jun 2025 09:09:37 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPzJY-0000000FiEN-127k
	for barebox@bombadil.infradead.org;
	Fri, 13 Jun 2025 07:59:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=U7A0GHTDkPoccy1bD6Hg8nYBiamkaa6vw3KhftpICCY=; b=FtGAzdbZOctHcdNz8XidYL25oG
	fncky5a6zkCSYVc5Aifc2aRoIkPhCNDngS2G4SGbDP9+zgwiq+HC5XBMhLkyX6ltKxcLMtQXtMSgk
	QfFbGA5bvWwhD5sLXnJQYKt5ULblZPDjraV/YHG4yiQ18vNFg7oQwtlHGxRaJjXFoRdtKRkrpVk5T
	lc6KK61sc3TX1q8eG57I1EH6EffaXxrCmmtlrgd/wCTFPVnj7KkPQ1Gq6i1fCTibFmkzzfLccLp07
	1qMSlgMuilzurmpzCtZHUf/hSCMgoJz6GAfI0ctyHlrxbURTQkiL0k4nTDVEnG6YtsyOiCYseVLxI
	ByctMeDw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPzJU-00000002udH-46Jg
	for barebox@lists.infradead.org;
	Fri, 13 Jun 2025 07:59:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uPzJL-0004cj-MJ; Fri, 13 Jun 2025 09:58:51 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uPzJL-003Fo1-19;
	Fri, 13 Jun 2025 09:58:51 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uPzJL-00CPUK-0s;
	Fri, 13 Jun 2025 09:58:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 13 Jun 2025 09:58:54 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250613-arm-mmu-xn-ro-v1-6-60f05c6e7b4b@pengutronix.de>
References: <20250613-arm-mmu-xn-ro-v1-0-60f05c6e7b4b@pengutronix.de>
In-Reply-To: <20250613-arm-mmu-xn-ro-v1-0-60f05c6e7b4b@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1749801531; l=3519;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=Q1uqregZByyQ9zaG7sRmdwkKBAOkbKYt8rYk/hBpBvs=;
 b=HNvOqM6ISCRmwuyTnHMqF6YP4bP0wzkD9/WtT1dIvpi82ketg8tcB0IyhytuNi+AXFK8hylh1
 Mf9pO0jZAgOB0oGcZzmOjzoi4GRDcoXpg4lXr/c9WZBVUJekh+RhmD6
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250613_085901_131527_C598AA64 
X-CRM114-Status: GOOD (  16.64  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 6/7] ARM: MMU64: map memory for barebox proper pagewise
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Map the remainder of the memory explicitly with two level page tables. This is
the place where barebox proper ends at. In barebox proper we'll remap the code
segments readonly/executable and the ro segments readonly/execute never. For this
we need the memory being mapped pagewise. We can't do the split up from section
wise mapping to pagewise mapping later because that would require us to do
a break-before-make sequence which we can't do when barebox proper is running
at the location being remapped.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/mmu_64.c | 68 +++++++++++++++++++++++++++++++++++++++++++++++++--
 1 file changed, 66 insertions(+), 2 deletions(-)

diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index 440258fa767735a4537abd71030a5540813fc443..dc81c1da6add38b59b44a9a4e247ab51ebc2692e 100644
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
@@ -172,6 +173,56 @@ static void create_sections(uint64_t virt, uint64_t phys, uint64_t size,
 	tlb_invalidate();
 }
 
+/*
+ * like create_sections(), but this one creates pages instead of sections
+ */
+static void create_pages(uint64_t phys, uint64_t size, uint64_t attr)
+{
+	uint64_t virt = phys;
+	uint64_t *ttb = get_ttb();
+	uint64_t block_size;
+	uint64_t block_shift;
+	uint64_t *pte;
+	uint64_t idx;
+	uint64_t addr;
+	uint64_t *table;
+	uint64_t type;
+	int level;
+
+	addr = virt;
+
+	attr &= ~PTE_TYPE_MASK;
+
+	size = PAGE_ALIGN(size);
+
+	while (size) {
+		table = ttb;
+		for (level = 0; level < 4; level++) {
+			block_shift = level2shift(level);
+			idx = (addr & level2mask(level)) >> block_shift;
+			block_size = (1ULL << block_shift);
+
+			pte = table + idx;
+
+			if (level == 3) {
+				type = PTE_TYPE_PAGE;
+				*pte = phys | attr | type;
+				addr += block_size;
+				phys += block_size;
+				size -= block_size;
+				break;
+			} else {
+				split_block(pte, level);
+			}
+
+			table = get_level_table(pte);
+		}
+
+	}
+
+	tlb_invalidate();
+}
+
 static size_t granule_size(int level)
 {
 	switch (level) {
@@ -410,6 +461,7 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize, unsigned lon
 {
 	int el;
 	u64 optee_membase;
+	unsigned long barebox_size;
 	unsigned long ttb = arm_mem_ttb(membase + memsize);
 
 	if (get_cr() & CR_M)
@@ -432,12 +484,24 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize, unsigned lon
 
 	early_remap_range(membase, memsize, MAP_CACHED);
 
-	if (optee_get_membase(&optee_membase))
+	if (optee_get_membase(&optee_membase)) {
                 optee_membase = membase + memsize - OPTEE_SIZE;
 
+		barebox_size = optee_membase - barebox_start;
+
+		create_pages(optee_membase - barebox_size, barebox_size,
+			     get_pte_attrs(ARCH_MAP_CACHED_RWX));
+	} else {
+		barebox_size = membase + memsize - barebox_start;
+
+		create_pages(membase + memsize - barebox_size, barebox_size,
+			     get_pte_attrs(ARCH_MAP_CACHED_RWX));
+	}
+
 	early_remap_range(optee_membase, OPTEE_SIZE, MAP_FAULT);
 
-	early_remap_range(PAGE_ALIGN_DOWN((uintptr_t)_stext), PAGE_ALIGN(_etext - _stext), MAP_CACHED);
+	early_remap_range(PAGE_ALIGN_DOWN((uintptr_t)_stext), PAGE_ALIGN(_etext - _stext),
+			  MAP_CACHED);
 
 	mmu_enable();
 }

-- 
2.39.5



