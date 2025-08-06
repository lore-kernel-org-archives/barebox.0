Delivery-date: Wed, 06 Aug 2025 15:06:07 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujdqJ-007e1m-1N
	for lore@lore.pengutronix.de;
	Wed, 06 Aug 2025 15:06:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujdqH-0005Q2-Vm
	for lore@pengutronix.de; Wed, 06 Aug 2025 15:06:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+UfdYYvBZFQtrasPhBTyNA9rXNHAkiOa/LL5LoClmTw=; b=bmnhjtP/BC0aR3DsOAbii2p2As
	2q5miDbWUArOlvN8TeDXI/17hM11pL5jmv8U414y7xkI/5infIJEp5gWKqr55aVvZgyp0sH3HXSu1
	xF+KnjP1PpYCcKZeIRr0WR6e0+KtIn5bdyCnMBhdFkvht59cCueqGdLFrLOwQm5k7MZQDhf8E4pkP
	Bh06EpMLhShqsiC02DhqrZcHTtxrWKgZBDf80vqeKVbgBKF9xVWyVeyX98EyeaGrUamY24fzJO7ap
	Hl49pWEIQTt/K1qBVYeTev1SebPaFFbkedwXVU9VXpzE9N0EJ1PcFvq/FryFYp8PKJ6csOuCxS1R9
	m7vaNW0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujdpl-0000000FFul-3uxR;
	Wed, 06 Aug 2025 13:05:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujdpi-0000000FFpk-1MKz
	for barebox@lists.infradead.org;
	Wed, 06 Aug 2025 13:05:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ujdpZ-0004kq-2u; Wed, 06 Aug 2025 15:05:21 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ujdpY-00CDTK-1J;
	Wed, 06 Aug 2025 15:05:20 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ujdON-009YOP-2U;
	Wed, 06 Aug 2025 14:37:15 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  6 Aug 2025 14:37:07 +0200
Message-Id: <20250806123714.2092620-16-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250806123714.2092620-1-a.fatoum@pengutronix.de>
References: <20250806123714.2092620-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250806_060530_385624_0D5E2C30 
X-CRM114-Status: GOOD (  13.97  )
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
Subject: [PATCH 15/22] ARM: mmu64: allow asserting last level page in __find_pte
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We do not ever call __find_pte with a NULL level argument.
ARM32 code has a find_pte function that only returns PTEs for 4K pages
and NULL on PMDs which is later checked to trigger a panic.

In preparation for providing the same API in both ARM32 and ARM64,
let's have the ARM64 panic too if level is not specified and document
the semantics of the function.

No functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/mmu_64.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index cdfbf081d51f..15b809808153 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -95,6 +95,21 @@ static uint64_t *alloc_pte(void)
 }
 #endif
 
+/**
+ * __find_pte - Find page table entry
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
 static uint64_t *__find_pte(uint64_t *ttb, uint64_t addr, int *level)
 {
 	uint64_t *pte = ttb;
@@ -113,6 +128,8 @@ static uint64_t *__find_pte(uint64_t *ttb, uint64_t addr, int *level)
 			pte = (uint64_t *)(*pte & XLAT_ADDR_MASK);
 	}
 
+	if (!level && i != 3)
+		panic("Got level %d page table entry, where level 3 expected\n", i);
 	if (level)
 		*level = i;
 	return pte;
-- 
2.39.5



