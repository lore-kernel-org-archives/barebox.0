Delivery-date: Wed, 14 Jan 2026 11:13:03 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfxs8-001CNG-0T
	for lore@lore.pengutronix.de;
	Wed, 14 Jan 2026 11:13:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfxs7-0000ei-5L
	for lore@pengutronix.de; Wed, 14 Jan 2026 11:13:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=bGUNioYdBuXvADpaWop/hU+FjI56z87yBm/bdK1gkME=; b=nQhZ4xZrb9otO2JFTv/H1BtXKK
	TVO0mMUK6OHlIca1WcB4GcSUf275zuDM5PMN3XMZ39hOTyhvK0ZXFOENYD0VyDNykm9MANyulNGpf
	+cczv7l5877G0fYteKT4+OmoMvzNuw1nh45BnPNfUHFhJLPSi7XbGKfOlrIAgVUBXjI6Ocagn8lFL
	nPEmFpHgaQ9z8Q56Taqlf3LTtX0ZHLhq74nzK/zJTsnIdvSZgD0WWXCxu37tjAlUp6JKbjw7LZYID
	3tjHGwp0rq8aUSERxP4T73Mr9wWfsvSaYyJ7VDg3Y0mK6A1e3Ik8Eff4a76fo9854KoR5BfMtbFq6
	DVgrEauA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfxrX-00000008j1N-07kC;
	Wed, 14 Jan 2026 10:12:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfxrO-00000008iyH-1AJQ
	for barebox@lists.infradead.org;
	Wed, 14 Jan 2026 10:12:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vfxrL-0000Vi-RU; Wed, 14 Jan 2026 11:12:15 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vfxrM-000ZWg-13;
	Wed, 14 Jan 2026 11:12:15 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vfxrM-00000000SUI-12vZ;
	Wed, 14 Jan 2026 11:12:15 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 14 Jan 2026 11:12:13 +0100
Message-ID: <20260114101214.109449-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_021220_689283_EAAE4BA4 
X-CRM114-Status: GOOD (  12.77  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: mmu: panic after pr_debug_remap if base address is unaligned
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

It's always a bug to call remap_range with an unaligned address and it's
the responsibility of the callers (whether it's an ELF parser or code
walking reserved memory entries) to ensure that this doesn't happen.

We enforce this on ARM32, but don't yet on ARM64, so have it follow
suit and have both do the enforcement directly after pr_debug_remap():
That way, a developer enabling debug ouptut can easily see what was
last attempted before the BUG().

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/mmu_32.c | 6 +++---
 arch/arm/cpu/mmu_64.c | 3 +++
 2 files changed, 6 insertions(+), 3 deletions(-)

diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
index 912d14e8cf82..62e6e785f07c 100644
--- a/arch/arm/cpu/mmu_32.c
+++ b/arch/arm/cpu/mmu_32.c
@@ -350,14 +350,14 @@ static void __arch_remap_range(void *_virt_addr, phys_addr_t phys_addr, size_t s
 	u32 pte_flags, pmd_flags;
 	uint32_t *ttb = get_ttb();
 
-	BUG_ON(!IS_ALIGNED(virt_addr, PAGE_SIZE));
-	BUG_ON(!IS_ALIGNED(phys_addr, PAGE_SIZE));
-
 	pte_flags = get_pte_flags(map_type);
 	pmd_flags = pte_flags_to_pmd(pte_flags);
 
 	pr_debug_remap(virt_addr, phys_addr, size, map_type);
 
+	BUG_ON(!IS_ALIGNED(virt_addr, PAGE_SIZE));
+	BUG_ON(!IS_ALIGNED(phys_addr, PAGE_SIZE));
+
 	size = PAGE_ALIGN(size);
 	if (!size)
 		return;
diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index 56c6a21f2b2a..8bbaf04e7fad 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -214,6 +214,9 @@ static int __arch_remap_range(uint64_t virt, uint64_t phys, uint64_t size,
 
 	pr_debug_remap(addr, phys, size, map_type);
 
+	BUG_ON(!IS_ALIGNED(virt, PAGE_SIZE));
+	BUG_ON(!IS_ALIGNED(phys, PAGE_SIZE));
+
 	attr &= ~PTE_TYPE_MASK;
 
 	size = PAGE_ALIGN(size);
-- 
2.47.3



