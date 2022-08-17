Delivery-date: Wed, 17 Aug 2022 13:44:55 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oOHTk-001pba-22
	for lore@lore.pengutronix.de; Wed, 17 Aug 2022 13:44:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oOHTg-0001xh-Gu
	for lore@pengutronix.de; Wed, 17 Aug 2022 13:44:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BHWeiie5AG2ZVYNaiEWhBFQ3y9Oe4LKVrBe9wIMNEHU=; b=ogYKQyyhFBFDvE9C+X+H+DLnr5
	80DKzMNvMUR0lLlz76aKnDHZrLWDp8KYBy4NkVB9+0mZW6JvsEZG+TBVO1prHhUMINb7Qf57wy8gX
	6AipwgDqxZaM78/hCv/Hc8+Nq/FICt9yUXUC0RKBWigSscBDSVK+RW1cZZymQR8S5wSAS3JiJytTS
	jRpLmPRXecVQbyjsOZ0/0l0oacqQkWWWuCJFxAvPKkO78SkKm25N8k4pFvcR4+2xULLo0J45ySFzg
	B+GOMEfz2M0Qek0YYL2ike5xSQvalgh50eW0rizCKb3Z53AjeERtd/TJB9sdPGTkfN9xqYB0wu2ha
	5H9TDm9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOHSJ-001ZTl-CI; Wed, 17 Aug 2022 11:43:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOHRp-001ZA2-Uz
	for barebox@lists.infradead.org; Wed, 17 Aug 2022 11:43:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oOHRg-0001Nw-Ai; Wed, 17 Aug 2022 13:42:48 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oOHRf-000IqF-JO; Wed, 17 Aug 2022 13:42:47 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oOHRd-007dD1-MK; Wed, 17 Aug 2022 13:42:45 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: uol@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 17 Aug 2022 13:42:42 +0200
Message-Id: <20220817114244.1810531-9-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220817114244.1810531-1-a.fatoum@pengutronix.de>
References: <20220817114244.1810531-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220817_044258_124220_39B287D7 
X-CRM114-Status: GOOD (  17.74  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 08/10] ARM: mmu: use reserve mem entries to modify maps
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Rouven Czerwinski <r.czerwinski@pengutronix.de>

Like done for ARM64, use the reserved memory regions marked in the SDRAM
bank to map these regions uncached and eXecute Never to avoid speculative
access into these regions from causing hard-to-debug data aborts.

Unlike with mmu_64, for CONFIG_MMU_EARLY systems, the MMU isn't turned
off before changing the page table. So what we do instead is allocating
a 16K shadow buffer and modifying that and afterwards overwriting the
active TTB with it.

We could instead use set_ttbr() to move the page table, but in interest
of minimizing chance of breaking older ARM platforms, we keep the online
changing of the entries for now.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
[afa: use SDRAM regions instead of FDT reserve entries]
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/mmu.c | 40 +++++++++++++++++++++++++++++-----------
 1 file changed, 29 insertions(+), 11 deletions(-)

diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index 6388e1bf14f6..f9c629c0f19d 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -413,6 +413,7 @@ static void vectors_init(void)
 void __mmu_init(bool mmu_on)
 {
 	struct memory_bank *bank;
+	void *oldttb = NULL;
 
 	arm_set_cache_functions();
 
@@ -430,15 +431,17 @@ void __mmu_init(bool mmu_on)
 		pte_flags_uncached = PTE_FLAGS_UNCACHED_V4;
 	}
 
+	ttb = xmemalign(ARM_TTB_SIZE, ARM_TTB_SIZE);
+
+	/*
+	 * Early MMU code may have already enabled the MMU. We assume a
+	 * flat 1:1 section mapping in this case.
+	 */
 	if (mmu_on) {
-		/*
-		 * Early MMU code has already enabled the MMU. We assume a
-		 * flat 1:1 section mapping in this case.
-		 */
-		/* Clear unpredictable bits [13:0] */
-		ttb = (uint32_t *)(get_ttbr() & ~0x3fff);
+		oldttb = (uint32_t *)(get_ttbr() & ~0x3fff);
+		memcpy(ttb, oldttb, ARM_TTB_SIZE);
 
-		if (!request_sdram_region("ttb", (unsigned long)ttb, SZ_16K))
+		if (!request_sdram_region("ttb", (unsigned long)oldttb, SZ_16K))
 			/*
 			 * This can mean that:
 			 * - the early MMU code has put the ttb into a place
@@ -447,10 +450,8 @@ void __mmu_init(bool mmu_on)
 			 *   the ttb will get corrupted.
 			 */
 			pr_crit("Critical Error: Can't request SDRAM region for ttb at %p\n",
-					ttb);
+				oldttb);
 	} else {
-		ttb = xmemalign(ARM_TTB_SIZE, ARM_TTB_SIZE);
-
 		set_ttbr(ttb);
 
 		/* For the XN bit to take effect, we can't be using DOMAIN_MANAGER. */
@@ -468,11 +469,28 @@ void __mmu_init(bool mmu_on)
 	vectors_init();
 
 	for_each_memory_bank(bank) {
+		struct resource *rsv;
+
 		create_sections(ttb, bank->start, bank->start + bank->size - 1,
 				PMD_SECT_DEF_CACHED);
-		__mmu_cache_flush();
+
+		for_each_reserved_region(bank, rsv) {
+			create_sections(ttb, resource_first_page(rsv),
+					resource_count_pages(rsv),
+					attrs_uncached_mem());
+		}
 	}
 
+	/*
+	 * We could set_ttbr(ttb) here instead and save on the copy, but
+	 * for now we play it safe, so we don't mess with the older ARMs.
+	 */
+	if (oldttb) {
+		memcpy(oldttb, ttb, ARM_TTB_SIZE);
+		free(ttb);
+	}
+
+	__mmu_cache_flush();
 	__mmu_cache_on();
 }
 
-- 
2.30.2



