Delivery-date: Wed, 17 May 2023 11:05:25 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzD64-0048a9-J7
	for lore@lore.pengutronix.de; Wed, 17 May 2023 11:05:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzD5y-0004mw-25
	for lore@pengutronix.de; Wed, 17 May 2023 11:05:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gdrmGCtGukXLlG+CQv6NkLtDW+lhZx2TAOKTZEzbEU4=; b=cvPTEKKFz+66rwCTFP9tn6C6+l
	9yUdXlkK17e5J9uYIbZW/092JLB7G2B8WvI205iaPLaMFydF11c/gm6ekcXcCRzeWErlQXRY5hCB4
	PBjiu/iQBfbrfZbSPOiaEp53T/EMqFv2K9LOiyeMq8J+QPLcHFmfEZubgn8nmMUjH6L856HaJhoGS
	s0FjsZMMdAYwrOeS/en5tCouXchxvr14OTL34ODHcp7XhPD7mBgMGMoe2eKxuJT5EgT97JyUhOIdD
	E4kPt6eUS4pwXcMTKRK0LTEm2FnoCoZ8V3AXA8hnWZ1DaU3AcpBbzHN+7nAiyjKKEahgaivp35CYn
	UsZsI9Tg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pzD4n-008yYy-1Y;
	Wed, 17 May 2023 09:04:05 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzD4i-008yUz-30
	for barebox@bombadil.infradead.org;
	Wed, 17 May 2023 09:04:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=gdrmGCtGukXLlG+CQv6NkLtDW+lhZx2TAOKTZEzbEU4=; b=YsZ9lYVPQr7O+eXdPaNGlGTZ0V
	Qyika92lNc06LkXSpOUli3Ash5DliPit5VmMhrRoKGTcqOL0zyxTQlBtTM62i+PoCYwZ4NNx200jy
	STNgQurRcpQnn1NdMtSQ9yU6Xw79pVqf8Jx1dtqKkdCZiOSf4xcFE9HvtyvFxxcZlcU58Tj0/5ZdN
	5PSjbBMzz+6erDCeFJPk6l4JJjC1aK/dYpSugiGae8LF2zlyjWNwUL5zwRAyK7Bijrj9Oe+baZ08K
	krVl6HEuIjMIdglh3DPKSQH6e5hEgnZ52jg4gHptd4Ev/OLAHYltx6nPKBJ0WU/LTat1ciR5sm938
	IRsi9/qA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pzD4f-004wru-J7
	for barebox@lists.infradead.org; Wed, 17 May 2023 09:03:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pzD4Y-00045D-Ep; Wed, 17 May 2023 11:03:50 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pzD4X-000o8c-G2; Wed, 17 May 2023 11:03:49 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pzD4Q-00GasK-0J; Wed, 17 May 2023 11:03:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 17 May 2023 11:03:29 +0200
Message-Id: <20230517090340.3954615-24-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230517090340.3954615-1-s.hauer@pengutronix.de>
References: <20230517090340.3954615-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230517_100357_662063_6D41A50E 
X-CRM114-Status: GOOD (  13.25  )
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
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 23/34] ARM: mmu64: create alloc_pte()
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



