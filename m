Delivery-date: Wed, 06 Aug 2025 15:06:03 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujdqF-007dzb-1z
	for lore@lore.pengutronix.de;
	Wed, 06 Aug 2025 15:06:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujdqC-0005L3-OC
	for lore@pengutronix.de; Wed, 06 Aug 2025 15:06:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tr0PScERU/yznCdWl47pLyDub/mpzqPiQThkFR2dc4Y=; b=0dENhRdROeIziZsWLzTCffV20X
	qhDHybvBZxWiNvjtfulMspl7p4myyR76+O02KTqrFPVudC4xegHYrVJFw+EVxB/3ErDkuVRd4l3Di
	vN9/ohQPAr8PqwztZixlTn9IeVbp3WZEhrrwKkMdnCdBnZQaTC6KXyYv3SULRps5SyLbSIwDCHjZF
	fGvBTuFiXxwxf0FJ6HgA6alAmmWetGuAnKycCFVLtPJj5uB5WYEff5ttl3tp/KL40cmTB1ORD9MNZ
	IH4rsmzggUK2WQFu3TW8xvRwpAi2hEZV7v9eM8CYDcjPvbdpGo898eAFFeuXBFeczHgefFG1JcEa5
	cM4CHqDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujdpg-0000000FFop-3683;
	Wed, 06 Aug 2025 13:05:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujdpb-0000000FFlw-0DkF
	for barebox@lists.infradead.org;
	Wed, 06 Aug 2025 13:05:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ujdpZ-0004kp-2y; Wed, 06 Aug 2025 15:05:21 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ujdpY-00CDTH-13;
	Wed, 06 Aug 2025 15:05:20 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ujdON-009YOP-2m;
	Wed, 06 Aug 2025 14:37:15 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  6 Aug 2025 14:37:09 +0200
Message-Id: <20250806123714.2092620-18-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250806123714.2092620-1-a.fatoum@pengutronix.de>
References: <20250806123714.2092620-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250806_060523_107410_19527AA2 
X-CRM114-Status: GOOD (  20.70  )
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
Subject: [PATCH 17/22] ARM: mmu32: rework find_pte to have ARM64 find_pte semantics
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

ARM32 find_pte can only look up a page and returns NULL when
encountering a section. The ARM64 find_pte, on the other hand, returns
the PTE at any level and stores the found level into a pointer supplied
by the caller.

Let's have the ARM32 version behave as the ARM64 version does to allow
reuse of code between them and to simplify maintenance.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/mmu_32.c | 48 ++++++++++++++++++++++++++++++-------------
 1 file changed, 34 insertions(+), 14 deletions(-)

diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
index e43d9d0d4606..521e5f3a5769 100644
--- a/arch/arm/cpu/mmu_32.c
+++ b/arch/arm/cpu/mmu_32.c
@@ -94,16 +94,38 @@ static uint32_t *alloc_pte(void)
 }
 #endif
 
-static u32 *find_pte(unsigned long adr)
+/**
+ * find_pte - Find page table entry
+ * @ttb: Translation Table Base
+ * @addr: Virtual address to lookup
+ * @level: used to store the level at which the page table walk ended.
+ *         if NULL, asserts that the smallest page was found
+ *
+ * This function walks the page table from the top down and finds the page
+ * table entry associated with the supplied virtual address.
+ * The level at which a page was found is saved into *level.
+ * if the level is NULL, a last level page must be found or the function
+ * panics.
+ *
+ * Returns a pointer to the page table entry
+ */
+static u32 *find_pte(uint32_t *ttb, uint32_t adr, unsigned *level)
 {
+	u32 *pgd = &ttb[pgd_index(adr)];
 	u32 *table;
-	uint32_t *ttb = get_ttb();
 
-	if (!pgd_type_table(ttb[pgd_index(adr)]))
-		return NULL;
+	if (!pgd_type_table(*pgd)) {
+		if (!level)
+			panic("Got level 1 page table entry, where level 2 expected\n");
+		*level = 1;
+		return pgd;
+	}
+
+	if (level)
+		*level = 2;
 
 	/* find the coarse page table base address */
-	table = (u32 *)(ttb[pgd_index(adr)] & ~0x3ff);
+	table = (u32 *)(*pgd & ~0x3ff);
 
 	/* find second level descriptor */
 	return &table[(adr >> PAGE_SHIFT) & 0xff];
@@ -308,7 +330,7 @@ static void __arch_remap_range(void *_virt_addr, phys_addr_t phys_addr, size_t s
 		} else {
 			unsigned int num_ptes;
 			u32 *table = NULL;
-			unsigned int i;
+			unsigned int i, level;
 			u32 *pte;
 			/*
 			 * We only want to cover pages up until next
@@ -328,17 +350,15 @@ static void __arch_remap_range(void *_virt_addr, phys_addr_t phys_addr, size_t s
 			chunk = min(chunk, size);
 			num_ptes = chunk / PAGE_SIZE;
 
-			pte = find_pte(virt_addr);
-			if (!pte) {
+			pte = find_pte(ttb, virt_addr, &level);
+			if (level == 1) {
 				/*
-				 * If PTE is not found it means that
-				 * we needs to split this section and
-				 * create a new page table for it
+				 * No PTE at level 2, so we needs to split this section
+				 * and create a new page table for it
 				 */
 				table = arm_create_pte(virt_addr, phys_addr,
 						       pmd_flags_to_pte(*pgd));
-				pte = find_pte(virt_addr);
-				BUG_ON(!pte);
+				pte = find_pte(ttb, virt_addr, NULL);
 			}
 
 			for (i = 0; i < num_ptes; i++) {
@@ -452,7 +472,7 @@ static void create_vector_table(unsigned long adr)
 		pr_debug("Creating vector table, virt = 0x%p, phys = 0x%08lx\n",
 			 vectors, adr);
 		arm_create_pte(adr, adr, get_pte_flags(MAP_UNCACHED));
-		pte = find_pte(adr);
+		pte = find_pte(get_ttb(), adr, NULL);
 		// TODO break-before-make missing
 		set_pte(pte, (u32)vectors | PTE_TYPE_SMALL |
 			get_pte_flags(MAP_CACHED));
-- 
2.39.5



