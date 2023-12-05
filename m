Delivery-date: Tue, 05 Dec 2023 09:14:04 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rAQZ9-003wES-2q
	for lore@lore.pengutronix.de;
	Tue, 05 Dec 2023 09:14:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rAQZ9-0005FA-TF
	for lore@pengutronix.de; Tue, 05 Dec 2023 09:14:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=5N6Gw34KOepZ6is55iJ2hiIoAZalRV3rJ4rJSkHSQRU=; b=vC8BJwCpmE5v91PlyAxE/pgZ2B
	2X0JlnCpAhKrQudR8oMXe4VrNDqjEuYp/SnQwdJVCuzDfkRWHAqlmj1xUZgRXOhizttBxSPNKAK/I
	nYCX3g1cg2pk+ce56XTObt9mJUachZoy2+2r5V8aLlRQ0NCH6DnuiMEvf5UeJPHIjXE7j513mfzL7
	nJ+zGKKx4eohl3bt7lgoD920EtCEqrnaozNC4pmTXRd1zOaOzFX7nfNLOf1enex53kKB7EbifXlUX
	T9jPVEVVI4zU6BkY9NagQjG2OuOLLZNW9QolRbLTOEXL6f/PXFKhUrxD41m0+02mjZqmYuitsZpgg
	NyvBn0pA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAQY1-006br9-03;
	Tue, 05 Dec 2023 08:12:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAQXy-006bpq-0R
	for barebox@lists.infradead.org;
	Tue, 05 Dec 2023 08:12:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rAQXw-0004pe-Vp; Tue, 05 Dec 2023 09:12:48 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rAQXw-00DhWr-Iz; Tue, 05 Dec 2023 09:12:48 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rAQXw-00HPSY-1d;
	Tue, 05 Dec 2023 09:12:48 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  5 Dec 2023 09:12:47 +0100
Message-Id: <20231205081247.4148947-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231205_001250_172664_FE254D5F 
X-CRM114-Status: GOOD (  11.85  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master] ARM: mmu: align size of remapped region to page size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Currently, barebox ARM arch_remap_range() will hang in an infinite loop,
when called with a size that's not aligned to a page boundary.
Its Linux equivalent, ioremap(), will just rounds up to page size and
work correctly. Adopt the Linux behavior to make porting code easier,
e.g. when calling devm_ioremap().

The only other arch_remap_range() in barebox, is PowerPC's. That one
wouldn't loop indefinitely if the size isn't page aligned, so nothing to
do there.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/mmu_32.c | 3 +++
 arch/arm/cpu/mmu_64.c | 3 +++
 2 files changed, 6 insertions(+)

diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
index d0ada5866f05..c6eecf9c9d2d 100644
--- a/arch/arm/cpu/mmu_32.c
+++ b/arch/arm/cpu/mmu_32.c
@@ -18,6 +18,7 @@
 #include <memory.h>
 #include <asm/system_info.h>
 #include <asm/sections.h>
+#include <linux/pagemap.h>
 
 #include "mmu_32.h"
 
@@ -253,6 +254,8 @@ static void __arch_remap_range(void *_virt_addr, phys_addr_t phys_addr, size_t s
 	pte_flags = get_pte_flags(map_type);
 	pmd_flags = pte_flags_to_pmd(pte_flags);
 
+	size = PAGE_ALIGN(size);
+
 	while (size) {
 		const bool pgdir_size_aligned = IS_ALIGNED(virt_addr, PGDIR_SIZE);
 		u32 *pgd = (u32 *)&ttb[pgd_index(virt_addr)];
diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index 12c4dc90b392..c6ea63e655ad 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -19,6 +19,7 @@
 #include <asm/cache.h>
 #include <memory.h>
 #include <asm/system_info.h>
+#include <linux/pagemap.h>
 
 #include "mmu_64.h"
 
@@ -132,6 +133,8 @@ static void create_sections(uint64_t virt, uint64_t phys, uint64_t size,
 
 	attr &= ~PTE_TYPE_MASK;
 
+	size = PAGE_ALIGN(size);
+
 	while (size) {
 		table = ttb;
 		for (level = 0; level < 4; level++) {
-- 
2.39.2



