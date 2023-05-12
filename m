Delivery-date: Fri, 12 May 2023 13:11:49 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pxQgg-00F2S4-7j
	for lore@lore.pengutronix.de; Fri, 12 May 2023 13:11:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pxQgd-0004zM-MS
	for lore@pengutronix.de; Fri, 12 May 2023 13:11:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gdrmGCtGukXLlG+CQv6NkLtDW+lhZx2TAOKTZEzbEU4=; b=q+JyzjnMUVHAr7TZsZ+2jknX9K
	pAPdq6zN3kFDLUIjDoK7Gr45mJL76NrLuc+9IvuvPH5An3tpJnBhSP79CM9z5KISfsMAzYT9lZPYR
	KeFXQoynKOiFEpvgZvZYNAytVBgsd57+HsZHYXfqNadhwnxtujYsjslDIkVo13PcxR1rX7e1RR+j0
	+eZYIqZPOu73jtnoIM+Z5wsERxSul4AvURctz78fvO4ja9njDE83nt4RK7k1f6QAGPLEmI+lhJB+J
	zf9IHC0b2MUXdQQmfR7A5SdBTZdA79QHtI4l4060h55O6KArBfoSrllFK2vxYfwzEH0DlPi4IbEvS
	s5JrQ8bQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pxQfK-00Bk0V-1u;
	Fri, 12 May 2023 11:10:26 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pxQfE-00Bjtj-1f
	for barebox@lists.infradead.org;
	Fri, 12 May 2023 11:10:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pxQf8-0003e4-AE; Fri, 12 May 2023 13:10:14 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pxQf7-002wjX-JU; Fri, 12 May 2023 13:10:13 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pxQf4-0055EQ-AW; Fri, 12 May 2023 13:10:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 12 May 2023 13:09:57 +0200
Message-Id: <20230512111008.1120833-17-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230512111008.1120833-1-s.hauer@pengutronix.de>
References: <20230512111008.1120833-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230512_041020_549066_F98C9F1A 
X-CRM114-Status: GOOD (  14.33  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 16/27] ARM: mmu64: create alloc_pte()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This is a preparation for using two level page tables in the PBL.
To do that we need a way to allocate page tables in PBL. As malloc
is not available in PBL, implement a function to allocate a page table
from the area we also place the TTB.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/mmu_64.c | 20 +++++++++++++++++---
 1 file changed, 17 insertions(+), 3 deletions(-)

diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index 55ada960c5..3cc5b14a46 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -32,7 +32,20 @@ static void set_table(uint64_t *pt, uint64_t *table_addr)
 	*pt = val;
 }
 
-static uint64_t *create_table(void)
+#ifdef __PBL__
+static uint64_t *alloc_pte(void)
+{
+	static unsigned int idx;
+
+	idx++;
+
+	if (idx * GRANULE_SIZE >= ARM_EARLY_PAGETABLE_SIZE)
+		return NULL;
+
+	return (void *)ttb + idx * GRANULE_SIZE;
+}
+#else
+static uint64_t *alloc_pte(void)
 {
 	uint64_t *new_table = xmemalign(GRANULE_SIZE, GRANULE_SIZE);
 
@@ -41,6 +54,7 @@ static uint64_t *create_table(void)
 
 	return new_table;
 }
+#endif
 
 static __maybe_unused uint64_t *find_pte(uint64_t addr)
 {
@@ -81,7 +95,7 @@ static void split_block(uint64_t *pte, int level)
 	/* level describes the parent level, we need the child ones */
 	levelshift = level2shift(level + 1);
 
-	new_table = create_table();
+	new_table = alloc_pte();
 
 	for (i = 0; i < MAX_PTE_ENTRIES; i++) {
 		new_table[i] = old_pte | (i << levelshift);
@@ -183,7 +197,7 @@ void __mmu_init(bool mmu_on)
 	if (mmu_on)
 		mmu_disable();
 
-	ttb = create_table();
+	ttb = alloc_pte();
 	el = current_el();
 	set_ttbr_tcr_mair(el, (uint64_t)ttb, calc_tcr(el, BITS_PER_VA),
 			  MEMORY_ATTRIBUTES);
-- 
2.39.2



