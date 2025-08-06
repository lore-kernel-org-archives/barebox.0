Delivery-date: Wed, 06 Aug 2025 14:39:33 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujdQb-007dbF-1a
	for lore@lore.pengutronix.de;
	Wed, 06 Aug 2025 14:39:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujdQa-00011C-4D
	for lore@pengutronix.de; Wed, 06 Aug 2025 14:39:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UZQ0F531dDhcbDfsnc9eXNiWGN/sdI4oFhgDxouZawE=; b=xX3oOQUatsNqbM1l4D7WtlLFsV
	ON0mMQR6L6YnV3g0SF1P34n9sbRERqneolp7OO2bDxz1Rt4/RHxwdXHQiqpcVzNjjeZkPCxoGhjOJ
	ym1+4JtvM1EbIbiPTlyaLcUtgH6V6tRy9od2cKpElQPPH4LBsP0jSI1KCo1YLAv+JvAsYFvgnOyDa
	+Ymg5s5mGZm8pE2rvAfLxjlaZ4Fb3cGgb9mQsf/oPvW/eAMsplSyKRsPTdsTBlvXfnL+GL3htFO38
	OKxz7IH5RKta7rW60jnxyNu5Ypk9685Vw5NCF4pN/cj6vMPjO/oAG3z8xgo//WFZGf/zg9uISzUOx
	eV5hzuew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujdQ3-0000000FAK2-3U09;
	Wed, 06 Aug 2025 12:38:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujdOO-0000000FA5M-3GLj
	for barebox@lists.infradead.org;
	Wed, 06 Aug 2025 12:37:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ujdON-0000MY-I7; Wed, 06 Aug 2025 14:37:15 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ujdON-00CD8v-1A;
	Wed, 06 Aug 2025 14:37:15 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ujdON-009YOP-0q;
	Wed, 06 Aug 2025 14:37:15 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  6 Aug 2025 14:36:56 +0200
Message-Id: <20250806123714.2092620-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250806123714.2092620-1-a.fatoum@pengutronix.de>
References: <20250806123714.2092620-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250806_053716_816421_54215C7D 
X-CRM114-Status: GOOD (  11.06  )
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
Subject: [PATCH 04/22] ARM: mmu: panic when alloc_pte fails
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We don't check the return value of alloc_pte for ARM32 PBL, but we do on ARM64
PBL as well as in barebox proper.

Let's unify behavior by panicing in alloc_pte right away if we run out of
memory.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/mmu_32.c | 3 +--
 arch/arm/cpu/mmu_64.c | 6 +-----
 2 files changed, 2 insertions(+), 7 deletions(-)

diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
index 848d2d2b8c0b..e631b741f107 100644
--- a/arch/arm/cpu/mmu_32.c
+++ b/arch/arm/cpu/mmu_32.c
@@ -83,8 +83,7 @@ static uint32_t *alloc_pte(void)
 
 	idx++;
 
-	if (idx * PTE_SIZE >= ARM_EARLY_PAGETABLE_SIZE)
-		return NULL;
+	BUG_ON(idx * PTE_SIZE >= ARM_EARLY_PAGETABLE_SIZE);
 
 	return get_ttb() + idx * PTE_SIZE;
 }
diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index 83738ed6ad0d..e2cc1a5caabd 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -46,8 +46,7 @@ static uint64_t *alloc_pte(void)
 
 	idx++;
 
-	if (idx * GRANULE_SIZE >= ARM_EARLY_PAGETABLE_SIZE)
-		return NULL;
+	BUG_ON(idx * GRANULE_SIZE >= ARM_EARLY_PAGETABLE_SIZE);
 
 	return (void *)get_ttb() + idx * GRANULE_SIZE;
 }
@@ -109,9 +108,6 @@ static void split_block(uint64_t *pte, int level)
 	levelshift = level2shift(level + 1);
 
 	new_table = alloc_pte();
-	if (!new_table)
-		panic("Unable to allocate PTE\n");
-
 
 	for (i = 0; i < MAX_PTE_ENTRIES; i++) {
 		set_pte(&new_table[i], old_pte | (i << levelshift));
-- 
2.39.5



