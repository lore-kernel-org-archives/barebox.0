Delivery-date: Tue, 05 Aug 2025 20:37:39 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujMXb-007Ni4-2P
	for lore@lore.pengutronix.de;
	Tue, 05 Aug 2025 20:37:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujMXa-0001CW-M4
	for lore@pengutronix.de; Tue, 05 Aug 2025 20:37:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=02CGJrcYB1MdcV+0Bdwp23GDW2P3B9LrL6SAhyaElto=; b=B2C1viun2PGxMbTpSM3Bxu5WaZ
	/0PlUDY0pXQiQbPvTdOnsWVqK+PLOLr57A8NWjnC8g7vl3DR8yaemxZzr+H/ctU8JZ+VoOx1qX3+Z
	BfIGeUOU92LGnS2AT9zaYWcz4xnOGKMHy7I8RzC/1LHRwnCZb0RgunmFbgbbIrkqHiqQGLDq4QTb1
	kiUx+btz5WnsdAl8E+7ykwOAaGDqBFhHDb9t3o/nc1/tUmEQYezhxJ9xXeMxaduCNzCXRnQtvDAJp
	Liqv7iWRDGjIz0s5ST52Nnc3KI7ephhkevsRjLsCFqgvTlt15/nj5gZbKc+j8vDQapX/JNwAEWOZQ
	5PX7mTAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujMWz-0000000DYSp-1ps1;
	Tue, 05 Aug 2025 18:37:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujLjQ-0000000DSgT-25T9
	for barebox@lists.infradead.org;
	Tue, 05 Aug 2025 17:45:51 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1ujLjN-0003rm-T3; Tue, 05 Aug 2025 19:45:45 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Tue,  5 Aug 2025 19:45:36 +0200
Message-Id: <20250805174541.2606267-4-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250805174541.2606267-1-a.fatoum@barebox.org>
References: <20250805174541.2606267-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250805_104548_566269_A46271D7 
X-CRM114-Status: UNSURE (   9.22  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 3/8] ARM: mmu: skip TLB invalidation if remapping zero bytes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The loop that remaps memory banks can end up calling remap_range with
zero size, when a reserved region is at the very start of the memory
bank.

This is handled correctly by the code, but does an unnecessary
invalidation of the whole TLB. Let's early exit instead to skip that.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/arm/cpu/mmu_32.c | 2 ++
 arch/arm/cpu/mmu_64.c | 2 ++
 2 files changed, 4 insertions(+)

diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
index 89a18d342b80..5f303ae1dc87 100644
--- a/arch/arm/cpu/mmu_32.c
+++ b/arch/arm/cpu/mmu_32.c
@@ -283,6 +283,8 @@ static void __arch_remap_range(void *_virt_addr, phys_addr_t phys_addr, size_t s
 	pr_debug("%s: 0x%08x 0x%08x type %d\n", __func__, virt_addr, size, map_type);
 
 	size = PAGE_ALIGN(size);
+	if (!size)
+		return;
 
 	while (size) {
 		const bool pgdir_size_aligned = IS_ALIGNED(virt_addr, PGDIR_SIZE);
diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index a229e4cb5526..91b3cd76c24f 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -146,6 +146,8 @@ static void create_sections(uint64_t virt, uint64_t phys, uint64_t size,
 	attr &= ~PTE_TYPE_MASK;
 
 	size = PAGE_ALIGN(size);
+	if (!size)
+		return;
 
 	while (size) {
 		table = ttb;
-- 
2.39.5



