Delivery-date: Fri, 26 May 2023 08:35:15 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q2R2i-00Ei9o-Me
	for lore@lore.pengutronix.de; Fri, 26 May 2023 08:35:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q2R2g-0006Ct-7t
	for lore@pengutronix.de; Fri, 26 May 2023 08:35:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qhjH9/uJLm9frk1q8gM4D9NqTf0nkk3RoJlNBkWqavc=; b=Sy/GZ3MMCj7461/XLeU2ulM6/X
	AgslimSbXCFfub4ZRF3FHu9i22zciAYCZRrwfPRaCsiUdw6yn577Riw+5vV8nAnCCmAs4c6CGhWMo
	ORxmmKmPIvWtVaMQzDS8HopRKIC7DsWMflJKw3Wbuw9xYQMyI5wi7EKtmZnum4RjIbaNQgnRNqdrN
	5dKGhLKxTfJ3iYDYS+kMEg7plaDSXSYm4uj0/WuULPsDHz6ZxjhSMtImxXbb5tavbO8t4/oDwTrfU
	VPvxepC/B75x3f90/ywjOvC8OBCpNuj5kiiArvrcID5mLtbe3Jq973Ac/CNZ7ipGYR1jBaDS9b+m9
	+eWChAxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q2R1Z-001Gdj-27;
	Fri, 26 May 2023 06:34:05 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q2R1U-001Gby-2Y
	for barebox@lists.infradead.org;
	Fri, 26 May 2023 06:34:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q2R1R-0005rr-R3; Fri, 26 May 2023 08:33:57 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q2R1R-002tTV-5j; Fri, 26 May 2023 08:33:57 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q2R1Q-004oPR-5x; Fri, 26 May 2023 08:33:56 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 26 May 2023 08:33:52 +0200
Message-Id: <20230526063354.1145474-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230526063354.1145474-1-a.fatoum@pengutronix.de>
References: <20230526063354.1145474-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230525_233400_839170_06151368 
X-CRM114-Status: GOOD (  11.30  )
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
Subject: [PATCH master 2/4] ARM: mmu64: define early_remap_range for mmu_early_enable usage
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Adding a new dma_inv_range/dma_flush_range into arch_remap_range before
MMU is enabled hangs, so let's define a new early_remap_range that should
always be safe to call while MMU is disabled. This is to prepare doing
cache maintenance in regular arch_remap_range in a later commit.

No functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/mmu_64.c | 39 ++++++++++++++++++++++++++-------------
 1 file changed, 26 insertions(+), 13 deletions(-)

diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index 1d5a5355c6be..940e0e914c43 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -159,23 +159,36 @@ static void create_sections(uint64_t virt, uint64_t phys, uint64_t size,
 	tlb_invalidate();
 }
 
-int arch_remap_range(void *virt_addr, phys_addr_t phys_addr, size_t size, unsigned flags)
+static unsigned long get_pte_attrs(unsigned flags)
 {
-	unsigned long attrs;
-
 	switch (flags) {
 	case MAP_CACHED:
-		attrs = CACHED_MEM;
-		break;
+		return CACHED_MEM;
 	case MAP_UNCACHED:
-		attrs = attrs_uncached_mem();
-		break;
+		return attrs_uncached_mem();
 	case MAP_FAULT:
-		attrs = 0x0;
-		break;
+		return 0x0;
 	default:
-		return -EINVAL;
+		return ~0UL;
 	}
+}
+
+static void early_remap_range(uint64_t addr, size_t size, unsigned flags)
+{
+	unsigned long attrs = get_pte_attrs(flags);
+
+	if (WARN_ON(attrs == ~0UL))
+		return;
+
+	create_sections(addr, addr, size, attrs);
+}
+
+int arch_remap_range(void *virt_addr, phys_addr_t phys_addr, size_t size, unsigned flags)
+{
+	unsigned long attrs = get_pte_attrs(flags);
+
+	if (attrs == ~0UL)
+		return -EINVAL;
 
 	create_sections((uint64_t)virt_addr, phys_addr, (uint64_t)size, attrs);
 	return 0;
@@ -269,9 +282,9 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize)
 
 	memset((void *)ttb, 0, GRANULE_SIZE);
 
-	remap_range(0, 1UL << (BITS_PER_VA - 1), MAP_UNCACHED);
-	remap_range((void *)membase, memsize - OPTEE_SIZE, MAP_CACHED);
-	remap_range((void *)membase + memsize - OPTEE_SIZE, OPTEE_SIZE, MAP_FAULT);
+	early_remap_range(0, 1UL << (BITS_PER_VA - 1), MAP_UNCACHED);
+	early_remap_range(membase, memsize - OPTEE_SIZE, MAP_CACHED);
+	early_remap_range(membase + memsize - OPTEE_SIZE, OPTEE_SIZE, MAP_FAULT);
 
 	mmu_enable();
 }
-- 
2.39.2



